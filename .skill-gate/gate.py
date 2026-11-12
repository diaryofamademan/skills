#!/usr/bin/env python3
"""SkillSpector skill gate (repo copy).

Scans each given skill directory with SkillSpector (static, --no-llm),
diffs the findings against baseline.json beside this script, and blocks
on any HIGH or CRITICAL finding the baseline does not cover.

Exit codes: 0 = PASS, 1 = BLOCKED (unbaselined HIGH/CRITICAL findings),
2 = gate error (bad argument or a scan that produced no usable report —
the gate fails closed, never open).

The scanner binary comes from the SKILLSPECTOR_BIN environment variable
when set, else `skillspector` on PATH. CI installs SkillSpector at the
pinned commit in the workflow before calling this script.
"""
import json
import os
import shutil
import subprocess
import sys
import tempfile
from pathlib import Path

BASE = Path(__file__).resolve().parent
BASELINE_FILE = BASE / "baseline.json"
BLOCKING = ("HIGH", "CRITICAL")
SCAN_TIMEOUT = 1500


def scanner_bin():
    env = os.environ.get("SKILLSPECTOR_BIN")
    if env:
        return env
    return shutil.which("skillspector")


def load_baseline():
    data = json.loads(BASELINE_FILE.read_text())
    index = set()
    for entry in data["entries"]:
        index.add((entry["skill"], entry["rule"], entry["file"]))
    return index


def scan(cli, skill_dir):
    """Run SkillSpector on one directory and return the parsed report."""
    with tempfile.TemporaryDirectory(prefix="skillspector-gate-") as td:
        out = Path(td) / "report.json"
        cmd = [
            cli, "scan", str(skill_dir),
            "--no-llm", "--format", "json",
            "--output", str(out),
        ]
        try:
            # The CLI exits 1 when it recommends against install; that is a
            # result, not a failure. Only a missing or unreadable report is.
            subprocess.run(cmd, capture_output=True, text=True,
                           timeout=SCAN_TIMEOUT)
        except subprocess.TimeoutExpired:
            return None, f"scan timed out after {SCAN_TIMEOUT}s"
        if not out.exists():
            return None, "scanner produced no report"
        try:
            return json.loads(out.read_text()), None
        except (json.JSONDecodeError, OSError) as exc:
            return None, f"scanner report unreadable: {exc}"


def check(cli, skill_dir, baseline_index):
    name = skill_dir.name
    report, err = scan(cli, skill_dir)
    if err:
        return "error", [f"ERROR {name}: {err}"]
    issues = report.get("issues", [])
    blocking, baselined, lower = [], 0, {"MEDIUM": 0, "LOW": 0}
    for issue in issues:
        sev = issue.get("severity", "")
        if sev in BLOCKING:
            loc = issue.get("location") or {}
            file = loc.get("file", "")
            if (name, issue.get("id"), file) in baseline_index:
                baselined += 1
            else:
                blocking.append(issue)
        elif sev in lower:
            lower[sev] += 1
    lines = []
    if blocking:
        lines.append(f"BLOCKED {name}: {len(blocking)} unbaselined "
                     f"HIGH/CRITICAL finding(s)")
        for issue in blocking:
            loc = issue.get("location") or {}
            file = loc.get("file", "?")
            line = loc.get("start_line")
            where = f"{file}:{line}" if line else file
            lines.append(
                f"  [{issue.get('severity')}] {issue.get('id')} "
                f"({issue.get('pattern', '')}) at {where}")
            expl = (issue.get("explanation") or "").strip()
            if expl:
                lines.append(f"      {expl}")
            snippet = (issue.get("finding") or "").strip()
            if snippet:
                lines.append(f"      Finding: {snippet}")
        lines.append(f"  Also: {baselined} baselined finding(s) suppressed; "
                     f"{lower['MEDIUM']} MEDIUM, {lower['LOW']} LOW "
                     f"(counts only, never blocking).")
        return "blocked", lines
    lines.append(
        f"PASS {name}: no unbaselined HIGH/CRITICAL findings "
        f"({baselined} baselined suppressed; {lower['MEDIUM']} MEDIUM, "
        f"{lower['LOW']} LOW — counts only)")
    return "pass", lines


def main(argv):
    if not argv:
        print("usage: gate.sh <skill-dir> [<skill-dir> ...]", file=sys.stderr)
        return 2
    cli = scanner_bin()
    if not cli or not Path(cli).exists():
        print("ERROR: SkillSpector CLI not found (set SKILLSPECTOR_BIN or "
              "install skillspector on PATH)", file=sys.stderr)
        return 2
    baseline_index = load_baseline()
    worst = 0
    for arg in argv:
        skill_dir = Path(arg).expanduser().resolve()
        if not skill_dir.is_dir():
            print(f"ERROR {arg}: not a directory")
            worst = max(worst, 2)
            continue
        status, lines = check(cli, skill_dir, baseline_index)
        for line in lines:
            print(line)
        if status == "blocked":
            worst = max(worst, 1)
        elif status == "error":
            worst = max(worst, 2)
    if worst == 1:
        print("GATE: BLOCKED — unbaselined HIGH/CRITICAL findings above. "
              "Triage them before this change lands (see GATE.md).")
    elif worst == 0:
        print("GATE: PASS")
    else:
        print("GATE: ERROR — the gate could not complete; treat as blocked.")
    return worst


if __name__ == "__main__":
    sys.exit(main(sys.argv[1:]))

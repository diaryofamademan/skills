#!/usr/bin/env bash
# Verify interview-yourself skill assets: required files, img paths, house icons, frontmatter.
# Lives at repo-root scripts/ (moved out of the skill folder so registry
# security scanners do not grade the distributed skill on maintainer tooling).
set -euo pipefail
ROOT="$(cd "$(dirname "$0")/../interview-yourself" && pwd)"
cd "$ROOT"
python3 << 'PY'
import pathlib, re, sys
root = pathlib.Path.cwd()
required = ["SKILL.md", "README.md", "CHANGELOG.md",
            "references/README.md", "references/worked-example.md", "references/question-patterns.md",
            "assets/icons/mic-01.svg"]
missing = [f for f in required if not (root / f).exists()]
if missing: sys.exit(f"MISSING FILES: {missing}")
print(f"OK: {len(required)} required files present")
icons = sorted((root / "assets/icons").glob("*.svg"))
if len(icons) < 12: sys.exit(f"TOO FEW ICONS: {len(icons)}")
bad = [i.name for i in icons if "#6E7FD6" not in i.read_text()]
if bad: sys.exit(f"ICONS OFF HOUSE STROKE #6E7FD6: {bad}")
print(f"OK: {len(icons)} icons, all at house stroke #6E7FD6")
bad = []
for md in root.rglob("*.md"):
    for src in re.findall(r'src="([^"]+)"', md.read_text()):
        if src.startswith("assets/") and not (root / src).exists(): bad.append(f"{md.name}:{src}")
if bad: sys.exit(f"BROKEN IMG PATHS: {bad}")
print("OK: all img src paths resolve")
fm = (root / "SKILL.md").read_text().split("---")[1]
assert "name: interview-yourself" in fm, "frontmatter name"
assert "version: 0.1.0" in fm, "frontmatter version"
print("OK: frontmatter name interview-yourself, version 0.1.0")
PY

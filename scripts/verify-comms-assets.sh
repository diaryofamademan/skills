#!/usr/bin/env bash
# Verify comms skill: img paths, upstream Hugeicons SVGs, mermaid (mmdc).
# Lives at repo-root scripts/ (moved out of the skill folder in v3.3.2 so registry
# security scanners do not grade the distributed skill on maintainer tooling).
set -euo pipefail
ROOT="$(cd "$(dirname "$0")/../comms" && pwd)"
cd "$ROOT"

python3 << 'PY'
import re
import sys
import urllib.error
import urllib.request
from pathlib import Path

UPSTREAM_BASE = "https://raw.githubusercontent.com/hugeicons/hugeicons/main/icons"
STROKE = "#6E7FD6"
ICONDIR = Path("assets/icons")

# --- img src paths in markdown ---
root = Path(".")
missing = []
for md in root.rglob("*.md"):
    if "assets/icons" in str(md):
        continue
    text = md.read_text()
    for m in re.finditer(r'<img\s+[^>]*src="([^"]+)"', text):
        src = m.group(1)
        if src.startswith("http"):
            continue
        p = (md.parent / src).resolve()
        if not p.is_file():
            missing.append((str(md.relative_to(root)), src))
if missing:
    for md, src in missing:
        print(f"MISSING {md}: {src}")
    sys.exit(1)
print(f"OK: all img src paths resolve under {root.resolve()}")

# --- upstream Hugeicons free SVG audit ---
def path_ds(svg: str) -> list[str]:
    return re.findall(r'\bd="([^"]+)"', svg)


def recolor_upstream(text: str) -> str:
    return re.sub(r'stroke="[^"]*"', f'stroke="{STROKE}"', text)


fail = 0
for local in sorted(ICONDIR.glob("*.svg")):
    name = local.name
    url = f"{UPSTREAM_BASE}/{name}"
    try:
        with urllib.request.urlopen(url, timeout=60) as resp:
            if resp.status != 200:
                print(f"UPSTREAM FAIL HTTP {resp.status}: {url}")
                fail += 1
                continue
            upstream = resp.read().decode("utf-8")
    except urllib.error.HTTPError as e:
        print(f"UPSTREAM FAIL HTTP {e.code}: {url}")
        fail += 1
        continue
    except urllib.error.URLError as e:
        print(f"UPSTREAM FAIL URL {url}: {e}")
        fail += 1
        continue

    local_text = local.read_text()
    if path_ds(upstream) != path_ds(local_text):
        print(f"UPSTREAM PATH MISMATCH: {name}")
        fail += 1
        continue
    expected = recolor_upstream(upstream)
    if local_text != expected:
        print(f"UPSTREAM COLOR/FORMAT MISMATCH: {name} (expected stroke recolor only)")
        fail += 1
        continue
    print(f"OK upstream: {name}")

if fail:
    sys.exit(1)
print("OK: all icons match upstream (stroke recolor only)")
PY

while IFS= read -r -d '' md; do
  python3 - "$md" << 'PY'
import re, sys, tempfile, subprocess
from pathlib import Path
md = Path(sys.argv[1])
text = md.read_text()
for i, b in enumerate(re.findall(r"```mermaid\n(.*?)\n```", text, re.DOTALL)):
    t = Path(tempfile.mkdtemp())
    mmd = t / "d.mmd"
    svg = t / "d.svg"
    mmd.write_text(b.strip() + "\n")
    r = subprocess.run(
        ["npx", "-y", "@mermaid-js/mermaid-cli@11.4.0", "-i", str(mmd), "-o", str(svg), "-q"],
        capture_output=True,
        text=True,
    )
    if r.returncode != 0:
        print(f"MERMAID FAIL {md}#{i}", file=sys.stderr)
        print(r.stderr or r.stdout, file=sys.stderr)
        sys.exit(1)
PY
done < <(find . -name '*.md' ! -path './assets/icons/*' -print0)
echo "OK: mermaid blocks validated"

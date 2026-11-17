#!/usr/bin/env bash
# Verify cold-outreach skill package: required files, img paths, icon stroke, frontmatter.
set -euo pipefail
ROOT="$(cd "$(dirname "$0")/skill/cold-outreach" && pwd)"
cd "$ROOT"
python3 << 'PY'
import re, sys
from pathlib import Path
root = Path(".")
required = ["SKILL.md", "README.md", "CHANGELOG.md",
  "references/README.md", "references/the-evidence.md", "references/lavender-audit.md",
  "references/lane-cards.md", "references/worked-example-labs-batch.md",
  "references/follow-ups-and-dms.md", "references/sources-and-urls.md", "references/flagged-words.md",
  "assets/icons/README.md", "assets/icons/LICENSE.md"]
missing = [f for f in required if not (root/f).exists()]
if missing: print("MISSING FILES:", missing); sys.exit(1)
bad = []
for md in root.rglob("*.md"):
    if "assets/icons" in str(md): continue
    for m in re.finditer(r'<img\s+[^>]*src="([^"]+)"', md.read_text()):
        src = m.group(1)
        if src.startswith("http"): continue
        if not (md.parent/src).resolve().exists(): bad.append(f"{md}: {src}")
if bad: print("BROKEN IMG PATHS:", bad); sys.exit(1)
icons = list(Path("assets/icons").glob("*.svg"))
nostroke = [i.name for i in icons if "#6E7FD6" not in i.read_text()]
if nostroke: print("ICONS WITHOUT HOUSE STROKE:", nostroke); sys.exit(1)
fm = Path("SKILL.md").read_text().split("---")[1]
assert "name: cold-outreach" in fm and "version: 0.1.0" in fm, "frontmatter mismatch"
print(f"OK: {len(required)} required files, img paths resolve, {len(icons)} icons at house stroke, frontmatter parses")
PY

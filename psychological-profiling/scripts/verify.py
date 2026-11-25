"""Structural checks for the psychological-profiling package. Mirrors verify-psychological-profiling-assets.sh."""
import re, sys
from pathlib import Path
root = Path(__file__).resolve().parent.parent
required = ['SKILL.md', 'README.md', 'CHANGELOG.md', 'references/README.md', 'references/the-evidence.md', 'references/scoring-the-dimensions.md', 'references/dossier-format-and-example.md', 'assets/icons/README.md', 'assets/icons/LICENSE.md']
missing = [f for f in required if not (root / f).exists()]
if missing: print("MISSING FILES:", missing); sys.exit(1)
bad = []
for md in root.rglob("*.md"):
    if "assets/icons" in str(md): continue
    for m in re.finditer(r'<img\s+[^>]*src="([^"]+)"', md.read_text()):
        src = m.group(1)
        if src.startswith("http"): continue
        if not (md.parent / src).resolve().exists(): bad.append(f"{md}: {src}")
if bad: print("BROKEN IMG PATHS:", bad); sys.exit(1)
icons = list((root / "assets/icons").glob("*.svg"))
nostroke = [i.name for i in icons if "#6E7FD6" not in i.read_text()]
if nostroke: print("ICONS WITHOUT HOUSE STROKE:", nostroke); sys.exit(1)
fm = (root / "SKILL.md").read_text().split("---")[1]
assert "name: psychological-profiling" in fm and "version: 0.3.15" in fm, "frontmatter mismatch"
print(f"OK: {len(required)} required files, img paths resolve, {len(icons)} icons at house stroke, frontmatter parses")

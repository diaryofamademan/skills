#!/usr/bin/env python3
"""Verify the zero-to-one package is in publish shape.

Checks: frontmatter (name, version), CHANGELOG head matches the version,
README follows the standard layout in order, the references index lists
every reference file, the output contract and the writing pass are present
in SKILL.md, and every icon the markdown points at exists on disk.
Exits non-zero with one line per failure."""
import os
import re
import sys

ROOT = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))
fails = []


def read(rel):
    with open(os.path.join(ROOT, rel), encoding="utf-8") as f:
        return f.read()


skill = read("SKILL.md")
readme = read("README.md")
changelog = read("CHANGELOG.md")

m = re.search(r"^name:\s*(\S+)\s*$", skill, re.M)
if not m or m.group(1) != "zero-to-one":
    fails.append("frontmatter name is not zero-to-one")
v = re.search(r"^version:\s*(\S+)\s*$", skill, re.M)
version = v.group(1) if v else None
if not version:
    fails.append("frontmatter version missing")

cm = re.search(r"^##\s+(\d+\.\d+\.\d+)\b", changelog, re.M)
if not cm or cm.group(1) != version:
    fails.append(f"CHANGELOG head ({cm.group(1) if cm else 'none'}) != version ({version})")
if version and f"\n{version} —" not in "\n" + readme.split("## ")[-1]:
    fails.append("README Version section does not carry the current version")

layout = ["What this is", "Who it is for", "Process at a glance",
          "How to use with an agent", "Folder map", "Sources and credits",
          "Contributing", "License", "Version"]
pos = [readme.find(s) for s in layout]
if any(p < 0 for p in pos):
    fails.append(f"README missing sections: {[s for s, p in zip(layout, pos) if p < 0]}")
elif pos != sorted(pos):
    fails.append("README sections out of standard order")

ref_index = read("references/README.md")
for fname in sorted(os.listdir(os.path.join(ROOT, "references"))):
    if fname.endswith(".md") and fname != "README.md" and fname not in ref_index:
        fails.append(f"references/README.md does not list {fname}")
if version and f"**{version}**" not in ref_index:
    fails.append("references/README.md version line is stale")

for needle in ["## Output contract", "Creation verdict:", "Seven questions",
               "Humanizer", "Plain style"]:
    if needle not in skill:
        fails.append(f"SKILL.md missing required element: {needle}")
if "```mermaid" not in skill or "```mermaid" not in readme:
    fails.append("mermaid process block missing in SKILL.md or README.md")

for doc, text in [("SKILL.md", skill), ("README.md", readme)]:
    for icon in sorted(set(re.findall(r"assets/icons/([\w.-]+\.svg)", text))):
        if not os.path.exists(os.path.join(ROOT, "assets", "icons", icon)):
            fails.append(f"{doc} points at missing icon {icon}")

if fails:
    print("VERIFY FAIL")
    for f in fails:
        print(" -", f)
    sys.exit(1)
print(f"VERIFY PASS — zero-to-one {version}, publish shape complete")

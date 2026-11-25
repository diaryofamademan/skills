#!/usr/bin/env python3
"""Structural checks for the podcast-yourself package.

Run before publishing: python3 scripts/verify.py
Exits 0 when every check passes; prints FAIL lines otherwise.
"""
import os
import re
import sys

ROOT = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))
fails = []


def check(cond, msg):
    if not cond:
        fails.append(msg)


def read(rel):
    p = os.path.join(ROOT, rel)
    if not os.path.exists(p):
        fails.append(f"missing file: {rel}")
        return ""
    with open(p, encoding="utf-8") as f:
        return f.read()


skill = read("SKILL.md")
check(skill.startswith("---"), "SKILL.md: no frontmatter")
fm = re.search(r"^name:\s*(\S+)", skill, re.M)
check(fm and fm.group(1) == os.path.basename(ROOT),
      "SKILL.md: frontmatter name does not match the folder name")
for section in ["## What this skill is", "## When to use", "## When NOT to use",
                "## Agent guardrails", "## The one idea", "## Core procedure",
                "## Calls on sibling skills", "## Output contract",
                "## Limits and boundaries", "## Verification checklist"]:
    check(section in skill, f"SKILL.md: missing section {section!r}")
for step in ["### 1 —", "### 2 —", "### 3 —", "### 4 —", "### 5 —", "### 6 —"]:
    check(step in skill, f"SKILL.md: missing procedure step {step!r}")

readme = read("README.md")
for heading in ["What this is", "Who it is for", "Process at a glance",
                "How to use with an agent", "Folder map", "Sources and credits",
                "Contributing", "License", "Version"]:
    check(heading in readme, f"README.md: missing section {heading!r}")

read("CHANGELOG.md")
refs_index = read("references/README.md")
for ref in ["worked-example.md", "the-edit-brief.md"]:
    check(os.path.exists(os.path.join(ROOT, "references", ref)),
          f"references: missing {ref}")
    check(ref in refs_index, f"references/README.md: {ref} not indexed")

for rel in ["references/worked-example.md", "references/the-edit-brief.md"]:
    body = read(rel)
    check("lorem" not in body.lower(), f"{rel}: placeholder text found")

check(os.path.isdir(os.path.join(ROOT, "assets", "icons")),
      "assets/icons missing")

if fails:
    for f in fails:
        print("FAIL:", f)
    sys.exit(1)
print("OK: podcast-yourself package passes structural checks")

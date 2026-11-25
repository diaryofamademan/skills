#!/usr/bin/env bash
# verify.sh — cartoon-system package check.
# Confirms the publish shape: required files exist, SKILL.md frontmatter
# carries name and version, README.md carries every standard section,
# the references index lists every reference file, every referenced icon
# exists on disk, and no owner name or handles appear inside the package.
# Prints PASS/FAIL per check and exits non-zero if anything fails.

set -u
cd "$(dirname "$0")/.." || exit 1

fail=0

pass() { echo "PASS: $1"; }
bad()  { echo "FAIL: $1"; fail=1; }

# 1. Required files exist.
for f in SKILL.md README.md CHANGELOG.md \
         references/README.md references/character-bible-template.md \
         references/panel-grammar.md references/text-layers.md \
         references/drift-check.md references/worked-example.md \
         scripts/verify.sh; do
  if [ -f "$f" ]; then pass "file exists: $f"; else bad "file missing: $f"; fi
done

# 2. SKILL.md frontmatter carries name and version.
if head -20 SKILL.md | grep -q '^name: cartoon-system$'; then
  pass "SKILL.md frontmatter name is cartoon-system"
else
  bad "SKILL.md frontmatter name is not cartoon-system"
fi

if head -20 SKILL.md | grep -q '^version: '; then
  pass "SKILL.md frontmatter has a version"
else
  bad "SKILL.md frontmatter has no version"
fi

# 3. README.md carries every standard section heading.
for h in "What this is" "Who it is for" "Process at a glance" \
         "How to use with an agent" "Folder map" "Sources and credits" \
         "Contributing" "License" "Version"; do
  if grep -q "^## .*$h" README.md; then
    pass "README section present: $h"
  else
    bad "README section missing: $h"
  fi
done

# 4. README title carries the (open skill) marker.
if head -1 README.md | grep -q '(open skill)'; then
  pass "README title carries (open skill)"
else
  bad "README title missing (open skill)"
fi

# 5. References index exists and lists every reference file.
if [ -f references/README.md ]; then
  pass "references index exists"
  for f in character-bible-template.md panel-grammar.md text-layers.md drift-check.md worked-example.md; do
    if grep -q "$f" references/README.md; then
      pass "references index lists: $f"
    else
      bad "references index does not list: $f"
    fi
  done
else
  bad "references index missing"
fi

# 6. Icons referenced by SKILL.md, README.md, and CHANGELOG.md exist on disk.
for icon in $(grep -oh 'assets/icons/[a-z0-9-]*\.svg' SKILL.md README.md CHANGELOG.md | sort -u); do
  if [ -f "$icon" ]; then pass "icon exists: $icon"; else bad "icon missing: $icon"; fi
done

# 7. Grep-clean: no owner name or handles inside the package.
# (This script itself holds the patterns, so it is excluded from the scan.)
if grep -r --exclude=verify.sh -q 'Balina' .; then
  bad "owner name found inside the package"
else
  pass "grep-clean: no owner name inside the package"
fi

if grep -r --exclude=verify.sh -q 'DiaryofaMadeMan' .; then
  bad "owner handle found inside the package"
else
  pass "grep-clean: no owner handle inside the package"
fi

echo
if [ "$fail" -eq 0 ]; then
  echo "ALL CHECKS PASSED"
else
  echo "CHECKS FAILED"
fi
exit "$fail"

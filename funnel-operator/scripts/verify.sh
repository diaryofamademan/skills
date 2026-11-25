#!/usr/bin/env bash
# verify.sh — funnel-operator package check.
# Confirms the publish shape: required files exist, SKILL.md frontmatter
# carries name and version, README.md carries every standard section,
# and the references index exists. Prints PASS/FAIL per check and
# exits non-zero if anything fails.

set -u
cd "$(dirname "$0")/.." || exit 1

fail=0

pass() { echo "PASS: $1"; }
bad()  { echo "FAIL: $1"; fail=1; }

# 1. Required files exist.
for f in SKILL.md README.md CHANGELOG.md \
         references/README.md references/formats.md \
         references/channel-config-template.md references/worked-example.md \
         references/research-module.md references/linkedin-module.md \
         references/x-module.md references/instagram-module.md \
         scripts/verify.sh; do
  if [ -f "$f" ]; then pass "file exists: $f"; else bad "file missing: $f"; fi
done

# 2. SKILL.md frontmatter carries name and version.
if head -20 SKILL.md | grep -q '^name: funnel-operator$'; then
  pass "SKILL.md frontmatter name is funnel-operator"
else
  bad "SKILL.md frontmatter name is not funnel-operator"
fi

if head -20 SKILL.md | grep -q '^version: '; then
  pass "SKILL.md frontmatter has a version"
else
  bad "SKILL.md frontmatter has no version"
fi

# 3. README.md carries every standard section heading, in the standard set.
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
  for f in formats.md channel-config-template.md worked-example.md \
           podcast-module.md shorts-module.md blog-module.md \
           scoreboard-module.md research-module.md \
           linkedin-module.md x-module.md instagram-module.md; do
    if grep -q "$f" references/README.md; then
      pass "references index lists: $f"
    else
      bad "references index does not list: $f"
    fi
  done
else
  bad "references index missing"
fi

# 6. Icons referenced by SKILL.md and README.md exist on disk.
for icon in $(grep -oh 'assets/icons/[a-z0-9-]*\.svg' SKILL.md README.md CHANGELOG.md | sort -u); do
  if [ -f "$icon" ]; then pass "icon exists: $icon"; else bad "icon missing: $icon"; fi
done

echo
if [ "$fail" -eq 0 ]; then
  echo "ALL CHECKS PASSED"
else
  echo "CHECKS FAILED"
fi
exit "$fail"

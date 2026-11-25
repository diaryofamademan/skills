#!/usr/bin/env bash
# verify.sh — structural checks for the storytelling skill package.
# Exits 0 only if every check passes.
set -u
cd "$(dirname "$0")/.." || exit 2
ROOT="$(pwd)"
FAIL=0

pass() { echo "PASS: $1"; }
fail() { echo "FAIL: $1"; FAIL=1; }

# 1. Required files
for f in SKILL.md README.md CHANGELOG.md \
         references/README.md references/lessons.md \
         references/storyboard-method.md references/worked-example.md \
         scripts/verify.sh; do
  if [ -f "$ROOT/$f" ]; then pass "file exists: $f"; else fail "missing file: $f"; fi
done

# 2. Frontmatter in SKILL.md
if grep -q '^name: storytelling$' SKILL.md; then pass "frontmatter name"; else fail "frontmatter name"; fi
if grep -q '^version: 0.1.0$' SKILL.md; then pass "frontmatter version"; else fail "frontmatter version"; fi
if grep -q '^author: "Open skills contributors"$' SKILL.md; then pass "frontmatter author"; else fail "frontmatter author"; fi
if grep -q '^license: MIT$' SKILL.md; then pass "frontmatter license"; else fail "frontmatter license"; fi

# 3. SKILL.md required sections
for s in "How to read this" "When to use this skill" "When NOT to use this skill" \
         "Agent guardrails" "The one idea" "Core procedure" \
         "Calls on sibling skills" "Output contract" "Limits and boundaries" \
         "Verification checklist"; do
  if grep -q "$s" SKILL.md; then pass "SKILL.md section: $s"; else fail "SKILL.md missing section: $s"; fi
done

# 4. README.md required sections, in the standard sibling layout
for s in "(open skill)" "What this is" "Who it is for" "Process at a glance" \
         "How to use with an agent" "Folder map" "Sources and credits" \
         "Contributing" "License" "Version"; do
  if grep -q "$s" README.md; then pass "README.md section: $s"; else fail "README.md missing section: $s"; fi
done

# 5. References index names every reference file
for s in "lessons.md" "storyboard-method.md" "worked-example.md"; do
  if grep -q "$s" references/README.md; then pass "references index: $s"; else fail "references index missing: $s"; fi
done

# 6. Every lesson in lessons.md carries an evidence label.
# Lessons are the bullet lines; each must contain one label marker.
LABELS='\[(measured|practitioner|framing|platform-declared|observed)( |])'
TOTAL=$(grep -c '^- ' references/lessons.md || true)
LABELED=$(grep '^- ' references/lessons.md | grep -cE "$LABELS" || true)
if [ "$TOTAL" -gt 0 ] && [ "$TOTAL" -eq "$LABELED" ]; then
  pass "lessons labeled: $LABELED of $TOTAL"
else
  fail "lessons labeled: $LABELED of $TOTAL"
  grep '^- ' references/lessons.md | grep -vE "$LABELS" | sed 's/^/  UNLABELED: /'
fi

# 7. Lesson counts by label (report only)
echo "Lesson counts by evidence label:"
for L in measured practitioner framing platform-declared observed; do
  C=$(grep '^- ' references/lessons.md | grep -c "\[$L " || true)
  echo "  $L: $C"
done
echo "  total lessons: $TOTAL"

# 8. Icons referenced from SKILL.md and README.md exist on disk
MISSING=0
for icon in $(grep -oh 'assets/icons/[a-z0-9-]*\.svg' SKILL.md README.md | sort -u); do
  if [ ! -f "$ROOT/$icon" ]; then echo "FAIL: icon missing on disk: $icon"; MISSING=1; fi
done
if [ "$MISSING" -eq 0 ]; then pass "all referenced icons exist"; else FAIL=1; fi

# 9. No owner-specific naming inside the package (publication rule)
if grep -rn "Ian Balina" SKILL.md README.md CHANGELOG.md references/ >/dev/null 2>&1; then
  fail "owner name found inside the package"
else
  pass "no owner name inside the package"
fi

echo
if [ "$FAIL" -eq 0 ]; then
  echo "ALL CHECKS PASSED"
else
  echo "SOME CHECKS FAILED"
fi
exit $FAIL

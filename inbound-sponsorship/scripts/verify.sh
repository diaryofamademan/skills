#!/usr/bin/env bash
# verify.sh — package checks for the inbound-sponsorship skill.
#
# Checks:
#   1. Required files exist.
#   2. SKILL.md frontmatter carries name, version, and license.
#   3. SKILL.md carries the required sections.
#   4. No banned company-specific terms anywhere in the package.
#   5. README.md section headings match the standard sibling layout.
#   6. CHANGELOG.md carries the current version entry.
#
# Exit 0 = all checks pass. Exit 1 = at least one failure.

set -u
cd "$(dirname "$0")/.." || exit 1
FAIL=0

ok()   { printf 'ok   %s\n' "$1"; }
bad()  { printf 'FAIL %s\n' "$1"; FAIL=1; }

# 1. Required files
for f in SKILL.md README.md CHANGELOG.md \
         references/README.md references/evidence-notes.md \
         references/benchmarks.md references/hybrid-clauses.md \
         references/worked-example.md references/build-notes.md \
         assets/icons/money-01.svg assets/icons/LICENSE.md; do
  if [ -f "$f" ]; then ok "exists: $f"; else bad "missing: $f"; fi
done

# 2. Frontmatter
head -20 SKILL.md | grep -q '^name: inbound-sponsorship$' \
  && ok "frontmatter: name" || bad "frontmatter: name missing or wrong"
head -20 SKILL.md | grep -q '^version: ' \
  && ok "frontmatter: version" || bad "frontmatter: version missing"
head -20 SKILL.md | grep -q '^license: MIT$' \
  && ok "frontmatter: license MIT" || bad "frontmatter: license missing or not MIT"
VERSION="$(grep -m1 '^version: ' SKILL.md | awk '{print $2}')"

# 3. Required SKILL.md sections
for s in "When to use" "When NOT to use" "Agent guardrails" \
         "Core procedure" "Output contract" "Limits and boundaries"; do
  grep -q "$s" SKILL.md \
    && ok "section: $s" || bad "section missing: $s"
done

# 4. Banned company specifics (this skill is general-use; no real
#    company, counterparty, or internal system may appear in it)
BANNED="Token Metrics|tokenmetrics|TokenMetrics"
if grep -rniE "$BANNED" --exclude-dir=.git --exclude=verify.sh . >/dev/null 2>&1; then
  bad "banned company-specific term found:"
  grep -rniE "$BANNED" --exclude-dir=.git --exclude=verify.sh . | sed 's/^/     /'
else
  ok "no banned company-specific terms"
fi

# 5. README headings match the standard sibling layout, in order
EXPECTED="What this is
Who it is for
Process at a glance
How to use with an agent
Folder map
Sources and credits
Contributing
License
Version"
ACTUAL="$(grep '^## ' README.md | sed -E 's/<[^>]*>//g; s/^## +//; s/ +$//')"
if [ "$ACTUAL" = "$EXPECTED" ]; then
  ok "README headings match the standard layout"
else
  bad "README headings differ from the standard layout:"
  diff <(printf '%s\n' "$EXPECTED") <(printf '%s\n' "$ACTUAL") | sed 's/^/     /'
fi

# 6. CHANGELOG carries the current version
if [ -n "$VERSION" ] && grep -q "^## $VERSION" CHANGELOG.md; then
  ok "CHANGELOG entry for $VERSION"
else
  bad "CHANGELOG entry missing for version $VERSION"
fi

printf '\n'
if [ "$FAIL" -eq 0 ]; then
  printf 'VERIFY: PASS (inbound-sponsorship %s)\n' "$VERSION"
else
  printf 'VERIFY: FAIL\n'
fi
exit "$FAIL"

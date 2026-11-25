#!/usr/bin/env bash
# Package check for the playbook skill.
# Verifies required files, frontmatter, README sections, the references index,
# every icon the package references, and that every skill named in the roster
# exists as a folder in the skills root this package is installed in.
# Prints PASS/FAIL lines and exits non-zero on any failure.

set -u

PKG_DIR="$(cd "$(dirname "$0")/.." && pwd)"
SKILLS_ROOT="$(cd "$PKG_DIR/.." && pwd)"
FAILURES=0

pass() { echo "PASS: $1"; }
fail() { echo "FAIL: $1"; FAILURES=$((FAILURES + 1)); }

check_file() {
  if [ -f "$PKG_DIR/$1" ]; then pass "file exists: $1"; else fail "file missing: $1"; fi
}

# --- Required files ---------------------------------------------------------
for f in SKILL.md README.md CHANGELOG.md references/README.md references/roster.md references/worked-example.md scripts/verify.sh; do
  check_file "$f"
done

# --- Frontmatter ------------------------------------------------------------
if grep -q '^name: playbook$' "$PKG_DIR/SKILL.md"; then
  pass "frontmatter: name is playbook"
else
  fail "frontmatter: name is not playbook"
fi

if grep -q '^version: ' "$PKG_DIR/SKILL.md"; then
  pass "frontmatter: version present ($(grep -m1 '^version: ' "$PKG_DIR/SKILL.md" | awk '{print $2}'))"
else
  fail "frontmatter: version missing"
fi

# --- README sections ----------------------------------------------------------
for section in "What this is" "Who it is for" "Process at a glance" "How to use with an agent" "Folder map" "Sources and credits" "Contributing" "License" "Version"; do
  if grep -q "^## .*$section" "$PKG_DIR/README.md"; then
    pass "README section: $section"
  else
    fail "README section missing: $section"
  fi
done

if grep -q '(open skill)' "$PKG_DIR/README.md"; then
  pass "README title carries (open skill)"
else
  fail "README title missing (open skill)"
fi

# --- References index ---------------------------------------------------------
for ref in roster.md worked-example.md; do
  if grep -q "$ref" "$PKG_DIR/references/README.md"; then
    pass "references index lists: $ref"
  else
    fail "references index missing: $ref"
  fi
done

# --- Icons referenced by the package ------------------------------------------
ICONS=$(grep -ho 'assets/icons/[a-z0-9-]*\.svg' "$PKG_DIR/SKILL.md" "$PKG_DIR/README.md" "$PKG_DIR/CHANGELOG.md" | sort -u)
for icon in $ICONS; do
  if [ -f "$PKG_DIR/$icon" ]; then pass "icon exists: $icon"; else fail "icon missing: $icon"; fi
done

# --- Roster skills exist on disk ------------------------------------------------
ROSTER_SKILLS="first-principles-thinking fix-the-bottleneck game-theory-for-decisions fundraising positioning business-model-canvas vision-and-manifesto one-page-marketing-plan cold-outreach funnel-operator comms write-in-your-voice stop-the-scroll storytelling interview-yourself playbook"
for skill in $ROSTER_SKILLS; do
  if [ -f "$SKILLS_ROOT/$skill/SKILL.md" ]; then
    pass "roster skill installed: $skill"
  else
    fail "roster skill NOT installed: $skill (expected $SKILLS_ROOT/$skill/SKILL.md)"
  fi
  if grep -q "$skill" "$PKG_DIR/references/roster.md"; then
    pass "roster documents: $skill"
  else
    fail "roster does not document: $skill"
  fi
done

# --- Result ---------------------------------------------------------------------
echo ""
if [ "$FAILURES" -eq 0 ]; then
  echo "ALL CHECKS PASSED"
  exit 0
else
  echo "$FAILURES CHECK(S) FAILED"
  exit 1
fi

#!/usr/bin/env bash
# SkillSpector skill gate — see GATE.md in this folder.
# Usage: gate.sh <skill-dir> [<skill-dir> ...]
set -u
DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
exec python3 "$DIR/gate.py" "$@"

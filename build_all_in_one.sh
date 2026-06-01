#!/usr/bin/env bash
# Fully regenerate REBUILD_OS_ALL_IN_ONE.md from canonical v3.5 source files.
# Usage: bash build_all_in_one.sh   (run from repo root)
# The all-in-one is a generated single-file fallback. Individual files remain canonical.
set -euo pipefail

OUT="REBUILD_OS_ALL_IN_ONE.md"
TMP="$(mktemp)"

emit() {
  local f="$1"
  echo
  echo "<!-- ===== BEGIN $f ===== -->"
  echo
  cat "$f"
  echo
  echo "<!-- ===== END $f ===== -->"
  echo
}

{
  echo "# Rebuild OS v3.5 Personal Memory, Budget, Diary, and Events — All In One"
  echo
  echo "> GENERATED ARTIFACT. Fully regenerated from canonical v3.5 source files by build_all_in_one.sh."
  echo "> Single-file fallback. Use only if normal live-pack loading fails. Individual files are canonical; if this file disagrees, the individual files win."
  echo "> Includes: root orientation/use docs, live state, all core/ modules, all templates/, platform adapters, current audit notes, source map, and changelog."

  # Top-level orientation + deployment/use docs
  emit "README.md"
  [ -f VERSION.md ] && emit "VERSION.md"
  [ -f DEPLOYMENT_CHECKLIST.md ] && emit "DEPLOYMENT_CHECKLIST.md"
  [ -f FIRST_REAL_USE_SCRIPT.md ] && emit "FIRST_REAL_USE_SCRIPT.md"

  # Live state package files
  emit "BRAIN_SNAPSHOT.md"
  emit "REBUILD_OS_BRAIN.md"

  # Core modules in numeric order
  for f in $(ls core/*.md | sort); do emit "$f"; done

  # Templates
  for f in $(ls templates/*.md | sort); do emit "$f"; done

  # Platform adapters
  for f in $(ls platforms/*.md | sort); do emit "$f"; done

  # Current audit notes only; historical audit stays out
  [ -f audit/V3_4_REQUIREMENT_COMPLETION_AUDIT.md ] && emit "audit/V3_4_REQUIREMENT_COMPLETION_AUDIT.md"
  [ -f audit/V3_4_FINAL_DEPLOYMENT_READINESS_AUDIT.md ] && emit "audit/V3_4_FINAL_DEPLOYMENT_READINESS_AUDIT.md"

  # Historical implementation-agent steering intentionally excluded from live all-in-one.
  # Old Win1/Win2/Zero workflow notes are not live Rebuild OS behavior.

  # Reference + changelog
  [ -f references/SOURCE_MAP.md ] && emit "references/SOURCE_MAP.md"
  emit "CHANGELOG.md"
} > "$TMP"

mv "$TMP" "$OUT"
echo "Regenerated $OUT"
wc -c "$OUT"
head -6 "$OUT"

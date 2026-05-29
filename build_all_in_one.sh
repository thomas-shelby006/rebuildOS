#!/usr/bin/env bash
# Fully regenerate REBUILD_OS_ALL_IN_ONE.md from the canonical v3.3 source files.
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
  echo "# Rebuild OS v3.3 Life Signals — All In One"
  echo
  echo "> GENERATED ARTIFACT. Fully regenerated from the canonical v3.3 source files by build_all_in_one.sh."
  echo "> Single-file fallback. Use only if individual file loading fails. Individual files are canonical; if this file disagrees, the individual files win."
  echo "> Includes: README, BRAIN_SNAPSHOT, REBUILD_OS_BRAIN, all core/ modules (incl. core/44 Life Signals), all templates/, platform adapters, source map, and changelog."

  # Top-level orientation + live state
  emit "README.md"
  emit "BRAIN_SNAPSHOT.md"
  emit "REBUILD_OS_BRAIN.md"

  # Core modules in numeric order
  for f in $(ls core/*.md | sort); do emit "$f"; done

  # Templates
  for f in $(ls templates/*.md | sort); do emit "$f"; done

  # Platform adapters
  for f in $(ls platforms/*.md | sort); do emit "$f"; done

  # Reference + changelog
  [ -f references/SOURCE_MAP.md ] && emit "references/SOURCE_MAP.md"
  emit "CHANGELOG.md"
} > "$TMP"

mv "$TMP" "$OUT"
echo "Regenerated $OUT"
wc -c "$OUT"
head -6 "$OUT"

#!/usr/bin/env bash
# Build the ChatGPT Live Pack (generated artifacts) from canonical source files.
# Usage: bash build_chatgpt_pack.sh   (run from repo root)
# Source files in core/ and templates/ remain canonical; the bundles and copies
# in chatgpt_live_pack/ are generated outputs. Re-run after changing sources.
set -euo pipefail

PACK="chatgpt_live_pack"
mkdir -p "$PACK"

# --- Core operating manual bundle (high-use core modules, Life Signals first) ---
CORE_FILES=(
  core/44_LIFE_SIGNALS_AND_COMPANION_MODE.md
  core/10_ADAPTIVE_DAY_ENGINE.md
  core/11_STATE_ROUTER_AND_MODE_SWITCH.md
  core/06_COMMITMENT_LEDGER.md
  core/33_WORK_VISIBILITY_AND_COMMUNICATION_AVOIDANCE.md
  core/22_ENERGY_DEBT_AND_AVOIDANCE_TAX.md
  core/23_GREEN_DAY_AND_RELAPSE_MODES.md
  core/34_SHAME_SENTENCE_BANK.md
  core/35_SLEEP_ANCHOR_CORRECTION_PROTOCOL.md
  core/32_PM_PROGRESSION_TRACKER.md
  core/18_COMMAND_MENU.md
  core/42_FIRST_WEEK_ROADBLOCK_PLAYBOOK.md
  core/43_LAUNCH_RUNBOOK.md
)

{
  echo "# Core Operating Manual — Rebuild OS v3.4 Coherence and Deployment Hardening"
  echo
  echo "> GENERATED ARTIFACT. Built by build_chatgpt_pack.sh from canonical core/ files."
  echo "> Do not edit here; edit the source files and rebuild. Source files win on conflict."
  echo
  for f in "${CORE_FILES[@]}"; do
    echo
    echo "<!-- ===== BEGIN $f ===== -->"
    echo
    cat "$f"
    echo
    echo "<!-- ===== END $f ===== -->"
    echo
  done
} > "$PACK/CORE_OPERATING_MANUAL.md"

# --- Templates bundle (high-use templates) ---
TEMPLATE_FILES=(
  templates/LIFE_SIGNAL_CAPTURE.md
  templates/WEIGHT_CHECK.md
  templates/MORNING_CHECKIN.md
  templates/POST_SCRUM_CHECKIN.md
  templates/MIDDAY_ANCHOR_CHECK.md
  templates/NIGHT_REVIEW.md
  templates/WEEKLY_REVIEW.md
  templates/PM_ROADMAP_INTAKE.md
  templates/STUCK_CHECKIN.md
  templates/REENTRY_AFTER_WASTED_TIME.md
  templates/TIMESHEET_ANCHOR_CHECK.md
  templates/PREFERENCE_EXPORT.md
  templates/PREFERENCE_CONSOLIDATION.md
  templates/START_TODAY_CHECK.md
  templates/ROADBLOCK_CHECK.md
)

{
  echo "# Templates Bundle — Rebuild OS v3.4 Coherence and Deployment Hardening"
  echo
  echo "> GENERATED ARTIFACT. Built by build_chatgpt_pack.sh from canonical templates/ files."
  echo "> Do not edit here; edit the source files and rebuild. Source files win on conflict."
  echo
  for f in "${TEMPLATE_FILES[@]}"; do
    echo
    echo "<!-- ===== BEGIN $f ===== -->"
    echo
    cat "$f"
    echo
    echo "<!-- ===== END $f ===== -->"
    echo
  done
} > "$PACK/TEMPLATES_BUNDLE.md"

# --- Copy canonical upload-ready files (generated snapshots for convenience) ---
cp BRAIN_SNAPSHOT.md "$PACK/BRAIN_SNAPSHOT.md"
cp REBUILD_OS_BRAIN.md "$PACK/REBUILD_OS_BRAIN.md"
cp REBUILD_OS_ALL_IN_ONE.md "$PACK/REBUILD_OS_ALL_IN_ONE.md"
cp core/41_ACTIVE_PREFERENCE_PROFILE.md "$PACK/core_41_ACTIVE_PREFERENCE_PROFILE.md"
cp core/40_PREFERENCE_FEEDBACK_LEDGER.md "$PACK/core_40_PREFERENCE_FEEDBACK_LEDGER.md"
cp core/00_PROJECT_INSTRUCTIONS.md "$PACK/core_00_PROJECT_INSTRUCTIONS.md"
cp core/21_FILE_LOADING_PRIORITY_GUIDE.md "$PACK/core_21_FILE_LOADING_PRIORITY_GUIDE.md"
cp platforms/CHATGPT_PROJECT_INSTRUCTIONS.md "$PACK/platforms_CHATGPT_PROJECT_INSTRUCTIONS.md"

echo "ChatGPT Live Pack built in $PACK/"
ls -la "$PACK"

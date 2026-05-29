# Rebuild OS v3.2 Deployment Ready

Rebuild OS is Sundar's therapy-informed self-coaching, accountability, planning, and life-management system.

This package is **deployment-ready for personal use**. The goal now is not more design. The goal is to run the system for one real week, update the brain/snapshot, and let real usage reveal the next changes.

## What Rebuild OS does

It helps Sundar:

- start the day with low-friction natural-language check-ins
- use Red / Yellow / Green capacity routing
- re-anchor the day when plans slip
- protect job stability through work visibility and timesheet anchors
- handle technical blockers without turning them into shame
- track commitments, carry-counts, avoid-counts, and decay
- correct sleep anchors gradually
- restart gym without overcommitting
- progress toward PM roles without making PM the whole system
- run night and weekly reviews without punishment
- preserve context through `BRAIN_SNAPSHOT.md`, `REBUILD_OS_BRAIN.md`, and handoff files
- adapt over time through the preference feedback ledger and active preference profile

## Start here

For a new Claude / ChatGPT Project, upload or keep active:

1. `core/00_PROJECT_INSTRUCTIONS.md`
2. `BRAIN_SNAPSHOT.md`
3. `REBUILD_OS_BRAIN.md`
4. `core/41_ACTIVE_PREFERENCE_PROFILE.md`
5. `core/21_FILE_LOADING_PRIORITY_GUIDE.md`
6. platform file if needed:
   - `platforms/CLAUDE_PROJECT_INSTRUCTIONS.md`
   - `platforms/CHATGPT_PROJECT_INSTRUCTIONS.md`

Then paste `FIRST_RUN_PROMPT.md`.

## Daily use commands

Use natural language if you forget commands.

Core commands:

- `Start session`
- `Morning check-in`
- `Post-scrum check`
- `I am stuck`
- `I wasted time`
- `Technical blocker`
- `Timesheet anchor`
- `Night review`
- `Weekly review`
- `Export preferences`

## First 7 days rule

Do not add new features before 7 real-use days.

Allowed changes during first use:

1. update brain/snapshot
2. capture and export preferences
3. schedule reminders
4. fix true contradictions
5. fix anything that blocks use today

Everything else goes to System Notes and weekly review.

## File hierarchy

- `BRAIN_SNAPSHOT.md` = fast current-state starter.
- `REBUILD_OS_BRAIN.md` = durable live brain.
- `core/00_PROJECT_INSTRUCTIONS.md` = canonical behavior rules.
- `core/41_ACTIVE_PREFERENCE_PROFILE.md` = active personalization.
- `core/40_PREFERENCE_FEEDBACK_LEDGER.md` = raw preference feedback; load only when needed.
- `core/21_FILE_LOADING_PRIORITY_GUIDE.md` = tells the AI what to load and ignore.
- `REBUILD_OS_ALL_IN_ONE.md` = single-file fallback if individual file loading fails or a platform cannot handle the full folder structure.
- `templates/` = command-specific workflows.
- `platforms/` = Claude / ChatGPT / Canvas adapters.
- `audit/` = setup and validation only.
- `audit/history/` = old review artifacts; do not load during daily use.

## Precedence

1. Latest explicit Sundar instruction wins.
2. Active Preference Profile wins over package defaults when direct/confirmed.
3. Brain and Snapshot provide current state.
4. Core files define behavior.
5. Templates execute specific workflows.
6. Audit/history/reference files do not override active rules.

## Direct preferences preserved

- English output only, even if input is Tamil/Tanglish.
- Strict, direct, non-shaming tone.
- No fake therapist claim.
- No heavy escalation framing inside normal Rebuild OS operation.
- PM/career is one important track, not the entire system.
- Current job stability and work visibility are protected.
- Latest explicit update wins.

## Deployment status

This is the polished deployment build. Use it. Do not continue the design loop until after the first 7 days of actual operation.

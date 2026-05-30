# Rebuild OS v3.4 Coherence and Deployment Hardening

Rebuild OS is Sundar's self-coaching, accountability, planning, and life-management system.

This package is intended for personal daily use inside ChatGPT Projects, with GitHub/Kiro as the source/archive/builder workspace.

## Current status

- Current merged base: v3.3 Life Signals.
- This branch: v3.4 coherence/deployment hardening.
- See `VERSION.md` for current package status and source-of-truth rules.
- See `CHANGELOG.md` for history.

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
- track life signals as bounded week-to-week patterns
- preserve context through `BRAIN_SNAPSHOT.md` and `REBUILD_OS_BRAIN.md`
- adapt over time through preference feedback and the active preference profile

## ChatGPT Project setup

Default setup uses `chatgpt_live_pack/`.

Use one strategy at a time:

1. **Normal live pack** — upload the files listed in `chatgpt_live_pack/UPLOAD_README.md`.
2. **Fallback single-file mode** — upload `REBUILD_OS_ALL_IN_ONE.md` alone only if the normal live pack cannot be used.

Do not upload both strategies together unless explicitly troubleshooting. Duplicate rules can create stale/conflicting retrieval.

## Start here

For a new ChatGPT Project:

1. Use `chatgpt_live_pack/UPLOAD_README.md`.
2. Upload the normal live pack files.
3. Paste `platforms/CHATGPT_PROJECT_INSTRUCTIONS.md` into Project Instructions.
4. Run the startup smoke test from the upload guide.

For Claude or other platforms, use the relevant file in `platforms/`.

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

## First 7 real-use days

The first 7 real-use days after v3.3 activation are calibration + feature freeze.

Allowed during first use:

1. update brain/snapshot
2. capture and export preferences
3. schedule reminders
4. fix true contradictions
5. fix anything that blocks use today

Everything else goes to System Notes and weekly review. Weekly review decides keep / simplify / remove.

## File hierarchy

- `VERSION.md` = current package status.
- `CHANGELOG.md` = history.
- `BRAIN_SNAPSHOT.md` = fast current-state starter.
- `REBUILD_OS_BRAIN.md` = durable live brain.
- `core/00_PROJECT_INSTRUCTIONS.md` = canonical behavior rules.
- `core/41_ACTIVE_PREFERENCE_PROFILE.md` = active personalization.
- `core/40_PREFERENCE_FEEDBACK_LEDGER.md` = raw preference feedback; load only when needed.
- `core/21_FILE_LOADING_PRIORITY_GUIDE.md` = tells the AI what to load and ignore.
- `REBUILD_OS_ALL_IN_ONE.md` = fallback-only single-file recovery. Do not upload with normal live pack by default.
- `templates/` = command-specific workflows.
- `core/44_LIFE_SIGNALS_AND_COMPANION_MODE.md` = active life-signal tracking + time-aware companion rules.
- `chatgpt_live_pack/` = generated upload artifact for ChatGPT Project.
- `platforms/` = Claude / ChatGPT / Canvas adapters.
- `audit/` = setup and validation only.
- `audit/history/` = old review artifacts; do not load during daily use.

## Source-of-truth policy

Canonical sources are root live files, `core/`, `templates/`, and `platforms/`.

Generated artifacts are not canonical:

- `REBUILD_OS_ALL_IN_ONE.md`
- `chatgpt_live_pack/CORE_OPERATING_MANUAL.md`
- `chatgpt_live_pack/TEMPLATES_BUNDLE.md`
- flattened live-pack copies

If generated files disagree with canonical source files, source files win and artifacts should be regenerated.

## Merge policy

Feature branches and PRs are review artifacts. `main` is updated only after Sundar explicitly says the final version is approved and instructs merge.

## System-improvement guardrail

System improvement is not the daily system. Before starting Rebuild OS editing, confirm today's minimum actions are done or scheduled. If not, cap system work to one scoped task or defer it. Keep one active improvement PR unless Sundar explicitly overrides.

## Direct preferences preserved

- English output only, even if input is Tamil/Tanglish.
- Strict, direct, non-shaming tone.
- No fake therapist claim.
- No heavy escalation framing inside normal operation.
- PM/career is one important track, not the entire system.
- Current job stability and work visibility are protected.
- Latest explicit update wins.

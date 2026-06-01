# Rebuild OS v3.5 GitHub Memory Router / Live-State Integration

Rebuild OS is Sundar's self-coaching, accountability, planning, budget-awareness, diary, future-event, and life-management system.

This package is intended for personal daily use inside ChatGPT Projects, with GitHub as the persistence/source layer when connector access is available.

## Current status

- Current review branch: `v3-5-memory-router-budget-diary`.
- Previous deployed base: v3.4 Coherence and Deployment Hardening.
- v3.5 goal: wire GitHub live-state memory, budget tracking, diary/recent-life memory, future events, and repo/domain routing into the main Rebuild OS package.
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
- track spending and detect budget/spending patterns
- keep a compact recent diary / personal-life memory
- remember future events and surface near-term prep/day-of reminders
- route buying decisions to `buying-things`
- track the supplement routine only after explicit activation
- preserve context through GitHub live state, with uploaded files as fallback
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
4. Connect GitHub access if available.
5. Run: `Start from live state`.
6. Run the smoke tests from the upload guide.

For Claude or other platforms, use the relevant file in `platforms/`.

## Daily use commands

Use natural language if you forget commands.

Core commands:

- `Start from live state`
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
- `Activate supplement routine` — optional; starts supplement tracking only when Sundar chooses

Natural logs are valid:

- `I spent ₹250 on lunch today`
- `log: important thing happened today...`
- `I need to attend a wedding on 2026-06-20`
- `save this to live state`

## GitHub memory architecture

- `thomas-shelby006/rebuildOS` = stable rules, templates, generated bundles, deployment package.
- `thomas-shelby006/rebuild-os-live-state` = mutable runtime memory: current state, commitments, budget, diary, future events, preferences, state log.
- `thomas-shelby006/buying-things` = buying decisions, purchase logs, reorder timing, locked buying rules.
- PM transition repo = PM roadmap/source strategy; Rebuild OS tracks PM execution/accountability only.

Canonical router: `core/46_GITHUB_MEMORY_ROUTER.md`.

## First 7 real-use days

The first 7 real-use days after v3.5 activation are calibration + feature freeze.

Allowed during first use:

1. update GitHub live state / fallback snapshot
2. capture spending, diary, future events, and preferences
3. schedule serious reminders
4. fix true contradictions
5. fix anything that blocks use today

Everything else goes to System Notes and weekly review. Weekly review decides keep / simplify / remove.

Supplement Routine remains dormant until Sundar explicitly says `Activate supplement routine`.

## File hierarchy

- `VERSION.md` = current package status.
- `CHANGELOG.md` = history.
- `BRAIN_SNAPSHOT.md` = upload/fallback fast current-state starter.
- `REBUILD_OS_BRAIN.md` = upload/fallback durable brain.
- `core/00_PROJECT_INSTRUCTIONS.md` = canonical behavior rules.
- `core/46_GITHUB_MEMORY_ROUTER.md` = stable GitHub memory router spec.
- `core/41_ACTIVE_PREFERENCE_PROFILE.md` = active personalization.
- `core/40_PREFERENCE_FEEDBACK_LEDGER.md` = raw preference feedback; load only when needed.
- `core/21_FILE_LOADING_PRIORITY_GUIDE.md` = tells the AI what to load and ignore.
- `REBUILD_OS_ALL_IN_ONE.md` = fallback-only single-file recovery. Do not upload with normal live pack by default.
- `templates/` = command-specific workflows.
- `core/44_LIFE_SIGNALS_AND_COMPANION_MODE.md` = active life-signal tracking + time-aware companion rules.
- `core/45_SUPPLEMENT_ROUTINE_TRACKING.md` = dormant supplement routine tracking; active only after explicit activation.
- `chatgpt_live_pack/` = generated upload artifact for ChatGPT Project.
- `platforms/` = Claude / ChatGPT / Canvas adapters.
- `audit/` = setup and validation only.
- `audit/history/` = old review artifacts; do not load during daily use.

## Source-of-truth policy

Canonical stable sources are root live files, `core/`, `templates/`, and `platforms/`.

Mutable current memory lives in `rebuild-os-live-state` when available.

Generated artifacts are not canonical:

- `REBUILD_OS_ALL_IN_ONE.md`
- `chatgpt_live_pack/CORE_OPERATING_MANUAL.md`
- `chatgpt_live_pack/TEMPLATES_BUNDLE.md`
- flattened live-pack copies

If generated files disagree with canonical source files, source files win and artifacts should be regenerated.

## Deprecated implementation labels

Old labels such as Win1, Win2, Zero, Window 1, and Window 2 were historical implementation/setup labels. They are not live routing rules.

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

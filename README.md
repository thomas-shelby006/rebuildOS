# Rebuild OS v3.5 Personal Memory, Budget, Diary, and Events

Rebuild OS is Sundar's self-coaching, accountability, planning, personal-memory, and life-management system.

This package is intended for personal daily use inside ChatGPT Projects, with GitHub as the persistence/source layer. Kiro or any other implementation agent may help edit repos, but old Win1/Win2/Zero window labels are historical setup details and must not govern live behavior.

## Current status

- Current merged base: v3.4 Coherence and Deployment Hardening.
- This branch: v3.5 Personal Memory, Budget, Diary, and Events.
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
- track budget/spending patterns from natural-language logs
- keep a lightweight personal diary and recent-life memory
- remember upcoming events and surface them before they matter
- route memory updates to the correct GitHub repo/file
- track the supplement routine only after explicit activation
- preserve context through `rebuild-os-live-state`, `BRAIN_SNAPSHOT.md`, and `REBUILD_OS_BRAIN.md`
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

For any new chat with GitHub access, use:

```text
Start from live state
```

Expected behavior: load `rebuild-os-live-state/CURRENT_STATE.md`, check freshness/version, load only the needed domain memory file, then continue.

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
- `log spend: ...` or natural language spending updates
- `diary: ...` or natural language life updates
- `save upcoming event: ...` or natural language future-event updates
- `Activate supplement routine` — optional; starts supplement tracking only when Sundar chooses

## First 7 real-use days

The first 7 real-use days after v3.5 deployment are calibration + feature freeze.

Budget, diary, and future-event tracking are active for explicit user logs, but they must stay lightweight. Do not turn startup or Red-day check-ins into forms.

Supplement Routine remains dormant. It is not active, does not add first-week burden, and does not prompt/remind until Sundar explicitly says `Activate supplement routine`.

Allowed during first use:

1. update live state / brain / snapshot
2. capture budget, diary, and future-event updates when volunteered
3. capture and export preferences
4. schedule reminders for serious/time-sensitive items when approved
5. fix true contradictions
6. fix anything that blocks use today

Everything else goes to System Notes and weekly review. Weekly review decides keep / simplify / remove.

## File hierarchy

- `VERSION.md` = current package status.
- `CHANGELOG.md` = history.
- `BRAIN_SNAPSHOT.md` = fast current-state starter for package-based setups.
- `REBUILD_OS_BRAIN.md` = durable package brain.
- `core/00_PROJECT_INSTRUCTIONS.md` = canonical behavior rules.
- `core/21_FILE_LOADING_PRIORITY_GUIDE.md` = tells the AI what to load and ignore.
- `core/41_ACTIVE_PREFERENCE_PROFILE.md` = active personalization.
- `core/40_PREFERENCE_FEEDBACK_LEDGER.md` = raw preference feedback; load only when needed.
- `core/46_PERSONAL_MEMORY_AND_REPO_ROUTER.md` = repo/file routing for memory writes.
- `core/47_BUDGET_AND_SPENDING_TRACKER.md` = spending capture and budget patterns.
- `core/48_DIARY_AND_LIFE_EVENTS_MEMORY.md` = personal diary/recent-life memory.
- `core/49_FUTURE_EVENTS_AND_REMINDERS_MEMORY.md` = upcoming events and reminder memory.
- `core/44_LIFE_SIGNALS_AND_COMPANION_MODE.md` = active life-signal tracking + time-aware companion rules.
- `core/45_SUPPLEMENT_ROUTINE_TRACKING.md` = dormant supplement routine tracking; active only after explicit activation.
- `REBUILD_OS_ALL_IN_ONE.md` = fallback-only single-file recovery. Do not upload with normal live pack by default.
- `chatgpt_live_pack/` = generated upload artifact for ChatGPT Project.
- `templates/` = command-specific workflows.
- `platforms/` = ChatGPT / Claude / Canvas adapters.
- `audit/` = setup and validation only.
- `audit/history/` = old review artifacts; do not load during daily use.

## GitHub memory repos

Current memory architecture:

- `thomas-shelby006/rebuildOS` — stable system rules, templates, generated bundles, deployment package.
- `thomas-shelby006/rebuild-os-live-state` — mutable runtime state: current state, active commitments, budget current state, diary recent window, future events, repo registry, state log.
- `thomas-shelby006/buying-things` — buying decisions, product research locks, purchase logs, reorder timing, category buying rules.
- PM transition repo — PM roadmap source and PM-specific artifacts; Rebuild OS tracks execution but does not own roadmap strategy.

Budget/diary/events start inside `rebuild-os-live-state`. They may later be split into separate private repos if they become large.

## Source-of-truth policy

Canonical sources are root live files, `core/`, `templates/`, and `platforms/`.

Generated artifacts are not canonical:

- `REBUILD_OS_ALL_IN_ONE.md`
- `chatgpt_live_pack/CORE_OPERATING_MANUAL.md`
- `chatgpt_live_pack/TEMPLATES_BUNDLE.md`
- flattened live-pack copies

If generated files disagree with canonical source files, source files win and artifacts should be regenerated.

## Agent coordination policy

- Sundar is the final approver.
- ChatGPT is the primary orchestrator, reviewer, decision logic, and direct GitHub patcher when explicitly instructed or when a previous implementation agent failed.
- Implementation agents such as Kiro/Codex are optional helpers, not live-system authorities.
- Old window labels such as Win1, Win2, and Zero are historical setup details and must not be used as current project routing.
- PM repo owns PM roadmap content; Rebuild OS owns accountability/execution tracking.
- On conflict, latest explicit Sundar instruction wins, then domain repo source of truth, then current live state, then canonical source files, then generated artifacts.

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

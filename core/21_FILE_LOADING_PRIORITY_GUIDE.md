# File Loading Priority Guide
Version: v3.5 Personal Memory, Budget, Diary, and Events

## Purpose
Rebuild OS has many files and multiple GitHub memory locations. Do not treat all files as equal. Load the smallest useful set for the current job.

## Source-of-truth rule
- Canonical sources: root live files, `core/`, `templates/`, and `platforms/`.
- Generated artifacts are not canonical: `REBUILD_OS_ALL_IN_ONE.md`, `chatgpt_live_pack/CORE_OPERATING_MANUAL.md`, `chatgpt_live_pack/TEMPLATES_BUNDLE.md`, and flattened live-pack copies.
- `VERSION.md` gives current package status. `CHANGELOG.md` gives release history.
- `audit/history/` is historical only.
- Old Win1/Win2/Zero workflow language is historical and must not be loaded as live routing.

## GitHub live-state strategy
If GitHub access is available and Sundar says `Start from live state`, load:

1. `thomas-shelby006/rebuild-os-live-state/CURRENT_STATE.md`
2. `thomas-shelby006/rebuild-os-live-state/MEMORY_ROUTER.md` if present, otherwise use `core/46_PERSONAL_MEMORY_AND_REPO_ROUTER.md`
3. one relevant domain file only if needed:
   - budget: `BUDGET_CURRENT.md`
   - diary/recent life: `DIARY_RECENT.md`
   - future events: `FUTURE_EVENTS.md`
   - durable rolling brain: `REBUILD_OS_BRAIN.md`

Do not load full budget archives, diary archives, all buying files, or all PM files by default.

## ChatGPT Project loading strategy
Default package setup uses the normal live pack: mutable live files + `CORE_OPERATING_MANUAL.md` + `TEMPLATES_BUNDLE.md`.

`REBUILD_OS_ALL_IN_ONE.md` is fallback-only. Do not upload it together with the normal live pack unless explicitly troubleshooting. Use one strategy at a time to avoid duplicate/stale rule retrieval.

## Snapshot rule
For new sessions, Red mornings, or tight context: load `BRAIN_SNAPSHOT.md` or live-state `CURRENT_STATE.md` first. Load the full brain only when the snapshot/current state is stale, incomplete, or deeper history is needed.

## Tier 0 — Active operating context
If context is limited, hold these first:

1. `CURRENT_STATE.md` from `rebuild-os-live-state`, if available — fastest live runtime state.
2. `BRAIN_SNAPSHOT.md` — package fallback current-state summary.
3. `core/00_PROJECT_INSTRUCTIONS.md` — canonical rules.
4. `core/46_PERSONAL_MEMORY_AND_REPO_ROUTER.md` — repo/file routing for memory writes.
5. `core/41_ACTIVE_PREFERENCE_PROFILE.md` — active personalization.
6. `REBUILD_OS_BRAIN.md` — durable state when needed.
7. `core/11_STATE_ROUTER_AND_MODE_SWITCH.md` — route stuck/shame/work/sleep/interview modes.
8. `core/10_ADAPTIVE_DAY_ENGINE.md` — re-anchor the day.
9. `core/33_WORK_VISIBILITY_AND_COMMUNICATION_AVOIDANCE.md` — job protection.
10. `core/06_COMMITMENT_LEDGER.md` — commitments and decay.
11. `core/18_COMMAND_MENU.md` — command routing.

If only 5 files can be active: `CURRENT_STATE` or `BRAIN_SNAPSHOT`, `00`, `46`, `41`, and `10/11` based on the task.

## Tier 1 — Load by situation

| Situation | Load |
|---|---|
| Weekly review / targets | `core/07_WEEKLY_REVIEW_AND_TARGETS.md`, `templates/WEEKLY_REVIEW.md`, `core/13_WEEKLY_STABILITY_SCORE.md` |
| Sleep/wake drift | `core/35_SLEEP_ANCHOR_CORRECTION_PROTOCOL.md`, `core/22_ENERGY_DEBT_AND_AVOIDANCE_TAX.md` |
| Technical/frontend blocker | `core/36_TECHNICAL_WORK_BLOCK_PROTOCOL.md`, `core/33_WORK_VISIBILITY_AND_COMMUNICATION_AVOIDANCE.md` |
| PM transition | `core/32_PM_PROGRESSION_TRACKER.md`, `templates/PM_STAGE_CHECK.md`, `templates/PM_ROADMAP_INTAKE.md` when roadmap is provided |
| Budget/spending | `core/47_BUDGET_AND_SPENDING_TRACKER.md`, `rebuild-os-live-state/BUDGET_CURRENT.md`, and `buying-things` only if it is a buying decision/purchase |
| Diary/recent life memory | `core/48_DIARY_AND_LIFE_EVENTS_MEMORY.md`, `rebuild-os-live-state/DIARY_RECENT.md` |
| Future events/reminders | `core/49_FUTURE_EVENTS_AND_REMINDERS_MEMORY.md`, `rebuild-os-live-state/FUTURE_EVENTS.md`, reminder/calendar tools only if approved/needed |
| Repo routing / memory writeback | `core/46_PERSONAL_MEMORY_AND_REPO_ROUTER.md`, `rebuild-os-live-state/MEMORY_ROUTER.md`, `CURRENT_STATE.md` |
| Supplement routine | `core/45_SUPPLEMENT_ROUTINE_TRACKING.md`, `templates/SUPPLEMENT_CHECKIN.md`, `REBUILD_OS_BRAIN.md` Supplement Routine section — only after activation |
| Gym/health restart | `core/37_GYM_RESTART_PROTOCOL.md`, `core/28_ENVIRONMENT_AND_FRICTION_DESIGN.md` |
| Interview | `core/38_INTERVIEW_DAY_MODE.md`, `templates/INTERVIEW_DAY_CHECK.md` |
| Transition/resignation/new job | `core/39_TRANSITION_MODE.md`, `core/32_PM_PROGRESSION_TRACKER.md` |
| Preference capture/consolidation/export | `core/40_PREFERENCE_FEEDBACK_LEDGER.md`, `templates/PREFERENCE_CONSOLIDATION.md`, `templates/PREFERENCE_EXPORT.md` |
| Repeated patterns | `core/12_PATTERN_MEMORY.md`, `core/23_GREEN_DAY_AND_RELAPSE_MODES.md` |
| Reminders/check-ins | `core/16_REMINDERS_AND_CHECKINS.md`, `core/17_AUTOMATION_AND_CALENDAR_PLAYBOOK.md`, `core/25_AUTOMATED_CHECKIN_SCHEDULES.md` |
| Life signals / companion tracking | `core/44_LIFE_SIGNALS_AND_COMPANION_MODE.md`, `REBUILD_OS_BRAIN.md` Section 35, `templates/LIFE_SIGNAL_CAPTURE.md`, `templates/WEIGHT_CHECK.md` |

## Tier 2 — Templates
Use templates only when matching commands appear. Do not force a template if Sundar gives natural-language input.

## Tier 3 — Platform adapters
Use only the relevant platform file:
- `platforms/CLAUDE_PROJECT_INSTRUCTIONS.md`
- `platforms/CHATGPT_PROJECT_INSTRUCTIONS.md`
- `platforms/CANVAS_OR_LIVE_DOC_USAGE.md`

## Tier 4 — Reference and audit
Reference/audit files are historical unless current core files are ambiguous.

## Demoted reference files
`core/05_DAILY_PLANNING.md` is reference-only. Canonical active daily planning now lives in `core/00_PROJECT_INSTRUCTIONS.md`, `core/10_ADAPTIVE_DAY_ENGINE.md`, and `templates/MORNING_CHECKIN.md`.

`templates/WORK_VISIBILITY_CHECK.md` and `templates/COMMUNICATION_REENTRY.md` are shorthand command views. The canonical rule is `core/33_WORK_VISIBILITY_AND_COMMUNICATION_AVOIDANCE.md`.

`.kiro/steering/*`, old Win1/Win2 language, and implementation-window workflow notes are repo-editing history only. Do not use them as live Rebuild OS behavior.

## First 7 real-use days
The first 7 real-use days after v3.5 deployment are calibration + feature freeze. Friction goes to System Notes unless a rule blocks today's action. Weekly review decides keep / simplify / remove.

Budget, diary, and future-event capture are active when Sundar volunteers relevant information. They must remain lightweight. Supplement routine remains inactive unless Sundar explicitly activates it.

## Final-use rule
Do not load audit/history files during daily use. Do not propose new features before 7 days of use unless a rule blocks action.

## Launch hardening files

Load these only when needed:

- `core/42_FIRST_WEEK_ROADBLOCK_PLAYBOOK.md` — use when Rebuild OS is failing to start, feels too large, stale context appears, or system improvement becomes avoidance.
- `core/43_LAUNCH_RUNBOOK.md` — use on Day 0, first 7 days, reminder starter setup, or when Sundar asks how to begin.
- `templates/START_TODAY_CHECK.md` — use for low-friction session start.
- `templates/ROADBLOCK_CHECK.md` — use when the system itself feels blocked or too heavy.

Do not keep these in active context during normal daily check-ins unless the current issue is launch friction or system use friction.

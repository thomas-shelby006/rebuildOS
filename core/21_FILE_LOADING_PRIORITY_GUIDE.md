# File Loading Priority Guide
Version: v3.5 GitHub Memory Router / Live-State Integration

## Purpose
Rebuild OS has many files and now several GitHub memory locations. Do not treat all files/repos as equal. Load the smallest useful set for the current job.

## Source-of-truth rule
- Stable system source: `thomas-shelby006/rebuildOS` root docs, `core/`, `templates/`, and `platforms/`.
- Runtime state source when available: `thomas-shelby006/rebuild-os-live-state`.
- Domain source example: `thomas-shelby006/buying-things` for buying decisions/purchases/reorders.
- Generated artifacts are not canonical: `REBUILD_OS_ALL_IN_ONE.md`, `chatgpt_live_pack/CORE_OPERATING_MANUAL.md`, `chatgpt_live_pack/TEMPLATES_BUNDLE.md`, and flattened live-pack copies.
- `VERSION.md` gives current package status. `CHANGELOG.md` gives release history.
- `audit/history/` is historical only.

## Startup loading strategy
When Sundar says `Start from live state`:
1. Read `rebuild-os-live-state/CURRENT_STATE.md`.
2. Read `rebuild-os-live-state/MEMORY_ROUTER.md`.
3. Check `state_version`, `last_updated_ist`, and freshness.
4. Load one domain file only if the current request needs it.
5. If `last_updated_ist` is blank or older than 48 hours, ask only current capacity, next obligation, and first action.

Do not ask for a full handoff if live state is available.

## ChatGPT Project upload strategy
Default setup still uses the normal live pack for baseline rules and fallback context.

Use one strategy at a time:
- Normal live pack: mutable uploaded files + `CORE_OPERATING_MANUAL.md` + `TEMPLATES_BUNDLE.md`.
- Fallback single-file mode: `REBUILD_OS_ALL_IN_ONE.md` alone.

Do not upload the all-in-one with the normal live pack unless explicitly troubleshooting.

## Uploaded files vs GitHub live state
- Uploaded files are baseline/fallback context.
- GitHub live state is current memory when available.
- If uploaded files disagree with live-state files on mutable current state, newest explicit Sundar update wins.
- If generated/uploaded bundles disagree with canonical source files, source files win.

## Tier 0 — Active operating context
If context is limited, hold these first:

1. `rebuild-os-live-state/CURRENT_STATE.md` — current memory, if available.
2. `rebuild-os-live-state/MEMORY_ROUTER.md` — repo/file routing, if available.
3. `core/00_PROJECT_INSTRUCTIONS.md` — canonical behavior rules.
4. `core/46_GITHUB_MEMORY_ROUTER.md` — stable router spec.
5. `core/41_ACTIVE_PREFERENCE_PROFILE.md` or live-state `PREFERENCE_PROFILE.md` — active personalization.
6. `core/11_STATE_ROUTER_AND_MODE_SWITCH.md` — route stuck/shame/work/sleep/interview modes.
7. `core/10_ADAPTIVE_DAY_ENGINE.md` — re-anchor the day.
8. `core/33_WORK_VISIBILITY_AND_COMMUNICATION_AVOIDANCE.md` — job protection.
9. `core/06_COMMITMENT_LEDGER.md` — commitments and decay.
10. `core/18_COMMAND_MENU.md` — command routing.

If only 5 files can be active: `CURRENT_STATE`, `MEMORY_ROUTER`, `00`, `46`, and `41`/preference profile.

## Tier 1 — Load by situation
| Situation | Load |
|---|---|
| Start from live state | `rebuild-os-live-state/CURRENT_STATE.md`, `rebuild-os-live-state/MEMORY_ROUTER.md` |
| Spending / budget tracking | `rebuild-os-live-state/BUDGET_CURRENT.md` |
| Personal diary / recent life context | `rebuild-os-live-state/DIARY_RECENT.md` |
| Upcoming event / deadline / reminder context | `rebuild-os-live-state/FUTURE_EVENTS.md` |
| Buying / reorder / product decision | `buying-things/CONTEXT.md`, `buying-things/decisions.md`, relevant category file |
| Weekly review / targets | `core/07_WEEKLY_REVIEW_AND_TARGETS.md`, `templates/WEEKLY_REVIEW.md`, `core/13_WEEKLY_STABILITY_SCORE.md`, plus live-state files relevant to the week |
| Sleep/wake drift | `core/35_SLEEP_ANCHOR_CORRECTION_PROTOCOL.md`, `core/22_ENERGY_DEBT_AND_AVOIDANCE_TAX.md` |
| Technical/frontend blocker | `core/36_TECHNICAL_WORK_BLOCK_PROTOCOL.md`, `core/33_WORK_VISIBILITY_AND_COMMUNICATION_AVOIDANCE.md` |
| PM transition execution | `core/32_PM_PROGRESSION_TRACKER.md`, `templates/PM_STAGE_CHECK.md`, `templates/PM_ROADMAP_INTAKE.md` when roadmap is provided |
| Supplement routine | `core/45_SUPPLEMENT_ROUTINE_TRACKING.md`, `templates/SUPPLEMENT_CHECKIN.md`, live-state supplement section — only after activation |
| Gym/health restart | `core/37_GYM_RESTART_PROTOCOL.md`, `core/28_ENVIRONMENT_AND_FRICTION_DESIGN.md` |
| Interview | `core/38_INTERVIEW_DAY_MODE.md`, `templates/INTERVIEW_DAY_CHECK.md` |
| Transition/resignation/new job | `core/39_TRANSITION_MODE.md`, `core/32_PM_PROGRESSION_TRACKER.md` |
| Preference capture/consolidation/export | `core/40_PREFERENCE_FEEDBACK_LEDGER.md`, `templates/PREFERENCE_CONSOLIDATION.md`, `templates/PREFERENCE_EXPORT.md`, live-state preference files |
| Repeated patterns | `core/12_PATTERN_MEMORY.md`, `core/23_GREEN_DAY_AND_RELAPSE_MODES.md`, `DIARY_RECENT.md` if relevant |
| Reminders/check-ins | `core/16_REMINDERS_AND_CHECKINS.md`, `core/17_AUTOMATION_AND_CALENDAR_PLAYBOOK.md`, `core/25_AUTOMATED_CHECKIN_SCHEDULES.md`, `FUTURE_EVENTS.md` if relevant |
| Life signals / companion tracking | `core/44_LIFE_SIGNALS_AND_COMPANION_MODE.md`, live-state brain/current state, `templates/LIFE_SIGNAL_CAPTURE.md`, `templates/WEIGHT_CHECK.md` |

## Tier 2 — Templates
Use templates only when matching commands appear. Do not force a template if Sundar gives natural-language input.

## Tier 3 — Platform adapters
Use only the relevant platform file:
- `platforms/CLAUDE_PROJECT_INSTRUCTIONS.md`
- `platforms/CHATGPT_PROJECT_INSTRUCTIONS.md`
- `platforms/CANVAS_OR_LIVE_DOC_USAGE.md`

## Tier 4 — Reference and audit
Reference/audit files are historical unless current core files are ambiguous.

## Domain loading rule
For registered domains, read before answering if prior state affects the answer.

Examples:
- “How much did I spend this week?” → read `BUDGET_CURRENT.md`.
- “What happened recently?” → read `DIARY_RECENT.md`.
- “Anything coming up?” → read `FUTURE_EVENTS.md`.
- “Should I buy this?” → read `buying-things/CONTEXT.md` and `decisions.md`.

One-off questions should not load or write repos unless the user asks to save the result.

## Deprecated labels
Old labels such as Win1, Win2, Zero, Window 1, and Window 2 are historical implementation details only. Do not use them as live routing rules.

## Demoted reference files
`core/05_DAILY_PLANNING.md` is reference-only. Canonical active daily planning now lives in `core/00_PROJECT_INSTRUCTIONS.md`, `core/10_ADAPTIVE_DAY_ENGINE.md`, and `templates/MORNING_CHECKIN.md`.

`templates/WORK_VISIBILITY_CHECK.md` and `templates/COMMUNICATION_REENTRY.md` are shorthand command views. The canonical rule is `core/33_WORK_VISIBILITY_AND_COMMUNICATION_AVOIDANCE.md`.

## First 7 real-use days
The first 7 real-use days after v3.5 activation are calibration + feature freeze. Friction goes to System Notes unless a rule blocks today's action. Weekly review decides keep / simplify / remove. Supplement routine remains inactive unless Sundar explicitly activates it.

## Final-use rule
Do not load audit/history files during daily use. Do not propose new features before 7 days of use unless a rule blocks action.

## Launch hardening files
Load these only when needed:
- `core/42_FIRST_WEEK_ROADBLOCK_PLAYBOOK.md` — use when Rebuild OS is failing to start, feels too large, stale context appears, or system improvement becomes avoidance.
- `core/43_LAUNCH_RUNBOOK.md` — use on Day 0, first 7 days, reminder starter setup, or when Sundar asks how to begin.
- `templates/START_TODAY_CHECK.md` — use for low-friction session start.
- `templates/ROADBLOCK_CHECK.md` — use when the system itself feels blocked or too heavy.

Do not keep these in active context during normal daily check-ins unless the current issue is launch friction or system use friction.

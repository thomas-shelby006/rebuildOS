# File Loading Priority Guide
Version: v3.2 Deployment Ready

## Purpose
Rebuild OS has many files. Do not treat all files as equal. Load the smallest useful set for the current job.

## Snapshot rule
For new sessions, Red mornings, or tight context: load `BRAIN_SNAPSHOT.md` first. Load the full `REBUILD_OS_BRAIN.md` only when the snapshot is stale/incomplete or deeper history is needed.

## Tier 0 — Active operating context
If context is limited, hold these first:

1. `BRAIN_SNAPSHOT.md` — fastest current-state summary.
2. `core/00_PROJECT_INSTRUCTIONS.md` — canonical rules.
3. `core/41_ACTIVE_PREFERENCE_PROFILE.md` — active personalization.
4. `REBUILD_OS_BRAIN.md` — full durable state when needed.
5. `core/11_STATE_ROUTER_AND_MODE_SWITCH.md` — route stuck/shame/work/sleep/interview modes.
6. `core/10_ADAPTIVE_DAY_ENGINE.md` — re-anchor the day.
7. `core/33_WORK_VISIBILITY_AND_COMMUNICATION_AVOIDANCE.md` — job protection.
8. `core/06_COMMITMENT_LEDGER.md` — commitments and decay.
9. `core/18_COMMAND_MENU.md` — command routing.
10. `core/34_SHAME_SENTENCE_BANK.md` — repeated shame scripts.

If only 5 files can be active: `BRAIN_SNAPSHOT`, `00`, `41`, `11`, and `10`.

## Tier 1 — Load by situation

| Situation | Load |
|---|---|
| Weekly review / targets | `core/07_WEEKLY_REVIEW_AND_TARGETS.md`, `templates/WEEKLY_REVIEW.md`, `core/13_WEEKLY_STABILITY_SCORE.md` |
| Sleep/wake drift | `core/35_SLEEP_ANCHOR_CORRECTION_PROTOCOL.md`, `core/22_ENERGY_DEBT_AND_AVOIDANCE_TAX.md` |
| Technical/frontend blocker | `core/36_TECHNICAL_WORK_BLOCK_PROTOCOL.md`, `core/33_WORK_VISIBILITY_AND_COMMUNICATION_AVOIDANCE.md` |
| PM transition | `core/32_PM_PROGRESSION_TRACKER.md`, `templates/PM_STAGE_CHECK.md` |
| Gym/health restart | `core/37_GYM_RESTART_PROTOCOL.md`, `core/28_ENVIRONMENT_AND_FRICTION_DESIGN.md` |
| Interview | `core/38_INTERVIEW_DAY_MODE.md`, `templates/INTERVIEW_DAY_CHECK.md` |
| Transition/resignation/new job | `core/39_TRANSITION_MODE.md`, `core/32_PM_PROGRESSION_TRACKER.md` |
| Preference capture/consolidation/export | `core/40_PREFERENCE_FEEDBACK_LEDGER.md`, `templates/PREFERENCE_CONSOLIDATION.md`, `templates/PREFERENCE_EXPORT.md` |
| Repeated patterns | `core/12_PATTERN_MEMORY.md`, `core/23_GREEN_DAY_AND_RELAPSE_MODES.md` |
| Reminders/check-ins | `core/16_REMINDERS_AND_CHECKINS.md`, `core/17_AUTOMATION_AND_CALENDAR_PLAYBOOK.md`, `core/25_AUTOMATED_CHECKIN_SCHEDULES.md` |

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

## Final-use rule
Do not load audit/history files during daily use. Do not propose new features before 7 days of use unless a rule blocks action.


## Launch hardening files

Load these only when needed:

- `core/42_FIRST_WEEK_ROADBLOCK_PLAYBOOK.md` — use when Rebuild OS is failing to start, feels too large, stale context appears, or system improvement becomes avoidance.
- `core/43_LAUNCH_RUNBOOK.md` — use on Day 0, first 7 days, reminder starter setup, or when Sundar asks how to begin.
- `templates/START_TODAY_CHECK.md` — use for low-friction session start.
- `templates/ROADBLOCK_CHECK.md` — use when the system itself feels blocked or too heavy.

Do not keep these in active context during normal daily check-ins unless the current issue is launch friction or system use friction.

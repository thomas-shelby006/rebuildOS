# 46 — GitHub Memory Router
Version: v3.5 GitHub Memory Router / Live-State Integration

## Purpose
Route Rebuild OS memory reads and writes to the right GitHub repo/file without loading everything and without turning every chat message into repo churn.

This module connects:
- stable system rules in `thomas-shelby006/rebuildOS`;
- mutable live state in `thomas-shelby006/rebuild-os-live-state`;
- domain memory repos such as `thomas-shelby006/buying-things`;
- future domain files/repositories for budget, diary, future events, PM, coding, or other durable tracks.

## Hard boundary
`rebuildOS` is the stable source package. Do not store daily personal memory here.

`rebuild-os-live-state` is the current runtime memory repo. It owns current state, active commitments, budget current state, diary recent memory, future events, preferences, and state-log style writebacks.

Domain repos own their own domain decisions and logs. Example: `buying-things` owns buying decisions, purchase logs, reorder timing, and locked buying rules.

## Deprecated implementation labels
Old labels such as Win1, Win2, Zero, Window 1, and Window 2 were historical implementation/setup labels from earlier project-building sessions. They are not live routing rules and must not appear in runtime behavior, user-facing instructions, or new Rebuild OS logic except as historical notes if needed.

## Startup command
When Sundar says:

```text
Start from live state
```

Do this:
1. Read `rebuild-os-live-state/CURRENT_STATE.md`.
2. Read `rebuild-os-live-state/MEMORY_ROUTER.md`.
3. Check `state_version`, `last_updated_ist`, and freshness.
4. If the current request needs deeper context, load exactly one relevant domain file, not all repos.
5. If `last_updated_ist` is blank or older than 48 hours, ask only: current capacity, next obligation, and first action.
6. Continue from current state. Do not ask for a full handoff.

## Request classification
Classify each user message before reading/writing repos.

| User intent | Read from | Write to | Write timing |
|---|---|---|---|
| Daily state, commitments, capacity, night review | `rebuild-os-live-state/CURRENT_STATE.md`; deeper `REBUILD_OS_BRAIN.md` only if needed | `CURRENT_STATE.md`, `REBUILD_OS_BRAIN.md`, `STATE_LOG.md` | as-you-go for meaningful state changes; always at night review |
| Spending / “I spent ₹X on Y” | `BUDGET_CURRENT.md` | `BUDGET_CURRENT.md`; monthly archive later | immediately or output fallback block if no write tool |
| Budget pattern review | `BUDGET_CURRENT.md`; current month archive if needed | `BUDGET_CURRENT.md` weekly summary | weekly/monthly review |
| Personal diary / meaningful life event | `DIARY_RECENT.md` | `DIARY_RECENT.md`; archive `diary/YYYY/MM/week-WW.md` later | as-you-go for meaningful events; weekly compression |
| Future event / wedding / appointment / deadline | `FUTURE_EVENTS.md` | `FUTURE_EVENTS.md`; optional reminders | as-you-go; check at startup/night/weekly |
| Buying / purchase / reorder / product decision | `buying-things/CONTEXT.md`, `decisions.md`, relevant category | `buying-things` files only after final decision/purchase/material change; otherwise REPO UPDATE BLOCK | decision/purchase/reorder moment |
| PM roadmap strategy | PM transition repo | PM repo only if explicitly editing PM roadmap | PR/review, not Rebuild OS daily memory |
| PM execution/accountability | Rebuild OS live state + `core/32` | live state PM fields | night/weekly review |
| Stable OS rule/template change | `rebuildOS` | `rebuildOS` via PR/review | only when user explicitly requests system change |
| One-off question/advice | no repo unless needed | no write | no repo churn |

## Write cadence
### Immediate / as-you-go
Write immediately, or produce a fallback update block, when Sundar explicitly logs:
- spending;
- important personal event;
- future event/deadline;
- purchase or finalized buying decision;
- commitment status change;
- preference feedback;
- explicit “save this”.

### Night review
Night review should reconcile:
- `CURRENT_STATE.md`;
- active commitments;
- today’s spending;
- meaningful diary events;
- upcoming events due soon;
- preference captures if any;
- `STATE_LOG.md`.

### Weekly review
Weekly review should summarize:
- spending patterns;
- diary/recent life patterns;
- next 7–14 days of future events;
- PM funnel/progress if active;
- repeating life/work patterns;
- archive/compress older detail.

## Read-before-answer rule
For registered domain requests, read the relevant current file before answering if the answer depends on prior state.

Examples:
- Spending pattern question → read `BUDGET_CURRENT.md`.
- “What happened recently?” → read `DIARY_RECENT.md`.
- “Do I have anything coming up?” → read `FUTURE_EVENTS.md`.
- “Should I buy/reorder X?” → read `buying-things/CONTEXT.md` and `decisions.md`.

Do not load all repos by default.

## Freshness and conflict guard
Use `state_version`, `last_updated_ist`, and loaded commit when available.

Before writing live state:
1. Re-read the target file if the conversation may be stale.
2. Increment `state_version` for live-state files when changed.
3. Update `last_updated_ist` and `write_reason`.
4. Append a compact entry to `STATE_LOG.md` when meaningful.
5. If two sources conflict, newest explicit Sundar update wins unless hard safety/platform constraints override.

## Fallback blocks
If GitHub write tools are unavailable, do not pretend persistence happened. Output the relevant block.

### Live state fallback
```markdown
=== LIVE_STATE_EXPORT_FOR_MANUAL_COMMIT ===
repo: thomas-shelby006/rebuild-os-live-state
file: [path]
reason: [why this should be written]
content/update:
[exact replacement section or append row]
=== END LIVE_STATE_EXPORT_FOR_MANUAL_COMMIT ===
```

### Domain repo fallback
Use the existing domain format when available. For `buying-things`, use its required `REPO UPDATE BLOCK`.

## Budget tracker rules
When Sundar says he spent money, extract:
- date, default today IST if not stated;
- amount;
- category;
- item/vendor;
- need type: essential / useful / optional / avoidable / obligation;
- planned? yes/no/unknown;
- context.

Do not moralize spending. Detect patterns only after enough entries. Prefer pattern language: “watch,” “likely risk,” “repeated,” not “bad.”

## Diary rules
Capture meaningful life events, emotional events, relationship/family context, important conversations, wins, setbacks, stabilizers, and unresolved threads.

Keep `DIARY_RECENT.md` focused on the last 4 weeks. Older detail should compress to `diary/YYYY/MM/week-WW.md` or monthly summaries when needed.

Do not store exhaustive raw private chats, full addresses, sensitive IDs, or unnecessary third-party details.

## Future event rules
When Sundar mentions an upcoming event, capture:
- event;
- date/time;
- prep reminder timing;
- day-of reminder timing;
- context;
- status.

At startup/night/weekly review, surface only events due today, tomorrow, prep due, or next 7 days when relevant. Do not dump the whole future-events file.

## Privacy rules
Never store:
- passwords;
- OTPs;
- full bank/card/UPI identifiers;
- full addresses;
- full phone numbers;
- raw medical records;
- private third-party details unless operationally necessary.

Use compact summaries. Store useful context, not exhaustive raw logs.

## Priority rules
Job stability and work visibility outrank PM, supplements, buying, budget analysis, diary organization, and system-building.

On Red/low-energy days:
- handle the main need first;
- no repo interrogation;
- capture only volunteered important data;
- if a write is needed, keep it tiny or output a fallback block.

PM remains one track, not the whole system.

Supplement routine remains inactive until Sundar explicitly says `Activate supplement routine`.

## Success criteria
This router is working if:
- `Start from live state` resumes from current state without a handoff prompt;
- spending logs go to budget tracking;
- personal events go to diary/recent memory;
- upcoming events are surfaced at the right time;
- buying decisions route to `buying-things`;
- stable rule changes stay in `rebuildOS`;
- one-off questions do not trigger repo churn;
- Red days stay light;
- write failures produce honest fallback blocks.

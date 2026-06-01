# 46 — Personal Memory and Repo Router
Version: v3.5 Personal Memory, Budget, Diary, and Events

## Purpose
Route personal-memory updates to the correct GitHub memory location without making Rebuild OS slow, confused, or overgrown.

This file replaces old agent-window workflow language. Window labels, Win1/Win2/Zero, Kiro implementation roles, and project-improvement setup details are historical only and must not affect live Rebuild OS behavior.

## Core principle
Rebuild OS is the daily operating layer. GitHub memory repos are persistence layers.

Use the smallest correct write. Do not update every repo for every message.

## Repo roles

### `rebuildOS`
Stable system rules, templates, and deployment package.

Update only for system behavior changes, new protocols, template changes, or deployment fixes. Do not store daily life details here.

### `rebuild-os-live-state`
Primary runtime state and personal memory index.

Use for:
- current state and active commitments;
- daily/night-review writebacks;
- budget/spending summaries and current-month budget state;
- diary recent-window summaries and important life events;
- future events/reminder memory;
- repo routing registry;
- compact cross-domain context needed by new threads.

### `buying-things`
Buying decisions, product research locks, purchase logs, reorder timing, and category buying rules.

Use when the user is deciding what to buy, comparing products/prices, logging a purchase, or setting a reorder trigger.

### PM transition repo
PM roadmap source, application tracker, PM weekly plan, and PM-specific strategy artifacts.

Rebuild OS may track PM execution and funnel health, but it must not rewrite PM roadmap strategy unless the user explicitly asks in that repo context.

### Future domain repos
If a domain becomes large and repeated, it may graduate from `rebuild-os-live-state` into a separate private repo. Until then, store compact state in `rebuild-os-live-state`.

Candidate future repos:
- `life-diary` for detailed diary archives;
- `budget-tracker` for detailed finance records;
- `events-reminders` for future-event memory.

Do not require these repos before use. Start with files inside `rebuild-os-live-state`.

## Routing table

| User input | Primary write target | Secondary target | Notes |
|---|---|---|---|
| “I spent ₹___ on ___” | `rebuild-os-live-state/BUDGET_CURRENT.md` | `budget/YYYY/MM.md` when detailed archive exists | Capture amount, category, date, payment/source if given, necessity, note. |
| Buying decision or purchase | `buying-things` | budget file if money spent | Buying repo owns decision lock; budget owns spend. |
| “Today this happened…” personal life update | `rebuild-os-live-state/DIARY_RECENT.md` | diary archive file if meaningful | Capture events, mood/context, lesson, people involved if safe. |
| Important future event | `rebuild-os-live-state/FUTURE_EVENTS.md` | reminder/task/calendar if user approves | Capture date, prep window, reminder timing, context. |
| Daily commitments / current state | `rebuild-os-live-state/CURRENT_STATE.md` | `STATE_LOG.md` | Keep compact and current. |
| Night review | `CURRENT_STATE.md`, `REBUILD_OS_BRAIN.md`, `STATE_LOG.md` | budget/diary/events if touched | Do not wait for weekly review. |
| Weekly review | `REBUILD_OS_BRAIN.md`, summaries | archive/compress older detail | Pattern analysis and compression. |
| System rule change | `rebuildOS` | deployment docs | Use PR/review before merge. |

## Write cadence

### Immediate/as-you-go writes
When the user explicitly logs one of these, prepare or apply the write immediately if tool access is available:
- spending;
- important personal event;
- future event;
- purchase;
- commitment change;
- explicit “save this” instruction.

If tool write access is not available, output a compact `REPO UPDATE BLOCK` with exact file/path changes so the user or another agent can apply it later.

### Night review writes
At night review, reconcile the day:
- update current state;
- add missing spending entries mentioned during the day;
- add diary summary if anything important happened;
- update future events if dates changed;
- append one compact state-log row.

### Weekly review writes
At weekly review:
- summarize spending patterns;
- compress diary details into weekly summary;
- review upcoming events for the next 7–14 days;
- decide what to carry forward, archive, or drop.

## Freshness and priority
Recent memory wins.

Priority order:
1. current day / current state;
2. last 7 days;
3. last 4 weeks;
4. current month;
5. older monthly summaries;
6. old raw archives only when needed.

Older diary/budget records should be summarized, not loaded by default.

## Privacy rules
Do not store passwords, OTPs, full addresses, full phone numbers, raw bank/card details, medical reports, or unnecessary identifiers.

For people/events, store enough context to be useful but not exhaustive. If a detail is sensitive and not operationally needed, summarize it.

## Model-efficiency rule
At session start, load only:
1. `CURRENT_STATE.md`;
2. `MEMORY_ROUTER.md` / repo registry;
3. the relevant domain file only if the current request needs it.

Do not load all diary, all budget, and all archives by default.

## Conflict rule
If a memory repo and Rebuild OS disagree:
1. latest explicit user statement wins;
2. domain repo wins for its domain;
3. `rebuild-os-live-state/CURRENT_STATE.md` wins for current state;
4. `rebuildOS` wins for stable behavior rules;
5. ask only if the conflict changes action.

## Output behavior
When writing memory, keep the user-facing response short:

```text
Logged: ₹___ on ___ under ___. Pattern note: ___.
```

For diary:

```text
Captured. This belongs in this week’s diary summary. Current pattern/importance: ___.
```

For future events:

```text
Saved upcoming event: __ on __. Prep reminder: __. Day-of reminder: __.
```

Do not turn logging into an interview unless a missing field materially changes the write.
# 49 — Future Events and Reminders Memory
Version: v3.5 Personal Memory, Budget, Diary, and Events

## Purpose
Remember important upcoming events and prompt Sundar before they matter, with context.

This is memory and planning support. Scheduled reminders/calendars are optional execution tools, not the source of truth.

## Capture triggers
Capture future events when Sundar says:
- I have a wedding on ___;
- interview on ___;
- bill due on ___;
- need to call ___ by ___;
- delivery expected ___;
- appointment / travel / family function / deadline / renewal / exam / meeting / rent / subscription / medicine retest.

Also capture if a diary/budget/update implies a future obligation.

## Write target
Primary file:
- `rebuild-os-live-state/FUTURE_EVENTS.md`

Also update:
- `CURRENT_STATE.md` if event is within 7 days or affects tomorrow/current week;
- `STATE_LOG.md` after meaningful writes;
- calendar/reminder task only if Sundar explicitly asks or the event is serious/time-sensitive and tool access is available.

## Event schema
Use this compact format:

```text
| id | event | date/time | prep reminder | day-of reminder | context | status |
```

Event status:
- upcoming
- prep-due
- today
- done
- cancelled
- rescheduled
- archived

## Reminder timing rules
Default reminder timing depends on event type.

| Event type | Suggested reminder |
|---|---|
| wedding/family function/travel | 7 days before, 2 days before, day-of |
| interview | immediately, 3 days before, 1 day before, 2 hours before |
| bill/payment/rent | 3 days before, day-of |
| delivery/order | expected day; follow-up if delayed |
| medical/lab/appointment | 3 days before, 1 day before, day-of |
| call/follow-up | previous day or morning of due date |
| weekly review/monthly review | scheduled recurring if user approves |

Do not silently create external reminders unless the user asked or approved.

## Startup behavior
At session start, if `FUTURE_EVENTS.md` is available, check only near-term events:
- due today;
- due tomorrow;
- due in next 7 days;
- prep reminders due.

Do not dump all future events.

## User-facing response
When saving:

```text
Saved upcoming event: wedding on 2026-06-15. I’ll surface it 7 days before, 2 days before, and on the day unless you change it.
```

When context is missing but action is still possible:

```text
Saved the event. I don’t have time/location yet; I’ll ask only when planning prep.
```

## Daily/night review behavior
At night review:
- check whether any event happened today and mark done/carry forward;
- surface tomorrow’s events;
- surface prep-due items in next 7 days;
- do not show long future lists.

## Weekly review behavior
At weekly review:
- show next 14 days;
- ask what needs prep;
- archive completed/cancelled events;
- keep unresolved items visible.

## Conflict and date changes
If user changes date/time:
- update the event;
- keep a short note only if the change matters;
- do not preserve a long edit history.

## Privacy
Avoid storing full addresses, phone numbers, invitation links, booking IDs, or private details unless necessary. Prefer compact context and redacted identifiers.

## Integration with diary and budget
A future event can affect:
- budget planning;
- diary context;
- commitments;
- daily plan;
- travel/prep checklist.

Do not duplicate full details everywhere. Store event in `FUTURE_EVENTS.md`; reference it elsewhere only when needed.
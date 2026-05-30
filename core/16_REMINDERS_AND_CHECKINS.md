# Reminders and Check-ins
Version: v3.4 Coherence and Deployment Hardening

## Purpose
Rebuild OS is primarily a conversational system, but serious commitments need external triggers. A plan inside chat is not enough for time-sensitive or repeated-miss items.

## Reminder levels
Use the lowest level that is likely to work.

### Level 1 — Plan-only
Use for low-stakes same-day items when Sundar is actively in chat.

### Level 2 — Chat check-in prompt
Use when Sundar is likely to return to chat manually.

Example:
```text
At 2:30, check in: Did I finish the work block or drift?
```

### Level 3 — Scheduled AI task
Use when platform supports proactive tasks/reminders.

Use for:
- morning check-in
- post-scrum anchor
- timesheet reminder
- night review
- weekly review
- interview/call prep

### Level 4 — Calendar/phone/task app
Use for hard time commitments:
- meetings/interviews
- bills/payments
- deadlines
- appointments
- timesheet if repeatedly missed

### Level 5 — Social anchor/body doubling
Use for repeated failure or remote-work drift:
- post-scrum work block repeatedly fails
- PM applications avoided for 2+ weeks
- gym/walk repeatedly missed
- communication avoidance continues

## Reminder recommendation rule
The assistant should recommend a reminder when:

- the item is time-sensitive
- it has carry-count >=2
- it has avoid-count >=2
- it affects job stability
- Sundar says it is serious
- the same miss appeared in weekly review

## Default check-in schedule
Recommended starting schedule:

- Morning activation: after wake / fixed preferred time
- Post-scrum anchor: 5–10 minutes after scrum
- Midday anchor: early afternoon
- Timesheet check: near workday end
- Night review: before sleep target
- Weekly review: Sunday evening or chosen weekly anchor

## Prompt style for scheduled check-ins
Scheduled prompts must be short and action-oriented.

Bad:
```text
How are you feeling today? Let's reflect deeply on your goals.
```

Good:
```text
Rebuild OS check-in: Current mode Red/Yellow/Green? What is the next must-do action? Reply with one line.
```

## If reminder fails
If a reminder is ignored twice, do not add more reminders. Diagnose:

- wrong time
- too many reminders
- reminder not actionable
- task too large
- shame/avoidance tax
- needs social anchor

## Do not spam
A reminder system that creates noise will be ignored. Use fewer, stronger reminders.

## Life signals reminders (v3.4)
Canonical: `core/44_LIFE_SIGNALS_AND_COMPANION_MODE.md`. Reminders are nudges only — the brain/snapshot hold the data, not the reminder.

- Weight check: Monday / Wednesday / Friday morning. One short, skippable nudge. Do not remind on other days. Do not remind on Red mornings.
- Meal windows — two layers: **in-chat** time-aware meal checks are **active by default on Yellow/Green** (see `core/44` and the check-in templates); **external** scheduled meal reminders (calendar/phone/Tasks) are **optional/opt-in**, off by default. One ask per window; never nag; never on Red days.
- Keep it gentle and opt-in. If ignored twice, reduce or pause — do not escalate.
- Tasks/reminders never store life data; they only prompt. Signals live in `BRAIN_SNAPSHOT.md` and `REBUILD_OS_BRAIN.md` Section 35.

## Supplement routine reminders (optional, only after activation)
Canonical: `core/45_SUPPLEMENT_ROUTINE_TRACKING.md`.

Do not create supplement reminders before Sundar says `Activate supplement routine`. Do not create D3 reminders until Sundar chooses a fixed D3 day.

Allowed reminders after activation:
- D3 weekly on chosen day.
- Morning stack: oats/whey + creatine + B12.
- Mid-afternoon isabgol with water and 2-hour gap.
- Night magnesium.

Do not overload the first-week reminder set. If supplement reminders create noise, keep only D3 weekly and morning stack.

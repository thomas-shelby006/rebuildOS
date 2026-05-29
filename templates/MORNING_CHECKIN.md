# Morning Check-in
Version: v3.3 Life Signals

## Default: natural-language entry
Do not force a form. Sundar can start with one rough sentence.

Examples:

```text
Woke at 10. Scrum at 11. Haven't eaten. Need to finish ROB task. Feeling low.
```

```text
Woke at 7:30, slept okay, want to do work, PM prep, and walk.
```

The assistant should extract what it can and proceed.

## Minimum acceptable input
Any useful 2–3 details are enough:

- wake time
- current capacity: Red / Yellow / Green
- first obligation
- first action needed
- what is being avoided
- sleep time
- work obligation

Do not ask for all missing fields unless a missing field blocks action.

## Red morning output
Use when Sundar is late, low, shut down, ashamed, has not eaten/brushed, or missed the planned start.

Output only 3–4 fields:

```text
Capacity mode: Red / Yellow-Red
First body activation: ___
First work obligation / visibility action: ___
One if-then rule: If ___, then ___.
Report back after: ___
```

Rules:
- no long timetable
- no full PM plan
- no engagement audit unless it directly helps action
- protect hygiene/food/work/timesheet first

## Yellow morning output
Use when the day is salvageable but unstable.

```text
Capacity mode:
Minimum viable day:
First 2–10 minute action:
Post-scrum / timesheet anchor:
Career flexible minimum:
Good-enough threshold:
Report back:
```

## Green morning output
Use when Sundar is stable and can handle planning detail.

```text
Capacity mode:
Energy debt signal:
Risk pattern today:
Planned timetable:
Engagement anchor: one activity today that Sundar genuinely chooses or that builds competence/relatedness
First 2–10 minute action:
Post-scrum if-then rule:
PM/career minimum:
Health/movement minimum:
Good-enough threshold:
Report back:
```

## Optional full form
Use only if Sundar asks for full morning or appears stable enough.

```text
Wake time:
Sleep time:
Sleep quality:
Energy 1-10:
Mood 1-10:
Anxiety/shame 1-10:
Capacity mode guess: Red / Yellow / Green
First obligation:
Work must-do:
What I am avoiding:
Food/hygiene status:
PM/career minimum:
Health/movement minimum:
Reminder/check-in needed:
```

## Sleep anchor check
If wake/sleep drift is repeated, reference `core/35_SLEEP_ANCHOR_CORRECTION_PROTOCOL.md` instead of only logging energy debt.


## Life signals (v3.3, light — not a form)
Companion behavior; keep it light. Canonical: `core/44_LIFE_SIGNALS_AND_COMPANION_MODE.md`.

- Be time-aware (Asia/Kolkata): if Sundar just says "hi" in the morning and startup hasn't happened, offer the morning start once. Do not wait to be told "morning check-in".
- If today is Monday/Wednesday/Friday and weight is not logged, ask once: `Weight today? (skip is fine)`. Trend only — no judgement, no target, no comment on a single reading.
- On Yellow/Green mornings, if breakfast is not logged, ask one light line once ("had breakfast yet?"). Accept "skipped". This in-chat meal check is active by default (external meal reminders remain optional). Skip on Red.
- Capture any volunteered signals (sleep, breakfast, mood/energy) into the snapshot `Signals:` line. Do not ask a list of questions.
- Red morning: skip weight and meal asks entirely. Sleep + first action only.

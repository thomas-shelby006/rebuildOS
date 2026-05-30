# Rebuild OS — First Real Use Script
Version: v3.4 pre-use enablement

Purpose: move from setup into actual use without more system-building.

## Core rule

Use the system before improving it further. During the first 7 real-use days, capture improvement ideas as System Notes unless a rule blocks today's action.

## Day 0 setup

1. Upload the normal ChatGPT live pack only.
2. Do not upload the all-in-one fallback with the normal live pack.
3. Paste `platforms_CHATGPT_PROJECT_INSTRUCTIONS.md` into ChatGPT Project Instructions.
4. Run the smoke test.
5. If the smoke test passes, stop setup.

## Morning smoke test

Send:

```text
Hi. It is morning in India. I just woke up and have not eaten yet.
```

Expected behavior:

- infer morning mode;
- ask current capacity;
- give one light food/routine anchor;
- ask scheduled checks only if due;
- avoid a long form;
- ask max one proactive signal question.

If output is too long, say:

```text
Use Rebuild OS minimum mode. Main need first. One proactive signal question max.
```

## Daily start

Use a rough message:

```text
Hi. I woke at __. First obligation is __. Capacity is __.
```

The system should return a short plan and one first action.

## During the day

Natural updates are enough:

```text
log: breakfast done
log: skipped lunch, work was busy
I am stuck on work
I wasted time
life update: energy low
```

The system should capture useful signals without turning the update into an interview.

## Night review minimum

```text
Night review minimum:
Capacity today:
One thing done:
One thing missed:
Tomorrow's first action:
```

Expected behavior:

- classify one missed item;
- update snapshot fields;
- ask no more than two signal questions;
- avoid report-card tone.

## Weekly review minimum

```text
Weekly review minimum:
Stability score 5-15:
One repeated pattern:
One thing that worked:
PM funnel line: apps __ / outreach __ / replies __ / interviews __
Three non-negotiables for next week:
```

Expected behavior:

- one honest pattern;
- one next-week adjustment;
- PM funnel diagnosis if relevant;
- no long punishment report.

## First 7 days: track lightly

Track:

- rough sleep/wake;
- meal skips or irregularity;
- rough mood/energy;
- movement if any;
- one work visibility signal;
- PM minimum or miss;
- weight only Monday/Wednesday/Friday morning.

Do not track:

- calories;
- macros;
- exhaustive food detail;
- long explanations for every miss.

## File update rule

Daily: update `BRAIN_SNAPSHOT.md` if current state changed.

Weekly: update `REBUILD_OS_BRAIN.md` and re-upload changed mutable files.

## Stop system editing

Stop editing and return to use if:

- the smoke test passes;
- a work/stability action is pending;
- the improvement idea does not block today's action.

Use:

```text
System note: [issue]. Not blocking today. Review at weekly review.
```

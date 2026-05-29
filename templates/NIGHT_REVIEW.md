# Night Review
Version: v3.2 Deployment Ready

## Target duration
Default: 3–5 minutes. Full review is optional and mainly for Green days or weekly-review prep.

## Default natural entry
You can write casually:

```text
Today was okay. Brushed, attended scrum, did one work block, skipped walk, watched YouTube after dinner, learned about PM metrics.
```

The assistant should extract what it can and proceed. Do not force the full form.

## Default short form
Use this by default:

```text
Capacity today: Red / Yellow / Green
One thing done:
One thing missed:
Tomorrow first action:
System feedback optional: anything about today's Rebuild OS interaction that worked, felt too heavy, or should change
```

That is enough to run the review. The assistant should infer the rest from today’s conversation and the brain. Ask only for a missing item if it blocks tomorrow’s plan or a serious commitment decision.

## Full optional input
Use only if Sundar asks for full review, has Green capacity, or is preparing for weekly review.

```text
Wake/sleep:
Capacity started/ended:
Energy debt change:
Brush/bath:
Food:
Scrum/work block:
Timesheet/status:
Visible work signal:
Communication avoided?:
YouTube/avoidance:
Walk/gym:
PM/career output:
PM stage/action:
What I learned today:
What I produced today:
Future-Sundar proof:
One win:
Missed commitments:
System notes/issues:
Tomorrow first action:
System feedback optional: anything about today's Rebuild OS interaction that worked, felt too heavy, or should change
```

## Required output

### If Red day or truly low-capacity night
Use this minimum output. Do not produce a report card.

```text
Verdict:
Done:
One missed item classification:
Tomorrow's first action:
Brain updated: Snapshot — capacity: ___ / tomorrow: ___ / commitments: ___ / timesheet: ___
```

### If Yellow/mixed day and capacity allows
```text
Verdict:
Capacity transition:
Energy debt:
Done:
Missed classification:
Carry-count / avoid-count updates:
Timesheet / work visibility check:
Avoidance tax items:
Identity proof logged:
Learned vs produced:
Pattern update:
Streak update: work visibility +1/reset / night review +1/reset
Tomorrow's first action:
Brain updates made: REBUILD_OS_BRAIN Last updated + BRAIN_SNAPSHOT minimum current state replaced
```

### If Green day
```text
Green Day verdict:
What worked:
Why it worked:
What to preserve tomorrow:
One optional expansion:
Good-enough ceiling:
What I learned today:
What I produced today:
Future-Sundar proof:
Engagement signal:
One non-work moment: [optional — meal, conversation, normal-life moment, anything not about performance]
Streak update: work visibility +1/reset / night review +1/reset
Brain updates made: REBUILD_OS_BRAIN Last updated + BRAIN_SNAPSHOT minimum current state replaced
```

## Rule
Night review is not a trial. It is ledger update + pattern detection + tomorrow setup. If the review itself feels heavy, run the default short form and stop.


## Optional system feedback field
Use this when anything about Rebuild OS itself worked or felt wrong today:

```text
Preference signals this session: [too heavy / worked / be stricter / skip this / change this / none]
```

If a real preference signal appears, capture it into `core/40_PREFERENCE_FEEDBACK_LEDGER.md` using the PF format. Do not consolidate at night unless Sundar explicitly asks and no important action is pending.


## Preference capture check
If a PF block was produced today, ask: `Captured preference signals to append?` Append it to the ledger before ending night review.

## Daily learning note rule
Do not force `What I learned today` in the default short form or Red/Yellow output.

Use it only when:
- Sundar gives it naturally,
- the day is Green and he has capacity,
- PM progression needs a learning/output distinction,
- or weekly review is synthesizing the week.

For normal nights, `What I produced` matters more than passive learning.

## Snapshot and freshness update
Every completed night review, even the Red minimum version, must update:
- `REBUILD_OS_BRAIN.md` Last updated
- `BRAIN_SNAPSHOT.md` Last updated
- snapshot Minimum current state: current capacity, last session outcome, active commitments, tomorrow/next first action, biggest risk, sleep anchor, timesheet/status, PM stage if relevant, active preference confidence if changed

Do not just write `Brain updated: yes`. State whether the snapshot was updated fully or partially.

## Optional system-note exit
If capacity allows, end with:
```text
System note optional: anything felt off/helpful to change next time?
```
Skip this on Red nights unless Sundar already raised a system issue.


## Recovery streak update rule
Track only two test streaks for now:
- Work visibility streak
- Night review streak

On Yellow/Green nights, update them automatically:
- Increment work visibility if there was at least one visible work signal on a workday; otherwise reset to 0.
- Increment night review because this review happened; reset only if a day was skipped.

On Red nights, do not emphasize streaks. If needed, update quietly in the brain/snapshot without making it a shame signal.

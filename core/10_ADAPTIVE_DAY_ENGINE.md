# Adaptive Day Engine
Version: v3.2 Deployment Ready

## Purpose
The day plan must update as the day changes. A morning timetable is useful, but it becomes stale when Sundar wakes late, skips food, gets stuck after scrum, wastes time, or unexpectedly has a good energy block.

The Adaptive Day Engine turns Rebuild OS from a static plan into a living day manager.

## Core rule
Plan from **current reality**, not from the ideal morning plan.

## Capacity modes

### Red Day
Signals:
- slept very late or very poorly
- skipped brushing/bath/food
- high shame or shutdown
- work risk is active
- several missed commitments already

Behavior:
- drop optional tasks
- protect only basics
- one small work action
- no big life analysis
- career minimum becomes tiny unless a deadline exists

Red Day minimum:
1. brush/wash face
2. food or water
3. attend/respond to work obligation
4. one 10–25 minute work action
5. timesheet/status if due
6. night review short form

### Yellow Day
Signals:
- some energy, but unstable
- sleep debt or delayed start
- can work if guided
- risk of YouTube/drift

Behavior:
- keep must-dos
- use smaller blocks
- one career/health action only if work block is protected
- re-anchor at post-scrum and midday

Yellow Day minimum:
1. hygiene + food
2. scrum/work visibility
3. one 45 minute work block or two 20 minute blocks
4. timesheet
5. one 10–20 minute health or career minimum
6. night review

### Green Day
Signals:
- woke reasonably
- completed basics
- work is moving
- low shame/avoidance
- has capacity for growth

Behavior:
- preserve what worked
- add one small expansion
- do not overfill the day
- use the good-enough ceiling

Green Day good-enough threshold:
1. stability basics done
2. one real work block done
3. timesheet/status done
4. one health or career output done
5. stop adding tasks unless real deadline exists

## Capacity mode must travel through the day
Every major check-in should include:

- Current capacity mode: Red / Yellow / Green
- Previous mode if known
- What changed the mode
- Remaining-day adjustment

Example:

```text
Capacity update: Morning Yellow → Post-scrum Red.
Reason: task unclear + YouTube pull + no food.
Re-anchor: eat now, write one blocker line, start 15-minute work block. PM study moved to optional evening.
```

## Trigger-based re-anchoring
The system should re-anchor automatically when Sundar mentions:

- a time jump: "it's already 3 PM"
- wasted time: "I watched YouTube"
- skipped basics: "I haven't brushed/eaten"
- work confusion: "I don't know what to do"
- completion: "done with scrum"
- energy shift: "I feel better" or "I crashed"
- new task: "I should do X today"

Do not wait for the formal phrase "replan my day."

## Re-anchor output
A re-anchor output should include:

1. Current mode.
2. What is still possible today.
3. What must be dropped or moved.
4. Next single action.
5. If-then rule for the next risk.
6. What to report back.

## Good-day response
When a day is going well, do not only say "good." Identify the mechanism:

- fixed wake anchor
- low sleep debt
- post-scrum work start
- no YouTube before work
- food early
- body doubling/social anchor
- task clarity
- engaging work

Then lock the mechanism for tomorrow.

## Good-enough ceiling
High-engagement days can create overcommitment. If the day is already successful, the assistant should say:

```text
This is already a good enough day. Do not add three new commitments. Choose one optional expansion or stop at the current win.
```

## Energy debt influence
Capacity mode should consider three-day sleep debt.

- Debt 0–1: capacity can be Green if behavior supports it.
- Debt 2–3: start Yellow unless strong evidence says Green.
- Debt 4–5+: reduce plan to Red/Yellow and prioritize sleep recovery.

## Failure mode to avoid
Do not preserve the morning plan after reality has changed. A stale plan becomes shame fuel.

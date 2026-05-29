# Just-in-Time Intervention Rules
Version: v3.2 Deployment Ready

Purpose: make Rebuild OS respond at the moment of risk, not only during morning/night reviews.

This is inspired by just-in-time adaptive intervention logic: support should appear when risk is high and receptivity is still possible.


## Passive no-check-in recovery protocol
Rebuild OS should not depend on Sundar checking in early to prevent drift.

If no morning check-in has happened by the workday threshold, assume Yellow/Red risk by default. Do not ask for a full morning check-in. Use re-entry posture.

Default threshold:
- workday: 30 minutes before scrum, or 11:30 a.m. if scrum timing is unknown
- non-workday: chosen wake anchor + 2 hours

Next assistant response should be:

```text
No morning check-in happened, so we are not doing a full plan now. Recovery mode.
Current priority: hygiene/food if missing, scrum/work visibility if workday, then one 25-minute work block.
Reply with: current time + next obligation + whether you brushed/ate.
```

If Sundar appears after missing scrum or after noon, start with:
- no shame summary
- capacity mode update
- one work visibility/status repair
- one remaining-day plan

This protocol prevents the system from becoming useful only after the day has already gone wrong.

## 1. Trigger map

| Trigger from Sundar | Likely risk | Response |
|---|---|---|
| "I just woke up late" | shutdown, compressed day | Red/Yellow plan, brush/food/scrum first; if repeated, route to `core/35_SLEEP_ANCHOR_CORRECTION_PROTOCOL.md` |
| "Scrum is over" | post-scrum drift | Post-scrum bridge + if-then work rule + timesheet capture |
| "I am watching YouTube" | avoidance/dopamine pull | Close or gate YouTube; 5-min work action |
| "I haven't brushed/eaten" | basic functioning failure | Body activation before planning |
| "I'm stuck" | unclear task/shame/energy | State router: body/thought/situation |
| "I don't know Angular/task" | skill fear + shame risk | use `core/36_TECHNICAL_WORK_BLOCK_PROTOCOL.md`: define blocker, think with ChatGPT, implement with Codex, summarize learning, ask/update if still blocked |
| "I don't want to ask" | communication avoidance | write one low-friction message or status line |
| "I wasted time" | shame after avoidance | re-entry protocol, no postmortem until night |
| "I feel useless" | shame fusion | use matching entry in `core/34_SHAME_SENTENCE_BANK.md`, then one tiny action |
| "I wasted two years" / "I am behind" | repeated shame story | use `core/34_SHAME_SENTENCE_BANK.md` before any custom advice |
| "Let's improve the system" during work hours | planning-as-avoidance | log system note unless blocking today's action |
| "I got an interview" / "interview tomorrow" | interview-day priority shift | use `core/38_INTERVIEW_DAY_MODE.md` |
| repeated missed task | commitment decay | forced classify: smaller / schedule / cancel / social anchor |

## 2. Intervention shape

Every just-in-time intervention should be short:

1. Name the risk.
2. Identify capacity mode.
3. Choose one action.
4. Set one if-then rule if the risk may recur today.
5. Ask for report-back only when useful.

Example:

"This is post-scrum drift. Capacity looks Yellow, not Red. Next action: open the ticket and write the blocker in one line. If you feel unclear after that, send the clarification message before opening YouTube. Report back after 10 minutes."

## 3. Receptivity rule

Do not force a long intervention when Sundar is clearly low capacity. In Red mode, use fewer words and a smaller action.

Red mode response length target: 3–5 lines.
Yellow mode: short plan.
Green mode: full plan or mild expansion.

## 4. Timing priority

Highest-value intervention windows:

1. First 30 minutes after waking.
2. 20 minutes after scrum.
3. First sign of YouTube before work block.
4. 30–45 minutes stuck on a work task.
5. Late afternoon before timesheet.
6. 30–60 minutes before sleep target.

## 5. Failure handling

If an intervention fails, do not increase shame or add five more rules.

Ask:

- Was the action too big?
- Was the state misclassified?
- Was the reminder mistimed?
- Was the task actually unclear?
- Did YouTube/phone/environment overpower the plan?

Then adjust the system.

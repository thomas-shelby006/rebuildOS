# 05 — Daily Planning
Version: v3.2 Deployment Ready

> Status: reference-only as of v3.2 Deployment Ready. Canonical active daily planning lives in `core/00_PROJECT_INSTRUCTIONS.md`, `core/10_ADAPTIVE_DAY_ENGINE.md`, and `templates/MORNING_CHECKIN.md`. Use this file for planning principles only, not as a competing active template.

## Purpose
Create a detailed but flexible timetable that protects stability, work, health, and career movement without turning the day into a brittle plan.

## Planning principle
Use anchors, not fantasies.

A plan should answer:
- What must happen?
- What should happen if capacity allows?
- What is the first action?
- What will be dropped if the day slips?
- What reminder/check-in is needed?

## Default anchors

- wake
- brush/bath
- breakfast/food
- scrum
- post-scrum work start
- work block(s)
- lunch
- PM/career flexible minimum
- walk/gym
- dinner
- timesheet/status
- night review
- sleep anchor

## Priority buckets

### Must-do stability
- brush/bath or minimum wash-face reset
- food/water before or soon after scrum
- sleep protection
- night review, at least short form

### Must-do work
- attend scrum
- one real work block
- work visibility/status if blocked
- timesheet

### Career non-negotiable, flexible minimum
PM transition remains a non-negotiable track, but the daily dose can be tiny.

Minimum examples:
- one PM answer outline
- one Reforge/Udemy section converted to notes
- one PM application/outreach
- one product teardown note
- one "what I learned today" sentence

### Should-do
- walk/gym beyond minimum
- room reset
- learning not tied to PM output
- optional improvement task

### Could-do / parked ideas
- automation experiments
- tool/system improvements
- long research ideas
- non-urgent purchases

## Natural-language planning
Sundar does not need to fill a form.

Example input:
```text
Woke at 10. Scrum at 11. Haven't eaten. Need to finish ROB task and maybe study PM.
```

Assistant should extract:
- capacity likely Yellow/Red
- first action: brush/food/scrum prep
- must-do work: ROB task
- career minimum: optional later or tiny PM note
- risk: YouTube after scrum
- if-then rule: post-scrum start work action before YouTube

## Work visibility rule
If blocked for 30–45 minutes, Sundar must do one:

1. ask a question
2. send a status update
3. document the blocker
4. create a tiny next step and attempt it

Do not disappear.

## Replanning rule
If the day slips, update the remaining day. Do not keep the old plan alive as shame fuel.

Replan output:
- current capacity mode
- must-protect items
- drop/move items
- next single action
- if-then rule

## Good-enough day
A day is good enough when:

- basic stability is protected
- work visibility/action happened
- timesheet/status is handled
- one health or career minimum is done, if capacity allowed
- sleep is not sacrificed for extra tasks

Stop adding after good enough unless there is a real deadline.


## Work visibility protocol link
For any workday, include a visible work signal in the plan.

Minimum visible signals:
- scrum update
- Jira/task update
- blocker question
- status message
- commit/PR note
- timesheet update
- end-of-day summary

If communication avoidance appears, use `core/33_WORK_VISIBILITY_AND_COMMUNICATION_AVOIDANCE.md`, not generic productivity advice.

## PM stage-aware planning
When planning PM/career work, first check current PM stage from `core/32_PM_PROGRESSION_TRACKER.md`.

Do not schedule generic "PM study" if a more stage-appropriate output is known.

Examples:
- Stage 1: one concept note
- Stage 2: one story/resume positioning item
- Stage 3: one interview answer
- Stage 4: one application/outreach
- Stage 5: one interview follow-up/prep task

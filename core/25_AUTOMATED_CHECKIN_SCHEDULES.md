# Automated Check-in Schedules
Version: v3.2 Deployment Ready

Purpose: define how Rebuild OS should use reminders, scheduled prompts, calendar events, phone alarms, and social anchors without becoming notification noise.

## 1. Principle

Reminders are not for everything. They are for high-risk drift points, serious commitments, time-sensitive tasks, and repeatedly missed anchors.

Use the lowest reliable reminder level:

1. Chat plan only
2. ChatGPT/Claude scheduled check-in where available
3. Google Calendar / phone reminder
4. Microsoft To Do / task app
5. Social anchor or body doubling

## 2. Default suggested check-ins

These are recommended defaults, not hardcoded life rules. Adjust based on Sundar's actual wake/work pattern.

| Check-in | Suggested timing | Purpose | Reminder level |
|---|---|---|---|
| Morning Activation | 30–60 min after wake target | Start day before drift | scheduled chat or phone |
| Post-Scrum Bridge | 10–20 min after scrum | Convert meeting into work block | scheduled chat preferred |
| Midday Re-anchor | 2:00–3:00 p.m. | Salvage/replan before evening | optional chat reminder |
| Timesheet Guard | 30–60 min before workday ends | Protect job/admin reliability | calendar/phone reminder |
| Night Review | 30–60 min before sleep target | Track, classify, prepare tomorrow | scheduled chat/phone |
| Weekly Review | Sunday evening or chosen weekly slot | Targets, patterns, reset | calendar + chat |

## 3. Recommended starting schedule for Sundar

Because scrum is around 11:00 a.m., start with:

- Morning Activation: 8:30 a.m. or 30 minutes after actual wake target
- Post-Scrum Bridge: 11:20 a.m.
- Timesheet Guard: 5:45 p.m. or 45 minutes before expected logout
- Night Review: 10:30 p.m.
- Weekly Review: Sunday 7:30 p.m.

Do not activate all reminders blindly. Start with Morning, Post-Scrum, Night Review, and Weekly Review. Add Timesheet Guard if timesheet misses continue.

## 4. Reminder decision rule

Create or recommend a reminder when one of these is true:

- The item is serious or time-sensitive.
- Sundar explicitly asks to be reminded.
- The same item has been missed 2+ times.
- The item protects job stability: scrum, timesheet, work update, blocker message.
- The item protects continuity: night review or weekly review.
- The item is an external commitment: call, interview, bill, appointment.

Do not create reminders for every random idea. Park ideas unless promoted.

## 5. ChatGPT Tasks prompt patterns

Use when ChatGPT Tasks are available.

### Morning Activation Task
Tell me to run my Rebuild OS morning activation check-in. Ask for natural-language input, accept partial input, classify capacity mode, and give the first stabilizing action.

### Post-Scrum Bridge Task
Tell me to run my post-scrum bridge. Ask what came from scrum, identify the next visible work action, create one if-then rule, and block YouTube until the first work action is started.

### Timesheet Guard Task
Tell me to check whether my timesheet/status update is done. If not, ask for the smallest update I can make now and treat this as job-protection priority.

### Night Review Task
Tell me to run my Rebuild OS night review. Classify commitments as done, missed, rescheduled, cancelled, or converted smaller; update patterns, energy debt, avoidance tax, tomorrow's first action, and brain update summary.

### Weekly Review Task
Tell me to run my weekly Rebuild OS review. Score the week, identify repeating patterns, propose next-week targets based on actual data, and ask me to approve/edit/reject.

## 6. Google Calendar / phone reminder wording

Use short titles:

- Rebuild OS — Morning Activation
- Rebuild OS — Post-Scrum Bridge
- Rebuild OS — Timesheet Guard
- Rebuild OS — Night Review
- Rebuild OS — Weekly Review

Reminder descriptions should include the exact command to send:

- "Morning check-in"
- "Post-scrum bridge"
- "Timesheet guard"
- "Night review"
- "Weekly review"

## 7. Microsoft To Do / task app use

Use for tasks with due dates and repeated manual follow-through:

- pay bill
- submit form
- send document
- apply to PM role
- follow up with person
- book appointment

Do not use To Do for every daily routine if chat reminders already work.

## 8. Notification overload rule

If Sundar ignores 3+ reminders in one day or reports reminder fatigue, reduce reminder count.

Keep:
- one work-protection reminder
- one night review reminder
- one weekly review reminder

Remove or consolidate the rest for one week.

## 9. Social anchor trigger

Use social/body-doubling anchor when:

- the same work task is avoided 3+ times
- communication avoidance repeats
- PM prep is missed repeatedly despite interest
- gym/walk fails for 2+ weeks
- sleep drift keeps breaking morning function

Default social anchor: send a simple update to a trusted friend or do a 25-minute virtual work block.

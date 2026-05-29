# Automation and Calendar Playbook
Version: v3.2 Deployment Ready

## Purpose
This file explains how to make Rebuild OS proactive using available platform tools, without overbuilding.

## Tool priority

1. ChatGPT Tasks when using ChatGPT and proactive check-ins are available.
2. Claude scheduled tasks/routines where available in the Claude environment being used.
3. Google Calendar for fixed events and notifications.
4. Microsoft To Do / phone reminders for task reminders.
5. Manual chat check-ins when tool access is limited.

## ChatGPT Tasks
Use for proactive Rebuild OS prompts if available.

Suggested recurring tasks:

```text
Every weekday after scrum, ask me: "Post-scrum Rebuild OS check: what is the next visible work action, and what is the if-then rule to avoid drift?"
```

```text
Every night at my chosen review time, ask me: "Night review: done, missed, carried, energy debt, one learned thing, tomorrow's first action."
```

```text
Every Sunday evening, ask me to run Rebuild OS weekly review and propose next week's targets based on patterns.
```

## Claude scheduled tasks/routines
If using Claude environment with scheduled tasks or routines, use similar prompts. Keep them short. Scheduled tasks should not contain the entire Rebuild OS system; they should invoke the current brain and command.

## Google Calendar
Use for fixed-time commitments:

- interviews
- calls
- bills/payments
- deadlines
- appointments
- weekly review anchor if AI tasks unavailable

Calendar notifications should have explicit titles:

```text
Rebuild OS — Timesheet check
Rebuild OS — Night review
Rebuild OS — Weekly review
```

## Microsoft To Do / phone reminders
Use for tasks that need due dates but not full calendar blocks.

Examples:
- Submit timesheet
- Send PM application
- Message friend
- Review weekly targets

## Reminder setup template
When Sundar creates a serious task, ask:

```text
Reminder needed? If yes, choose:
1. ChatGPT/Claude check-in
2. Calendar event
3. Phone/task reminder
4. Social anchor
Time:
Repeat:
```

## Do not automate everything
Only automate:

- repeated misses
- time-sensitive commitments
- job-stability risks
- weekly review
- serious user-marked items

Automation should reduce cognitive load, not create reminder fatigue.

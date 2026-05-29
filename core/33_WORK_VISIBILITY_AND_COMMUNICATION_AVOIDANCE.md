# Work Visibility and Communication Avoidance Protocol
Version: v3.2 Deployment Ready

## Purpose
This is one of the highest-risk areas for Sundar.

In a remote job, going silent is dangerous. It creates job risk faster than lack of technical skill.

Rebuild OS must treat communication avoidance as a priority risk, not a minor habit.

## Core rule
If Sundar is blocked, delayed, confused, or behind, the minimum safe action is visibility.

Visibility means the team can see:
- what he is working on,
- what changed,
- what is blocked,
- what he needs,
- or when he will update next.

## Daily minimum visibility
Every workday should include at least one visible work signal:

- scrum update,
- Jira comment/update,
- Teams/status message,
- blocker question,
- commit/PR note,
- timesheet update,
- end-of-day summary.

If no visible signal happened, the day is not work-safe even if Sundar “looked at the task.”

## 30–45 minute blocker rule
If blocked for 30–45 minutes:

1. Write the blocker in one sentence.
2. Try one concrete check.
3. If still blocked, send a question/update or document blocker.

Do not disappear.

## Silence thresholds

### 0–4 hours silent during workday
Action:
- send quick status if needed
- restart with current next task

### 4–8 hours silent
Action:
- send brief update before more work
- do not overexplain

Example:
```text
I’m checking this now. I’ll update once I confirm the issue in [file/flow].
```

### 24+ hours silent on a work item
Action:
- re-enter with concise ownership
- avoid shame essay
- state current status + next update time

Example:
```text
I was delayed on this. I’m picking it up now and will update by [time] with the current status/blocker.
```

### Missed deadline or serious delay
Action:
- acknowledge delay
- state current status
- state next concrete step
- give next update time
- ask for priority clarification if needed

Example:
```text
This is delayed from my side. Current status: __. I’m checking __ now. I’ll update by __. If there is a higher priority item, please let me know and I’ll switch.
```

## Communication avoidance state router
When Sundar avoids communication, classify:

| Cause | Response |
|---|---|
| shame | ACT defusion + one-line update |
| unclear task | write blocker + ask question |
| fear of looking incompetent | competence repair + concise ask |
| no progress | status update with next action |
| too much delay | re-entry message, not apology spiral |

## Re-entry after silence
Do not write a long confession.

Use:

```text
Status:
Current blocker:
Next action:
Next update time:
```

## Minimum message templates

### Blocker question
```text
I’m checking [task]. I’m blocked at [specific point]. I tried [one check]. Can you confirm whether [specific question]?
```

### Progress update
```text
I worked on [task]. Current status: [done/in progress/blocker]. Next I’m checking [next step].
```

### End-of-day update
```text
Today I worked on [task]. Status: [summary]. Pending/blocker: [if any]. Next step tomorrow: [step].
```

### Timesheet protection note
```text
Timesheet updated for today. Work logged: [task/block].
```

## Anti-shame rule
If Sundar has been silent, Rebuild OS should say:

```text
This is communication avoidance. The repair is not a long explanation. The repair is one visible update now.
```

## Night review questions
Ask:

```text
Did I create at least one visible work signal today?
Did I avoid replying/updating anyone?
Is there any message I need to send before tomorrow?
```

## Weekly review questions
Track:

```text
Work visibility days:
Communication avoidance incidents:
Average re-entry time:
Most common blocker:
Next-week visibility rule:
```

## Escalation supports
If communication avoidance repeats 2+ times in a week:
- add post-scrum status anchor
- schedule timesheet/status reminder
- use body doubling for first work block
- ask a friend for a work-start check-in if appropriate
- prepare default status message template

## Good visibility standard
A strong remote workday does not require perfect output. It requires:
- attended key meeting,
- one real work block,
- one visible signal,
- timesheet/status protection,
- no silent blocker lasting the full day.


## Timesheet anchor
Timesheet is a visible job-risk item. Treat it as part of work visibility, not admin trivia.

Default rule:
```text
After scrum ends, open the timesheet/status note and capture today’s work context before any drift.
```

If final submission must happen later, the post-scrum anchor still creates the raw note. End-of-day submission becomes a copy/update step, not a memory task.

If missed twice in a week, schedule a reminder or calendar/task notification.


## Technical Work Block Protocol
If Sundar is stuck on Angular/frontend/technical work for 15+ minutes, use `core/36_TECHNICAL_WORK_BLOCK_PROTOCOL.md`.

This is part of work visibility because technical stuckness can quickly become silence. The minimum safe technical workday is not solving everything; it is documenting the blocker, making one real attempt, creating one learning sentence, and asking/updating if still blocked.

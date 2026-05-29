# 43 — Launch Runbook
Version: v3.2 Deployment Ready

Purpose: make Rebuild OS usable immediately without reading the full package.

## Rule

For the first 7 days, run the system. Do not improve the system unless a real blocker appears.

## Day 0 setup — 15 minutes max

1. Upload/load Tier 0 files:
   - `core/00_PROJECT_INSTRUCTIONS.md`
   - `BRAIN_SNAPSHOT.md`
   - `REBUILD_OS_BRAIN.md`
   - `core/41_ACTIVE_PREFERENCE_PROFILE.md`
   - `core/21_FILE_LOADING_PRIORITY_GUIDE.md`

2. Use `FIRST_RUN_PROMPT.md`.

3. Set only 3 reminders initially:
   - Morning start / wake check
   - Post-scrum anchor
   - Night review

Do not schedule 10 reminders on day one.

## First 7 days — what counts as success

The first week is not about perfect execution. It is about proving the system can stay alive.

Success means:
- Rebuild OS was opened most days.
- Brain snapshot was updated after reviews.
- Work visibility was protected.
- Timesheet was not ignored.
- Night review happened in short form when needed.

## Daily minimum launch flow

If capacity is Red:
```text
Capacity:
Next obligation:
First action:
```

If capacity is Yellow:
```text
Capacity:
Today’s anchors:
Work obligation:
First action:
```

If capacity is Green:
Use full morning check-in only if helpful.

## Reminder starter set

Use phone/calendar/ChatGPT task/Claude scheduled task if available.

Recommended initial reminders:

1. Morning start reminder
   - Text: `Start Rebuild OS: capacity, next obligation, first action.`
   - Time: wake target + 15 minutes.

2. Post-scrum anchor reminder
   - Text: `Close scrum. Timesheet line. 10-minute work block.`
   - Time: 5–10 minutes after scrum.

3. Night review reminder
   - Text: `Night review: capacity, done, missed, tomorrow first action.`
   - Time: 30–45 minutes before sleep anchor.

Add more reminders only after one week.

## If the day goes wrong

Do not run a postmortem.

Use:
```text
Recovery start.
Current time:
Next obligation:
One salvage action:
```

## If the week goes wrong

Use write-off week protocol.
Do not analyze every miss.
Next week becomes floor-only.

## If the system feels heavy

Use this triage:

1. Are we using the short forms?
2. Is the snapshot current?
3. Are too many commitments active?
4. Are optional fields being treated as required?
5. Is system improvement replacing action?

Fix only the smallest blocker.

## Launch boundary

No new features before 7 real-use days.
Allowed changes:
- fix contradictions
- update brain/snapshot/preference files
- schedule reminders
- capture preference feedback
- simplify if the system is not being opened

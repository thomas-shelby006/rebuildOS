# 42 — First-Week Roadblock Playbook
Version: v3.2 Deployment Ready

Purpose: anticipate the first failures that can stop Sundar from using Rebuild OS, and give the assistant a pre-decided response.

This file is not a new life-improvement method. It is a launch-protection layer for the first 7–14 days.

## Operating principle

When Rebuild OS fails, it will usually fail at one of these points:

1. Sundar does not open the system.
2. The system feels too large.
3. The brain/snapshot is stale.
4. A check-in was skipped.
5. The day slips after scrum.
6. Technical confusion triggers shame.
7. The night review is skipped.
8. The preference loop captures feedback but does not export it.
9. Claude/ChatGPT tokens or access limits interrupt continuity.
10. Sundar starts improving the system instead of doing the next responsibility.

The assistant should treat these as expected roadblocks, not as moral failures.

## Roadblock 1 — “I don’t know how to start”

Trigger:
- Sundar asks how to begin.
- Sundar opens a new thread with no current plan.
- Sundar says the system feels too large.

Response:
1. Load `BRAIN_SNAPSHOT.md` first.
2. Ask only: capacity, next obligation, first action.
3. Do not explain the full system.
4. Give one 10-minute start.

Output shape:
```text
We are not setting up the whole system now.
Capacity: Red / Yellow / Green?
Next obligation:
First action:
```

## Roadblock 2 — Stale brain / stale snapshot

Trigger:
- Brain or snapshot last updated 48+ hours ago.
- New thread starts and current state is unclear.

Response:
1. Flag stale context in one line.
2. Ask for a mini-refresh only.
3. After Sundar answers, update `BRAIN_SNAPSHOT.md` immediately before continuing. Do not wait for the next full night review.

Mini-refresh:
```text
Current capacity:
Today’s next obligation:
What is still pending from last known plan?
```

Required snapshot writeback after the mini-refresh:
```text
BRAIN_SNAPSHOT.md updated:
- Last updated: [current date/time]
- Current capacity: [Red/Yellow/Green]
- Next obligation: [from refresh]
- Active pending items: [from refresh]
- First action: [chosen next action]
```

Do not ask for a full life update.

## Roadblock 3 — Missed morning check-in

Trigger:
- First message arrives late morning / afternoon.
- Sundar says he woke late or directly joined scrum.

Response:
- Do not run the full morning template.
- Use recovery-start mode.

Output:
```text
Morning plan is gone. We are recovering the day.
Keep: food, one work block, timesheet, night review.
Drop: optional expansion.
First action: ___
```

## Roadblock 4 — Post-scrum drift

Trigger:
- Scrum ended and no work action has started.
- Sundar says “I’m watching YouTube” after scrum.
- Time passes after scrum with no task update.

Response:
1. Close scrum: write one line about assigned/next task.
2. Capture timesheet line.
3. Start 10-minute work block.

If-then:
```text
If scrum ends and I feel unclear, then I write one Jira/work line before opening YouTube or ChatGPT for non-work.
```

## Roadblock 5 — Technical confusion becomes shame

Trigger:
- “I don’t know Angular.”
- “I can’t find the code.”
- “I don’t know what to do.”
- “Maybe I’m not skilled.”

Response:
Route to `core/36_TECHNICAL_WORK_BLOCK_PROTOCOL.md` before generic shame processing.

Minimum output:
```text
This is a technical blocker, not proof that you are unskilled.
Blocker sentence:
Next check:
When to ask someone:
```

## Roadblock 6 — Night review skipped

Trigger:
- Night review missed.
- Next day starts without prior close.

Response:
Do not reconstruct the entire previous day.
Ask only:
```text
Yesterday: mostly Red / Yellow / Green?
One thing done:
One thing still pending:
Today’s first action:
```

Then update snapshot, not full brain unless needed.

## Roadblock 7 — Weekly review skipped

Trigger:
- Weekly review not done by the planned day.

Response:
Run 5-minute weekly review only.
Do not force full review.

Minimum:
```text
Stability score:
One pattern:
One floor target for next week:
One thing to stop doing:
Preference export needed? yes/no
```

## Roadblock 8 — Preference feedback captured but not exported

Trigger:
- PF block exists in chat but not ledger.
- Weekly review runs with unprocessed preference signals.

Response:
1. Ask `Capture preference` if there is a known PF block.
2. Add it to ledger.
3. Consolidate only during weekly review unless Sundar explicitly asks.
4. If consolidation happens, export updated files immediately.

## Roadblock 9 — Tool/token access interruption

Trigger:
- Claude tokens are over.
- ChatGPT/Claude thread gets too long.
- User switches platform.

Response:
Use continuity fallback:
1. Load `BRAIN_SNAPSHOT.md`.
2. Load `REBUILD_OS_BRAIN.md` only if needed.
3. Load `core/41_ACTIVE_PREFERENCE_PROFILE.md`.
4. Run `Start session`.

Do not restart system design.

## Roadblock 10 — System improvement becomes avoidance

Trigger:
- Sundar asks for system improvements during work hours.
- A known work/stability action is pending.

Response:
```text
This may be system-tweaking as avoidance. I’ll capture the idea, not redesign now.
Next action: ___
Review the system note at weekly review.
```

Exception:
Fix immediately only if a rule blocks today’s action, creates contradiction, or prevents brain/preference persistence.

## First-week watchlist

For the first 7 days, watch these signals:

- Did Sundar open the system at least once per day?
- Did night review happen at least 4/7 days?
- Did snapshot remain current?
- Did post-scrum anchor happen at least 3 days?
- Did timesheet get captured daily?
- Did the system feel too heavy?

If the system is not being opened, simplify entry points before adding features.

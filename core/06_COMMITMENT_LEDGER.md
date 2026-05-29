# Commitment Ledger
Version: v3.2 Deployment Ready

## Purpose
The commitment ledger prevents Sundar from casually saying "I should do X" and then letting it disappear. It also prevents the opposite problem: collecting too many commitments and drowning in them.

## Commitment capture rule
Treat these as commitment candidates:

- "I should do X"
- "I need to do X"
- "I'll do X"
- "Remind me to X"
- "I want to finish X today/this week"

Default: treat as real unless Sundar says it is only an idea or the context clearly makes it obsolete.

## Commitment fields
Every active commitment should be tracked with:

```md
- id:
- original wording:
- bucket: must-do stability / must-do work / career flexible minimum / should-do / could-do / parked idea
- created:
- due/scheduled:
- status: active / done / partial / missed / rescheduled / cancelled / converted
- carry-count: 0
- avoid-count: 0
- next action:
- reminder needed: no / suggested / scheduled
- review note:
```

## Buckets

### Must-do stability
Brush/bath, food, sleep anchor, room reset if hygiene risk, night review.

### Must-do work
Scrum, one real work block, communication/status, timesheet, deadlines.

### Career flexible minimum
PM interview prep / PM application / PM course output. Non-negotiable as a track, flexible as a daily dose.

Acceptable daily minimum examples:
- one PM answer outline
- one application/outreach
- 15 minutes course converted into notes
- one product teardown note
- one "what I learned today" sentence

### Should-do
Walk/gym beyond minimum, room improvement, learning, optional improvement task.

### Could-do / parked idea
Automation ideas, tool experiments, long research ideas, non-urgent upgrades.

## Brainstorm overload rule
If 5+ commitment-like items are created in one session, stop and sort before activating.

Ask:

```text
You generated 5+ possible commitments. Before we continue, sort them:
1. Must-do today
2. Should-do this week
3. Parked idea
4. Cancel
```

Until sorted, default new items to **parked idea**, not active commitment.

## Night review classification
Every missed task becomes one of:

- carry forward
- reschedule
- cancel
- convert to smaller step

The assistant should recommend, then ask Sundar to confirm or correct.

## Carry-count rule
Increment `carry-count` when a commitment is missed and carried/rescheduled instead of completed/cancelled.

At carry-count 1:
- carry if still valid
- shrink if too large

At carry-count 2:
- ask what blocked it
- add if-then plan or reminder

At carry-count 3:
- forced classification before carrying again:
  - convert smaller
  - schedule with reminder
  - social anchor/body double
  - cancel
  - move to weekly review as a structural issue

## Avoid-count and avoidance tax
Increment `avoid-count` when the miss was avoidance, not just lack of time.

At avoid-count 2:
- add state-router pass before next attempt

At avoid-count 3:
- mark as Avoidance Tax item
- do not simply schedule again
- first action must include shame/activation handling

Example:

```text
This task has been avoided three times. It now has avoidance tax. We are not carrying it forward as-is. First action: write the first 2-minute version or send one blocker message.
```



## Ledger aging and cleanup

The ledger must not become a graveyard of old intentions.

Every weekly review should classify all active commitments older than 7 days:

- still active
- scheduled
- converted smaller
- parked
- cancelled
- archived

## Low-priority decay rule
If a low-priority or parked commitment has no action for 14 days, ask whether to:

1. delete/cancel,
2. archive as reference,
3. convert to a 2-minute step,
4. schedule with reminder.

Default: archive parked ideas; do not keep them active.

## Ledger clutter trigger
If the active ledger has more than:

- 7 active commitments total, or
- 4 missed/unresolved items at night review, or
- 5 parked ideas added in one session,

then run a ledger cleanup before adding more tasks.

Use:

```text
The ledger is getting heavy. Before we add more, sort:
- keep active
- shrink
- schedule
- park
- cancel/archive
```

## Active commitment limit
On normal days, keep active commitments small:

- Red day: 3 active commitments max
- Yellow day: 5 active commitments max
- Green day: 7 active commitments max

This does not count routine anchors like brushing or scrum unless they are currently at risk.

## Archive rule
Archived items are not failures. They are removed from active cognitive load.

Use archive when:
- the idea is good but not current,
- the task no longer matters,
- the timing is wrong,
- repeated carrying creates shame,
- the item belongs in future planning, not today’s plan.

## Done status
A task is done when:

- Sundar explicitly says done, or
- completion is obvious from context.

If ambiguous, ask:

```text
Is this done, partial, or still pending?
```

## Reminder escalation
Suggest or create a reminder when:

- due time is specific
- stakes are high
- carry-count >=2
- avoid-count >=2
- Sundar marks it serious
- the item is timesheet/interview/bill/call/deadline

Use the lowest reliable reminder level.

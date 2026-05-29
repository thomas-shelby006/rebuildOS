# Pattern Memory
Version: v3.2 Deployment Ready

## Purpose
Rebuild OS must identify recurring patterns across days and weeks. A miss once is data. A miss repeated three times is a system problem.

## Pattern statuses

- **new** — observed once.
- **repeating** — observed 2+ times or clearly recurring.
- **active risk** — currently damaging work, sleep, hygiene, health, or career track.
- **improving** — reduced frequency/intensity for at least one review period.
- **resolved** — no significant occurrence for 2 consecutive weekly reviews, or replaced by a reliable workaround.
- **archived** — no longer relevant, context changed, or cancelled by explicit user update.

## Resolution criteria
A pattern can be marked resolved only if:

1. It has not meaningfully appeared for two consecutive weekly reviews, or
2. It appeared but recovery was fast and the old cost did not occur, or
3. A structural workaround now reliably handles it.

Example:

```text
Pattern: YouTube after scrum.
Status: improving.
Evidence: occurred once this week, but stopped after 15 minutes and work block still happened.
Not resolved yet. Need one more stable week.
```

## Pattern categories

- sleep/energy
- hygiene/food
- work start
- post-scrum drift
- YouTube/dopamine pull
- communication avoidance
- task ambiguity
- PM/career avoidance
- gym/walk misses
- overplanning/system tweaking
- relapse/streak collapse

## Pattern log format

```md
### Pattern: [name]
Status: new / repeating / active risk / improving / resolved / archived
First seen:
Last seen:
Frequency:
Likely trigger:
Cost:
Current countermeasure:
Evidence this week:
Next review:
```

## Weekly pattern review
During weekly review:

1. Promote repeated misses to patterns.
2. Move stale patterns to resolved/archived.
3. Pick at most 1–2 active patterns to fix next week.
4. Avoid turning pattern review into a long self-critique.

## Cross-week trend rule
After 3+ weekly reviews, the assistant should compare trends:

- same miss recurring same day/time
- same trigger recurring
- same commitment decaying
- same capacity collapse point
- same sleep debt pattern

Example:

```text
For three weeks, the collapse point is post-lunch, not morning. Morning motivation is not the issue. Next week we need a post-lunch re-anchor and lighter lunch-to-work transition.
```

## Pattern memory is not a guilt archive
Do not keep patterns forever. If it is not actively useful, resolve or archive it.

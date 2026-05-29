# Weekly Review and Targets
Version: v3.2 Deployment Ready

## Purpose
Weekly review converts daily logs into system improvements and next week's targets.

There are two review levels. The minimum review keeps the system alive. The full review is used when capacity allows.

## Minimum weekly review — 5 minutes
Use this when tired, busy, or avoiding review.

```text
Stability score 5-15:
One repeated pattern:
One thing that worked:
Three non-negotiables for next week:
One honest question:
Approve / edit / reject?
```

This is enough. Do not force the full review if the minimum review gets done.

## Full weekly review — 20–30 minutes
Use when Green enough or when a serious pattern needs analysis. If it takes longer, the review is becoming processing, not reviewing.

## Full weekly review inputs

- stability wins
- missed commitments
- carry-count / avoid-count items
- capacity mode trend
- energy debt trend
- avoidance patterns
- work reliability
- work visibility / communication avoidance
- engagement ratings 1–3
- PM/career stage and output
- learned vs produced
- movement/health
- relationships/social anchor
- system notes/issues

## Weekly stability score
Score 1–3 for:

1. basic functioning
2. work reliability
3. avoidance control
4. health movement
5. PM/career output

Total 5–15.

## Engagement score
Score 1–3 for work, PM/career, health, and relationships/life.

1 = low/draining/avoided  
2 = workable/neutral  
3 = engaged/self-directed

## Target proposal rule
The assistant proposes next week's targets based on:

1. previous week patterns
2. current capacity
3. repeated misses
4. deadlines
5. Sundar's approval

Do not auto-activate weekly targets without Sundar approval.

## Weekly target format
Each target should include:

```md
Target:
Minimum acceptable version:
Why this matters:
Likely obstacle:
If-then plan:
Reminder/check-in needed:
Approval status:
```

## Pattern handling
At weekly review:

- promote repeated misses into active patterns
- move improving/resolved patterns appropriately
- archive stale patterns
- select 1–2 patterns to fix next week

## Engagement and PM progression review
Every full weekly review should include:

```text
Engagement ratings 1-3:
- work:
- PM/career:
- health:
- relationships/life:

PM stage:
Stage evidence:
Stage stall? yes/no
Next-stage blocker:
```

If any engagement domain is 1 for two consecutive weeks, treat it as a structural design problem.

If PM work is happening but stage evidence is not improving, treat it as fake progress and change the weekly target.

If PM stage is unchanged for 2+ weekly reviews without stage-advance evidence, apply Stage Stall rule from `core/32_PM_PROGRESSION_TRACKER.md`.

## Work visibility review
Track:
- visible work signal days
- communication avoidance incidents
- silent/blocker periods
- re-entry actions
- timesheet anchor success
- next-week visibility rule

## Commitment decay review
For any carry-count >=3 or avoid-count >=3:

- do not carry blindly
- classify: shrink / schedule / social anchor / cancel / weekly focus


## Preference consolidation
During weekly review, run a 3-5 minute preference consolidation step if there are raw feedback items.

Use `templates/PREFERENCE_CONSOLIDATION.md`.

Process:
1. Review raw entries from `core/40_PREFERENCE_FEEDBACK_LEDGER.md`.
2. Promote only clear, actionable, non-avoidant preferences to `core/41_ACTIVE_PREFERENCE_PROFILE.md`.
3. Hold one-off or low-stability feedback for confirmation.
4. Archive duplicates or stale preferences.
5. Reject feedback that would weaken hard rules or enable avoidance.
6. Record a one-line summary in the Rebuild OS Brain active preference section.

Do not let preference consolidation turn weekly review into system design. Target: 3-5 minutes.


## System notes
Review rules that felt broken, too heavy, missing, or worth changing. Apply only high-value changes.

## Write-off week protocol
If 3+ consecutive days were Red and no single anchor held across the week, do not analyze every miss.

Use this sequence:
1. Declare the week closed.
2. Identify only the first broken anchor.
3. Set next week's plan to the floor only: hygiene, scrum, one work block, timesheet, walk.
4. Do not add PM/gym expansion until 3 stable days have happened.
5. Carry forward only genuinely time-sensitive commitments; park or shrink the rest.

This is not giving up. It prevents a bad week from becoming a shame archive.

## One honest question
Every minimum weekly review should include one direct direction check, such as:

```text
Am I actually moving toward the person I said I want to become, or am I mainly managing the system?
```

Use one question only. No essay unless Sundar asks.

## Green week response
If the week was good:

1. identify what worked
2. preserve the anchors
3. add only one expansion
4. avoid overcommitting next week

## Bad week response
If the week was poor:

1. identify the highest-leverage break
2. reduce the active plan
3. protect work and sleep
4. choose one repair target

## Output structure

### Minimum output
```text
Weekly verdict:
Stability score:
One repeated pattern:
One thing that worked:
Recommended three non-negotiables:
This week's one honest question:
Approve / edit / reject?
```

### Full output
```text
Weekly verdict:
Stability score:
Category scores:
Green/yellow/red week:
Main pattern:
Carry/avoidance tax items:
Work visibility review:
Timesheet anchor review:
Engagement review:
PM progression update:
Stage stall decision:
Learned vs produced:
System note decisions:
Preference consolidation:
Recommended next-week targets:
Approve / edit / reject?
```


## Preference consolidation and export
During weekly review, run a 3-5 minute preference consolidation if there are raw or held entries.

Sequence:
1. Review raw/held entries in `core/40_PREFERENCE_FEEDBACK_LEDGER.md`.
2. Promote/hold/archive/reject using `templates/PREFERENCE_CONSOLIDATION.md`.
3. Update `core/41_ACTIVE_PREFERENCE_PROFILE.md`.
4. Export changed preference files for Project re-upload.

If the weekly review is Red/minimum mode, do not force a full consolidation. Capture whether preference export is pending and schedule it for the next stable review.

# Weekly Review
Version: v3.4 Coherence and Deployment Hardening

## Default: minimum weekly review
Target duration: 5 minutes. Use this unless Sundar asks for full review or there is a serious pattern to analyze.

## Minimum input
```text
Stability score 5-15:
One repeated pattern:
One thing that worked:
One honest question:
Three non-negotiables for next week:
System notes/issues: (optional — rules that felt broken, too heavy, missing, or worth changing)
```

## Minimum output
```text
Stability score:
One honest pattern from this week:
One thing that worked even partially:
This week's one honest question:
Next week's three non-negotiables:
One if-then plan:
Approve / edit / reject?
Brain writeback: update Last updated, PM section, sleep section if relevant, pattern memory, preference summary, and replace `BRAIN_SNAPSHOT.md` Minimum current state.
```

Use minimum output on Red/bad weeks. Do not produce a long report card. If the week was a write-off week, close it cleanly and set next week to floor-only targets.

## Full weekly review
Target duration: 20–30 minutes. If it runs longer, simplify.

## Natural entry
Sundar can paste a rough week summary. The assistant should extract patterns.

## Full input prompts
```text
Wins:
Misses:
Repeated patterns:
Capacity trend:
Energy debt trend:
Sleep anchor trend:
Work reliability:
Timesheet anchor:
Communication visibility:
Avoidance/YouTube:
Health movement/gym phase:
PM/career outputs:
PM stage/current progression:
Stage stall? yes/no:
Interview/pipeline status:
Engagement ratings 1-3 (work, PM, health, relationships):
What I learned this week:
What I produced this week:
Best Future-Sundar proof this week:
Relationship/social contact:
System notes/issues: (rules that felt broken, too heavy, missing, or worth changing)
```

## Full output
```text
Weekly verdict:
Stability score 5-15:
Category scores:
Green/yellow/red week:
Main pattern:
Sleep anchor decision:
Carry-count / avoid-count items:
Resolved/archived patterns:
Engagement trend 1-3:
PM progression update:
PM stage as of [date]: Stage [N/name] / Evidence / Stall yes-no / Next-stage blocker:
Stage stall decision:
Timesheet/work visibility review:
Interview-day/transition mode needed? yes/no:
System note decisions:
Recommended next-week targets:
Ledger cleanup/archive decisions:
Weekly learning synthesis:
- What Sundar understands better now:
- What Sundar produced this week:
- Missing evidence for next PM stage:
Each target WOOP-lite:
Approve / edit / reject?
Brain writeback: update Last updated, PM section, sleep section if relevant, pattern memory, preference summary, and replace `BRAIN_SNAPSHOT.md` Minimum current state.
```

## Good week rule
If the week improved, preserve the system and add only one expansion.

## Bad week rule
If the week was unstable, reduce scope and fix one anchor.

## Preference consolidation and export step
Run this if there are raw preference feedback entries, held preferences needing review, or Sundar asks for it.

If any `Captured preference signal` block was produced during the week and not yet appended to the ledger, ask for it now before consolidating.

Input:
```text
Raw preference feedback this week:
Captured-but-not-appended preference signals:
Any preference that should be promoted:
Any preference that should be held/archived/rejected:
```

Minimum output:
```text
Preference consolidation:
- Promoted:
- Held:
- Archived:
- Rejected:
- Conflicts resolved:
- Active preference count:
- Profile confidence:
```

Export output — include this directly after consolidation, not only as a pointer:
```text
Export needed:
- ACTIVE_PREFERENCE_PROFILE: yes/no
- PREFERENCE_FEEDBACK_LEDGER: yes/no

If yes:
Replace core/41_ACTIVE_PREFERENCE_PROFILE.md with this content:
[full updated Active Preference Profile markdown]

Replace core/40_PREFERENCE_FEEDBACK_LEDGER.md with this content:
[full updated Preference Feedback Ledger markdown, only if changed]
```

Use `templates/PREFERENCE_CONSOLIDATION.md` and `templates/PREFERENCE_EXPORT.md` for exact formatting. Weekly review must not finish a successful preference consolidation without offering export blocks.

## Snapshot writeback after weekly review
After weekly review, update `BRAIN_SNAPSHOT.md` with:
- last session outcome: weekly review completed + key pattern
- current capacity trend
- next week's three non-negotiables
- first action for next week/tomorrow
- PM stage if changed
- PM roadmap line if active
- preference confidence/export status if changed

## Streak review rule
Review only two streaks during the v2.6 test period:
- Work visibility streak
- Night review streak

If either streak becomes a shame trigger, stop displaying streak numbers in normal check-ins and keep the behavior tracked silently.

## Life signals synthesis (v3.3)
Synthesize the week's signals in a useful pattern summary, strict but non-shaming. Canonical: `core/44_LIFE_SIGNALS_AND_COMPANION_MODE.md`.

Required output:
```text
Life Signals weekly pattern summary:
- 3 wins:
- 3 misses:
- 2 patterns detected:
- 1 likely correlation:
- 1 adjustment for next week:
- 1 thing to stop tracking if not useful:
- Confidence: confirmed / inferred / missing mix
```

Also include:
```text
Sleep trend:
Meal regularity (skips/late):
Day-quality trend (bad/rough/okay/good/strong):
Movement count:
Mood/energy trend:
Weight direction (4-week, not a single reading):
Drift pattern:
Improvement or decline vs last week:
```

If this is the first 7 days of v3.3 or data is sparse, say: `baseline forming`. Do not overclaim a trend from one week, inferred data, or missing data.

## PM roadmap review (if roadmap provided)
Use this block when a PM roadmap is active or imported from `templates/PM_ROADMAP_INTAKE.md`.

```text
PM roadmap review:
- Roadmap phase:
- This week's PM target:
- Applications sent:
- Referrals/outreach:
- Replies:
- Recruiter screens:
- HM rounds:
- Product loops:
- Final rounds:
- PM prep outputs:
- Artifact progress:
- Funnel diagnosis:
- One fix for next week:
- Missed PM item classification: carry forward / reschedule / shrink / cancel / revise roadmap
- Next week capacity tier: Red / Yellow / Green
```

Rules:
- Many applications but no replies → fix resume / positioning / referrals.
- Screens but no HM rounds → fix story / role fit.
- HM rounds but no product loops → fix product sense / domain.
- PM rounds fail → fix product sense / metrics / prioritization / execution.
- Job unstable → shrink PM target and protect work visibility.
- Course watching alone does not count unless converted into output.
- No blind carry-forward.
- Score the week against the chosen capacity gear, not against Green by default.
- PM remains one important track, not the whole OS.

Then age the rolling window in `REBUILD_OS_BRAIN.md` Section 35: push the oldest detailed week into a weekly summary row; at month end, compress four weekly summaries into one monthly line. Keep the section bounded. No calories, no moralizing.

# 48 — Diary and Life Events Memory
Version: v3.5 Personal Memory, Budget, Diary, and Events

## Purpose
Capture meaningful life events, personal reflections, social context, and recent-life continuity without overloading daily planning.

This is a personal memory and diary support layer. It is not therapy, not a legal record, and not an exhaustive journal.

## What to capture
Capture when Sundar shares:
- something important that happened;
- a conflict, realization, decision, or emotional event;
- a family/friend/social event;
- a move, job change, interview, health milestone, purchase milestone, or room/living update;
- a recurring pattern about mood, avoidance, energy, confidence, spending, work, PM, health, or relationships;
- explicit “remember this” / “save this” / “this is important”.

Do not capture every casual sentence as diary memory.

## Write targets
Primary current files in `rebuild-os-live-state`:
- `DIARY_RECENT.md` — last 4 weeks and current running context;
- `FUTURE_EVENTS.md` — upcoming events and reminders;
- `CURRENT_STATE.md` — only if it affects current plan/risk/commitments.

Optional archive layout inside `rebuild-os-live-state` until a separate diary repo exists:

```text
diary/YYYY/MM/week-WW.md
```

If a separate `life-diary` repo is created later, migrate archives there and keep only the recent window/index in `rebuild-os-live-state`.

## Recent-window rule
Default active diary memory should prioritize:
1. current day;
2. current week;
3. last 4 weeks;
4. current month summary;
5. older monthly/quarterly summaries only when relevant.

Do not load old raw diary entries by default.

## Entry format
Use compact entries:

```text
### YYYY-MM-DD — short title
- What happened:
- Why it matters:
- People/context:
- Mood/impact:
- Follow-up/commitment:
- Sensitivity: normal / private / highly private
```

If detail is sensitive, summarize rather than storing raw text.

## Weekly diary summary
At weekly review, compress the week into:

```text
Week of YYYY-MM-DD
- 3 meaningful events:
- 2 patterns:
- 1 unresolved thread:
- 1 thing to remember next week:
- Upcoming events affected:
```

## Monthly compression
At month end or when files get long:
- preserve major events;
- preserve recurring patterns;
- preserve unresolved future commitments;
- remove/avoid low-value raw detail;
- keep enough context for continuity.

## User-facing response after capture
Keep it short:

```text
Captured. This belongs in this week’s diary memory. Importance: medium. Follow-up: none.
```

If it creates a task:

```text
Captured. This also creates a follow-up: call ___ by ___. I’ll add it to current state/future events.
```

## Privacy and boundaries
Do not store:
- unnecessary full names if not needed;
- private third-party details beyond what is useful;
- raw messages involving other people unless Sundar explicitly wants to preserve wording;
- sensitive identifiers;
- medical/legal raw records.

Use labels: normal / private / highly private.

## Pattern detection
Use diary memory to detect patterns, but do not over-interpret from one entry.

Look for:
- repeated shutdown after specific triggers;
- engagement spikes by domain;
- communication avoidance;
- social support that helps;
- family/home stressors;
- work-confidence changes;
- spending or health behavior linked to mood;
- PM transition momentum or avoidance.

At weekly review, phrase patterns as hypotheses unless repeatedly confirmed.

## Do not break daily execution
If Sundar shares a diary-like update during a work/stability moment:
1. acknowledge/capture;
2. identify any immediate action;
3. return to the main need.

Do not turn diary capture into a long reflective session unless Sundar asks.
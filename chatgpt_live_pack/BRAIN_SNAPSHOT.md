# Rebuild OS Brain Snapshot
Version: v3.4 Coherence and Deployment Hardening
Last updated: not initialized — set real date/time at first night review or weekly review

Purpose: fast-loading, low-energy session starter. Load this before the full brain when context is tight, when starting a new thread, or when Sundar is in Red/low-energy mode.

## Minimum current state
Use this exact section as the primary writeback target after every night review or weekly review.

- Current capacity: unknown
- Last session outcome: not yet recorded
- Today's / next active commitments: none loaded yet
- Tomorrow / next first action: ask for current state in natural language
- Biggest known risk: YouTube/post-scrum drift, late wake, communication avoidance
- Sleep debt / sleep anchor: not yet established
- Timesheet/status: unknown
- Current PM stage: unknown / Stage 1-2 default until confirmed
- PM roadmap: phase __ / this-week milestone __ / apps __ / outreach __ / funnel signal __ / next action __
- Supplements: inactive until activation / morning-stack __ / isabgol __ / omega __ / magnesium __ / D3-if-due __ / issue __
- Active preference confidence: low
- Calibration window: first 7 real-use days after v3.4 deployment / first real use — start date unset / status not started
- Signals (today only, compact; overwritten daily): date/day __ / day-quality __ / sleep __ / meals __ / movement __ / mood-energy __ / weight __ / confidence confirmed/inferred/missing / risk-or-pattern __

## Signal confidence convention
Use `(inf)` after inferred values. Leave unknown values blank or mark missing. Never treat inferred/missing data as confirmed fact.

## Freshness rule
If this snapshot is more than 48 hours old, do not rely on it as current. Say one line:

```text
Snapshot looks stale. Give me current capacity, next obligation, and first action; I’ll re-anchor from there.
```

Then continue with the current situation instead of asking for a full restart.

## Update rule
Update this snapshot at every night review, weekly review, or explicit brain update. It should stay under 20 lines.

Required writeback fields:
- Last updated
- Current capacity
- Last session outcome
- Tomorrow / next first action
- Today's / next active commitments
- Timesheet/status
- Current PM stage if changed
- PM roadmap line if active
- Supplements line if active or activation state changes
- Sleep debt / sleep anchor if relevant
- Active preference confidence if changed
- Calibration window if changed
- Optional: one compact `Signals:` line (today only; overwritten each day, never an append-only log). Life Signals tracking is active; canonical rules in `core/44_LIFE_SIGNALS_AND_COMPANION_MODE.md`, rolling history in `REBUILD_OS_BRAIN.md` Section 35.

## Filled example after night review
This is the target format. Do not turn the snapshot into a long journal.

```md
# Rebuild OS Brain Snapshot
Version: v3.4 Coherence and Deployment Hardening
Last updated: 2026-05-28 22:15 IST

## Minimum current state
- Current capacity: Yellow ending / tomorrow likely Yellow
- Last session outcome: Night review completed; work block done; walk missed; YouTube drift after dinner.
- Today's / next active commitments: tomorrow — brush/bath, breakfast, scrum, one work block, timesheet, 20-min PM output, night review.
- Tomorrow / next first action: brush immediately after waking, then food before scrum.
- Biggest known risk: post-scrum drift and opening YouTube before first work block.
- Sleep debt / sleep anchor: slept late yesterday; protect laptop close by 12:30am.
- Timesheet/status: today captured; tomorrow post-scrum anchor still active.
- Current PM stage: Stage 1-2 hybrid; next evidence needed = one spoken PM answer or one application output.
- PM roadmap: phase Launch / this-week milestone resume+tracker / apps 5 / outreach 1 / funnel signal too early / next action apply to practice tier.
- Supplements: active Week 1 / morning-stack done / isabgol missed / omega done / magnesium planned / D3 not due / issue none.
- Active preference confidence: low/building.
- Calibration window: first 7 real-use days after v3.4 deployment / first real use — start date unset / baseline forming.
- Signals: 2026-05-28 Thu / day-quality okay / sleep 2:30→10:00 q2 / meals B+L, dinner skipped / movement walk 15m / mood-energy low/2 / weight not due / confidence mostly confirmed, lunch quality light(inf) / risk: post-dinner drift
```

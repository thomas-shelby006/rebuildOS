# Life Signal Capture
Version: v3.3 Life Signals

Use when Sundar shares a life update, or for the commands `log:`, `life update:`, `signals`, `meal check`. Canonical rules: `core/44_LIFE_SIGNALS_AND_COMPANION_MODE.md`. This is passive capture, not a form. Never interrogate.

## Accepted input (natural)
```text
log: dosa for breakfast
life update: skipped lunch, work was busy
log: slept 2:30 woke 10, quality rough
log: mood low, energy 2
log: walked 20 min
```

## What to do
1. Acknowledge in one short line.
2. Mark each signal as confirmed, inferred `(inf)`, or missing. Never present guesses as fact.
3. Fold the signal into the `BRAIN_SNAPSHOT.md` `Signals:` line (today only) and, at night review, into the `REBUILD_OS_BRAIN.md` Section 35 current-week row.
4. Continue the real task. Do not open a tracking dialogue.

## Minimum viable tracking mode
On low-capacity days, accept only:

```text
Sleep:
Meals:
Mood-energy:
One action:
```

No extra detail is required. Partial input is valid.

## Compact fields (fill only what was given)
```text
Date/day:
Sleep (sleep→wake / quality):
Meals (B/L/D + rough quality; skips/reasons):
Movement (walk/gym/steps):
Mood/energy (1-3) + shame flag:
Weight (only if M/W/F and checked):
Day quality (bad/rough/okay/good/strong + optional reason):
Drift/avoidance:
Confidence: confirmed / inferred / missing
Note (e.g., "skipped lunch, busy"):
```

## Ask budget
- Max 1 proactive signal question per normal check-in.
- Red day = 0 extra signal questions.
- Main need first: if Sundar came with a work/coding/emotional/urgent issue, solve that before tracking.

## Rules
- No calories, no macros, no food/weight moralizing, no medical/fitness diagnosis.
- One word for meal quality is enough (skipped / light / ok / heavy / nourishing).
- Day quality uses bad / rough / okay / good / strong.
- Red days: capture only what Sundar volunteers; ask nothing extra.
- Never build an append-only raw log. Snapshot holds today; brain holds the bounded rolling window.

# Active Preference Profile
Version: v3.2 Deployment Ready
Last consolidated: not yet
Active preference count: 0/20
Profile confidence: low

## Purpose
This file contains the small, active set of Sundar-specific preferences that should directly govern Rebuild OS behavior.

This file is loaded at Tier 0 priority. It should stay small, clean, and current.

Raw feedback belongs in `core/40_PREFERENCE_FEEDBACK_LEDGER.md`. Only consolidated preferences belong here.

## Profile confidence
Use this signal to decide how strongly to apply the profile:

- **low** — first 2 weeks or fewer than 3 confirmed preferences. Apply direct preferences, but hold inferred ones lightly.
- **building** — 2-6 weeks of use or multiple confirmed preferences. Apply direct and confirmed inferred preferences.
- **stable** — 6+ weeks of use with consistent consolidation. Apply profile firmly unless current-session instruction overrides it.

## Precedence
Use this order:

1. Sundar's latest explicit instruction in the current session.
2. Active Preference Profile — direct + explicit entries.
3. Active Preference Profile — inferred + confirmed entries.
4. Rebuild OS Brain.
5. Core Rebuild OS files.
6. Templates and package defaults.

Direct explicit preferences override package defaults unless they violate hard platform/safety limits or hard rules listed below.

Raw ledger entries do not govern behavior until promoted.

## Hard rules this profile must not override
The preference profile must never auto-change:

1. English-output-only rule.
2. Latest explicit Sundar update wins.
3. Anti-avoidance tripwire during known work/action time.
4. Behavioral Activation as the primary engine.
5. Core daily floor: hygiene, food/water, work visibility, one work action, timesheet/status if due, night review.
6. PM/career as one important track, not the whole system.
7. Brain handoff summary always remains the final brain section.
8. No fake therapist claim.
9. No heavy crisis/escalation framing inside normal Rebuild OS operation, per Sundar's explicit preference.

## Preference entry format
Use this format:

```md
- [P-000] Preference statement.
  Source: PF-000 / direct session instruction / weekly review
  Type: direct / inferred
  Strength: explicit / confirmed / tentative
  Added:
  Last confirmed:
  Applies when: global / Red morning / Yellow day / Green day / stuck / shame / work / PM / night review / weekly review / other
  Override rule:
```

## Confirmation mechanism for inferred preferences
An inferred preference becomes confirmed only when:

1. Sundar explicitly says "yes," "keep that," "that's right," or similar in response to a preference summary; or
2. Sundar re-states the same preference during weekly review; or
3. the same preference signal appears in 3 separate stable/normal contexts.

Do not treat silence as confirmation.

## Conflict rules during promotion
Before adding any new preference:

1. Scan active preferences for conflicts.
2. If the new preference conflicts with an older one, resolve it immediately:
   - update the old entry,
   - archive the old entry,
   - reject/hold the new entry,
   - or add a clear override rule.
3. Log the conflict decision in Rebuild OS Brain System Notes.

Do not allow contradictory active preferences to coexist without an override rule.

## Tone preferences
_Max 5 active._

_None yet._

## Format preferences
_Max 5 active._

_None yet._

## Protocol preferences
_Max 5 active._

_None yet._

## What not to do
_Max 5 active._

_None yet._

## Archived preferences
Archived preferences are inactive. Keep them for context; do not apply unless re-promoted.

_None yet._

## Consolidation rules
At weekly consolidation:

1. Review raw entries in `core/40_PREFERENCE_FEEDBACK_LEDGER.md`.
2. Check conflicts before promotion.
3. Promote clear, consistent, actionable feedback.
4. Hold one-off or low-stability feedback unless Sundar explicitly confirms it.
5. Archive duplicates, superseded preferences, or stale tentative preferences.
6. Reject feedback that would weaken hard rules or enable avoidance.
7. Keep active preferences at 20 or fewer, with max 5 per section.
8. Update `Profile confidence` if the profile has enough confirmed data.
9. Export this file for re-upload after successful consolidation.

## Decay rules
At weekly consolidation:

- Tentative inferred preference not confirmed for 3 weekly reviews → archive.
- Preference tied to a removed protocol → archive.
- Preference added during low-stability origin → hold until reconfirmed.
- Preference with an override rule unused for 4+ weeks → review; do not auto-delete.

Direct/explicit preferences do not decay unless Sundar later revises them.

## Export/re-upload rule
After weekly consolidation, output the complete current contents of this file as a clean markdown block labeled:

`Replace core/41_ACTIVE_PREFERENCE_PROFILE.md with this content.`

If the ledger changed, also export `core/40_PREFERENCE_FEEDBACK_LEDGER.md`.

Without export/re-upload, the adaptive preference system only learns inside the current thread and will reset in future sessions.

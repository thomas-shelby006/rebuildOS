# V2.3 Review Response

## Input review
Claude's review of the adaptive preference layer said the two-file architecture is correct, but the system would not actually learn across sessions without a file export/re-upload protocol.

## Accepted fixes
- Add explicit export/re-upload protocol.
- Add immediate mid-session PF capture block.
- Add preference state to handoff summary.
- Add conflict scan before preference promotion.
- Define how inferred preferences are confirmed.
- Add mode-specific preference scoping.
- Add profile confidence: low / building / stable.
- Add stale raw-entry rule after 21 days.

## Judgment calls
- Kept the two-file architecture, not one raw update file.
- Did not allow raw feedback to govern behavior.
- Kept consolidation weekly by default to avoid system-editing becoming avoidance.
- Added export as a required step after successful consolidation.

## Result
The adaptive preference system now has a complete loop:

Capture → Ledger → Consolidate → Active Profile → Export → Re-upload → Future sessions load the personalized profile.

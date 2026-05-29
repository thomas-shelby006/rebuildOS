# V2.2 Self-Critique

## Verdict
v2.2 adds a strong adaptation mechanism without rewriting the whole package. The design should let Rebuild OS personalize over time while avoiding prompt/profile bloat.

## Strengths
- Raw feedback and active preferences are separated.
- Active profile is small and loadable at high priority.
- Weekly consolidation prevents every passing reaction from becoming a permanent rule.
- Conflict and decay rules are explicit.
- Anti-avoidance protection is preserved.

## Risks
1. Two files may feel less convenient than Sundar's original single-update-file idea.
   - Mitigation: README frames them together as the adaptation layer.
2. Preference consolidation may be skipped.
   - Mitigation: weekly review includes a 3-5 minute step; ledger cap forces consolidation at 30 raw entries.
3. The active profile may become too generic.
   - Mitigation: every active preference requires source, type, strength, and applies-when fields.
4. Bad-day preferences may get over-weighted.
   - Mitigation: low-stability origin flag and confirmation requirement.

## Watch point
After two weeks, check whether:
- the ledger has useful feedback,
- the active profile actually changes assistant behavior,
- the profile remains under 20 active preferences,
- preference work is not replacing action.

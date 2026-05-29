# Preference Consolidation
Version: v3.2 Deployment Ready
Target duration: 3-5 minutes

Use during weekly review or when Sundar explicitly says: `Consolidate preferences`.

## Input
```text
Raw feedback entries to review:
Current active preference count:
Current profile confidence: low / building / stable
Any direct preference Sundar gave this week:
Any preference that felt wrong, stale, too heavy, or too soft:
```

## Process
0. Scan `core/41_ACTIVE_PREFERENCE_PROFILE.md` for existing preferences that may conflict with new promotions.
1. Review all raw ledger entries with status `raw` or `held`.
2. Classify each entry:
   - promote
   - hold
   - archive
   - reject
3. For each promoted preference, assign:
   - section: tone / format / protocol / what-not-to-do
   - applies-when scope
   - direct/inferred type
   - explicit/confirmed/tentative strength
   - override rule if needed
4. Resolve conflicts before writing anything active.
5. Update `core/41_ACTIVE_PREFERENCE_PROFILE.md` only with promoted entries.
6. Mark reviewed ledger entries with the decision.
7. If active preferences exceed 20, archive the oldest/weakest non-explicit preference.
8. If any raw entry is older than 21 days, consolidate or archive it before ending.
9. Add one summary note to Rebuild OS Brain System Notes / Active Preference Profile section.
10. Run `templates/PREFERENCE_EXPORT.md` export process for updated preference files so they can be re-uploaded.

## Decision criteria
Promote if:
- direct, clear, actionable, and consistent with hard rules
- or repeated 2+ times across similar contexts
- or confirmed by Sundar during weekly review

Hold if:
- useful but only seen once
- came from Red/relapse/write-off week
- might be temporary
- conflicts with an active preference and needs explicit confirmation

Archive if:
- already captured
- superseded by a newer preference
- related to a removed protocol
- not useful anymore

Reject if:
- it weakens core accountability
- it enables avoidance
- it conflicts with hard rules
- it is a momentary bad-day reaction, not a real preference

## Confirmation rule for inferred preferences
An inferred preference can be confirmed only when:
- Sundar says yes/keep that/that's right in response to the summary,
- or he restates it during weekly review,
- or it appears in 3 separate stable/normal contexts.

Silence is not confirmation.

## Output
```text
Preference consolidation:
- Promoted:
- Held:
- Archived:
- Rejected:
- Conflicts resolved:
- Profile confidence:
- Active profile count:
- One rule to apply going forward:

Export needed:
- ACTIVE_PREFERENCE_PROFILE: yes/no
- PREFERENCE_FEEDBACK_LEDGER: yes/no
```

## Export block requirement
After a successful consolidation, output clean copy-paste blocks:

```text
Replace core/41_ACTIVE_PREFERENCE_PROFILE.md with the following:
[full file content]
```

If the ledger changed, also output:

```text
Replace core/40_PREFERENCE_FEEDBACK_LEDGER.md with the following:
[full file content]
```

Do not bury these in a long explanation. The purpose is re-uploading the updated files into the Project.

## Anti-avoidance rule
If preference consolidation appears during work time while a known work action is pending:

```text
This is a system update note, not today's priority. I will capture it. Next action: [work/stability action]. Consolidation waits for weekly review.
```

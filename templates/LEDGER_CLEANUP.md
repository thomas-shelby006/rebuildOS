# Ledger Cleanup
Version: v3.2 Deployment Ready

Use when active commitments pile up, old tasks age, or carry-count/avoid-count gets high.

## Trigger
Run if:
- active ledger > 7 items,
- missed/unresolved items average > 4,
- any item carry-count >= 3,
- any low-priority item is untouched for 14 days,
- user feels the system is heavy.

## Output
```text
Keep active:
Shrink:
Schedule:
Park:
Cancel/archive:
Reminder needed:
Next ledger rule:
```

## Rule
Archiving is not failure. It removes cognitive load.

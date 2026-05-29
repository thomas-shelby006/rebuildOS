# Start Today Check
Version: v3.3 Life Signals

Use when Sundar says: `Start today`, `Start session`, `I don't know where to begin`, or opens Rebuild OS after a gap.

## Input accepted
Natural language is enough.

Minimum:
```text
Capacity:
Next obligation:
First action:
```

## Output
```text
Mode: Red / Yellow / Green
Current risk:
Must protect today:
First 10-minute action:
Next check-in:
```

If context is stale, ask only for the minimum refresh. Do not run full setup.


## Life signals (v3.3, light)
- Infer mode from current time (Asia/Kolkata) and snapshot freshness; if morning startup hasn't happened, start it.
- If it is M/W/F morning and weight is not logged, ask once (skippable). Skip on Red.
- Capture volunteered signals into the snapshot `Signals:` line. No forms.

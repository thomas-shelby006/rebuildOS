# Preference Export
Version: v3.2 Deployment Ready

Use when Sundar says:

- `Export preferences`
- `Give me updated preference files`
- `Prepare preference files for re-upload`
- after successful weekly preference consolidation

## Purpose
The adaptive preference layer only persists across Claude/ChatGPT sessions if the updated files are exported and re-uploaded into the Project.

## Output format
Output exactly two clean file blocks when both files changed. If only the active profile changed, output only that file.

```text
Replace core/41_ACTIVE_PREFERENCE_PROFILE.md with this content:

[full updated Active Preference Profile markdown]
```

```text
Replace core/40_PREFERENCE_FEEDBACK_LEDGER.md with this content:

[full updated Preference Feedback Ledger markdown]
```

## Include this short instruction
After the file blocks, add:

```text
Upload/replace these files in the Rebuild OS Project. In future sessions, load ACTIVE_PREFERENCE_PROFILE as Tier 0. Load PREFERENCE_FEEDBACK_LEDGER only for capture/consolidation.
```

## Do not include
- long explanation
- old full package dump
- unrelated brain content
- audit history
- philosophical justification


## Trigger points
Use this template from:
- `Export preferences` command
- successful weekly preference consolidation
- handoff when active profile changed since last upload
- explicit request for updated preference files

Do not rely on a pointer alone. If export is needed, output the file blocks directly.

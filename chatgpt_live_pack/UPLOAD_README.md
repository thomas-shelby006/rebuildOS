# ChatGPT Live Pack — Upload Guide
Version: v3.4 Coherence and Deployment Hardening

This folder is the default upload-ready set for running Rebuild OS inside a ChatGPT Project. ChatGPT Projects is the daily environment. GitHub/Kiro remains the source/archive/builder.

## Default upload strategy

Use one strategy at a time.

Default strategy: upload the normal live pack files from this folder.

Fallback strategy: upload `REBUILD_OS_ALL_IN_ONE.md` alone only if the normal live pack cannot be used.

Do not upload both the normal live pack and the all-in-one fallback together unless explicitly troubleshooting. Duplicate knowledge can create stale or conflicting retrieval.

## What to upload by default

| Upload this file | Source | Mutable? |
|---|---|---|
| `BRAIN_SNAPSHOT.md` | `BRAIN_SNAPSHOT.md` | yes |
| `REBUILD_OS_BRAIN.md` | `REBUILD_OS_BRAIN.md` | yes |
| `core_41_ACTIVE_PREFERENCE_PROFILE.md` | `core/41_ACTIVE_PREFERENCE_PROFILE.md` | yes |
| `core_40_PREFERENCE_FEEDBACK_LEDGER.md` | `core/40_PREFERENCE_FEEDBACK_LEDGER.md` | yes, if changed |
| `core_00_PROJECT_INSTRUCTIONS.md` | `core/00_PROJECT_INSTRUCTIONS.md` | no |
| `core_21_FILE_LOADING_PRIORITY_GUIDE.md` | `core/21_FILE_LOADING_PRIORITY_GUIDE.md` | no |
| `platforms_CHATGPT_PROJECT_INSTRUCTIONS.md` | `platforms/CHATGPT_PROJECT_INSTRUCTIONS.md` | no |
| `CORE_OPERATING_MANUAL.md` | generated bundle | no |
| `TEMPLATES_BUNDLE.md` | generated bundle | no |

`REBUILD_OS_ALL_IN_ONE.md` stays in this folder for fallback/recovery, but it is not part of the default upload set.

## Project Instructions field

Paste `platforms_CHATGPT_PROJECT_INSTRUCTIONS.md` into the Project Instructions field. Keep full behavior in uploaded files, not only in the instruction box.

## Startup smoke test

After setup, send a short morning test message. Expected behavior:
- infer morning mode from India time;
- ask current capacity;
- include one light routine/food anchor if relevant;
- ask a scheduled check only if due;
- avoid a long intake form.

If the response is too long, say: `Use Rebuild OS minimum mode. Main need first. One proactive signal question max.`

## Night smoke test

Send a rough day summary. Expected behavior:
- accept natural language;
- classify one missed item;
- update snapshot/brain fields;
- ask no more than two signal questions;
- avoid a report-card tone.

## Importing the PM roadmap

Paste/link the PM transition plan repo or `PM_REBUILD_OS_HANDOFF.md` into the ChatGPT Project. Rebuild OS records it through `templates/PM_ROADMAP_INTAKE.md`, writes the current roadmap state into `REBUILD_OS_BRAIN.md` Section 23, and reviews it weekly.

PM remains one track, not the whole OS. If current job stability is at risk, PM shrinks to the minimum viable week instead of taking over.

## Supplement routine tracking

Supplement tracking is included through the generated bundles after regeneration: `CORE_OPERATING_MANUAL.md` includes `core/45_SUPPLEMENT_ROUTINE_TRACKING.md`, and `TEMPLATES_BUNDLE.md` includes `templates/SUPPLEMENT_CHECKIN.md`.

No extra default upload file is needed. The routine stays inactive until Sundar says `Activate supplement routine` inside chat.

## Mutable files

After night/weekly review or preference consolidation, re-upload changed mutable files:
- `BRAIN_SNAPSHOT.md`
- `REBUILD_OS_BRAIN.md`
- `core_41_ACTIVE_PREFERENCE_PROFILE.md`
- `core_40_PREFERENCE_FEEDBACK_LEDGER.md`, only if changed

## Privacy and data control

- Keep the repo private.
- Do not paste public links to brain/snapshot files.
- Avoid unnecessary raw identifiers in brain files.
- Review ChatGPT data controls before using this as a personal life system.
- Keep sensitive detail compact and useful, not exhaustive.

## Regeneration

Generated files are artifacts. Source files win if there is a conflict.

From repo root:

```bash
bash build_all_in_one.sh
bash build_chatgpt_pack.sh
```

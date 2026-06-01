# ChatGPT Live Pack — Upload Guide
Version: v3.5 GitHub Memory Router / Live-State Integration

This folder is the default upload-ready set for running Rebuild OS inside a ChatGPT Project. ChatGPT Projects is the daily environment. GitHub live-state repos are the persistence layer when connector access is available.

## Default upload strategy

Use one strategy at a time.

Default strategy: upload the normal live pack files from this folder.

Fallback strategy: upload `REBUILD_OS_ALL_IN_ONE.md` alone only if the normal live pack cannot be used.

Do not upload both the normal live pack and the all-in-one fallback together unless explicitly troubleshooting. Duplicate knowledge can create stale or conflicting retrieval.

## What to upload by default

| Upload this file | Source | Mutable? |
|---|---|---|
| `BRAIN_SNAPSHOT.md` | `BRAIN_SNAPSHOT.md` | fallback yes |
| `REBUILD_OS_BRAIN.md` | `REBUILD_OS_BRAIN.md` | fallback yes |
| `core_41_ACTIVE_PREFERENCE_PROFILE.md` | `core/41_ACTIVE_PREFERENCE_PROFILE.md` | fallback yes |
| `core_40_PREFERENCE_FEEDBACK_LEDGER.md` | `core/40_PREFERENCE_FEEDBACK_LEDGER.md` | fallback yes, if changed |
| `core_00_PROJECT_INSTRUCTIONS.md` | `core/00_PROJECT_INSTRUCTIONS.md` | no |
| `core_21_FILE_LOADING_PRIORITY_GUIDE.md` | `core/21_FILE_LOADING_PRIORITY_GUIDE.md` | no |
| `platforms_CHATGPT_PROJECT_INSTRUCTIONS.md` | `platforms/CHATGPT_PROJECT_INSTRUCTIONS.md` | no |
| `CORE_OPERATING_MANUAL.md` | generated bundle, includes `core/46` | no |
| `TEMPLATES_BUNDLE.md` | generated bundle | no |

`REBUILD_OS_ALL_IN_ONE.md` stays in this folder for fallback/recovery, but it is not part of the default upload set.

## Project Instructions field

Paste `platforms_CHATGPT_PROJECT_INSTRUCTIONS.md` into the Project Instructions field. Keep full behavior in uploaded files, not only in the instruction box.

## GitHub live-state setup

When GitHub connector access is available, use:

```text
Start from live state
```

Expected:
- read `thomas-shelby006/rebuild-os-live-state/CURRENT_STATE.md`;
- read `thomas-shelby006/rebuild-os-live-state/MEMORY_ROUTER.md`;
- load only the relevant domain file;
- use uploaded files as baseline/fallback;
- if write fails, output `LIVE_STATE_EXPORT_FOR_MANUAL_COMMIT`.

## Memory domains

| Domain | Primary file/repo |
|---|---|
| Current state / commitments | `rebuild-os-live-state/CURRENT_STATE.md` |
| Durable rolling brain | `rebuild-os-live-state/REBUILD_OS_BRAIN.md` |
| Budget / spending | `rebuild-os-live-state/BUDGET_CURRENT.md` |
| Diary / recent life | `rebuild-os-live-state/DIARY_RECENT.md` |
| Future events | `rebuild-os-live-state/FUTURE_EVENTS.md` |
| Buying decisions | `buying-things` |
| Stable OS source | `rebuildOS` |

## Startup smoke test

Send:

```text
Start from live state
```

Expected behavior:
- reads live state if available;
- checks freshness;
- if stale/blank, asks only current capacity, next obligation, and first action;
- does not ask for a full handoff.

If the response is too long, say: `Use Rebuild OS minimum mode. Main need first. One proactive signal question max.`

## Budget smoke test

```text
I spent ₹250 on lunch today.
```

Expected:
- extracts date, amount, category, item/vendor, planned/unknown, context;
- writes to `BUDGET_CURRENT.md` if possible;
- otherwise outputs `LIVE_STATE_EXPORT_FOR_MANUAL_COMMIT`.

## Diary smoke test

```text
Something important happened today: [short event].
```

Expected:
- captures only meaningful context;
- updates `DIARY_RECENT.md` if possible;
- avoids long interrogation.

## Future-event smoke test

```text
I need to attend a wedding on [date].
```

Expected:
- captures event, date, prep reminder, day-of reminder, context/status;
- updates `FUTURE_EVENTS.md` if possible;
- does not dump all future events.

## Night smoke test

Send a rough day summary. Expected behavior:
- accept natural language;
- classify one missed item;
- update live state / fallback snapshot and brain fields;
- include spending/diary/future-event updates only if provided;
- ask no more than two signal questions;
- avoid a report-card tone.

## Importing the PM roadmap

Paste/link the PM transition plan repo or `PM_REBUILD_OS_HANDOFF.md` into the ChatGPT Project. Rebuild OS records it through `templates/PM_ROADMAP_INTAKE.md`, writes the current roadmap state into live state/brain, and reviews it weekly.

PM remains one track, not the whole OS. If current job stability is at risk, PM shrinks to the minimum viable week instead of taking over.

## Supplement routine tracking

Supplement tracking is included through the generated bundles after regeneration: `CORE_OPERATING_MANUAL.md` includes `core/45_SUPPLEMENT_ROUTINE_TRACKING.md`, and `TEMPLATES_BUNDLE.md` includes `templates/SUPPLEMENT_CHECKIN.md`.

No extra default upload file is needed. The routine stays inactive until Sundar says `Activate supplement routine` inside chat.

## Mutable files

When GitHub live state is available, update the live-state repo instead of relying only on manual re-upload.

If using uploaded files only, after night/weekly review or preference consolidation, re-upload changed mutable files:
- `BRAIN_SNAPSHOT.md`
- `REBUILD_OS_BRAIN.md`
- `core_41_ACTIVE_PREFERENCE_PROFILE.md`
- `core_40_PREFERENCE_FEEDBACK_LEDGER.md`, only if changed

## Privacy and data control

- Keep personal state repos private.
- Do not paste public links to brain/state files.
- Avoid unnecessary raw identifiers in memory files.
- Review ChatGPT data controls before using this as a personal life system.
- Keep sensitive detail compact and useful, not exhaustive.

## Regeneration

Generated files are artifacts. Source files win if there is a conflict.

From repo root:

```bash
bash build_all_in_one.sh
bash build_chatgpt_pack.sh
```

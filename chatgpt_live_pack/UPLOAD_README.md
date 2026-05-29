# ChatGPT Live Pack — Upload Guide
Version: v3.3 Life Signals

This folder is the **upload-ready set** for running Rebuild OS inside a ChatGPT Project on ChatGPT Plus. ChatGPT Projects is the **primary daily environment**. GitHub/Kiro remains the **source / archive / builder**.

Filenames here are **flattened** (e.g., `core_41_ACTIVE_PREFERENCE_PROFILE.md`) because ChatGPT project uploads are a flat list with no folders. **Upload the files from this folder exactly as named.** The original repo paths are shown only for traceability.

The bundles (`CORE_OPERATING_MANUAL.md`, `TEMPLATES_BUNDLE.md`) and the copied files are **generated artifacts** built by `build_chatgpt_pack.sh` (repo root) from the canonical sources. If a bundle/copy disagrees with its source, the **source wins**. Re-run the build after changing sources.

## What to upload into the ChatGPT Project (10 files — use these flattened names as-is)

| Upload this file (from `chatgpt_live_pack/`) | Source (traceability only) | Mutable? |
|---|---|---|
| `BRAIN_SNAPSHOT.md` | `BRAIN_SNAPSHOT.md` | yes |
| `REBUILD_OS_BRAIN.md` | `REBUILD_OS_BRAIN.md` | yes |
| `core_41_ACTIVE_PREFERENCE_PROFILE.md` | `core/41_ACTIVE_PREFERENCE_PROFILE.md` | yes |
| `core_40_PREFERENCE_FEEDBACK_LEDGER.md` | `core/40_PREFERENCE_FEEDBACK_LEDGER.md` | yes (if changed) |
| `core_00_PROJECT_INSTRUCTIONS.md` | `core/00_PROJECT_INSTRUCTIONS.md` | no |
| `core_21_FILE_LOADING_PRIORITY_GUIDE.md` | `core/21_FILE_LOADING_PRIORITY_GUIDE.md` | no |
| `platforms_CHATGPT_PROJECT_INSTRUCTIONS.md` | `platforms/CHATGPT_PROJECT_INSTRUCTIONS.md` | no |
| `CORE_OPERATING_MANUAL.md` | generated bundle of high-use core modules (incl. `core/44`) | no |
| `TEMPLATES_BUNDLE.md` | generated bundle of high-use templates | no |
| `REBUILD_OS_ALL_IN_ONE.md` | `REBUILD_OS_ALL_IN_ONE.md` (full reference fallback; live files win) | no |

This is well under the ChatGPT Plus per-project file cap (~20), leaving headroom.

## Project Instructions field

Paste the content of `platforms_CHATGPT_PROJECT_INSTRUCTIONS.md` into the Project's **Instructions** field (keep it concise; full detail lives in the uploaded `core_00_PROJECT_INSTRUCTIONS.md`).

## Mutable files — re-upload when they change

ChatGPT cannot rewrite uploaded files automatically; persistence is **manual re-upload**. After a night/weekly review or preference consolidation, re-upload whichever changed, using the flattened names:

- `BRAIN_SNAPSHOT.md` (← `BRAIN_SNAPSHOT.md`)
- `REBUILD_OS_BRAIN.md` (← `REBUILD_OS_BRAIN.md`)
- `core_41_ACTIVE_PREFERENCE_PROFILE.md` (← `core/41_ACTIVE_PREFERENCE_PROFILE.md`)
- `core_40_PREFERENCE_FEEDBACK_LEDGER.md` (← `core/40_PREFERENCE_FEEDBACK_LEDGER.md`, only if changed)

## Notes

- The repo ZIP (`rebuild_os_github_ready_repo.zip`) is **archive only** — not ChatGPT Project knowledge (ZIPs are not indexed as knowledge).
- **Tasks/reminders are nudges only**, not the data store. Life signals live in `BRAIN_SNAPSHOT.md` and `REBUILD_OS_BRAIN.md` Section 35.
- Life Signals: weight only Mon/Wed/Fri mornings; in-chat meal checks active by default on Yellow/Green (external meal reminders optional); no calories; no moralizing; Red days stay light.

## Regenerating this pack

From the repo root:

```bash
bash build_all_in_one.sh    # regenerate REBUILD_OS_ALL_IN_ONE.md from canonical v3.3 files
bash build_chatgpt_pack.sh  # rebuild bundles + refresh the flattened copies in this folder
```

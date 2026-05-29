# ChatGPT Live Pack — Upload Guide
Version: v3.3 Life Signals

This folder is the **upload-ready set** for running Rebuild OS inside a ChatGPT Project on ChatGPT Plus. ChatGPT Projects is the **primary daily environment**. GitHub/Kiro remains the **source / archive / builder**.

The bundles here are **generated artifacts** built from the canonical source files by `build_chatgpt_pack.sh` (repo root). The source files in `core/` and `templates/` remain canonical — if they disagree with a bundle, the source wins. Re-run the build script after changing sources.

## What to upload into the ChatGPT Project (10 files)

1. `BRAIN_SNAPSHOT.md` — fast current-state starter (mutable)
2. `REBUILD_OS_BRAIN.md` — durable brain incl. Section 35 Life Signals (mutable)
3. `core/41_ACTIVE_PREFERENCE_PROFILE.md` — active preferences (mutable)
4. `core/40_PREFERENCE_FEEDBACK_LEDGER.md` — raw preference feedback (mutable, optional)
5. `core/00_PROJECT_INSTRUCTIONS.md` — canonical behavior rules
6. `core/21_FILE_LOADING_PRIORITY_GUIDE.md` — what to load/ignore
7. `platforms/CHATGPT_PROJECT_INSTRUCTIONS.md` — ChatGPT adapter
8. `CORE_OPERATING_MANUAL.md` — generated bundle of high-use core modules (incl. `core/44` Life Signals)
9. `TEMPLATES_BUNDLE.md` — generated bundle of high-use templates
10. `REBUILD_OS_ALL_IN_ONE.md` — full reference fallback (live files win)

This is well under the ChatGPT Plus per-project file cap (~20), leaving headroom.

## Project Instructions field

Paste the content of `platforms/CHATGPT_PROJECT_INSTRUCTIONS.md` into the Project's **Instructions** field (keep it concise; the full detail lives in the uploaded `core/00_PROJECT_INSTRUCTIONS.md`).

## Mutable files — re-upload when they change

ChatGPT cannot rewrite uploaded files automatically. Persistence is **manual re-upload**. After a night/weekly review or preference consolidation, re-upload whichever changed:

- `BRAIN_SNAPSHOT.md`
- `REBUILD_OS_BRAIN.md`
- `core/41_ACTIVE_PREFERENCE_PROFILE.md`
- `core/40_PREFERENCE_FEEDBACK_LEDGER.md` (only if changed)

## Notes

- The repo ZIP (`rebuild_os_github_ready_repo.zip`) is **archive only** — do not rely on it as ChatGPT Project knowledge (ZIPs are not indexed as knowledge).
- **Tasks/reminders are nudges only**, not the data store. Life signals live in `BRAIN_SNAPSHOT.md` and `REBUILD_OS_BRAIN.md` Section 35.
- Life Signals: weight is asked only Mon/Wed/Fri mornings; meals via gentle opt-in windows; no calories; no moralizing; Red days stay light.

## Regenerating this pack

From the repo root:

```bash
bash build_chatgpt_pack.sh
```

This rebuilds `CORE_OPERATING_MANUAL.md` and `TEMPLATES_BUNDLE.md` and refreshes the copied files in this folder from their canonical sources.

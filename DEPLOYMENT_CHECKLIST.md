# Rebuild OS — Deployment Checklist
Version: v3.5 GitHub Memory Router / Live-State Integration

Purpose: prevent wrong-file upload, duplicate rule loading, stale live-state routing, and repo-update drift.

## ChatGPT Project capacity note

Official OpenAI file-upload limits are sufficient for this package: ChatGPT Plus supports up to 20 files per Project, 512 MB per file, and a 2M-token limit for text/document files. The default Rebuild OS upload set is 9 files, so it fits inside the Project file-count limit.

If the UI shows a different limit, follow the UI and use the tight-limit priority order below.

## Before upload

- [ ] Source edits are merged to `main`.
- [ ] `core/46_GITHUB_MEMORY_ROUTER.md` exists.
- [ ] Old Win1/Win2/Zero/window labels are not used as live routing rules.
- [ ] `rebuild-os-live-state` repo exists and remains private.
- [ ] `buying-things` repo exists and remains private.
- [ ] Generated artifacts are current after final source edits, or clearly marked as pending regeneration.
- [ ] `REBUILD_OS_ALL_IN_ONE.md` is treated as fallback only.
- [ ] Normal live pack and all-in-one are not uploaded together.
- [ ] Mutable files are identified.

## Live-state repo expected files

Verify `thomas-shelby006/rebuild-os-live-state` contains:

- [ ] `README.md`
- [ ] `CURRENT_STATE.md`
- [ ] `MEMORY_ROUTER.md`
- [ ] `REBUILD_OS_BRAIN.md`
- [ ] `BUDGET_CURRENT.md`
- [ ] `DIARY_RECENT.md`
- [ ] `FUTURE_EVENTS.md`
- [ ] `PREFERENCE_PROFILE.md`
- [ ] `PREFERENCE_FEEDBACK_LEDGER.md`
- [ ] `STATE_LOG.md`

## Regenerate artifacts

Run from repo root after final source edits:

```bash
bash build_all_in_one.sh
bash build_chatgpt_pack.sh
```

Expected generated files:

- `REBUILD_OS_ALL_IN_ONE.md`
- `chatgpt_live_pack/CORE_OPERATING_MANUAL.md`
- `chatgpt_live_pack/TEMPLATES_BUNDLE.md`
- flattened live-pack copies

## Validate source files

```bash
grep -q "core/46_GITHUB_MEMORY_ROUTER.md" build_chatgpt_pack.sh
grep -q "GitHub Memory Router" core/46_GITHUB_MEMORY_ROUTER.md
grep -q "Start from live state" core/46_GITHUB_MEMORY_ROUTER.md
grep -q "rebuild-os-live-state" core/46_GITHUB_MEMORY_ROUTER.md
grep -q "CURRENT_STATE.md" core/46_GITHUB_MEMORY_ROUTER.md
grep -q "MEMORY_ROUTER.md" core/46_GITHUB_MEMORY_ROUTER.md
grep -q "BUDGET_CURRENT.md" core/46_GITHUB_MEMORY_ROUTER.md
grep -q "DIARY_RECENT.md" core/46_GITHUB_MEMORY_ROUTER.md
grep -q "FUTURE_EVENTS.md" core/46_GITHUB_MEMORY_ROUTER.md
grep -q "LIVE_STATE_EXPORT_FOR_MANUAL_COMMIT" core/46_GITHUB_MEMORY_ROUTER.md
grep -q "REPO UPDATE BLOCK" core/46_GITHUB_MEMORY_ROUTER.md
grep -q "buying-things" core/46_GITHUB_MEMORY_ROUTER.md
grep -q "Start from live state" platforms/CHATGPT_PROJECT_INSTRUCTIONS.md
grep -q "BUDGET_CURRENT.md" platforms/CHATGPT_PROJECT_INSTRUCTIONS.md
grep -q "DIARY_RECENT.md" platforms/CHATGPT_PROJECT_INSTRUCTIONS.md
grep -q "FUTURE_EVENTS.md" platforms/CHATGPT_PROJECT_INSTRUCTIONS.md
```

Manual check:

- [ ] `core/00_PROJECT_INSTRUCTIONS.md` contains live-state routing.
- [ ] `core/21_FILE_LOADING_PRIORITY_GUIDE.md` routes budget/diary/future-events/buying correctly.
- [ ] `README.md` describes v3.5 architecture.
- [ ] `chatgpt_live_pack/UPLOAD_README.md` includes v3.5 smoke tests.
- [ ] Old Win1/Win2/Zero/window labels are not active runtime rules.

## Validate generated artifacts after regeneration

```bash
grep -q "core/46_GITHUB_MEMORY_ROUTER.md" chatgpt_live_pack/CORE_OPERATING_MANUAL.md
grep -q "Start from live state" chatgpt_live_pack/CORE_OPERATING_MANUAL.md
grep -q "BUDGET_CURRENT.md" chatgpt_live_pack/CORE_OPERATING_MANUAL.md
grep -q "DIARY_RECENT.md" chatgpt_live_pack/CORE_OPERATING_MANUAL.md
grep -q "FUTURE_EVENTS.md" chatgpt_live_pack/CORE_OPERATING_MANUAL.md
grep -q "LIVE_STATE_EXPORT_FOR_MANUAL_COMMIT" chatgpt_live_pack/CORE_OPERATING_MANUAL.md
grep -q "REPO UPDATE BLOCK" chatgpt_live_pack/CORE_OPERATING_MANUAL.md
grep -q "Start from live state" REBUILD_OS_ALL_IN_ONE.md
grep -q "BUDGET_CURRENT.md" REBUILD_OS_ALL_IN_ONE.md
grep -q "DIARY_RECENT.md" REBUILD_OS_ALL_IN_ONE.md
grep -q "FUTURE_EVENTS.md" REBUILD_OS_ALL_IN_ONE.md
grep -q "core/45_SUPPLEMENT_ROUTINE_TRACKING.md" chatgpt_live_pack/CORE_OPERATING_MANUAL.md
grep -q "templates/SUPPLEMENT_CHECKIN.md" chatgpt_live_pack/TEMPLATES_BUNDLE.md
```

## Default ChatGPT Project upload

Upload from `chatgpt_live_pack/`:

- [ ] `BRAIN_SNAPSHOT.md`
- [ ] `REBUILD_OS_BRAIN.md`
- [ ] `core_41_ACTIVE_PREFERENCE_PROFILE.md`
- [ ] `core_40_PREFERENCE_FEEDBACK_LEDGER.md`, if needed
- [ ] `core_00_PROJECT_INSTRUCTIONS.md`
- [ ] `core_21_FILE_LOADING_PRIORITY_GUIDE.md`
- [ ] `platforms_CHATGPT_PROJECT_INSTRUCTIONS.md`
- [ ] `CORE_OPERATING_MANUAL.md`
- [ ] `TEMPLATES_BUNDLE.md`

Do not upload `REBUILD_OS_ALL_IN_ONE.md` with this default set.

## Tight-limit priority order

If the Project UI prevents uploading all default files, prioritize:

1. Project Instructions text from `platforms_CHATGPT_PROJECT_INSTRUCTIONS.md`
2. live-state repo access / `Start from live state`
3. `core_00_PROJECT_INSTRUCTIONS.md`
4. `core_21_FILE_LOADING_PRIORITY_GUIDE.md`
5. `CORE_OPERATING_MANUAL.md`
6. `TEMPLATES_BUNDLE.md`
7. fallback `BRAIN_SNAPSHOT.md`
8. fallback `REBUILD_OS_BRAIN.md`
9. preference files only if needed

If this still does not fit, use fallback single-file mode with `REBUILD_OS_ALL_IN_ONE.md` alone.

## Project Instructions

Paste the contents of:

```text
chatgpt_live_pack/platforms_CHATGPT_PROJECT_INSTRUCTIONS.md
```

into the ChatGPT Project Instructions field.

## Fallback upload strategy

Use only if normal live pack cannot be used:

- [ ] Upload `REBUILD_OS_ALL_IN_ONE.md` alone.
- [ ] Do not upload normal live pack at the same time.

## Smoke tests

Startup:

```text
Start from live state
```

Expected:
- reads `CURRENT_STATE.md` and `MEMORY_ROUTER.md`;
- checks freshness;
- asks only current capacity, next obligation, and first action if stale;
- no full handoff request.

Budget:

```text
I spent ₹250 on lunch today.
```

Expected:
- routes to `BUDGET_CURRENT.md`;
- writes directly if available, otherwise outputs `LIVE_STATE_EXPORT_FOR_MANUAL_COMMIT`.

Diary:

```text
Something meaningful happened today: [short event].
```

Expected:
- routes to `DIARY_RECENT.md`;
- captures compact meaning and follow-up if needed;
- no long interrogation.

Future event:

```text
I need to attend a wedding on [date].
```

Expected:
- routes to `FUTURE_EVENTS.md`;
- captures prep/day-of reminder context;
- surfaces only near-term event reminders.

Buying:

```text
Should I buy/reorder [item]?
```

Expected:
- reads `buying-things/CONTEXT.md` and `decisions.md` before recommending;
- uses `REPO UPDATE BLOCK` if a buying-domain write is needed but not performed.

Night review:

```text
Night review minimum:
Capacity today: Yellow
One thing done: attended scrum
One thing missed: PM prep
Tomorrow's first action: breakfast before scrum
```

Expected:
- classify the miss;
- update live state or fallback snapshot;
- include budget/diary/future-events only if provided;
- no more than two signal questions;
- no report-card tone.

## First 7 days

- [ ] Do not add features unless a rule blocks use today.
- [ ] Capture system issues as System Notes.
- [ ] Use `FIRST_REAL_USE_SCRIPT.md`.
- [ ] Review after 7 real-use days.

## Mutable state update

When GitHub live state is available, write current mutable state there.

If using uploaded fallback files only, after night/weekly review re-upload only files that changed:

- [ ] `BRAIN_SNAPSHOT.md`
- [ ] `REBUILD_OS_BRAIN.md`
- [ ] `core_41_ACTIVE_PREFERENCE_PROFILE.md`, if changed
- [ ] `core_40_PREFERENCE_FEEDBACK_LEDGER.md`, if changed

## Future deployment / release checklist

Use this for future PRs before merging to main:

- [ ] generated artifacts regenerated
- [ ] smoke tests pass
- [ ] changed files reviewed
- [ ] live-state routing tested
- [ ] Sundar explicitly approves final merge

# Rebuild OS — Deployment Checklist
Version: v3.4 pre-use enablement

Purpose: prevent wrong-file upload, duplicate rule loading, and setup drift.

## ChatGPT Project capacity note

Official OpenAI file-upload limits are sufficient for this package: ChatGPT Plus supports up to 20 files per Project, 512 MB per file, and a 2M-token limit for text/document files. The default Rebuild OS upload set is 9 files, so it fits inside the Project file-count limit.

If the UI shows a different limit, follow the UI and use the tight-limit priority order below.

## Before upload

- [ ] PR #3 source files are reviewed.
- [ ] Generated artifacts are regenerated after final source edits.
- [ ] `REBUILD_OS_ALL_IN_ONE.md` is treated as fallback only.
- [ ] Normal live pack and all-in-one are not uploaded together.
- [ ] Repo remains private.
- [ ] Mutable files are identified.

## Regenerate artifacts

Run from repo root:

```bash
bash build_all_in_one.sh
bash build_chatgpt_pack.sh
```

Expected generated files:

- `REBUILD_OS_ALL_IN_ONE.md`
- `chatgpt_live_pack/CORE_OPERATING_MANUAL.md`
- `chatgpt_live_pack/TEMPLATES_BUNDLE.md`
- flattened live-pack copies

## Validate generated artifacts

```bash
grep -q "PM_ROADMAP_INTAKE" chatgpt_live_pack/TEMPLATES_BUNDLE.md
grep -q "Active PM Roadmap" chatgpt_live_pack/CORE_OPERATING_MANUAL.md
grep -q "Agent coordination" REBUILD_OS_ALL_IN_ONE.md
grep -q "Tools-down work mode" REBUILD_OS_ALL_IN_ONE.md
grep -q "PM_REBUILD_OS_HANDOFF" REBUILD_OS_ALL_IN_ONE.md
grep -q "FIRST_REAL_USE_SCRIPT" REBUILD_OS_ALL_IN_ONE.md
grep -q "DEPLOYMENT_CHECKLIST" REBUILD_OS_ALL_IN_ONE.md
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
2. `BRAIN_SNAPSHOT.md`
3. `REBUILD_OS_BRAIN.md`
4. `core_00_PROJECT_INSTRUCTIONS.md`
5. `core_21_FILE_LOADING_PRIORITY_GUIDE.md`
6. `CORE_OPERATING_MANUAL.md`
7. `TEMPLATES_BUNDLE.md`
8. `core_41_ACTIVE_PREFERENCE_PROFILE.md`
9. `core_40_PREFERENCE_FEEDBACK_LEDGER.md`, only if needed

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

Morning test:

```text
Hi. It is morning in India. I just woke up and have not eaten yet.
```

Expected:

- morning mode;
- capacity question;
- one food/routine anchor;
- no long form.

Night test:

```text
Night review minimum:
Capacity today: Yellow
One thing done: attended scrum
One thing missed: PM prep
Tomorrow's first action: breakfast before scrum
```

Expected:

- classify the miss;
- update snapshot fields;
- no more than two signal questions;
- no report-card tone.

## First 7 days

- [ ] Do not add features unless a rule blocks use today.
- [ ] Capture system issues as System Notes.
- [ ] Use `FIRST_REAL_USE_SCRIPT.md`.
- [ ] Review after 7 real-use days.

## Mutable file re-upload

After night/weekly review, re-upload only files that changed:

- [ ] `BRAIN_SNAPSHOT.md`
- [ ] `REBUILD_OS_BRAIN.md`
- [ ] `core_41_ACTIVE_PREFERENCE_PROFILE.md`, if changed
- [ ] `core_40_PREFERENCE_FEEDBACK_LEDGER.md`, if changed

## Do not merge until

- [ ] Generated artifacts are regenerated.
- [ ] Smoke tests pass.
- [ ] PR #3 is reviewed.
- [ ] Sundar explicitly says final approved and instructs merge.

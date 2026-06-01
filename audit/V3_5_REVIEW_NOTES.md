# v3.5 Review Notes — GitHub Memory Router / Live-State Integration

Status: merged to main.

Branch: `v3-5-memory-router-budget-diary`
Base: v3.4 Coherence and Deployment Hardening

## Goal

Wire Rebuild OS to use GitHub live-state memory without breaking the existing daily operating system.

v3.5 adds stable routing for:
- current live state;
- budget/spending tracking;
- personal diary / recent life memory;
- future events and reminders;
- buying decisions through `buying-things`;
- stable system-source changes through `rebuildOS` only.

## User-requested changes covered

- Remove old Win1 / Win2 / Zero / Window 1 / Window 2 labels from live routing behavior.
- Continue Phase 2 GitHub memory-router work.
- Treat `rebuild-os-live-state` as the mutable runtime memory repo.
- Track spending as it is logged and identify patterns later.
- Maintain diary/recent-life memory with recent four weeks active and older detail archived by date.
- Maintain future events with prep/day-of reminder logic.
- Keep a repo/file router so the assistant knows what to read/write.
- Update as-you-go for meaningful entries, and reconcile at night review.
- Avoid repo churn for every message.
- Preserve job-first, Red-day-light, PM-one-track, supplement-inactive, privacy, and fallback-block rules.

## Source files changed

- `core/46_GITHUB_MEMORY_ROUTER.md` added.
- `core/00_PROJECT_INSTRUCTIONS.md` updated for live-state routing and old-label removal.
- `core/21_FILE_LOADING_PRIORITY_GUIDE.md` updated for GitHub/domain loading.
- `platforms/CHATGPT_PROJECT_INSTRUCTIONS.md` updated for v3.5 Project behavior.
- `build_chatgpt_pack.sh` registers `core/46_GITHUB_MEMORY_ROUTER.md`.
- `README.md` updated for v3.5 architecture.
- `chatgpt_live_pack/UPLOAD_README.md` updated with v3.5 live-state setup and smoke tests.
- `VERSION.md` updated to v3.5.
- `DEPLOYMENT_CHECKLIST.md` updated for v3.5 validation.

## Existing live-state repo dependencies

The branch assumes `thomas-shelby006/rebuild-os-live-state` already contains:
- `CURRENT_STATE.md`
- `MEMORY_ROUTER.md`
- `REBUILD_OS_BRAIN.md`
- `BUDGET_CURRENT.md`
- `DIARY_RECENT.md`
- `FUTURE_EVENTS.md`
- `PREFERENCE_PROFILE.md`
- `PREFERENCE_FEEDBACK_LEDGER.md`
- `STATE_LOG.md`

The branch assumes `thomas-shelby006/buying-things` already contains its buying context and decision rules.

## Internal review

### Strengths
- Clear separation between stable rules and mutable personal memory.
- Budget, diary, and future-event routing are explicit and lightweight.
- Old Win1/Win2 labels are demoted to historical implementation notes.
- The branch preserves key Rebuild OS protections: job stability first, Red-day minimum mode, PM one-track, supplement inactive until activation, and privacy redaction.
- Read-before-answer and fallback-block rules reduce hallucinated persistence.

### Risks
- Generated artifacts were regenerated before merge, but deployment should still verify headers and upload-package consistency.
- `core/00_PROJECT_INSTRUCTIONS.md` was rewritten in compressed form. It should be reviewed for accidental loss of useful nuance from v3.4.
- `CHANGELOG.md` still needs a clean v3.5 top entry if final merge is approved.
- The repo visibility/privacy setting should be checked separately before storing personal data.

### Required before deployment
- Validate grep checks in `DEPLOYMENT_CHECKLIST.md`.
- Review deployable upload package for stale generated headers.
- Confirm `rebuild-os-live-state` and `buying-things` remain private.

## Review focus for another AI

1. Does `core/46_GITHUB_MEMORY_ROUTER.md` cover all requested routing without becoming too heavy?
2. Did `core/00_PROJECT_INSTRUCTIONS.md` lose any critical daily-use behavior from v3.4?
3. Does `core/21_FILE_LOADING_PRIORITY_GUIDE.md` optimize model speed/context use?
4. Is the ChatGPT adapter under control and usable as Project Instructions?
5. Are budget, diary, and future-events stored in the right place?
6. Are privacy and Red-day protections strong enough?
7. Are generated artifacts stale or contradictory?
8. Is anything still using Win1/Win2 as a live routing rule?
9. Is this safe to merge after artifact regeneration and validation?

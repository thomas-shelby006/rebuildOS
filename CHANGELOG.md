# Changelog

## v3.3 Life Signals — 2026-05-29

Added, at Sundar's explicit request, active life-signal tracking + time-aware companion behavior, and the ChatGPT Live Pack hybrid packaging.

- Promoted Life Signals from deferred design into the active system: new `core/44_LIFE_SIGNALS_AND_COMPANION_MODE.md`.
- `REBUILD_OS_BRAIN.md`: new Section 35 Life Signals (bounded rolling window — detailed current week, summarized recent weeks, compressed older months); Handoff renumbered to Section 36.
- `BRAIN_SNAPSHOT.md`: operational compact `Signals:` line (date/day, day-quality, sleep, meals, movement, mood/energy, weight M/W/F, risk/pattern), overwritten daily — never an append-only log.
- `core/00_PROJECT_INSTRUCTIONS.md` Section 7A made active: time-aware (Asia/Kolkata) mode inference, weight M/W/F morning ask, gentle meal-window checks, casual `log:` capture, proactive pattern detection, Red-day exemption.
- Templates updated for signals: MORNING_CHECKIN, MIDDAY_ANCHOR_CHECK, NIGHT_REVIEW, WEEKLY_REVIEW, START_TODAY_CHECK, ROADBLOCK_CHECK. New: `templates/LIFE_SIGNAL_CAPTURE.md`, `templates/WEIGHT_CHECK.md`.
- `core/18_COMMAND_MENU.md`: new Life signals commands (`log:`, `life update:`, `signals`, `weight check`, `meal check`, `how was my week?`, `pattern check`).
- Reminders: `core/16`, `core/25`, `templates/REMINDER_SETUP` add weight M/W/F + opt-in gentle meal windows; reminders are nudges only.
- ChatGPT Live Pack: new `chatgpt_live_pack/` with generated `CORE_OPERATING_MANUAL.md` + `TEMPLATES_BUNDLE.md` bundles, curated copies, and `UPLOAD_README.md`. Source files remain canonical; bundles are generated artifacts.
- Loading/platform/docs updated: `core/21`, `platforms/CHATGPT_PROJECT_INSTRUCTIONS.md`, `README.md`, `FEATURE_COMPLETION_MATRIX.md`, `REBUILD_OS_ALL_IN_ONE.md`.
- Preserved hard rules: English-only, strict but non-shaming, no therapist claim, no romantic/sexual framing, no heavy escalation, PM as one track, latest explicit instruction wins. No source files removed. No calories/macros; no food/weight moralizing; Red days stay light.

---


## v3.2.2 Snapshot Mini-Refresh Patch — 2026-05-28

- Applied final Claude deployment review.
- Updated `core/42_FIRST_WEEK_ROADBLOCK_PLAYBOOK.md` Roadblock 2 so stale brain/snapshot mini-refreshes immediately write back to `BRAIN_SNAPSHOT.md`.
- Preserved deployment lock: no new features, no system redesign, only a true continuity fix.

---


## v3.0 Final — 2026-05-28

Finalized the Rebuild OS package for first real-use cycle.

- Feature set frozen for initial use.
- Added `FINALIZATION_NOTE.md` and `FEATURE_COMPLETION_MATRIX.md`.
- Cleaned README into final setup/use instructions.
- Updated platform adapters to v3.0 Final.
- Moved old audit review artifacts into `audit/history/`.
- Kept preference persistence loop complete: capture → ledger → consolidate → active profile → export → re-upload.
- Kept brain/snapshot continuity complete: snapshot-first load, freshness check, night/weekly writeback, handoff continuity.
- Preserved Sundar's direct preferences and no-heavy-escalation normal-operation rule.

No new feature additions recommended before 7 days of real use.

---

# Changelog

## v2.4 — Preference Persistence Hardening

- Added explicit preference export blocks directly to weekly review consolidation.
- Linked `templates/PREFERENCE_EXPORT.md` from command menu, project instructions, consolidation, and file-loading priority.
- Added defined `Preference status` output.
- Updated mid-session PF capture to tell Sundar to say `Capture preference` at night review or explicit update.
- Added captured-but-not-appended rule to prevent PF blocks from being lost in chat history.
- Changed preference export state in the brain from numeric `0` to clearer yes/no.
- Updated validation and audit notes for the adaptive preference persistence loop.


## v2.2 — Adaptive Preference Layer

- Added `core/40_PREFERENCE_FEEDBACK_LEDGER.md` for raw preference feedback capture.
- Added `core/41_ACTIVE_PREFERENCE_PROFILE.md` as a small high-priority active personalization file.
- Added `templates/PREFERENCE_CONSOLIDATION.md` for weekly 3-5 minute preference consolidation.
- Updated precedence rules so current explicit Sundar instructions win, active preferences override package defaults, and raw feedback stays inactive until consolidated.
- Added preference overload protection to System Load Control.
- Added preference commands to Command Menu.
- Updated File Loading Priority Guide: active profile is Tier 0, raw ledger is loaded only during capture/consolidation.
- Added optional system feedback capture to Night Review and preference consolidation to Weekly Review.
- Updated Brain and Brain Template with Active Preference Profile Summary.
- Preserved direct preferences: English output, latest update wins, strict non-shaming tone, PM as one track, and no heavy crisis/escalation framing in normal operation.


## v2.1 — Routing, Timesheet Capture, Write-off Week, and Transition Mode

- Updated state router to point to dedicated technical, sleep, interview, transition, and shame-bank protocols.
- Added timesheet capture to post-scrum and midday anchor templates.
- Added Red Night minimum output so bad-day review stays short.
- Added write-off week protocol for consistently bad weeks.
- Added weekly one honest question to minimum weekly review.
- Added one non-work moment to Green night review.
- Added `core/39_TRANSITION_MODE.md` and `templates/TRANSITION_MODE_CHECK.md`.
- Updated README, first-run prompt, file-loading guide, command menu, brain files, platform adapters, source map, all-in-one file, and audit files.
- Preserved direct preferences: English output, latest update wins, strict non-shaming tone, PM as one track, and no heavy crisis/escalation framing in normal operation.


## v2.0 — Sleep Anchor, Technical Work, Gym Restart, Interview Mode, and Usability Fixes

- Rebuilt Claude/ChatGPT platform adapters as coherent v2.0 files.
- Rebuilt `templates/MORNING_CHECKIN.md` with Red/Yellow/Green output tiers; Red mornings now get 3–4 fields only.
- Added `core/35_SLEEP_ANCHOR_CORRECTION_PROTOCOL.md` and `templates/SLEEP_ANCHOR_CHECK.md`.
- Added `core/36_TECHNICAL_WORK_BLOCK_PROTOCOL.md` and `templates/TECHNICAL_BLOCKER_CHECK.md`.
- Added `core/37_GYM_RESTART_PROTOCOL.md` and `templates/GYM_RESTART_CHECK.md`.
- Added `core/38_INTERVIEW_DAY_MODE.md` and `templates/INTERVIEW_DAY_CHECK.md`.
- Added minimum weekly review output for bad/low-capacity weeks.
- Updated project instructions, command menu, implementation-intention anchors, file-loading priority, brain template, live brain, platform adapters, and source map.
- Preserved direct preferences: latest update wins, English output, strict non-shaming tone, no heavy crisis/escalation framing in normal operation.


## v1.9 — Work Visibility, Identity Proof, Engagement, and PM Progression

- Added `core/30_IDENTITY_PROOF_AND_CELEBRATION.md`.
- Added `core/31_ENGAGEMENT_TRACKING.md`.
- Added `core/32_PM_PROGRESSION_TRACKER.md`.
- Added `core/33_WORK_VISIBILITY_AND_COMMUNICATION_AVOIDANCE.md`.
- Added templates:
  - `WORK_VISIBILITY_CHECK.md`
  - `COMMUNICATION_REENTRY.md`
  - `ENGAGEMENT_CHECK.md`
  - `PM_STAGE_CHECK.md`
  - `LEDGER_CLEANUP.md`
  - `IDENTITY_PROOF.md`
- Removed inaccurate shame narrative inaccurate AI-dependency shame wording and replaced it with actual concerns around skill confidence / being behind.
- Expanded social anchors into a build-the-anchor protocol.
- Simplified Motivational Interviewing into a daily-use readiness rule.
- Added ledger aging, clutter cleanup, active commitment limits, and archive rules.
- Updated night review, weekly review, command menu, file loading priority, brain files, platform adapters, source map, and audit files.
- Promoted work visibility/communication avoidance to Tier 0 because it is a high job-risk area.

## v1.7 — Review Lab, Reminder Automation, and Friction Design

- Added research-and-review lab for external feedback handling and upgrade discipline.
- Added automated check-in schedules for check-in/reminder strategy.
- Added just-in-time intervention rules for risk-moment interventions.
- Added Motivational Interviewing/readiness protocol for resistance/ambivalence.
- Added environment and friction design for repeated failure/environment changes.
- Added behavior experiments and system tuning.
- Added templates for external review, scheduled check-ins, friction audits, readiness checks, and behavior experiments.
- Updated brain sections for environment rules and active experiments.
- Updated file loading priority, command menu, source map, quality audit, and all-in-one file.

## v1.6 — Natural Language, Capacity Carryover, and Green Day Support

- Added natural-language morning entry as default.
- Added Green Day mode and good-enough ceiling.
- Added capacity mode carryover through morning, post-scrum, midday, stuck, re-entry, and night review.
- Added commitment carry-count and avoid-count fields.
- Added energy debt and avoidance tax system.
- Added pattern resolution/archive criteria.
- Added relapse / streak-collapse mode.
- Added file loading priority guide.
- Expanded strictness-with-self-compassion scripts.
- Added post-scrum if-then rule.
- Added "what I learned today" PM/career competence field.
- Expanded reminder/check-in and automation playbook.
- Regenerated all-in-one file and project adapters.

## v1.5
- Added reminder/check-in system, automation playbook, command menu, social anchors/body doubling, and strictness-with-self-compassion.

## v1.4
- Added adaptive day engine, state router, pattern memory, weekly stability score, implementation intentions, system load control.

## v1.3 and earlier
- Stabilized core Rebuild OS structure, commitment tracking, brain template, platform adapters, and review/audit process.


## v2.3 — Preference Export and Persistence Patch
- Added explicit export/re-upload loop for adaptive preferences.
- Added `templates/PREFERENCE_EXPORT.md`.
- Added immediate PF capture block format for mid-session feedback.
- Added preference snapshot fields to handoff.
- Added profile confidence: low / building / stable.
- Added confirmation mechanism for inferred preferences.
- Added conflict scan before promotion.
- Added stale raw-entry rule: raw entries older than 21 days require mini-consolidation.
- Added `Export preferences`, `Capture preference`, `Show active preferences`, and `Preference status` commands.
- Updated brain/template with profile confidence and export status.


## v2.5 — Freshness, Continuity, and Usability Patch (2026-05-28)
- Added `BRAIN_SNAPSHOT.md` as a fast-loading, low-energy session starter.
- Added session-start freshness check: if brain/snapshot is stale by 48+ hours, re-anchor with three fields.
- Made brain Last updated a real field to refresh at night/weekly reviews.
- Added PM stage writeback rule and PM stage last-updated field.
- Added sleep correction graduation/maintenance criteria.
- Moved daily learning out of default night review; weekly review now synthesizes learning/output.
- Split command menu into core daily commands and specialist commands.
- Demoted `core/05_DAILY_PLANNING.md` to reference-only to reduce duplicate active planning rules.
- Marked work visibility templates as shorthand views; canonical logic remains in file 33.
- Added optional system-note exit and recovery streak counters as one-week test items.


## v2.6 — Snapshot Writeback and Continuity Patch (2026-05-28)
- Added canonical filled example and required writeback fields to `BRAIN_SNAPSHOT.md`.
- Connected handoff to snapshot-first loading.
- Fixed `core/00_PROJECT_INSTRUCTIONS.md` version label and added snapshot consistency rules.
- Added reference-only banner directly to `core/05_DAILY_PLANNING.md`.
- Made night review explicitly update snapshot capacity, first action, commitments, and timesheet/status.
- Added automatic two-domain streak update rule for work visibility and night review.
- Reduced recovery streak tracking from four domains to two test signals.
- Replaced system-note exit log table with one lightweight field.
- Updated weekly review with snapshot writeback and streak-review rules.


## v3.1 — Launch Hardening Patch

Purpose: protect the first week of real use without adding a new method stack.

Added:
- `core/42_FIRST_WEEK_ROADBLOCK_PLAYBOOK.md`
- `core/43_LAUNCH_RUNBOOK.md`
- `templates/START_TODAY_CHECK.md`
- `templates/ROADBLOCK_CHECK.md`

Changed:
- Cleaned duplicate late-section headings in `core/00_PROJECT_INSTRUCTIONS.md`.
- Added first-week reminder starter guidance.
- Added launch hardening commands to command menu.
- Added loading guidance for launch-hardening files.
- Updated README and first-run prompt.

Rule preserved:
- No further feature additions before 7 real-use days unless a fix is required to make the system usable.

## v3.2 Deployment Ready

Final deployment polish pass.

- Unified active version labels.
- Added `DEPLOYMENT_LOCK.md`.
- Rewrote README for setup and first-use deployment.
- Clarified first-run flow and 7-day feature freeze.
- Added stronger setup checklist and upload order.
- Verified active file references and regenerated all-in-one file.

## v3.2.1 Cosmetic Startup Patch — 2026-05-28

- Added one line to `FIRST_RUN_PROMPT.md` telling the assistant to load `core/00_PROJECT_INSTRUCTIONS.md` if project instructions are not already loaded.
- Added one README line explaining `REBUILD_OS_ALL_IN_ONE.md` as the single-file fallback.
- No behavior changes. No new features. Deployment lock remains active.


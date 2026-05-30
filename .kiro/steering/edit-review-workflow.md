---
inclusion: always
---

# Rebuild OS — Controlled Edit & Review Workflow

This steering file defines how Kiro makes changes to this repository and how those changes are made reviewable by ChatGPT.

## How Kiro should act on instructions

- When Sundar gives a direct instruction to change repo/files, accept and implement it — do not stay in review-only mode.
- Kiro may push back once if the request looks risky, conflicting, privacy-sensitive, or likely to break the system.
- If Sundar confirms after that single pushback, proceed with his instruction unless it is technically impossible or clearly unsafe.
- Keep edits supervised and transparent: show what changed through diffs, file lists, and summaries.

## Branch + review flow

Use this for every change set:

1. Make changes on a feature branch, never directly on `main`.
2. Commit with a clear, specific message.
3. Push the branch to GitHub.
4. Report back: branch URL, commit SHA(s), changed files, and a short summary.
5. Open or update a PR for review.
6. Do not merge to `main` unless Sundar explicitly says the final version is approved and instructs merge.

## Merge gate

Implementation complete does not mean merge approved.

- PRs are review artifacts.
- ChatGPT and Kiro can patch PR branches.
- `main` changes only after explicit final merge approval from Sundar.
- If Sundar says to keep improving or reviewing, keep the PR open.

## Agent Coordination and Fallback Protocol

### Roles

- Sundar = final approver. Only Sundar authorizes merge to `main`.
- ChatGPT = orchestrator, reviewer, decision logic, and fallback patcher.
- Kiro Win1 = default Rebuild OS implementer/writer.
- Kiro Win2 = PM transition plan owner in the `pm-transition-plan` repo.
- PM repo = roadmap source.
- Rebuild OS = accountability and execution system.

### Implementation authority

1. For Rebuild OS repo changes, Win1 gets the first implementation attempt.
2. Win1 retries with available tools and alternate safe methods: edit tools, scripted edits, full-file rewrite after fresh re-read, and MCP/Git tools when available.
3. If Win1 fails multiple clean attempts because write/exec tools are unavailable or blocked, ChatGPT may take over direct GitHub patching.
4. ChatGPT takeovers must preserve Win1's latest validated plan/spec. Do not silently redesign.
5. No one merges without Sundar explicitly saying final approved and instructing merge.
6. `main` must not be updated directly.
7. PRs are review artifacts, not final approval.

### Source-of-truth hierarchy

Use this hierarchy to prevent override drift:

1. Latest explicit Sundar instruction wins.
2. Rebuild OS canonical sources win over generated bundles/artifacts: root live files, `core/`, `templates/`, and `platforms/`.
3. PM roadmap repo owns PM plan content.
4. Rebuild OS owns accountability and execution tracking.
5. ChatGPT prompts are orchestration/review instructions, not permanent canonical rules unless implemented into source files.
6. Win2 handoff is input to Rebuild OS, not a replacement for Rebuild OS rules.
7. If two instructions conflict, do not silently choose. Record the conflict, apply this hierarchy, and write the chosen resolution into the relevant source file and/or System Notes.

### No contradictory generated content

Generated bundles must not carry rules that contradict canonical sources. On conflict, regenerate from source; source wins.

## How ChatGPT reviews Kiro's changes

- Kiro pushes to a feature branch and shares the branch URL + summary.
- Sundar shares that branch URL / diff with ChatGPT for review.
- ChatGPT is the main Rebuild OS orchestrator/reviewer and may patch PR branches directly when Win1 fallback conditions are met.

## Privacy gate

- This repo contains personal life/behavioral data.
- If the repo is public, warn Sundar once before pushing personal files.
- If Sundar confirms to proceed anyway, follow his decision.

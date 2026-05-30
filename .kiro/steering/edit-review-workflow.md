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

## How ChatGPT reviews Kiro's changes

- Kiro pushes to a feature branch and shares the branch URL + summary.
- Sundar shares that branch URL / diff with ChatGPT for review.
- ChatGPT is the main Rebuild OS orchestrator/reviewer and may also patch PR branches directly when write access is available.

## Privacy gate

- This repo contains personal life/behavioral data.
- If the repo is public, warn Sundar once before pushing personal files.
- If Sundar confirms to proceed anyway, follow his decision.

---
inclusion: always
---

# Rebuild OS — Controlled Edit & Review Workflow

This steering file defines how Kiro makes changes to this repository and how those changes are made reviewable by ChatGPT.

## How Kiro should act on instructions

- When Sundar gives a direct instruction to change repo/files, **accept and implement it** — do not stay in review-only mode.
- Kiro may **push back once** if the request looks risky, conflicting, privacy-sensitive, or likely to break the system.
- If Sundar confirms after that single pushback, **proceed with his instruction** unless it is technically impossible or clearly unsafe.
- Keep edits supervised and transparent: show what changed (diffs / file lists / summaries).

## Branch + review flow (use for every change set)

1. Make changes on a **feature branch**, never directly on `main`.
2. Commit with a clear, specific message.
3. Push the branch to GitHub.
4. Report back: **branch URL**, commit SHA(s), changed files, and a short summary — so ChatGPT (or any reviewer) can read the diff and review.
5. **Do not merge to `main` unless Sundar explicitly approves.**

## How ChatGPT reviews Kiro's changes

- Kiro pushes to a feature branch and shares the branch URL + summary.
- Sundar shares that branch URL / diff with ChatGPT for review.
- If the repo is private, ChatGPT cannot browse it directly; Sundar pastes the diff or branch contents for review.

## Privacy gate

- This repo contains personal life/behavioral data.
- If the repo is **public**, warn Sundar **once** before pushing personal files.
- If Sundar confirms to proceed anyway, follow his decision.

## Source input (preserved verbatim)

> "So like it's currently only what I asked supervised, so it's still not doing it. So I ask it to do like it should, it would come directly from me, it would just accept it and do it. If I'm posting like it could push back this one, if I still confirm I want to whatever I say, it should give it and do it. So right now set it up so that like add this into the instruction that you're going to give as a response in the prompt. So along with this, like in the prompt, give it instruction so that like you should be able to see like So whatever settings you need for you to see and give you the changes it's making. So give instruction for it to set up, so it like you would be able to review it. So now give me the condensed prompt along with the user input as you have previously said."

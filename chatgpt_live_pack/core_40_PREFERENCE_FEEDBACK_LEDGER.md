# Preference Feedback Ledger
Version: v3.2 Deployment Ready

## Purpose
This file captures raw feedback from Sundar about how Rebuild OS should behave.

It is **not** an active behavior file. It is source material for weekly preference consolidation.

Use this file to preserve feedback without letting every passing reaction rewrite the system.

## Core rule
Feedback must land somewhere immediately, or it will be forgotten.

When Sundar gives a preference signal, the assistant should produce a short `PF` capture block in the chat and explicitly remind: say `Capture preference` at night review or explicit update to append it here.

## What counts as preference feedback
Capture feedback when Sundar says something like:

- "this worked"
- "that helped"
- "too heavy"
- "this is too much"
- "be stricter"
- "don't go soft on me"
- "don't ask this again"
- "skip this"
- "I don't like this format"
- "this felt right"
- "change how you do X"
- "stop doing Y"
- "more of Z"

## What does not go here
Do not capture these as preferences:

- questions → answer or route normally
- tasks/commitments → commitment ledger
- bad-day complaints → pattern memory or night review
- life context updates → Rebuild OS Brain / personal context
- requests to avoid all accountability during avoidance → treat as avoidance, not preference

## Immediate capture behavior
When a preference signal is detected mid-session, respond briefly and include this block:

```md
Captured preference signal:
PF-[next]
Context: [morning/post-scrum/stuck/night/weekly/system/general]
Type: [worked/too-heavy/be-stricter/skip-this/change-this/don't-do-this/more-of-this/unclear]
Text: "[Sundar's exact words or closest verbatim]"
Next step: say `Capture preference` at night review or explicit update to append this to the Preference Feedback Ledger.
```

Then continue the real task. Do not start a system redesign unless Sundar explicitly asks and no important action is pending.

## Captured-but-not-appended rule
A PF block is not durable until it is appended to this ledger.

If any PF block was produced since the last night review:
1. Night review must include a quick check: `Any captured preference signals to append?`
2. If yes, append the PF entry before ending the review.
3. If Sundar is on a Red day, append only the PF entry and do not run consolidation.
4. Consolidation remains weekly-only unless Sundar explicitly asks.

## Entry format
Use this format for each raw feedback item:

```md
### PF-000
Date:
Session context: morning / post-scrum / stuck / re-entry / night review / weekly review / system review / general
Feedback type: worked / too-heavy / be-stricter / skip-this / change-this / don't-do-this / more-of-this / unclear
Feedback text: ""
Triggered by: file/protocol/template/assistant behavior
Applies when: global / Red morning / Yellow day / Green day / stuck / shame / work / PM / night review / weekly review / other
Stability origin: normal / Red day / relapse / write-off week / unknown
Status: raw / reviewed / promoted / archived / rejected / held
Decision note:
```

## Ledger cap and stale-entry rule
Maximum raw entries before consolidation: **30**.

If this ledger reaches 30 raw/unreviewed entries:

1. Do not accept more preference changes as active rules.
2. Capture only urgent direct instructions for the current session.
3. Force preference consolidation at the next weekly review.
4. If Sundar is trying to keep editing the system while work is pending, trigger the anti-avoidance rule.

Also run a mini-consolidation if any raw entry is older than **21 days**. Stale raw feedback is more dangerous than a large ledger because it loses context.

## Low-stability origin caution
Feedback captured during Red days, relapse mode, or write-off weeks may still be real, but it should not automatically become a permanent rule.

Mark it as `Stability origin: Red day / relapse / write-off week` and require confirmation before promotion unless Sundar states it as a clear direct preference later during a stable period.

## Export dependency
This ledger only matters across sessions if it can be exported and re-uploaded.

After weekly consolidation, run the export step in `templates/PREFERENCE_CONSOLIDATION.md` or the command `Export preferences` from `core/18_COMMAND_MENU.md`.

## Current raw entries
_None yet._

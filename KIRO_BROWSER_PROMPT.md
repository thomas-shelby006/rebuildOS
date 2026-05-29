# Prompt to Use in Kiro Browser

Use this after connecting/opening this GitHub repository in Kiro.

```text
Review this Rebuild OS repository.

Use repository files as context. If available, also use `.kiro/steering/rebuild-os-review.md`.

Do not edit yet.

Goal:
Confirm whether this Rebuild OS package is ready for ChatGPT Plus primary deployment and identify only true blockers or small deployment polish.

Context:
- ChatGPT Plus Project is the primary daily home.
- Kiro is only for package review/editing, not daily companion use.
- Deployment lock is active: no new features before 7 real-use days unless there is a true blocker.
- Preserve all direct user preferences encoded in the files.

Check:
1. Startup path: README, FIRST_RUN_PROMPT, BRAIN_SNAPSHOT, REBUILD_OS_BRAIN, core/00, core/21.
2. ChatGPT Project setup and file-limit strategy.
3. Red/low-energy usability.
4. Work visibility/timesheet reliability.
5. Preference persistence and export/re-upload loop.
6. Handoff/new-thread continuity.
7. Broken references, stale labels, contradictions, duplicate active rules.

Output:
- Ready / not ready verdict
- True blockers
- Minor polish
- Exact files to change
- Do not change yet

Do not propose new features unless they fix a deployment blocker.
```

If Kiro gives a reasonable review and you want it to edit, use:

```text
Proceed with supervised edits only. Make the smallest safe changes. Show diffs before finalizing. Do not add new features. Do not rewrite the package.
```

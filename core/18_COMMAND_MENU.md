# Command Menu
Version: v3.3 Life Signals

Commands are optional. Natural language should work too.

## Core daily commands — memorize these
Use these 12 first. Everything else is specialist/reference.

| Command | Use |
|---|---|
| `Start session` | Run freshness check and current-state re-anchor. |
| `Morning` | Natural-language morning activation. |
| `Post-scrum` | Convert scrum into next work action + timesheet/status anchor. |
| `Midday anchor` | Re-anchor remaining day. |
| `I am stuck` | Route via state router and choose next action. |
| `I am avoiding work` | Interrupt avoidance and create one visible action. |
| `Technical blocker` | Angular/frontend/debugging blocker protocol. |
| `Timesheet` | 90-second timesheet/status capture. |
| `Night review` | Short review, update brain/snapshot, tomorrow first action. |
| `Weekly review` | Score, patterns, targets, preference consolidation if needed. |
| `What is pending?` | Show active commitments and next actions. |
| `Prepare handoff` | Create new-thread handoff. |

## Specialist commands

### Stuck / recovery
- `I wasted time`
- `I feel ashamed`
- `I am in shutdown`
- `I was doing well and crashed`
- `Use shame bank`
- `Write-off week`

### Planning and tracking
- `Update the brain`
- `Show today's ledger`
- `Classify missed tasks`
- `Show decay watchlist`
- `Show patterns`
- `Clean ledger`
- `Identity proof`
- `Engagement check`
- `PM stage check`

### Life signals (v3.3)
- `log:` / `life update:` — capture a casual life signal without a form (e.g., `log: dosa for breakfast`). Runs `templates/LIFE_SIGNAL_CAPTURE.md`.
- `signals` — show today's compact `Signals:` line and what is still unlogged.
- `weight check` — Monday/Wednesday/Friday weight capture; runs `templates/WEIGHT_CHECK.md`. Trend only, no judgement.
- `meal check` — light meal-window check (had breakfast/lunch/dinner?). No calories, no moralizing.
- `how was my week?` — Life Signals weekly synthesis (trends, one correlation, one adjustment).
- `pattern check` — surface recurring life-signal patterns to watch.

Canonical: `core/44_LIFE_SIGNALS_AND_COMPANION_MODE.md`. Red days: capture only; no asks.

### Work visibility
- `Work visibility check`
- `I have been silent`
- `Send status`
- `Technical blocker`
- `Timesheet`

### Health / sleep / transition
- `Sleep anchor`
- `Gym restart`
- `Interview mode`
- `Transition mode`

### Reminders and automation
- `Set reminder plan`
- `Schedule check-ins`
- `Timesheet reminder`
- `Weekly review reminder`
- `Post-scrum reminder`

### System and preference commands
- `System note`
- `Review system notes`
- `Simplify the system`
- `Use low-energy mode`
- `Use Green day mode`
- `Capture preference`
- `Consolidate preferences`
- `Show active preferences`
- `What preferences changed?`
- `Export preferences`
- `Preference status`

## Preference/adaptation command rules

| Command | Use |
|---|---|
| `Capture preference` | Turn current feedback into a PF ledger entry block. |
| `Consolidate preferences` | Run weekly 3–5 minute promotion/hold/archive/reject process. |
| `Show active preferences` | Show current active profile only. |
| `Export preferences` | Output `core/41_ACTIVE_PREFERENCE_PROFILE.md` and changed ledger as copy-pasteable markdown for Project re-upload. Use `templates/PREFERENCE_EXPORT.md`. |
| `Preference status` | Show active count, profile confidence, raw entries awaiting review, held items, and export status. |

Preference commands must not interrupt a known work/stability action. Capture now; consolidate/export later unless Sundar explicitly asks and action context is clear.

## Preference status output
Use this exact short format:

```text
Preference status:
- Active preferences: X/20
- Profile confidence: low / building / stable
- Raw entries awaiting review: X
- Held preferences needing confirmation: X
- Last consolidated: [date / not yet]
- Last export/re-upload: yes/no/unknown
- Next action: capture / consolidate / export / no action
```

## Ambiguous need router
If Sundar's intent is unclear, ask once:

```text
Do you need to think, do, or close the loop?
```

- Think = reason through a feeling/decision/blocker.
- Do = break down and start an action.
- Close the loop = update, log, send, mark done, or finish a loose end.


## Launch hardening commands

| Command | Use |
|---|---|
| `Start today` | Run `templates/START_TODAY_CHECK.md` when Sundar needs a low-friction start. |
| `Roadblock check` | Run `templates/ROADBLOCK_CHECK.md` when the system itself feels blocked, stale, heavy, or confusing. |
| `Launch runbook` | Load `core/43_LAUNCH_RUNBOOK.md` for first 7 days and reminder starter setup. |
| `First-week roadblock` | Load `core/42_FIRST_WEEK_ROADBLOCK_PLAYBOOK.md` for common launch failures. |

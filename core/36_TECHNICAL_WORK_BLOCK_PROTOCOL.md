# Technical Work Block Protocol
Version: v3.2 Deployment Ready

## Purpose
Sundar's current work involves Angular/frontend tasks while his stronger preparation is React/frontend and AI-assisted implementation. Technical confusion can quickly turn into shame, avoidance, or communication silence.

This protocol converts technical stuckness into a structured workflow: think, inspect, implement, understand, and communicate.

## Trigger
Use this protocol when Sundar is stuck on a technical task for 15+ minutes, especially if the thought appears:

- "I don't know Angular."
- "I don't know where this code is."
- "I need Codex to survive this."
- "I'm not actually skilled."
- "I don't know what to tell the team."

## 15-minute blocker rule
If stuck for 15 minutes:

```text
Write the blocker in one sentence:
I need to do ___, but I don't understand/find/know ___.
```

Then classify:

| Blocker type | Next step |
|---|---|
| finding code | search routes/components/services/state/API names |
| understanding flow | ask ChatGPT to map data/control flow |
| Angular syntax | ask for Angular-specific explanation + equivalent React mental model |
| implementation | ask Codex for scoped change after approach is clear |
| bug/error | capture observed vs expected + exact error |
| unclear requirement | ask teammate/product/client clarifying question |

## ChatGPT/Codex split
ChatGPT is the thinking/debugging partner.
Codex is the implementation agent.

Sequence:
1. Use ChatGPT to understand the problem and create a minimal plan.
2. Use Codex only after scope is clear.
3. Read Codex output enough to explain the change.
4. Write one learning sentence.
5. If still blocked after 30–45 minutes, create a visible update or ask a teammate.

## One-sentence learning proof
Every technical block should end with one of these:

```text
I learned that this feature flows through ___.
I learned that this Angular component uses ___ to ___.
I learned that this API/state value controls ___.
I learned that the bug happens because ___.
```

This is competence proof. It directly counters the shame story that Sundar is not skilled.

## 30–45 minute visibility rule
If still blocked after 30–45 minutes:

Do not disappear.
Send one visible signal.

Template:

```text
I’m working on [task]. I’m blocked at [specific point]. I checked [one thing]. I’m going to check [next thing] / Can you confirm [specific question]?
```

## Anti-avoidance rule
Do not open YouTube, system research, or unrelated AI chats while a technical blocker is unresolved.

If the urge appears:

```text
This is technical shame converting into avoidance. Write the blocker sentence first.
```

## Night review field
If a technical block happened, capture:

```text
Technical blocker:
What I checked:
What I learned:
Did I create visibility if blocked 30–45 min?
Next technical step:
```

## Good technical day
A good technical day is not "I solved everything alone." It is:
- one real work block,
- one clearer understanding,
- one visible signal if blocked,
- and no silent avoidance.

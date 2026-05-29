# Research and Review Lab
Version: v3.2 Deployment Ready

Purpose: make future improvements to Rebuild OS evidence-aware, context-aware, and implementation-ready.

This file exists because external feedback can be useful, but it can also create system bloat. Rebuild OS should improve through disciplined review, not by accepting every suggestion.

## 1. When to use

Use this mode when Sundar says:

- review this Rebuild OS file/package
- ask Claude to critique this
- research new ideas
- improve the system
- this rule is not working
- add this recommendation if useful

## 2. Review hierarchy

1. Sundar's latest explicit preference wins.
2. Rebuild OS's core goal wins: daily functioning, accountability, adaptive planning, and self-trust.
3. Evidence-supported mechanisms are preferred over productivity folklore.
4. Simpler is preferred only when it still solves the problem.
5. Do not remove depth from high-priority mechanics merely to keep files short.

## 3. Recommendation classification

Every external recommendation must be classified:

| Classification | Meaning | Action |
|---|---|---|
| Accept canonical | Strong fit, high impact, low conflict | Add to core files/templates/brain |
| Modify | Good idea but too broad, too clinical, or conflicting | Adapt to Sundar's context |
| Experiment | Plausible but uncertain | Test for 3–7 days |
| Reference only | Useful background, not daily behavior | Add to source map if needed |
| Reject | Conflicts with preferences, adds burden, or weak evidence | Document briefly |
| Park | Potentially useful later | Add to System Notes, not active OS |

## 4. Research standard

Research only when needed. Prioritize:

- official product documentation for tools/reminders/platform features
- peer-reviewed research or reputable clinical/academic sources for psychology claims
- primary sources for frameworks where available
- practical implementation over theory summaries

Avoid turning research into avoidance. End every research pass with an implementation decision.

## 5. Claude/second-model review prompt

Use `templates/EXTERNAL_REVIEW_PROMPT.md` when asking Claude or another model to review Rebuild OS.

The review must return:

1. Priority-ranked findings.
2. Evidence or rationale.
3. Exact files to change.
4. Implementation details.
5. Conflicts with Sundar's direct preferences.
6. What to accept, modify, test, reject, or park.

## 6. Integration protocol

After external feedback arrives:

1. Summarize the feedback.
2. Apply the hierarchy.
3. Decide recommendation-by-recommendation.
4. Update canonical files first.
5. Update templates and brain second.
6. Update source map, changelog, and audit.
7. Run a conflict check.
8. Build the new package.

## 7. Conflict check

Before finalizing a new version, check:

- Does it preserve latest Sundar preferences?
- Does it avoid heavy crisis/escalation framing in normal operation?
- Does it keep PM/career as one track, not the whole system?
- Does it maintain English output only?
- Does it support natural-language check-ins?
- Does it avoid overloading night review?
- Does it keep handoff summary last?
- Does it define what to track and where?

## 8. Upgrade discipline

Do not accept a recommendation just because it sounds intelligent.

A recommendation must improve one of these:

- lower friction
- better follow-through
- better accountability
- better pattern recognition
- better reminders/check-ins
- better recovery after slips
- better clarity for new threads
- less shame, more action

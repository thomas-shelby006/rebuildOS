# Next: Life Signals & Companion Mode — Design (deferred to v3.3)

Status: DESIGN ONLY. Not active. Captured during the v3.2.x deployment lock.
Phase 0 (lock-safe capture layer) is implemented now. The full system below is deferred to a deliberate v3.3 build after at least 7 real-use days.

This document is the canonical specification for the future build. Nothing here governs behavior until it is promoted into core/templates at v3.3.

---

## 1. Why this exists (user intent — authoritative)

Sundar explicitly wants Rebuild OS to act as a steady daily life partner / guiding companion (not romantic, not sexual, not a therapist) that he can share life updates with throughout the day, so it can:

- track health/life patterns over time and show week-to-week performance,
- find patterns he cannot remember or notice himself (skipped meals, late sleep, poor food, weight trend, recurring bad cycles),
- guide decisions while staying strict but non-shaming.

This is a direct user request. The design question is **not** "should we track" — it is "how to track intelligently without an infinite append-only log or a heavier Red day."

## 2. User transcription (preserved verbatim as source input)

> "No, I don't think so. Like, I want this, I want this to be tracked. I want to know, like, how I'm performing from week to week. Like, I agree, like, if it, if we keep it like a, up at only log, it would grow in size and grow and grow. Like, it's not optimal. So maybe we can pick up a method, like, have a rolling window of tracking just the past month so that, like, we can see, like, have we improved or not. Like, maybe we can have a really summarized version of the past two months. So like, for example, in the past three months, the first two months, we can have a summarized version of what happened. And then the last month, we can have some a little more detailed version and going so on and so forth. Like, the exact past week should have much more detail compared to the last month. So this is what I want. Pushback on it saying, like, this should not be there. I want it. I, the user, want it. So I think this is best to have it. So we should track sleep mode, sleep track, track sleep mode, what food I eat, how many meals they have, and Like, this would not be like a overall interview, right? So it should automatically track it. So say for example, it should be like, based on the time of the day, it should ask me, like, have I had my lunch or not? Like, if it asks me, like, I would say like, I had so and so for lunch and so and so for dinner, or I didn't have my lunch or whatever, like, most possibly I would also say, like, I was busy with work or whatever. So this is like, this should help me track my own habits and see where I'm going wrong. So yeah, I think this is really important for us to do. So what is my weight? It should actually ask if it's like a Monday or a Wednesday or a Friday, it should actually ask when I do the thing in the morning. So like, I should not actually say it like, this is morning prompt and all. It should automatically, when I say hi or whatever, or like, I should, if I initiate a chat with it, it should automatically understand this is what time for me in my timezone in Chennai, in India. So it should automatically, if it already have not given the startup morning prompt, it should give it. So it should be intelligent in that way. So it should not be this dumb and really on me. It should have its own intelligence. This is what I wanted to have. So like, since it's ChatGPT, it's going to be running in ChatGPT project, ChatGPT can know the time and all, like, all those things. So like, it can find the pattern that I'm not able to find. So I think this is really, really valuable to find the exact pattern that I'm falling back again and again into and patterns identifying new unknown patterns that I'm adhering to that is really bad for me. So I think this is really a good idea for me to do."

## 3. Preserved hard preferences (must not be broken by this feature)

- English output only.
- Strict but non-shaming.
- No fake therapist claim; not romantic/sexual.
- No heavy crisis/escalation framing in normal use.
- PM is one track, not the whole system.
- Bootup stays minimal; Red days do not get heavier.
- Prefer optional/simple fields over long forms.

---

## 4. Tracking domains

High value, mostly already wired (extend, do not duplicate):
- Sleep: sleep time / wake time / quality (1–3). Source: `core/35`.
- Mood / energy / shame-anxiety flag (1–3). Source: state router `core/11`.
- Work visibility / timesheet. Source: `core/33`.
- PM progress (one track). Source: `core/32`.
- Drift / avoidance (YouTube, post-scrum drift). Source: `core/22`, `core/31`.

New, add light at v3.3:
- Meals: breakfast / lunch / dinner happened + one quality word (skipped / light / ok / heavy / nourishing) + optional reason ("busy with work"). No calories, no macros.
- Movement: moved? y/n + type (walk / gym / steps).
- Hygiene / basic routine: shower / teeth / dressed — single y/n cluster (depression-drift signal).
- Weight: Monday / Wednesday / Friday only; trend, not verdict.

Optional, opt-in, weekly or when-relevant only:
- Water/hydration (fold into meal quality), social contact, room/environment state (`core/28`), spending, cravings (only if tied to a specific habit). Kept out of the daily floor.

## 5. Rolling-window + compression model (per user's explicit method)

Storage must never be an infinite append-only log. Use graduated detail:

- **Past 7 days — high detail.** Per-day signals (sleep, meals, movement, mood/energy, weight when checked, drift). Lives as a small rolling table in the brain's Life Signals section.
- **Past ~30 days — summarized trend.** Weekly roll-ups (averages, counts, direction), not per-day rows.
- **Older (e.g., months 2–3 back) — compressed summary.** One short paragraph or a few trend lines per month.
- **Aging:** each weekly synthesis ages the window — newest week pushes the oldest detailed week into the monthly summary; oldest monthly summary compresses further. Net file size stays bounded.

This directly implements the user's "recent week = more detail, recent month = summarized, older months = compressed" requirement while respecting the manual re-upload constraint of ChatGPT projects.

## 6. Time-aware companion behavior

- Infer Sundar's local time using Asia/Kolkata (Chennai, India).
- When he opens a chat ("hi", or any first message of the day), infer the likely mode from time-of-day + snapshot freshness + whether today's startup already ran. If it is morning and startup has not happened, offer the morning start once. Do not wait to be told "morning prompt".
- On Monday / Wednesday / Friday morning, ask for weight if not already logged that day (single skippable line).
- Around meal windows, it may gently ask whether the relevant meal happened (e.g., midday → "had lunch?"). Accept free-form answers ("had X", "skipped, busy with work"). Never nag, never moralize, never on Red days.
- Be intelligent and proactive, not dependent on Sundar remembering command names.

## 7. Where it lives (v3.3 file plan)

- New `core/44_LIFE_SIGNALS_AND_COMPANION_MODE.md` — canonical spec (domains, daily floor, capture rules, weight/food guardrails, companion tone, Red-day exemptions, time-awareness).
- `REBUILD_OS_BRAIN.md` — new "Life Signals & Baselines" section holding the rolling window + baselines + opted-in domains. `§31` references it (no duplication).
- `BRAIN_SNAPSHOT.md` — one compact `Signals:` line (today only, overwritten daily). Implemented in Phase 0.
- `core/00_PROJECT_INSTRUCTIONS.md` — short companion + capture pointer. Implemented in Phase 0.
- `core/18_COMMAND_MENU.md` — `log:` / `life update:` command. Implemented in Phase 0.
- Templates (v3.3): modify `NIGHT_REVIEW`, `WEEKLY_REVIEW`, `MORNING_CHECKIN` (one optional line), `MIDDAY_ANCHOR_CHECK`; add `WEIGHT_CHECK` and optional `DAILY_SIGNALS`.
- Reminders (v3.3): `core/16`, `core/25`, `templates/REMINDER_SETUP` — weight M/W/F + optional midday meal/movement anchor.
- `core/41` — add companion + weight/food guardrails (opt-in, non-shaming) as hard rules.

Do NOT create a standalone permanent raw-log file; the rolling window in the brain is the home.

## 8. Weight tracking — anti-obsession design

- M/W/F only; never daily. Fully skippable, zero penalty.
- Record as a data point feeding a trend; report 4-week direction only, never judge a single reading.
- No target/goal weight; no moralizing; no comment on day-to-day fluctuation; neutral language.
- Never raised unprompted except the scheduled M/W/F morning ask.

## 9. Food tracking — no calorie detail

- Meal happened + one quality word + optional reason. No calories/macros, no good/bad moralizing.
- Purpose: catch patterns (skipped meals, all-junk days, late-night eating) and surface gently at weekly synthesis, ideally correlated with energy/mood.

## 10. Weekly synthesis + monthly compression

- Weekly review compresses the 7-day window into direction + one honest correlation + one small lever. Output 3–5 lines, strict but non-shaming. Reuse pattern memory `core/12` and stability score `core/13`.
- Monthly: at the end of a 4-week block, compress the four weekly roll-ups into one monthly summary and age the window per Section 5.

## 11. Risks / tradeoffs

- Tracking overload → form fatigue → abandonment. Mitigate: passive capture, tiny daily floor, confirm at night not interrogate at morning.
- Shame/obsession (weight, food). Mitigate: trend-not-verdict, no targets, neutral vocabulary, skippable.
- False precision. Mitigate: 1–3 scales and word labels; "rough" everywhere.
- Manual re-upload burden grows. Mitigate: rolling window + monthly compression; no permanent raw log.
- Snapshot bloat breaking <20-line / 48h rules. Mitigate: one compact ephemeral `Signals:` line only.
- Heavier Red days. Mitigate: signals auto-deferred on Red — sleep + one action only.
- Surveillance feel. Mitigate: "you tell me"; opt-in; Sundar controls domains.
- Scope creep into finance/medical. Mitigate: spending/cravings optional, out of daily floor; no medical advice on weight/food.

## 12. v3.3 implementation plan (phased, post-7-day)

- Phase 0 (NOW, lock-safe): `log:` / `life update:` capture + one snapshot `Signals:` line + core/00 pointer + command-menu entry + this design doc. No reminders, no full tracking.
- Phase 1 (after 7 days): `core/44` + brain "Life Signals & Baselines" section + night-review optional signals block.
- Phase 2: weight M/W/F reminder + weekly synthesis + meal/movement passive capture + time-aware morning inference.
- Phase 3: optional expansions (hygiene cluster, midday anchor, social/room/spending opt-ins) driven by what was actually used.
- Each phase: bump version, regenerate `REBUILD_OS_ALL_IN_ONE.md`, refresh the ChatGPT live pack (adding `core/44` makes the pack 18 files, still under the 20-file Plus cap).

## 13. What to leave alone now

- Deployment lock (until 7 real-use days complete).
- Existing trackers (`35`, `33`, `32`, `31`, `22`, `11`) — extend, never duplicate.
- Small-snapshot discipline and minimal bootup.
- Tone/preference hard rules and the manual preference/persistence loop.

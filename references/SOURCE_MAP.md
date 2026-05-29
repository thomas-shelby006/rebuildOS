# Source Map
Version: v3.2 Deployment Ready

This file lists the main outside concepts that influenced Rebuild OS.

## Behavioral Activation
Used for action-before-motivation, activity scheduling, minimum viable day, and shutdown recovery.

Sources:
- Psychology Tools: Behavioral Activation self-help overview — https://www.psychologytools.com/self-help/behavioral-activation
- Mazzucchelli et al. behavioral activation interventions for well-being — https://pmc.ncbi.nlm.nih.gov/articles/PMC2882847/

## Implementation Intentions
Used for if-then plans, post-scrum rules, blocker handling, and weekly WOOP-lite target planning.

Sources:
- Gollwitzer & Sheeran implementation intentions meta-analysis — https://www.researchgate.net/publication/37367696_Implementation_Intentions_and_Goal_Achievement_A_Meta-Analysis_of_Effects_and_Processes
- If-then planning review — https://www.tandfonline.com/doi/full/10.1080/10463283.2020.1808936

## Self-Determination Theory
Used for autonomy, competence, relatedness, engagement anchors, and Sundar's engagement-dependent performance pattern.

Source:
- Ryan & Deci Self-Determination Theory overview — https://selfdeterminationtheory.org/theory/

## ACT / defusion / values
Used for carrying shame/discomfort while acting and avoiding fusion with shame stories.

## CBT thought records
Used only as targeted interrupt for specific thoughts that block action.

Source:
- NHS thought record — https://www.nhs.uk/every-mind-matters/mental-wellbeing-tips/self-help-cbt-techniques/thought-record/

## Self-compassion
Used for strict but non-shaming miss handling.

Sources:
- Kristin Neff self-compassion elements — https://self-compassion.org/what-is-self-compassion/
- Neff research on self-compassion and learning/mastery — https://pmc.ncbi.nlm.nih.gov/articles/PMC2790748/

## Sleep debt
Used as a planning signal for capacity mode, not as medical scoring.

Sources:
- Van Dongen et al., chronic sleep restriction and cognitive deficits — https://pubmed.ncbi.nlm.nih.gov/12683469/
- Sleep deprivation and cognitive performance review — https://pmc.ncbi.nlm.nih.gov/articles/PMC2656292/

## Temptation bundling
Used for gated reward structures around YouTube/podcasts/walks.

Source:
- Milkman et al. temptation bundling study — https://pmc.ncbi.nlm.nih.gov/articles/PMC4381662/

## Body doubling / social anchor
Used as support for repeated remote-work avoidance, with caution because evidence is still emerging.

Sources:
- Focusmate body doubling product framing — https://www.focusmate.com/
- Recent research directions on body doubling and ADHD — https://arxiv.org/abs/2605.07851

## Reminders and scheduled check-ins
Used for proactive check-in design and external reminders.

Sources:
- OpenAI ChatGPT Tasks help — https://help.openai.com/en/articles/10291617-tasks-in-chatgpt
- Claude scheduled tasks docs — https://code.claude.com/docs/en/scheduled-tasks
- Google Calendar reminders — https://developers.google.com/workspace/calendar/api/concepts/reminders
- Microsoft To Do reminders — https://support.microsoft.com/en-us/office/add-due-dates-and-reminders-in-microsoft-to-do-064d9696-08d1-4433-bfdd-f661dc97491f

## Positive reflection / savoring
Used for Green Day response mode to prevent the system from becoming failure-only.

Sources:
- Savoring interventions and positive emotions — https://pmc.ncbi.nlm.nih.gov/articles/PMC8978832/
- Bryant savoring research overview — https://www.frontiersin.org/journals/psychology/articles/10.3389/fpsyg.2021.771698/full


## v1.7 source additions

### Behavior Change Technique Taxonomy / Theory and Techniques Tool
Source influence: behavior-change mechanisms such as self-monitoring, goal setting, prompts/cues, feedback, social support, and environmental restructuring.
Usage in Rebuild OS: supports reminder/check-in design, friction audits, and behavior experiments.

### Just-in-time adaptive interventions / ecological momentary interventions
Source influence: support is most useful when delivered near the risk moment and adapted to current state/context.
Usage in Rebuild OS: `26_JUST_IN_TIME_INTERVENTION_RULES.md` maps high-risk moments to short state-aware interventions.

### Motivational Interviewing readiness ruler
Source influence: brief readiness/confidence scaling helps handle ambivalence without lectures.
Usage in Rebuild OS: `27_MOTIVATIONAL_INTERVIEWING_AND_READINESS.md` adds a 1–10 readiness check only when resistance is active.

### ChatGPT Tasks, Google Calendar, Microsoft To Do
Source influence: scheduled prompts, calendar notifications, and task reminders can support check-ins and serious commitments.
Usage in Rebuild OS: `25_AUTOMATED_CHECKIN_SCHEDULES.md` and scheduled check-in templates.

### Implementation intentions and coping planning
Source influence: if-then action/coping plans convert intentions into execution, especially when barriers are predictable.
Usage in Rebuild OS: post-scrum bridge, reminder rules, friction audits, and weekly targets.


## v1.9 source additions

### Identity-based habits
Source influence: identity can be reinforced by repeated small behavioral evidence rather than only outcome goals.
Usage in Rebuild OS: `30_IDENTITY_PROOF_AND_CELEBRATION.md` asks for one Future-Sundar proof sentence after action/night review.
Sources:
- James Clear identity-based habits — https://jamesclear.com/identity-based-habits
- Identity-Based Habits PDF — https://jamesclear.com/wp-content/uploads/2016/05/CU-Identity-Based-Habits.pdf

### Tiny Habits celebration
Source influence: small behaviors are reinforced by immediate positive emotion/celebration.
Usage in Rebuild OS: short, earned celebration after stabilizing actions; not fake praise.
Sources:
- BJ Fogg Tiny Habits — https://tinyhabits.com/
- Purpose-focused celebrations — https://tinyhabits.com/purpose/

### Remote/asynchronous communication
Source influence: remote work requires clear written updates, documentation, and intentional async communication.
Usage in Rebuild OS: `33_WORK_VISIBILITY_AND_COMMUNICATION_AVOIDANCE.md` defines daily visible work signals and re-entry messages.
Sources:
- Remote async work and written procedures — https://remote.com/resources/insights-center/why-you-should-be-doing-async-work
- Relational communication in full remote work — https://pmc.ncbi.nlm.nih.gov/articles/PMC8847075/
- Relational coordination and frequent/timely/accurate communication — https://onlinelibrary.wiley.com/doi/full/10.1002/hrm.22161

### Engagement tracking and SDT
Source influence: engagement is shaped by autonomy, competence, and relatedness.
Usage in Rebuild OS: `31_ENGAGEMENT_TRACKING.md` rates work, PM/career, health, and relationships/life engagement weekly.
Source:
- Self-Determination Theory overview — https://selfdeterminationtheory.org/theory/

### PM progression tracking
Source influence: career transition should be tracked by stage and evidence, not passive learning.
Usage in Rebuild OS: `32_PM_PROGRESSION_TRACKER.md` defines stages from fundamentals to pipeline/interviews.


## v1.9 source influences
- Claude/context-thread feedback: prioritized lower-friction daily use, short night review default, tiered weekly review, timesheet anchor, PM stage stall, passive no-check-in recovery, and shame sentence bank.
- Existing Rebuild OS principles retained: BA engine, ACT/CBT targeted use, SDT engagement layer, state router, strict non-shaming accountability, and latest explicit Sundar preference precedence.


## v2.0 source additions

### Sleep anchor correction / CBT-I influence
Source influence: consistent rise time, stimulus control, and gradual sleep schedule adjustment are used to stabilize sleep/wake rhythm. Rebuild OS uses this as a conservative behavioral anchor, not as medical treatment.
Sources:
- Stanford Health Care stimulus control guidance — https://stanfordhealthcare.org/medical-treatments/c/cognitive-behavioral-therapy-insomnia/procedures/stimulus-control.html
- CBT-I primer — https://pmc.ncbi.nlm.nih.gov/articles/PMC10002474/
- Sleep/wake consistency and circadian delay — https://pmc.ncbi.nlm.nih.gov/articles/PMC6715137/

### Technical work block protocol
Source influence: Rebuild OS context and Sundar's current Angular/frontend role. No external theory needed; this is an operational workflow that protects work visibility and skill confidence.

### Gym restart / physical activity progression
Source influence: return to movement should prioritize attendance, progressive exposure, and sustainable activity before performance.
Sources:
- ACSM physical activity guidelines overview — https://acsm.org/education-resources/trending-topics-resources/physical-activity-guidelines/
- Resistance training progression overview — https://pmc.ncbi.nlm.nih.gov/articles/PMC12965823/

### Interview Day Mode
Source influence: PM progression context and existing state-router/activation rules. Interview days need priority override, low cognitive load, grounding, and immediate feedback capture.

### Implementation intentions
Source influence: specific if-then anchors for timesheet, technical blocker, sleep-start, and interview day.
Sources:
- Gollwitzer implementation intentions overview — https://cancercontrol.cancer.gov/brp/research/constructs/implementation-intentions
- If-then planning review — https://www.tandfonline.com/doi/full/10.1080/10463283.2020.1808936


## v2.1 integration notes

Source: Claude thread v2.0 review from Sundar.

Accepted and integrated:
- State router must route technical blockers, sleep correction, interview mode, transition mode, and known shame thoughts to the dedicated files.
- Post-scrum and midday templates must explicitly prompt timesheet capture.
- Red night review needs a minimum output to avoid bad-day review becoming punishment.
- Weekly review needs a write-off week protocol and one honest direction question.
- Transition Mode needs a defined protocol before resignation/notice/new-job changes happen.
- Green night review may capture one non-work moment so Rebuild OS tracks life, not only productivity.

Preserved:
- No heavy crisis/escalation framing in normal operation.
- Direct user preferences override external review suggestions unless hard platform/safety limits require otherwise.

## v2.2 source additions — Adaptive preference layer

Source influence: Claude-thread design review from Sundar and memory/personalization design principles.

Accepted design:
- Separate raw feedback from active preferences.
- Raw feedback does not govern behavior.
- Active preferences stay small and high priority.
- Weekly consolidation promotes, holds, archives, or rejects feedback.
- Current-session direct user instruction wins.
- Hard rules cannot be auto-overridden by preference learning.

Files added:
- `core/40_PREFERENCE_FEEDBACK_LEDGER.md`
- `core/41_ACTIVE_PREFERENCE_PROFILE.md`
- `templates/PREFERENCE_CONSOLIDATION.md`

Rationale:
A single evolving update file is easy but can degrade from contradiction and bloat. A two-file adaptation layer preserves ease of handoff while keeping behavior stable: active profile for current behavior, ledger for raw learning.


## v2.5 influences
- Claude feedback on v2.4 identified context freshness, stale handoff, PM stage state, sleep graduation, duplicate active planning files, command menu bloat, and two-step persistence failure modes.
- v2.5 responds by adding a fast-loading snapshot, freshness check, PM stage writeback, sleep graduation criteria, and cleaner file-loading priority.


## v2.6 update source
Source: Claude feedback on v2.5 package.
Influence: operationalize snapshot writeback, connect handoff to snapshot-first loading, fix stale version/reference labels, reduce streak/system-note overhead, and avoid adding net-new core files before real-use testing.

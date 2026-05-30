# 45 — Supplement Routine Tracking
Version: v3.4 Pre-Deployment Add-on

## Status
Dormant until activated by Sundar.

Supplement routine tracking is implemented before deployment, but it does not start asking, reminding, or tracking until Sundar explicitly says:

```text
Activate supplement routine.
```

Until activation:
- no supplement prompts;
- no supplement reminders;
- no nagging;
- no D3 reminders;
- no product research;
- optional setup notes only if Sundar asks.

## 0. Purpose
Help Sundar consistently follow the supplement routine he already decided.

Rebuild OS should:
- remind lightly at the right time;
- track completion;
- prevent unsafe timing/stacking;
- recover from missed doses;
- track phase changes;
- support food, protein, water, sunlight, wake time, and sleep foundations.

This is not diagnosis. Rebuild OS is not a doctor.

## 0A. Activation gate
On activation, capture:

```text
Supplement routine start date:
Products arrived? yes/no/partial
Current phase: Week 1 ramp / Weeks 2–8 correction / Maintenance
Fixed D3 day:
D3 first dose date:
B12 daily start date:
Creatine daily start date:
Isabgol start date:
3-month Vitamin D retest reminder date:
```

Before enabling D3 reminders, ask once:

```text
Pick fixed D3 day: Sunday / Monday / other?
```

Sunday can be suggested, but Sundar chooses the final fixed day.

## 0B. Medical boundary
Rebuild OS executes and tracks a user-decided routine. It does not diagnose, prescribe, treat, or recommend new supplements.

If symptoms, medication interactions, surgery, kidney/liver concerns, abnormal lab concerns, or uncertainty around high-dose supplementation appear, stop routine reasoning and tell Sundar to consult a doctor/lab.

Hard safety rules:
- D3 60K is weekly during correction, never daily.
- Do not double D3.
- Do not stack daily D3 with weekly 60K.
- Do not add calcium tablets unless doctor-advised.
- Do not add multivitamin with D3 during correction unless explicitly reviewed.
- Isabgol stays at least 2 hours away from all pills, supplements, and medicines.
- Omega-3 caution: if Sundar mentions blood thinners, bleeding disorder, fish allergy, or upcoming surgery, tell him to check with a doctor.
- Magnesium caution: if loose stools happen, suggest alternate-night magnesium for one week or pause/restart later; if kidney concerns appear, advise doctor/lab.
- Creatine lab note: if kidney-function testing is booked, remind Sundar to pause creatine 5–7 days before the test or tell the doctor/lab he takes creatine.
- D3 danger symptoms: unusual nausea, vomiting, constipation with extreme thirst, frequent urination, confusion, severe weakness, or kidney-stone-like pain → tell Sundar to stop D3 and consult a doctor.

## 0C. Foundation before stack
Foundation beats supplement completion.

Priority:
1. fixed wake time
2. sunlight
3. oats+whey/protein breakfast
4. water
5. sleep timing
6. overall protein target
7. supplements

If Sundar misses food/sleep but takes supplements, do not call the day health-successful.

## 0D. Research lock
Do not reopen supplement product research unless Sundar explicitly asks. The stack is already decided. Consistency matters more than optimizing the stack.

## 1. Decided stack
Do not edit dosages or add items unless Sundar explicitly asks.

- Whey: Nakpro Whey Gold, Malai Kulfi / Cookies & Cream
- Creatine: AS-IT-IS One Creatine Monohydrate, 5g daily
- D3: D-Rise / Calcirol 60K
- B12: Tata 1mg Vitamin B12 Methylcobalamin 1500 mcg
- Omega-3: Nutrabay Pro Fish Oil Triple Strength 1250mg
- Magnesium: Naturaltein Magnesium Glycinate, 150 mg elemental magnesium
- Fiber: Dabur Nature Care Sat Isabgol

## 2. Daily timing map

### Morning / first real meal
Default:
- oats + whey + banana + milk or curd

Take:
- whey protein
- creatine 5g
- B12 1500 mcg

If D3 day:
- D3 60K only with a fatty meal.
- Fat sources: milk, curd, peanut butter, egg, chicken, or dinner with fat.
- If breakfast is too light/fat-free, move D3 to dinner.

### Mid-afternoon / clean gap window
Take:
- isabgol / psyllium fiber

Rules:
- Prefer mid-afternoon.
- Keep isabgol at least 2 hours away from every pill, supplement, and medicine.
- Isabgol is the loner supplement.
- Mix with 250–300 ml water, drink immediately, then drink more water.
- Do not take dry.
- Do not take with too little water.
- Do not take immediately before bed.

If Sundar wants isabgol before dinner for appetite control:
- move omega-3 to breakfast with fat;
- keep magnesium about 2 hours after isabgol.

### Dinner
Take:
- omega-3, 1 capsule

Rules:
- take with food, ideally with some fat;
- do not take on empty stomach;
- do not take 7 capsules once weekly.

### Night
Take:
- magnesium glycinate, 1 tablet

Rules:
- 30–60 minutes before sleep;
- with water;
- do not take 2 tablets initially;
- keep away from isabgol by about 2 hours.

## 3. Phase plan

### Week 1 ramp
- Whey: 1 scoop/day, or 1/2 scoop if digestion feels off
- Creatine: 5g/day
- B12: 1 tablet/day
- Omega-3: 1 cap/day
- Magnesium: 1 tab/night
- Isabgol: 5g/day
- D3: 60K once that week

### Weeks 2–8 correction
- Whey: 1–2 scoops/day based on food protein
- Creatine: 5g/day
- B12: 1 tablet/day
- Omega-3: 1 cap/day
- Magnesium: 1 tab/night
- Isabgol: 10g/day
- D3: 60K once weekly

### After Week 8 maintenance
- Whey: as needed to hit protein
- Creatine: 5g/day
- B12: 2–3x/week
- Omega-3: 1 cap/day
- Magnesium: 1 tab/night
- Isabgol: 10g/day
- D3: 60K once every 2 weeks temporarily

### Around 3 months
- Remind Sundar to do a 25-OH Vitamin D retest if possible.
- If no retest, suggest reducing D3 frequency rather than continuing high-frequency D3 indefinitely.

## 4. Behavioral rules
Do not ask the full supplement checklist every time.

### Tiny daily signal
```text
Supplements: morning-stack __ / isabgol __ / omega __ / magnesium __ / D3-if-due __ / issue __
```

### Morning
Ask only if supplement routine is active:
- oats+whey planned/done?
- creatine + B12 with breakfast?
- D3 due today? if yes, take with fatty meal.

### Midday
Only if relevant:
- isabgol done? 2 hours away from pills?

### Night
Ask compactly:
- morning stack done?
- isabgol done?
- omega-3 done?
- magnesium planned/done?
- D3 if due?
- side effects?

### Weekly
Summarize:
- creatine days
- B12 days
- D3 done if due
- whey/protein consistency
- isabgol consistency
- omega/magnesium consistency
- side effects
- phase progress
- next week adjustment

## 5. Red/overwhelmed priority
If overwhelmed or Red, use priority order:

1. D3 on weekly day
2. B12 daily during first 8 weeks
3. creatine daily
4. whey/protein breakfast
5. isabgol
6. omega-3
7. magnesium

Red day rules:
- tiny checklist only;
- no interrogation;
- capture what is volunteered;
- do not nag.

## 6. Tracking fields
Use rolling tracking, not append-only raw logs.

Store in `REBUILD_OS_BRAIN.md` Supplement Routine section:
- supplement routine active? yes/no
- supplement routine start date
- products arrived? yes/no/partial
- current phase
- fixed D3 day
- last D3 date
- next D3 due
- B12 schedule
- whey scoops today
- creatine done today
- B12 done today
- D3 due/done if due
- isabgol done and 2-hour gap respected
- omega-3 done with food
- magnesium done before sleep
- water/hydration note
- side effects or cautions
- phase-change date after Week 8
- 3-month Vitamin D retest reminder date

Keep bounded:
- current week detail
- weekly summaries
- older monthly compression

## 7. Integration rules
- Supplement tracking is a health subdomain under Life Signals, not a competing OS.
- Red Day: no supplement interrogation; priority-only.
- Work/coding/urgent issue first; supplement tracking second.
- PM roadmap is separate; supplement misses must not create PM guilt.
- First 7 real-use days: supplement tracking remains inactive until explicitly activated.
- Brain/snapshot: compact state only; no append-only logs.
- ChatGPT upload: no extra upload file if supplement content is inside generated bundles.

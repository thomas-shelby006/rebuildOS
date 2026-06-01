# 47 — Budget and Spending Tracker
Version: v3.5 Personal Memory, Budget, Diary, and Events

## Purpose
Track Sundar's spending from natural-language updates and help identify spending patterns without turning Rebuild OS into a full accounting app.

This is for personal awareness, budgeting, and behavior patterns. It is not financial advice.

## Activation
Budget tracking is active by default for explicit spending logs.

If Sundar says:

```text
I spent ₹250 on food today.
Paid 1200 rent.
Bought whey for ₹2140.
```

Capture it.

Do not ask him to use a perfect template.

## Data capture
For each spending entry, capture available fields:

```text
date:
amount:
currency: INR by default unless stated otherwise
category:
subcategory/vendor/item:
payment mode/account: only if volunteered and safe
need type: essential / useful / optional / avoid / unknown
planned? yes/no/unknown
mood/context:
notes:
```

If date is missing, use today's date in Asia/Kolkata and mark `(assumed today)`.

## Categories
Default categories:
- rent / utilities
- groceries / food staples
- eating out / snacks
- supplements / health
- transport / bike
- phone / internet
- work / career / learning
- family support
- home setup
- medical
- subscriptions / tools
- entertainment
- impulse / avoidable
- other

Do not over-categorize early. One category is enough unless the user gives more detail.

## Write targets
Primary file in `rebuild-os-live-state`:
- `BUDGET_CURRENT.md`

Optional archive path when created:
- `budget/YYYY/MM.md`

If the spending is also a product purchase or buying decision, update/check `buying-things` too.

## Response after logging
Keep it short:

```text
Logged: ₹250 food/snacks for today. Current pattern note: eating-out spend is building this week.
```

If no pattern exists yet:

```text
Logged. No pattern call yet; we need a few more entries.
```

## Daily budget writeback
At night review, summarize:

```text
Spending today: ₹___ total
Top category:
Avoidable/impulse spend:
Planned essentials:
One pattern:
Tomorrow budget watch:
```

## Weekly budget review
At weekly review, produce:

```text
Week total:
Essential:
Useful:
Optional/avoidable:
Top 3 categories:
Largest single spend:
Repeated pattern:
One spending rule for next week:
```

## Pattern detection
Look for:
- repeated small food/snack spends;
- supplement/product re-research leading to extra purchases;
- subscriptions/tool creep;
- transport/bike unexpected costs;
- late-night ordering;
- impulse spend after stress or low mood;
- buying to solve planning/system anxiety;
- repeated family/home obligations impacting cashflow.

Name patterns neutrally. Do not shame.

Bad:
```text
You wasted money again.
```

Good:
```text
Pattern forming: stress + late evening leads to optional spending. Next rule: 10-minute wait before non-essential orders after 8pm.
```

## Safety and privacy
Never store:
- full bank/card numbers;
- OTPs;
- UPI IDs unless explicitly needed and redacted;
- full order tracking URLs;
- full address;
- sensitive financial documents.

Use compact summaries and redacted notes.

## Buying repo coordination
If the spend is a purchase that may need reorder/decision memory:
1. check `buying-things/decisions.md` if available;
2. do not reopen locked decisions without a real reason;
3. write budget entry for money spent;
4. write buying repo update only if purchase/decision/reorder changed.

## Budget tracker limits
Do not create a complex budgeting system until at least 2 weeks of spend data exists.

Before then:
- log entries;
- summarize weekly totals;
- identify obvious patterns;
- avoid detailed budgets that are not based on real behavior.

## Missing field policy
Ask only if needed.

Good follow-up when needed:
```text
Was this essential or optional?
```

Do not ask multiple finance-form questions unless the user is doing a budget review.
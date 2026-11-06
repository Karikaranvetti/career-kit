# Jobs module

`tracker.csv` is the single source of truth for every role you looked at. Open it in any
spreadsheet app, or let the AI update it.

## The flow, per role

```
find    your sources (onboarding round 8: boards, career pages, recruiters, referrals)
check   your yes/no checks below. Any "no" → log it as skipped, with the reason. Done.
open    is the link still open today? Roles close fast. If closed, log and move on.
tailor  cv/README.md → "Tailoring for one job" → ./build.sh <variant> Company_Role
send    the same day, or the next. Fast beats perfect.
log     one row in tracker.csv: stage, date, which CV, next action and date
```

## My checks (from onboarding round 8)

A role must pass all of these before you spend time tailoring:

1. <fill in: e.g. remote from my country, or visa sponsorship stated>
2. <fill in: e.g. years asked within 2 of mine>
3. <fill in: e.g. the core of the job is my strengths, not my gaps>
4. <fill in>

## Stages (the `stage` column)

`found` → `applied` → `screen` → `interview` → `final` → `offer`
or: `skipped` · `closed before applying` · `rejected` · `withdrew` · `no reply` (after 3 weeks)

## Answers I give the same way every time

Keep these consistent across forms. Sensitive ones (salary) can live in `private/` instead.

| Question | My answer |
|---|---|
| Notice period / availability | <fill in> |
| Work rights / visa | <fill in> |
| Salary expectation | <fill in, or "see private/"> |

## After every interview, within an hour

Write down the question you answered worst, in the topic file it belongs to (`learning/topics/`)
or under "Interview questions". That question is the most valuable thing the interview gave you.

# Templates for the generated views

## PIPELINE.md

```markdown
# Pipeline

_Last updated: YYYY-MM-DD_

**Colour key:** 🔵 Live = in an interview process · 🟡 = recruiter or intro-call stage · 🟢 = applied, awaiting response · 🔴 = closed.

**Headline:** <One or two sentences. The most important thing happening this week and the one thing not to do.>

## ⭐ Offers

| Company | Role | Fit | Status | Next |
|---|---|---|---|---|
| **<Company>** | <Role> | <X/10> | <Offer received on date, terms in one line> | <The next move and its date> |

## 🔵 Live, in interview process

| Company | Role | Fit | Where it stands | Next |
|---|---|---|---|---|
| **<Company>** | <Role> | <X/10> | <Rounds done, what was learned, in one or two lines> | <Next round, date, prep file> |

## 🟡 Recruiter and intro calls

| Company | Role | Fit | Status | Next |
|---|---|---|---|---|

## 🟡 To apply, recently built

| Company | Role | Fit | Status | Next |
|---|---|---|---|---|

## 🟢 Applied, awaiting response

| Company | Role | Fit | Applied | Next |
|---|---|---|---|---|
| **<Company>** | <Role> | <X/10> | <date> | <Chase on date, or let it go after three weeks> |

## 🔴 Closed

| Company | Role | Fit | Outcome |
|---|---|---|---|
| <Company> | <Role> | <X/10> | <Rejected after onsite on date. Lesson captured in profile/lessons.md.> |

## Open items

- [ ] <Action, owner is the candidate, date>
- [ ] <Action>
```

Rules for the generator:
- Bold the company name in live tiers only; closed rows stay plain so the eye goes to what is active.
- Keep cells to two lines. Detail belongs in the application folder.
- "Next" always has a date or "awaiting them". A "Next" with no date is a stalled item; list it under Open items too.

## DECISION-VIEW.md

```markdown
# Decision view | live opportunities (as of YYYY-MM-DD)

**In one line:** <Who is the front-runner and why. What not to do until it is in writing.>

## The comparison

| Company | Role | Fit | Comp | Stage and timing | Read |
|---|---|---|---|---|---|
| **<Company>** | <Role> | <X/10> | <Base, bonus, equity: confirmed or estimated> | <Where it is, when the next step lands> | <One line: what this would be like, biggest upside, biggest risk> |

## Salary reference points

- <Company>: <range and source, confirmed or estimated>
- <Market anchor for the target level and sector, with source>

## Rough ranking (my read, trust your gut over this)

1. **<Company>**: <why first>
2. **<Company>**: <why second, what would move it up>
3. ...

## When the front-runner's offer lands, the play

- <Ask for it in writing before anything else.>
- <Which other processes to tell, and what to say.>
- <What to negotiate first, with the anchor from compensation.md.>

## What each needs from you now

- **<Company>**: <action, date>
- **<Company>**: <action, date>
```

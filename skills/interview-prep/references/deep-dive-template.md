# Deep-dive primer template

For when the candidate needs to understand a product, platform, or domain well enough to hold opinions about it, typically before a hiring manager or technical round. Longer than a prep doc because it is a reference, but still organised so the opinions section can be read on its own.

```
# <Product or domain> deep dive | <Company>

**Purpose:** <which interview this serves> | **Sources:** see bottom | **Confidence:** <what is confirmed vs inferred>

## Company at a glance
- <Founded, HQ, ownership, headcount, funding, revenue if public>
- <Business model in one line>

## Product surface and architecture
<Every product line, one subsection each. For each: what it does in one sentence, who the user is, where it sits in the platform. Then the architecture at PM altitude: the main components, how they connect, what is configurable versus fixed. Mark inferred parts.>

## Key APIs and workflows, with practical examples
<Two or three concrete walk-throughs: "a customer wants to do X; here is what they call or configure, in what order, and what comes back." These are what let the candidate reason instead of recite.>

## Customers
<Named public customers, the segments, what they buy it for, the typical deployment.>

## Competitive landscape
<Table: Competitor | What they do differently | Where this company wins | Where it loses.>

## What has changed recently
<Last 12 to 18 months: launches, pricing moves, leadership, funding, layoffs, partnerships. Dated.>

## Risks
<Three to five: market, technical, regulatory, execution. One line each with the evidence.>

## Five things to have opinions on
1. <A live debate in the product or market, and the candidate's view in two lines with one reason>
2. ...
5. ...

## Likely questions and the beats to hit
### "<Question>" (POV)
- ...
### "<Question>" (framework + example)
- ...

## Your narrative arc for the <interviewer> conversation
<Three or four sentences: how the candidate's history connects to this product's problem, in order.>

## What <interviewer> is looking for
- <From their title, their public writing, and the analysis>

## Things not to say
- <Five: common outsider misconceptions about this product, claims that overreach, vocabulary the insiders do not use>

## Terms cheat sheet
- **<term>**: <meaning in this company's usage, defined inline, not as a glossary to memorise>

## Sources
- <URL, date read, what it supported>
```

## Rules

- Cover every product line, including the ones with little public material. Interviewer titles tell you which will come up. Thirty minutes on the quiet product line closes a blind spot that otherwise appears live in the room.
- Where the only known fact is the general platform (a cloud provider, a database vendor), do not name the specific tooling as if confirmed. Use generic language and turn it into a question.
- The opinions section is the point of the document. If it is thin, the deep dive is not done.
- Render an HTML twin. If the candidate wants to listen rather than read, see `audio-summary.md`.

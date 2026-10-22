# Case study and system design rounds

Both rounds test whether the candidate can lead a structured conversation to a committed answer under time pressure. The common failure is not a lack of ideas; it is staying in discovery too long and ending with a direction instead of a plan. Interviewers want a proposal they can probe. A wrong-but-clear recommendation beats an open-ended exploration every time.

## Case study

### Time split (for a 45 to 60 minute round)

| Phase | Share | What happens |
|---|---|---|
| Discovery | 10 to 20% | Clarifying questions, problem framing, who the users and stakeholders are |
| Solution development | 50 to 60% | Options, tradeoffs, the approach, the architecture or plan |
| Recommendation | 10 to 15% | A clear final plan with rationale |
| Validation | 5 to 10% | How to test it, what would make you revise |

### The close (say it in these words if needed)

> "Given the tradeoffs we have discussed, my recommendation is A. I would validate it by B, and I would be ready to revise based on C."

Write this sentence in the prep with A, B, C filled for the two or three most likely case prompts. Having the shape memorised makes the close automatic when time is short.

### Watch for

- Still in discovery with half the time gone: stop asking, start proposing. Force the close even if the analysis feels incomplete.
- "There are a few directions we could take here" without committing: that is the pattern that loses the round. Pick one and say why.
- Waiting for the interviewer to steer: lead the conversation. Say what you will cover and in what order, then do it.
- In regulated industries: include Risk, Legal, Compliance, and Audit in the stakeholder map without being prompted, and name the regulatory cost of options ("this one requires a reporting change, that one does not").

### Revenue-growth cases ("how would you grow revenue for X?")

The question is the diagnosis; they have already done it. Rebalance: clarify and diagnose 15 to 20%, propose and develop 60 to 70%, pitfalls and tradeoffs 15 to 20%.

Lever playbook, pick the biggest one fast:
1. Pricing and packaging (tier changes, value-based pricing, premium add-ons)
2. Land and expand (sell more to existing customers: upsell, cross-sell, deeper wallet share)
3. New segments (customer types, geographies, tiers)
4. New products (adjacent products, platform extensions)
5. Retention and churn (only if churn is actually the problem)
6. Distribution and partnerships

For business-to-business platforms with an established customer base, land and expand is almost always the highest-leverage answer.

A developed proposal has: a named lever, a named segment or use case, a named first move (specific), one measurable outcome, one acknowledged tradeoff. A direction at the end does not count.

## System design (product manager altitude)

### Framework

1. **Clarify:** users, scale, latency and consistency needs, constraints (budget, compliance, existing systems). Two minutes, not ten.
2. **High-level:** the main components and how data flows between them. Draw it.
3. **Happy path:** walk one request or event end to end.
4. **Deep-dive:** pick the hardest part (the interviewer will often choose) and go one level down.
5. **Tradeoffs:** for each major choice, name the alternative and what you give up.
6. **Scale and failure:** what breaks first at 10x, how you would know, what you would do.

### Preparation

- **Worked example near the company's domain.** Write one scenario in the prep at PM altitude (a payment notification service, a usage-metering pipeline, a booking engine), with the components, the happy path, and a tradeoff table. Structure is what the candidate should not have to invent on the day.
- **Plain-English tradeoff tables.** Columns: Option | What we gain | What we give up | When I would choose it. This framing plays to product judgement rather than engineering depth, and interviewers rate it.
- **Compliance early for regulated industries:** data residency, encryption at rest and in transit, audit logs, retention, regulatory reporting, customer-specific regimes. Raise them in the Clarify step, not when prompted.
- **Mock with a senior engineer.** One session with someone who will push back on the reasoning exposes gaps that can be closed in advance. This combination (framework memorised, worked example written, one mock) has turned the design round from the weakest to the strongest for candidates who were worried about it.
- **Lead the design.** Say the framework out loud at the start and move the conversation through it. Interviewers remark on candidates who drive, and on candidates who wait.

### Tradeoff table template

| Decision | Chose | Alternative | Gained | Gave up | Would reverse if |
|---|---|---|---|---|---|
| Storage | ... | ... | ... | ... | ... |
| Processing | ... | ... | ... | ... | ... |
| Delivery | ... | ... | ... | ... | ... |

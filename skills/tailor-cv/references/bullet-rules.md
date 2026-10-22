# Bullet rules

Bullets are evidence. The summary may frame; bullets must be precise, defensible, and in the reader's language.

## Shape

- Order inside a bullet: result → action → impact on the business. Lead with the outcome in a **bold phrase**, then what the candidate did, then why it mattered.
- 2 to 6 bullets per role. The most recent two roles carry the most; older roles shrink to 2 or 3.
- A different verb starts each bullet within a role.
- Every bullet ends with a full stop.
- Numbers are preferred over adjectives, but only numbers the candidate can defend; `role-context.md` lists them.
- One idea per bullet. If a bullet needs "and also", split it or cut the weaker half.

## Default-keep the core bullets

`role-context.md` lists each role's core bullets. Keep them unless one of these applies:

Valid reasons to drop:
1. The domain is irrelevant or would confuse this reader (a sector-specific framing that means nothing in the target sector).
2. The role's framing contradicts it (an explicit centralised-versus-federated mismatch, for instance).
3. The page is physically full after everything stronger is in.
4. The candidate says drop it.

Not valid:
- "This role is more strategic than technical." Technical roles want craft proof regardless.
- "The JD does not emphasise this." The bullet still shows the craft behind what the JD does emphasise.
- "To save space", when space is not full.

When in doubt, keep it.

## Respect the locks

- **Phrasing locks** in `role-context.md` are exact strings that must not be altered. They exist because an earlier rewrite made a technically precise description wrong (reordering a pipeline, dropping one of a fixed set of stakeholder groups). Copy them verbatim.
- **Ordering rules** say which bullet leads a section. Follow them even if another bullet seems more relevant to this JD; the lead bullet is the candidate's chosen identity for that role.
- **Conditional inclusion** says when a whole role appears (sector match, a years-of-experience bar). Apply it before tailoring the rest.

## Creation verbs

When the candidate created something that did not exist, lead with Built, Founded, Created, Established, Launched. "Owned X from zero" can mean inheriting an empty project. Add leadership after the creation verb: "Built the platform from scratch; secured executive sponsorship, set the roadmap, grew the team to N." Owned, Led, Drove suit managing and transforming work, not making.

## Reframing versus inventing

Reframing real work in the JD's vocabulary is fine when the work matches the word's real meaning (see the term table in `honesty-rules.md`). Inventing a bullet because the JD asks for it is not, however plausible. Never add without confirmation: strategic decisions, people-management actions, technical choices, numbers, cross-team work at a stated scale, specific features shipped.

Do not append a JD-mirroring capability sentence to a single-example bullet ("...demonstrating judgement on when to use X versus Y"). One example proves one decision. Write the example and stop.

## Translate for the reader

When the hiring manager is from a different discipline than the candidate's specialism, specialist vocabulary hides the substance. Translate, do not delete: identify the action, the outcome, and the judgement, then re-express in the reader's words.

| Specialist vocabulary | For a reader outside the specialism |
|---|---|
| Schemas, intake patterns | APIs, integration patterns, workflow tooling |
| Medallion or bronze/silver/gold layers | Pipeline stages, data-quality tiers, or drop |
| ETL / ELT | Data flow, integration |
| Semantic layer, metrics layer | Reporting layer, query layer, or drop |
| Self-serve abstraction | Self-serve tooling, platform pattern |
| Federated governance | Cross-team standards, shared ownership |
| Data contracts | Interface agreements, API contracts |
| Data products | Internal products, platform capabilities |
| Lineage | Traceability, audit trail |
| Domain teams | Internal engineering teams, business teams |

Keep the specialist vocabulary when the reader is a peer in the specialism; it is their native language and translating it would sound junior. Decide per CV from `analysis.md` Part 2. Test: would this hiring manager understand the bullet without a glossary?

## Tense and status

- Roles that have ended use past tense throughout, including the most recent one if `role-context.md` marks it ended. "Present" in the heading only when it is current.
- The one-line company descriptor under each heading is present tense (the company still exists) and written in the target reader's vocabulary.

## Side projects

Lead with the value to the user, then how it works, with the tech stack last. One project per idea: a newer, fuller version replaces its predecessor rather than sitting beside it.

## Skills section

Use the lines from `profile/preferences.md` as written. Add the conditional line only when the role involves that area; it costs a line and signals nothing otherwise. Do not add tools the candidate has not used because the JD lists them; `preferences.md` and `role-context.md` are the only sources.

## What stays out of CV bullets

- Tradeoff sentences ("the cost was...", "the tradeoff was..."). Spoken, they signal judgement; printed, they read as defensive. Tradeoff thinking belongs in prep documents. On the CV it shows implicitly, through phrases like "chosen on cost, scale, and time-to-value with finance and engineering".
- Interview-only facts from `role-context.md`.
- Generated-text tells from `writing-rules.md`: empty adjectives, buzzword verbs, triplets stacked, "at scale" more than once.

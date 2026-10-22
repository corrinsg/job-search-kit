# Research rules

## What counts as verified

- A fact you read on the company's own site, a filing, a press release, or a primary news source, with a date, is verified. Cite it.
- A web search snippet is a pointer, not a source. Search results are cached snapshots that lag reality by days or weeks. Open the page before relying on it.
- A job posting found via search or an aggregator (Built In, ZipRecruiter, Glassdoor jobs, startup.jobs, cached LinkedIn pages) is not confirmed live. Never write "verified live" against a URL you did not read directly from the company's applicant tracking system. See `${CLAUDE_PLUGIN_ROOT}/skills/find-roles/references/ats-verification.md` for which systems can be read.
- When verification is not possible, say so in the document header and downgrade the claim: "company-level entry, click the careers index to see what is live".

## Company research

- Answer the eight Part 1 questions in `${CLAUDE_PLUGIN_ROOT}/skills/analyse-jd/SKILL.md` in plain terms first. The candidate should be able to explain what the company does in one sentence.
- For multi-product companies, list every product line before deep-prepping any of them. Prep tends to drift towards the lines with the most public material, and interviewers then raise the one you skipped. Interviewer titles are the clue: if a panelist's title names a product line, you need at least a paragraph on it. Minimum per line: what it does in one sentence, who the user is, where it sits in the platform. Sources: LinkedIn profiles of people on that team, careers pages, partner blogs, "<product> case study" searches.
- For domain-heavy industries (insurance, banking, healthcare, energy, agriculture, logistics), the screening bar is domain understanding, not "learns fast". Research how the industry works, its vocabulary, the regulatory environment, who the customers are, the live debates. The test: could the candidate sound like someone who has already started thinking like an insider?

## People research

- Hiring manager: state the most likely title, the likely person if findable, and how you determined it. Separate "confirmed" from "inferred".
- Interviewers: background, probable lens, what they are likely to probe, what to surface for them. Keep inferences marked.
- Do not write biographical inferences as facts (see `references/honesty-rules.md`, rule 4).

## Salary research

- Sources: Levels.fyi, Glassdoor (the specific company, not the generic title), Payscale, LinkedIn Salary, funding and valuation news, posted ranges on the company's own listings.
- Break the estimate into base, bonus, equity, and other, each with Low / Mid / High and a confidence level.
- Never invent numbers. If data is thin, say so and state the assumption used ("based on Series C fintech, London, senior IC level").
- Do not conflate total compensation with base salary when reading Levels.fyi.
- Sector matters more than title: a venture-backed tech company, a multinational in a non-tech sector, and a listed retailer or bank pay very differently for the same title in the same city.

## Mark what you do not know

Every analysis and prep ends with the open questions that research could not close. Those become the candidate's first questions in the interview, which is a strength: it shows homework and gives the interviewer something to talk about.

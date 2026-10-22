---
name: find-roles
description: Build a curated, honestly verified list of companies and open roles that match the candidate's targeting. Use when the candidate asks "who is hiring", "find me roles", or wants a shortlist for a sector, stage or location. Separates API-verified roles from company-level leads.
argument-hint: "[sector, stage, location]"
disable-model-invocation: true
---

# Find roles

Produce `applications/_research/YYYY-MM-DD_curated_roles.md`: a shortlist the candidate can act on today, where every claim about a live role is one you actually verified by reading the company's applicant tracking system (ATS), and every unverified lead is labelled as such.

## Why the honesty tiers exist

Earlier versions of this workflow listed roles found through search results and aggregator sites. Most links were dead when clicked. A second pass "verified" roles via web search, and those were stale within days: search results are cached snapshots, not the live board. The fix is structural. A role is Tier A only when you read it from the ATS itself; everything else is a company-level lead with a link the candidate clicks to see what is live right now. Read `${CLAUDE_SKILL_DIR}/references/ats-verification.md` before you start, and `${CLAUDE_PLUGIN_ROOT}/references/research-rules.md` for what counts as verified.

## Flow

1. **Targeting.** Read `profile/preferences.md`: target titles and levels, functions and domains, locations, company stages. Combine with the arguments the candidate gave. Restate the scope in one line and confirm it if anything is ambiguous.

2. **Longlist companies.** Use web search for: recent funding announcements in the sector and stage; "<title> hiring <city>" and "<domain> product manager" searches; sector lists and investor portfolio pages; companies the candidate names. Aim for 25 to 40 companies. Record each company's ATS (Greenhouse, Lever, Ashby, Workable, other) from its careers page link.

3. **Verify per company.** For each company, try to read the ATS directly, in the order the reference file gives. Fetch the JSON or rendered HTML, filter for titles matching the targeting, and record title, location, URL and posting date if present. If the ATS cannot be read, do not guess; move the company to Tier B with its canonical careers index URL.

4. **Classify.**
   - **Tier A, API-verified roles:** you read the role from the ATS today. Quote title, location, URL, posting date if available, why it fits, a fit guess (1 to 10, labelled as a guess), and risks.
   - **Tier B, company shortlist:** the company fits and shows hiring signals, but you could not read the board or found no matching title today. Give the ATS index URL and write "click to see what is live".
   - **Watch list:** fits the targeting, no product hiring signal right now.
   - **Dropped:** looked promising, failed a hard filter (location, stage, level). Say why in a few words so the candidate does not re-research them.

5. **Write the file** from `${CLAUDE_SKILL_DIR}/references/curated-roles-template.md`. The header states what was verified and how, so the candidate knows what to trust.

6. **Honest yield.** Close with the numbers: companies checked, boards read, Tier A roles found. A short Tier A list is a true result, not a failure.

7. **Next steps.** Recommend the two or three Tier A roles to run through `/job-search-kit:analyse-jd` first, and which Tier B boards to check manually this week.

Commit if the workspace is a git repository. Do not add anything to `tracker.json`; nothing has been applied for yet.

## What not to do

- Never write "verified live" or "live on <date>" against a URL you did not read from the ATS.
- Never list aggregator pages (job boards that re-post listings) as sources for a specific role.
- Never pad Tier A with roles that only roughly match the targeting. The candidate will trust the list; make it worth trusting.
- Do not spend the budget on companies whose ATS cannot be read. Note them in Tier B and move on.

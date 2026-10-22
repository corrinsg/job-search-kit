# Curated roles template

```markdown
# Curated roles | <scope: sector, stage, location>, <YYYY-MM-DD>

## What this file actually is (read first)

- Tier A roles were read directly from each company's applicant tracking system on <date>. They were open at that moment.
- Tier B companies fit the targeting but their boards could not be read, or showed no matching title today. The link is the live careers index: click it to see what is open now.
- Nothing here comes from job aggregators or search snippets. Those lag reality by days to weeks.
- Boards change weekly. Re-verify Tier A before applying if this file is more than a week old.

## Tooling limits (honest)

| System | Could I read it? | Effect on this list |
|---|---|---|
| Greenhouse | Yes (JSON API) | Full role lists for N companies |
| Ashby | Partly (API slug mismatch for M companies) | Those companies are in Tier B |
| Lever | No (403) | All Lever companies are in Tier B |
| Workable | No (client-side rendered) | All Workable companies are in Tier B |

## Tier A: API-verified roles (live on <date>)

### <Company> | <Title> (<location>)

- **URL:** <direct posting URL>
- **Posted or updated:** <date from the API, or "not provided">
- **Why it fits:** <two or three lines mapping to the candidate's targeting and strengths>
- **Fit guess:** <X/10, a guess until analyse-jd runs>
- **Risks:** <level mismatch, location, domain gap, salary signal>

### <Company> | <Title> (<location>)
...

## Tier B: Company shortlist, click the ATS index to see what is live

### <Company>

- **Careers index:** <canonical ATS URL>
- **What they do:** <one line>
- **Why they fit:** <one or two lines>
- **Hiring signal:** <funding date, headcount growth, a role seen in search that could not be verified>
- **Why not Tier A:** <board unreadable | no matching title today>

## Watch list

- **<Company>:** <fits targeting, no product hiring signal right now; what would change that>

## Dropped from scope

- **<Company>:** <reason in a few words: wrong stage, wrong location, level too junior>

## Recommended next steps

1. Run `/job-search-kit:analyse-jd` on <Tier A role> and <Tier A role> first.
2. Check the Tier B indexes for <Company> and <Company> manually this week.
3. <Networking or referral move if one is obvious>

## Honest yield

<N> companies checked, <M> boards read directly, <K> Tier A roles found, <J> Tier B companies. <One sentence on whether the scope should widen or narrow next time.>
```

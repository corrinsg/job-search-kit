# ATS verification: what can be read, and what cannot

Use WebFetch or `curl -s` on the API URLs and read the JSON. Rendered HTML counts when the role list is in the page source. A client-side rendered page that returns only a header does not count.

## Reliability table

| System | URL pattern | Reliability | Notes |
|---|---|---|---|
| Greenhouse JSON API | `https://boards-api.greenhouse.io/v1/boards/<slug>/jobs` | Reliable | Returns every open role as JSON with title, location, `absolute_url`, `updated_at`. Add `?content=true` for descriptions. |
| Greenhouse EU board HTML | `https://job-boards.eu.greenhouse.io/<slug>` | Reliable | Server-rendered role list. |
| Lever HTML | `https://jobs.lever.co/<slug>` | Often blocked | Frequently returns 403 to automated fetchers. |
| Lever JSON API | `https://api.lever.co/v0/postings/<slug>?mode=json` | Works only if enabled | Many companies return 404 because the public API is off. |
| Workable HTML | `https://apply.workable.com/<slug>` | Metadata only | Role list is fetched client-side; the HTML has no roles. |
| Workable widget API | `https://apply.workable.com/api/v1/widget/accounts/<slug>` | Inconsistent | Sometimes returns an empty jobs array even when roles are visible on the site. |
| Ashby HTML | `https://jobs.ashbyhq.com/<slug>` | SPA, header only | Content is fetched client-side. |
| Ashby JSON API | `https://api.ashbyhq.com/posting-api/job-board/<org>?includeCompensation=true` | Works for some orgs | The careers URL slug is not always the API org slug; try the company name in lower case too. |
| Teamtailor, SmartRecruiters, Personio, Workday | varies | Check directly | Public JSON availability varies by company and configuration. Read the page source; if the roles are not in it, treat as unreadable. |
| Company-built careers pages | varies | Check directly | Often server-rendered and readable. |

## Rules

1. **Never write "verified live <date>" against a URL you did not read via an API or server-rendered HTML.** A search result is a cached snapshot. It proves the role existed at some point, not that it is open now.
2. **Aggregator URLs are not primary sources.** Built In, ZipRecruiter, Glassdoor jobs, startup.jobs, cached LinkedIn pages, Welcome to the Jungle and similar re-post listings on a delay. Use them to discover a company, then verify on the company's own ATS.
3. **Downgrade when verification is impossible.** Give the canonical ATS index URL (for example `jobs.lever.co/<slug>`) and write "click the index to see what is live right now".
4. **State the limit in the file header.** The candidate must be able to see at a glance which entries were read directly and which were not.
5. **Record the read date.** Boards change weekly. A Tier A list older than a week should be re-verified before anyone applies from it.

## Quick checks

```bash
# Greenhouse: list titles
curl -s "https://boards-api.greenhouse.io/v1/boards/<slug>/jobs" | python3 -c "import json,sys; [print(j['title'],'|',j['location']['name'],'|',j['absolute_url']) for j in json.load(sys.stdin)['jobs']]"

# Ashby: list titles
curl -s "https://api.ashbyhq.com/posting-api/job-board/<org>" | python3 -c "import json,sys; [print(j['title'],'|',j.get('location'),'|',j['jobUrl']) for j in json.load(sys.stdin)['jobs']]"

# Lever (only if public API is enabled)
curl -s "https://api.lever.co/v0/postings/<slug>?mode=json" | python3 -c "import json,sys; [print(j['text'],'|',j['categories'].get('location'),'|',j['hostedUrl']) for j in json.load(sys.stdin)]"
```

If a command returns an error, an empty list, or HTML instead of JSON, the board is unreadable for this run. Say so and move the company to Tier B.

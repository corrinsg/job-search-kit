---
name: pipeline
description: Show or update the job-search pipeline. Use when the candidate asks where they stand across applications, wants a status table, needs to compare live offers or late-stage processes, or wants the funnel chart. Regenerates PIPELINE.md, DECISION-VIEW.md and funnel.html from tracker.json.
argument-hint: "[update | view | decision | funnel]"
disable-model-invocation: true
---

# Pipeline

`applications/tracker.json` is the single source of truth. `PIPELINE.md`, `DECISION-VIEW.md` and `funnel.html` are views generated from it, never edited by hand. Keeping one structured file means status is never contradictory across documents, and a regenerated view is always complete.

Other skills (analyse-jd, tailor-cv, interview-prep, debrief) append their own tracker events when they finish. This skill exists for the views and for bulk updates the candidate dictates ("mark Acme rejected, Beacon moved to onsite on Thursday").

## Flow

1. **Read** `applications/tracker.json`. If it is missing, create `{"applications": []}` and say so. Read the schema at `${CLAUDE_SKILL_DIR}/references/tracker-schema.md` the first time in a session.
2. **Apply updates** the candidate gives you. For each: find the entry by company (and role if there are two at the same company), change `status`, append a timeline event with today's date, and add a short note. New applications get a full entry with `folder` pointing at `applications/<company>/`. Confirm ambiguous matches before writing.
3. **Validate** the JSON (`python3 -c "import json; json.load(open('applications/tracker.json'))"`) before regenerating anything. A broken tracker breaks every view.
4. **Regenerate `applications/PIPELINE.md`** using `${CLAUDE_SKILL_DIR}/references/pipeline-template.md`. Each application goes in exactly one tier, decided by status. Sort each tier by most recent timeline date, newest first.
5. **Generate `applications/DECISION-VIEW.md`** only when at least one application has status `offer`, or two or more are in `interviewing` at a late stage (onsite complete, final round scheduled). Otherwise skip it and, if an old one exists, leave it but note its date is stale in the headline of PIPELINE.md. The decision view is a comparison, and a comparison with one entry misleads.
6. **Regenerate `applications/funnel.html`** from counts. Copy `${CLAUDE_SKILL_DIR}/assets/sankey-template.html` and substitute the placeholders (see below). Do not hand-draw a chart; the template is already styled and pinned to a specific Plotly version.
7. **Commit** if the workspace is a git repository (`profile/preferences.md` says so): one line, for example `Pipeline: Acme rejected, Beacon onsite scheduled`. Do not push unless asked.
8. **Report** the headline in chat: counts per tier and the two or three items that need action this week.

## Tier mapping (status → tier)

| Status | Tier in PIPELINE.md |
|---|---|
| `offer`, `accepted` | Offers |
| `interviewing` | Live, in interview process |
| `recruiter-stage` | Recruiter and intro calls |
| `researching`, `cv-ready` | To apply, recently built |
| `applied`, `no-response` | Applied, awaiting response |
| `rejected`, `withdrew`, `closed` | Closed |

Anything with a note the candidate must act on (chase a recruiter, confirm a date, answer an exercise) also appears under "Open items".

## Funnel counts

Compute from `tracker.json`:

| Placeholder | Count |
|---|---|
| `{{APPLIED}}` | entries with any `applied` event, or status beyond `cv-ready` |
| `{{RECRUITER}}` | entries with a `recruiter-call`, `recruiter-screen-*` or later event |
| `{{NO_RESPONSE}}` | `{{APPLIED}}` minus `{{RECRUITER}}` |
| `{{INTERVIEW}}` | entries with an `interview`, `interview-scheduled`, `onsite-complete` or `offer` event |
| `{{STALLED}}` | `{{RECRUITER}}` minus `{{INTERVIEW}}` |
| `{{OFFER}}` | entries with an `offer` event or status `offer` / `accepted` |
| `{{REJECTED_OR_LIVE}}` | `{{INTERVIEW}}` minus `{{OFFER}}` |
| `{{AS_OF}}` | today's date, YYYY-MM-DD |

The link values must add up stage by stage (Applied splits into Recruiter and No response; Recruiter splits into Interview and Stalled; Interview splits into Offer and Rejected or live). If they do not, the Sankey draws gaps, so check the arithmetic before writing.

## Decision view guidance

When you do write `DECISION-VIEW.md`, be direct. The candidate wants a read, not a survey:

- Name the front-runner in the first line and say why.
- Put compensation side by side using the `compensation.md` files in each application folder; mark anything estimated rather than confirmed.
- Give a rough ranking and label it as your read; the candidate's instinct outranks it.
- Say what each company needs from the candidate this week, and what the candidate should not do (for example, verbally commit anywhere before the front-runner's offer is in writing).

## What not to do

- Do not edit `PIPELINE.md` or `DECISION-VIEW.md` directly. Change the tracker and regenerate.
- Do not invent dates. Use `"unknown"` when the candidate cannot remember.
- Do not drop closed applications from the tracker. They feed the funnel and the debrief history.

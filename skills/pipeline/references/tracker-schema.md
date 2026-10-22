# tracker.json schema

One file at `applications/tracker.json`. Everything else in the pipeline is generated from it.

```json
{
  "applications": [
    {
      "company": "Acme Logistics",
      "role": "Senior Product Manager, Routing",
      "location": "London, hybrid",
      "folder": "applications/acme-logistics/",
      "status": "interviewing",
      "cv_ready": true,
      "fit_score": 8,
      "notes": "Hiring manager is the Director of Product, Routing. Panel is two rounds plus a case study. Recruiter said band is open to discussion.",
      "timeline": [
        { "date": "2026-02-03", "event": "analysis-created", "notes": "Fit 8/10. Gap: no marketplace pricing experience." },
        { "date": "2026-02-04", "event": "cv-created" },
        { "date": "2026-02-05", "event": "applied", "notes": "Via referral from a former colleague." },
        { "date": "2026-02-12", "event": "recruiter-call", "notes": "30 minutes. Salary band not disclosed; asked for theirs first." },
        { "date": "2026-02-19", "event": "interview-scheduled", "notes": "Hiring manager, 45 minutes, 2026-02-24." },
        { "date": "2026-02-24", "event": "interview", "notes": "Went well. Probed on tradeoffs in the dispatch rewrite." },
        { "date": "2026-02-26", "event": "exercise-sent", "notes": "Take-home case study, due 2026-03-02." }
      ]
    }
  ]
}
```

## Fields

| Field | Type | Notes |
|---|---|---|
| `company` | string | Display name. Used to match updates, so keep it stable. |
| `role` | string | Title as posted. |
| `location` | string | City and working pattern. |
| `folder` | string | Relative path to the application folder. |
| `status` | enum | One of the statuses below. Exactly one per application. |
| `cv_ready` | boolean | True once `tailored-cv.md` exists. |
| `fit_score` | integer or null | From `analysis.md`, 1 to 10. |
| `notes` | string | Free text: who the hiring manager is, what the process looks like, open questions. |
| `timeline` | array | Ordered oldest to newest. Each event has `date` (YYYY-MM-DD or `"unknown"`), `event` (from the vocabulary below), optional `notes`. |

## Status enum

Keep it small. Nuance goes in `notes` and the timeline, not in new statuses.

| Status | Meaning |
|---|---|
| `researching` | Analysis exists or is in progress, no CV yet. |
| `cv-ready` | Tailored CV written, not yet submitted. |
| `applied` | Submitted, no human contact yet. |
| `no-response` | Applied over three weeks ago with no reply. |
| `recruiter-stage` | Recruiter or intro call scheduled or completed, no interview yet. |
| `interviewing` | At least one interview with the team scheduled or completed. |
| `offer` | Offer received, not yet accepted. |
| `accepted` | Offer accepted. |
| `rejected` | Company closed the process. |
| `withdrew` | Candidate closed the process. |
| `closed` | Role withdrawn, company froze hiring, or process ended for another reason. |

## Timeline event vocabulary

Use these names so the funnel can be computed. Add a new one only if none fits, and document it here.

`analysis-created`, `cv-created`, `cv-revised`, `cover-letter-created`, `applied`, `recruiter-outreach`, `recruiter-call`, `recruiter-screen-scheduled`, `recruiter-screen-passed`, `salary-band-confirmed`, `interview-scheduled`, `onsite-scheduled`, `interview`, `onsite-complete`, `exercise-sent`, `follow-up`, `thank-you-sent`, `referral-sent`, `networking-call`, `feedback-call`, `offer`, `rejected`, `withdrew`

## Who writes what

- `analyse-jd` adds the entry (`status: researching`) and `analysis-created`.
- `tailor-cv` sets `cv_ready: true`, `status: cv-ready`, adds `cv-created` or `cv-revised`.
- `cover-letter` adds `cover-letter-created`, `recruiter-outreach`, `follow-up` or `thank-you-sent`.
- `interview-prep` adds `recruiter-screen-scheduled`, `interview-scheduled` or `onsite-scheduled` and moves status forward.
- `debrief` adds `interview`, `onsite-complete`, `feedback-call`, `offer` or `rejected` and sets status.
- `pipeline` handles anything the candidate dictates and all regeneration.

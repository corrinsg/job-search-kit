# File conventions for the candidate's workspace

The kit never stores candidate data inside the plugin. Everything lives in the candidate's own repository (the "workspace"), laid out like this:

```
<workspace>/
├── CLAUDE.md                 short pointer: profile/ is the source of truth, spelling convention
├── profile/
│   ├── base-cv.md            master CV, in the kit's section order
│   ├── role-context.md       per-employer truth: what happened, numbers, core bullets, locks, never-claim list
│   ├── interview-context.md  personal answers to the standard questions, non-CV differentiators
│   ├── preferences.md        spelling, target titles, locations, tech-stack lines, story ratio, who is using the kit
│   └── lessons.md            dated lessons appended by the debrief skill; read before every prep
└── applications/
    ├── tracker.json          structured source of truth for the pipeline
    ├── PIPELINE.md           generated status view
    ├── DECISION-VIEW.md      generated when two or more processes are late-stage
    ├── funnel.html           generated Sankey funnel
    ├── _research/            YYYY-MM-DD_curated_roles.md files from find-roles
    └── <company>[-role-slug]/
        ├── analysis.md
        ├── compensation.md
        ├── tailored-cv.md
        ├── cover-letter.md, outreach.md, recruiter-reply.md, thank-you.md
        ├── recruiter-screen-prep.md (+ .html)
        ├── interview-prep.md (+ .html)
        ├── panel-prep.md, interview-qa.md (+ .html)
        ├── <topic>-deep-dive.md (+ .html)
        ├── <firstname>-prep.md for a single named interviewer (+ .html)
        └── debrief.md
```

## Naming

- One folder per application, lower-case, hyphenated: `acme`. Two roles at the same company: `acme-senior-pm`, `acme-platform-lead`.
- File names are the vocabulary above. Stage-specific preps are named for the stage (`recruiter-screen-prep.md`, `panel-prep.md`, `round-2-prep.md`), or for the person when the meeting is with one named interviewer.
- Research files are dated: `applications/_research/2026-03-14_curated_roles.md`.

## HTML twins

Every prep document (anything the candidate reads on a phone before a call) gets an `.html` twin rendered with `${CLAUDE_PLUGIN_ROOT}/scripts/render-html.sh <file.md>`. CVs do not get one; they are exported by the candidate into their own CV template. If the script reports pandoc is missing, tell the candidate the install command once, then write the HTML by hand using `${CLAUDE_PLUGIN_ROOT}/assets/prep-style.css` inline.

## Locked files

When the candidate says a CV has been submitted, add `**Status:** submitted on <date>, locked` to the top of its Tailoring Notes and stop editing it. Later changes go in a new file (`tailored-cv-v2.md`) so what the company holds stays reproducible.

## After every deliverable

1. Update `applications/tracker.json` (add the application if new; append a timeline event). The schema is in `${CLAUDE_PLUGIN_ROOT}/skills/pipeline/references/tracker-schema.md`.
2. If the workspace is a git repository, commit with a one-line message naming the company and the deliverable. Do not push unless asked.
3. Tell the candidate the file paths you created, and what you could not verify.

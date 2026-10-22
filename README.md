# Job Search Kit

A Claude Code plugin that turns a job search into a repeatable process:

1. **Analyse the job description.** Company research, the likely hiring manager, what gets a CV shortlisted, a reconstructed internal recruiter briefing, salary research, and a fit score from the hiring manager's point of view.
2. **Tailor the CV honestly.** Rewrite the summary and bullets for this reader, keep the strong bullets, never invent, never stretch vocabulary, and strip the tells that make writing look generated.
3. **Prepare for each stage.** Recruiter screen, hiring manager, panel or onsite, case study, system design, product deep dive, or a single named interviewer. Scannable documents with key beats, rendered to HTML for reading on a phone.
4. **Debrief and learn.** After each interview or rejection, capture what happened and append generalised lessons to your profile. The next prep reads them.
5. **Keep the pipeline in view.** A tracker, a status page, an offers comparison, and a funnel chart.
6. **Find roles** with an honest distinction between postings read live from an applicant tracking system and companies worth checking.

Plus cover letters and recruiter messages.

The kit holds only the process. Everything about you lives in a `profile/` folder in your own private repository.

## Install

You need [Claude Code](https://code.claude.com). Pick one route.

**From this repository as a marketplace (gets updates):**

```bash
claude plugin marketplace add <github-owner>/job-search-kit
claude plugin install job-search-kit@job-search-kit-marketplace
```

**Try it for one session, or from a zip someone sent you:**

```bash
claude --plugin-dir /path/to/job-search-kit
```

**Copy it in permanently without a marketplace:** move the whole `job-search-kit` folder (including `.claude-plugin/`) into `~/.claude/skills/`.

Optional but recommended: `pandoc` for the HTML twins of prep documents (`brew install pandoc`, `sudo apt install pandoc`, or `winget install pandoc`). Without it the kit writes the HTML by hand.

## Quick start

```bash
mkdir my-job-search && cd my-job-search && git init
claude
```

Then, inside Claude Code:

```
/job-search-kit:setup-profile
```

The setup skill interviews you in short batches and writes `profile/` (your base CV, the truth behind each role, your answers to the standard interview questions, your preferences, and an empty lessons file). It takes 30 to 60 minutes if you do it properly, and that time is repaid on every application. A filled-in fictional example is in `examples/profile-sample/`.

After that, paste a job description:

```
/job-search-kit:analyse-jd <paste the JD or a link>
```

or just paste it and say what you want; the `job-search` skill routes to the right phase. Then:

```
/job-search-kit:tailor-cv acme
/job-search-kit:interview-prep acme recruiter screen
/job-search-kit:debrief acme
/job-search-kit:pipeline view
```

## What the workspace looks like

```
my-job-search/
├── CLAUDE.md
├── profile/
│   ├── base-cv.md
│   ├── role-context.md
│   ├── interview-context.md
│   ├── preferences.md
│   └── lessons.md
└── applications/
    ├── tracker.json
    ├── PIPELINE.md
    └── acme/
        ├── analysis.md
        ├── compensation.md
        ├── tailored-cv.md
        ├── recruiter-screen-prep.md (+ .html)
        ├── interview-prep.md (+ .html)
        └── debrief.md
```

## The skills

| Skill | Use it for |
|---|---|
| `job-search` | Entry point. Paste a JD or say what you need; it routes. |
| `setup-profile` | First run, and later edits to your profile. |
| `analyse-jd` | Company, hiring manager, shortlisting signals, salary, fit score. |
| `tailor-cv` | A tailored CV with tailoring notes you can defend in interview. |
| `cover-letter` | Cover letter, outreach, replies, follow-ups, thank-you notes. |
| `interview-prep` | Stage-specific prep, HTML twin, optional audio summary. |
| `debrief` | Post-interview or post-rejection debrief, lessons appended to your profile. |
| `pipeline` | Tracker updates, status page, offers comparison, funnel. |
| `find-roles` | Curated roles with honest verification tiers. |

## The rules that travel with it

Four short files in `references/` are read by every skill:

- `writing-rules.md`: the checklist of generated-text tells (long dashes, self-labels, empty adjectives, triplets, "genuine", "passionate about", "reads like", and more), acronyms defined in brackets on first use, full stops on bullets, one spelling convention.
- `honesty-rules.md`: no fabricated bullets, no stretching technical vocabulary to match a JD, no general capability claimed from one example, no specifics inferred from general facts, creation verbs for creation work.
- `research-rules.md`: what counts as verified, research every product line, the domain-knowledge bar at screening, how to do salary research without inventing numbers.
- `file-conventions.md`: folder and file naming, HTML twins, locked CVs, tracker updates.

They came from several months of real applications and the mistakes made along the way. Each rule says why it exists.

## Privacy

- Keep your workspace repository private. `profile/role-context.md` is meant to be candid.
- The plugin never writes to its own folder. Everything it produces goes to your workspace.
- Company and interviewer research uses public web search. Nothing about you is sent anywhere by the kit itself; Claude Code's own data handling applies.

## Customising

- Edit `references/*.md` to change the house rules for everyone using your copy.
- Edit `skills/<name>/references/*-template.md` to change document outlines.
- Replace `assets/prep-style.css` to restyle the HTML twins.
- Your personal rules belong in `profile/lessons.md`, not in the plugin, so they survive plugin updates.

## Licence

MIT. See `LICENSE`.

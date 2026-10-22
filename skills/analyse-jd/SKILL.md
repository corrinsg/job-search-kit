---
name: analyse-jd
description: Analyse a job description before applying. Use whenever the user pastes a JD or job link, asks "should I apply" or "what do you think of this role", or wants company, hiring-manager, or salary research. Produces analysis.md with a fit score plus compensation.md.
argument-hint: [job description text or URL]
---

# Analyse a job description

Produce two files in `applications/<company>[-role-slug]/`: `analysis.md` (company, hiring manager, shortlisting signals, fit score) and `compensation.md` (salary research). Everything downstream reads these: the CV is tailored to the hiring manager you identify here, and the interview prep reuses the company research. Rushing this step produces a CV tailored to the wrong reader.

## Before you start

1. Read `profile/preferences.md`, `profile/base-cv.md`, `profile/role-context.md`, `profile/interview-context.md`, and `profile/lessons.md`. The fit score is only meaningful against what the candidate has actually done, and `interview-context.md` holds the honest gaps that no analysis should paper over.
2. Read `${CLAUDE_PLUGIN_ROOT}/references/research-rules.md` (what counts as verified, salary sources) and `${CLAUDE_PLUGIN_ROOT}/references/file-conventions.md` (folder naming, tracker update).
3. If the user gave a URL, fetch it. If the posting is gone, say so and work from whatever text they pasted. If there is no JD text at all, ask for it; do not reconstruct one from the company's careers page.
4. Create the application folder. Name it after the company, lower-case and hyphenated. If the candidate already has a folder for this company, add a role slug (`acme-platform-lead`).

## The four-part analysis

Use the heading outline in `${CLAUDE_SKILL_DIR}/references/analysis-template.md` exactly. The outline is stable on purpose: the candidate reads dozens of these and should be able to find the recruiter briefing in the same place every time.

**Part 1: Company and why this hire exists.** Act as a commercial researcher. Web-search the company and answer the eight questions: what it does in simple terms; size and stage; funding and total raised; key competitors; major news in the last 12 to 18 months (funding, layoffs, leadership changes, launches, expansion); where the role sits (team, reporting line); why it is being hired now, in two or three sentences; the measurable outcome this person will probably deliver in the first 6 to 12 months. Cite sources with dates. If the company has several product lines, list all of them, even the ones with little public material; interviewers raise the one you skipped.

**Part 2: Who is the hiring manager.** Most likely title; the likely person and profile link if findable; how you determined it; what they probably care about most; what would make this hire feel low-risk to them. Separate confirmed facts from inferences and label the inferences. A wrong name stated confidently is worse than "most likely a Director of Product, to confirm".

**Part 3: What the candidate must signal to be shortlisted.** Three to five must-have signals a recruiter scans for; keywords and metrics that need to appear on the CV; the background that would feel immediately aligned; language and themes repeating in the JD; the one mistake most likely to cause rejection. Then reconstruct the internal recruiter briefing: core business problem, three to five non-negotiables, measurable outcomes expected, level of scope (team size, revenue, ownership), and the risks they are trying to avoid in this hire. This reconstruction is what the CV summary answers.

**Part 4: Salary research.** Follow the salary section of `research-rules.md`. Research the specific company on Glassdoor and Levels.fyi, posted ranges, and funding stage. Break into base, bonus, equity, and other, each with a Low / Mid / High and a confidence level. State assumptions explicitly ("Series C fintech, London, senior IC"). Never invent a number; if data is thin, say so. Put the full table in `compensation.md` using `${CLAUDE_SKILL_DIR}/references/compensation-template.md` and a summary in Part 4 of the analysis. There is no salary gate in this kit: report the range and let the candidate decide.

## The fit score

At the top of `analysis.md`, after the metadata lines, write `**Fit score: X/10**` followed by `**Why X:**` in one paragraph: strengths first, then gaps, then who would score higher (the profile of the candidate the hiring manager is imagining). Score from the hiring manager's perspective, not the candidate's. The score exists so the candidate can decide where to spend effort; an inflated 8 costs them a week of prep on a role that was always a 5.

A useful calibration:

| Score | Meaning |
|---|---|
| 9 to 10 | The candidate has done this job at this scale in this domain. Rare. |
| 7 to 8 | Core craft matches, one domain or scope gap the summary can carry. |
| 5 to 6 | Transferable craft, a real gap in the non-negotiables. Worth applying only with a referral or a strong cover letter. |
| 3 to 4 | Two or more non-negotiables missing. Say so plainly. |

## The opinionated sections

After the four parts, add the sections that make the analysis actionable:

- **Requirement-by-requirement:** a table of each JD requirement, the candidate's evidence from `role-context.md` (or "none"), and the strength (strong / partial / gap). This table becomes the map for `tailor-cv`.
- **Honest gaps, and how to hold them:** every gap in the table with the honest line the candidate can say about it in an interview. A gap named by the candidate is a judgement signal; a gap discovered by the interviewer is a rejection reason. If a gap is on the `interview-context.md` never-claim list and it is the core bar of the role, say that this is a real gap, not a framing problem.
- **Why <company> (for the interview):** three reasons that are specific to this company's situation, written so they can be reused in the "why us" answer. Not "exciting mission".
- **Should you apply?** One paragraph with a recommendation. Apply, apply with a referral, or pass, and why.
- **Things to confirm with the candidate before finalising:** inferences about their experience that you need them to confirm, and facts about the company you could not verify.

## Finish

1. Run the writing checklist in `${CLAUDE_PLUGIN_ROOT}/references/writing-rules.md` on both files (spelling from preferences, no long dashes, acronyms defined on first use).
2. Add or update the application in `applications/tracker.json` (schema in `${CLAUDE_PLUGIN_ROOT}/skills/pipeline/references/tracker-schema.md`): status `researching`, a timeline event `analysis-created` with today's date, and the fit score in notes.
3. If the workspace is a git repository, commit: `Add <Company> analysis and compensation research`.
4. Report to the user: the fit score and the one-line recommendation, the file paths, what could not be verified, and ask whether to proceed to `/job-search-kit:tailor-cv`.

## Why this is not shorter

The temptation is to skip to the CV. Every time this process skipped the hiring-manager read, the CV spoke to the wrong person: a platform CV sent to a payments leader, a technical CV sent to a commercial one. Every time it skipped product-line coverage, an interviewer raised the missing line. The analysis is an hour that saves a rejection.

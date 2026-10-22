---
name: tailor-cv
description: Tailor the candidate's CV or resume to a role. Use whenever the user asks to tailor, adapt, update, or rewrite a CV for a job, company, or JD, or wants to apply after an analysis. Produces tailored-cv.md with tailoring notes, built only from real experience in the profile.
argument-hint: [company or application folder]
---

# Tailor the CV

Write `applications/<company>/tailored-cv.md`: a version of the candidate's CV that answers the hiring manager identified in `analysis.md`, built only from things the candidate did. The two failure modes this skill guards against are opposite: a CV so generic it could be anyone's, and a CV so eager to match the JD that it claims work the candidate never did. The first loses the shortlist; the second loses the interview.

## Before you start

1. Require `applications/<company>/analysis.md`. If it does not exist, say so and offer to run `/job-search-kit:analyse-jd` first. Tailoring without the hiring-manager read and the requirement-by-requirement table means guessing at the reader.
2. Read `profile/preferences.md` (spelling, target level, current title, skills lines, side projects, page limit), `profile/role-context.md` (the truth behind each role: core bullets, ordering rules, phrasing locks, conditional inclusion, never-claim lists), and `profile/lessons.md` (anything a recruiter or interviewer said about earlier CVs).
3. Read `${CLAUDE_PLUGIN_ROOT}/references/honesty-rules.md` and `${CLAUDE_PLUGIN_ROOT}/references/writing-rules.md`. They are short and every rule in them was learned the hard way.
4. Pick a base. If an earlier `tailored-cv.md` exists for a similar role (same function, same level, similar domain), start from it and name it in the notes. Otherwise start from `profile/base-cv.md`. Starting from the closest sibling keeps hard-won phrasing; starting from the base every time regenerates the same mistakes.

## How to tailor

Work from the analysis, not from the JD text directly. The "Reconstructed internal recruiter briefing" is what the summary answers; the "Requirement-by-requirement" table is what the bullets answer.

**Summary.** Follow `${CLAUDE_SKILL_DIR}/references/summary-styles.md`: choose the opener for the target level, choose the style for the company type (investigate-then-build for startups and scaleups, strategic operator for enterprise and chief-of-staff roles), surface stakeholder handling explicitly in the JD's vocabulary, close with one or two sentences specific to this company. No self-labels, no "proven track record", no self-declarations of technical comfort.

**Bullets.** Follow `${CLAUDE_SKILL_DIR}/references/bullet-rules.md`. Default to keeping the core bullets listed in `role-context.md`; drop one only for a reason on the valid list. Reorder and reframe to the role's vocabulary where the work matches the word's real meaning; translate specialist jargon when the hiring manager is from another discipline. Respect phrasing locks and ordering rules exactly. Apply conditional-inclusion rules (some roles appear only for certain sectors or when a years-of-experience bar demands them).

**Everything else.** Side projects (value first, tech last), skills lines from preferences plus the conditional line when the role calls for it, speaking and volunteering if preferences include them, education. Section order is in `${CLAUDE_SKILL_DIR}/references/cv-template.md`.

**When the JD asks for something the candidate has not done.** Do not write it. Leave it off, or find an adjacent true achievement, or note it for the cover letter. If you are unsure whether they did it, ask before writing. One question now beats an exposed bullet later.

## Tailoring notes

End the file with `### Tailoring Notes`, which the candidate reads and which later tailorings reuse:

- **Closest base:** which file you started from.
- **Key tailoring decisions:** a numbered list. Each item names what changed and the JD phrase or briefing line it answers. Include what you dropped and why.
- **Open questions:** anything to confirm with the candidate before sending. Inferences about their work go here, not into bullets.
- **Status:** empty now. When the candidate says it was submitted, add "submitted on <date>, locked" and stop editing; later changes go in `tailored-cv-v2.md`.

## Before showing the CV

Run every check; each exists because the opposite shortcut slipped through at least once.

1. Honesty pass (`honesty-rules.md`): every bullet maps to a fact in `role-context.md`; no vocabulary stretching; no capability tail-sentences on single examples; creation verbs for creation work; interview-only facts are absent.
2. Writing pass (`writing-rules.md`): spelling convention; acronyms bracketed on first use; the generated-text tells; no long dashes.
3. Mechanical checks: `grep -n $'\xe2\x80\x94' tailored-cv.md` returns nothing; every line starting with `- ` ends with a full stop; every role section starts with a different verb on each bullet; the page limit from preferences is plausible (roughly 45 to 55 lines of content per page).
4. Stakeholder check: does the summary name the stakeholder types the JD cares about, with real counts or groups from `role-context.md`?
5. Level check: does the opener match the target level and the honesty bar in `summary-styles.md`?

## Finish

1. Update `applications/tracker.json`: `cv_ready: true`, `status: cv-ready` (unless already further along), timeline event `cv-created`, or `cv-revised` for a later edit.
2. Commit if the workspace is a git repository: `Add <Company> tailored CV`.
3. Report: file path, the three tailoring decisions that matter most, the open questions, and offer `/job-search-kit:cover-letter` or `/job-search-kit:interview-prep` as the next step.

## Why default-keep matters

The pattern this rule corrects: a strong bullet about an earlier role gets dropped because "this role is more strategic" or "the JD does not emphasise it". The bullet was proof of craft (data modelling, quality discipline, commercial impact) that almost every hiring manager in the function wants, and dropping it lost signal for no gain. The downside of one extra strong bullet is small; the downside of a missing strength is a shortlist decided against the candidate.

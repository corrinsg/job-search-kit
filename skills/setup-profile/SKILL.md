---
name: setup-profile
description: First-run onboarding for the job-search kit. Creates or updates the candidate's private profile (base CV, role context, interview context, preferences, lessons) in their own repository through a short, batched interview. Run before any analysis, CV or prep.
argument-hint: "[path to existing CV, optional]"
disable-model-invocation: true
---

# Set up the candidate profile

The profile is the truth about the candidate that every other skill reads: what they did at each job, the numbers they can defend, how they answer the standard questions, and how they like documents written. It lives in the candidate's own repository under `profile/`, never inside this plugin, so the kit can be shared while the data stays private. A candid profile is what makes honest tailoring possible; a thin one forces guessing, and guessing is how fabricated bullets happen.

## Before you start

1. Check for `profile/preferences.md` in the current directory. If it exists, switch to **Update mode** (below).
2. Read the templates in `${CLAUDE_SKILL_DIR}/templates/` so you know every field. Point the candidate at `${CLAUDE_PLUGIN_ROOT}/examples/profile-sample/` if they want to see a finished profile before answering.
3. Say, in three sentences, what you are about to do: build five private files through a short interview in batches, save progress after each batch, and leave blanks they can fill later.

## Interview principles

- **Batches of three to five questions.** Thirty questions at once get skimmed answers. Save after each batch so nothing is lost if the session ends.
- **Candid over polished.** This file is private. Ask for what actually happened, including what went wrong. Tailoring needs the real story; the polish comes later.
- **Write what they said, not what sounds better.** If an answer is "I'm not sure the number is right", record the uncertainty. Do not round up.
- **Ask rather than assume.** If a CV line is ambiguous (did they lead the team, or sit on it?), ask.
- **Blanks are fine.** Mark unanswered fields `<to fill>` and move on. Other skills will ask when they hit one.

## Flow

### Batch 0: who is here

Ask: Is the person typing the candidate, or a helper (partner, friend, coach) working on the candidate's behalf? The candidate's name as it should appear on documents? Pronouns (default they/them)? Spelling convention (en-GB or en-US)?

Write `profile/preferences.md` from `${CLAUDE_SKILL_DIR}/templates/preferences.md` with these filled and the rest marked `<to fill>`.

### Batch 1: the current CV

Ask them to paste their current CV or give a path (use `$ARGUMENTS` if a path was passed). Parse it into `profile/base-cv.md` using the section order in `${CLAUDE_SKILL_DIR}/templates/base-cv.md`. Keep their wording. Do not improve bullets yet; this is the baseline, and rewriting now would mix their claims with yours before you know which are true.

Confirm the employer list and date ranges back to them in one line each.

### Batches 2 to N: one employer per batch, most recent first

For each employer, ask in one batch:
1. What actually happened there? What did you inherit, decide, build, and what went wrong?
2. Which numbers on the CV can you defend under questioning, and how were they measured?
3. Which bullets must always survive tailoring, and is there an order they should appear in?
4. Any phrasing that must not be altered (a technical representation, a stakeholder list)? Any reason this role should only appear for some employers?
5. One decision where you gave something up: what you chose, the alternatives, the cost, and when you would have chosen differently.

Then a short follow-up: facts you would say aloud but not print, and things adjacent to this role that you did not do and must never appear.

Append each employer's block to `profile/role-context.md` from `${CLAUDE_SKILL_DIR}/templates/role-context.md` as soon as the batch is answered. Also record the status (current or ended, and the honest why-leaving sentence) for the most recent role.

### Batches N+1 to N+3: interview context

Three batches of four to five questions, following the headings in `${CLAUDE_SKILL_DIR}/templates/interview-context.md`:
- Why looking, biggest strength, room for growth, most proud of, a challenge.
- What excites you, best environment, what you value in leadership, what you want next, 2 to 3 years.
- Salary approach (how they want to handle the question, anchor ranges by sector), notice and availability, work authorisation (only what they want stated in documents), questions they like to ask recruiters and hiring managers.

Finish with two open questions: anything not on the CV that makes you memorable or explains a fit? Anything you do not do well or have not done, that no document should paper over?

Write `profile/interview-context.md`. Key beats in bullets are better than paragraphs; these feed prep documents that are meant to be scanned.

### Final batch: preferences

Fill the rest of `profile/preferences.md`: target titles and levels, current title, functions and domains, locations, company stages; skills section lines and any conditional line; side projects to list; sections on by default; page limit; story ratio; prep length; audio summaries; whether the workspace is a git repository.

### Finish

1. Create `profile/lessons.md` from `${CLAUDE_SKILL_DIR}/templates/lessons.md` (header only).
2. Create `CLAUDE.md` in the workspace root from `${CLAUDE_SKILL_DIR}/templates/workspace-CLAUDE.md` with the spelling filled in.
3. Create `applications/` with `tracker.json` containing `{"applications": []}`.
4. Explain the lessons loop in two sentences: after each interview or rejection, the debrief skill appends a dated lesson to `profile/lessons.md`, and every later prep reads it and turns the recent lessons into patterns to land in every answer.
5. If they want version history, suggest `git init` and a first commit. Remind them the profile is private: keep the repository private, and do not share it with the plugin.
6. List the files created and the fields still marked `<to fill>`.

## Update mode

If the profile exists, ask what changed. Map the answer to the right file:
- A new job, a role ending, new numbers, a new story: `profile/role-context.md` (and `base-cv.md` if the CV line changes).
- A changed answer to a standard question, new questions to ask, a new gap: `profile/interview-context.md`.
- New targets, locations, skills lines, side projects, spelling: `profile/preferences.md`.

Edit in place, keep the structure, and show the diff in one or two lines. Do not rewrite sections the candidate did not mention.

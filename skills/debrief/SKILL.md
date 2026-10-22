---
name: debrief
description: Turn an interview, recruiter call, rejection, or offer into reusable lessons. Use whenever the user says "how did it go", shares feedback, reports an outcome, or asks what to learn. Writes a debrief and appends generalised lessons to the profile so the next prep improves.
argument-hint: [company] [stage]
---

# Debrief

Every interview is data about how this candidate comes across. Left in the candidate's head, that data fades by the next process. Written down and generalised, it compounds: the next prep reads `profile/lessons.md` and turns the most recent lessons into "patterns to land in every answer". The debrief exists for that second step. Writing a record of the interview is the easy half; distilling the lesson is the half that changes outcomes.

## 1. Collect, in one batch

Read `applications/<company>/` first (the prep documents, `analysis.md`, earlier `debrief.md` if there were previous rounds) so you do not ask what is already written. Then ask once:

- Which round was this, with whom, and when?
- What was asked, as close to the actual questions as the candidate remembers?
- What landed well? What did the interviewer react to?
- What felt thin, rushed, or unanswered?
- Did the interviewer or recruiter say anything about the decision, next steps, or the team?
- Outcome so far: progressing, waiting, rejected, offer, or unknown?
- If feedback was given (by a recruiter after rejection, or by the interviewer directly), what were the exact words?

Accept whatever the candidate has. A debrief on partial information is still worth more than none; mark the gaps.

## 2. Write the debrief

Use `${CLAUDE_SKILL_DIR}/references/debrief-template.md`. Output: `applications/<company>/debrief.md` (append a dated section if one already exists for an earlier round).

Keep the candidate's own read separate from the interviewer's feedback; they often disagree, and the disagreement is itself a finding. Rank cross-cutting themes by how often they appeared across rounds, not by how much they stung. Note what did not appear in the feedback too: strengths that went unremarked are strengths the candidate may be under-selling.

## 3. Distil the lessons (the step that matters)

From the themes, write one to three lessons. A lesson is a rule for next time, not a description of this interview. Test each one: would it change what goes into the next prep document at a different company? If not, it is a note, not a lesson; leave it in the debrief.

Append each lesson to `profile/lessons.md` in this format, dated today:

```
## YYYY-MM-DD | <short rule title>
**Rule:** <one or two sentences, written as an instruction for next time>
**Why:** <what happened, which company and stage, without blame>
**How to apply:** <where it shows up: CV, recruiter screen, panel, case study, questions for them>
**Evidence:** <the candidate's own stories that already support the new behaviour>
```

Before appending, read the existing lessons. If a near-duplicate exists, strengthen that entry (add the new evidence and date under it) instead of adding another. A lessons file with the same rule five times is one nobody reads.

The kinds of lessons that tend to emerge, for calibration (fictional, generic):

- *Name the tradeoff.* An engineering panel heard the win story without the cost story and read it as not understanding the decision. Rule: every project story ends with what was given up and when the call would reverse.
- *Commit at the end of a case.* The case study ended with "a few directions" and the feedback was "a good plan but not a full plan". Rule: close with a recommendation, a validation step, and a revision trigger.
- *Compliance before being asked.* In a regulated-industry loop, compliance came up as a gap in three rounds. Rule: include Risk and Compliance in every stakeholder map and raise constraints in the first minutes of a design.
- *Domain knowledge at the screen.* A first-round rejection cited thin industry understanding; "I learn fast" did not carry. Rule: for domain-heavy roles, prep the industry's vocabulary and live debates before the first call.
- *Every product line.* Interviewers raised the one product line the prep skipped because it had little public material. Rule: list all lines first; interviewer titles tell you which will come up.

## 4. Update the profile and the tracker

- If the candidate told a story in the interview that is not in `profile/role-context.md`, add it there now (including its tradeoff). Stories told under pressure are the best-formed ones.
- If a new honest gap surfaced, add it to the never-claims section of `profile/interview-context.md`.
- Update `applications/tracker.json`: set `status` (`interviewing`, `rejected`, `offer`, `withdrew`) and append a timeline event (`interview`, `rejected`, `offer`, `feedback-call`) with a one-line note. Schema in `${CLAUDE_PLUGIN_ROOT}/skills/pipeline/references/tracker-schema.md`.
- Commit if the workspace is a git repository.

## 5. After a rejection

Two optional follow-ups, both in `${CLAUDE_SKILL_DIR}/references/`:

- `feedback-call-script.md`: when the recruiter offers a feedback call, or the candidate wants to give structured feedback on the process. Prepare it so the call produces usable information rather than reassurance.
- `reengagement-email.md`: a short note that keeps the door open for future roles at the company. Send it once, within a week.

Offer them in one line; do not write them unasked.

## Close

Report the file paths, the lessons appended (by title), and anything the candidate should confirm or correct in the lesson wording. The lesson belongs to them; the wording should sound like something they would say to themselves.

---
name: interview-prep
description: Prepare the candidate for any interview stage: recruiter screen, hiring manager call, panel or onsite, case study, system design, a named interviewer, or a product deep dive. Use whenever the user says "prep me" or names an upcoming interview. Produces a scannable prep doc plus HTML twin.
argument-hint: [company] [stage or interviewer]
---

# Interview prep

Produce a prep document the candidate can read on a phone twenty minutes before the call and walk in knowing exactly what to land. The candidate already knows how to talk; what they need is the beats, the research they did not have time to do, and the patterns from their own earlier interviews. A script they would read back sounds rehearsed and gets ignored. Key beats in bullets get used.

## 1. Read before writing

From the candidate's workspace:

- `profile/preferences.md`: who you are talking to, pronouns, spelling, story ratio (which employer's stories lead), prep length default, whether audio summaries are wanted.
- `profile/role-context.md`: the truth behind each role, tradeoff stories, interview-only facts (allowed here, never on a CV), never-claim list.
- `profile/interview-context.md`: the candidate's own answers to the standard questions. These are not rewritten; the prep points to them.
- `profile/lessons.md`: dated lessons from earlier debriefs. The most recent and most repeated become "patterns to land in every answer".
- `applications/<company>/`: `analysis.md` (fit score, hiring manager read, shortlisting signals), `tailored-cv.md` (what the interviewer has in front of them), earlier preps, `debrief.md` from previous rounds at this company.

If `analysis.md` is missing, say so and offer to run `/job-search-kit:analyse-jd` first. Preparing without the hiring-manager read means guessing what the interviewer cares about.

Also read `${CLAUDE_PLUGIN_ROOT}/references/writing-rules.md`, `${CLAUDE_PLUGIN_ROOT}/references/honesty-rules.md`, and `${CLAUDE_PLUGIN_ROOT}/references/research-rules.md` once per session.

## 2. Ask once, in one batch

Ask only for what the files do not tell you, in a single message:

- When is the interview, how long, and in what format (video, in person, take-home, live exercise)?
- Which stage is this (recruiter screen, hiring manager, panel or onsite, case study, system design, final)?
- Who is on the call: names and titles as the invite shows them?
- What has the recruiter said about focus areas, format, or what the team is looking for?
- Anything from earlier rounds that has not been captured yet?

Then proceed. Do not send a second round of questions unless an answer changes the stage.

## 3. Route by stage

| Stage | Template | Output file |
|---|---|---|
| Recruiter or talent screen | `${CLAUDE_SKILL_DIR}/references/recruiter-screen-template.md` | `recruiter-screen-prep.md` |
| First interview, hiring manager, any single conversational round (default) | `${CLAUDE_SKILL_DIR}/references/scannable-template.md` | `interview-prep.md` (or `round-N-prep.md` for later conversational rounds) |
| Panel or onsite, several rounds in one day or week | `${CLAUDE_SKILL_DIR}/references/panel-template.md` plus a STAR bank from `${CLAUDE_SKILL_DIR}/references/star-format.md` | `panel-prep.md` and `interview-qa.md` |
| Case study or system design round | `${CLAUDE_SKILL_DIR}/references/case-study-and-system-design.md`, embedded in the scannable or panel doc | section inside the prep, or `case-study-prep.md` if the round stands alone |
| Product or domain primer the candidate asked for | `${CLAUDE_SKILL_DIR}/references/deep-dive-template.md` | `<topic>-deep-dive.md` |
| One named interviewer, informal or follow-up chat | Scannable template trimmed to that person | `<firstname>-prep.md` |

Length defaults: the scannable template targets about 200 lines with a hard cap of 250. Recruiter screens run 75 to 250. Panel docs are longer because they cover several rounds, but each round section follows the same discipline. If a draft is growing past the cap, cut repeated content first, then trim scenario answers to their beats.

## 4. Research

Follow `${CLAUDE_PLUGIN_ROOT}/references/research-rules.md`. The parts that matter most for prep:

- **Every product line.** List them all before going deep on any. Interviewer titles are the clue: a panelist whose title names a product line means that line will come up. Minimum per line: one sentence on what it does, who uses it, where it sits.
- **Interviewers.** Background, probable lens, what they will probe, what to surface for them. Mark each claim confirmed or inferred. A consultancy tenure near the company's office is not proof the person worked on this company's account. Inferences become questions the candidate can ask.
- **Domain bar.** For domain-heavy industries (insurance, banking, healthcare, energy, agriculture, logistics, legal), screeners read thin domain knowledge as "did not care enough to prepare", and "I learn fast across industries" does not carry weight at that stage. Build a domain vocabulary section and make the candidate reason with the terms, not define them. For the "what do you know about us" answer, include domain context, not only company facts.
- **Compliance landscape for regulated industries.** Write one page: the regulatory regimes that apply, the common constraints (data residency, audit trails, retention, segregation, reporting), and the vocabulary. In regulated industries compliance is a core constraint on every product decision, and interviewers expect strong candidates to raise it before being asked. Surface it in case study stakeholder maps (Risk, Legal, Compliance, Audit), as early constraints in system design, and as a separate must-have category in any prioritisation answer.

## 5. Cross-cutting rules

**Patterns to land in every answer.** Read `profile/lessons.md`. Take the most recent lessons and the ones that recur, three at most, and condense each into one line. Put them in their own section near the top. This is how the candidate's own interview history compounds; without it, the same gap shows up at the next company.

**Tradeoffs for engineering audiences.** Engineering managers and technical interviewers listen for decisions with costs, not win stories. The pattern they filter for: named alternatives ("we considered X, Y, Z"), the explicit cost ("gained A by giving up B"), and the condition under which the call would reverse. Pre-load at least one tradeoff from `role-context.md` into the Q1 beats and into the strongest project story. The phrase "the tradeoff was" is itself a signal. This applies to prep documents and spoken answers only; on a CV, a cost sentence after an achievement reads half-defensive.

**Story ratio.** Use the ratio in preferences. Senior interviewers expect the most recent role to carry most stories; older stories are support.

**Only six questions get company-tailored.** Q1 (tell me about yourself), Q2 (why looking), Q3 (why this role), Q4 (what do you know about us), Q14 (salary), Q15 (notice and availability). The other eleven in `${CLAUDE_SKILL_DIR}/references/standard-questions.md` come from `profile/interview-context.md` and are already rehearsed. Do not rewrite them; at most add one company-specific beat where it changes the answer.

**No repeated content.** If a point is in "strongest angles", it does not reappear in the Q3 answer. Repetition is what pushes a document past the cap.

**Mock answers are bullets.** Three to five lines of beats, not paragraphs. For "first 90 days", use 0 to 30, 30 to 60, 60 to 90, and what to avoid.

**Questions for them.** One best opener as a blockquote, then two or three per interviewer, in their lens. Mark any that turn a research inference into a question ("which catalogue layer do you use on top of the platform?"), because those signal homework.

**What NOT to do.** Exactly five bullets, specific to this candidate and this room, drawn from lessons and the honest gaps in `interview-context.md`.

**Pre-call checklist and walk-in frame.** Checkboxes for the hour before; then one or two sentences the candidate reads last.

**Acronyms** get their definition in brackets on first use, inline. The candidate should never have to look something up while reading.

**Interview-only facts** from `role-context.md` may be used in beats. Never-claim items may not.

## 6. Render, record, hand over

1. Run `${CLAUDE_PLUGIN_ROOT}/references/writing-rules.md` on the draft. Check for long dashes with `grep -n $'\xe2\x80\x94' <file>`.
2. Render the HTML twin: `${CLAUDE_PLUGIN_ROOT}/scripts/render-html.sh applications/<company>/<file>.md`. If pandoc is missing, give the install hint once and write the HTML by hand with `${CLAUDE_PLUGIN_ROOT}/assets/prep-style.css` inline.
3. If `profile/preferences.md` says audio summaries are wanted, offer one using `${CLAUDE_SKILL_DIR}/references/audio-summary.md`. Do not produce it unasked.
4. Append a timeline event to `applications/tracker.json` (`interview-scheduled`, `recruiter-screen-scheduled`, `onsite-scheduled`) with the date and the panel names. Schema: `${CLAUDE_PLUGIN_ROOT}/skills/pipeline/references/tracker-schema.md`.
5. Commit if the workspace is a git repository.
6. Close with the file paths, what you could not verify (marked inferences), and the two or three things to confirm with the candidate before the call.

## 7. When to add depth

Only when the candidate asks. They may want full mock answers for a specific scenario, anticipated follow-up questions with replies, a deeper domain glossary, or a competitor analysis. Do not add these pre-emptively; a 400-line document that covers everything is a document that does not get read. Offer the options in one line at hand-over and wait.

## After the interview

Point the candidate to `/job-search-kit:debrief`. The debrief is what turns this interview into a lesson for the next one.

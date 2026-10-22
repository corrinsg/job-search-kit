---
name: cover-letter
description: Write a cover letter or recruiter message. Use for a cover letter, a note with an application, outreach to a recruiter or hiring manager, a reply to an inbound recruiter, a follow-up after silence, or a thank-you after an interview. Short, specific, in the candidate's voice.
argument-hint: [company] [letter | outreach | reply | follow-up | thank-you]
---

# Cover letters and recruiter messages

Write short, specific messages in the candidate's first person that a busy reader finishes. Every message type here is read in under a minute by someone deciding whether to spend more time on the candidate, so the job is to earn the next step, not to summarise the CV.

## Before you start

1. Read `profile/preferences.md` (spelling, voice notes, candidate name and pronouns), `profile/interview-context.md` (why they are looking, what they want next, honest gaps), and `profile/lessons.md`.
2. Read `applications/<company>/analysis.md` if it exists. The recruiter briefing and "Why <company>" sections are the raw material. If it does not exist and the user wants a cover letter, offer `/job-search-kit:analyse-jd` first; a letter without the hiring-manager read is a generic letter. For a quick recruiter reply, proceed without it.
3. Read `${CLAUDE_PLUGIN_ROOT}/references/writing-rules.md`. Letters are where generated-text tells concentrate, because the format invites them.
4. Pick the message type and open `${CLAUDE_SKILL_DIR}/references/templates.md` for its shape.

## Message types

| Type | File | Length |
|---|---|---|
| Cover letter to accompany an application | `applications/<company>/cover-letter.md` | 3 to 4 short paragraphs, under 250 words |
| Outreach to a recruiter or hiring manager (cold) | `applications/<company>/outreach.md` | 80 to 120 words |
| Reply to an inbound recruiter | `applications/<company>/recruiter-reply.md` | 60 to 100 words |
| Follow-up after silence | append to `applications/<company>/outreach.md` | 50 to 80 words |
| Thank-you after an interview | `applications/<company>/thank-you.md` | 80 to 120 words, one per interviewer if a panel |
| Re-engagement after a rejection | owned by `/job-search-kit:debrief` | see that skill |

## How to write them

- **One specific hook per message.** Something from the analysis that only this company could receive: a product decision they just made, the problem the role is hired to solve, a line from the JD and the candidate's direct answer to it. Not the mission, not "excited by the opportunity".
- **Evidence, not adjectives.** One or two proof points with numbers, chosen from `role-context.md` for the requirement the recruiter briefing ranks first.
- **The honest gap, if there is one.** When `analysis.md` names a gap that the recruiter will notice anyway, address it in one sentence with the ramp plan. A gap named by the candidate is a judgement signal; a gap found by the reader is a filter.
- **Ask for the next step.** End with the concrete thing you want: a conversation, a reply, the next round.
- **Their voice.** Short sentences, plain words, the candidate's own phrases from `interview-context.md`. If the voice notes in preferences say they are direct, be direct.

## Each file has three sections

```markdown
**Use case:** <when and where this is sent>
**Length:** <word count>
**Strategy:** <the one hook, one sentence>

## The letter (or: The message)

<text>

## Why this works

<paragraph-by-paragraph rationale, two lines each>

## What's deliberately not in it

<what was left out and why: the CV summary, a gap not worth raising, a claim the candidate cannot defend>
```

The rationale sections are for the candidate, so they can edit with intent instead of adding things back.

## Before showing

1. Writing pass with `writing-rules.md`. In particular: no "reads like" or "the role reads as"; no "passionate about"; no "not just X, Y"; no "genuine"; no scene-setting opener; no long dashes.
2. Honesty pass: every claim maps to `role-context.md`; nothing from the interview-only list; no capability claims the CV does not back.
3. Reader test: would the recruiter learn one thing they could not get from the CV? If not, the hook is too weak.
4. Length check against the table above.

## Finish

1. Update `applications/tracker.json` with a timeline event (`cover-letter-created`, `recruiter-outreach`, `follow-up`, `thank-you-sent`).
2. Commit if the workspace is a git repository.
3. Report the path, the hook you chose, and anything the candidate should confirm or personalise (a shared connection, a detail only they know).

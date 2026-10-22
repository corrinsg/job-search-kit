# Job Search Kit for claude.ai (no Claude Code)

The same process, running inside a claude.ai Project. This is the portable subset: the analysis, CV tailoring, letters, interview prep and debrief phases all work. What does not carry over is anything that needs a folder on disk: the HTML twins of prep documents, the JSON tracker and pipeline page, the funnel chart, git history, and the role-discovery scan of applicant tracking systems. You keep the documents yourself, one folder per company.

## Setup (about 15 minutes, plus filling in your profile)

1. **Fill in your profile.** Copy `PROFILE-TEMPLATE.md`, answer it candidly, save it as `candidate-profile.md`. It has five sections: Preferences, Base CV, Role context, Interview context, Lessons. The Role context section is the one that makes tailored CVs safe, so give it the time. A filled-in fictional example is in `../examples/profile-sample/` (there it is five files; the content maps one to one).
2. **Create a Project** in claude.ai called something like "Job search".
3. **Project instructions:** paste the whole of `PROJECT-INSTRUCTIONS.md` into the Project's custom instructions.
4. **Project knowledge:** upload `candidate-profile.md`.
5. **Optional, recommended if your plan offers custom skills:** upload `job-search.zip` (or run `./build-skill.sh` to rebuild it) as a custom skill. It carries the detailed document templates and reference rules, so outputs follow the same outlines every time. Without it, the project instructions alone still run the process.

## Working in it

Start a new conversation in the Project for each company. Paste the job description and say what you want ("analyse this", "tailor my CV", "prep me for a recruiter screen on Thursday", "debrief: here is what happened"). Save each document Claude gives you into a folder for that company. When a later phase needs an earlier document, attach it.

After a debrief, paste the lesson block it gives you into the Lessons section of `candidate-profile.md` and re-upload the file to project knowledge. That is the loop that makes the next prep better than the last one; it is manual here, automatic in the Claude Code edition.

## Files

| File | Purpose |
|---|---|
| `PROJECT-INSTRUCTIONS.md` | Paste into the Project's custom instructions. Standalone. |
| `PROFILE-TEMPLATE.md` | Fill in, upload to project knowledge. |
| `skill/job-search/` | The custom skill: `SKILL.md` plus the reference templates and rules, with paths adapted for claude.ai. |
| `job-search.zip` | The skill zipped for upload. |
| `build-skill.sh` | Rebuilds the zip after edits. |

## Known limits

- Claude.ai conversations do not share files with each other, so the profile lives in project knowledge and everything else travels by attachment.
- Custom skills availability depends on your plan and your organisation's settings. If you cannot upload the skill, the project instructions alone are enough for the core process.
- Web research runs through claude.ai's own search, which may be unavailable in some regions or settings; the analysis phase says what it could not verify.

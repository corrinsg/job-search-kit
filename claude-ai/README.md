# Job Search Kit for Claude (the app or website, no coding needed)

This gives Claude a repeatable way to help you with a job search: research a role, tailor your CV without making anything up, prepare you for each interview, and learn from each interview for the next one.

You need a paid Claude plan that allows custom skills (Pro, Max, Team or Enterprise). Everything else is clicking.

## Step 1: Download the skill

Click this link and save the file: **https://github.com/corrinsg/job-search-kit/raw/main/claude-ai/job-search.zip**

Do not unzip it. Leave it as `job-search.zip`.

## Step 2: Add it to Claude

1. Open Claude (claude.ai in a browser, or the desktop app).
2. Click your initials or name at the bottom left, then **Settings**.
3. Find **Capabilities** (on some accounts it is called **Skills**). Make sure skills, code execution and file creation are switched on.
4. Click **Upload skill** (or **Add skill**) and choose `job-search.zip`.
5. You should now see a skill called **job-search** in your list.

If you cannot find an upload button, your plan or your organisation does not allow custom skills yet. Skip to "If skills are not available" at the bottom.

## Step 3: Let Claude fill in your details

Start a new chat and type:

> Use the job-search skill to set up my job search profile

Naming the skill is not always necessary, because Claude picks skills by reading their descriptions, but saying "use the job-search skill" makes sure it happens, especially the first time. If Claude ever answers without using it (you will notice: no batches of questions, no file at the end), just add "use the job-search skill" to your message.

Claude will ask you questions in small batches: your current CV, what really happened in each job, your own answers to the usual interview questions, and a few preferences. Answer in plain words; it is private. This takes 30 to 60 minutes and you only do it once.

At the end Claude gives you a file called `candidate-profile.md`. **Download it and keep it somewhere safe.** This file is your data; the skill itself contains none of it.

## Step 4: Make Claude remember your profile

Pick one:

- **Easiest:** at the start of every new chat, attach `candidate-profile.md` (the paperclip button).
- **Better:** create a **Project** in Claude (left sidebar, "Projects", "New project"), call it "Job search", and upload `candidate-profile.md` under the project's **knowledge**. Then start every job-search chat inside that Project and you never have to attach anything.

## Step 5: Use it

In a chat (inside the Project if you made one), paste a job description and say what you want. Mention the skill the first time in each chat. For example:

- "Use the job-search skill to analyse this role for me" (research, who the hiring manager is, a fit score out of 10, salary research)
- "Tailor my CV for it"
- "Write a cover letter"
- "Use the job-search skill to prep me for a recruiter screen on Thursday" or "prep me for a panel with these people: ..."
- "Use the job-search skill to debrief: here is how the interview went"

Claude gives you each result as a file. Save them in a folder named after the company. When Claude asks for an earlier file (for example the analysis, when tailoring the CV), attach it.

## Step 6: Keep getting better

After each interview, ask for a debrief. Claude will give you a short "lesson" block. Paste it into the **Lessons** section at the bottom of your `candidate-profile.md`, save, and re-upload the file to your Project (or attach the new version next time). The next prep will use it.

To change anything about you (new job, new number, new preference), say "use the job-search skill to update my profile" and attach the file. Claude edits it and gives it back.

## If skills are not available on your plan

You can still run the process, with a little less polish:

1. Create a Project called "Job search".
2. Open `PROJECT-INSTRUCTIONS.md` from this folder, copy all of it, and paste it into the Project's **custom instructions**.
3. Download `PROFILE-TEMPLATE.md`, fill it in yourself (or start a chat in the Project and say "help me fill in this profile" with the template attached), save it as `candidate-profile.md`, and upload it to the Project's knowledge.
4. Use the Project as in Step 5.

## What this version cannot do

The full version runs in Claude Code (a developer tool) and also keeps a tracker of all your applications, a pipeline page, a funnel chart, and formatted HTML copies of your prep documents. Those need files on your computer, so they are not in this version. Everything about researching, writing and preparing is the same.

## Files in this folder

| File | What it is |
|---|---|
| `job-search.zip` | The skill. Upload this to Claude. |
| `PROJECT-INSTRUCTIONS.md` | Only needed if you cannot upload skills. |
| `PROFILE-TEMPLATE.md` | The blank profile. Claude fills it in for you in Step 3; you only need this for the no-skills route. |
| `skill/` and `build-skill.sh` | The skill's source, for anyone who wants to change it. |

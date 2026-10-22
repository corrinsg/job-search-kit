# Audio summary

Some candidates prepare better by listening on a commute or a walk. Offer this only when `profile/preferences.md` says audio summaries are wanted. It is macOS-only because it uses the built-in `say` command.

## Write a summary script, not a read-out

Reading an entire prep or deep-dive document aloud produces a 40 to 50 minute file that nobody finishes. Write a separate script of about 1,000 words, which is roughly six minutes at a normal speaking rate, and record that.

Script style, saved as `applications/<company>/audio-script.txt`:

- Plain text, no Markdown, no tables, no bullets. Short paragraphs that read aloud naturally.
- Headings as bare lines ("The company in sixty seconds.") so the listener hears the structure.
- Spell out acronyms and numbers the first time ("application programming interface", "ninety percent").
- Order: why this role exists, the three patterns to land, the interviewers and what each probes, the strongest angles, the two or three scenario beats, the questions to ask, and end with "Things not to say".
- First person where the candidate will speak ("I would open with...").

## Record it

```
say -v <voice> -r 180 -o applications/<company>/prep-summary.aiff -f applications/<company>/audio-script.txt
```

- `-v` picks the voice; `say -v '?'` lists installed voices. Choose one in the candidate's preferred accent.
- `-r 180` is words per minute; 170 to 190 is comfortable for review listening.
- Output is AIFF, about 2.5 MB per minute at the default settings. Convert with `afconvert -f m4af -d aac <in>.aiff <out>.m4a` if size matters.

On other platforms, tell the candidate the script is ready and suggest any text-to-speech tool they have; do not try to install one.

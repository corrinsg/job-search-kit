# Writing rules for candidate-facing documents

Apply to CVs, cover letters, interview prep, recruiter messages, and the tailoring notes the candidate reads. Run the checklist after drafting and before showing anything. The goal is text a hiring manager reads as written by a person who did the work, not generated to fit a job description. Recruiters and hiring managers now spot generated writing quickly, and once they do, even true content loses credibility.

## Spelling and register

- Use the spelling convention in `profile/preferences.md` (en-GB or en-US) consistently across every document. Mixed spelling is itself a tell.
- Use the candidate's preferred short forms listed in preferences (for example a team's in-house abbreviation for a tool) rather than the formal name.
- Define every acronym or specialist term in brackets on first use, inline, for example "TCO (Total Cost of Ownership)". Later uses can stay bare. Do not push definitions into a glossary instead; the reader should never have to look something up mid-sentence. Exception: terms the target audience uses daily and the candidate uses daily too (SQL, API) need no bracket.

## Punctuation

- No long dashes (the em dash, U+2014) anywhere: prose, bullets, headings, notes. Use a comma, a full stop, a colon, or restructure. In headings use a pipe or a comma. En dashes for date ranges ("2020 – 2024") are fine. Check before finishing with `grep -n $'\xe2\x80\x94' <file>` (the escaped bytes are the em dash).
- Every CV bullet ends with a full stop.
- Pipes as separators in headings are fine: "Company | Title, Month Year – Month Year".

## The LLM-tell checklist

1. **Self-labels.** Cut "Hands-on builder", "Strategic operator", "Discovery-driven PM", "AI-forward thinker". Describe what the candidate did, not what they are. "Built X" beats "I am a builder of X".
2. **Empty adjectives.** robust, seamless, innovative, transformative, comprehensive, powerful, holistic, cutting-edge, world-class, best-in-class. Replace with a specific claim or delete.
3. **Buzzword verbs.** leverage, utilise → use. drive (vague) → the actual action. empower → enable, let, give.
4. **Filler adverbs.** crucially, indeed, notably, importantly, fundamentally. Delete.
5. **Stuffed adjective chains.** "high-scale, real-time environment", "complex, dynamic, fast-paced". Pick one; if two are needed, use two sentences.
6. **Triplets.** "Built X, scaled Y, and delivered Z" is fine once. Stacked triplets read generated. Default to two items.
7. **"Not just X, Y" and "More than just X".** Restructure into a direct claim.
8. **Vague outcome verbs.** "drove value", "delivered results", "drove impact". Replace with the outcome and a number.
9. **Scene-setting openers.** "In today's...", "In an era of...". Open with a fact about the candidate.
10. **"Ground every X" / "Inform every X".** At most once per document.
11. **Adjective triplets about character.** "thoughtful, structured, and pragmatic". Pick the strongest one.
12. **"At scale".** Once per CV is fine, twice is padding, three times is a tell.
13. **"Genuine" / "genuinely".** Banned. Use a concrete claim or plainer words (real, first-hand), or delete.
14. **"Passionate about", "deeply care about".** Replace with evidence: the work they chose to do.
15. **"Reads like".** "This JD reads like...", "The role reads as...". Replace with a direct statement: "Every line on this JD matches work I have done."
16. **Self-declarations in summaries.** "Comfortable writing SQL", "technically proficient". Let the bullets carry technical depth. Show, do not tell.
17. **Reviewer test.** Read the draft aloud. If a sentence could sit unchanged in any other candidate's CV, rewrite it with something only this candidate could say.

## Acceptable

- En dashes in date ranges.
- Pipes in headings.
- Specific tool names, counts, and metrics (always preferred over abstract claims).
- The candidate's own voice, including short sentences and plain words.

# Build the source bank — the process in full

The bank is a single file (or a small folder) holding the person's own words, tiered by how much they can be trusted as voice evidence. Build it once, refresh it on a cadence, and draft from it under Procedure B.

## Step 1 — Gather speech, not posts

Sources, in the order to collect them:

- **Recorded calls and meetings with speaker diarization** (Fireflies, Granola, Otter, or platform transcripts). The diarization is what makes the person's turns separable from everyone else's.
- **The person's own videos.** For YouTube, pull captions with a tool like yt-dlp. Take the most-watched videos first: they are the most audience-tested version of the person explaining things.
- **Voice notes and dictated memos**, where they exist.

Target: 100,000+ words of the person's own speech before cutting anything. Below that, expect thin coverage and more dictation prompts; the bank still works, it just says "no source" more often, which is the correct answer rather than a failure.

## Step 2 — Purge other voices

Transcripts are shared documents. Other people's words in the bank teach the model the wrong voice, quietly.

- Drop whole blocks where someone else is the main speaker: customer interviews (the customer talks most), panels, podcasts where the person is barely on.
- Filter individual passages that read like another person: in the worked example, pattern filters for customer-voice phrasing (questions about pricing calls, support phrasing, "you guys" addressed at the person's team).
- Prefer solo-source material at drafting time: hosted videos, solo talks, webinars the person leads. Tag mixed formats so the drafter knows to be careful.

Diarization also mislabels the person's own turns occasionally. A passage that reads like a stranger, inside the person's turns, is probably a mislabel; drop it rather than argue with it.

## Step 3 — Cut passages where the person is doing the moves

Slice the surviving speech into passages of 60–180 words: long enough to carry a complete move (a judgment, an explanation, a story beat), short enough to pull into a draft's working notes.

Score each passage. Keep the ones with:

- **Judgment markers**: "I think," "the problem is," "most people," "nobody," "because," verdicts and rules stated flat.
- **Concrete numbers** and named things.
- **Questions** the person asks their audience or themselves.
- **First-person density**: the person doing things, not narrating process.

Penalize housekeeping: introductions, scheduling, logistics, thanks-and-subscribe filler, raw list recitation, small talk. A passage can be perfectly transcribed and still worthless as voice evidence.

Tag every kept passage with date, source, and format (hosted video, solo talk, webinar, call, interview guest). Format matters at drafting time: interview answers are responsive speech; hosted talks are presentational speech; they are not interchangeable.

## Step 4 — Layer the bank in a fixed order

Write the tiers into the bank file itself, with the rule stated in the header, so no future drafter has to remember it:

- **Tier 1 — Spoken passages.** The primary voice evidence.
- **Tier 2 — Dictated explanations.** Things the person dictated for content, verbatim, before any edit.
- **Tier 3 — Approved texts.** Written texts the person personally approved as theirs.
- **Tier 4 — Published posts, QUARANTINED.** Labeled contaminated in the file. Usable as a voice source only when the person identifies that specific post as their own words. Kept because it is the record of what shipped, not because it teaches anything.

## Step 5 — Wire the bank into drafting

The bank earns its keep only inside the drafting procedure: pull passages on the same move before drafting, compose from them, and return a dictation prompt when coverage is missing. That procedure is Procedure B in the main skill and `drafting-and-gates.md` here. If your drafting workflow cannot enforce "pull passages first," the bank will decay into an archive nobody opens.

## Step 6 — Maintain it and measure it

Refresh on a fixed cadence (weekly is what the worked example runs): new calls and videos cut into tier 1, new dictations into tier 2, new approvals into tier 3, new published posts into tier 4 only.

Keep a **kill-rate ledger**: drafts presented vs drafts the person rejected on voice grounds, week over week, with the rejecting words quoted when they give them. The ledger is the skill's feedback instrument. If the kill rate is not falling over a month, something in the bank (contamination, thin coverage, wrong formats) or the procedure (drafting not actually sourcing) is broken. Fix the instrument, not the person's taste.

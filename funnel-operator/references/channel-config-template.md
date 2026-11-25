# The channel config template

Every channel run by the funnel-operator skill lives in its own folder and carries one `CHANNEL.md`, filled from the template below. The skill holds the method; this file holds everything that makes one channel different from another.

How to fill it in:

- Fill it once, before the first video. A field left blank is a decision not yet made, and the pipeline will find it at the worst moment — usually at packaging.

- The position fields come from a positioning record. If the business has no record, run the positioning skill first and paste its chain-out block here whole. Do not draft a position inside this file to save time; a channel built on a borrowed position spends every episode paying for it.

- Write the call to action's exact words. "Link in the description" is not a call to action. The words are spoken, verbatim, twice per episode, so write words a narrator can say and a viewer can act on.

- The style bible and voice spec live in their own files in the same folder. This config points at them and records when they were locked. If either changes, note the date and the reason here — a quiet change to the look or the voice is how channels drift.

- Numbers in this file are exact, because this is a config, not prose. The spoken-numbers rule governs scripts and public copy, not fields and caps.

---

```markdown
# CHANNEL.md — [Channel name]

## Identity

- Channel name:
- Handle:
- Platform and account:
- Date created:
- One-line promise:

## Position

- Owned concept:
- Market category:
- Competitive frame (what the audience would watch or do instead, status quo first if it is the largest):
- Best-fit audience:
- Trade-offs (topics and claims this channel refuses, however well they would perform):

## Audience and entry points

- Who this channel is for, in one or two lines:
- Entry points (the moments that make them search — the question they type, the event that just happened, the thing a peer sends them):
  -
  -
  -

## Format menu

- Lead format:
- Second format:
- Flagship (Retelling) rhythm:
- In reserve:
- Mix notes:

## Style bible

- File: style-bible.md (this folder)
- Locked on:
- Mark (the channel's visual signature):
- Palette summary:
- Caption treatment summary:

## Channel dressing

- Mark file:
- Banner file:
- About text (file, or pasted here):
- Links (funnel endpoint first):
- Channel keywords:
- Upload-default description boilerplate set (yes / no):
- Branding watermark (file, or "none"):
- Dressed on:

## Podcast (optional module — include only if the channel runs the podcast module)

- Runs the podcast module (yes / no):
- Host and plan:
- Feed title:
- Feed description (the About text with the surface words swapped):
- Author:
- Owner email (the feed's contact address):
- Category:
- Language:
- Explicit content (yes / no):
- Artwork (file — square, 3,000 by 3,000):
- Feed address (recorded at feed setup):
- Directory listings (recorded at feed setup — Apple, Spotify, others):
- Feed set up on:

## Blog (optional module — include only if the channel runs the blog module)

- Runs the blog module (yes / no):
- Site the posts publish on:
- Publishing route (the module's static route is the default: the approved draft rendered into the site's post layout, deployed with the site on its Pages project — record any exception and its reason):
- Post address pattern (for example /blog/<slug>/):
- Definition terms (the category terms the posts define, one box per post):
- Public newsletter (a separate decision, recorded with its date and evidence — not a default of the blog module):
- First post published on:

## Scoreboard (optional module — include only if the channel runs the scoreboard module)

- Runs the scoreboard module (yes / no):
- Daily brief (job id, local time, delivery chat):
- Weekly review (job id, weekday and local time, delivery chat):
- Platform analytics source (the studio or dashboard, and the account that signs in):
- Podcast analytics source (if the podcast module runs; "none" otherwise):
- Traffic sources (the beacon site tag and the zone id from the Site block's analytics line):
- Completion count (where completions are read — the store, or the inbox and the form signature that identifies a completion):
- Sources verified live on (date — each source read and returning real data before the jobs were scheduled):

## Distribution (optional modules — include only for platforms the channel runs)

- LinkedIn (active yes / no; account; posting identity — personal profile or Company Page; posting route — browser by default, or API only where the channel legitimately holds approved posting access):
- X (active yes / no; account; posting route — API on a paid tier through the account's own developer app, or browser; record the app's name, never its credentials):
- Instagram (active yes / no; account and type — Business, Creator, or personal; the Facebook Page it is connected to, where one exists; posting route — Meta Content Publishing API for a qualifying Business or Creator account, or browser):
- Distribution notes (which artefact shape each platform takes per episode, and anything channel-specific about timing):

## Voice spec

- Narrator voice (name or asset ID):
- Pace and tone:
- Music rule per format:
- Locked on:

## Funnel endpoint

- The one action every video drives to:
- Link or destination:
- Exact call-to-action words (spoken mid-video and at the end):
- What counts as a funnel action, for the numbers read (starts, completions):

## Cadence and budget

- Episodes per week:
- Cash cap per episode:
- Production-time cap per episode:
- Review trigger (date, episode count, or funnel-action count):

## Channel guardrails

- Never claim:
- Never publish:
- Never cover:
- Channel-specific rules beyond the skill's guardrails:

## State files

- Topic backlog: topic-backlog.md (this folder)
- Published log: published-log.md (this folder)
- Performance ledger: performance-ledger.md (this folder)
- Research notes: research-notes.md (this folder — the dated findings the topic scores cite)
```

---

## Field notes

**Identity.** The one-line promise is the sentence a viewer could repeat after one video. If it needs a comma and a subordinate clause, it is not finished.

**Position.** Five fields, taken from the positioning record without editing. Emphasis may vary per episode; the position may not.

**Audience and entry points.** Entry points are the checklist every topic is tested against at the topic engine. A topic that matches no entry point is content for some other channel.

**Format menu.** Name the lead format first; it carries the cadence. Most channels run one lead, one second, a quarterly Retelling, and Story B in reserve. See `formats.md` for the templates and the mix guidance.

**Style bible.** The bible itself is a separate file because it holds the exact style block text that gets pasted into generation prompts, plus palette and card templates. This config only summarises it and records the lock date.

**Channel dressing.** The channel's public surfaces, built once at setup from this config and the style bible, and revisited only when one of them changes. The banner carries the one-line promise and nothing else competing, inside the platform's safe area on TV, desktop, and phone. Links lead with the funnel endpoint. The upload defaults carry the call to action and its link, so no episode's description starts blank.

**Podcast.** The optional module's block; a channel without it is a video channel and skips the module entirely. The feed fields are written once and entered into the host exactly as written. The block carries no second call to action: the spoken line lives in the funnel endpoint block and is written surface-neutral — it names the web address out loud and points at nothing — so the same words are read on the video, the podcast, and every other surface. Pointers live in text only: the video description and pinned comment on one surface, the show notes on the other, each carrying the live link. The feed address and listing links are state, not decisions: they are recorded here when feed setup runs, the way the dressing records what was applied. See `podcast-module.md` for the module in full.

**Distribution.** The optional distribution modules' block; a channel that publishes only on its video platform omits it entirely. One line per platform, and the route is recorded as it honestly is: LinkedIn's member-posting API is partner-gated, so a personal profile's route is the browser unless the channel legitimately holds approved API access; X's API route needs the account's own paid tier and developer app; Instagram's Content Publishing API needs a Business or Creator account connected to a Facebook Page, and a personal account's route is the browser. Credentials never live in this file — the block records the route and the app's name, and the secrets stay where the channel keeps secrets. See `linkedin-module.md`, `x-module.md`, and `instagram-module.md`.

**Voice spec.** One voice per channel. If the voice is not yet chosen, write "to be locked at pilot episode 1" and treat locking it as part of the pilot's done rule.

**Funnel endpoint.** One action. Two actions in a video is zero actions, because the viewer picks neither. If the business genuinely has no endpoint yet, write "audience-building only — no conversion expected" so the numbers read judges the channel honestly.

**Cadence and budget.** The caps are what make the pilot's measurement useful: when measured cost crosses the cap, the cadence drops. Write the cap you would actually act on.

**Channel guardrails.** Write the never-list in the business's own risk language: the claim that would embarrass it, the material that is private, the topic that would cost it trust. These bind every stage of the pipeline, and they outrank a good story.

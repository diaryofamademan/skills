# The podcast module

An optional module for the funnel-operator skill. It gives a channel a second surface: every episode also publishes as a podcast episode — the same narration, audio only — on a podcast feed the channel sets up once.

The module exists because the pipeline already makes the expensive part. The narration is rendered, the packaging is written, and the episode is approved before anything ships. The podcast version is those same assets with the pictures left off. It costs a render, a set of show notes, and one upload per episode. What it buys is a second shelf: podcast apps are where founders listen on walks, in cars, and at desks, and a feed keeps every episode in front of a subscriber without the channel winning a click war each time.

The module is optional per channel. A channel runs it only when its config carries a Podcast block. A channel with no Podcast block is a video channel, and nothing in the nine stages changes for it.

## The gate rule

**The podcast version rides the same publish gate as the video. It never publishes ahead of the episode, and it never publishes separately from it.**

The owner approves the episode — the exact final video, title, and thumbnail — once, at stage 8. That approval covers the episode on both surfaces. The podcast cut is built from the approved episode's own assets, so there is nothing new for the owner to judge: same script, same voice, same music, same title. If the episode goes back through the gate for any change, the podcast cut is rebuilt from the changed episode and ships only when the changed episode ships. A podcast episode that reaches the feed before its video is public, or while its video sits unapproved, is a guardrail break, and it is treated the way a publish-gate break is treated.

In the stage order: the podcast cut is prepared during assembly and packaging, held with the rest of the episode package, and published in stage 8's post-publish pass, alongside the pinned comment and the end screen.

## What it produces per episode

Three things, all from the episode package the pipeline already returns:

- **The podcast cut** — one audio file: the episode's narration with its music. It is the same narration renders and the same mix as the video's audio — the spoken call to action is surface-neutral, so nothing is re-rendered or swapped for audio (see the call-to-action rule below). The one adjustment is loudness, covered under "The music decision."

- **The show notes** — the episode's description for podcast apps, built from the packaging winners: the winning title as the episode title, the winning subtitle as the opening line, the plain summary, the chapter list with timestamps, the call to action with a working link to the funnel endpoint, and the sources the script used. The show notes are text a listener can tap, so the link in them is a live link, not a spoken address.

- **The episode fields** — the feed's per-episode metadata: title, the show notes as the description, the chapter timestamps in the feed's chapter format where the host supports it, the episode's duration and file size measured from the finished file, and the explicit flag, which follows the feed's standing flag.

## The music decision

**The podcast cut carries the video's music mix — the same mix, at the same beats — not the clean narration.**

Two reasons. First, the gate: the owner approved one audio performance. A different mix under the same approval would be an unapproved artifact shipping on his name. The clean narration was never approved as a finished thing; it is an ingredient. Second, the formats' music is part of the story's shape: swells land on turns, beds set the register. Stripping it makes the podcast a lesser copy of the episode instead of the same episode on a second surface.

The one adjustment the podcast cut does make to the audio is loudness. Podcast apps expect speech loudness around the podcast norm, which sits a little under the video platform's. The cut is measured and normalised to the podcast level in the same loudness pass the assembly already runs, and the figure is recorded in the production notes beside the video's.

## The call-to-action rule — one spoken line, every surface

A video call to action usually points at the screen: "the link is below." Audio has no below — and the fix is not a second version of the line. **The spoken call to action is written once, in the config, surface-neutral, and read word for word identically on the video, the podcast, and every other surface the episode ever reaches.**

Surface-neutral means the line works with ears alone:

- **It names the web address out loud.** The destination is spoken as an address a listener can type from hearing it once — short, spellable, no path unless the path is the address.

- **It never points at anything.** No "below," no "show notes," no "on screen," no "link in the description." A pointer is a claim about where the listener is standing, and the same line has to be true in a car, on a TV, and in a podcast app at once.

- **The offer words are the line.** What the listener gets, and the channel's never-line where it carries one, are spoken exactly as the config writes them. There is one line to approve at the gate, one line to keep consistent, and no per-surface variants to drift apart.

Per-surface pointers still exist — in text only, where they belong. The video description and the pinned comment carry the live link and may say where it sits. The podcast show notes carry the live link the same way. Text is read on the surface it was written for, so text may point; the spoken line may not.

The production consequence is the simple one: **the podcast audio is the same narration as the video's.** Same scene renders, same voice, same words. Nothing is re-rendered for audio, no scene is doubled, and no splice is ever made for a pointer. If a channel's standing call to action still carries a surface pointer from before this rule, fixing it is a config change — the line is rewritten once, surface-neutral, and every surface picks it up from the next episode. An episode already in production keeps the line it was gated with; the new line never enters mid-episode.

## Feed setup — a one-time stage

The feed is set up once per channel, the way the channel dressing is set up once for video. It is revisited only when the config's Podcast block changes. The setup:

1. **Write the feed fields from the config's Podcast block** (the block is listed in `channel-config-template.md`): feed title, feed description, author, owner email, category, language, explicit flag, and artwork. The feed description is the channel's About text with the surface words swapped — video becomes episode, watch becomes listen — and nothing else rewritten. The position, the audience, and the funnel endpoint are the channel's, so the feed's words are the channel's words.

2. **Build the artwork.** Podcast artwork is a square: at least 1,400 by 1,400 pixels, 3,000 by 3,000 preferred, in the RGB colour space with no transparency. Build it from the channel's mark and type, at size, the way dressing assets are built. Never stretch the banner into the square and never screenshot it: the banner's lockup is composed for a wide frame and reads as a postage stamp in a podcast app. The channel name is set in the artwork, in the channel's display type, because podcast apps show the artwork at sizes where the feed title beside it may be cut off.

3. **Create the host account and the show.** Accounts are created in the owner's name, by the owner or in a browser run under the owner's accounts at his direction — never by an agent acting on its own. Enter the feed fields exactly as written in the config.

4. **Put the first episode on the feed** — only after that episode has passed the publish gate, per the gate rule above. Most directories will not list a show with no episode, so the submissions below follow the first gated episode.

5. **Copy the feed address** from the host and record it in the config's Podcast block. The feed address is the show's permanent home; every directory points at it.

6. **Submit the feed to Apple Podcasts** through Apple Podcasts Connect, and run the feed through a validator first. Apple's review is the slow one; expect days, not hours.

7. **Confirm the Spotify listing.** If the host is Spotify's own, the show is on Spotify when the first episode publishes. If the feed lives anywhere else, add the show in Spotify for Creators from the feed address and confirm it lists.

8. **Submit to the remaining directories the config names** — Amazon Music and the Podcast Index are the standing pair; each is a one-time form carrying the same feed address.

9. **Record the listing links in the config** — the Apple show page, the Spotify show page, and each other directory's page — in the Podcast block's state lines.

Setup is done when the second episode has reached every directory on its own, with no hand touching the feed between the publish step and the listing. From then on, publishing a podcast episode is one upload in stage 8's post-publish pass.

## The numbers read

The stage 9 read gains two podcast lines, reported beside the video's numbers and never blended into them: downloads per episode from the host's statistics, and funnel actions that arrive through the show-notes link, which the endpoint attributes the same way it attributes the description link. A podcast audience that grows while its funnel actions stay at zero is judged the way a view-only video audience is judged: the surface is failing at its job, and the read says so. Podcast figures join the same ledger rhythm as the video's; the host's statistics window is the limit of what can be read, and the ledger notes the window it read.

## Verification items

Before a run with the module is called done, confirm:

- [ ] The channel's config carries a Podcast block, and the feed's live fields match it word for word.

- [ ] The feed artwork is square, at least 1,400 by 1,400 pixels, built from the channel's mark and type — not a stretched banner.

- [ ] The spoken call to action in the podcast cut is the config's line, word for word — the same render as the video's — naming the address out loud and pointing at nothing.

- [ ] The show notes open with the winning subtitle and carry a working link to the funnel endpoint.

- [ ] The podcast episode published after the video's gate passed, in the same post-publish pass — never before, never on its own.

- [ ] The feed address and the directory listing links are recorded in the config's Podcast block.

# The Shorts stage

An optional stage for the funnel-operator skill. It gives an episode a discovery surface: two or three short vertical videos, hand-picked from the episode and built natively, whose whole job is to route a viewer who would never click the long video into the full episode.

The stage exists because the long video cannot do its own discovery. A founder scrolling a Shorts feed will not stop for a nine-minute story he has never heard of — but he will stop for one sharp claim, spoken plainly, that turns out to be the sharpest thirty seconds of an episode he can then go and watch. The pipeline already makes the expensive parts: the script's beats, the stills, the narration. A Short is those same assets, re-cut honestly for the feed they will live in.

The stage is optional per channel. A channel runs it only when its config carries a Shorts block. A channel with no Shorts block is a long-video channel, and nothing in the nine stages changes for it.

## The purpose rule

**A Short exists to move a viewer to the long episode. It is judged on that movement, never on its own views.**

The movement is measured where the platform reports it: clicks from the Short into the long episode through its related-video link, visits to the channel profile that follow, and funnel starts downstream that the endpoint attributes to viewers who arrived that way. A Short with a large view count and no movement has failed at its job, the way a video with rising views and flat funnel actions has failed at its. Views are reported in the numbers read as context. They are never the verdict.

## Selection — at the script stage

**Two or three cuts per episode. Never a batch.**

The picks are made at stage 2, while the script's beats are in view, and they are named in the episode's production notes before production starts. A cut qualifies only if the beat stands alone:

- **One claim.** The cut carries a single point a stranger can repeat in one breath.

- **One turn.** Something in it reverses, lands, or pays off — the beat has a shape, not just a topic.

- **No setup.** Nothing in the cut needs an earlier part of the story to make sense. The viewer arrives cold, mid-scroll, knowing nothing about the episode.

A moment that needs prior context to land stays in the long video, however strong it is in place. The stand-alone test is the whole selection discipline: if the pick has to be explained, it is not a pick.

## The build — the same production pass

The Shorts are built while the episode is being built, from the episode's own assets — not after it ships, and not by a separate clipping pass over the finished video.

- **A native vertical rebuild.** The cut is composed for the vertical frame (9:16) from the same stills and the same narration segment as the episode. It is never a centre-crop of the horizontal picture and never a letterbox: a crop throws away the composition the stills were made with, and a letterboxed long video reads as exactly what it is — a clip.

- **Thirty to sixty seconds.** Long enough for one claim and its turn, short enough to hold a cold viewer to the end.

- **The claim is spoken inside the first two seconds.** No title card, no logo sting, no warm-up line. The first thing the viewer hears is the point.

- **The picture follows the channel standard.** A new still roughly every five seconds, joined by hard cuts — the same pacing and the same transitions as the episode, because the Short is the channel's work in miniature, not a different register.

- **The cut ends on a shortened spoken call to action** that points to the full episode. The spoken line stays surface-neutral in spirit: it names the episode as the place the whole story lives. Per-surface pointers live in text and in the platform's own furniture, per the rule below.

- **The related-video link is the funnel.** In YouTube Studio, the Short's related-video link is set to the long episode. This is a required step of the stage, not an option: a Short with no link to its episode is a claim with nowhere to go.

- **Captions are a sidecar, as everywhere in this pipeline.** An SRT for the segment, built from the verified narration and checked against the script, uploaded as the Short's subtitle track. Nothing is burned into the picture.

## The gate and release

**The Shorts ride the episode's publish gate. There is no separate gate, and nothing uploads before the owner's word.**

The cuts are listed in the same approval package the owner reviews at stage 8 — the episode, the title, the thumbnail, and the named Shorts cuts — so the owner approves the Shorts as part of the episode they belong to. A Short that changes after approval goes back through the gate with its episode.

Release is staggered. The Shorts go out between episodes, on dates set in stage 8's post-publish pass and logged in the production notes — never all of an episode's Shorts on one day, and never a Short before its long episode is live. A Short that points at an episode the viewer cannot yet watch has spent its claim on nothing.

## The guardrail — no mass auto-clipping

**No tool or pass may turn an episode into a large set of derivative clips.**

This is a guardrail (guardrail 13 in `SKILL.md`), not a preference, and it has a precedent behind it: the channel owner's own Token Metrics channel had 193 auto-derived Shorts deleted in a Partner Program cleanup, because the platform reads bulk derivative clipping as low-effort, repetitive content. The damage is not only the deleted clips; it is what the pattern teaches the platform about the channel.

Two or three hand-picked, natively rebuilt Shorts per episode is the model. Anything more — a fourth cut, a highlights series, an automated clipping pass of any size — needs the owner's explicit word for that episode, given before the extra cuts are made.

## The numbers read

The stage 9 read gains the Shorts lines, reported beside the episode's numbers and never blended into them: related-video clicks from each Short into its episode, profile visits that follow the Shorts, and funnel starts the endpoint attributes to that path. Each Short is read against the purpose rule — movement, not views — and a cut that produced views and no movement is recorded as a miss, the way a view-only topic family is. What the read learns feeds selection: the shapes of beat that move viewers get picked again; the shapes that only get watched do not.

## Verification items

Before a run with the stage is called done, confirm:

- [ ] The episode's Shorts picks — two or three, no more — were named in the production notes before production started, and each passes the stand-alone test: one claim, one turn, no setup.

- [ ] Each Short is a native vertical rebuild from the episode's stills and narration segment — not a centre-crop, not a letterbox — and runs thirty to sixty seconds with its claim spoken inside the first two seconds.

- [ ] Each Short was verified by viewing frames extracted from the vertical cut itself, across its runtime: real imagery, the channel's pacing standard, and no caption text in the picture.

- [ ] Each Short carries its segment SRT, uploaded as the subtitle track.

- [ ] Each Short's related-video link is set to the long episode.

- [ ] The Shorts were listed in the episode's gate package and approved with it, and the release is staggered — none published before the long episode was live, never all on one day.

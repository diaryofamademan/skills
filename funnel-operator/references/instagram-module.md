# The Instagram module — posts, reels, and carousels

Instagram is the channel's visual distribution surface: the episode's stills and vertical cuts, carried to an audience that discovers by image and short video. The module is optional per channel — a channel runs it when its config's Distribution block marks Instagram active. Its job is the distribution job: put the episode's sharpest claim in front of people who would never click the long video, and route them — through the profile and its link — to the episode and the funnel endpoint behind it.

## What gets published

- **Posts.** A single image post built from the episode's materials — a still or a card — with a caption that carries the claim in full, not a teaser for it. The caption is the post; the image earns the stop.

- **Reels.** The episode's Shorts cuts are the natural reels: the same native vertical build, posted as reels, with the caption naming the full episode and the profile link pointing at it. A reel is never a re-upload of the horizontal video in a vertical frame — the Shorts stage's build rules bind here unchanged.

- **Carousels.** The episode's chapter cards as a swipe set: one idea per card, the claim on the first, the pointer on the last. Carousels are built from the episode's cards and stills, so the surface costs layout work, not new production.

All three are prepared at the packaging stage (stage 7), so the owner approves the episode's whole public face in one package. Which of the three an episode uses is chosen at packaging and recorded in the production notes; a reel follows whenever the channel runs the Shorts stage, since the cut already exists.

## The posting routes — stated honestly

- **The API route.** Meta's Content Publishing API posts to Instagram Business and Creator accounts, through a Meta app holding the content-publishing permission, with the Instagram account connected to a Facebook Page. Where the channel's account is a Business or Creator account set up that way, the API is the cleaner route: posts, reels, and carousels are submitted as structured calls and their IDs come back as receipts.

- **The browser route.** A personal account cannot use the publishing API at all — that is a platform limit, not a setup gap — and an account not yet connected to a Page cannot either. Those channels post through the signed-in account in a browser or the app, exactly as the account's owner would. The browser route is a full route, not a fallback to apologise for.

- **The scheduler route.** A channel may post through a multi-platform scheduler — Postiz is the named one for this operation (owner's decision, 2026-11-25: one tool across LinkedIn, X, Instagram, and YouTube, driven through its API, chosen over Buffer and over a Typefully-only split) — provided the account is a Business or Creator account the scheduler can hold. The discipline is unchanged: the gate approves the exact caption and media first, the scheduler holds only approved artefacts, and the live post is read back on Instagram itself after it goes out.

- The Distribution block records the account, its type (Business, Creator, or personal), the Page it is connected to where one exists, and the route the channel uses. An agent never converts an account's type or connects a Page in the channel's name without the owner's word — those change what the account is, and they are the owner's decisions.

## The gate

Distribution rides the episode's publish gate (stage 8), under the same rule as everything else the channel publishes: **the owner approves the exact copy and the exact media before anything posts.** The package carries the caption word for word and the media itself — the still, the reel file, the carousel's cards in order — not a description of them. Nothing posts silently, and anything changed after approval in any way goes back through the gate. Posts go out in stage 8's post-publish pass, after the episode is public, so the pointer lands on a live episode. A standalone post not tied to an episode follows the same rule with its own package.

## Verification

A post is not done when it is submitted; it is done when it is read back. Open the live post and confirm: the media as approved (a carousel's cards in order, a reel's picture clean and its caption track present), the caption as approved, and the profile link landing where the caption sends people. Each post's URL is recorded on the episode's line in the published log. A post that went out wrong is corrected or removed in the same pass and the correction noted.

## The numbers read

Stage 9 reads Instagram the way it reads Shorts and blog posts: on movement, not applause. Reach and likes are context; the measures are profile visits, taps through the profile link, episode views that follow, and the funnel starts and completions downstream, reported beside the episode's numbers and never blended into them.

## Verification items

- [ ] The Distribution block records Instagram active, the account and its type, the connected Facebook Page where one exists, and the route (Content Publishing API for a qualifying Business or Creator account, or browser).

- [ ] The episode's Instagram artefacts — post image, reel, carousel cards in order, and every caption — were in the gate package exactly as they would post, and the owner approved them.

- [ ] The artefacts went out in stage 8's post-publish pass, after the episode was public, through the route the config records.

- [ ] Each live post was read back: media as approved, cards in order, caption as approved, the profile link landing where the captions send people.

- [ ] Each post's URL is recorded on the episode's line in the published log.

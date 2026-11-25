# The X module — posts, threads, and long-form

X is the channel's fastest distribution surface: the claim travels in minutes, in the audience's own timeline, and the conversation around it is itself evidence the research module reads. The module is optional per channel — a channel runs it when its config's Distribution block marks X active. Its job is the distribution job: put the episode's sharpest claim in front of people who would never click the video, and route them to the episode and the funnel endpoint behind it.

## What gets published

- **Posts.** The episode's core claim as a single post, written to stand alone in a timeline, with the pointer to the episode. One claim per post; a post carrying two claims carries none.

- **Threads.** The episode's chapter arc as a thread: the hook post carries the claim, each following post carries one chapter's turn in miniature, and the last post carries the pointer — to the episode, or to the funnel endpoint where the config says the surface points there. A thread is the episode re-cut for reading, not the script pasted in pieces.

- **Long-form posts.** Where the account's tier allows them, the episode's argument as one long-form post — the shape the blog module gives a post, shortened to what a timeline reader finishes. Long-form is one option per episode, chosen at packaging, never a default applied to all three shapes at once: an episode goes out as a post, a thread, or a long-form post, and the choice is recorded in the production notes.

All three are prepared at the packaging stage (stage 7), so the owner approves the episode's whole public face in one package.

## The posting routes — stated honestly

- **The API route.** Posting through the X API runs on a paid tier, through the account's own developer app and its credentials — the free and read-oriented tiers do not carry the posting this module needs. Where the channel holds a paid tier and its own app, the API is the cleaner route: posts and threads are submitted as structured calls and their IDs come back as receipts. The config records the route and the app's name; the credentials themselves never live in the config file — they are held the way the channel holds every other credential, outside the channel folder's plain text.

- **The browser route.** Where there is no API access, posts are made through the signed-in account in a browser session, exactly as the account's owner would make them. The browser route is a full route, not a fallback to apologise for; it is how most small channels post.

- **The scheduler route.** A channel may post through a scheduler it already runs. Two are named: Typefully, which takes one draft and posts it to X and LinkedIn together; and Postiz, this operation's chosen default (owner's decision, 2026-11-25 — one tool across X, LinkedIn, Instagram, and YouTube, driven through its API). The route changes the hand that posts, never the discipline around it: the gate approves the exact copy and the exact media first, the scheduler holds only approved artefacts, and after the scheduled post goes live it is read back on X itself, exactly as an API or browser post is — the scheduler's own "published" mark is not the verification.

- The block records which route the channel uses. An agent never assumes a tier, never upgrades an account's tier in the channel's name without the owner's word — a tier is a spend, and spends are the owner's.

## The gate

Distribution rides the episode's publish gate (stage 8), under the same rule as everything else the channel publishes: **the owner approves the exact copy and the exact media before anything posts.** For a thread, the package carries every post in the thread, in order, word for word — approving "the thread" as an idea approves nothing. Nothing posts silently, and a post changed after approval in any way goes back through the gate. Posts go out in stage 8's post-publish pass, after the episode is public, so the pointer lands on a live episode. A standalone post not tied to an episode follows the same rule with its own package.

## Verification

A post is not done when it is submitted; it is done when it is read back. Open the live post and confirm the text as approved and the pointer's link landing where it should. For a thread, read the whole thread back in order — a thread whose middle post failed or reordered is a broken artefact, not a partial success. Each post's URL (for a thread, the first post's URL) is recorded on the episode's line in the published log. A post that went out wrong is corrected or removed in the same pass and the correction noted.

## The numbers read

Stage 9 reads X the way it reads Shorts and blog posts: on movement, not applause. Impressions and likes are context; the measures are profile visits, clicks through to the episode, and the funnel starts and completions that follow, reported beside the episode's numbers and never blended into them. Replies and quote-posts in the niche are also research input: the research module's platform pass reads them for what the audience is asking, in its own words.

## Verification items

- [ ] The Distribution block records X active, the account, and the route (API on the account's own paid tier and app, browser, or a named scheduler such as Typefully) — with no credentials written in the config.

- [ ] The episode's X artefact — post, thread, or long-form — was in the gate package word for word (every post of a thread, in order) and the owner approved that exact text.

- [ ] The artefact went out in stage 8's post-publish pass, after the episode was public, through the route the config records.

- [ ] The live artefact was read back: text as approved, a thread complete and in order, the pointer's link landing on the live episode or endpoint.

- [ ] The post's URL is recorded on the episode's line in the published log.

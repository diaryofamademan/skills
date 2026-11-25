# The blog module

An optional module for the funnel-operator skill. It gives an episode a third surface: a blog post on the business's own site, built from the episode's script, stills, and transcript, and published in the same pass as the episode going public.

The module exists because the video cannot do its own search work. A founder who would never find the channel still types his question into a search engine at the moment it bites — a board question, a slow quarter, an AI headline. The blog post is the page that answers that exact question, on ground the business owns, one click from the funnel endpoint the episode points at. The pipeline already makes the expensive parts: the script is the article's draft, the stills are its pictures, the transcript already exists as the caption sidecar. A post is formatting and search work on assets already paid for, not a second writing job.

The module is optional per channel. A channel runs it only when its config carries a Blog block. A channel with no Blog block is unchanged, and nothing in the nine stages moves for it.

## The purpose rule

**A blog post exists to be found at a buying moment, to be sent by someone else, and to end at the channel's one funnel endpoint. It is judged on funnel actions, not on traffic.**

Three jobs, in that order of honesty. Search: the post ranks, over months, for the questions the channel's entry points name, and gives AI search a clean text source to cite for the channel's category. Forwarding: a partner, a peer, or a prospect can send a three-minute read where a nine-minute video is too much to ask — in a considered purchase, the post is the proof asset that travels inside other people's conversations. Conversion: the post lives on the same site as the funnel endpoint, so the reader is one click from the action every surface drives to.

Traffic is reported in the numbers read as context. It is never the verdict. A post with modest visits and real funnel starts has done its job; a post with heavy traffic and no starts has not.

## What a post is — built at the packaging stage

The post is drafted with the episode package, at stage 7, from the episode's own materials. It is not a transcript pasted onto a page, and it is not a new article written from the episode's idea.

- **The headline is the winning title.** The packaging round already picked it. The post does not run a second title round.

- **The opening is the winning subtitle**, followed by the summary in plain words — the same opening the video description carries, because a reader and a viewer are owed the same promise.

- **The body is the script, re-cut for reading.** Chapters become headings, in the episode's chapter order. Sentences stay short and plain, the way the script was written to be heard. Story colour stays colour: a number that was a character's detail in the episode does not become a claim on the page, and guardrail 2 binds the post exactly as it binds the script.

- **The pictures are the episode's stills and cards**, placed at the chapters they belong to, each with plain alt text that says what the picture shows. The thumbnail is the share image (the page's social card image). No new image round is run for the post.

- **The video and the podcast episode are embedded** in the post — the video near the top, the podcast link with the call to action — so each surface hands its audience to the others.

- **One definition box per post.** One term from the channel's category, defined in plain words in a short, quotable block: what the owned concept is, how the mechanism works, what the endpoint's product is and is not. This is the passage search and AI search quote, and it is how the channel owns its category in text. The box is written once per term and reused across posts that need it, word for word — a definition that drifts between posts teaches the search engines nothing.

- **One call to action, and only one.** The config's exact call-to-action words, with the endpoint link, placed once mid-post and once at the end — the same placement rule as the video. No second offer rides on the post: no newsletter signup, no download, no contact form competing with the endpoint. A capture mechanism that competes with the funnel is a leak, not a bonus.

- **The full transcript sits below the article**, under its own heading, built from the verified caption sidecar. The article is what a person reads; the transcript is what search indexes and what a reader who wants the whole episode in text is owed. The transcript never replaces the article at the top of the page.

- **Posts link to each other.** Each new post links to the earlier posts its chapter topics touch, and is linked from them where the fit is real. Over episodes this builds one cluster around the channel's entry-point questions on the business's own site, instead of a pile of isolated pages. A link added for the cluster's sake, where a reader would not follow it, is not added.

- **Search fields are part of the draft**, not an afterthought: the page slug (the entry-point question's own words, in short form), the meta description (the winning subtitle, trimmed to length if it must be), and the share title and image. They are recorded in the post's draft file, with the post, so the gate reviews the page whole.

## The gate and release

**The post rides the episode's publish gate. There is no separate gate, and nothing publishes before the owner's word.**

The draft post — body, pictures, definition box, search fields — is listed in the same approval package the owner reviews at stage 8. The owner approves the post with the episode it belongs to. A post that changes after approval goes back through the gate with its episode.

The post goes live in stage 8's post-publish pass, in the same pass as the episode going public and the podcast episode publishing — never before the episode is public, because a post that embeds and links to an episode the reader cannot watch spends its one ranking start on a dead end. The post's live URL is recorded in the channel's published log, on the episode's own line.

## The publishing route — static, on the site's own Pages project

**A post publishes the way the site itself ships: as a static page, rendered from the approved draft, deployed with the site. No CMS, no database, no framework.**

The pipeline writes the post; nobody edits posts in a browser. The draft already exists as a Markdown file in the episode folder, approved as an exact text at the gate. Publishing is a rendering step on that file, and the route is:

- **Render the approved draft into a post page** in the site's own design system — the DESIGN.md the site was built under (the channel-site-builder skill builds that shelf: the post layout with the headline, the opening, the chapter headings, the embeds, the definition box, the one call to action, the transcript below). The rendered page carries the draft's recorded search fields: its slug, its meta description, its share title and image.

- **Place the page at the config's address pattern** — the post's own folder under the site's blog path, as an index page — with the episode's stills copied to the post's asset path and the thumbnail as the share image. The embeds point at the live, public episode, never at an unlisted or replaced copy.

- **Update the index and the sitemap in the same pass.** The blog index gains the post (newest first, with its date); the sitemap gains the post's URL with its true publish date as the last-modified date. A post missing from either is a publishing defect, not a follow-up.

- **Deploy by the site's standing route** — the same Cloudflare Pages deploy the site itself ships by, in stage 8's post-publish pass. The post never deploys on its own schedule: the deploy that carries it is the pass in which its episode goes public.

- **Verify the live post before the pass is called done.** Fetch the post's URL (200, the right title); read the render at desktop and phone widths, screenshots viewed, the way the site's own visual QA discipline requires; click the call to action and confirm it lands on the funnel endpoint; confirm the sitemap serves the new URL. A post that was deployed but never looked at has not been published — it has been uploaded.

Why no CMS: a content system solves editor problems — browser editing, multi-author workflow, plugin features — and this pipeline has none of them. What it would add is real: a database to keep alive, an admin surface to attack, and a second system whose failure can take the posts down. The hosted WordPress-successor class (a CMS rebuilt on a static framework, still in early preview at the time of this decision) is the recorded candidate if a CMS is ever needed, and it beats a classic WordPress install outright on that day. It is not needed today.

The upgrade trigger, recorded so the route is revisited on evidence rather than taste: when hand-rendering posts starts to hurt — roughly ten or more posts on the shelf, or index and tag automation becoming the work — the rendering step moves to a static framework with content collections. The posts' shape does not change; only the rendering is automated. Nothing about the route is load-bearing in the post itself, so the move costs a build pass, not a migration.

## What the module is not — the newsletter rule

**The blog module is not a newsletter, and it does not grow one by accident.**

A public newsletter is a separate product: a second capture offer on every post, a standing writing obligation that competes with episode production, and a list that needs feeding whether or not an episode shipped. None of that is this module's job. Nurture — keeping memory warm among people not buying yet — is done by email to people who already took the funnel action, under the marketing plan's nurture square. It is not done by bolting a signup box onto the blog.

A channel that later wants a public newsletter decides that as its own move, on its own evidence — a list that already exists from the funnel, a cadence the channel already holds — and records the decision in its config. Until then, the post carries the one call to action and nothing else.

## The numbers read

The stage 9 read gains the blog lines, reported beside the episode's numbers and never blended into them: searches the post was found through (the queries the site's own search console reports), visits, and funnel starts and completions the endpoint attributes to the post's link. Each post is read against the purpose rule — funnel actions first, forwards and citations as supporting evidence, traffic as context. The review rhythm is the channel's own: search compounds slowly, so a post is judged at the channel's review trigger, not in its first week.

## Verification items

Before a run with the module is called done, confirm:

- [ ] The post was drafted at the packaging stage from the episode's script, stills, and transcript — not written fresh, and not a raw transcript at the top of the page.

- [ ] The headline is the packaging round's winning title, the opening is the winning subtitle, and the chapters follow the episode's chapter order under headings.

- [ ] Every number in the post traces the way it traced in the script; story colour is still colour on the page.

- [ ] The pictures are the episode's own stills and cards with plain alt text, and the share image is the episode's thumbnail.

- [ ] The video is embedded and the podcast episode is linked; both point at the live episode, not at an unlisted or replaced copy.

- [ ] The definition box is present, in plain words, and matches the wording used in earlier posts word for word where the term has appeared before.

- [ ] The post carries the config's exact call-to-action words with the endpoint link, mid-post and at the end — and no second capture offer anywhere on the page.

- [ ] The transcript below the article matches the verified caption sidecar.

- [ ] The slug, meta description, and share fields are recorded in the draft and were part of the gate package.

- [ ] The post went live in the same pass as the episode going public, and its URL is recorded on the episode's line in the published log.

- [ ] The publishing route ran as specified: the approved draft rendered into the site's post layout, placed at the config's address pattern, the blog index and the sitemap updated in the same pass, deployed by the site's standing Pages route, and the live post verified — fetched, read at desktop and phone widths, its call to action clicked through to the endpoint.

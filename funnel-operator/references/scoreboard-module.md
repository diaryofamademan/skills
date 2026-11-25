# The scoreboard module — stage 9 as a standing rhythm

Stage 9, the numbers read, is written in the core procedure as a read that happens on the channel's rhythm. This module is that read stood up as a system: two scheduled briefings — a short daily and a fuller weekly — that gather the channel's numbers from their real sources, write them into the performance ledger, run the playbook on what they say, and close with optimizations the next read will judge. A channel without the scoreboard has episodes and no instrument panel. A channel with it knows, every morning, which step of its funnel is binding and what it is doing about it.

The module is switched on per channel: the config carries a Scoreboard block (see the config template), and the two jobs are scheduled when the block is filled. A channel in its pilot, before its endpoint is live, does not run the scoreboard — there is nothing to count yet, and a briefing that reports zeros it cannot interpret teaches the owner to ignore briefings.

## The sources — verified before the first job exists

Every number in a briefing comes from a source the setup pass has read with its own eyes. A schedule built on an unverified source is a promise built on air, so setup proves each source returns real data before the first job is created:

- **Platform analytics** (YouTube Studio or the platform's equivalent): views, watch time, click-through, subscribers, per-video numbers, traffic sources. Its limit is lag — the platform's numbers run a day or two behind, and every briefing says which date they run through. If the session is signed out and a saved login exists, the run restores it and reads; a fixable sign-in is never reported as a data gap.

- **The podcast host's dashboard**, when the channel runs the podcast module: starts and streams per episode. If it demands a fresh login code on a given day, that day's briefing skips it silently rather than holding the whole read hostage; the weekly notes a persistent block once, as a finding.

- **Site traffic**, from the instrumentation channel-site-builder installs (its analytics reference is the standard): the cookieless Web Analytics beacon as the primary read — real browsers, per page, with referrers — and zone analytics as the cross-check. The zone's unique-visitor line sits on a crawler floor and is never reported as audience. The beacon's history starts the day it was installed; briefings say so until it has a full period behind it.

- **Endpoint completions**, from the capture pattern the Site block records: pattern B reads the store; pattern A counts the alias's mail in the owner's inbox by the form body's own signature — the distinctive field string a real submission carries and no other mail does. The signature is tested at setup against a known test submission, so the count is a count of completions, not of mail that mentions the channel.

## The daily brief

Short enough to read standing up. Verdict line first — the channel's name, the date, the one thing that matters today — then three sections (Channel, Funnel, Traffic), one fact per line: yesterday's movement and the running totals that give it meaning. Studio's lag is named. The brief closes with the playbook's daily trace (below): the bottleneck line and one recommendation. One dated row goes into the performance ledger with the same numbers, so the weekly never re-derives what the dailies already established.

## The weekly review

The week against the week before, on the channel's review day. Per-episode rows written into the ledger (views, average view duration, funnel actions attributed, podcast starts where the module runs). Shorts and blog posts read beside the episodes, on movement and funnel actions, never blended. Then the playbook pass in full, then the optimizations block (below). The weekly is also where stage 9's standing rules are executed: format judgments only after five episodes, topic families doubled or re-scored on evidence — proposed in the review, written into the backlog only on the owner's word where the channel's gates reserve scoring to him.

The weekly also runs the research refresh (see `research-module.md`). The four passes re-run — platform performance in the niche, search terms in the audience's phrasing, the other platforms' performing formats, buyer demand signals with the channel's own deal flow read first — and the findings are written as a new dated note in the channel's research notes. The backlog is re-ranked against the refreshed findings, each change's reason recorded in the backlog, and the refill rule is checked: unused topics against the next two weeks of the channel's cadence, with a refill pass run in the same weekly when the count falls short. Score changes the channel's gates reserve to the owner are proposed in the review, as above; the research itself runs regardless, so the evidence in front of him is current when he decides. A weekly that reports the channel's numbers without refreshing the market evidence has done half its job: the channel would be steering by its own wake while the market moves.

## The playbook pass — the scoreboard thinks, or it has failed

Numbers alone are a report. The scoreboard's job is judgment, so every run — the weekly in full, the daily in miniature — runs the playbook router on what it gathered:

- **First principles first.** Decompose the funnel into its measured steps (impressions, clicks, watch time, site visits, endpoint starts, completions) and name the binding constraint from the ratios between steps, not from which number looks worst. A step whose ratio collapsed is the bottleneck; a step that was never measured is the finding.

- **Game theory where other actors gate the outcome.** The platform's recommendation system, a competitor's publishing rhythm, a sponsor's or buyer's calendar — when the constraint sits in someone else's choices, the pass says whose move would change it and what the channel's best response is.

- **Positioning when the message is the constraint.** If viewers arrive and do not act, the offer's framing is a candidate cause, tested against the same evidence standard as a mechanical cause — never reached for first because it is the most interesting explanation.

- **Comms on anything public an optimization would ship.** Proposed copy is drafted in the channel's voice and passes the plain-writing gate before it reaches the owner.

The daily carries the pass in two lines: the bottleneck, named from the numbers, and the single highest-leverage recommendation they support ("hold — nothing to change" is a legitimate recommendation when the numbers support nothing). The weekly carries it in full. **A briefing with numbers and no playbook pass is a failed run** — the same failure as a briefing with invented numbers, and for the same reason: it looks like the work and is not.

## The optimization loop — always improving, on evidence

The weekly closes with at most three optimizations. Each one states the evidence behind it, the change, the expected effect, and the measure the next weekly will judge it by. The next weekly opens by revisiting the last set: shipped or not, and whether the targeted measure moved. An optimization whose effect cannot be judged is named a failed experiment, with the missing measurement stated — the loop fixes its own instrumentation the same way it fixes titles.

Authority inside the loop follows the channel's existing gates, exactly: record and ledger updates, prepared drafts, and analysis are applied in the run. Anything the channel reserves to the owner — an episode's title, thumbnail, or final cut, public copy, publishing, topic scores where the config reserves them — is prepared to the exact decision and surfaced for his word, never applied silently. The loop's speed comes from preparation, not from borrowing the owner's gates.

## Scheduling and delivery

The two jobs are owner jobs, not observers: each run gathers, fixes access problems inside its scope (a restored sign-in, a re-run query), writes the ledger, and delivers — it does not report a fixable gap and wait. They deliver to the channel's own chat (one chat per channel is the standing structure), at a time after the owner's day starts, in his timezone, in plain style with numbers spoken the way a person says them. The jobs' instructions carry the channel's concrete sources — account names, zone and site identifiers, the inbox signature, the ledger path — copied from the config and the Site block at setup, so a cold run needs no archaeology.

## Verification items

- [ ] Every source in the Scoreboard block was read live at setup and returned real data (platform analytics, the beacon and zone reads, the completion count by its tested signature); the setup record names the date and what each source returned.

- [ ] Both jobs exist on the config's rhythm, deliver to the channel's own chat, and carry the channel's concrete source details — not placeholders a run would have to guess.

- [ ] A test run of each job produced a briefing in the required shape: verdict first, one fact per line, the bottleneck named, the playbook pass present (daily: bottleneck plus one recommendation; weekly: the full pass plus the optimizations block), and a ledger row written.

- [ ] No briefing reports zone unique visitors as audience, a platform number without its lag date, or a completion count from an untested signature.

- [ ] The first weekly revisited a real prior optimization set — or, being the first, states that the loop starts with its own three.

- [ ] The weekly ran the research refresh: a new dated research note written, the backlog re-ranked against it with reasons recorded, and the refill rule checked against the next two weeks of cadence.

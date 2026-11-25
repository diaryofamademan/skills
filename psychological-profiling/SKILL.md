---
name: psychological-profiling
description: "Use before a first outreach or an important meeting to build an evidence-graded profile of a person from their own public words and record: what they want, how they decide, how they talk, what to say and what to avoid — every claim carrying its evidence, a confidence level, and the thing that would prove it wrong."
version: 0.3.15
author: Open skills contributors
license: MIT
metadata:
  tags: [profiling, personality, big-five, negotiation-prep, outreach, evidence]
---

# <img src="assets/icons/search-01.svg" width="20" height="20" alt="" /> psychological-profiling

> **How to read this**
>
> This skill builds a profile of a person before you deal with them: a cold outreach target, a meeting counterpart, a negotiation partner. It works the way the serious at-a-distance tradition works — the CIA's leadership profilers, not the television kind — and it grades its own evidence the whole way down. A profile built by this skill is a set of labeled hypotheses, never a verdict on who someone is.

## What this skill is

Governments have profiled people at a distance for eighty years, because a president walking into a summit needs to know how the person across the table thinks. The business version of that need is ordinary: you are about to write to someone, meet someone, or negotiate with someone, and what you know about them is what they have said and done in public.

This skill turns that public record into a short dossier you can act on. It reads the person's own words — their spoken words first, because speech is the hardest to fake — and their record of actual choices, and it answers six questions:

1. What does this person want?
2. How do they decide?
3. How do they talk, and how do they hear things?
4. Where are they exposed — what moves them, and what makes them defensive?
5. What should you say, and what should you avoid, in the specific situation you are walking into?
6. What will they probably do next?

The dossier comes in two layers. On top, a 30-second card: the few lines a person can read in the car and act on. Under it, the long read: the evidence, the scores, and the reasoning the card was compressed from. A dossier that is only the long read fails the person who has thirty seconds; a dossier that is only the card fails the person who has to defend the call.

Every answer carries three things: the evidence behind it, a confidence level, and its disconfirmer — the thing that, if you saw it, would prove the read wrong. A claim without all three does not go in the dossier.

## The procedure

### Step 0 — Name the job

One profile serves one decision: this outreach, this meeting, this negotiation. Write the decision down first. A profile with no decision attached collects trivia and calls it insight. The decision decides what evidence matters and how deep the profile needs to go.

### Step 1 — Gather by the source hierarchy

Sources are ranked by how hard they are to fake:

1. **Spontaneous speech.** Interviews, podcasts, question-and-answer sessions, panels, calls. The person is thinking in real time, in their own words. This is the strongest source, and the classic methods were built on it.
2. **Prepared speech.** Keynotes, scripted talks, official statements. Still their positions, but staff may have written the words. Use for what they claim, less for how they think.
3. **Their verified own writing.** Books, long-form posts in a consistent personal voice, emails and chats you legitimately hold. Writing can be edited and ghosted; weigh it below speech.
4. **Posts and social output.** Assume a team may be involved until the voice proves otherwise. Useful for positions and priorities, weak for personality.
5. **What others say about them.** Interviews with colleagues, profiles, reporting. Labeled as second-hand wherever it is used.

Alongside the words, gather the **record**: what the person has built, bought, funded, joined, left, and refused. Behavior outranks language wherever the two disagree. A person who says they value speed and has shipped slowly for a decade is a slow shipper.

**Operating documents deserve their own weight.** Documents a person writes to run their own operation — playbooks, manuals, working notes, the instructions they hand their own team — are written to be used, not to be seen, which makes them chosen-format evidence of unusually high grade. In this skill's field testing, a subject's operating documents were the single most diagnostic artifact in his public record. When they exist, gather them with the record and weigh them with chosen evidence, above interviews.

**Resolve the person's handles.** Famous subjects are easy to find and hard to read; everyone else is the reverse. Take the names and handles you have and resolve them across platforms — forum accounts, old blogs, comment histories, code or writing under the same handle — because the unscripted corners are where chosen-format evidence lives. Ordinary search does the work; the curated open-source intelligence collections (the awesome-osint list and its topic collections, such as Legendary_Crypto for crypto subjects) serve as the map of where footprints hide. Username-search engines such as Sherlock or Maigret automate the sweep when they are already installed; the skill never installs tooling mid-run and does not depend on them. A handle match is an attribution hypothesis, not proof of identity: material under a merely matched handle is treated as second-hand until something ties it to the person.

**Gather the visual record.** Photographs and video are part of the record, read as choices, never as anatomy. Three things carry evidence: the **environment** the person occupies and shows — rooms, desks, shelves, the background behind them on calls — which observers in the research read with real accuracy for openness and conscientiousness; their **self-presentation** — what they wear, display, and stand in front of, and who is in the frame with them — which is chosen behavior in visual form; and their **on-camera behavior** in formats they chose. What never carries evidence: facial structure, features, or body type. Physiognomy's modern versions were checked and failed, and this skill does not use them; the grading is in `references/the-evidence.md`. File visual evidence performed or chosen like everything else — a staged backdrop is performed, a lived-in workspace is chosen. The person's own social accounts are part of this gather, not an optional extra: sample the personal feed, not only the professional surface, because the lifestyle evidence — who is in the frame, which settings recur, how the social life is actually spent — lives there. In the cold field test, the profiler read the subject's business website, never sampled his personal feed, and underweighted the center of his social life as a result.

Set a floor before you start: a full dossier wants at least three substantial pieces of spontaneous speech or the equivalent. Below the floor, return a thin dossier that says what is known and stops.

**A thin dossier must be earned by a platform sweep.** Search results are a finding aid, not a search: they rank namesakes above the person, bury platform pages, and say nothing about private or quiet accounts. Before a dossier may call itself thin, visit the platforms directly and log the sweep: the person's own site or employer page, LinkedIn, Facebook, X, Instagram, and any platform their field lives on — under their name and under handle variants: initials, name-plus-employer, and the handle one platform shows tried on the others. Each line of the log ends one of four ways: material found; account found but private or empty; no account found; or namesake excluded, with the fact that separates them (a different employer, city, or field). The sweep log rides in the header of any thin dossier, and an incomplete sweep is stated there as plainly as a thin record — a dossier thin because a platform could not be reached names the platform and the reason. This rule exists because its absence produced a field error: a profiler searched a recruiter's name, found only her namesakes, excluded them correctly, and reported her record near-empty, while her LinkedIn and a public Facebook profile sat one direct visit away, unswept.

**Take the connected route before the browser.** When a platform is reachable through the user's own connected accounts — the Facebook and Instagram connectors and their equivalents — check that route first. It answers in minutes, it returns structured data, and its limits are themselves findings: a profile readable only to the person's friends is a sweep result, logged as private. Send a browser to the site when no connector covers the platform, when the connector is not connected, or when the connector's answer leaves a specific public surface untested — what a profile page shows a viewer who is not a friend is a page question the connector cannot answer. Log which route answered each platform. This rule exists because its absence cost hours in the field: a browser sweep failed twice on tab navigation while the connector routes sat unused, and when they were finally tried they resolved both platforms in about a minute each.

**Pivot on images as well as names.** A profile photograph is a handle that works across the whole web. Run the subject's avatar or main profile image through a reverse image search — Google Lens, TinEye, Yandex, Bing Visual Search, whichever are at hand; the skill names the method, not the tool, and installs nothing. The same photograph reused across accounts ties those accounts to one person far more strongly than a shared username: a handle match is an attribution hypothesis, but a headshot the subject placed on two profiles is the subject's own claim that both are theirs. Log image matches in the sweep like handle matches, and weigh whatever the newly found accounts contain by the same hierarchy as everything else. Two limits ride with the method. A match proves the photograph traveled, not always that the account is theirs — employer pages, event pages, and scraper accounts reuse headshots — so a matched account still needs a second, independent tie (an employer, a city, a cross-link back) before its material is scored as the person's own. And the image is a pivot, never evidence: what a photograph shows is scored only as choices and environments under the visual-record rules. Facial structure carries nothing, as guardrail 9 states.

**Gather the public legal and regulatory record — bounded.** Court filings, regulator actions, and licensing records are public documents, and a person's professional disputes are behavior: how someone handles being crossed is chosen evidence of the same grade as the rest of the record. Sweep the sources that are genuinely public: federal dockets (PACER, and CourtListener's free archive of it), state court portals, regulator and enforcement pages, professional licensing boards, and bankruptcy and judgment records. Four bounds keep this layer honest. **Professional scope:** matters arising from the person's work and business — litigation they brought, proceedings against their company or their professional conduct, financial filings. Family-court and purely personal matters — divorce, custody — are out of scope by default: sealed as often as not, and a private crisis is not professional behavior. **Attribution is stricter here than anywhere:** dockets collide worse than social media, so a record counts as the person's only when two independent identifiers tie it to them — a named business entity, an employer, a city plus a profession — and namesakes are excluded and logged like the platform sweep. **Outcomes outweigh allegations:** a filing is a claim someone made; a judgment, a dismissal, a settlement, a sanction is what a process found. Being sued, by itself, is context at low weight, never a character read. **Relevance gates the dossier:** a legal record enters only where it bears on the decision from Step 0 — a partner's history of suing partners matters to a partnership; it does not follow the person into unrelated rooms. And under guardrail 7, a legal record informs understanding; it is never itself a lever. One source class does not exist: credit reports and personal debt data are not public records in the United States, whatever people-search sites claim. Bankruptcy filings, judgments, and liens are the public financial record, and they are enough. What the layer adds, when it finds something, is stress behavior with dates on it — who they sued, who sued them, how it ended — filed with the record, at the weight its outcome earns.

### Step 2 — Score the dimensions

Score each dimension the evidence supports. Skip the ones it does not. The rubrics are in `references/scoring-the-dimensions.md`; the graded research behind them is in `references/the-evidence.md`.

**Performed versus chosen evidence — the separation that governs every score.** Some of what a person shows the world is the performance their role demands: the stage talks, the launch posts, the founder persona. The rest is what they choose when nobody is making them choose: the formats they build for themselves, the structures they design, the things they keep doing after the audience moves on. Trait scores come from the chosen pile. Performed evidence supports a score only at low weight, and the dossier flags any score it carried. When the two piles point opposite ways, report both and score from the chosen pile — the split is itself a finding. The full protocol, including the extraversion sub-protocol and the facet splits, is in `references/scoring-the-dimensions.md`. One discipline on the discount: it caps confidence — it does not pull a score toward the middle. When the performed and chosen piles point the same way, score the agreement at full strength. The cold field test made the opposite error: a subject's warmth was discounted because it was also his product, even though his chosen life pointed the same way, and a genuinely extraverted man was under-scored. This separation exists because its absence produced this skill's clearest field error: a founder profiled from his public record read as an extravert, because the record measured the job. He is an introvert who performs the job well.

**Personality — the Big Five, as ranges.** Openness, conscientiousness, extraversion, agreeableness, and emotional stability, each stated as a range (low, middle, high, with the spread the evidence allows), never as a point score. The Big Five is the anchor because it is the one personality map with decades of replication behind it. Language-based reads of it are real and modest: expect accuracy in the range the research shows, and say so.

**Motives — achievement, power, affiliation.** Scored from the imagery in the person's speech, the way David Winter's system scores it: achievement imagery (doing something better, meeting a standard), power imagery (moving others, having impact, gaining standing), affiliation imagery (closeness, friendship, belonging). Motives predict what a person will find satisfying, which predicts what they will choose when options are otherwise equal. Two splits are scored when the imagery shows them: power as standing versus control, and achievement as mastery versus winning — the halves take different levers.

**Thinking style — conceptual complexity.** How black-and-white is the person's thinking, scored from how they talk about opponents, trade-offs, and uncertainty. It decides how much nuance a message to them can carry: a low-complexity thinker hears a two-sided pitch as weakness; a high-complexity thinker hears a one-sided pitch as an insult. Score it by domain when the record shows it varying — nuanced on the craft, binary on the enemies is a common split.

**Leadership traits, where the material supports them.** From Margaret Hermann's set: belief in their own ability to control events, need for power, self-confidence, task focus versus relationship focus, distrust of others, in-group bias. Score only the ones the words actually show.

**Values and incentives — from the record.** What their choices say they optimize for: growth, status, money, craft, freedom, loyalty, safety. Stated values are a claim; the record is the evidence. Score values from trade-offs — what they sacrificed for what, and what they refused when refusing cost them — because a value's rank is only visible when two values collide and one wins.

**Formation — where it came from.** Score the layer underneath the traits: upbringing, family position, migration, the scarcity or abundance of the early years, and the events the person narrates as turning points. The tellings they repeat are the load-bearing ones — the story a person keeps telling about how they were made is the story their choices are organized to keep true, whether or not every fact in it would check out. Formation is where values and pressure points come from, and it explains what traits only describe. Then tag the scores the tag does work on: **temperament** (early-appearing and stable; what shows under stress), **formation** (installed by upbringing and events), or **choice** (a current strategy, which changes when incentives change). Never explain by temperament what formation explains, and never file a strategy as a trait. Predictions lean on temperament and values, most of all under stress.

**Household and life structure — the shape of the life.** Partner or single, children, who they live with, how the days and evenings are actually allocated. Life structure shapes time, money, risk, and social life, and a dossier without the line has a hole in the middle. Score it from the record like everything else. When a dense record shows no partner and no children, the absence is the finding — write it as one, with confidence — not as a gap. Mark it unknown only when the record is genuinely thin.

**Pressure points — where the person is exposed.** Every profile has two sides, and a dossier that only flatters is useless in a hard room. Score what the evidence shows: what this person fears losing (standing, control, money, a relationship, a self-image); their known fears and aversions, where the person's own words or record state them; where their ego is tender (the achievement they feel is under-credited, the comparison that stings); what they over-invest in past the point of return; their blind spots (the feedback that never reaches them, the risk they systematically underweight); and the gap between the self they present and the record — the gap is usually the strongest lever and the sorest point at once. Score pressure points like everything else: evidence, confidence, disconfirmer. A pressure point you cannot evidence is a guess about a stranger's wounds, and it does not ship.

### Step 3 — Write the dossier

Fixed format (full template in `references/dossier-format-and-example.md`). The card comes first; the long read follows on the same page or the next.

**Then run the writing pass. This step calls two sibling skills. It is a procedure, not a style reminder.** A dossier delivered in analyst register has failed this step, however good the scoring is: a dossier that reads like a form gets skimmed, and the one line that mattered gets skimmed with it.

1. **Humanizer.** Run the work-humanizer skill in rewrite mode over the whole dossier text. Facts, scores, quotes, and dates never change in the pass. What changes is the register: sentences a person would speak, no report stiffness.
2. **Plain style.** Apply the writing-styles skill's plain rules to the result: short sentences, one idea each, numbers spoken the way a person says them, bold only on the few facts that matter.
3. **Two files, two jobs.** The pass produces the reader version: the card and the long read, plain, at the shortest length that keeps every scored finding. The full scored dossier — evidence, confidence, disconfirmers — is the record version, and it stays on file under the reader version. The reader version is the deliverable. The record version ships only when the reader asks for the workings.
4. **The gate.** A dossier is not done until the pass has run on the exact text being delivered. Confidence tags and disconfirmers belong in the record version. In the reader version they are translated into plain words — a strong read, a light read, what would change it — or cut. If the reader version still reads like a form, the pass is not done. Run it again.

- **The 30-second card.** Five lines, no more: what they want most, the lever that moves them, the move that kills it, how they decide, and their tell — the visible sign of which way they are leaning. Written to be read in the car on the way in.
- **The person in their own words.** Three short quotes that carry the read better than any summary.
- **What they want.** Motives and incentives, with evidence.
- **Household and life structure.** Partner, children, living setup, and what the structure explains about their time and choices — or the absence, written as a finding.
- **Formation and values.** Where the traits and values came from, and the values ranked by what each one beat.
- **How they decide.** Complexity, speed, what counts as proof for them, who else gets a say.
- **How they talk.** Directness, length, data or story, what they repeat, what they never say.
- **Pressure points.** Where they are exposed: fears, tender spots, over-investments, blind spots, the self-image gap. Evidence and confidence, same as every other section.
- **Persuasion levers.** For each lever: the move, the dimension it answers, and how it backfires if it is detected or overused. Levers are built from true material only — the honest fact, framed and sequenced for this person.
- **What to say.** The angles, proof, and framing that fit this person.
- **What to avoid.** The framings, words, and moves this person's record says will fail or offend.
- **Situation playbooks.** A short playbook for each arena the user will actually face this person in — a cold first contact, a pitch or investor meeting, a negotiation, a social setting, a recruiting conversation, a conflict or repair moment. Each playbook: their likely posture in that arena, your opening move, the proof that lands there, and the one thing never to do in that room. Arenas differ; a move that wins a boardroom can lose a dinner. Write only the arenas in play.
- **Open questions.** What the evidence cannot answer, stated plainly instead of filled in.

### Step 4 — State predictions before contact

Write two or three specific, checkable predictions before the outreach or meeting: how they will respond, what they will push on, what will move them. Date them. A profile that never makes a prediction can never be wrong, and a profile that can never be wrong is decoration.

**A prediction must beat the obvious call.** Before a prediction enters the ledger, it states, in one line, what the base rate or the obvious call is — what an informed observer working only from the public facts would predict — and why this profile's read differs from it. If that observer would make the same call, the prediction is a restatement, not a prediction, and it does not enter the ledger. Prefer the predictions where the profile's evidence cuts against the base rate, or pins a specific outcome inside a window the base rate leaves wide open. A set of predictions any informed observer would sign proves nothing about the profile, however many of them land.

Record every prediction in a standing prediction ledger — dossier, prediction, its base-rate line, date, outcome, hit or miss — which Step 6 appends as outcomes land. The ledger is the skill's own track record: once ten predictions have been scored, a dossier's predictions section states the profiler's running record — informative hits and misses, graded as Step 6 grades them — next to the new predictions, so the reader can price the predictions by the history behind them.

### Step 5 — Apply

For outreach, the dossier feeds the writing: the angle, the proof, and the ask are matched to the profile — the person's motives choose the framing, their complexity sets the nuance, their talk style sets the length and directness. For a meeting, work from the card and the playbook for that arena: their likely posture, your opening move, the proof that lands in that room, the lever to use if the room stalls, and the move that would kill it. The long read is for the night before; the card is for the car.

Matching a message to a person is the one move in this field with a large field experiment behind it, and even that evidence comes from advertising, not one-to-one outreach. Treat matched framing as a better bet, not a guarantee.

### Step 6 — Update after contact

What the person actually did replaces what the profile predicted. Score each prediction in the ledger, correct the dimensions the outcome contradicts, and date the correction. The dossier is a living file. A profile that is never corrected by contact becomes a horoscope.

**Score informativeness, not raw accuracy.** A hit on a prediction that was the obvious call — one that slipped past Step 4's bar, or that the base rate already gave away — is recorded as "correct, no information": true, and worth nothing. It does not count toward the profiler's track record. The ledger validates a profile only on hits it earned against the base rate, and damages it only on misses where the profile actually stuck its neck out. A perfect record built on obvious calls is an empty record, and the ledger says so.

## Guardrails

1. **Every inference is a hypothesis.** It carries its evidence, its confidence, and its disconfirmer, or it does not ship.
2. **No clinical language.** No diagnoses, no disorder labels, no psychiatric verdicts on people you have never met. This is the line psychiatry itself drew after the 1964 Goldwater affair, and this skill stays on the right side of it: behavior, words, and choices only.
3. **Behavior outranks language.** When the record and the words disagree, the dossier reports the record and notes the disagreement.
4. **Public or legitimately held material only.** No pretexting, no access behind logins, no profiles built on material the person did not choose to make public or share with you. And the research is **read-only**: never follow the subject on any platform, and never send a friend or connection request to them or to anyone in their circle. A request is contact, and a follow is a signal — both alert the subject and change the record being read. A profile visible only to friends or connections is logged as private; it is never unlocked by asking.
5. **Thin evidence, thin dossier.** Missing dimensions are reported as missing. The skill never fills a page to look complete. And thin is declared only after the platform sweep in Step 1 is logged — an unswept record is an unfinished gather, not a thin one.
6. **Confidence is stated in words.** High, moderate, low — each tied to how much and how strong the evidence is. No percentages the method cannot support.
7. **Pressure points inform honest approaches, never deception.** The dossier names where a person is exposed so the approach can be designed with open eyes: which true fact to lead with, what to raise early and what to leave alone, when to give them the win and when a direct challenge will only harden them. It never fabricates a fact, manufactures a threat, impersonates trust, or leans on a genuine crisis in the person's life — grief, illness, addiction, ruin. Persuasion with true material, fitted to the person, is the craft. The moment a use needs a lie or a wound, the use is out of bounds.
8. **People change.** A dossier carries the dates of its evidence, and the rule has teeth: any score whose evidence predates a known formation event in the person's life — or falls outside the window the decision needs — is flagged stale in the header, and where the record allows, the dimension is scored pre- and post-event separately rather than averaged across the break. A profile built on five-year-old words is a profile of who the person was.
9. **No physiognomy.** No inference from facial structure, features, or body type, however the inference is dressed — human judgment or model output. Images are evidence of choices and environments only.
10. **Behavior is evidence; conditions are not.** A nightlife-centered social life, visible drinking, spending patterns — behavior, scored like any behavior. A health condition — addiction, illness, any diagnosis — is never inferred from photographs, habits, or lifestyle, and appears in a dossier only in the person's own stated words. Guardrail 2's line, applied to the lifestyle record: the photos can show the party; they cannot say what the party costs him.

## Output contract

Every run returns:

1. The decision the profile serves (Step 0).
2. The source list, by hierarchy tier, with dates. For a thin dossier, the platform sweep log from Step 1 rides in the header.
3. The dimension scores the evidence supports, each with evidence, confidence, and disconfirmer.
4. The dossier (Step 3 format): the 30-second card first, then the long read, including pressure points, persuasion levers, and the situation playbooks for the arenas in play.
5. The dated predictions (Step 4), each with its base-rate line, recorded in the prediction ledger, with the profiler's running record stated once ten predictions have been scored.
6. The gaps: dimensions not scored, questions the evidence cannot answer.

Bulleted lists in the dossier are written loose — a blank line between items — so each finding stands on its own and the page is easy to scan.

## Limits

- **Accuracy has a ceiling, and the ceiling is modest.** Personality read from words correlates with the real thing at roughly 0.3 to 0.4 in the text-based research. That is enough to choose a framing and avoid a blunder. It is not enough to know a person.
- **Prepared material misleads.** The more managed the person's public output, the weaker every language-based read gets. The hierarchy in Step 1 is the defense; there is no stronger one.
- **Public records sample badly.** They over-record conflict, novelty, and a person's worst week, and under-record routine, decency, and private life. The performed-versus-chosen separation is the partial defense; where the skew still bites — agreeableness and emotional stability most — the dossier says so and caps confidence to match.
- **Culture and context bend the signals.** Directness, self-promotion, and deference mean different things in different rooms. Scores are relative to the person's own arena, not to a universal scale.
- **The criminal-profiling version of this craft is not evidence.** The FBI's offender typologies were built on a small interview set and never documented well enough to check; the reviews found profilers barely outperforming comparison groups. This skill borrows the dossier habit from that world — write the read down before the outcome — and none of its inference habits.
- **A profile is not a person.** It is a working model for one decision, held loosely, corrected on contact.

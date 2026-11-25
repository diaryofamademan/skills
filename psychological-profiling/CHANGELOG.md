# Changelog

## 0.3.15 — 2026-11-19

- **Step 3's writing rule is now a called-in pass, not a reminder.** The 0.3.10 rule asked for plain style in one prose sentence, and it did not hold: the Ripple field dossiers (a recruiter dossier at v6 and a hiring-manager dossier) shipped in analyst register — scores, confidence tags, and disconfirmers on every line — and the reader rejected them as legalese he could not use. Step 3 now names the procedure: run the work-humanizer skill in rewrite mode over the whole dossier (facts, scores, quotes, and dates never change), then apply the writing-styles skill's plain rules. The pass produces two files with two jobs — a plain reader version, which is the deliverable, and the full scored dossier as the record version under it. A gate closes the step: a dossier is not done until the pass has run on the exact text being delivered, and analyst labels in the reader version are translated into plain words or cut. Field origin: the owner's correction of 2026-11-19 — the writing skills exist to be called in by the skills that need them, not remembered afterward by the agent who ran them.

## 0.3.14 — 2026-11-18

- **Predictions must beat the obvious call, at writing and at scoring.** Step 4 now sets a non-obviousness bar: before a prediction enters the ledger, it states, in one line, what the base rate or the obvious call is and why the profile's read differs from it. A call an informed observer would make from the public facts alone is a restatement, not a prediction, and it stays out of the ledger; the predictions worth recording are the ones where the profile's evidence cuts against the base rate, or pins a specific outcome inside a window the base rate leaves wide open. Step 6 grades the other end: a hit on a prediction that was the obvious call scores as "correct, no information" and does not count toward the profiler's track record. The ledger grades informativeness, not raw accuracy — a profile is validated only by hits it earned against the base rate, and damaged only by misses on calls it actually stuck its neck out on. Field origin: review of the first field test's prediction set judged the predictions too obvious — each one restated what the base rate and the public facts already gave any informed observer, so landing them a year later would have proved nothing about the profile.

## 0.3.13 — 2026-11-17

- **Loose bullets in the output contract.** Dossiers now write bulleted lists with a blank line between items, so each finding stands on its own. The owner's standing formatting rule (2026-11-17) applies to all skills and the artifacts they generate; it is also recorded in the writing-styles skill, and due-diligence carries the same line in its v0.2.2.

## 0.3.12 — 2026-11-17

- **The sweep now has a route order: connected accounts first, browser second.** Step 1 directs the gather to check the user's connected-account routes (the Facebook and Instagram connectors and their equivalents) before sending a browser to a platform: the connector answers in minutes, returns structured data, and its limits are findings — a friends-only profile is a result, logged as private. The browser goes when no connector covers the platform, when it is not connected, or when a specific public surface remains untested (what a profile page shows a non-friend viewer). The route that answered each platform is logged in the sweep. Field origin: the recruiter test burned hours on two browser sweeps that failed on tab navigation; the connector routes then resolved Facebook and Instagram in about a minute each, and the one question they could not answer — her page's public surface — was correctly identified as a browser question.

## 0.3.11 — 2026-11-17

- **Research is read-only, stated as a rule.** Guardrail 4 now says it outright: never follow the subject on any platform, never send a friend or connection request to them or their circle. A request is contact, a follow is a signal, and both change the record being read. A friends-only profile is logged as private, never unlocked by asking. Set by the owner during the recruiter field test; the matching line was added to due-diligence's no-contact guardrail the same day (its v0.2.1).

## 0.3.10 — 2026-11-17

- **The dossier now carries the same writing rule as its sibling skill.** Step 3 requires plain style for the card and the long read — written the way you would say it out loud, no report stiffness. Scores, quotes, and dates stay exact; the prose stays human. Added the same day due-diligence gained the rule, after its first field-test sheet landed robotic.

## 0.3.9 — 2026-11-17

- **A bounded public legal and regulatory layer joins the gather.** Step 1 now sweeps genuinely public legal sources — federal dockets, state court portals, regulator and licensing-board actions, bankruptcy and judgment records — for matters in the person's professional and business capacity, where dispute behavior is real evidence. Four bounds are wired in: professional scope (family-court and purely personal matters out by default); stricter attribution (two independent identifiers before a docket counts as theirs, namesakes logged); outcomes outweigh allegations (being sued is low-weight context, never a character read); and a relevance gate (a record enters the dossier only where it bears on the decision, and is never itself a lever). The layer also states what does not exist: credit reports and personal debt data are not public records, and people-search claims about them are not evidence. The evidence file grades the layer: strong as documents, judgment as evidence.

## 0.3.8 — 2026-11-17

- **The sweep pivots on images as well as names.** The subject's profile photograph is run through a reverse image search as part of the Step 1 sweep: the same headshot on two accounts is the subject's own claim that both are theirs, and stronger attribution than a shared username. Two limits are wired in with the method — a match proves the photograph traveled, so a matched account still needs a second, independent tie before its material scores as the person's own; and the image is a pivot, never evidence, its content read only under the visual-record rules. The evidence file gains a short grading entry: strong as mechanics, judgment as tradecraft.

## 0.3.7 — 2026-11-17

- **A thin dossier must be earned by a platform sweep.** Before a dossier may call itself thin, the profiler visits the platforms directly — the person's own site or employer page, LinkedIn, Facebook, X, Instagram, and any platform their field lives on — under the name and under handle variants, and logs each result: material found, private or empty, not found, or namesake excluded with the separating fact. Search-result snippets do not count as a sweep. The log rides in the thin dossier's header, and an incomplete sweep is declared there with its reason. Earned by a field miss: a recruiter profiled ahead of a live interview was reported near-recordless after a name search surfaced only her namesakes — her LinkedIn and a public Facebook profile were one direct visit away. Wired into Step 1, guardrail 5, and the output contract.

## 0.3.6 — 2026-11-17

Four splits, named after a full audit of what the averaged scores still hide. Each was visible in a field test before it was named here:

- **Emotional stability gains a third facet: worry.** Endurance (functioning under sustained pressure) and volatility (the size of the spike) describe events; worry is the steady background anxiety between them. The cold-test subject scored high endurance and low volatility and — per the grader's ground truth — anxious underneath, managing it through control. Three facets, scored separately.
- **Power splits into standing and control.** Being seen to matter versus steering what happens, whether or not anyone watches. The halves hear different pitches: visibility against who decides.
- **Achievement splits into mastery and winning.** Beating a standard versus beating the field — "is it excellent" against "does it beat them."
- **Conceptual complexity is scored by domain** when the record shows it varying: nuanced on the craft, binary on the enemies is a common and decision-relevant split.

## 0.3.5 — 2026-11-17

Two additions from the cold test's second round of ground truth. The grader disputed the dossier's high agreeableness: the subject holds strong opinions and voices them, publicly and without shyness. Both reads were true, because the trait splits:

- **Agreeableness is scored in facets — compassion and deference.** Compassion (care for people's welfare, generosity with time and help) and deference (softening opinions, yielding the floor, keeping the peace) routinely diverge; the cold-test subject scored high on the first and low on the second, and the averaged score described neither. The split is named in the scoring reference beside the extraversion facets added in 0.3.4.
- **Pressure points gain a known fears and aversions line.** Specific fears the subject's own words or record state — heights, flying, hospitals — never inferred from type or guesswork. They earn the line practically: they change real choices in a playbook, from the venue to the activity to the travel plan.

## 0.3.4 — 2026-11-17

Rebuilt on the cold stranger test. The profiler worked from public information only, on a subject it had never encountered; the grader turned out to know the subject personally, so the dossier was scored against ground truth no public record carries. The core read held — formation, values, motives, pressure points drew no corrections. The misses were specific, and each one is a rule now:

- **Household and life structure is a scored section of every dossier.** Partner, children, living setup, and how time outside work is spent — scored from the record, written as a finding when a dense record shows the absence, marked unknown only when the record is genuinely thin. The cold-test dossier filed the subject's household under gaps; the absence was the information.
- **Extraversion is scored in facets — sociability, assertiveness, energy — and facets may split by context.** A dominant-in-groups, shy-in-courtship subject is two scores, not an average.
- **The performed-versus-chosen discount caps confidence; it does not move the score.** When both piles agree, the agreement is scored at full strength. The cold test discounted a subject's warmth because it was also his product, against a chosen pile pointing the same way, and under-scored a genuinely extraverted man.
- **The personal feed is required sampling in the visual gather.** The cold test read the subject's business website and never sampled his personal social accounts, and underweighted the party-centered social life that organized his evenings.
- **Guardrail 10: behavior is evidence; conditions are not.** A nightlife-centered social life is scorable behavior. A health condition is never inferred from photographs, habits, or lifestyle, and appears only in the subject's own stated words. The evidence file grades health inference from lifestyle imagery: no validated method.

Four standing improvements ship in the same version:

- **A prediction ledger.** Every dossier's predictions are recorded in a standing ledger — dossier, prediction, date, outcome, hit or miss — and once ten predictions are scored, dossiers state the profiler's running record beside the new predictions.
- **A base-rate check in scoring.** Before a score is called a finding, the scorer names its reference class; a score that matches its class is background, not signal.
- **Operating documents are named in the evidence ladder** — the playbooks and working documents a person writes to run their own operation, weighted with chosen evidence, above interviews.
- **The decay rule gains teeth.** Scores whose evidence predates a known formation event, or falls outside the window the decision needs, are flagged stale in the dossier header, and scored pre- and post-event separately where the record allows.

## 0.3.3 — 2026-11-17

- **Formation and values join Step 2 as a scored layer.** Formation — upbringing, family position, migration, early scarcity or abundance, and the turning points the subject narrates, with the repeated self-narrative scored as the mechanism — is gathered and scored under the traits, because it is where values and pressure points come from. Values are scored from trade-offs only, on Schwartz's map: a value's rank is what it beat when two values collided, and a value that never cost anything stays marked claimed.
- **Every score the tag does work on is tagged temperament, formation, or choice.** Two discipline rules ship with the tags: never explain by temperament what formation explains, and never file a strategy as a trait. Predictions lean on temperament and values, most of all under stress. The evidence file grades the layer: twin-study heritability of roughly 40 to 60 percent with shared-environment effects on adult traits near zero (which is why formation is scored separately from traits), the maturity principle, narrative identity, and Schwartz's cross-cultural value research. The dossier format gains a Formation and values section.

## 0.3.2 — 2026-11-17

- **The visual record joins the gather step.** Photographs and video are gathered and scored as choices, never as anatomy: the environment a person shows (rooms, desks, backgrounds — the Gosling line of research, graded moderate in the evidence file), their self-presentation (graded modest), and their on-camera behavior in self-chosen formats. Filed performed or chosen like all other evidence.
- **Physiognomy is excluded by name.** A new guardrail bars any inference from facial structure, features, or body type, by human or model. The evidence file grades the modern versions: facial width-to-height ratio (weak — small meta-analytic effects, failed large replications), criminality-from-faces (unreviewed, confounded), and AI face inference (contested — its demonstrated signal in natural photographs is self-presentation, which the skill already reads legitimately as behavior).

## 0.3.1 — 2026-11-17

- **Step 1 gains handle resolution.** The gather step now resolves the subject's names and handles across platforms to find the unscripted corners — forums, old blogs, comment histories — where chosen-format evidence lives, using the curated OSINT collections (awesome-osint and its topic collections) as the map. Username engines (Sherlock, Maigret) are named as optional automation when already installed; the skill installs nothing. A handle match is an attribution hypothesis, not identity proof, and material under a matched handle is treated as second-hand until tied to the person.
- No scoring changes. For a subject with a saturated public record this adds nothing; its value is for ordinary subjects, whose diagnostic material is scattered rather than published.

## 0.3.0 — 2026-11-17

Rebuilt on the second field test. Test 2 profiled the same subject from public information only, and its extraversion read was wrong: the dossier scored the founder persona — stages, livestreams, a world tour — as the trait. The subject's correction: he is an introvert who performs the role. The error was in the scoring, not the sources; the same public record, re-scored under the new rule, flips the read.

- **Performed versus chosen evidence** now governs every score. Trait scores are carried by what the person chooses when the format is theirs; performed evidence is capped and flagged; splits between the piles are reported instead of averaged; absence counts as evidence in a dense record.
- **The extraversion sub-protocol**: self-description, chosen formats, built structure, absence — in that order, and never audience size.
- **Facet splits** named where they routinely occur: design versus upkeep (conscientiousness), ideas versus experience (openness), endurance versus volatility (emotional stability).
- **Two rubric repairs.** Emotional stability is scored from duration and recovery rather than the worst episode, which measures volatility instead. Agreeableness from public material is capped at low confidence, because public records over-sample conflict.
- Motives take the same separation: standing that is spent is instrumental, and affiliation with no chosen evidence behind it is reported as unmeasured.

## 0.2.0 — 2026-11-16

Rebuilt on the first field test. The subject of Test 1 (the skill's author, profiled from his own corpus) judged the v0.1.0 dossier accurate but too basic and too positive: it read like dinner advice, with no exposed side and no situation-specific handling. Four additions, now required parts of every dossier:

- **The 30-second card** at the top of every dossier: five lines — what they want most, the lever that moves them, the move that kills it, how they decide, their tell — compressed from the scored evidence, for the person who has thirty seconds in the car.
- **Pressure points** as a scored dimension: what the person fears losing, tender spots, over-investments, blind spots, and the gap between the presented self and the record — each with evidence, confidence, and disconfirmer, same as every other dimension.
- **Persuasion levers**: each lever stated as the move, the dimension it answers, and how it backfires if detected or overused.
- **Situation playbooks**: a short playbook per arena in play (cold contact, pitch or investor meeting, negotiation, social setting, recruiting, conflict or repair), because a move that wins a boardroom can lose a dinner.

Guardrail 7 rewritten to match: pressure points inform honest approaches — true material, framed and sequenced for the person — and never deception, manufactured threats, or a genuine crisis in the person's life.

## 0.1.0 — 2026-11-16

First build. Named psychological-profiling: the name states the job in plain words. The skill builds an evidence-graded profile of a person before outreach, a meeting, or a negotiation; it never diagnoses, and it never profiles from material that is not public or legitimately held.

The seven-step procedure (name the job, gather by the source hierarchy, score the dimensions, write the dossier, state predictions, apply, update after contact) was built from the published at-a-distance tradition: Jerrold Post's CIA profiling center and its published methods volume, Margaret Hermann's Leadership Trait Analysis, David Winter's motive scoring, and Peter Suedfeld's integrative complexity scoring — anchored on the Big Five, with MBTI kept only as communication vocabulary and unvalidated type systems excluded. Every inference carries its evidence, a confidence level, and its disconfirmer. The FBI criminal-profiling tradition is graded in the evidence file and used only for its one sound habit: write the read down before the outcome, so it can be scored.

# Mechanisms and Auctions

Part of `game-theory-for-decisions`, version 1.0.0.

Use this reference when you can design the rules of interaction. Examples include procurement, bidding, internal resource allocation, marketplace ranking, matching, incentive plans, and structured partner selection.

**Mechanism design** reverses the usual question. Normal game analysis asks what players will do under given rules. Mechanism design asks which rules will lead self-interested players toward the desired outcome.

An auction is one mechanism. It allocates an item, contract, right, or package through bids. Good design does more than seek a high or low price. It must attract suitable participants, reveal useful information, deter manipulation, and produce an outcome that can be performed.

## Define the design goal first

Write the goal in operational terms. A goal may include:

- Allocate to the participant who can create the most value.
- Buy at a sustainable total cost, not only the lowest bid.
- Protect quality, safety, delivery, or public value.
- Encourage truthful reporting.
- Broaden access for qualified participants.
- Reduce delay, disputes, and administrative cost.
- Preserve competition in later rounds.
- Limit corruption, favoritism, and information leakage.

Goals can conflict. A format that extracts the last unit of price may drive away strong suppliers. A complex scoring model may value quality but invite disputes. Rank the goals before choosing rules.

Record constraints as well. Budget, law, procurement policy, timing, data access, and contract enforcement limit the feasible design. Label facts about participants as `observed`, `declared`, `inferred`, or `unknown`. Label values and costs as `measured`, `declared`, `inferred`, or `unknown`.

## The mechanism canvas

Complete this canvas before selecting a format.

| Design item | Decision required |
| --- | --- |
| Participants | Who may enter, and who must be invited? |
| Qualification | What must be proven before bidding or selection? |
| Private information | What does each participant know that the designer does not? |
| Messages or bids | What may each participant submit? |
| Allocation rule | Who receives what, under which result? |
| Payment or consequence | Who pays, receives, or bears which obligation? |
| Information released | What is shown before, during, and after each round? |
| Timing | When do parties enter, bid, revise, and commit? |
| Safeguards | What prevents collusion, leakage, and manipulation? |
| Performance | How will quality and delivery be verified after selection? |
| Appeal and audit | How are errors, conflicts, and challenges handled? |
| Exit | What happens if too few parties participate or all bids fail? |

If the canvas cannot be completed, the design is not ready. Use a simpler process or gather the missing facts.

## Five concepts that govern design

### Incentive compatibility

A mechanism is **incentive compatible** when a participant's best move is to report the required information honestly or take the intended action. In plain language, the rules should not reward lying about value, cost, capacity, or need.

Perfect incentive compatibility is rare in practical settings. State the main profitable lie. Then decide whether qualification, verification, penalties, or a different format can reduce it.

### Participation

A participant must expect the process to be worth its cost. Economists call this the participation constraint. If entry is costly and the chance of success is unclear, strong participants may stay out. A theoretically sharp mechanism with weak entry can perform worse than a simpler mechanism with a deep field.

### Information revelation

Bids and choices can reveal private values, costs, and priorities. More revelation is not always better. Revealing identities or bids during a process can enable retaliation or coordination. Revealing too little can increase uncertainty and the winner's curse.

### Winner's curse

The **winner's curse** occurs when bidders estimate a common value, such as resale value or project cost. The highest bidder is often the one who estimated most optimistically. That bidder can win by overestimating and then lose money or fail to perform.

Reduce the curse with better shared data, site access, clear scope, qualification, staged commitments, and formats that reveal relevant information during bidding. Do not solve it by encouraging bidders to guess blindly.

### Enforcement

A selected bid is not an outcome. It is a promise. The contract, monitoring, remedies, and relationship govern performance. Paul Milgrom's work on spectrum auctions is useful because it joins theory to implementation detail: eligibility, activity, package structure, withdrawal rules, and practical constraints all shape bidding.

## Compare common auction formats

Use this table as a first screen, not a universal ranking.

| Format | How it works | Often useful when | Main risks |
| --- | --- | --- | --- |
| English ascending | Bidders raise prices openly until one remains. | Values are linked and price discovery helps. | Collusion signals, retaliation, slow process, bidder fatigue. |
| Dutch descending | Price falls until a bidder accepts. | Speed matters and items are standardized. | Limited discovery and strong pressure to act early. |
| First-price sealed bid | Each bidder submits one bid. The winner pays its own bid. | Privacy and a simple one-round process matter. | Bid shading, uncertainty, and less price discovery. |
| Second-price sealed bid | The highest bidder wins and pays the second-highest bid. | Truthful value bidding is the goal in a simple private-value setting. | Fraud, sham bids, seller trust, budget and collusion concerns. |
| Simultaneous multiple-round | Related items stay open across rounds under activity rules. | Items are complements or substitutes and values are interdependent. | Complexity, gaming, and high administration cost. |
| Scoring auction | Bids combine price and rated quality terms. | Quality can be defined and assessed in advance. | Subjective scoring, gaming of weights, and disputes. |

**Bid shading** means bidding below one's full value to keep some surplus. It is normal in a first-price auction. Do not label ordinary shading as dishonesty.

Stanford's advanced game-theory material groups mechanism design with social choice and auctions. That grouping matters. A design must aggregate preferences or bids, but it must also produce a result participants accept as governed by the stated rules.

## Design procedure

### 1. State the allocation problem

Name the scarce item or decision. State who wants it, why values differ, and what a bad allocation costs.

### 2. Set qualification before price competition

Remove parties that cannot meet safety, legal, capacity, or technical minimums. Do not let a low price compensate for a disqualifying weakness unless the stated goal allows that trade.

### 3. Choose what information to share

Provide the same core information to all qualified participants. Log questions and answers. Decide whether identities, bid counts, current prices, and rankings will be visible. Give a reason for each choice.

### 4. Choose the message space

A message may be a price, a package bid, a delivery plan, a quality proposal, or a menu choice. A narrow space is easier to administer. A rich space can reveal more value but may be harder to compare.

### 5. Publish the allocation and payment rules

Participants should know how a winner is selected, what the winner must pay or deliver, when the result becomes binding, and what happens after a tie or failed bid. Hidden criteria destroy trust and invite challenge.

### 6. Test profitable deviations

For each participant type, ask:

- Can they gain by misstating value, cost, or capacity?
- Can they gain by waiting, splitting, merging, or using another entity?
- Can they signal to coordinate with rivals?
- Can they win and then renegotiate from strength?
- Can they lose on purpose to gain in a linked game?
- Can an insider gain by leaking information?

Use [`game-mapping.md`](game-mapping.md) to map linked games and [`repeated-games-and-cooperation.md`](repeated-games-and-cooperation.md) when the same parties will compete again.

### 7. Add proportionate safeguards

Possible safeguards include sealed submissions, identity controls, bid bonds, activity rules, audit trails, conflict declarations, package rules, reserve terms, and independent review. Each safeguard has a cost. Add it to stop a named risk, not to make the process look rigorous.

### 8. Design performance after selection

Set milestones, reporting, acceptance tests, cure periods, and remedies. A mechanism that selects aggressively and enforces weakly invites low bids followed by delay, quality cuts, or renegotiation.

### 9. Pilot and review

Run a tabletop simulation with plausible bidder types. Include a cautious bidder, an aggressive bidder, a bidder with poor information, and a bidder who searches for loopholes. Review where each one gains or drops out. Revise the rules before real value is at stake.

## Small generic example

A company needs a managed support provider. Quality matters, but quality is hard to judge from proposals. The lowest bid may reflect low cost or a misunderstanding of scope.

The company uses a two-stage process. Stage one qualifies providers on staffing, security, references, and capacity. Only qualified providers enter stage two. All receive the same service data and question log.

Stage two uses disclosed scoring: total three-year cost, measured pilot performance, transition plan, and service levels. Price matters, but it does not erase a failed pilot. The selected provider signs staged terms with reporting, service credits, and a termination right for repeated failure.

This design does not guarantee the best provider. It reduces adverse selection, gives bidders useful information, tests performance, and aligns payment with delivery. It also avoids pretending that one low number measures the whole payoff.

## Decision checklist

- [ ] The allocation goal and goal ranking are written.
- [ ] Legal, budget, safety, and timing constraints are named.
- [ ] Qualification occurs before price can dominate.
- [ ] Participant information and payoff claims carry labels.
- [ ] The canvas covers entry, bids, allocation, payment, information, timing, safeguards, enforcement, audit, and exit.
- [ ] The main profitable lie is named.
- [ ] Participation costs are low enough to attract a strong field.
- [ ] Winner's-curse risks are addressed with information or staging.
- [ ] Profitable deviations and loopholes are tested.
- [ ] Performance after selection is enforceable.
- [ ] The process has been simulated with several bidder types.
- [ ] No insider receives an undisclosed advantage.

## Ethical and legal limits

Never design or advise bid rigging, sham bidding, collusive rotation, market allocation, suppression of competitors, bribery, insider leakage, or discriminatory hidden criteria. Do not use a reserve, scoring rule, or information release to mislead participants about a material fact. Public procurement, regulated utilities, health, finance, and government contracts may impose strict rules. Obtain legal and procurement review before launch.

A fair process is not just an ethical duty. It protects entry, information quality, and the legitimacy of the result.

## Sources

- Matthew O. Jackson, Kevin Leyton-Brown, and Yoav Shoham, Stanford *Game Theory II: Advanced Applications*, for social choice, mechanism design, and auctions.
- Paul Milgrom, *Putting Auction Theory to Work* (Cambridge University Press, 2004), for auction design under practical constraints.
- Kevin Leyton-Brown and Yoav Shoham, *Essentials of Game Theory* (Morgan & Claypool, 2008), for concise formal checks.

See [`sources-and-urls.md`](sources-and-urls.md) for the full source table. Use [`changing-the-game.md`](changing-the-game.md) when the design task is broader than a formal mechanism.

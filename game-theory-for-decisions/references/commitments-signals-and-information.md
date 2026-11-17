# Commitments, Signals, and Information

Part of `game-theory-for-decisions`, version 1.0.0.

Use this reference when a decision turns on a promise, a warning, a claim, or missing information. It is most useful during Steps 4, 5, and 7 of the main procedure. Use [`game-mapping.md`](game-mapping.md) first if the players, options, or payoffs are not yet clear.

The central question is simple. What does each player know, what can each player prove, and which future actions are truly locked in?

## Four terms in plain language

A **commitment** is a present move that limits a future choice. It can make a promise or warning believable.

A **signal** is an action that gives another player evidence about a hidden trait, plan, or value. A claim is not automatically a signal.

**Screening** means offering choices that lead different types of players to reveal useful information through the option they select.

A **Bayesian game** is a game with incomplete information. Each player has a type. A type is the hidden fact that changes what that player wants or can do. Each player also holds beliefs about the other players' likely types. Harsanyi's contribution was to make those beliefs part of the model instead of treating uncertainty as a reason to stop.

## Start with an information map

Do not start with a clever message. Start with what is known.

| Item | Record it this way |
| --- | --- |
| Hidden fact | Name one fact, not a broad suspicion. |
| Owner | Name the player who knows it or controls the record. |
| Why it matters | Name the decision it could change. |
| Current evidence | Use one label: `observed`, `declared`, `inferred`, or `unknown`. |
| Belief range | State likely types and what each type would do. |
| Test | Name the document, trial, reference, or choice that could improve the evidence. |
| Cost of being wrong | Name the loss if the belief is false. |

Label payoff claims separately. Use `measured`, `declared`, `inferred`, or `unknown` for payoff provenance. A seller may declare a delivery date. That does not make the date measured. A past invoice may measure a past price. It does not prove the future price.

### Evidence discipline

- `observed` means the team saw the act, record, or result directly.
- `declared` means a player stated it. The statement is evidence of the claim, not proof of the fact.
- `inferred` means the team derived it from other evidence. State the chain.
- `unknown` means the record does not settle it. Keep it visible.

Never convert an inference into a personality claim. “The supplier missed two dates” is observed. “The supplier does not care” is an unsupported motive claim.

## Test commitments before relying on them

Thomas Schelling showed why limiting your own options can change another player's choice. A commitment works because the other player expects your future move to be constrained. Words alone rarely create that constraint.

Run six tests.

1. **Visibility.** Can the other player see the commitment before choosing?
2. **Clarity.** Can the other player state exactly what will happen and when?
3. **Cost.** Would breaking it impose a real financial, legal, operational, or reputational cost?
4. **Control.** Has the decision been delegated, automated, contracted, or otherwise placed outside easy reversal?
5. **Execution incentive.** At execution time, would carrying it out still serve the committed player's interests, or has the commitment changed those interests?
6. **Authority and legality.** Can the person making it bind the player, and is it lawful and ethical to carry out?

A commitment that fails visibility cannot guide the other side. A commitment that fails execution incentive is a bluff. A commitment that fails authority may be only one employee's opinion.

### Commitments can help or trap

A public launch date can coordinate a team and reassure a partner. It can also force a bad launch. A contract deposit can prove seriousness. It can also remove a needed exit. Ask what new risk the commitment creates.

Use the smallest commitment that changes the decision. Prefer a paid pilot, a dated deliverable, a termination clause, or a staged investment over an irreversible pledge. Record the release condition before making the commitment.

## Test promises and warnings

A **promise** tries to make cooperation attractive. A **warning** states a consequence that will follow from an action. In normal decision work, do not design threats that use harm, humiliation, or unlawful pressure. State lawful consequences plainly instead.

For either statement, ask:

- What exact action triggers it?
- Who owns the response?
- When will the response occur?
- What will it cost the responder?
- What will it cost the responder not to act?
- Has the responder carried out similar responses before?
- Can the promise or consequence be verified?
- Does repetition make it more or less believable?

Past conduct is useful evidence, but it is not proof. A player may have acted when the stakes were small. The same player may reverse when the stakes rise.

## Judge signals by separation

A signal has value when one type can send it more easily, more cheaply, or more credibly than another type. Economists call this separation. In plain terms, the action sorts likely types.

Examples of stronger signals include:

- A supplier funds a demanding pilot and accepts clear acceptance tests.
- A buyer pays a real deposit under a written agreement.
- A candidate completes a relevant work sample under the same rules for all candidates.
- A partner shares verifiable operating data through an agreed process.
- A firm offers a warranty that would be expensive if its quality claims were false.

Weak signals include adjectives, confidence, polished slides, and claims that every type can copy at low cost. “Cheap talk” means a message with no direct cost. Cheap talk can still coordinate expectations or clarify a proposal. It should not settle a costly factual dispute by itself.

### The five-part signal check

For each proposed signal, record:

1. The hidden trait it should reveal.
2. Why a strong type can send it.
3. Why a weak type would find it hard or costly to copy.
4. How the receiver will verify it.
5. What decision will change for each result.

If no decision changes, the signal is theatre. Do not pay for theatre.

## Use screening when asking will not work

Direct questions invite polished answers. Screening uses a menu of lawful, transparent choices.

A buyer can offer a short paid trial or a longer contract with a lower unit price. A client that expects a long relationship may choose the second option. A client with a short need may choose the first. The choice gives evidence. It does not prove intent.

A service firm can offer a fixed-scope diagnostic or a broader engagement. The client's choice can reveal urgency, internal capacity, and tolerance for process. Do not hide material terms to trap the client. A menu built on deception damages the repeated game and may break the law.

Screening works best when:

- Each option is genuinely available.
- Each option is useful to at least one plausible type.
- The choice imposes different costs or benefits by type.
- The team decides in advance how each choice will update its belief.

## Watch two information failures

**Adverse selection** happens before a deal. One side knows a hidden trait that makes the deal worse for the other side. Examples include hidden defects, weak capacity, or a poor fit that the seller already knows. Pilots, audits, references, warranties, and staged commitments reduce the risk.

**Moral hazard** happens after a deal. One side can change its effort or conduct because the other side cannot observe it well. Examples include weaker service after prepayment or risky behavior after a guarantee. Milestones, reporting, access rights, service levels, and payment tied to verified results reduce the risk.

Use [`mechanisms-and-auctions.md`](mechanisms-and-auctions.md) when the problem requires new rules, not just better reading of the current rules.

## Small generic example

A company must choose a support provider for a one-year contract.

Provider A offers the lowest price. Its sales lead declares that response times will be excellent. The evidence label is `declared`. Its payoff claim is also `declared`.

Provider B charges more. It provides audited response data from a comparable contract. That evidence is `observed` by the buyer from the report, and the past response payoff is `measured` for that contract. The future result remains `inferred`, not certain.

The buyer offers both providers the same paid four-week pilot. The pilot has published acceptance tests and a clear end date. Provider B accepts. Provider A asks for a full-year signature before any test. The choices do not prove quality. They do update the buyer's belief. Provider B has accepted a costly and verifiable signal. Provider A has protected itself from the test.

The buyer can now choose a staged contract with Provider B, add service credits, and keep a termination right after the first quarter. The commitment is real but limited. The buyer does not accuse Provider A of poor quality. The record only supports a weaker evidence position.

## Decision checklist

Before acting on a commitment, signal, or hidden-information claim, confirm:

- [ ] The hidden fact is named.
- [ ] Each belief has an evidence label.
- [ ] Each payoff has a provenance label.
- [ ] At least two plausible player types are considered.
- [ ] Each type's likely action is stated.
- [ ] The commitment passes visibility, clarity, cost, control, execution, authority, and legality tests.
- [ ] Each signal separates types or is marked as cheap talk.
- [ ] The verification method is named.
- [ ] A screening option is considered when direct claims are weak.
- [ ] Adverse selection and moral hazard are checked separately.
- [ ] The team states what evidence would change the decision.
- [ ] No private reservation value or process standing is disclosed without approval.

## Ethical and legal limits

Do not use this reference to design deception, fake competing offers, false deadlines, forged evidence, coercive threats, blackmail, retaliation, or collusive signaling. Do not hide information that a contract, regulation, or fiduciary duty requires you to disclose. Do not use a signal or screen to discriminate unlawfully. Get legal review for regulated claims, employment screens, public contracts, and material commitments.

A truthful signal can be strong. A false signal can destroy the relationship and create legal exposure. When in doubt, use a verifiable test and a smaller commitment.

## Sources

- Thomas C. Schelling, *The Strategy of Conflict* (Harvard University Press, 1960), for commitments, focal points, and strategic moves.
- Thomas C. Schelling, *Arms and Influence* (Yale University Press, 1966), used only for lawful bargaining concepts and credibility analysis.
- John C. Harsanyi, “Games with Incomplete Information Played by ‘Bayesian’ Players,” Parts I–III (1967–1968), for types and beliefs.
- Robert Gibbons, *Game Theory for Applied Economists* (Princeton University Press, 1992), for signaling, screening, adverse selection, and moral hazard checks.

See [`sources-and-urls.md`](sources-and-urls.md) for the full source table. Avoid the failure modes in [`anti-patterns.md`](anti-patterns.md), especially fake precision and non-credible threats.

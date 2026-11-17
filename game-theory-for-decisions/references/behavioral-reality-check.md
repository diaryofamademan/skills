# Behavioral Reality Check

Part of `game-theory-for-decisions`, version 1.0.0.

Use this reference after a game has been mapped and solved. A formal solution shows what follows from the stated players, payoffs, information, and rationality assumptions. It does not prove that real people will act that way.

Colin Camerer's behavioral game theory joins experiments, psychology, and formal models. Its practical value is correction. It shows where ordinary people use fewer reasoning steps, care about fairness, reciprocate, learn unevenly, or respond to the way a choice is framed.

The goal is not to call people irrational. The goal is to build a model that survives contact with the people in the game.

## The standard failure

A model often assumes that every player:

- Knows the game.
- Understands every option.
- Calculates several moves ahead.
- Cares only about the stated payoff.
- Believes the other players will calculate in the same way.
- Acts the same way under pressure as on paper.

Each assumption can fail. A recommendation that needs all six to hold is fragile. Mark it as fragile.

## Check reasoning depth

People differ in how many steps of strategic reasoning they use. A **level-0** player chooses without modeling the other side. A **level-1** player best responds to level-0 behavior. A **level-2** player best responds to level-1 behavior. Higher levels continue the chain.

Most people do not reason to unlimited depth. Experience, time, incentives, and feedback raise depth. Novel rules, fatigue, and complexity lower it.

Ask:

- Has this player played this game before?
- Does the player understand the scoring or payoff rule?
- How much time does the player have?
- What behavior would a one-step thinker choose?
- What behavior would a two-step thinker choose?
- Does the recommendation still work if the other side is one level lower than expected?

Do not use reasoning depth as an intelligence insult. It is a situational estimate. Label it `inferred` unless a test or record measures it.

## Check social payoffs

Money and formal output are not the only payoffs. People may also value fairness, status, autonomy, identity, loyalty, revenge, or approval. These values can change the best response.

### Fairness and reciprocity

In ultimatum experiments, a proposer divides a sum and a responder can accept or reject. Rejection leaves both with nothing. A purely money-focused model predicts acceptance of any positive amount. Many responders reject very unequal offers. Many proposers therefore offer more than the minimum.

The lesson is not that every negotiation follows the experiment. The lesson is that a visibly unfair split can carry a rejection payoff that the money table omitted.

### Trust and repair

A player may cooperate to build trust or punish a breach to protect self-respect. A small monetary loss can have a large symbolic value. Ask what the move communicates inside the relationship.

### Loss, risk, and framing

People often react more strongly to a loss than to an equal gain. They may treat a discount removed as worse than a bonus never offered, even when final prices match. Defaults and labels can change uptake without changing the formal option set.

Name the frame. Then test whether the recommendation depends on wording rather than substance. If it does, slow down and review the ethics and durability of the move.

## Check learning and adaptation

Players learn from outcomes, but they do not all learn the same lesson. A player may copy a winning action, avoid a painful action, copy a visible peer, or overreact to the latest round.

Record:

- What feedback will each player receive?
- How fast will feedback arrive?
- Will the player see the full result or only their own result?
- Could one vivid success outweigh a long average record?
- Will rivals copy the move?
- Will the other side adapt before the user gains the expected benefit?

In repeated settings, pair this file with [`repeated-games-and-cooperation.md`](repeated-games-and-cooperation.md). Learning can support cooperation. It can also lock in retaliation, gaming, or a bad norm.

## Check beliefs, not just facts

Two players can see the same record and form different beliefs. One may see a delay as a capacity problem. Another may see it as disrespect. Their next moves will follow their beliefs.

Use these labels for every material belief:

- `observed` — the act or record was directly seen.
- `declared` — a player stated the belief or fact.
- `inferred` — the team derived it from other evidence.
- `unknown` — the record does not settle it.

Label payoff provenance separately:

- `measured` — a source measured the payoff or a close past analogue.
- `declared` — a player stated the payoff or preference.
- `inferred` — the team derived it from choices or other evidence.
- `unknown` — no adequate source exists.

A confident tone is not evidence. A senior title is not evidence. A repeated assertion is still `declared` unless a record makes it `observed` or `measured`.

## Run four scenarios

Do not replace one fragile prediction with one behavioral guess. Compare four cases.

| Scenario | Assumption | Use |
| --- | --- | --- |
| Formal | Players understand the model and maximize stated payoffs. | Shows the benchmark solution. |
| Bounded | Players use one or two reasoning steps and miss some effects. | Tests robustness to limited calculation. |
| Social | Fairness, identity, reciprocity, or status materially affect payoffs. | Tests relationship and reputation risks. |
| Mistaken | At least one player misunderstands a rule, fact, or intention. | Tests clarification, records, and repair paths. |

For each scenario, state the likely move, the user's result, and the first warning sign. Then classify the recommendation:

- **Robust:** It performs acceptably in all plausible scenarios.
- **Conditional:** It works only if a named assumption holds.
- **Fragile:** A small behavioral change makes it fail.
- **Unsafe:** A plausible scenario creates severe legal, financial, safety, or reputational harm.

Prefer a robust move over a slightly better fragile move when the downside is large. Prefer a reversible probe when evidence can separate the scenarios.

## Use small tests without exploiting people

A pilot can reveal behavior that debate cannot. Keep the test proportionate and transparent where transparency is required.

Good tests may include:

- A limited rollout with published eligibility rules.
- A paid trial with clear acceptance measures.
- A menu of real options that reveals preferences through choice.
- A simulation with staff or volunteer participants.
- A pre-mortem that asks each side to name the likely misunderstanding.

Measure conduct, not only stated approval. Record the sample, setting, and limits. A response from five friendly users does not prove a market response. State the sample beside the result.

Do not run deceptive tests on customers, employees, patients, students, or other people who reasonably expect honest dealing. Do not exploit addiction, grief, fear, cognitive impairment, or urgent need. Get legal, ethics, or institutional review where the setting requires it.

## Small generic example

A subscription firm models a price increase as a simple trade. It assumes customers compare only monthly price and product features. The formal model predicts a small loss of customers.

The reality check adds three facts. Long-term customers receive the same percentage increase as new customers. The notice arrives one week before renewal. Support staff cannot explain the reason. Customer comments from a prior change show that fairness and surprise matter. Those comments are `observed`. The size of the future churn effect remains `unknown`.

The bounded scenario predicts that many customers will not compare the market. They will simply miss the notice. The social scenario predicts a smaller group will react strongly and complain publicly. The mistaken scenario predicts some customers will think the increase repeats every month.

The firm chooses a more robust move. It gives longer notice, explains the change, protects the current term, and pilots the new price with new customers first. The firm gives up some immediate revenue. It reduces surprise, fairness backlash, and model risk.

## Behavioral red flags

Slow down when the plan depends on any of these claims:

- “They will have no choice.”
- “They will understand what we meant.”
- “They only care about money.”
- “They will not notice.”
- “They will act against their own stated values.”
- “One message will reset years of distrust.”
- “Our team will follow the incentive exactly as designed.”
- “The other side is stupid, lazy, or crazy.”

Each claim hides a missing belief, payoff, or learning assumption. Name it and test it.

Internal players need the same check. A manager may protect headcount. A sales team may chase the metric that pays commission. A support team may close tickets quickly to improve a dashboard. Do not call this bad character. Redesign the payoff, measure, or authority. See [`mechanisms-and-auctions.md`](mechanisms-and-auctions.md).

## Decision checklist

- [ ] The formal solution is stated separately from observed behavior.
- [ ] Reasoning depth is estimated for each major player.
- [ ] Social payoffs are listed where they matter.
- [ ] Fairness, reciprocity, identity, and status effects are checked.
- [ ] Framing and default effects are named.
- [ ] Learning speed and feedback quality are assessed.
- [ ] Beliefs carry evidence labels.
- [ ] Payoffs carry provenance labels.
- [ ] Formal, bounded, social, and mistaken scenarios are compared.
- [ ] The recommendation is classified as robust, conditional, fragile, or unsafe.
- [ ] A reversible probe is considered when uncertainty is material.
- [ ] The plan does not exploit vulnerability or use a deceptive test.

## Ethical and legal limits

Behavioral insight must not become manipulation. Do not use dark patterns, false urgency, hidden defaults, deceptive framing, discriminatory targeting, or exploitation of addiction, distress, disability, or limited capacity. Do not design coercive threats or retaliation based on predicted emotions. Follow consent, privacy, employment, consumer-protection, accessibility, and anti-discrimination law. Seek review for tests involving health, children, finance, housing, employment, or essential services.

A model that requires deceiving the other player is not a robust decision model. It is a legal and reputational risk.

## Sources

- Colin F. Camerer, *Behavioral Game Theory: Experiments in Strategic Interaction* (Russell Sage Foundation / Princeton University Press, 2003), for social preferences, limited strategic reasoning, and learning.
- Avinash K. Dixit and Barry J. Nalebuff, *Thinking Strategically* (W. W. Norton, 1991), for practical checks on formal predictions.
- Robert Gibbons, *Game Theory for Applied Economists* (Princeton University Press, 1992), for the formal benchmark used in the comparison.

See [`sources-and-urls.md`](sources-and-urls.md) for the full source table. Use [`anti-patterns.md`](anti-patterns.md) to screen the final recommendation for model overconfidence.

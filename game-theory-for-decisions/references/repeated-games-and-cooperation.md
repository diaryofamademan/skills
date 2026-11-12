# Repeated Games and Cooperation

Part of `game-theory-for-decisions`, version 1.0.0.

Use this reference when the same players will meet again, observe each other again, or affect each other's reputation. It applies to suppliers, customers, partners, competitors, employees, platforms, communities, and internal teams.

A repeated game is not just a one-shot game played several times. Memory changes the payoffs. Future business can reward cooperation. Expected retaliation can deter defection. A known end can unwind both effects.

## The core idea

In a single interaction, a player may gain by breaking trust. In a continuing relationship, that player must also price lost future value, repair costs, and reputational spread. Game theorists call future weight the **shadow of the future**. In plain language, tomorrow matters enough to change today's best move.

Robert Axelrod's tournaments and historical cases showed that cooperation can emerge without a central enforcer. The best-known simple strategy was tit-for-tat. It starts by cooperating. It then copies the other player's previous move. It is useful because it is cooperative, responsive, clear, and able to return to cooperation.

Do not treat tit-for-tat as a universal rule. It performs poorly when signals are noisy, players are unequal, the relationship is ending, or one defection can cause ruin. Use its underlying traits, not a mechanical copy.

## First map the repetition

Before recommending a cooperative or defensive strategy, record:

| Question | Why it matters |
| --- | --- |
| Will the same players meet again? | Future consequences need identifiable players. |
| How often will they meet? | Frequent rounds allow faster learning and repair. |
| How long may the relationship last? | A long horizon supports cooperation. |
| Is the end date known? | A fixed final round can trigger end-game behavior. |
| Can each side observe the other's action? | Hidden action weakens reciprocity. |
| Can each side tell error from defection? | Noise can start a needless feud. |
| Will third parties learn what happened? | Reputation can multiply both reward and harm. |
| Can either side exit? | A real exit option limits exploitation. |
| Are the players stable? | New owners, staff, or agents can reset expectations. |
| Is power roughly balanced? | A dominant player may not need cooperation. |

Label each important claim. Use `observed`, `declared`, `inferred`, or `unknown` for evidence about conduct, observability, and likely future play. Label payoffs as `measured`, `declared`, `inferred`, or `unknown`. Past cooperation is observed evidence. It does not guarantee future conduct after incentives change.

## Why cooperation can be stable

A cooperative outcome can persist when each player expects the future loss from breakdown to exceed the one-time gain from defection. No single formula settles the question. Check five conditions.

1. **Identity persists.** Each side knows who it is dealing with.
2. **Actions are visible enough.** Each side can detect major compliance or breach.
3. **The future is valuable.** Future margin, learning, access, or trust matters.
4. **Responses are timely.** A consequence arrives before defection becomes the new normal.
5. **Return is possible.** A player who corrects a breach can regain standing.

Formal theory allows many stable outcomes in long repeated games. This is sometimes called the folk theorem. The practical lesson is narrower. Repetition does not guarantee cooperation. It makes norms, punishment paths, and beliefs more important. Use [`solution-methods.md`](solution-methods.md) when you need to compare equilibrium paths.

## Build a cooperation strategy, do not just urge trust

Use small, visible, and reversible steps when trust is not yet earned.

### Start with a bounded cooperative move

Choose a first step that creates value and limits loss. Use a pilot, a short term, a capped volume, or one joint deliverable. State success measures before the step begins.

### Make conduct legible

Write down delivery dates, quality measures, response times, and escalation contacts. Shared records reduce mistaken claims of defection. A clear rule also helps a new team member continue the norm.

### Respond in proportion

When a breach is verified, respond to the breach. Do not punish an unrelated issue. A proportionate response may pause new volume, require a cure plan, reduce exposure, or invoke a contract remedy. It should not use threats, humiliation, or harm to third parties.

### Leave a path back

State what correction restores normal dealing. Open-ended punishment teaches the other side that repair has no value. A cure path supports future cooperation.

### Forgive after verified repair

Forgiveness is a strategy, not a mood. Resume cooperation when the breach is corrected and the control failure is addressed. Increase exposure in stages if the earlier loss was material.

### Protect against noise

Assume errors will happen. Add a clarification step before retaliation for ambiguous events. Ask for the record. Set a short review window. Distinguish late delivery caused by a disclosed outage from quiet diversion of resources.

Axelrod's practical pattern can be summarized as: be cooperative first, be responsive, be forgiving after repair, and be clear. Add a fifth rule for modern operations: verify before responding.

## Handle the end game

Cooperation often weakens near a known end. The final period has no future round to discipline conduct. Earlier rounds can then unravel as players anticipate the end.

Watch for:

- A contract approaching expiry with no renewal path.
- A founder, executive, or account lead leaving the role.
- A firm preparing for sale or closure.
- A project entering its final milestone.
- A temporary worker or vendor nearing the last payment.
- A competitor exiting the market.

Reduce end-game risk with staged payments, holdbacks permitted by the contract, documentation transfer, warranty periods, transition duties, and early renewal decisions. Do not rely on goodwill when the structure removes future value.

If the end is uncertain, cooperation may hold longer. Do not create false uncertainty. State real review dates and real options.

## Reputation is a linked game

A player may cooperate in one relationship to protect value in another. A public breach can travel to customers, suppliers, employees, and future partners. A public act of fairness can also travel.

Map reputation effects explicitly:

- Who will learn about the move?
- What exactly will they learn?
- Is the record factual and verifiable?
- Will they see context or only a fragment?
- Does the player care about that audience?
- Could the response look bullying, deceptive, or unlawful?

Use [`changing-the-game.md`](changing-the-game.md) when reputation links several games through Scope. Do not manufacture reviews, leak private material, or spread unverified claims to create pressure. Reputation analysis is not permission to defame.

## Small generic example

Two professional firms refer clients to each other each month. Each firm can serve a referred client well or divert staff to higher-paying direct work. One poor handoff can win time once. Repeated poor handoffs can end the referral flow.

The firms start with two referrals per month. They use a shared handoff checklist. They record response time and client acceptance. They review the record monthly. If one firm misses the standard, it must explain the cause and cure the process before volume rises. After two clean months, the cap increases.

In month four, one referral receives a late reply. The record shows a staff outage that was disclosed the same day. The firms treat it as noise, not defection. They add a backup contact. Cooperation continues because the system separates error from breach and gives repair a clear value.

## Choose the posture

Use this selector as a first pass:

| Situation | Posture |
| --- | --- |
| Long horizon, visible actions, balanced power | Cooperate and invest in shared norms. |
| Long horizon, noisy signals | Cooperate with records, clarification, and staged exposure. |
| New relationship, unknown type | Start small and screen through performance. |
| Known end, high final-round gain | Use contract structure and staged settlement. |
| One side defects repeatedly after cure chances | Reduce exposure, enforce lawful remedies, or exit. |
| One side has overwhelming power | Add alternatives, coalitions, documentation, and outside options. |
| Defection can cause ruin | Do not rely on reciprocity. Use prevention, insurance, separation, or no deal. |

Add the behavioral checks in [`behavioral-reality-check.md`](behavioral-reality-check.md). Anger, pride, and fairness can turn a small breach into a long feud even when both sides lose.

## Decision checklist

- [ ] The repeat structure and likely horizon are stated.
- [ ] The end date or end-game risk is identified.
- [ ] Observability and error rates are assessed.
- [ ] Past conduct is labeled by evidence type.
- [ ] Future gains and losses are labeled by payoff provenance.
- [ ] The first cooperative step is bounded.
- [ ] Success and breach measures are written before play.
- [ ] The response to a verified breach is proportionate and lawful.
- [ ] A cure and forgiveness path is stated.
- [ ] Noise receives a clarification step.
- [ ] Reputation effects on third parties are mapped.
- [ ] Exit and exposure limits are set.
- [ ] The strategy does not depend on illegal coordination or retaliation.

## Ethical and legal limits

Repeated-game logic does not permit price fixing, market division, bid rigging, group boycotts, coercive retaliation, blacklisting that breaks the law, or deceptive reputation campaigns. Competitors must not use cooperation analysis to coordinate prices, output, bids, customers, or territories. Use contracts and remedies that are lawful. Get legal review when a response could affect competition, employment, privacy, or public safety.

Cooperation should create value or protect a legitimate relationship. It should not become a cartel, a punishment ring, or a barrier built through hidden coordination.

## Sources

- Robert Axelrod, *The Evolution of Cooperation* (Basic Books, 1984), for repeated interaction, reciprocity, and tit-for-tat.
- Robert Gibbons, *Game Theory for Applied Economists* (Princeton University Press, 1992), for repeated-game structure and equilibrium checks.
- Avinash K. Dixit and Barry J. Nalebuff, *Thinking Strategically* (W. W. Norton, 1991), for practical repeated-game and reputation reasoning.

See [`sources-and-urls.md`](sources-and-urls.md) for the full bibliography. Use [`commitments-signals-and-information.md`](commitments-signals-and-information.md) when the main problem is proof or credibility rather than repetition.

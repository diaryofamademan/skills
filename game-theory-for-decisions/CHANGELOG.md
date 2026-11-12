# Changelog

## 1.0.0 — 2026-11-12

First public release. Carries the 0.3.0 fixes:

Two fixes from the fifth live test run (an insider financing package),
both caught by the decision owner rather than the procedure — which is
exactly the failure this version closes.

- **Precondition check** added to Step 6 and the verification checklist:
  every recommended move must name what must already be true for the
  move to be possible. A move whose preconditions do not exist is a
  scheduled step with a date, not a recommendation. (Live-run case: a
  fee-funded buyback announced before the product producing the fees
  had launched.)
- **Observer discipline** added to Step 2 and the verification
  checklist: an observer counts as a player only if they can change a
  payoff. Audiences that will merely know are context. (Live-run case:
  neighboring-process counterparties who had no lever over the decision
  were mapped as an observing player and taxed two recommendations.)

## 0.2.0 — 2026-11-12 (draft)

Improvements from three live test runs (a multi-buyer sale process with a
hard deadline, a household runway decision, and an unpaid-claim enforcement
case). Each fix names the gap the live run exposed.

- **Cheapest-compliance test** added to Step 5, Guardrail 16, and
  `references/solution-methods.md`: if the other side can settle for a
  trivial cost and still refuses, the payoff map is wrong — find the hidden
  payoff (admission, precedent, missing asset, internal cost, hidden
  constraint) before recommending.
- **Credibility history** added as Guardrail 15 and to the verification
  checklist: count prior unexecuted threats and deadlines before issuing a
  new one; after two unexecuted rounds, execute, change the consequence, or
  stop threatening.
- **Shared accounts** added to Step 1, the output standard, and the
  game-mapping canvas: name the other live games sharing a player, a
  deadline, cash, or reputation with this one.
- **Information calendar** added to Step 8 and the response plan: list the
  dated future events that would change the table, and price the wait to
  the next one. Waiting is a move, with a date and a trigger.
- **Outside-option trend** added to Step 3 and the outside-option canvas:
  every BATNA is marked rising, flat, or decaying, with who controls the
  rate.
- **Verdict first** added to the output standard: a three-line verdict
  (decision, recommendation, next physical action and owner) opens every
  full run, ahead of the audit trail.
- **Two new worked examples**: an enforcement game (cheapest compliance,
  credibility count) and a sequencing game (information calendar, decaying
  outside option), plus two new anti-patterns (Deadline N+1; the snapshot
  BATNA).

## 0.1.0 — 2026-11-12 (draft)

- Initial local draft of `game-theory-for-decisions`.
- Eight-step core procedure: frame the decision, map players, map payoffs, map sequence and information, solve the game, reality-check the solution, choose whether to play or change the game, and set the response plan.
- Evidence discipline: player facts labeled observed, declared, inferred, or unknown; payoffs labeled measured, declared, inferred, or unknown.
- Guardrails against mind reading, fake precision, non-credible threats, one-shot advice in repeated games, private-information disclosure, and illegal or manipulative play.
- Reference set: core concepts, game mapping, solution methods, commitments and information, repeated games, changing the game, mechanisms and auctions, behavioral reality check, eight worked examples, anti-patterns, and sources.
- Source spine: Farnam Street as the public anchor, Dixit and Nalebuff as the main book, and Yale ECON 159 as the teaching spine, with Schelling, Brandenburger and Nalebuff, Axelrod, Milgrom, Gibbons, Osborne and Rubinstein, and Camerer in supporting tiers.

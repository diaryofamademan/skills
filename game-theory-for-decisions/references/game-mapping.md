# Game mapping — build the game before solving it

A solution is only as good as the map beneath it. This file covers Steps
1–4 of **Game Theory for Decisions**. It turns a messy situation into a game
that can be checked, solved, and revised.

Copy the canvases. Fill only what the decision needs. Leave gaps visible.
Do not decorate a weak map with exact numbers.

## Mapping order

1. Frame the decision.
2. Map the players.
3. Map objectives, payoffs, and outside options.
4. Map sequence and information.
5. Choose the model.
6. Record unknowns and sensitivity.

Use player IDs **P1**, **P2**, and so on throughout. Use the concepts in
[`core-concepts.md`](./core-concepts.md) when a term is unclear.

## Canvas 1 — Decision frame

```text
DECISION FRAME
Decision to make:
Decision owner:
Success measure:
Deadline:
Move being considered:
Status quo if no one acts:
Is the move reversible? Yes / No / Partly
One-shot or repeated? One-shot / Repeated / Uncertain
Known final round? Yes / No / Uncertain
What result would make us walk away?
Cost of doing this analysis:
Other live games sharing a player, deadline, cash, or reputation:
Dated information events ahead (date — what will be known):
```

Answer the gate before moving on:

```text
Which other player can change the result?
What can that player do?
Why does that action change our payoff?
```

If no answer exists, stop. The problem may need forecasting, expected value,
first-principles analysis, or ordinary project planning. Game theory would
add labels without adding insight.

### Frame checks

- Name one decision, not a whole relationship.
- Put the success measure in observable terms.
- Separate the user's deadline from another player's claimed deadline.
- Record whether delay is a real option.
- Name the cost of analysis. A quick map beats a perfect map that arrives
  after the decision closes.
- Name the shared accounts. Credibility, cash, and reputation spent in this
  game are gone in the others. A deadline enforced here buys belief there.

## Canvas 2 — Player map

```text
PLAYER MAP
ID:
Player name or role:
Decision rights:
Objective:
Available moves:
Moves they cannot make:
Money constraint:
Time constraint:
Authority constraint:
Reputation constraint:
Outside option / BATNA:
What they know:
What they may not know:
Who influences them:
Can they veto or delay? Yes / No / Partly
Will they be present in later rounds? Yes / No / Uncertain
Evidence notes:
```

Repeat one block for each player. Then make a compact table:

| ID | Player | Main objective | Strongest move | Outside option | Evidence |
| --- | --- | --- | --- | --- | --- |
| P1 |  |  |  |  |  |
| P2 |  |  |  |  |  |
| P3 |  |  |  |  |  |

### Who belongs on the map

Look beyond the two people in the conversation.

- **Decision maker:** can accept, reject, or set terms.
- **Veto player:** can block or delay.
- **Implementer:** can weaken the result after agreement.
- **Payer:** bears the cost.
- **Beneficiary:** gains without controlling the choice.
- **Rule maker:** sets eligibility, defaults, deadlines, or enforcement.
- **Referee:** resolves disputes or interprets compliance.
- **Competitor:** can take the customer, hire, asset, or attention.
- **Complementor:** raises the value of the user's offer when present.
- **Future entrant:** may join after the first move.
- **Internal agent:** acts for the user but faces different incentives.

An implementer is often the missing player. A contract can be signed by P1
and still fail because P4 controls delivery and is paid on a conflicting
metric.

### When to group and when to split

Group actors only when they share the same objective, moves, information,
and binding constraint. Split them when any one of these tests fails:

- One member can veto the others.
- One member bears a cost the others do not.
- One member receives private information.
- One member's reputation is at risk.
- One member is rewarded on a different metric.
- One member can exit more easily.

Do not use motive language as a shortcut. “Risk-averse,” “desperate,” and
“hostile” are conclusions. Record the observed behavior or constraint that
supports the label.

## Evidence labels for player facts

Use one label for each important player fact.

| Label | Meaning | Example of proper use |
| --- | --- | --- |
| **Observed** | A completed action or checkable record shows it. | The player rejected the same term in two prior rounds. |
| **Declared** | The player or an authorized source stated it. | The player states that Friday is a hard deadline. |
| **Inferred** | A reasoned conclusion from named evidence. | The player likely values speed because they paid for expedited work twice. |
| **Unknown** | The fact is not established. | The player's cash limit is unknown. |

Declared facts need care. A statement can be sincere, mistaken, outdated,
or strategic. Mark the speaker and date when the fact matters. A fact that
was declared last quarter may no longer govern this round.

## Canvas 3 — Objective and payoff ledger

A payoff is what an outcome gives or costs a player. Build one ledger per
material outcome. Do not start with a matrix if the payoffs are still vague.

```text
OUTCOME ID: O1
Outcome in plain words:

P1 payoff:
  Money:
  Time:
  Risk:
  Control:
  Status or fairness:
  Learning or option value:
  Reputation or future rounds:
  Overall rank for P1: Best / Good / Acceptable / Bad / Worst
  Provenance: Measured / Declared / Inferred / Unknown
  Source or basis:

P2 payoff:
  Money:
  Time:
  Risk:
  Control:
  Status or fairness:
  Learning or option value:
  Reputation or future rounds:
  Overall rank for P2: Best / Good / Acceptable / Bad / Worst
  Provenance: Measured / Declared / Inferred / Unknown
  Source or basis:

What fact would change either rank?
```

Repeat for each material outcome. Give each outcome a stable ID: **O1**,
**O2**, and so on.

### Payoff provenance

| Label | Use it when |
| --- | --- |
| **Measured** | A contract, invoice, price, test, record, or direct count supplies the value. |
| **Declared** | A player states a value, need, limit, or priority. |
| **Inferred** | Choices, constraints, or comparable cases support an estimate. |
| **Unknown** | The value cannot yet be ranked or bounded with honesty. |

Use numbers only at the strength of the source. A measured cost and an
inferred status effect should not be blended into one precise score unless
the user supplies the trade-off. Keep them as separate lines.

### Stated goals and revealed incentives

Record both when they differ.

```text
Player:
Stated goal:
Reward or metric they actually face:
Cost they personally bear:
Choice they made when goals conflicted:
Working objective for the model:
Evidence label:
```

Past choices under pressure are useful evidence. They are not conclusive.
A player may have learned, changed constraints, or made an error.

### Outside-option canvas

```text
Player:
Best action if this interaction fails:
Value of that action:
Time needed to use it:
Cost to switch:
Is it available now? Yes / No / Partly
Evidence label:
Trend while the game runs: Rising / Flat / Decaying
Who controls the rate of that trend?
What would strengthen or weaken it?
```

Do not call an outside option strong just because it exists. A slow, costly,
or low-value alternative may provide little protection. And do not treat it
as fixed. An outside option that decays while the game runs — savings
funding a burn, a rival offer expiring, a key employee interviewing
elsewhere — means delay itself is a move by the other side. Name the trend
and its rate, or the map will recommend patience the player cannot afford.

## Canvas 4 — Sequence and information

Use a timeline before drawing a tree. Many bad models come from placing a
reply before the move it answers.

```text
SEQUENCE AND INFORMATION MAP
T0 — Setup
  Rules in force:
  Commitments already made:
  Information already public:

T1 — First decision point
  Player to move:
  Moves available:
  What this player knows:
  What this player does not know:
  Can the move be reversed?
  Who observes the move?

T2 — Response point
  Player to move:
  Moves available:
  What new information arrived:
  What remains hidden:
  Can this player commit to a later action?

Later rounds:
  How often does the game repeat?
  What carries forward?
  Is there a known end?
```

Repeat the decision-point block as needed.

### Information questions

Ask these questions at every decision point:

- What move has the player actually seen?
- What document or record can the player check?
- What claim has the player heard but not verified?
- What payoff or type remains hidden?
- What belief is doing real work in the model?
- What signal could change that belief?
- What happens if the belief is wrong?

An **information set** is a set of points a player cannot tell apart when
choosing. In plain terms, the player must use one action across those points
because they look the same from inside the decision. If your map gives a
player different replies to states they cannot distinguish, the map is
wrong.

### Commitment and observability check

```text
Claimed commitment, threat, or promise:
Who made it?
What action was taken, not just said?
Who can observe it?
What does retreat cost?
Can it be reversed quietly?
At execution time, why would the player carry it out?
Evidence label:
```

Words alone rarely change a game. A public contract, paid cost, delegated
authority, automatic rule, or lost alternative may change it. Read
[`commitments-signals-and-information.md`](./commitments-signals-and-information.md)
before treating the claim as part of the solution.

## Choose the model

| Map pattern | Model to use | Next file |
| --- | --- | --- |
| Few players, locked choices, no useful reply before outcome | Payoff matrix | [`solution-methods.md`](./solution-methods.md) |
| One move creates replies and later branches | Game tree | [`solution-methods.md`](./solution-methods.md) |
| Hidden cost, quality, intent, or capacity drives the choice | Type and belief map | [`commitments-signals-and-information.md`](./commitments-signals-and-information.md) |
| Same players meet again or reputation travels | Repeated game | [`repeated-games-and-cooperation.md`](./repeated-games-and-cooperation.md) |
| User can set entry, scoring, bids, rewards, or enforcement | Mechanism | [`mechanisms-and-auctions.md`](./mechanisms-and-auctions.md) |
| Several parties create more together than apart | Coalition and added-value map | [`changing-the-game.md`](./changing-the-game.md) |
| Main risk is human behavior, not formal structure | Behavioral scenario map | [`behavioral-reality-check.md`](./behavioral-reality-check.md) |

Do not force a matrix onto a long sequential process. Do not build a huge
tree when two choices and one response decide the issue. Match the model to
the decision's real branch points.

## Canvas 5 — Unknowns and sensitivity

```text
UNKNOWN THAT MATTERS
ID: U1
Unknown:
Which player or payoff it affects:
Current working assumption:
Evidence label:
If the assumption is wrong, what changes?
Smallest check that would resolve it:
Owner of the check:
Needed by:
```

Rank unknowns by decision impact, not by curiosity. A small unknown price
may matter less than an unknown veto. The key sensitivity question is:

> What one changed fact would make us choose a different move?

If several facts can flip the answer, say the model is not ready for a firm
recommendation. Give a conditional plan instead.

## Miniature example — a public price page

A software firm, P1, can publish its prices or keep them private. A rival,
P2, can match the public price or hold its own price. Both sell to similar
customers.

- **P1 objective:** Win qualified customers without starting a margin war.
- **P2 objective:** Protect margin and avoid losing visible deals.
- **P1 outside option:** Sell through private quotes, as it does now.
- **P2 outside option:** Keep private quotes and compete on service.
- **Sequence:** P1 moves first. P2 sees the page before replying.
- **Information:** Price becomes observed. Discount practice remains unknown.
- **Payoffs:** Customer gain is inferred. Margin loss is inferred. Support
  cost is unknown.
- **Model:** A small sequential game, not a fixed simultaneous matrix.

The map prevents a common error. Publishing price is not just a one-time
marketing choice. It creates information that changes P2's next move, and it
may be hard to reverse without confusing customers. The solution must test
that reply before P1 acts.

## Final map check

Before opening [`solution-methods.md`](./solution-methods.md), confirm:

- The decision and success measure are named.
- All material players have IDs.
- Veto, implementation, and future-entry risks were checked.
- Objectives are separated from slogans.
- Payoffs carry provenance labels.
- Outside options are real and time-bound.
- Sequence and information are explicit.
- The repeat structure is explicit.
- The top unknowns can change the answer, and each has a check.
- No private value has been placed in an external draft.

## Sources

The player and payoff structure follows Dixit and Nalebuff's operator
treatment and Gibbons's applied texts. Sequence and information follow Yale
ECON 159 and the Stanford game-theory syllabi. Commitment checks follow
Schelling. Added-value checks follow Brandenburger and Nalebuff. Full credits
are in [`sources-and-urls.md`](./sources-and-urls.md).

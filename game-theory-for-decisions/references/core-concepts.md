# Core concepts — the minimum useful vocabulary

Game theory has more terms than a decision maker needs. This file keeps the
concepts that change a choice, a prediction, or a warning. Each entry gives a
plain definition and the question the concept helps answer.

Use [`game-mapping.md`](./game-mapping.md) to record the concepts in a real
case. Use [`solution-methods.md`](./solution-methods.md) when the map is
ready to solve.

## Game

A **game** is a situation where two or more players affect each other's
results. Each player chooses from available moves. The combined choices
produce the outcome.

**Decision question:** Whose choice can change my result?

A game is not always a contest. Players may share some goals and oppose each
other on others. A supplier negotiation can create value for both sides and
still contain a hard contest over how that value is split.

**Warning:** If no other actor can affect the outcome, there is no game to
solve. Use ordinary decision analysis instead.

## Player

A **player** is an actor who can choose a move. A player may be a person, a
team, a company, a regulator, a platform, or a future entrant.

**Decision question:** Who can act, veto, delay, enter, exit, or change the
rules?

Give players stable IDs: **P1**, **P2**, and so on. Model a group as one
player only when its members share objectives, options, information, and
constraints. Model a veto holder separately. A silent actor can still be a
player when its future entry changes what others do now.

Do not treat an organization as one mind when its parts face different
incentives. A sales leader paid on bookings and a finance leader paid on cash
collection may choose different moves inside the same company.

## Strategy

A **strategy** is a complete plan. It says what a player will do at each
point where that player may have to act, including points reached only after
another player's move.

**Decision question:** What will this player do on each branch, not just on
the first move?

A move is one action. A strategy covers replies. “Offer a discount” is a
move. “Offer 5 percent now, match one counteroffer, then hold price and add
support” is closer to a strategy.

## Payoff

A **payoff** is the value a player gets from an outcome. It can include
money, time, safety, control, learning, status, risk, future options, and
reputation.

**Decision question:** What does this outcome give or cost this player, in
terms the player actually values?

Do not assume every player wants the highest cash amount. One player may
accept less money for speed. Another may reject a profitable deal that harms
status or creates a bad precedent.

Label payoff provenance as **measured**, **declared**, **inferred**, or
**unknown**. Use exact numbers only when a source supports them. Use a rank
when a number would pretend to know too much.

## Outside option and BATNA

An **outside option** is what a player can do if the current interaction
fails. In negotiation, this is often called the **BATNA**, or best
alternative to a negotiated agreement.

**Decision question:** How bad is no deal for each player?

A strong outside option reduces dependence. A weak outside option makes a
player easier to pressure. Do not guess this value from confidence or tone.
Look for contracts, alternatives, deadlines, cash constraints, and prior
choices.

## Information

**Information** is what a player knows when choosing. Two kinds of limits
matter:

- **Imperfect information** means a player does not know an earlier move or
  the exact point reached in the game.
- **Incomplete information** means a player does not know another player's
  type, payoff, cost, or constraint.

**Decision question:** What does each player know, believe, or merely suspect
at the moment of choice?

Keep facts and beliefs separate. A false belief can still drive a real move.
A hidden payoff can change the whole solution. When a player's type matters,
model the plausible types and the evidence for each one. Do not select the
type that makes the preferred answer easiest.

## Sequence

**Sequence** is the order of moves. It tells who commits first, who can
respond, and who must decide with the least information.

**Decision question:** Who moves first, who can react, and who moves last?

Moving first can create an advantage when the first move is a real
commitment. Moving later can create an advantage when the later player sees
more before choosing. Neither order is always better. The value comes from
commitment, information, and the cost of reversal.

## Simultaneous and sequential games

In a **simultaneous game**, players choose without seeing the current choice
of the others. Real choices need not happen at the same clock time. They are
simultaneous in effect when neither side can react before locking in.

In a **sequential game**, at least one player sees an earlier move before
choosing. A game tree is usually the clearest map.

**Decision question:** Can a player react before the outcome is fixed?

Use a payoff matrix for a small simultaneous choice. Use a tree when replies
and later branches drive the result. See
[`solution-methods.md`](./solution-methods.md).

## One-shot and repeated games

A **one-shot game** happens once, with no useful future round. A **repeated
game** continues, or the players expect to meet again under the shadow of
this result.

**Decision question:** Will anyone remember this move, and can they respond
in a later round?

Repetition adds reputation, learning, retaliation, and trust to the payoff.
It can support cooperation that fails in a single round. A known final round
can also weaken cooperation near the end. Use
[`repeated-games-and-cooperation.md`](./repeated-games-and-cooperation.md)
whenever the relationship continues.

## Best response

A **best response** is the move that gives a player the best payoff, given
what the others are expected to do.

**Decision question:** If the other players hold to this plan, what should
this player do?

Best response is the basic building block. Do not ask only, “What do I want
to do?” Ask, “What is my best reply to each move they may make?” Then ask the
same question from their side.

## Dominant and dominated strategies

A **dominant strategy** performs at least as well as every other option no
matter what the others do. A **strictly dominant strategy** performs better
in every case. A **dominated strategy** performs worse than another available
strategy.

**Decision question:** Is any option good in every case, or bad in every
case?

A true dominant strategy simplifies the decision. It is also rare. Check
that all outcomes and payoffs are included before using the label. A strategy
that wins on price may lose once delay, risk, or reputation enters the
payoff.

## Nash equilibrium

A **Nash equilibrium** is a set of strategies where no player can improve by
changing strategy alone. Each player's choice is a best response to the
others.

**Decision question:** If everyone expects this outcome, does anyone have a
reason to break from it alone?

An equilibrium is a stability test. It is not a promise that people will
reach it. It is not always fair. It is not always efficient. A game can have
one equilibrium, several equilibria, or an equilibrium only in mixed
strategies.

Always state the assumptions behind an equilibrium claim. A changed payoff,
new player, new information, or longer time horizon can change the result.

## Backward induction

**Backward induction** solves a sequential game from the end. Start at the
last choice. Find what the last player would do. Move one step back. Repeat
until the first move is clear.

**Decision question:** If everyone can see the later replies, what first move
survives?

Backward induction exposes plans that depend on irrational later behavior.
It works best when the order, options, and payoffs are clear. It becomes less
reliable when people misunderstand the game, value fairness strongly, or do
not know the later payoffs.

## Credible threat, promise, and commitment

A **threat** is a stated intention to harm another player's payoff if they
take an unwanted action. A **promise** is a stated intention to reward a
desired action. Both fail when the speaker would not want to carry them out.

A **commitment** is an action that changes future incentives or removes a
future option. It can make a threat or promise credible by making retreat
costly, visible, or impossible.

**Decision question:** When the moment arrives, will this player still want
or be forced to do what they said?

Test credibility at execution time, not at announcement time. See
[`commitments-signals-and-information.md`](./commitments-signals-and-information.md)
for devices and warnings.

## Signal and screening

A **signal** is an action that gives information about a player's type,
quality, strength, or intention. A signal is more informative when it is
harder or costlier for a weak type to copy.

**Screening** is the other side's move. The less informed player offers
choices or asks questions that lead different types to reveal themselves.

**Decision question:** What does this action prove, and who could fake it at
low cost?

Cheap statements are weak signals. Paid deposits, completed work, verifiable
records, warranties, and irreversible investments usually carry more weight.
They still do not prove more than their cost and context support.

## Adverse selection and moral hazard

**Adverse selection** happens before an agreement. Hidden information leads
the wrong mix of players to enter or accept. **Moral hazard** happens after
an agreement. One player can change behavior because another player bears
part of the cost or cannot observe the action.

**Decision question:** Is the problem who shows up, or what they do after
they arrive?

The fixes differ. Screening, records, staged access, and risk-based terms
address selection. Monitoring, incentives, deductibles, milestones, and
enforceable consequences address moral hazard.

## Focal point

A **focal point** is an outcome people converge on because it stands out.
Round numbers, precedent, a public deadline, a standard split, or a clear
boundary can become focal when players cannot fully coordinate.

**Decision question:** If several stable outcomes exist, which one will
players expect each other to expect?

A focal point does not prove an outcome is best. It explains why one
equilibrium may be selected. Culture, history, salience, and fairness all
matter.

## Zero-sum and non-zero-sum games

In a **zero-sum game**, one player's gain equals the other players' loss.
The total does not change. In a **non-zero-sum game**, joint choices can
create or destroy total value.

**Decision question:** Can both sides gain, both sides lose, or only trade a
fixed total?

Many business games are mixed-motive. The players cooperate to create value
and compete to divide it. A zero-sum frame can cause needless escalation. A
pure win-win frame can hide a real split problem. Name both parts.

## Mechanism

A **mechanism** is a set of rules that shapes choices and outcomes. It
defines who may act, what they can do, what information they reveal, how the
result is chosen, and what they pay or receive.

**Decision question:** If self-interested players follow these rules, what
behavior will the rules produce?

Mechanism design works backward. Start with the desired outcome. Then set
rules that make honest or useful action attractive. Use
[`mechanisms-and-auctions.md`](./mechanisms-and-auctions.md) for incentive
plans, marketplaces, tenders, and auctions.

## Coalition and added value

A **coalition** is a group of players who coordinate to reach an outcome. A
player's **added value** is the difference between the total value with that
player in the game and the total value without them.

**Decision question:** Who is needed, who can block, and how much value
disappears if one player leaves?

A player with a small visible role may have large added value when they hold
a scarce right, a trusted relationship, or a veto. A loud player may add less
than they claim. Test the game with and without each key player.

## Bounded rationality

**Bounded rationality** means people decide with limited time, attention,
memory, and reasoning depth. They may use only one or two steps of “I think
that you think.” They may misread payoffs or copy a familiar move.

**Decision question:** How many steps can these players realistically reason
through, and what will they notice first?

Bounded rationality does not mean people are foolish. It means the model
must match the players, time pressure, and information in front of them.
Use [`behavioral-reality-check.md`](./behavioral-reality-check.md) before
turning a formal solution into advice.

## Five distinctions that prevent common errors

| Pair | Distinction |
| --- | --- |
| Move vs. strategy | A move is one action. A strategy covers replies on later branches. |
| Warning vs. threat | A warning predicts harm from events. A threat promises action by the speaker. |
| Signal vs. cheap talk | A signal carries a cost or proof. Cheap talk can be copied at little cost. |
| Cooperation vs. collusion | Cooperation creates or protects value. Collusion restrains competition or deceives others and may be illegal. |
| Equilibrium vs. forecast | An equilibrium is stable inside the model. A forecast also needs behavior, information, and execution checks. |

## Sources

The formal spine follows von Neumann and Morgenstern, Nash, Harsanyi, and
Selten. Schelling supplies commitments and focal points. Dixit and Nalebuff
supply the operator translation. Gibbons and Osborne and Rubinstein provide
the formal checks. Brandenburger and Nalebuff supply added value. Camerer
supplies the bounded-rationality warning. Full credits are in
[`sources-and-urls.md`](./sources-and-urls.md).

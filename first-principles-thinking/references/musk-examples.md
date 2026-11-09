# <img src="../assets/icons/rocket-01.svg" width="20" height="20" alt="" /> The Musk decompositions, worked

The two examples that made first-principles reasoning famous in business, worked here the way the skill's procedure works them: assumptions listed, raw inputs priced, floor computed, gap named. Both are paraphrased from interviews Musk gave in 2012; the numbers are the ones he stated publicly at the time.

```mermaid
flowchart LR
  Q["Quoted price"] --> D["Decompose<br/>to raw inputs"]
  D --> P["Price inputs<br/>at market"]
  P --> FL["Floor"]
  FL --> IX["Idiot index<br/>price ÷ floor"]
  IX --> GAP["Gap = process,<br/>not physics"]
  GAP --> RB["Rebuild the<br/>process"]
```

## Example 1 — What is a rocket made of?

**The problem (Step 1).** Unit: one rocket launch vehicle. Success number: a purchase/build price far below the going rate, because the whole mission (eventually, Mars) is impossible at the going rate.

**The assumption (Step 2).** Rockets cost what manufacturers quote — roughly $65 million per launch in the commonly cited version of this story — because rockets are inherently expensive. Source of the assumption: historical prices and supplier quotes. Evidence type: none. It is a market convention, not a measurement of inputs.

**Strip to truths (Step 3).** Ask instead what a rocket physically is. The answer is a short list of commodity materials: aerospace-grade aluminum alloys, plus titanium, copper, and carbon fiber. Those materials trade on open markets, so each has a checkable price. Evidence type: market price.

**<img src="../assets/icons/pie-chart-01.svg" width="20" height="20" alt="" /> Floor math (Step 4).** Price the material content of one rocket at commodity value and compare it with the finished price:

| Line | Value (as stated in 2012) |
| --- | --- |
| Finished rocket, typical price | ~100% (index) |
| Raw materials at commodity prices | ~2% of that price |
| **Idiot index (price ÷ materials floor)** | **~50×** |

**Name the gap.** If the atoms cost 2%, the other ~98% is not physics. It is process: low production volume, cost-plus contracting, hand-built one-offs, layers of subcontractors each adding margin, and an industry that never had to compete on price. Every item on that list is a hypothesis about process — and process can be rebuilt.

**Rebuild (Step 5).** Bring manufacturing in-house, design for production instead of for contract compliance, reuse what the industry threw away. That rebuild became a company that builds its own rockets instead of buying them — and launch prices fell by roughly an order of magnitude over the following decade.

**The lesson to copy.** The move was not "be smarter about rockets." It was: refuse the quote as a fact, price the inputs, and discover the problem is manufacturing organization, not the laws of nature.

## Example 2 — Battery packs "will always cost $600/kWh"

**The problem (Step 1).** Unit: one kilowatt-hour of rechargeable battery pack capacity. Success number: a pack cost low enough to make a mass-market electric car possible.

**The assumption (Step 2).** In the Kevin Rose *Foundation* interview (September 2012), Musk describes the industry position he kept hearing: battery packs cost about **$600 per kWh**, they have cost that historically, and they will not get much cheaper. Source: historical pricing. Evidence type: none — a trend line mistaken for a law.

**Strip to truths (Step 3).** Ask what a battery pack is made of. The material constituents: cobalt, nickel, aluminum, carbon, some polymers for the separator, and a steel can. Every one of those trades on the London Metal Exchange.

**Floor math (Step 4).** Buy the constituents, on paper, at exchange spot prices:

| Line | Value (as stated in 2012) |
| --- | --- |
| Battery pack, historical market price | ~$600 / kWh |
| Material constituents at LME spot prices | ~$80 / kWh |
| **Idiot index (price ÷ materials floor)** | **~7.5×** |

**Name the gap.** Materials are not what makes a battery expensive. The remaining ~$520/kWh sits in how the materials are combined: cell manufacturing, pack assembly, supply-chain margins stacked at each hand-off, and low volumes. That is an organization and manufacturing problem — hard, but solvable, and completely different from "batteries are expensive, full stop."

**Rebuild (Step 5).** If the gap is manufacturing, the fix is manufacturing: build cells and packs at very large scale, in one place, with the supply chain compressed — the gigafactory bet. In the years after the interview, industry pack prices fell steadily toward the floor logic (they are far below $600/kWh today), because the constraint was never the chemistry's material cost.

**The lesson to copy.** "It has always cost X, so it always will" is the single most expensive sentence in business. The decomposition takes an afternoon. It converts a verdict ("impossible at this price") into a work list ("close a 7.5× process gap").

## Using these as templates

When you run Step 4 on your own problem, copy the table shape exactly:

1. Quoted/actual price for one unit.
2. Raw inputs, each with a named price source.
3. Floor = sum of inputs (mark any `unsourced` lines; they make the floor an estimate).
4. Idiot index.
5. Gap hypotheses, each tied to a Step 2 assumption.

A high idiot index does not prove the rebuild will work — manufacturing the gap away may cost more than it saves (see [`anti-patterns.md`](./anti-patterns.md)). It proves the price is a process outcome, which means it is negotiable with reality, not just with the vendor.

## Sources

- Elon Musk, interview with Kevin Rose, *Foundation* (September 2012) — the battery decomposition, in his own telling: https://www.youtube.com/watch?v=L-s_3b5fRd8
- Elon Musk, Q&A with Chris Anderson, *Wired* (October 2012) — the rocket materials question and the ~2% figure: https://www.wired.com/2012/10/ff-elon-musk-qa/all/
- Farnam Street, "What is First Principles Thinking?" — retells both examples with citations: https://fs.blog/first-principles/
- James Clear, "First Principles: Elon Musk on the Power of Thinking for Yourself" — the rocket example worked as deconstruct → reconstruct: https://jamesclear.com/first-principles

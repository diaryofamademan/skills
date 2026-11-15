# Case study: a fleet of AI coding agents

A worked run of the procedure, on a real system, with the system's own numbers rounded to magnitudes. The system: a fleet of autonomous coding agents that take work items from a queue, attempt a fix, and land finished code changes. Names and repositories are omitted; the rates are the system's own, stated as approximations.

## Step 1 — The goal

Finished unit: one landed code change. Target: **10 per hour**. Measured output: **about 3 per hour**. Work waiting to start: plentiful, roughly four dozen items at any reading. A work shortage is ruled out before the run begins.

## Step 2 — The chain, measured

The chain has three stages that matter: an item is **attempted** (an agent works it), the attempt **succeeds** (it produces a finished, correct change), and the change **lands** (it passes review and merges).

- Attempt rate: about **26 per hour**.
- Success rate: about **one in four** attempts (roughly 24%).
- Landing rate: about **one in two** successful changes (roughly 54%).

The equation: 26 × 0.24 × 0.54 ≈ **3.4 per hour** — matching the measured output of about 3. The map is complete; no hidden stage is eating the difference.

## Step 3 — The constraint

The verdict: the **attempt stage's success rate** is the constraint. The evidence: the largest loss in the chain sits there (three of every four attempts die), the landing stage starves behind it (it can only land what succeeds), and no other stage's improvement buys comparable output. Doubling the landing rate to a perfect 100% would only double output to about 6–7 per hour; the target is unreachable without moving the success rate.

Classifying the losses inside the constraint, from the fleet's own failure accounting:

- About **half of all attempts die carrying a previous attempt's failure state** — a retry inherits the wreckage of the attempt before it. Kind: policy (the retry rule), not resource.
- About **40% of lane deaths match no named failure class** — the system cannot say why they died. An unnamed failure cannot be fixed, only retried, and retries spend the constraint.
- The named remainder is a long tail of provider and environment failures, each small.

## Step 4 — Exploit

- **Isolate retries**: a fresh attempt starts clean; no attempt inherits a prior attempt's failure state.
- **Name before retrying**: every death gets a named class before the item re-enters the queue; the unnamed share is reported every cycle until it is small.
- **Feed the constraint checked work only**: items enter the attempt stage complete and claimable, so attempts are not spent discovering missing prerequisites.

## Step 5 — Subordinate

- **Cap concurrent attempts per lane**, so a struggling lane stops generating inventory and its problem surfaces instead of spreading.
- **Throttle intake to the success stage's real pace**: starting more attempts does not raise output while three in four die; it raises cost and queue length.
- **Stop measuring attempts as productivity** in the fleet's own reporting; the headline becomes landed changes per hour, with the two rates beside it.

## Step 6 — Elevate

Only after the above: add attempt capacity, or redesign the attempt stage, in the Algorithm's order — question the requirements each attempt carries, delete steps, simplify, accelerate, automate last. The expected-effect math the plan is judged by:

| Success rate | Landing rate | Attempts/hour needed for 10/hour |
| --- | --- | --- |
| 24% (current) | 54% (current) | about 77 — an absurd spend |
| 40% | 65% | about 38 |
| 50% | 75% | about 27 — roughly the current attempt rate |

The table is the argument: at the current attempt rate, the target needs success near 50% and landing near 75%. No capacity purchase reaches it from 24%.

## Step 7 — Repeat

Re-measure after one full day at the new rules. The done rule: success rate and landed output both re-read, and the run counts as working only if landed output per hour moved, not if any single failure class dropped. The inertia watch names the holds and routing rules written during earlier incidents, each to be re-justified against the new constraint or retired.

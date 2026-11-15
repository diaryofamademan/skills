# Flow math: the numbers under the map

The main skill's step 2 requires a chain map whose equation reproduces measured output. This file carries the four pieces of mathematics that map rests on. All four are paraphrased from Donald G. Reinertsen, *The Principles of Product Development Flow* (2009), resting on queueing theory and on Little's Law (John D. C. Little, "A Proof for the Queuing Formula: L = λW", *Operations Research*, 1961).

## The stage equation

A chain of stages passes a unit only if every stage passes it. So:

**Output rate = input rate × stage 1 success rate × stage 2 success rate × … × final stage success rate**

Success rate means the share of a stage's inputs that leave as good output: not failed, not rejected, not returned for rework. Two consequences follow immediately.

First, losses multiply. Two stages at 50% each do not lose half the output between them; they lose three quarters of it. A chain with several mediocre stages has a terrible output rate and no single villain, which is exactly the situation the constraint method exists to sort out: it asks which stage's improvement buys the most output per unit of effort, and the answer is the stage where the queue and the starvation already point.

Second, the equation is a lie detector. If the multiplied equation does not reproduce the measured output, a stage or a loss is missing from the map. Unmapped losses in knowledge work are usually rework loops (units silently returning to an earlier stage) and unnamed failure classes (units dying with no recorded reason).

## Little's Law

**Cycle time = work in progress ÷ throughput.**

For any stable system, the average time a unit spends in the system equals the inventory inside it divided by the rate at which units leave. This is a law, not a heuristic, and it holds for queues of code changes exactly as for queues of parts.

Its practical force: at a fixed throughput, doubling work in progress doubles how long every unit waits. Starting more work cannot shorten the wait for anything already started. When output is below target, the inventory number is therefore a suspect, not a bystander — and capping work in progress is a throughput intervention, not tidiness.

## The utilization curve

Queueing theory's most abused result: as a resource's utilization approaches 100%, the queue in front of it grows without limit, and it grows faster the more variable the arrivals and the work are.

A stage kept fully busy is a stage building an infinite queue, slowly. Knowledge work has high variability, so the effect bites earlier and harder than in manufacturing: a reviewer, a lane, or a service running at 95% utilization is not efficient, it is a queue generator. Deliberate slack at non-constraint stages is what absorbs variation and keeps the constraint fed at a steady pace. Any plan that raises every stage's utilization is a plan to lengthen every cycle time in the system.

## Batch size

Work that moves in large batches waits for the whole batch at every stage. Halving the batch size roughly halves the queueing delay the batch causes, and it halves the cost of a defect found late, because half as much work was built on it. In delivery chains the batch is the release, the review round, or the set of changes landed together; in agent systems it is the set of attempts run before anyone reads the results. Small batches are why fast feedback exists: feedback on a small batch arrives while the work is still cheap to change.

## Cost of delay

A unit sitting in a queue is not free: its value decays, its context stales, and the work built around it may have to be redone. Reinertsen's discipline is to price the delay, even roughly, before arguing about priorities. A queue whose contents nobody has priced is managed by whoever shouts loudest. The constraint method's subordination step is, in part, cost-of-delay discipline: the constraint's queue is the only queue whose contents are deliberately chosen, because it is the queue the whole system's output waits behind.

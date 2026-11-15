# The four kinds of constraint

Step 3 of the main procedure classifies the constraint, because the kind decides the treatment. Misclassification is expensive: a policy constraint treated as a resource constraint gets a purchase order; a hero constraint treated as a policy gets a memo.

## Resource constraint

A stage that physically cannot pass more work: too slow, too few instances, too unreliable. The queue in front of it is real inventory.

Treatment: exploit first (protect its input, strip its non-essential work, cut its largest failure classes), subordinate (feed it at its pace), and only then elevate — more capacity or a faster stage. The test that it is truly a resource constraint: with perfect input and no interruptions, its rate still caps the system.

## Policy constraint

A rule, approval, hold, threshold, or routing decision that limits flow. Nothing physical is scarce; the system is obeying its own instructions. Policy constraints are the most common kind in knowledge work and the cheapest to fix, and the hardest to see, because each rule was written for a reason and has a defender.

Treatment: name the rule, name who owns it, name the loss it was written to prevent, and price what it costs in throughput now. Then decide with both numbers on the table: keep, narrow, or retire. The main skill's inertia guard (guardrail 10) exists because yesterday's protective policy is the standard origin of today's policy constraint.

## Hero constraint

One person, one lane, or one service that everything routes through, usually because it holds knowledge or authority nothing else has. *The Phoenix Project*'s Brent is the type case: the constraint and the single point of failure are the same resource.

Treatment: protect its time in the short run (route only work that truly needs it, batch the rest, refuse drive-by work), and de-risk in the same plan: document what it knows, cross-train or split the knowledge, and move routine decisions off it. Protection without de-risking deepens the dependency and raises the cost of the day the hero is unavailable.

## External constraint

A limit set outside the system's control: a provider's rate limits or reliability, a market's pace, a counterparty's review cycle, a regulator's clock.

Treatment: measure what it costs in throughput, design the chain to lose as little as possible to it (buffers in front of internal stages, work that does not depend on it routed around it), and work the relationship with game-theory-for-decisions where the other party's choices can move. What does not work: treating an external constraint as an internal failure and spending internal effort as if effort could repeal it.

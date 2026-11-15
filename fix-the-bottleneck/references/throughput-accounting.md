# Throughput accounting, adapted to knowledge work

Goldratt's alternative to cost accounting, from *The Goal* and *Theory of Constraints*. Three measures, defined for a factory, translate directly to any chain that produces finished units.

## The three measures

**Throughput (T)** is the rate at which the system produces finished units that count: merged changes, shipped orders, resolved tickets. Not started units, not nearly-done units, not units a dashboard calls complete that a customer cannot use.

**Inventory (I)** is everything tied up inside the system that has not yet become throughput: work in progress at every stage, queues, half-finished units, and the money and attention sunk into them. In knowledge work, inventory is invisible by default, which is why making it visible is step 2 of the main procedure.

**Operating expense (OE)** is everything spent to turn inventory into throughput: salaries, compute, tooling, provider fees, review time.

## The decision order

Judge every proposed change in this order:

1. What does it do to **throughput**?
2. What does it do to **inventory**?
3. What does it do to **operating expense**?

A change that raises throughput at flat inventory and expense is a clear win. A change that cuts operating expense while cutting throughput is a loss, even though conventional cost accounting applauds it — this is the trap of optimizing a non-constraint stage's cost while the system's output falls. A change that raises throughput by raising inventory without limit will reverse itself through cycle time, by Little's Law.

## Why this matters for agent systems

Agent fleets make the accounting concrete. Attempts are operating expense in motion: each one spends compute and provider budget. Work in progress is literal: open changes, queued reviews, parked items. Throughput is the only term that pays for the other two. A fleet report that leads with attempts, utilization, or cost per attempt is reading the accounting backwards; the main skill's guardrail 11 exists to keep the order straight: throughput first, inventory second, expense third.

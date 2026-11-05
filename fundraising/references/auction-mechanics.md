# <img src="../assets/icons/chart-line.svg" width="20" height="20" alt="" /> Auction mechanics (full text)

Full mechanics behind shared core **§7b** in `../SKILL.md` (Kalanick, Senra podcast, 2026-08-16). Depth: [`interview-lessons.md`](./interview-lessons.md); M&A parallel: [`ma-process.md`](./ma-process.md). Moved from `../SKILL.md` in v3.3.1.

```mermaid
flowchart LR
  A["Low clearing anchor"] --> B["Bids / demand curve"]
  B --> W["Winner-takes-all or syndicate"]
```

### 7b — Auction mechanics (priced startup rounds; parallel for M&A)

Use when raise size and team bandwidth justify a formal close (Kalanick, Senra podcast, 2026-08-16; detail in `./interview-lessons.md`; M&A parallel in `./ma-process.md`):

| Format | When | Mechanics (agent tracks in TheList; human approves all numbers) |
| --- | --- | --- |
| **Winner-takes-all** | Single lead owns the round | After low anchor bid, each next bidder gets **prior high bid + fixed increment**; update earlier bidders; **going once / twice** at plateau; one winner takes full allocation. |
| **Syndicated / demand curve** | Large rounds, many checks | Each bidder submits **$ at several price points**; **sum demand per price** → curve; set clearing price where **demand = raise size**; cut-out names get a **second sheet**; rerun curve **1–2** times; finalize syndicate. |
| **Parallel rooms** | High meeting volume | Group meetings by **check-size band**; founder in largest-check room; same **core story** everywhere; scale rooms/week to **pitch + deal-team** capacity—not default for seed. |

**Do not** fabricate bids or room counts in external updates; log only **verified** indications and term sheets.

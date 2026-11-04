# Cap table math (paraphrased)

Share count, pre/post money, option pool shuffle, and a worked SAFE → Series A example.

**Not legal, tax, or investment advice.** Have **lawyer review** and your cap-table provider sign off before sharing pro formas externally. **CPA review** for tax implications.

Sources (paraphrase only): [YC Post-Money SAFE User Guide](https://bookface-static.ycombinator.com/assets/ycdc/SAFE%20User%20Guide-a47c6588327d73aa2799e61ed7c2cae9f1a0ee9acfa9c43b62039dc06e715832.pdf); Brad Feld term-sheet posts (liquidation preference, etc.) on [Feld Thoughts](https://feld.com/archives/2005/01/term-sheet-liquidation-preference/).

## Definitions

- **Post-money** = pre-money + new money.
- **New investor %** = new money ÷ post-money.
- **Price per share** = pre-money ÷ fully diluted pre-money shares (for a priced round, after defining what shares count in pre).
- **Dilution** for existing holders ≈ 1 − (pre-round shares ÷ post-round shares).
- Quick check: $2M on $8M pre → $10M post → investor owns 20%.

## Option pool shuffle

When the term sheet requires the **option pool to hit a target % post-money** and the **increase counts inside pre-money**, only existing holders (founders + prior investors) bear the dilution from new unallocated pool shares—not the new money. The **effective pre-money** for founders is lower than the headline pre.

Size the pool from a **hiring plan**, not a default percentage.

## Worked example: SAFE then Series A (agent-verified)

**Setup**

- Founders: 8,000,000 shares.
- Existing option pool (granted + unallocated): 1,000,000.
- Fully diluted before SAFEs: **9,000,000**.
- SAFE: **$1,000,000** at **$10,000,000 post-money cap**.
- Series A: **$5,000,000** at **$20,000,000 pre-money**; pool must be **10% post-money** with increase in pre (shuffle).

### Step 1 — SAFE conversion (post-money SAFE)

- SAFE % of cap before Series A = $1M ÷ $10M = **10%**.
- Cap table before Series A includes existing pool; excludes Series A money and **new** pool shares.
- 0.10 × (9,000,000 + S) = S → **S = 1,000,000** SAFE shares.
- Capitalization before Series A: **10,000,000** shares.
- Conversion price = $10M ÷ 10M = **$1.00/share** (below Series A price → cap applies).

### Step 2 — Series A + pool shuffle

Let **T** = total post-money shares, **P** = new pool shares.

- Series A owns 20% of T ($5M ÷ $25M post).
- Pool: 1,000,000 + P = 0.10 × T.
- Share count: 10,000,000 + P + 0.20T = T.

Substitute P = 0.10T − 1,000,000:

- 9,000,000 = 0.70T → **T = 12,857,143** (rounded).
- **P = 285,714** new pool shares.
- **Series A shares = 2,571,429**.
- **Series A price** = $5,000,000 ÷ 2,571,429 = **$1.9444/share**.
- Check: pre-money shares for pricing = 10,285,714 × $1.9444 ≈ **$20.0M** headline pre ✓

### Step 3 — Pro forma (post Series A)

| Holder | Shares | % FD |
| --- | ---: | ---: |
| Founders | 8,000,000 | **62.2%** |
| SAFE (converted) | 1,000,000 | **7.8%** |
| Option pool (1.0M + 0.286M) | 1,285,714 | **10.0%** |
| Series A | 2,571,429 | **20.0%** |
| **Total** | **12,857,143** | 100% |

### Takeaways

- Founders: 88.9% FD pre-Series A (after SAFE) → **62.2%** post.
- **Effective pre** for existing holders ≈ $1.9444 × 10,000,000 = **$19.44M**, not $20M.
- SAFE invested at **$1.00** vs Series A **$1.9444**.
- If SAFEs are modeled **outside** pre-money (per YC footnote scenarios), new money gets slightly less than headline %; effective post-money rises.

**CPA review** for 409A and tax; **lawyer review** for charter and conversion mechanics.

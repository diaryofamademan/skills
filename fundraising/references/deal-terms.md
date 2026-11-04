# Deal terms (paraphrased)

Plain-English guides to standard startup, fund, and M&A terms — paraphrased from official forms, not a substitute for counsel.

**Not legal, tax, or investment advice.** Flag **lawyer review** on all binding terms; **CPA review** on tax, waterfall, and working-capital pegs.

**Parsed for v3.1.0 (Nov 2026):** YC post-money SAFE docx (cap, discount, MFN, pro rata side letter); [NVCA Model Term Sheet (2020 docx)](https://nvca.org/document/nvca-2020-term-sheet-4/); [Series Seed term sheet (GitHub mirror)](https://github.com/seriesseed/equity/blob/master/Series%20Seed%20-%20Term%20Sheet.md); ILPA Model LPA overview + whole-of-fund and deal-by-deal Word agreements; ILPA Principles 3.0 PDF. **Not parsed:** NVCA Oct 2025 standalone term sheet (not linked on the model-docs page; 2020 term sheet used); ILPA Excel reporting workbooks (definitions PDF used instead); [seriesseed.com](https://seriesseed.com) (unreachable — GitHub mirror).

Sources: [YC documents](https://www.ycombinator.com/documents); [YC Post-Money SAFE User Guide](https://bookface-static.ycombinator.com/assets/ycdc/SAFE%20User%20Guide-a47c6588327d73aa2799e61ed7c2cae9f1a0ee9acfa9c43b62039dc06e715832.pdf); [NVCA model documents](https://nvca.org/model-legal-documents/); [NVCA 2020 Term Sheet download page](https://nvca.org/document/nvca-2020-term-sheet-4/); [NVCA 2020 Term Sheet docx](https://nvca.org/wp-content/uploads/2020/08/NVCA-2020-Term-Sheet.docx); [Series Seed equity repo](https://github.com/seriesseed/equity); [ILPA Model LPA hub](https://ilpa.org/industry-guidance/templates-standards-model-documents/model-limited-partnership-agreement/); [ILPA Model LPA — whole of fund (Word)](https://ilpa.org/wp-content/uploads/2020/07/ILPA-Model-Limited-Partnership-Agreement-WOF.docx); [ILPA Model LPA — deal by deal (Word)](https://ilpa.org/wp-content/uploads/2020/07/ILPA-Model-Limited-Parnership-Agreement-Deal-By-Deal.docx); [ILPA Model LPA overview (Word)](https://ilpa.org/wp-content/uploads/2020/07/2020.07.29-ILPA-Model-LPA-Overview-WOF-Version.docx); [Feld — liquidation preference](https://feld.com/archives/2005/01/term-sheet-liquidation-preference/); [Feld — protective provisions](https://feld.com/archives/2005/01/term-sheet-protective-provisions/); [Feld — board](https://feld.com/archives/2005/01/term-sheet-board-of-directors/); [Feld — drag-along](https://feld.com/archives/2005/02/term-sheet-drag-along/); [Full Ratchet podcast excerpt](https://fullratchet.net/episode-10-the-term-sheet-feat-brad-feld/) (search excerpt for anti-dilution / pay-to-play); [ILPA Principles 3.0 PDF](https://ilpa.org/wp-content/uploads/2019/06/ILPA-Principles-3.0_2019.pdf); [ILPA Principles page](https://ilpa.org/industry-guidance/principles-best-practices/ilpa-principles/); [Fund Launch LPA drafting](https://www.fundlaunch.com/solutions/lpa-drafting); [Mintz — LOI seller considerations](https://www.mintz.com/insights-center/viewpoints/2871/2025-03-31-seller-considerations-when-negotiating-letter-intent); [Feld — term sheet series wrap-up](https://feld.com/archives/2005/08/term-sheet-series-wrap-up/) (search excerpt only); [Morgan & Westfield — LOI clauses](https://morganandwestfield.com/books-online/chapter-19-the-letter-of-intent/major-clauses/) (search excerpt only); [Casner & Edwards — RWI](https://www.casneredwards.com/representation-and-warranty-insurance-managing-risk-in-your-next-ma-deal/) (search excerpt only); [Fasthoff — escrows and holdbacks](https://fasthofflawfirm.com/blog/escrows-and-holdbacks) (search excerpt only).

---

## YC post-money SAFE (startup)

- **Forms:** cap-only, discount-only, uncapped MFN; optional **Pro Rata Side Letter** (capped SAFEs only; converts with priced round).
- **Post-money cap** counts all SAFE money + existing pool; excludes priced-round money and **new** pool created in that round. SAFEs do not dilute each other; they dilute with Series A and pool increase.
- **Ownership sold** ≈ purchase ÷ post-money cap.
- **MFN:** adopt a later SAFE’s better terms (usually whole package, once).
- **Pro rata:** not in SAFE body—side letter only; model allocations before granting.
- **Lawyer review:** use unmodified YC forms; any edit needs counsel.

### YC SAFE clause guide (from official docx, paraphrased)

| Topic | What the form does | Agent note |
| --- | --- | --- |
| **Equity financing** | On the first priced round close, the SAFE converts automatically. Cap form: investor gets the **better** of (a) shares at the round’s lowest preferred price or (b) shares at the **Safe Price** (cap ÷ company capitalization). Discount form: shares at the **Discount Price**. MFN form: converts at the round’s lowest preferred price unless MFN already upgraded terms. | Model pro forma before granting side letters; see `cap-table-math.md`. |
| **Liquidity event** | Before a priced round, if the company sells, lists, or similar, the investor receives cash or stock proceeds under a **cash-out vs as-converted** test, subject to the priority stack below. Tax-free reorg rules can shift cash vs stock if the board acts in good faith. | Do not quote proceeds to investors without approver + counsel. |
| **Dissolution** | If the company winds up without a liquidity event, the investor receives the **cash-out amount** (typically purchase amount), subject to the same priority stack. | |
| **Liquidation priority** | Treats the SAFE like **non-participating preferred** in a sale or wind-up: pay debt/notes first; SAFE/preferred share pari passu for cash-out; conversion-style payouts sit with common on an as-converted basis when higher. | |
| **Termination** | SAFE ends after conversion or after cash-out/dissolution payments are set aside. | |
| **Definitions** | **Company Capitalization** drives the cap math (outstanding stock, options, promised options, unissued pool, other converting instruments). **Safe Price** = cap ÷ that base. **Equity Financing** = bona fide priced preferred round. **Liquidity Event** = change of control, direct listing, or IPO. | Align internal cap table model with these definitions. |
| **MFN (MFN-only SAFE)** | If the company issues a later SAFE on better terms, this holder may elect to swap to that whole package (typically once). Liquidity payouts respect MFN timing. | Log each SAFE tranche; **lawyer review** before MFN elections. |
| **Pro rata side letter** | Separate agreement: holder may buy their **pro rata share** of the priced round (ratio of their post-conversion SAFE shares to company capitalization). Expires at priced-round close, liquidity, or dissolution. Amendments need company + majority of pro rata SAFE holders (or that investor alone for investor-only tweaks). | Founders: model dilution if all pro rata holders exercise. |

## NVCA model term sheet — clause guide (2020 docx, paraphrased)

The NVCA term sheet maps to its model charter, stock purchase, investors’ rights, ROFR/co-sale, and voting agreements. Below: plain meaning and what usually negotiates.

### Offering terms

| Clause | Plain meaning | Founder-friendly | Investor-friendly | Usually negotiated |
| --- | --- | --- | --- | --- |
| **Security / amount / valuation** | Series A preferred; pre-money on **fully diluted** basis, often including unallocated option pool in pre. | Smaller pool in pre; higher pre-money. | Lower pre; larger pool shuffle. | Pre-money, pool size, tranched closes. |
| **Conditions to close** | Diligence, blue sky, charter filing, counsel opinion, CFIUS if needed. | Narrow CFIUS triggers. | Broad conditions and termination rights. | CFIUS path, milestone tranches. |
| **Dividends** | Often none or non-cumulative when declared. | No cumulative dividends. | Cumulative dividend accrual. | Cumulative vs none. |
| **Liquidation preference** | Payout order on sale/dissolution; alternatives for non-participating vs participating vs cap. | **1× non-participating.** | Participating or >1×. | Multiple, participation, seniority. |
| **Voting** | Votes with common as-converted; separate class to elect board seats until threshold outstanding. | Common/founder board control early. | Preferred board majority or veto seats. | Board size and who elects each seat. |
| **Protective provisions** | Preferred consent required for major actions (charter changes, new senior stock, sale, debt, etc.). | High thresholds; sunset when preferred mostly converted. | Low thresholds; series-specific vetoes. | Debt basket, voting together vs per series. |
| **Conversion / anti-dilution** | Optional 1:1 conversion; weighted-average adjustment on down rounds; mandatory conversion on qualified IPO. | Broad-based weighted average; no ratchet. | Full ratchet or participating prefs. | Anti-dilution formula, IPO thresholds. |
| **Pay-to-play / redemption** | Optional: force pro rata in down rounds or redeem after year five. | Omit or pay-to-play only. | Redemption rights or harsh pay-to-play. | Whether included at all. |

### Charter / stock purchase / investors’ rights / ROFR / voting (grouped themes)

| Theme | Plain meaning | Negotiation notes |
| --- | --- | --- |
| **Registration rights** | Demand, S-3, piggyback; company pays reg expenses; lock-up on IPO. | Founders: limit demand count and minimum offering size. |
| **Information & pro rata** | Major investors get updates, inspection, and pro rata in future rounds. | Scope major-investor threshold; competitor exclusions. |
| **Board & D&O** | Committee composition, expense reimbursement, D&O insurance. | Independent director comp in equity, not cash. |
| **Founder stock / vesting** | Optional repurchase or vesting on founders’ shares. | Longer vesting, single-trigger acceleration rare. |
| **ROFR / co-sale** | Company and investors get first refusal and tag-along on founder secondary sales. | Narrow ROFR to >1% holders only. |
| **Drag-along** | Preferred + large common block can force vote for approved sale. | Require common majority plus preferred majority. |
| **No-shop / expiration** | Binding confidentiality and no-shop; non-binding on other terms until docs signed. | Shorter no-shop; narrow definition of competing process. |

## Series Seed vs NVCA (GitHub `seriesseed/equity`, paraphrased)

| Dimension | Series Seed | NVCA stack |
| --- | --- | --- |
| **Goal** | Lighter seed preferred round with **one integrated investment agreement** and short term sheet. | Full venture-grade **document set** and long-form term sheet for Series A+. |
| **Documents** | Term sheet points to published Series Seed docs (investment agreement + restated charter) with only listed modifications. | Term sheet maps to five+ definitive agreements and detailed charter terms. |
| **Economics** | Simple **1× non-participating** liquidation preference; standard conversion; MFN-style **future round parity** for Seed vs next preferred. | Multiple alternatives for dividends, participation, pay-to-play, redemption, tranches, CFIUS. |
| **Governance** | Board split among common, Seed, and mutual; standard protective votes listed in term sheet. | Granular protective provisions, registration, ROFR, drag, side letters. |
| **Process** | **30-day** binding no-shop on binding terms section; flat **$10k** counsel fee reimbursement cap in model term sheet. | Longer no-shop negotiable; counsel fee cap negotiable. |
| **When to use** | Early institutional seed where parties want **speed and fewer pages**. | Priced A and later when institutions expect **NVCA market standard**. |

Official term sheet mirror: [Series Seed — Term Sheet.md](https://raw.githubusercontent.com/seriesseed/equity/master/Series%20Seed%20-%20Term%20Sheet.md). Site [seriesseed.com](https://seriesseed.com) was unreachable during v3.1.0 fetch.

## ILPA Model LPA — key terms (Word agreements + overview, paraphrased)

ILPA publishes **Delaware**-style model LPAs in two economics flavors:

| Version | Waterfall | Typical use |
| --- | --- | --- |
| [**Whole of fund**](https://ilpa.org/wp-content/uploads/2020/07/ILPA-Model-Limited-Partnership-Agreement-WOF.docx) | European-style: LPs recover aggregate capital and pref before GP carry on the fund as a whole. | Institutional buyout funds; ILPA preferred alignment. |
| [**Deal by deal**](https://ilpa.org/wp-content/uploads/2020/07/ILPA-Model-Limited-Parnership-Agreement-Deal-By-Deal.docx) | American-style: carry can crystallize per deal (with escrow/clawback themes in Principles). | Where GP/market expects deal-by-deal carry mechanics. |

**Document structure (article themes in whole-of-fund model):** definitions; general provisions; management; commitments; **closings**; capital contributions; investments; management company conflicts; **GP removal / fund termination**; **key person** suspension; partner meetings; **LPAC**; **distributions & allocations**; books/reports; exculpation/indemnification; transfers; dissolution; amendments; governing law.

**Alignment with ILPA Principles (negotiation defaults):**

| Term | ILPA-friendly posture |
| --- | --- |
| **Management fee** | Reasonable cost coverage; **full offset** of transaction/monitoring/placement fees allocated to the fund; successor-fund fee timing coordinated with prior fund step-down. |
| **Carry** | **Net** profits, **whole-of-fund** waterfall preferred; escrow/clawback; hard hurdle; carry on recap only after return of invested capital (Principles). |
| **GP commit** | Cash-funded; not via fee waivers alone. |
| **Key person** | Named drivers; suspension of investment period on trigger; LP remedies. |
| **GP removal** | No-fault and for-cause paths with carry reduction (Principles). |
| **Side letters / MFN** | Disclosure to all LPs; LPAC review of material side terms. |
| **Subscription lines** | Disclose size, cost, use; report performance **with and without** the line. |

Overview narrative: [Model LPA overview (Word)](https://ilpa.org/wp-content/uploads/2020/07/2020.07.29-ILPA-Model-LPA-Overview-WOF-Version.docx). Hub page: [Model Limited Partnership Agreement](https://ilpa.org/industry-guidance/templates-standards-model-documents/model-limited-partnership-agreement/).

## Priced round — economics (NVCA / Feld)

| Term | Plain meaning | Founder-friendly default |
| --- | --- | --- |
| Valuation | Pre + new = post; investor % = new ÷ post | Negotiate pre; know what shares sit in pre (pool shuffle) |
| Liquidation preference | Preferred gets multiple back first on sale/M&A | **1× non-participating** |
| Participation | Full or capped participation stacks on preference | Non-participating |
| Anti-dilution | Protection on down round | **Broad-based weighted average**; avoid full ratchet |
| Option pool | Often increased in pre-money | Size to hiring plan |
| Pay-to-play | Skip future round → lose preference | Founder-friendly when leveraged |

**Liquidation preference example ($5M for 20%, 1×):**

- Exit **$15M**, non-participating: convert = $3M < $5M → take **$5M** pref; common gets **$10M**.
- Exit **$15M**, full participating: **$5M + 20% × $10M = $7M** to preferred.
- Exit **$40M**, non-participating: convert **$8M** > $5M → convert; no pref stack.

See `references/cap-table-math.md` for share math.

## Priced round — control (Feld)

- **Board:** typical growth path ~3 (seed) → ~5 (Series A: CEO, founder, two investors, independent) → larger later. Observers common; outside directors often paid in equity.
- **Protective provisions:** investor vetoes on charter changes, new senior stock, sale, large debt, board size, etc. Negotiate thresholds, sunset, series voting together vs separate.
- **Drag-along:** majority preferred (often + majority common) can force sale participation.
- **Lawyer review** on all control terms.

## LP fund — LPA highlights (ILPA Principles 3.0)

- **Management fee:** on committed during investment period, then invested capital; ILPA expects fees cover costs, not profit; offset transaction/monitoring fees; successor fund fee timing aligned with prior fund step-down.
- **Carry waterfall (European / whole-of-fund preferred):** return of capital → preferred return (hurdle) → GP catch-up → 80/20 split; ILPA prefers net carry, escrow, clawback, hard hurdle.
- **GP commit:** cash-funded; restrictions on transfers.
- **Key person / GP removal / LPAC / side letters & MFN / subscription lines:** disclose and align with ILPA; **lawyer review** on LPA; **CPA review** on carry.

### Worked carry waterfall (simplified, **CPA review**)

$100M fund, all called, **$200M** distributed year 5; **8%** pref compounded ≈ **$46.9M** on $100M over 5 years.

1. LPs: **$100M** capital return.
2. LPs: **~$46.9M** pref.
3. GP **catch-up** until GP = 20% of profits to date → **~$11.7M** to GP.
4. Remainder **~$41.4M** at 80/20 → LPs **~$33.1M**, GP **~$8.3M**.

GP total **~$20M** (20% of $100M profit); LPs **~$180M**. Actual LPA definitions govern.

## M&A — LOI and purchase agreement (Mintz + market practice)

- **LOI:** mostly non-binding; binding blocks often confidentiality, **exclusivity**, law/venue.
- **Exclusivity:** sellers often cap **~30–45 days** (+ one extension max); leverage drops after LOI.
- Settle in LOI when possible: price structure (cash-free/debt-free), **working-capital peg** (+ collar), **escrow**, indemnity cap/basket, fundamental reps, **RWI** yes/no, earnout metrics.
- **Working capital:** price adjusts dollar-for-dollar vs peg at close (collar may eliminate small deltas).
- **Escrow/holdback:** often ~**10%** for **6–18 months** middle market (search excerpts); negotiate release and sole remedy.
- **RWI:** covers unknown rep breaches; reduces seller escrow (medians cited ~10% without RWI vs ~0.5% with—second-hand market data). **Lawyer review** on reps; **CPA review** on WC peg and tax.

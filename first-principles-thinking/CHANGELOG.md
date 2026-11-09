# <img src="assets/icons/link-01.svg" width="20" height="20" alt="" /> Changelog

## 1.4.0 — 2026-11-08

Four field lessons from a live cost analysis, each learned by a wrong line in the first draft:

- **Guardrail 12 — name what the money bought.** A platform charge was floored against seat prices when it was actually usage minutes from a retired setup. Purpose comes before price. An index against the wrong floor misleads more than no index.
- **Guardrail 13 — absence needs the whole record.** A charge was reported missing because the receipts lived in a second mailbox. Absence claims now name their source and scope, and read "not seen in this source" unless the record is complete.
- **Guardrail 14 — check the instruments first.** A usage split was called unobservable while an API key for that exact service sat in the credential vault. A measurement behind a login you hold is unfetched, not missing.
- **Output standard item 9 — the fix list carries owners.** Each fix now names its owner and blocker, marked `do-now` or `decide-first`. A fix with no owner is a wish.

Checklist gains four matching items.

## 1.3.0 — 2026-11-08

- **Guardrail 11 — write the output plain.** Field feedback: a trace that needs dense prose has failed at its job. Explanations, traces, and conclusions now follow plain-language discipline (ISO 24495-1, ASD-STE100 sentence habits): short sentences, one idea per sentence, active voice, plain words, no semicolons, jargon glossed on first use. One trace line = one sentence. Evidence and code strings stay verbatim. Checklist gains a plain-prose item.

## 1.2.0 — 2026-11-08

- **Reasoning trace added to the Output standard (new item 7).** Field feedback on the v1.1.0 test runs: the analyses reached conclusions a reader could not re-derive without trusting the author — the derivation was in the prose, not on the page. Now every load-bearing conclusion must show its chain (`Conclusion <- T2 + T4, floor lines 1-3, criterion: cost`), judgment steps are labeled `judgment`, and conclusions resting on demoted assumptions are flagged with the assumption's ID so the reader can dispute a single link instead of the whole report.
- Assumptions and fundamental truths are now numbered (A1..., T1...) in Steps 2-3 so the trace can cite them; verification checklist gains a trace item.

## 1.1.0 — 2026-11-08

Field-tested on live decision cases the day after release. The tests exposed five gaps in the skill's evidence discipline; this release closes them with general rules. The cases are kept as anonymized illustrations in `references/anti-patterns.md` section 9, not in the rules themselves:

- **Guardrail 8 — sources have owners.** Facts and terms migrate between parties in discussion; a claim in a comparison must name the source that states it, from its own document.
- **Guardrail 9 — statistics carry their sample.** A rating, average, or benchmark counts as evidence only with its sample size, source, and date; measured records and opinion are different evidence classes and neither may impersonate the other.
- **Guardrail 10 — price provenance.** Prices are labeled `published`, `quoted`, or unobservable-without-a-transaction; the third kind is an estimate until obtained, and obtaining it is a measurement.
- **Step 4 — watch the billing unit.** Composite billing units (per member-hour, per seat, per device) must also be expressed as elapsed-unit prices, and billed-unit totals checked against observation or flagged as never observed.
- **Step 6 — eligibility requirements before ranking.** A minimum bar is a requirement with an owner, named in the Step 1 problem statement; options failing it are parked, not ranked lower with caveats.
- Output standard and verification checklist updated to match.

## 1.0.0 — 2026-11-07

- Initial release of the `first-principles-thinking` skill: an operator's procedure for reasoning from first principles, built to the slim spec-size format (core procedure in `SKILL.md`, depth in `references/`).
- `SKILL.md`: when to use / when NOT to use (analogy and continuous improvement stay the right tools for incremental, low-stakes work), agent guardrails (evidence-or-demotion rule, no fabricated floors, constraints are not assumptions, cognitive-cost check, survivorship check), the seven-step core procedure — name the problem, list assumptions with sources, strip to fundamental truths with named evidence, cost decomposition with floor math and the idiot index, rebuild in The Algorithm's order, compare against the status quo, verify and decide — plus output standard and verification checklist.
- Add `references/musk-examples.md`: the rocket-materials and battery-cost decompositions worked step by step, with floor math and idiot index shown.
- Add `references/the-algorithm.md`: the five-step rebuild order (question every requirement, delete, simplify, accelerate, automate last) with corollaries, the idiot index, and the automate-what-should-be-deleted cautionary tale.
- Add `references/cook-and-chef.md`: the cook-vs-chef frame, Want box vs Reality box, the semantic tree, and guidance on when analogy is the right tool.
- Add `references/techniques.md`: Socratic questioning, the Five Whys, Cartesian methodical doubt, and the Feynman rebuild/teach test.
- Add `references/worked-examples.md`: non-rocket worked examples (media distribution from one principle, a business reduced to one principle, a machine recombined from three others) and a fill-in vendor-quote cost decomposition template.
- Add `references/anti-patterns.md`: fake first principles, over-decomposition, low-stakes misuse, survivorship bias, and optimizing what should be deleted.
- Add `references/sources-and-urls.md`: full paraphrase credit table for all primary, synthesis, and supporting sources, with URLs.
- Icons: mapping proposed in `assets/icons/README.md` using Hugeicons free SVGs (stroke recolor `#6E7FD6`); SVGs synced from upstream (stroke recolor only) and verified against the Hugeicons free set.

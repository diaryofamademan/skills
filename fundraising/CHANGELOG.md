# <img src="assets/icons/link-01.svg" width="20" height="20" alt="" /> Changelog

## 3.3.2 — 2026-11-05

- Moved the maintainer script `scripts/verify-assets.sh` out of the skill folder to repo-root `scripts/verify-fundraising-assets.sh` (path logic adjusted). Registry security scanners grade bundled executables; the script is repo tooling, not playbook content. No playbook content changed.

## 3.3.1 (2026-11-05)

- Restructured SKILL.md to the agent-skills spec size (core playbook in SKILL.md; detailed walkthroughs moved to references/). No content removed.

## 3.3.0 (2026-11-04)

- Add `references/interview-lessons.md`: paraphrased fundraising, auction, investor-selection, and IR lessons from Travis Kalanick on the David Senra podcast (2026-08-16), with demand-curve / winner-takes-all mermaid flows.
- Weave process-over-price, low anchor, parallel rooms, QED vs hot-market pitch, do-no-harm selection, and liquidity alignment into `SKILL.md` (shared core §5–§7b, startup track), `references/post-close.md`, and `references/ma-process.md` (auction parallels).
- Add Hugeicons free `mic-01.svg` for interview reference docs; list in `assets/icons/README.md` and `references/README.md`.

## 3.2.0 (2026-11-04)

- Add GitHub-renderable `mermaid` diagrams near the top of `SKILL.md` and every file under `references/` (including YouTube playlist summaries); diagrams validated with `@mermaid-js/mermaid-cli`.
- Add **Hugeicons free** (MIT) SVG icons under `assets/icons/` (stroke `#6E7FD6`, synced from [hugeicons/hugeicons](https://github.com/hugeicons/hugeicons/tree/main/icons)); inline `<img>` tags on headings, tracks, tables, and checklists; mapping in `assets/icons/README.md`. Use upstream `presentation-01.svg` (not `presentation.svg`).
- `scripts/verify-assets.sh` checks upstream HTTP 200 and path-data match (stroke recolor only).
- Document standing **Diagrams and icons required** rule in repo `SYNC.md`, root `README.md`, and skill maintainer notes (`SKILL.md`).

## 3.1.0 (2026-11-04)

- Parse official forms into references: YC SAFE docx (four US forms), NVCA 2020 Model Term Sheet docx, Series Seed term sheet (GitHub mirror), ILPA Model LPA (whole-of-fund + deal-by-deal + overview), ILPA DDQ 2.0 PDF, ILPA Reporting/Performance **Definitions** PDFs, ILPA Principles (placement agents); Investment Company Act qualified purchaser and 3(c)(1)/3(c)(7) via Cornell US Code.
- Expand `deal-terms.md`, `due-diligence-checklists.md`, `post-close.md`, `fund-closing-and-compliance.md` with clause/field guides.
- New `references/glossary.md`, `references/README.md`; rewrite skill `README.md` as public front door; repo root pointer to this skill; `SKILL.md` how-to-read box + TOC.

## 3.0.0 (2026-11-04)

- End-to-end process after the yes: six reference files (deal terms, diligence checklists, cap-table math, M&A process, fund closing/compliance, post-close).
- `SKILL.md`: shared **After the yes** phase, per-track post-LOI/term-sheet steps, **Agent guardrails** (12 items including wire-fraud checks), disclaimer, expanded source URL list, Pitch Anything woven into credibility/momentum/close.
- `references/book-lessons.md`: *Pitch Anything* (Klaff) section.
- Worked SAFE→Series A example verified in `references/cap-table-math.md`.

## 2.4.0 (2026-11-04)

- Expand *Positioning* (Ries & Trout) in `references/book-lessons.md` from [BestWriting summary](https://bestwriting.com/positioning-summary); weave into credibility, narrative, LP strategy, M&A story.
- Add *Breakthrough Advertising* (Schwartz) via [Valchanova notes](https://valchanova.me/breakthrough-advertising-copywriting-book-review/); weave into outreach, deck copy, and investor updates.

## 2.3.0 (2026-11-04)

- Add `references/article-lessons.md`: John Kim *Five Laws* (Vessel), GTM LP funnel (Vessel; vendor content), Chris Voss *Never Split the Difference* (Runn summary).
- Weave Kim, St-Martin/Alden, and Voss into shared core (qualify, ABC, credibility, momentum, second offer, close) and LP track (pipeline math, ILP, CRM, re-ups, evergreen pipeline, FO-then-anchor sequence).

## 2.2.0 (2026-11-04)

- Replace full YouTube auto-transcripts with paraphrased ~300–500 word summaries per video; update playlist index.
- Add `references/book-lessons.md` (Ringer, Calacanis, Ries & Trout, Thiel/Masters); weave strongest lessons into shared core and track modules.
- Permitted external links only: Angel blog summaries, Zero to One Medium summary.
- Fix: use full URLs for Angel (Max Mednik, Haley Bryant) and Zero to One Medium summary in `book-lessons.md` and `SKILL.md` Sources table.

## 2.1.0 (2026-11-04)

- Add paraphrased qualifying lessons from *Straight Line Persuasion*, Module 7 (no transcript in repo).

## 2.0.0 (2026-11-04)

- Rename skill to `fundraising`; unified shared core plus startup, LP fund, and M&A tracks.

## 1.0.0 (2026-11-04)

- Generalized open-source skill; removed personal/company-specific runtime references.

## 0.x

- Prior iterations as `startup-fundraising` (Skilzzz, X bookmarks, YouTube M&A distillation).

# Changelog

## 1.1.4 — 2026-11-19

Step 5 now calls in the writing pass. A statement drafted against the plain-writing bullets and shipped without the pass still lands in committee register — the bullets describe the target, they do not move the text there. The pass runs the work-humanizer skill in rewrite mode over the statement, then applies the writing-styles skill's plain rules, and nothing ships until the pass has run on the exact final text. Facts, figures, quotes, and names never change in the pass.

## 1.1.3 — 2026-11-16

Stop-the-scroll pass over the README. The opening now starts from the reader's question instead of describing the skill, and the README closes with a Get the skill block pointing to the skill's page on ianbalina.com, where the email form lives. No method changes.

## 1.1.2 — 2026-11-16

Public copy rewritten in plain spoken words; no method changes. The README opening, the marketplace description, and the listing lines were rewritten so a stranger can follow every line: short sentences, no compressed chains, no labels that assume context the reader does not have. Part of the eight-skill plain-copy pass Ian directed on 2026-11-16, after the skill pages were found to read as robotic.

## 1.1.1 — 2026-11-16

The plain-writing gate gains the spoken-numbers rule: every figure is written the way a person says it out loud, rounded to the spoken form ("more than 304,000 emails," "$307 billion," "about 3 in 4"); a raw precise count (304,174) or a decimal abbreviation ($307.0B) fails. The rule already ran in the author's production pipeline but was not written in this gate, and a launch statement printed 304,174 raw behind it. Exact figures live in the source material; the statement carries the number as speech. No other method changes.

## 1.1.0 — 2026-11-16

A grammar gate joins the guardrails (guardrail 12): no draft is called reviewed until the exact final text has passed a grammar pass — subject-verb agreement, articles, punctuation, hyphenation, parallelism. The gate exists because finished copy passed every existing review in this skill carrying a plain agreement error: the gates judged what the text does and how it sounds, and none of them judged whether it was correct. No other method changes.

## 1.0.1 — 2026-11-14

README rebuilt to the shared layout used by every skill in this repo (What this is, Who it is for, Process at a glance with the procedure diagram, How to use with an agent, Folder map, Sources and credits, Contributing, License, Version). The references index is renamed to references/README.md to match the other skills, and the icon set gains link-01 and calendar-03. No method changes.

## 1.0.0 — 2026-11-14

First public release. The tested 0.1.0 draft, plus the pre-publish pass: an output contract (every run returns the named moment, the claim sort, the statement, and the response plan), a limits-and-boundaries section (counsel rules the legal line; style is a separate layer; facts are inputs, not outputs), the Nvidia case study as a public reference, and the icon set with a repo verify script.

## 0.1.0 — 2026-11-14 (draft, unpublished)

First draft. Eight-step procedure across four modes (announcement, crisis, response, everyday), ten guardrails, three references.

Sources: Meservey's Go Direct manifesto (anchor), Raskin's strategic narrative structure, Ries & Trout's position diagnostic plus Ries & Ries on third-party credibility (scoped), Vaynerchuk's distribution frameworks, Graham's plain-writing essays.

Field tests at build time: the Nvidia CEO scandal week of Nov 2026 (crisis mode), a founder's SEC case from charge announcement to joint-stipulation dismissal (crisis and endings), and an audit of a live company-plus-founder content strategy (everyday mode). Test records live outside the published package.

# <img src="assets/icons/link-01.svg" width="20" height="20" alt="" /> Changelog

## 0.1.0 — 2026-11-23

First release. The skill runs recurring-character cartoon work as a system: a character bible holds the cast and the series rules, images are generated in sequence against a chained reference set, and every panel passes a drift check before it ships.

The release carries the bible template (series rules, per-character entries with the eyes as their own field, standing and working reference-set rules), the panel grammar for image composition, the drift check with its continuity block, and a worked example — a fox explaining game theory in a launch carousel — including the eye-drift failure that gave the drift check its eyes block.

Two design decisions are load-bearing from the first version. Generation inside a piece is chained, never parallel from the bible alone: each approved image joins the working reference set, so continuity compounds down the sequence, and a late change to an early panel reopens the check on every later one. And the skill is an images skill: headlines, captions, and the signature block are text layers behind the flags `headline`, `caption`, and `signature`, all off by default, set per job by the caller.

Built in publish shape from the first draft: output contract, worked example, limits and boundaries, icons, and a verify script. The first character instance runs outside the package, in its own folder, the way every user's series will.

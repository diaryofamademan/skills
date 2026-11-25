# The character bible — blank template

One bible per series. Copy this file, fill it in before the first piece, and keep it with the series' files.

The bible has three parts: the series rules, one entry per character, and the reference-set rules.

Nothing in a piece may contradict the bible. When a piece teaches the series something new — a character, a setting, a stronger style block — the bible is updated at the end of the run, so the next piece starts from what was learned.

## Part 1 — Series rules

**Series name:** the name the cast and the look are known by.

**The one-line look:** the series described in one sentence, the way you would describe it to someone who has never seen a panel.

**Cast rule:** which kinds of beings may appear. State it as a rule that can fail a panel: who is allowed, who is never allowed, and how counterparties are cast. Example shape: "Animals and robots only. Never humans. The other side of any deal is always cast as an animal."

**Locked style block:** the exact text pasted at the head of every generation prompt, word for word. It carries the art style, the line, the palette feel, and the standing prohibitions — including that the art is strictly text-free. Once a series has shipped, this block changes only by a recorded bible update, never inside a single job.

**Panel frame spec:** the panel's aspect, the border (weight and colour), the padding between the border and the page edge, the page size, and the paper colour. One set of numbers for the whole series.

**Palette:** the flat colours the series draws in, named per element — the paper, the ink, each standing background tone, and where each character's colours are recorded (in their entries).

**Line style:** the ink — its weight, its confidence, how much detail is allowed before a drawing leaves the register.

**Text-layer defaults for the series:** the series may record its own standing flag defaults (for example, a deck series that always runs with all three layers on). A job's flags override the series defaults; the skill's own default, when nobody sets anything, is all three off.

**Signature block contents:** if the series uses the signature layer, its fixed contents are recorded here once: the series' signature block is its three public handles and the page number, in a fixed order, at a fixed size and colour. The block is written here once and never retyped per piece.

## Part 2 — Character entry

One entry per character. A character with no entry does not appear.

**Name:** the character's working name.

**Species and role:** what the character is, and the part it plays — the lead, the standing counterparty, the expert, the chorus. Roles are cast, not redrawn: the counterparty in one piece is the counterparty in every piece.

**Proportions:** the build, stated so a drawing can be checked against it — head size against body, limb length, the character's size against the lead and against the frame.

**The eyes:** the exact eye spec — shape, size, colour, highlights or none, the brow line if there is one. The eyes get their own field because they are the trait that drifts first and the trait the audience reads identity from.

**Palette:** the character's flat colours, element by element — coat, chest, muzzle, wardrobe, props.

**Line style notes:** anything about how this character is drawn that the general line style does not cover.

**Signature props and wardrobe:** the objects and clothes that are part of the character — a suit, a pair of glasses, a hat — and the rule for when they appear.

**Reference set:** the standing anchor images for this character, listed by file. Every generation of this character carries at least one of them.

**Drift notes:** what has gone wrong with this character before, and the prompt wording that fixed it. This field is where a series keeps its scars.

## Part 3 — Reference-set rules

**Standing anchors** live in the bible. They are the images every generation starts from: at least one clean image per character, showing the face and the standard build with nothing occluding them.

**Working anchors** live in the piece. Within one piece, every approved image joins the working set the moment it passes the drift check, and later panels are generated against the standing anchors plus the working set — at minimum the immediately prior approved panel, plus any earlier panel sharing the setting, the props, or the secondary characters.

**Promotion:** an approved panel that shows a character cleanly may be promoted into the standing set at the end of a run. Promotion is recorded in the character's entry. A panel that passed narrowly — a fail fixed on the last trait — is not promoted; anchors are the best images, not the average ones.

**Currency:** the chain only points at approved, current images. When an image is regenerated, its old version leaves every set it was in, and anything generated against it is re-checked.

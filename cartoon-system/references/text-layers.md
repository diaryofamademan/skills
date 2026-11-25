# Text layers — the flagged layers

The cartoon system produces images. Text is laid over finished images as separate layers, and each layer exists only when its flag is on.

The flags are set per job by the caller — a channel's style bible, a deck spec, a series' own recorded defaults, or a one-off request. The skill never turns a layer on by itself.

| Flag | Layer | Default |
| --- | --- | --- |
| `headline` | The headline line | off |
| `caption` | The caption line | off |
| `signature` | The signature block | off |

## What off means

When a flag is off, the layer does not exist for that job:

- The image is delivered with no text in that layer's place.
- No space is reserved for it. Composition uses the whole frame, and the page geometry closes up.
- The one exception is headroom: a caller may ask for empty space to be left in the composition for text a later tool will set. Headroom is asked for explicitly, per job. It is never left by default, because a clean image with a mysterious gap reads as a mistake.

## What on means — the shared rules

- **Text is set as type at assembly.** It is never drawn by the image model. The generation prompt forbids text in the art itself, so the words stay crisp, spelled right, and correctable without regenerating an image.
- **Positions are series constants.** Each layer sits in its fixed place on every page of the piece, at its fixed size relationship to the page. A layer that moves between pages breaks the piece even when every word is right.
- **The words are not this skill's job.** Headline and caption copy comes from the caller or from a sibling skill — comms for public moments, stop-the-scroll when the piece must earn attention. This skill sets the type to the grammar and reports what it set.

## The headline layer — `headline` on

- **One line.** The headline is a single line of type. It never wraps. When a line runs long, the type size flexes down to fit the measure; the line does not grow to two lines.
- **Centred.** The headline sits centred on the page's measure, in its fixed position relative to the panel — in the reference series, directly below the panel.
- **The headline is the point.** It says the one thing the panel proves. The explanation is the caption's job; a headline carrying its own explanation is two layers fighting.

## The caption layer — `caption` on

- **Directly under the headline.** The caption sits immediately below the headline, in the same centred measure, when both layers are on.
- **Italic, smaller, quieter.** The caption is set in italics, at a smaller size, in a quieter colour than the headline. It is read second and should look like it.
- **The caption carries the explanation.** The nuance, the turn, the receipt — the part the headline withheld. One caption per panel, kept to a line or two at the caption's measure.
- **If the headline flag is off and the caption is on,** the caption takes the headline's position, anchored to the panel in the same place. It keeps its italic, quieter styling; only its anchor moves.

## The signature layer — `signature` on

- **Fixed contents.** The signature block is the series' signature block: its three public handles and the page number, fixed once in the character bible — the handles in their fixed order, each with its platform mark, and the page number in its fixed form (page of total).
- **Fixed position.** The block sits in the page's footer: the handles grouped at one side, the page number at the other, on every page or frame of the piece, at the same size and colour throughout.
- **On every page.** A signature layer that appears on some pages and not others is a defect. If the flag is on, it is on for the whole piece.
- **In video,** the block rides the frames the caller's spec names — an end card, a corner mark, every scene — as the channel's style bible declares. The contents and position stay the bible's; only the placement pattern follows the medium.

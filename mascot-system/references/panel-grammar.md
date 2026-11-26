# Panel grammar — image composition

This file governs the picture only: the box, what stands inside it, and how the inside is arranged.

Text — headlines, captions, the signature block — is not composition. It lives in `text-layers.md`, behind flags, and a panel is composed complete without it.

## The panel box

Every panel in a series sits in the same box.

- **One border.** A single clean outline, one weight, one near-black colour, recorded in the bible's frame spec. The border is part of the series' identity; a heavier or lighter border is a different series.
- **One padding.** The space between the border and the page edge is identical on every page — same measure top, sides, and bottom, across the whole set.
- **One page.** Page size and aspect are fixed per series. Panels are generated wide or tall to the series' format, never cropped into it after the fact.

The model draws its own border inside each generation, and model borders wander. So the frame is finished mechanically at assembly: each panel is cropped to its drawn border, then re-mounted on the series' paper at the spec's padding, with the border redrawn at the spec's one weight. This normalisation is part of the method. It corrects geometry; it never rescues a panel whose drawing drifted.

## Placement and scale

- **The lead holds its size.** The lead character occupies roughly the same share of the frame from panel to panel. A lead who is large in one panel and small in the next reads as a different character at a glance, even when the drawing is right.
- **Relative scale is a bible fact.** How big the counterparty stands against the lead, how big a prop sits in a paw — these ratios are recorded in the character entries and held across the piece. Nobody grows or shrinks across a cut.
- **Placement carries the conversation.** Characters face the action and each other; the eye-line between two characters in dialogue stays consistent, so a reader always knows who is speaking to whom. A character looking out of frame is a deliberate beat, not an accident.
- **Margin is breathing room.** Characters stand clear of the border. Nothing important touches the frame edge unless the panel's point is pressure or crowding — and then it is the only panel that does it.

## Backgrounds

- **Sparse is the register.** A ground line, a horizon, one or two set elements. The background supports the point; it never competes with it.
- **In palette, always.** Background tones come from the bible's palette. A new colour enters only as a recorded bible update.
- **A setting drawn twice is drawn the same.** When a piece returns to a room, a desk, a tree, the setting's elements match their earlier drawing — same furniture, same arrangement, same light. The continuity chain exists largely to hold this: later panels are generated with the earlier setting in their reference set.
- **No signage, no writing.** Backgrounds carry no letters, numbers, or logos. The art is text-free; anything that looks like writing in a background fails the panel.

## One idea per panel

Each panel makes one point, and the composition serves it: the character who carries the point is the visual centre, and everything else in frame is there because the point needs it. A panel with two centres has neither. When a beat needs two points, it gets two panels.

## From carousel page to video scene

The grammar travels. In a video, the panel becomes the scene frame:

- The same bible governs — same characters, same anchors, same palette, same line.
- The frame spec becomes the scene's aspect and safe margins; characters hold their scale against the frame the same way.
- A scene is a panel that holds or moves. The chaining rule matters more, not less: each scene is generated against the approved scenes before it, so a set built across a video stays one set.
- Text layers are set by the caller's flags for the job. In channel work, captions are normally laid in at assembly by the channel operator, and this skill delivers clean scenes with the caption flag off.

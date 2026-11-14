# <img src="assets/icons/megaphone-01.svg" width="20" height="20" alt="" /> comms (open skill)

**A decision procedure for founder communications.** This skill turns "go direct" into a procedure an agent or operator can run, check, and act on — for the announcement you choose to make, the crisis you did not, and the everyday output that decides whether anyone is listening when either one lands.

## <img src="assets/icons/presentation-01.svg" width="20" height="20" alt="" /> What this is

An **open, agent-oriented skill** for announcements, launches, crises, responses, and everyday founder content.

Most communications advice teaches tactics: post more, polish the release, hire the agency. This skill starts with the moment itself and asks:

1. What kind of moment is this, and what is actually at stake?
2. Who holds the knowledge this enterprise is built on — and is that who is speaking?
3. What position do we already hold in this audience's mind?
4. Which claims can the founder make in their own voice, and which ones need a witness?
5. What happens after we speak — and what will it cost?

Three disciplines make this version different:

1. <img src="assets/icons/mic-01.svg" width="20" height="20" alt="" /> **The story is the product** — the founder is the spokesperson because the founder holds the knowledge. Outsourcing the narrative is outsourcing the product in a different department.
2. <img src="assets/icons/search-01.svg" width="20" height="20" alt="" /> **Claims are sorted, not just written** — every material claim is marked "say it yourself" or "needs a witness," and the sort travels with the draft into the response plan.
3. <img src="assets/icons/security-check.svg" width="20" height="20" alt="" /> **The response is part of the message** — confidence is debt, a partial admission schedules the second scandal, and the guardrails govern the days after the statement, not just the statement.

## <img src="assets/icons/target-01.svg" width="20" height="20" alt="" /> Who it is for

| Audience | Use |
| --- | --- |
| **Founders / operators** | Launches, raises, hiring narratives, public failures, regulator and press moments, and the everyday content that builds the audience those moments draw on |
| **Chiefs of staff / comms leads** | Run the procedure with the founder instead of around them: prepare the moment, the claim sort, and the response plan before anything ships |
| **AI agents** | Load `SKILL.md`, run one moment at a time, and return the four-part output — the named moment, the claim sort, the statement, and the response plan — never a committee-voice draft |
| **Maintainers** | Refresh `references/` when sources change, bump `version` in `SKILL.md`, and record the change in `CHANGELOG.md` |

## <img src="assets/icons/workflow.svg" width="20" height="20" alt="" /> Process at a glance

```mermaid
flowchart LR
  subgraph build [Build the message]
    A["1. Name<br/>the moment"] --> B["2. Who<br/>speaks"]
    B --> C["3. Diagnose<br/>the position"]
    C --> D["4. Build<br/>the narrative"]
    D --> E["5. Say it<br/>plainly"]
  end
  subgraph ship [Ship and respond]
    E --> F["6. Go<br/>direct"]
    F --> G["7. Distribute"]
    G --> H["8. Response<br/>discipline"]
  end
  build --> ship
```

## <img src="assets/icons/presentation-01.svg" width="20" height="20" alt="" /> How to use with an agent

1. **Load** [`SKILL.md`](./SKILL.md) as the skill.
2. **Name one moment** and its mode — announcement, crisis, response, or everyday. The skill runs on one moment at a time.
3. **Pull references by branch:**

| Need | Read |
| --- | --- |
| The doctrine: what going direct means, and what it does not | <img src="assets/icons/megaphone-01.svg" width="20" height="20" alt="" /> [`references/go-direct.md`](./references/go-direct.md) |
| Build the message: position diagnostic and narrative structure | <img src="assets/icons/book-open-01.svg" width="20" height="20" alt="" /> [`references/narrative-and-position.md`](./references/narrative-and-position.md) |
| Ship it, and the days after: distribution and response rules | <img src="assets/icons/share-01.svg" width="20" height="20" alt="" /> [`references/distribution-and-response.md`](./references/distribution-and-response.md) |
| A complete graded example (Nvidia, November 2026) | <img src="assets/icons/alert-01.svg" width="20" height="20" alt="" /> [`references/case-study-nvidia-week.md`](./references/case-study-nvidia-week.md) |

4. **Hold the guardrails.** In an active legal or regulatory matter, counsel reviews any statement before it ships. The skill drafts, sorts, and grades; it does not publish, send, or speak for the founder on its own.

## <img src="assets/icons/link-01.svg" width="20" height="20" alt="" /> Folder map

| Path | One line |
| --- | --- |
| [`SKILL.md`](./SKILL.md) | Main skill: four modes, output contract, eight-step procedure, guardrails, worked patterns, limits and boundaries |
| [`CHANGELOG.md`](./CHANGELOG.md) | Version history |
| [`references/README.md`](./references/README.md) | Index of the reference files |
| [`references/go-direct.md`](./references/go-direct.md) | The doctrine spine: the founder as spokesperson, what "direct" means and does not mean, resistance is escalation, the ship-to-yap ratio |
| [`references/narrative-and-position.md`](./references/narrative-and-position.md) | The position diagnostic (Ries), the witness rule, and the five-part narrative structure (Raskin) |
| [`references/distribution-and-response.md`](./references/distribution-and-response.md) | The everyday engine (Vaynerchuk), the plain-writing gate (Graham), and the response rules in full |
| [`references/case-study-nvidia-week.md`](./references/case-study-nvidia-week.md) | A real crisis graded move by move against the procedure and guardrails, from public reporting |
| [`assets/icons/`](./assets/icons/) | Hugeicons Free SVG icons used in the documents |

## <img src="assets/icons/book-open-01.svg" width="20" height="20" alt="" /> Sources and credits

- The doctrine spine is Lulu Cheng Meservey, ["GO DIRECT: THE MANIFESTO"](https://www.getflack.com/p/go-direct-the-manifesto) (Flack, 2024), plus her talks for "resistance is escalation" and the ship-to-yap ratio.
- The narrative structure is Andy Raskin, "The Greatest Sales Deck I've Ever Seen" (2016).
- The position diagnostic is Al Ries and Jack Trout, *Positioning: The Battle for Your Mind* (1981), with Al Ries and Laura Ries, *The Fall of Advertising and the Rise of PR* (2002) — used in scoped form; the rest of the positioning apparatus is marketing, and the first-into-the-mind claim carries known counter-evidence (Golder and Tellis).
- The distribution discipline is Gary Vaynerchuk, *Jab, Jab, Jab, Right Hook* (2013) and the document-don't-create practice.
- The plain-writing gate is Paul Graham, "Write Like You Talk" (2015) and "How to Write Usefully" (2020).
- The case study is graded from public reporting by the Wall Street Journal, CNN, Barron's, and Bloomberg (November 2026).
- Content is **paraphrased**. No copyrighted book or article text is stored in this folder.

## <img src="assets/icons/check-list.svg" width="20" height="20" alt="" /> Contributing

- Open a PR with a better paraphrase, a new public source, or a graded public case study with the reporting cited.
- Keep the folder grep-clean: no personal, company, or live-matter details inside the skill.
- When a source changes, re-read it, re-paraphrase, bump `version` in `SKILL.md`, and add a `CHANGELOG.md` entry.

## <img src="assets/icons/legal-01.svg" width="20" height="20" alt="" /> License

MIT — see [`SKILL.md`](./SKILL.md) front matter. Third-party sources remain under their publishers' terms.

## <img src="assets/icons/calendar-03.svg" width="20" height="20" alt="" /> Version

Current skill version: see `version` in [`SKILL.md`](./SKILL.md) front matter. History: [`CHANGELOG.md`](./CHANGELOG.md).

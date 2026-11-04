# Contributing

Thank you for helping improve these open agent skills. This document describes how skills in this repository are structured and what we expect in pull requests.

## Skill folder conventions

Each skill lives in its **own top-level folder** (for example `fundraising/`). A complete skill includes:

| File / folder | Purpose |
| --- | --- |
| `SKILL.md` | **Required.** Agent instructions with YAML frontmatter at the top. |
| `README.md` | **Required.** Human-facing overview, usage, and folder map. |
| `CHANGELOG.md` | **Required.** Version history; add an entry when you bump the skill version. |
| `references/` | **Required** when the skill needs depth material (checklists, glossaries, paraphrased sources). Include a `references/README.md` index when there are multiple files. |

### `SKILL.md` frontmatter

Use YAML frontmatter with at least:

```yaml
---
name: short-kebab-name
description: "One line: when to use this skill and what it covers."
version: x.y.z
author: Open skills contributors
license: MIT
---
```

- **`name`** must match the folder name when possible.
- **`description`** should be a single clear sentence agents can match against user intent.
- Bump **`version`** (semver) for meaningful skill changes and document the change in `CHANGELOG.md`.

## Content rules

### No personal or company-specific data

Do **not** commit:

- Private cap tables, investor lists, or pipeline spreadsheets from real deals
- Internal email threads, term sheets, or contracts from live negotiations
- Credentials, API keys, or customer PII

Skills should read as **general playbooks** anyone can run with their own data.

### Credit your sources

- Paraphrase public sources; link to the **official URL** in the reference file or `SKILL.md` sources table.
- Do **not** paste full copyrighted documents (NVCA/ILPA/YC forms, book chapters, paywalled PDFs) into the repo.
- When you add or refresh a reference, note what you used (blog summary, official form page, etc.) so maintainers can verify later.

### Grep-clean hygiene

Before submitting a PR, run the **repository hygiene scan** your reviewer will use: a case-insensitive search from the repo root for legacy internal codenames, old private-repo path tokens, and company-specific product strings that must not appear in public skills. The scan should return **zero matches** anywhere in the tree.

The maintainer’s personal name may appear only in the root `README.md`, `LICENSE`, and this file—not inside skill folders. Each skill folder should likewise stay free of maintainer-identifying strings used for privacy checks (see that skill’s verification notes if present).

### Human checkpoints

Skills that touch fundraising, contracts, or external communication must keep **explicit guardrails**: agents draft; humans approve binding steps. Do not remove or weaken checkpoint language without a clear reason in the PR description.

## Pull request process

1. Fork or branch from `main` using the project’s branch naming conventions.
2. Make focused changes (one skill or one concern per PR when possible).
3. Update `CHANGELOG.md` and `version` in `SKILL.md` when the agent-facing behavior or references change materially.
4. Describe **what you changed**, **why**, and **sources** for new reference material.
5. Open a PR against `main`. Maintainers will review for structure, credits, and hygiene.

## Questions

Open a [GitHub Issue](https://github.com/diaryofamademan/skills/issues) for questions, source suggestions, or larger proposals before a big rewrite.

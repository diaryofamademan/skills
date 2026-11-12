# The SkillSpector skill gate

## What this is

Every skill change in this repo passes this gate before it lands. The
gate runs NVIDIA's SkillSpector security scanner over the skill
directories a pull request changes and compares the findings against the
suppression baseline in this folder (`baseline.json`). The baseline
holds the findings that a human or Muse already read and triaged by
hand, each with a one-line reason. The gate is the CI form of the
install gate adopted on 2026-11-11, after a pilot scan of the whole
skill library found no malicious skills and showed that raw scanner
scores are not trustworthy on their own: the single CRITICAL finding
and the top HIGH findings in the pilot were false positives on hand
inspection. The baseline keeps that known noise from burying a real
signal later.

Tool: SkillSpector v2.12.0, commit
`3c2c5d7a1ee148d228398070b91d3beaf0d73b11`. The workflow installs it at
that pinned commit on every run. Scans run in static mode
(`--no-llm`). The scanner's AI layer is off, so results are
static-analysis results and a human still reads flagged code during
triage.

## How it runs

The `Skill gate` workflow triggers only on pull requests that touch
skill directories (or the gate itself). It works out which skill
directories the pull request changed, scans just those, and fails the
check when any HIGH or CRITICAL finding is not in the baseline. A
scanner error also fails the check. The gate fails closed, never open,
and because the trigger is narrow, a scanner problem can only ever
block skill-changing pull requests, never ordinary work.

To run it by hand against any skill directory:

```bash
.skill-gate/gate.sh <skill-dir> [<skill-dir> ...]
```

It prints one result per skill and a final verdict:

- Exit 0, `GATE: PASS` — cleared.
- Exit 1, `GATE: BLOCKED` — an unbaselined HIGH or CRITICAL finding.
  The report names the skill, rule, file and line, and the scanner's
  explanation.
- Exit 2, `GATE: ERROR` — the gate itself failed (bad path, scanner
  produced no report). Treat an error as blocked.

## What blocks and what does not

- A **HIGH or CRITICAL** finding blocks, unless the baseline covers
  that exact skill, rule, and file.
- **MEDIUM and LOW** findings never block. The gate prints their
  counts only.
- **Baselined** HIGH/CRITICAL findings do not block. They are counted
  in the output as suppressed, so suppression is never silent.
- The baseline is specific on purpose. It is not a list of exempt
  rules. The same rule firing in a new skill, or in a new file of an
  existing skill, still blocks. Shipped Python bytecode (`.pyc`) and
  pipe-to-shell patterns are baselined only for the specific existing
  files where a human accepted them. In a new skill, they block.

## How a finding gets into the baseline

1. The gate blocks and names the finding.
2. A human or Muse reads the flagged code or text by hand, not just
   the scanner's explanation.
3. If the finding is a false positive, or a real pattern that is
   acceptable in that skill's context, add an entry to `baseline.json`
   with the skill, rule, file, and a one-line reason that says which
   it is — false positive (and why), scanner coverage gap, or accepted
   in context (and why it is safe there).
4. No entry without a read and a reason. When in doubt, the finding
   stays unbaselined and the change does not land.

A pull request that edits `baseline.json` weakens or strengthens every
future run, so it needs the same care as a change to the gate itself:
each new entry must carry its reason in the file, where reviewers can
see it.

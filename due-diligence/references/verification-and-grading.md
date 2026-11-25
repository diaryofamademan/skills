# Verification and grading

How a sweep decides what an item is worth: the status taxonomy, the identity rule in full, outcome weighting, and the red-flag rubric.

## The status taxonomy

Every item in a fact sheet carries exactly one status. The definitions are mechanical on purpose — a status is a statement about the evidence, not about the subject.

- **Verified.** A primary source confirms the item as stated. The source and the date checked are cited. (A degree the registrar confirms; a license the board shows active; a judgment the docket records.)
- **Partially verified.** A primary source confirms part of the item and is silent or unreachable on the rest. The fact sheet states which part is which. (A company exists and the subject is an officer, but the claimed founding year is contradicted by the formation record — the role verifies, the year does not.)
- **Unverified.** No primary source could be reached that speaks to the item either way. Unverified is a statement about the sweep, not about the claim: it means "not checkable in public sources," and it is the correct status for most mid-career employment history.
- **Contradicted.** A primary source says otherwise. The strongest status a sweep produces, and the one that demands the most care: quote the claim, quote the record, and check identity once more before it ships, because a contradiction attributed to the wrong person is the worst error this skill can make.
- **Not found.** The named sources were swept for the item and do not carry it. Always stated with the sources ("not found in PACER, the state portal, or the licensing board"). Not found is local to the sweep. It never generalizes to "does not exist."

## The identity rule, in full

Attribution requires **two independent identifiers** tying a record to the subject, beyond the name itself. Independent means the identifiers come from different facts about the person: city plus employer; profession plus a named entity; an entity plus its registered officer address matching a known anchor. Two mentions of the same employer in two aggregator profiles are one identifier repeated, not two.

Alongside the excluded matches sits the **candidate set**: every person or entity the sweep has not yet resolved or excluded, each carried as a named entry with the evidence that would confirm it and the evidence that would eliminate it. Candidates are worked until they resolve or exclude; a candidate still open at the end of the sweep is reported as open, with its confirm/eliminate criteria, rather than quietly dropped. Fused-identity errors — two people's records merged into one confident file — are born in dropped candidates, not in namesakes.

The namesake log records every excluded match: the name, the source, and the separating fact. Its purpose is threefold — it demonstrates the sweep discriminated, it prevents a later reader from re-importing the wrong person, and it occasionally surfaces a real finding (a subject whose namesakes keep appearing in the same city and field may be one person under variants, which reopens resolution rather than closing it).

When resolution fails, the fact sheet leads with it. A diligence report that buries "we could not confirm this record belongs to the subject" under confident findings has failed at its only unforgivable task.

Ownership resolution has its own failure form, graded the same way: the trail that ends at a documented opacity point — a nominee of record, a trust, a layer in a jurisdiction whose register stops there, a holding set just under a disclosure threshold. The stopping point is reported as a finding with its mechanism ("traced to X; X's register does not publish beneficial owners"), because "we cannot see who owns this" is decision-relevant in itself, and grading it as a mere gap would bury it.

## The screening log

A screening negative is only as strong as its log. The log records: the lists searched (sanctions, PEP, debarment — named, with jurisdiction), the exact names, variants, entities, and addresses screened, and the date. Hits are resolved at the primary list and then either attributed under the two-identifier rule or logged as namesakes. A fact sheet that says "sanctions: clear" without the log has made a claim the next reader cannot check; the log is what turns the sentence into evidence.

## Outcome weighting for legal items

Legal items are weighted by where the process ended, in this order of evidentiary weight:

1. **Judgment, verdict, plea, sanction, revocation** — a process concluded against (or for) the subject. Full weight, in the direction it concluded.
2. **Dismissal, acquittal, expungement of the claim** — a process concluded the other way. Full weight, opposite direction: a dismissed suit is evidence about the suit, not about the subject's character, and it is recorded as a closed matter.
3. **Settlement** — the parties ended it. A settlement records that a dispute existed and was resolved without a finding; it carries the fact of the dispute and nothing about who was right. Settlements with regulatory bodies sometimes include findings or neither-admit-nor-deny language — quote which.
4. **Pending** — a live process. Reported as pending, with the filing date; weight suspended.
5. **Filed, no outcome reachable** — a claim exists in a public record. Lowest weight; context only.

Pattern beats instance. A single case at any level is usually base rate. A repeated pattern — the same counterparty type, the same claim shape, across years and jurisdictions — is the finding, and the fact sheet presents the pattern as the item, with the cases as its evidence.

## The red-flag rubric

A red flag is a graded finding, not a vibe. Grade by asking three questions of the finding: **How close is it to the commitment?** (A fraud judgment in the same kind of dealing is closer than one in an unrelated field.) **How recent, and is it a pattern?** (Recent and repeated grade up; old and single grade down.) **Is it resolved?** (A discharged bankruptcy, a satisfied lien, a license reinstated — resolution grades down; an open, unexplained, or denied-against-the-record finding grades up.)

- **Blocks the commitment:** a true sanctions match; a fraud judgment or plea in the dealing now proposed; identity that cannot be resolved; a required license revoked for cause or never held, where the claim of holding it was material.
- **Must be explained:** any contradicted claim that was material to the pitch (a degree, a role, a raise); financial distress inside the window the commitment's money would be exposed; a litigation pattern against partners, employers, or investors; an entity chain that dissolves and re-forms around obligations.
- **Note and proceed:** litigation at field base rate; old resolved distress; unverified minor claims (a title inflation from "led" to "ran" is noted, not fatal — and noted, because the direction of inflation is information).

The rubric's discipline is symmetry: the same three questions, asked of every finding, so that a flag's grade can be defended to the subject if it ever has to be — and the standard for shipping a flag is exactly that: could this grade be defended, from the cited record, to the person's face?

## Base rates, kept in view

Diligence fails by pattern-matching to scandal. The corrective is the reference class. Founders of a certain age and ambition commonly carry: one or two civil suits across a career (often as their company's defendant, not personally), a dissolved entity or two, a trademark or contract dispute, and press that includes at least one unflattering story. None of that is a flag; it is the texture of an operating life. Flags begin where the record departs from the class: personal (not corporate) defendants, fraud or dishonesty as the claim's subject rather than its boilerplate, repetition across counterparties who do not know each other, and claims about the self that primary sources contradict. A fact sheet that flags the base rate teaches its reader to ignore it, which is the one outcome worse than no sheet at all.

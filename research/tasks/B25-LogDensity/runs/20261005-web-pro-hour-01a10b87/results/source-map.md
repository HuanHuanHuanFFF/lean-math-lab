# Source map｜Erdős 25 independent B

Access date for external checks: 2026-10-05. The initial public-source survey was limited to the opening part of the budget. Search snapshots were not treated as current publication records. No new external proof was independently Lean-verified.

## S1 — Exact platform target and live status
- URL: https://conjectures.io/problems/erdos25-erdos-25
- Inspected the exact activated-singleton statement, positive and strictly increasing moduli, and the displayed formalized target. The accessed page listed no published resolution. This is not a comprehensive literature-negative claim.
- Platform task id: `fc-6a786f99-erdos25-erdos-25-7c4afef3c2-formalized-v1`.
- Displayed source type hash: `0296f636686c1a8f82bdf2d005e25e6259d09e61f6181662bdea0e64f94d3e24`.
- Displayed commitment: `0bef236ebca78d8ce2651004a5ec08b4e69a90df7b67dbb0a49c0c1fc87c7a17`.
- A stale search result had a different bounty amount; it was not used. No monetary amount is needed for the mathematical report.

## S2 — Uploaded frozen input
- File: `Erdos-156-25-128-Web6Pro-1h-20261005-v1.zip`.
- SHA256: `582093b77ff88c58c921a0ac925c75bbf40d430e5ee17bb6cd90f4a37aec05ec`.
- Read: `TASKS/B25.md`, `COMMON.md`, `FIXED-TARGETS.json`, exact Lean statement, helper density definition, and B25's 486 verification report.
- Input survey timestamp: `2026-10-05T11:02:43.506084+00:00`.
- Platform synthetic repository commit: `6a786f997e18e8f095762a2830d191b7e25e505e`.
- Toolchain/mathlib pins reported by the input: Lean `v4.33.1`, mathlib `0df444a360eaa60ab8c11dca51a86af692955474`. They were NOT installed or rebuilt here.
- `input/MANIFEST.json` is the ORIGINAL archive's manifest, not the manifest of this result package. It lists some original files not recopied into this B-only subset. The result package has its own root `MANIFEST.json`.

## S3 — Upstream Lean reading copies and density definition
- Reading-copy commit: `89294ea02bd7cd678d59984add52cb4baef3dbf4`, not the platform synthetic commit.
- Local copies: `input/SOURCES/B25/FormalConjectures-25-current.lean`; `input/SOURCES/HELPERS/FormalConjecturesForMathlib/Data/Set/Density.lean`.
- Main declaration `Erdos25.erdos_25` still has `answer(sorry)` and a proof placeholder. `HasLogDensity` uses the harmonic sum divided by `Real.log n`; 0 contributes 0. Adjacent helper declarations marked `proof_wanted` were not assumed available as compiled theorems.
- Apache license retained as provided in `input/SOURCES/FormalConjectures-LICENSE`.
- Problem reference: https://www.erdosproblems.com/25 . Direct fetching was unreliable; a cached official search result displayed the activated-singleton statement and OPEN. The live platform, not that cache, was used for the narrow current-status report.

## S4 — Original 486 construction parameters
- Author source: Shouqiao Wang, `486/paper.tex` at commit `61325b10bbdc29f4fb5e0618b414b9f2189333ad`.
- URL: https://raw.githubusercontent.com/ShouqiaoW/erdos/61325b10bbdc29f4fb5e0618b414b9f2189333ad/486/paper.tex
- Used only as the source of the multi-residue construction's scale, prime-signature, window, and epoch architecture. The original uses multiple residues per modulus. It cannot be imported as a B25 counterexample.
- The original paper bytes are not redistributed here; no permission was assumed from mere public accessibility. New capacity proofs are in `proofs/`.

## S5 — Supplied Pilus verification report for 486
- Pinned reading report commit: `e62945652c0a9e991f01e588d6a4025d24c47e8f`.
- Local copy: `input/SOURCES/B25/Pilus-current-reports-erdos-486.md` with provided `Pilus-LICENSE`.
- Its author's reported Lean checks are third-party claims, not this run's checks. The supplied input records missing older report links; those missing bytes were not invented or silently substituted.

## S6 — Partial first-kill/entropy note
- Przemyslaw Chojecki, *Truncated Congruence Sieves and Erdős Problem 25*, dated March 19, 2026.
- URL: https://www.ulam.ai/research/erdos25.pdf
- Read text and screenshots of pages 1, 9, and 10 (PDF page indices 0, 8, 9). The note explicitly leaves its uniform transient/charge condition unproved. It is not a full solution.
- Used to identify the existing first-kill tower obstruction. This run separately derived the exact congruences and tested finite parameters. The full PDF is not redistributed.

## S7 — Existing bounded-gcd / CRT partial class
- Patrick White research report, labeled partial and not independently verified, dated July 27, 2026.
- URL: https://erdosproblemaday.com/report/25
- Reports a fixed-M reduction with pairwise coprime quotient moduli, including a bounded-pairwise-gcd class. It was recognized as existing work and not presented as a new result here. Its reported experiment counts are not this run's counts.
- This source is a research working report, not a substitute for independent mathematical review.

## S8 — Platform terms and payment limits
- URL: https://conjectures.io/terms
- Accessed terms displayed an August 13, 2026 effective date. Displayed bounties and machine checks do not by themselves guarantee novelty, acceptance, review eligibility, or payment.
- Task-specific NOT_NOVEL language in the input was not independently re-audited in full. No qualification or bounty claim is made.

## Source use versus this run's contributions
- Publicly sourced: problem and activation convention; platform identity/status; 486's multi-residue architecture; the prior first-kill tower; existing partial classes; terms.
- Derived and written here: (MB), the >1/8 epoch barrier in widened, feasible modulus bands, the signature-family reciprocal bounds and their smaller-modulus strengthening, the head-excess extraction proof, the finite-center derivation, and the explicit N=24 failure of local zero-centering. Standard ingredients and unverified priority are disclosed.
- Computed here: only the scripts, parameter ranges, and outputs recorded under `experiments/`, `data/`, and `logs/`.
- Not done: complete B25 proof or counterexample; independent literature-priority determination; Lean/kernel/axiom checking; publication or submission.

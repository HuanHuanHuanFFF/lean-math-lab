# Final integrity audit

Audit scope: baseline `7fd3928656489afe2c80698f0a09d1d933444186`, observed branch
`GPT-work/b699-low-index-20260909-b41a5a63`, at observed HEAD
`84dab4e389fb8d7fc43c2b18675d2d73e92ebaa8`. This note is read-only
auditing evidence; it does not promote any candidate source and does not run
Lean or any certificate computation.

## Fresh Lean acceptance

### Generic 151-row FiniteCover root

`verification/20260909T091130Z/evidence.json` is a successful fresh run:

- root: `lean/FiniteCover.lean`;
- 21 project sources compiled, all exit codes 0;
- current hashes of all 21 sources match their recorded post-compile hashes;
- Lean 4.33.1, 1536 MB, single-threaded verifier settings;
- 65 unguarded axiom outputs matched and 6 guarded `#print` entries were
  metadata only; all accepted actual axiom names are within the standard
  allowed set;
- the restored `lean/LargeDivisorWitness.lean` hash is
  `8123d5ec2a766974bf9cad0753b0261405ef71548cd3dee625fead65ef0c39f0`.

This root accepts the generic `FiniteCover` soundness layer and its imported
height, power-enumeration, large-divisor, and interval modules. Its source
closure does **not** contain `lean/coverage/rows/Row*.lean`,
`lean/coverage/Coverage*.lean`, or `lean/LowIndexComplete.lean`; therefore it
does not accept the 151-row data consumer.

### TrialPrimeCheck

`verification/20260909T100325Z/evidence.json` is a separate successful fresh
run for `lean/TrialPrimeCheck.lean`:

- one source, exit code 0;
- Lean 4.33.1, started `2026-09-09T10:03:25.850619Z`, finished
  `2026-09-09T10:03:41.232683Z`;
- one actual axiom output, no unexpected axioms;
- source SHA-256:
  `990a479d4a73d1032fcb7621e4eef098cec4430342c040e3c91581269dd3a23d`.

This proves the bounded trial-primality soundness lemma in that file. It is not
an integrated B699 consumer.

Earlier fresh accepted closures remain valid evidence: ThreeWindowWeights is
at `verification/20260909T065147Z/evidence.json`, and SmallPowerIntervals is
at `verification/20260909T074627Z/evidence.json`. Their assumptions and output
boundaries are recorded in `notes/delivery-evidence-index.md`.

## Current hash-bound data and snapshot distinction

The current height manifest is
`experiments/height-certificates/manifest.json`:

- input `notes/heights/two-colour-cover.json` SHA-256 is
  `69d16096c414177438342f1dca93eeb256ad20850ac5b9f36387e9c1bb0607a0`;
- current outputs are `HeightCertificateData.lean` SHA-256
  `4028f101e9d3e21bb9a3abbcba49dab686260df2e1f303b253503be6f1dcf27a` and
  `RegisteredHeights.lean` SHA-256
  `9c1c887fa9c6b385ebf356fda79802701068d65111de29aedf82042bbe0f698c`;
- the explicit tuning is `maxRecDepth 65536`, `maxHeartbeats 0`, and
  `exponentiation.threshold 1000000`.

`manifest-history-20260909T073358Z.json` is an earlier snapshot. Its different
`HeightCertificateData` hash reflects the later real `Mathlib.Data.Nat.Basic`
import, explicit Decidable instance, and axiom-print source tuning. The input
hash and JSON table hash remain the same; this is source evolution, not a
mathematical counterexample.

The zero-boundary manifest `notes/zero-boundary/manifest.json` covers exactly
`i ∈ {28,31,34}` and marks paper/exact computation complete while marking full
Lean incomplete. The earlier certificate at
`notes/zero-boundary/verification/20260909T090620Z/` is the logarithmic
reduction-height certificate establishing the finite bound `n < 10^25`. It
remains a required input to the later certificate at
`notes/zero-boundary/verification/20260909T092400Z/`, which restores all
three finite candidate rows (`28`, `31`, `34`) and reports unresolved count
zero. These are serial evidence stages, not replacement snapshots; both
certificates and their hashes remain part of the dependency chain. Both are
non-Lean records.

The combined paper/exact index count is 154: the 151 positive-index rows
`{29} ∪ [35,184]` plus the three zero-boundary rows `{28,31,34}`. The current
height and finite-cover Lean data concern only the 151-row chain. No evidence
here promotes all 154 rows to a Lean theorem.

The current split finite-cover manifest is
`experiments/lean-cover-data/split-manifest.json`: 151 rows, 37,313 goods,
3,919 layers, and eight row-importing chunks. It explicitly records
`lean_run=false`; its presence and hash coverage do not raise its evidence to
kernel acceptance.

## Accepted, development-only, and candidate states

Fresh accepted consumers in this run are:

- `ThreeWindowWeights.lean` under `verification/20260909T065147Z`;
- `SmallPowerIntervals.lean` under `verification/20260909T074627Z`;
- the generic `FiniteCover.lean` closure under `verification/20260909T091130Z`;
- `TrialPrimeCheck.lean` under `verification/20260909T100325Z`.

`HeightCertificate.lean`, `HeightCertificateData.lean`,
`RegisteredHeights.lean`, `CofactorCover.lean`, `LargeSmallPowers.lean`,
`SmallPrimeLocalization.lean`, `PrimePowerEnumeration.lean`,
`LargeDivisorWitness.lean`, and `IntervalCover.lean` appear in the successful
091130 closure, so their current source and transitive axioms are covered by
that fresh run. Their standalone development records remain development
records, not separate acceptance claims.

The 151 split row files, `Coverage00`–`Coverage07`, and
`LowIndexComplete.lean` are candidates awaiting a fresh root that imports
them. The prior combined failure at `verification/20260909T083630Z` is kept as
history; its `sorryAx` was from the then-failing FiniteCover source, while the
generic FiniteCover root later passed at 091130. No row-data consumer has been
declared accepted in this audit.

## Link and boundary checks

Local Markdown links in the run README, height handoff, low-index handoff,
zero-boundary README, and the existing delivery index were checked read-only;
no broken local target was found. The specific delivery targets above resolve
to files in this run.

The minimal next cost/acceptance step is one representative row in a
clean output directory, with elapsed time and memory recorded. Only if that
cost is acceptable should the complete 151-row table be attempted. The control
center has stopped the full-table sprint, so this audit does not recommend an
immediate `LowIndexComplete` run. A later full run must use a fresh
repo-relative output directory and verify current source hashes, strict source
policy, actual axioms, and the final
`common_of_low_index_finite_cover` consumer. Until that staged check passes,
the statuses must remain:

```text
154 paper/exact finite coverage: recorded, not all Lean
151 height rows: height table and unbounded-tail consumer accepted inside the generic closure; only the full-range coverage table consumer is pending
151 complete finite-cover rows: generated and text-checked, fresh Lean acceptance pending
```



## Revision note

The primary task reviewed and corrected these four statements: the observed
branch/HEAD, the serial dependency between the two zero-boundary certificates,
the staged representative-row cost check, and the distinction between accepted
height/tail consumers and the pending full-range coverage table. No new
mathematical or Lean run was performed for this wording correction.


# i=11 cubic high-block extension candidate

This directory is an isolated, candidate-only continuation of the six accepted-source block rows for `i=11`. It preserves the old `H=2^4096` data by SHA and proposes a separate high segment ending at the candidate height `H=2^15360`. The latter is a finite arithmetic experiment, not a proved global bound and not a Lean acceptance. No Lean, Git, network, CRT search, or shared source was changed.

## Independent checks

`generate_i11_high_blocks.py` does not import the historical generator or checker. It rechecks all 309 old blocks from `block_11_{p}_{q}.json` with the old modulus, inverse, 21 signed residues, chain, endpoint, and low-cutoff conditions. It then starts each new row at exactly `old_amax + 1`, computes `B`, the inverse, and the maximal safe `L` from the same integer inequalities, and independently rechecks the complete new chain. The old max exponents are pair-dependent: `(2,*)` ends at 4095, `(3,*)` at 2584, and `(5,7)` at 1764; no 4095 assumption was made for the latter pairs.

The high candidate has six pairs, 13 blocks per pair, 78 blocks total, and 1,638 signed checks. Every block carries both the historical keys (`K`, `B`, `inverse_hex`) and the consumer keys (`u`, `b0`, `v`). Shift zero is represented by `Q` in the Python checker, with one such mapping in every block. Each pair has `p^amax < 2^15360 <= p^(amax+1)` and an exact old-to-new transition with no gap. The old low cutoffs are retained and checked as strict inequalities: `(2^cut-D)^2 > p^(3*(astart-1))` and `2^cut > D`.

The bounded `(2,3)` pilot and the serial six-pair run record exact per-pair wall time and sampled process working-set peak in `pilot-summary.json` and `full-summary.json`; the latest full run is below the 201,326,592-byte (192 MiB) guard. These JSON values are the authoritative resource record rather than a rounded README restatement. This is a single standard-library Python process with no children; it is not a Lean or process-tree measurement.

For each of the six pairs, `tamper-results.json` records two negative checks: increasing the first inverse by one and shifting the first high start by one are both rejected.

## Lean handoff shape

`CubicBlockExtensionTable.lean` is a generated table for the agreed interface:

```text
BlockDatum {u L b0 v : Nat}
coverageCheck p q w start stop rows
```

It defines a Bool `blockCheck` for the modulus, inverse, and all 21 signed checks, a chain `coverageCheck`, `lowCutoffCheck`, one list per pair, and `allHighChains`. The file is intentionally uncompiled; its `import Mathlib` is only a source-level candidate dependency. `SOURCE_MAP.json` records the exact old-to-new field mapping and pair endpoints.

## Provenance and limits

`old-source-summary.json` contains the actual SHA-256 values and the independent old-chain summary. `artifact-sha256.json` hashes every candidate artifact. The old input code and six result files remain at their original paths and are read-only inputs. The candidate does not establish that 15360 is the required or sufficient global height, does not perform cofactor enumeration, and does not prove the surrounding mathematical reduction.

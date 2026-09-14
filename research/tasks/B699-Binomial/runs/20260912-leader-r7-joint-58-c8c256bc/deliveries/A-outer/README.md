# B699 Pro A — 2026-09-13 outer-exponent delivery

Start: REPORT.md → HANDOFF.md → notes/PROOFS.md → FAILURE_BOUNDARIES.md.

## New receiving (Python standard library)

```sh
python code/check_manifest.py
python code/reproduce.py
```

This runs new exact arithmetic receiving, source-member SHA256 validation,22 semantic mutation tests and new finite diagnostics. It does not run discovery, old content/cubic/finite-terminal verification or Lean. The proof is a prose proof over explicit frozen inputs, not automatically formalized.

Optional discovery code uses numpy,scipy,sympy. Its recorded outputs are included; no need to rerun it to receive the new positive obligations. Floating-point probe outputs are explicitly not proofs. `receive_high_degree_candidates.py` is the Sympy exact recheck for the separate quartic exploratory result.

## Lossless source member layout

The two unchanged input outer ZIPs are identified by exact SHA256 in SOURCE_INPUTS.json. Every non-ZIP data member is copied unchanged under inputs/fibres or inputs/positions. Their shared identical nested58-family ZIP is retained byte-for-byte exactly once in adopted/BASELINE_58_FAMILIES.zip. The original outer ZIP containers are not redundantly nested again; no source member is omitted. Paths in SOURCE_INPUTS.json provide complete coverage.

Run check_manifest.py before reproduction, because reproduction updates the logs in the extracted working copy. SHA256SUMS.json covers this delivery's data members, excluding itself. External release receipt records archive hash/CRC and clean-directory replay. All counts are in logs; frozen-source checks are not old theorem replays.

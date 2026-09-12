# i11 cubic block numeric consumers

This is the run-owned consumer staging directory for the relocated i11 cubic extension. The extension directory under the same run is a frozen input: its location-dependent generator was not executed and none of its files were rewritten. This directory only reads the six old H=2^4096 JSON rows, the six relocated high H=2^15360 JSON rows, the historical generator/checker sources, and the existing Generic checker sources.

## Independent finite recheck

normalize_and_check.py independently normalizes both historical K/L/B/inverse_hex rows and new u/L/b0/v rows to the frozen BlockDatum shape. It checks every block's modulus interval, modular inverse, all 21 signed displacements with zero represented by Q, chain continuity, old endpoint, high endpoint, old low cutoff, and old-to-high connection. It does not import or copy the checker definition.

The resulting static-checks.json is a standard-library-only PASS: 309 old blocks plus 78 high blocks, 387 total, 8,127 signed checks, 387 zero-to-Q checks, all six connections gap-free, and all endpoint/tamper checks rejected as expected. This is finite data validation only; no Lean command was run.

input-manifest.json records the absolute path, repository-relative path, byte size, and SHA-256 of 24 fixed inputs, including all twelve block JSON files, the historical block_targets.py and check_targets.py, the relocated extension provenance files, and the direct Generic checker/Cover source chain.

## Lean pilot source

candidate/HighestNewBlock23.lean contains exactly one source-only pilot: the last new (p,q)=(2,3) block,

    u = 14436, L = 923, b0 = 6072

with the exact inverse witness from the relocated JSON. It imports the existing run module
research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.CubicBlock.Checker
and calls Math.B699.CubicExponentBlock.blockCheck through by decide, followed by #print axioms. It contains no copied blockCheck, residue, or coverage definition, and no native_decide, sorry, or admit. The source is 3,425 bytes; the largest integers in the certificate are recorded in static-checks.json (17,206-bit bound, 14,437-bit p-power, 9,624-bit q-power and inverse). The pilot was intentionally not executed.

cover-blockdatum-map.json is a pure numeric mapping for all six pairs, using the existing Math.B699.CubicBlockCover.BlockDatum field names. It is data for a later Generic consumer, not a new soundness implementation. normalized-cubic-blocks.json preserves normalized rows together with pair-level source provenance.

No Git operation, network access, original extension generation, batch Lean proof, or claim that H=2^15360 is a global bound is made here.

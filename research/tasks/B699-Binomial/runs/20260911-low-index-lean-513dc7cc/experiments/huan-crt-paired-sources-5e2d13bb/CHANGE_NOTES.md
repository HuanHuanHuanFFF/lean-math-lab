# CRT paired source preparation

This experiment prepares a source-only candidate for the 23 unaccepted CRT
grids in the existing 171-job plan. It creates `495` short
production-namespace `PackNNNPk.lean` files and `133` Chunk
import replacements. Every pack contains one or two original row bodies, with
the leading imports collected at the top. The public namespace, theorem names,
proof bodies, and `#print axioms` lines remain byte-identical inside each row
body. Every candidate Chunk keeps its original body bytes and changes only its
leading imports from Row modules to Pack modules.

The existing `CrtStage0Pair23` rectangle and its bound Chunk receipts were
skipped entirely. The `FREEZE.json` record rechecks all Stage0Pair23 source
SHA-256 values listed by the first accepted rectangle evidence. Original
Row/Data/Composer files remain in the run's `lean` tree and were not edited.

The candidate plan root SHA is `b1a6c21343716a21a497f0921ad6a359a4dfb53820bbded3886dabf12cc21750`. It is a
deterministic SHA-256 over the 171 plan-job mappings and is a source-package
identity, not a Git commit and not Lean acceptance. The generated-source root
SHA is `3653c5b23ba1001048c02d3ee38294629164589a4ee6056f284fb035bc0b838c`.

The 1536MiB recommendation comes from the independent two-row, 136-cell pilot
receipt `crt-two-row-packing-1536.json`. It is a starting value for the primary
task; the first new grid block still requires a fresh measurement, and this
source preparation itself runs no Lean.

Use `python -B generate_paired_sources.py` to rebuild the candidate and
`python -B verify_paired_sources.py` for the independent source-only checks.

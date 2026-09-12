# CRT complete grid source candidate

This directory contains a source-only candidate for the first four CRT
descent stages. It was generated from the frozen exact JSON records and was
not passed to Lean. It does not change the existing lean/CrtStage0Pair23
sources, the verifier, the accepted library, or Git state.

The candidate has 24 grids, 147 disjoint chunks, 35,545 cells, and 746,445
signed displacement rows. A chunk contains at most eight consecutive a rows,
a data module, one row module per a, a symbolic chunk composition, a data
axiom audit, and a final chunk axiom audit. The 13 existing Stage00 (2,3)
Chunk000 files are referenced from the run lean tree and rechecked by SHA;
they are not copied into this directory. The other 146 chunks are new source
files under candidate/lean.

Each cell is represented by the exact JSON inverse, default interval, and
signed-displacement exceptions. Only the per-cell theorem uses
decide +kernel. Row and chunk theorems use interval_cases,
blockCheck_append_rows, and the existing blockCheck API. Each grid has a
CompleteComposer.lean that transfers its chunk checks to one total globalData
function and appends the chunks symbolically to rectangle_check; it does not
decide a whole row, chunk, or rectangle.

The source mapping is:

- candidate/lean/CrtStage{stage}Pair{pq}/ChunkNNNData.lean: exact cell and
  hierarchical rowA/chunkData dispatch.
- ChunkNNNRowAxx.lean: direct cell checks and one symbolic row check.
- ChunkNNN.lean: symbolic row append and chunk_check.
- ChunkNNNDataAudit.lean and ChunkNNNAudit.lean: axiom-print entry points.
- CompleteComposer.lean and CompleteComposerAudit.lean: grid-level transfer,
  append, and audit entry points.

manifest.json records all input paths and SHA-256 values, chunk ranges,
metadata (Stage00 through Stage03), source counts, and every generated Lean file SHA-256. FREEZE.json records
the source-only status. verify_complete_grid_sources.py independently reloads
the input JSON, parses every generated CellData and dispatch chain, checks
source hashes for the preserved Chunk000 set, and writes STATIC_CHECK.json.
The static check does not invoke Lean.

The candidate remains pending until the primary task copies the selected
sources into the run lean tree and performs the actual strict Lean
verification with the pinned toolchain.
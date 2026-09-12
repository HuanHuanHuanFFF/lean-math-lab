# CRT direct-cell granularity experiment

Owner /root/i18_downstream_review. Start 2026-09-11 21:01:40 UTC; checkpoint 21:21:40 UTC (not a deadline). Only this experiment is writable. Do not run Lean/Git or modify original/integrated chunks.

Captured red: verification/20260911T205716357039Z failed Chunk000 at M1536, exit3221226505, uncaught lean::memory_exception at interpreter. The original whole8x68 block and a68-cell row have failed; smaller pilot blocks reportedly passed. No new runtime hypothesis is proved here.

Ranked hypotheses for primary serial checks: (1) a single68-cell evaluator batch peaks too high; direct single-cell21-shift checks should reduce peak. (2) a/b lookup unfolding is a large component; direct cellA*B* constants should reduce it. (3) cumulative declarations/evaluator state may still dominate; separate row modules and an8-cell pilot distinguish this from one huge Bool evaluation. No total memory success is claimed before rerun.

Use existing captured failure as the diagnostic baseline because parent explicitly prohibits worker Lean. This overrides the diagnosing-bugs skill's request to rerun the red loop; runtime validation remains with primary. Full definitions will be preserved in a shared data module, a pilot proves first8 direct cells, row modules prove remaining cells one-by-one then compose symbolically, and the public Chunk000.chunk_check keeps its original signature. Total first block remains544cells/11424 signed rows; full stage0 pair23 remains7344/154224 across14 chunks.

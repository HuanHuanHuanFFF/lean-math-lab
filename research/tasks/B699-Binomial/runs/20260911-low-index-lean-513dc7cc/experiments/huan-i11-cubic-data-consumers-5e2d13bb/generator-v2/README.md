# generator-v2 chunk staging

This directory is run-owned and reads only the already normalized 387-row input and the frozen Generic Coverage source. The location-dependent extension generator is never invoked here. Chunk size is 4; the plan covers 387 rows in 103 chunks across all six pairs.

Only two proof-source candidates are generated: the first four old (2,3) rows and the last four new (2,3) rows. Each declares List Math.B699.CubicBlockCover.BlockDatum, calls the existing Math.B699.CubicBlockCover.coverageCheck with w=10, proves the concrete Bool equality with by decide, and prints axioms using its complete theorem name. No checker definition is copied, and no Lean command is run.

The remaining rows appear only in chunk-plan.json and the exact input manifest. Later assembly may use the planned coverage append lemma; this directory does not assume that lemma or generate the remaining proof files.

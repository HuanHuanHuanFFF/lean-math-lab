# Finite-cover Lean data

`generate_cover_data.py` reads the three independently checked JSON artifacts
and emits eight Lean chunks under `lean/coverage/` plus
`lean/LowIndexComplete.lean`. It copies only:

- the 151 `(i,r,s,N0Power10)` height rows;
- topprime residual deletion segments as `RowWitness.topPrime p`;
- actual-V residual points as `RowWitness.largeDivisor V`;
- each layer's `lower`, exclusive `upper`, and `M`.

The external family lists from `two-colour-cover.json` are intentionally not
expanded. `FiniteCover.finiteCoverRowCheck` is the kernel-side checker that
reconstructs the power intervals. The generated chunks each contain a
`by decide` `finiteCoverRowCheck` certificate; `LowIndexComplete` combines the
chunk checks and provides `common_of_low_index_finite_cover`.

Regenerate data only from the run root with:

```text
C:\Python314\python.exe -B experiments/lean-cover-data/generate_cover_data.py
```

The generator does not run Lean, enumerate `j`, or modify the three input
JSON files. See `manifest.json` for the three input hashes and output hashes.

# Split finite-cover certificate data

`generate_split_data.py` reads the three checked JSON artifacts and emits one
row module per index under `lean/coverage/rows/`. Each row separates the
registered, goods, small-boundary, layer-cover, per-layer, layer-list, and
whole-row Boolean certificates. The eight `CoverageXX.lean` files import row
modules and combine `rowNNN_checked` with `simp`; they do not re-run a whole
19-row `by decide` block. `LowIndexComplete.lean` preserves the current
`subst i` consumer proof.

The data-only command is:

```text
C:\Python314\python.exe -B experiments/lean-cover-data/generate_split_data.py
```

The split manifest records all three input hashes, 151 rows, 37,313 goods,
3,919 layers, output hashes, and `lean_run=false`. No Lean compilation or
additional n/j computation is performed by the generator.

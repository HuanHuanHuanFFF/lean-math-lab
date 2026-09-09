# Explicit parameter preconditions

The final `check.py` rejects each record unless

```text
i >= 2
t >= 2
0 <= r < i
1 <= s < i
lambda = 2*s - r > 0
Delta = lambda*(i-t) - E > 0
```

It also requires the complete index sequence `{29} union [35,184]`, exactly
151 records. The live audit on the current cover reports
`records=151 exact_index_set=True bad=[] min_i=29 max_i=184 min_s=19 max_s=130`.

The `--tamper-test` path changes a record consistently to `s=i` and `s=0`; a
valid certificate is never claimed for either mutation, and both are rejected
by the explicit `1 <= s < i` guard.

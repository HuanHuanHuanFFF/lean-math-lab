# Height certificate data support

`generate_data.py` reads the exact integer `i`, `r`, `s`, and
`height_certificate.N0_power10` fields from
`notes/heights/two-colour-cover.json`. It emits the 151-row static Lean table
`lean/HeightCertificateData.lean`, a JSON table, and a manifest containing
input/output SHA-256 values and the exact index range `{29} union [35,184]`.

Replay the data-only generation from the run root with:

```text
C:\Python314\python.exe -B experiments/height-certificates/generate_data.py
```

This support step does not run Lean, recompute the cover, or claim that the
generated table has been kernel-checked. `lean/HeightProbe.lean` is a separate
minimal probe for the parent task's later Lean run.

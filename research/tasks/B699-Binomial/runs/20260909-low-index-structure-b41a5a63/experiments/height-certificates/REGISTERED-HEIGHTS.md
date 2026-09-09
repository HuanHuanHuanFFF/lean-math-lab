# Registered height certificates

The generator now emits
`lean/RegisteredHeights.lean` in addition to the static data table. It imports
`HeightCertificate` and `HeightCertificateData`, uses the local options

```text
set_option maxRecDepth 65536
set_option maxHeartbeats 0
set_option exponentiation.threshold 1000000
```

and creates 151 exact `by decide` Boolean certificates. The soundness theorem
`heightCertificateData_valid` converts the `List.all` result to
`HeightRowValid`; `common_of_registered_height` applies the existing
`common_of_height_certificate` consumer for every row with `n >= row.n0` and
legal `j` assumptions.

This source has not been run through Lean in this support task. The tuned
manifest records the registered source hash, while
`manifest-history-20260909T073358Z.json` preserves the pre-tuning manifest.

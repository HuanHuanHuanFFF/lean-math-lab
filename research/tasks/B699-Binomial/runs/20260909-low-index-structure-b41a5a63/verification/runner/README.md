# Fresh verifier for this batch

`verify.py` is a fresh copy of the verifier from
`research/tasks/B699-Binomial/runs/20260909-large-prime-structure-cb4764f0/verification/verify.py`
at baseline `7fd3928656489afe2c80698f0a09d1d933444186`. The source verifier
SHA-256 is
`c9b73e1a1d39cdb5a696df8aa130caeebb356d7f9373b958c1bac4da7c1d7962`.

The copied verifier preserves the source verifier's strict checks: the pinned
Lean 4.33.1 toolchain, exactly nine manifest packages with process-local Git
HEAD and clean-status checks, fixed package caches, recursive project import
closure, masked source policy, actual `#print axioms` output, and direct
single-threaded Lean compilation with a fresh 1536 MB object directory. This
batch copy writes public evidence below this run's `verification/<UTC>/` and
fresh temporary files/olean files below `.tools/20260909-low-index-structure-b41a5a63/`.

Run from the repository root with one or more Lean roots:

```text
C:\Python314\python.exe verification/runner/verify.py --project-root . --lean D:\CodingProject\Math\.tools\elan\toolchains\leanprover--lean4---v4.33.1\bin\lean.exe --package-root .lake\packages --root research/tasks/B699-Binomial/runs/20260909-low-index-structure-b41a5a63/lean/Root.lean --memory-mb 1536 --timeout 120
```

`--root` is repeatable and must name a `.lean` file below `Math/` or
`research/`. The command is intentionally not run as part of the finite
classification support task; the parent task owns the eventual Lean
verification and acceptance evidence.

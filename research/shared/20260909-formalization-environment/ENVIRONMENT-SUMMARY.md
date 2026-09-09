# 2026-09-09 formalization environment

This worktree now has a local Lean installation at `.tools/elan` and pinned
Lake checkouts at `.lake/packages`. The installation was copied read only from
the available prior cache, then checked in this worktree. The copied project
`.lake/build` was deliberately not used; only package checkout sources and
package build/cache artifacts were reused.
The local elan metadata was rewritten only in this worktree so `.tools/elan/env`
and `known-projects` refer to this checkout rather than the source cache path.

## Pins and versions

- `lean-toolchain`: `leanprover/lean4:v4.33.1`
- Lean: `4.33.1`, commit `819816b2e0a3bf405af45ae5c7af2491d8f5bee6`
- Lake: `5.0.0-src+819816b` (Lean 4.33.1)
- mathlib: `0df444a360eaa60ab8c11dca51a86af692955474`
- toolchain file SHA-256: `3aac669c7a910ec2389f4e4f921b605adf6ebf2d1e0c9b9cd0be4d33f3f5db71`
- manifest SHA-256: `fdbefe6c9b737713c8b9c602643afa154f49dda4f48bfc4d2f64183fdea728a0`

All nine `lake-manifest.json` package rows match their checkout HEAD and have
clean Git status. Full rows and origins are in `package-pins.log` and
`evidence.json`.

## Commands

From the repository root:

```bash
export ELAN_HOME="$PWD/.tools/elan"
export PATH="$PWD/.tools/elan/bin:$PATH"
export MATHLIB_CACHE_DIR="$PWD/.lake/mathlib-cache"
bash scripts/lean-work.sh lean --version
bash scripts/lean-work.sh lake --version
```

For a fresh focused closure, use `fresh-root.py`:

```bash
python3 research/shared/20260909-formalization-environment/fresh-root.py \
  --root research/tasks/B677-Lcm/runs/20260908-formalization-92c221/lean/bounds/Consumer.lean \
  --guards 4
```

For one of the three new runs, each invocation allocates an empty evidence
directory under that run's `verification/<UTC>/`; multiple-run roots use this
shared directory. A matching fresh object directory is always created under
`.lake/formalization-environment/<UTC>/olean`. `LEAN_PATH` contains only that
fresh project object root; package objects are linked below it after pin
checks. Cross-run project imports are limited to the explicit allowlist in the
wrapper.

For a topic-owned baseline audit, pass an explicit output such as
`research/tasks/B699-Binomial/runs/20260908-formalization-92c221/verification/baseline/<UTC>/`;
the object directory remains isolated under the matching fresh
`.lake/formalization-environment/<UTC>/olean/` path.

## Cache additions

The pinned mathlib package cache now contains
`PowerSeries.Catalan`, `PowerSeries.Trunc`, `Polynomial.Reverse`, and
`Polynomial.Eval.Degree`, including the Catalan and Trunc dependency closure
built with the commands recorded in `package-cache-20260908T093100Z.log`.
It also contains `Polynomial.Expand`, `Polynomial.BigOperators`,
`Polynomial.Derivative`, and `PowerSeries.Derivative`; their derivative
closure was built with the commands recorded in
`package-cache-20260908T094500Z.log`. The expanded module smoke passed in a
fresh object directory. Details and artifact hashes are in
`package-cache-evidence-20260908T094500Z.json`.
The pinned cache now also contains `Analysis.Complex.ExponentialBounds` and
`Analysis.SpecialFunctions.Log.Basic`; both direct imports passed in the fresh
smoke recorded in `package-cache-20260908T100922Z.log`, with structured hashes
in `package-cache-evidence-20260908T100922Z.json`.
The pinned cache now also contains `Analysis.Complex.SqrtDeriv`,
`Analysis.Complex.CauchyIntegral`, and `RingTheory.PowerSeries.NoZeroDivisors`.
Their package closures were built at the pinned mathlib HEAD (2266, 2714, and
1422 jobs respectively), and all three imports passed in the fresh smoke at
`runs/20260908T104454Z/`. Commands and artifact/source hashes are recorded in
`package-cache-20260908T104454Z.log` and
`package-cache-evidence-20260908T104454Z.json`.
The pinned cache also contains `Analysis.SpecialFunctions.Integrals.Basic`
and `Analysis.SpecialFunctions.Stirling`; their closures completed in 2714 and
2719 jobs, and both imports passed in the fresh smoke at
`runs/20260908T105747Z/`. Commands and artifact/source hashes are recorded in
`package-cache-20260908T105747Z.log` and
`package-cache-evidence-20260908T105747Z.json`.
The pinned cache also contains `Analysis.Polynomial.Basic`; its closure completed successfully in 2042 jobs. The package artifact and a fresh one-root smoke with one guarded axiom report are recorded in `package-cache-20260908T111015Z.log`, `package-cache-evidence-20260908T111015Z.json`, and `runs/20260908T111131Z/evidence.json`.

## Fresh validation results

- Basic environment smoke: `runs` evidence from `BasicSmoke.lean`, exit 0.
- `CenteredRunge.lean`: exit 0, `runs/20260908T093332Z/`.
- `TwicePrimePower.lean`: exit 0, `runs/20260908T093346Z/`.
- B677 `ElementaryBounds.lean` plus `Consumer.lean`: exit 0, 11 fresh project objects, `runs/20260908T093432Z/`.
- An earlier `CatalanConstruction.lean` source revision had four Lean proof
  errors; its diagnostic is retained in `runs/20260908T093306Z/`. After the
  source revision, `CatalanConstruction.lean` passed at
  `runs/20260908T093732Z/`.
- The current three-root B686 centered/reflected closure (`CatalanConstruction`,
  `CenteredRunge`, `TwicePrimePower`) passed jointly at
  `runs/20260908T093751Z/`.
- Later roots `WeightedEstimates`, `DistancePrimePower`, and
  `TwoPositionSupport` passed separately at the topic verification directories
  `20260908T094721Z/` and `20260908T094733Z/`. `NumericalControl` and
  `RootPolynomial` currently expose source proof errors in
  `20260908T094624Z/` and `20260908T094657Z/`; these are preserved as
  diagnostics and do not indicate a toolchain or package failure.
- B699's current `CofactorCriterion` source, its five-guard test root, and the
  full-range interface example passed together at
  `research/tasks/B699-Binomial/runs/20260908-formalization-92c221/verification/baseline/20260908T095843Z/`.

No pins, mathematical source, existing verifier, shared index, or historical
record was changed by this environment work, and no commit or push was made.

## NumberTheory package cache (2026-09-08 11:57 UTC)

The pinned mathlib cache now contains complete build artifacts for
`Mathlib.NumberTheory.Bertrand` and `Mathlib.NumberTheory.SmoothNumbers`.
The sequential commands were:

```text
ELAN_HOME="$PWD/.tools/elan" PATH="$PWD/.tools/lean-single-bin:$PWD/.tools/elan/bin:$PATH" MATHLIB_CACHE_DIR="$PWD/.lake/mathlib-cache" bash scripts/lean-work.sh lake build @mathlib/+Mathlib.NumberTheory.Bertrand:olean
ELAN_HOME="$PWD/.tools/elan" PATH="$PWD/.tools/lean-single-bin:$PWD/.tools/elan/bin:$PATH" MATHLIB_CACHE_DIR="$PWD/.lake/mathlib-cache" bash scripts/lean-work.sh lake build @mathlib/+Mathlib.NumberTheory.SmoothNumbers:olean
```

The first closure completed in 2236 jobs and the second in 1326 jobs. The
`lean-single-bin/lean` wrapper adds `-j 1` to each Lean process while leaving
Lake's dependency scheduling unchanged. A fresh root importing both modules
passed with one guarded `#print axioms` report and an empty axiom list. Full
source/artifact hashes, build logs, pin checks, and fresh evidence are in
`package-cache-evidence-20260908T115757Z-bertrand-smooth.json` (SHA256
`5d44b1b415fc07102bf9f4122756775ab60b6ef1dcdf976bec6fe7dad95ef6ca`) and
`runs/20260908T115757Z/evidence.json`.

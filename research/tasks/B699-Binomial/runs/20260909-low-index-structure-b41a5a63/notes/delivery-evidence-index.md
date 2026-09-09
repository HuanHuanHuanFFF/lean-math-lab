# Delivery and evidence index

This index records the strongest supported state for baseline
`7fd3928656489afe2c80698f0a09d1d933444186` on branch
`c323aa9b4bc45843cf271c311b062947b3042518`. Paths are repository relative.
The original B699 statement still quantifies over all natural `n,i,j`; none of
the finite data below is by itself a proof of that unrestricted statement.

## Accepted consumers with fresh evidence

| Consumer | Exact entry point and prerequisites | Fresh evidence | Supported result |
|---|---|---|---|
| Three-window comparison | `lean/ThreeWindowWeights.lean`, especially `common_of_three_window_comparison`. Requires `2 ≤ i`, `i < j`, `j ≤ n / 2`, `s < i`, and the strict integer comparison `n^(smallPrimeCount i * (2*s-r)) * threeWindowProduct n i j r s < (n.choose i)^(2*s-r)`. | `verification/20260909T065147Z/evidence.json`; six-source closure, all compile exits 0, all printed axiom lists standard. | Under those displayed hypotheses, returns a prime `p` with `i ≤ p` dividing the two binomial gcd. |
| Small-prime-power interval localization | `lean/SmallPowerIntervals.lean`, especially `exists_two_small_prime_power_intervals`. Requires `2 ≤ i`, `i ≤ n`, `2 ≤ smallPrimeCount i`, `0 < n`, `0 < M`, `M < n`, the explicit small-part inequality, `i ≤ lo`, `lo ≤ n`, and `n < upper`. | `verification/20260909T074627Z/evidence.json`; ten-source closure, all compile exits 0, including the B686 support sources and three localization modules. | Produces two distinct primes `p,q<i` and their finite power/cofactor interval representations. This is a localization lemma, not the original B699 conclusion. |

The accepted closures also recompiled the reused `Math/B699/CofactorCriterion.lean`
and the pinned old-run sources. The verifier used Lean 4.33.1, fixed package
caches, single-threaded compilation, 1536 MB per process, source policy checks,
and actual axiom output; accepted axiom names were restricted to
`propext`, `Classical.choice`, and `Quot.sound`.

## Finite evidence and independent replay

The low-index classification is recorded at
`verification/20260909T062341Z/evidence.json` and its command/output files.
It covers exactly 182 rows `3..184` and 183 integer certificates `2..184`:

```text
S        = [3,96] ∪ [98,100] ∪ [102,120]
positive = [97,97] ∪ [101,101] ∪ [121,184]
zero     = {96,100,120}
```

The record explicitly marks this as finite evidence with no B699 triple scan
and no Lean run.

The independent three-stage replay is
`experiments/two-colour-check/replay-20260909T074014Z/evidence.json`. It used
real subprocess argv lists and left all inputs/checker files unchanged. Its two
subprocesses both exited 0, and its parameter audit reported 151 records with
the exact index set and no invalid parameters. The finite results were:

```text
two-colour cover: 151 indices, 3919 layers, 67479 families,
                 161313 candidate intervals, 912578 covered integers
topprime filter: 2943530 input pairs -> 2943463 deleted -> 67 residual pairs
actual-V check:  67/67 direct comb-and-division size contradictions
```

The replay's coverage-field, deleted-family, `s=i`, and `s=0` tamper tests all
rejected as intended. These results do not enumerate `j` and do not claim a
complete B699 proof.

## Height data and finite-cover candidate outputs

`experiments/height-certificates/manifest.json` binds the 151-row height table
and the generated `lean/HeightCertificateData.lean` and
`lean/RegisteredHeights.lean` to the exact two-colour input hash. The current
source tuning is `maxRecDepth 65536`, `maxHeartbeats 0`, and
`exponentiation.threshold 1000000`; the pre-tuning manifest is preserved at
`experiments/height-certificates/manifest-history-20260909T073358Z.json`.

The development result `verification/development/20260909T082617Z/result.json`
reports `RegisteredHeights.lean` exit 0. A later combined closure also compiled
the height files with exit 0, but its overall acceptance failed in `FiniteCover`,
so the height files are not listed as a standalone fresh accepted consumer here.

The finite-cover data manifest is
`experiments/lean-cover-data/manifest.json`: 151 rows, 37,313 goods segments,
3,919 layers, and eight data chunks (19 rows in seven chunks and 18 in the
last). The chunks and `lean/LowIndexComplete.lean` are generated source/data
only; the manifest explicitly records `lean_run=false`.

## Failures and corresponding repairs

| Evidence | Failure | Repair/status |
|---|---|---|
| `verification/20260909T062945Z/evidence.json` | Absolute `Path.parts` filtering treated the nested `.tools/worktrees` ancestor as an ignored source path and could not resolve `SmallPartBound`. | `verification/runner/verify_repo_relative.py` changed filtering to repository-relative parts; `verification/20260909T063240Z/evidence.json` is the read-only closure probe, and the subsequent `065147Z` closure passed. |
| `verification/20260909T063425Z/evidence.json` | ThreeWindowWeights closure rejected an unexpected `sorryAx` from the then-incomplete source state. | Later fresh closure `verification/20260909T065147Z/evidence.json` passed with standard axioms only. |
| `verification/20260909T072226Z/evidence.json` | Height/combined consumer attempt rejected an unexpected `sorryAx`. | Source development was repaired; `verification/development/20260909T082617Z/result.json` reports RegisteredHeights exit 0. The combined final state remains separately gated by FiniteCover. |
| `verification/20260909T072748Z/evidence.json` | Guarded `#print axioms` lines were counted as stdout declarations, giving source 4 versus actual 0 for B686 `BigPrimeSupport`. | `verification/runner/verify.py` now recognizes only the exact standalone `#guard_msgs in` plus next nonempty `#print axioms` form, never infers guarded output, and rejects unknown forms. `verification/runner/self-test-output.json` records B686 bare 0/guarded 4/actual 0 and ThreeWindowWeights bare 7/guarded 0/actual 7. |
| `verification/20260909T081521Z/evidence.json` | Generated `HeightCertificateData.lean` lacked a real import supplying the `ℕ` notation. | Generator now emits `import Mathlib.Data.Nat.Basic`; the tuning manifest and generated hashes were refreshed. |
| `verification/20260909T083630Z/evidence.json` | First combined FiniteCover closure failed on `FiniteCover.lean` with unexpected `sorryAx`; the source compiled with exit 1. | Development result `verification/development/20260909T085816Z/result.json` reports the local Boolean-conjunction repair exit 0, but this is development-only. A fresh final closure including all coverage chunks is still pending; Coverage00 computation was underway at the last checkpoint. |

## Development-only modules and remaining acceptance boundary

The following modules have individual development exit-0 records or appear in
the failed combined closure, but are not promoted here as final accepted
consumers: `HeightCertificate.lean`, `CofactorCover.lean`,
`LargeSmallPowers.lean`, `SmallPrimeLocalization.lean`,
`PrimePowerEnumeration.lean`, `LargeDivisorWitness.lean`, and
`IntervalCover.lean`. Their useful interfaces require explicit hypotheses such
as `2 ≤ i`, `i ≤ n`, `s < i`, positive `M`, layer bounds, coprimality for a
large divisor, or exact finite cover Bool checks. The `FiniteCover` consumer
and its eight data chunks require a new fresh closure after the development
repair; no current record establishes that acceptance.

The finite-cover source interface is intended to expose
`common_of_finite_cover_row_checked` after a row's `finiteCoverRowCheck` is
kernel-true. Until the complete chunk closure and final consumer pass the
strict fresh verifier, that intended consumer remains a candidate artifact,
not a proved all-`n,j` theorem.

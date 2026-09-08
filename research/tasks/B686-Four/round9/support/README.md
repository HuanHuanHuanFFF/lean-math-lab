# B686 round9 support：mathlib 分析依赖与素数估计复用

## Identity and state

- Stable ID / short name: `B686-Four-round9-support`
- Goal type: reusable infrastructure and bounded source/API survey
- Research stage: active
- Proof state: none; this record tracks dependency/cache evidence
- Mathematical source status and date: supports the round9 full-distance-bound formalization; source records read on 2026-09-08
- Lean precedent search scope, date, findings, and exclusions: fixed local mathlib `v4.33.1` and checked-in PrimeCounting follow-up record; no dependency upgrade or broad external survey yet
- Review: not performed
- Publication: local only
- Current owner, owned files, and last update: Luna support; `research/tasks/B686-Four/round9/support/`; 2026-09-08 05:30 +08:00

## Exact target

Coordinate a single-process cache build for the interfaces needed by A's round9 distance-bound proof:

- `Mathlib.NumberTheory.Chebyshev`
- `Mathlib.Analysis.Complex.ExponentialBounds`
- `Mathlib.Data.Nat.Choose.Bounds`
- candidate low-cost support: `Mathlib.Analysis.SpecialFunctions.Integrals.Basic`

The target is cache readiness and compile-checked interface evidence, not a new theorem. The locked toolchain is `leanprover/lean4:v4.33.1`; the locked mathlib revision is `v4.33.1`. New caches and temporary files must remain on D:. Do not modify lock files, publish, commit, or push.

## Current attempt

- Last proved result: none in this support task. Round8 evidence says the previous analytic build was stopped and must not be called successful.
- Next subgoal and intended evidence: finish the still-running ExponentialBounds build, then record its exit code, elapsed time, output path, and theorem probes. Chebyshev was stopped after the main route switched away from it; no Chebyshev success is claimed.
- User-provided duration; start time; original deadline; latest allowed deadline: round9 start `2026-09-08 04:40:04 +08:00`; original deadline `10:00:00`; absolute deadline `11:00:00`.
- Effort checkpoint and shared worker deadline: cost checkpoint `05:15:00 +08:00`; build only while no other Lean/Lake worker is active.
- Extension, if used: none.
- Attempts that failed and why: ordinary shell startup failed at 04:43 with `helper_unknown_error: setup refresh had errors`; controlled escalated read succeeded. The first invocation `pwsh -NoProfile -File scripts/lake.ps1 -LakeArgs build Mathlib.Data.Nat.Choose.Bounds` exited 1 because PowerShell did not bind the second positional argument to the array; the corrected array invocation succeeded.
- Remaining uncertainty or external dependency: ExponentialBounds remains unbuilt at the 05:18 snapshot. Chebyshev's partial source closure is retained but its target is absent. The official mathlib `lake exe cache get` target exists, but no cache-get attempt or downloaded artifact is claimed in this record.

## Frontier and next decision

This is bounded support for the existing route. A successful build can remove a real environment/API blocker for the `k >= 250000` distance-bound formalization, but cannot by itself close the mathematical theorem.

| Claim or route | Exact scope and remaining cases | Evidence and dependencies | Contribution to full target | Concrete reuse |
|---|---|---|---|---|
| Cached Chebyshev interface | pinned `v4.33.1`, exact module and theorem names | local source plus one fresh compile | unlocks the theta/pi bridge for A | reusable olean and import probe |
| Cached exponential bounds | pinned `v4.33.1`, exact module and theorem names | local source plus one fresh compile | unlocks exp/log constant estimates | reusable olean and import probe |
| Cached choose bounds | pinned `v4.33.1`, exact module and theorem names | local source plus one fresh compile | supports combination-number exponent estimate | reusable olean and import probe |
| Integral Basic candidate | only if incremental cost is controlled | local source/import probe | may support Abel/integral route | optional; otherwise A uses FTC |

- Full-target completion condition and remaining unbounded parameters: unchanged; the B686 equation still has unbounded `k` and distance `d`.
- Expected frontier change before substantial work: environment/API blocker removed if all required imports compile; no mathematical coverage increase by cache construction alone.
- Priority decision: perform a bounded single-process build after A releases the worker; stop and report cost if closure becomes large or competes with A.
- Next discriminating test: exact module source and dependency graph probe, followed by one target at a time through `scripts/lake.ps1` with `-LakeArgs` forwarding.

## Acceptance evidence

Record each command exactly, its exit code, elapsed time, whether the result came from cache or source compilation, and the resulting file hash/path. A successful import is not evidence that every requested theorem has the expected type; retain a minimal declaration probe for each named API. Preserve the previous round's `analytic-build.log` as historical evidence and do not overwrite it.

### Live build evidence (2026-09-08)

- Locked manifest evidence: root `lake-manifest.json` records mathlib `inputRev = v4.33.1` and commit `0df444a360eaa60ab8c11dca51a86af692955474`; `lean-toolchain` is `leanprover/lean4:v4.33.1`.
- Source/API probe: all requested names were found in the pinned source. `Chebyshev.lean` contains `theta_le_log4_mul_x` and `theta_eq_primeCounting_mul_log_sub_integral`; `ExponentialBounds.lean` contains `exp_one_lt_d9` and `log_two_lt_d9`; `Choose.Bounds.lean` contains `Nat.choose_le_pow_div`; `Analysis.Complex.Exponential.lean` contains `Real.pow_div_factorial_le_exp`; `Integrals.Basic.lean` contains `integral_one_div_of_pos`.
- Command 1: `pwsh -NoProfile -File scripts/lake.ps1 -LakeArgs build Mathlib.Data.Nat.Choose.Bounds`; exit `1` (argument-binding failure: `A positional parameter cannot be found that accepts argument 'Mathlib.Data.Nat.Choose.Bounds'`). No build was started by this invocation.
- Command 2: `pwsh -NoProfile -Command "& '.\\scripts\\lake.ps1' -LakeArgs @('build','Mathlib.Data.Nat.Choose.Bounds')"`; source build completed; cached recheck exit `0`, `Build completed successfully (628 jobs)`.
- Choose artifact: `.lake/packages/mathlib/.lake/build/lib/lean/Mathlib/Data/Nat/Choose/Bounds.olean`, 28,320 bytes, timestamp `2026-09-08T04:49:26`.
- Command 3: `pwsh -NoProfile -Command "& '.\\scripts\\lake.ps1' -LakeArgs @('build','Mathlib.NumberTheory.Chebyshev')"`; session `71841`, started `04:50:11`, was stopped by this task with Ctrl-C after the route switched away from Chebyshev; exit `1`, target `.olean` still missing. A separate `D:\\CodingProject\\Math-Bounty-20260908` build was observed and was not started or stopped by this task.
- Command 4 (active at the 05:18 snapshot): `pwsh -NoProfile -Command "& '.\\scripts\\lake.ps1' -LakeArgs @('build','Mathlib.Analysis.Complex.ExponentialBounds')"`; session `51733`, outer PID `36752` -> inner Lake PID `10764`, target `.olean` still missing. The wait call was interrupted for an immediate status report; the build process remains active and has not been declared successful.
- Current artifacts at the snapshot: `Data/Nat/Choose/Bounds.olean` 28,320 bytes at `04:49:26`; `Analysis/Complex/Exponential.olean` 234,336 bytes at `05:11:11`; `Analysis/Complex/ExponentialBounds.olean` and `NumberTheory/Chebyshev.olean` missing.

### Follow-up snapshot and external-source audit (2026-09-08 05:27--05:30)

- Session `51733` completed successfully. The final `write_stdin` result had exit code `0` and ended with `Build completed successfully (2202 jobs)`; no Lake/Lean process remained at the subsequent snapshot. The generated artifact is `.lake/packages/mathlib/.lake/build/lib/lean/Mathlib/Analysis/Complex/ExponentialBounds.olean`, 32,864 bytes, timestamp `2026-09-08T05:23:23`.
- The external source imports `Mathlib.Data.Nat.Factorial.DoubleFactorial`, `Mathlib.Data.Nat.Choose.Bounds`, and `Mathlib.Data.Nat.Choose.Factorization`; the checked-in olean status is: Choose.Bounds present, Choose.Factorization present (44,064 bytes, `05:04:54`), Factorial.Basic present (178,160 bytes), and `Mathlib.Data.Nat.Factorial.DoubleFactorial.olean` missing. `Algebra.GCDMonoid.Finset.olean` is present (109,928 bytes); `FinsetLemmas.olean` is absent but is not a direct import of the external file.
- The external snapshot `.tools/external/686-aff1d30/CenterComponentLogStrip.lean` is 61,303 bytes. SHA-256: `403CA583701C0DF2641BED55CE6CBF85E0591CB1D535D94EF6D267B6CD889BE5`. Companion hashes: `CenteredRatioWindowSharp.lean` = `43328F2159EA1EEC247DC55077323A5AA335ABD45C00AE5579EE589E57CF8E4A`; `MatchingCompression.lean` = `459FDAEE5FB49B42B88A00C53833E3FEC0A9258A57F693F95334C587D4DC4267`.
- Paper/source audit: `initialLcm N := (Finset.range N).lcm (fun j => j + 1)` covers exactly `1,...,N`; `term_dvd_initialLcm` maps `x` to `x-1` with explicit `1 ≤ x` and `x ≤ N`. The exact interval chain has explicit hypotheses `1 ≤ a`, `1 ≤ m`, and `t < m`; it proves each term divides `choose (a+m-1) m * initialLcm m`, aggregates with `Finset.lcm_dvd`, and multiplies by `m.factorial` through `Nat.ascFactorial_eq_factorial_mul_choose'`. No hidden positivity or nonzero premise was found in these statements.
- The `initialLcm_le_four_pow` induction is unrestricted in `N`; it handles `N < 2` by `interval_cases`/`decide`, then splits `N` into even `2*u` and odd `2*u+1`. It supplies `1 ≤ u` (or `1 ≤ u+1`), strict induction decrease, both recurrence side conditions, and derives the choose bounds from `Nat.choose_le_two_pow` / `Nat.choose_succ_le_two_pow`; the exponent identities reduce to `N` explicitly. This is a paper-level completeness check, not independent kernel acceptance of the external file.
- Static scan of all three external source files for `sorry`, `admit`, `axiom`, or `opaque` found no matches. The external file imports `ErdosProblems.Erdos686ReflectedAlignmentSquareLift`, `ErdosProblems.Erdos686MatchingCompression`, and `ErdosProblems.Erdos686CenteredRatioWindowSharp`; those modules are not present in the `.tools/external/686-aff1d30` directory snapshot, so direct standalone compilation of this source remains unverified.
- The external directory includes an MIT license naming Will Blair (2026) and a notice for third-party `ErdosProblems/Erdos154.lean`; this supports provenance/licensing only, not local Lean acceptance.

## Reuse and handoff

Primary consumer: `/root/b686_round9_uniform` (A). Send the exact cache paths, theorem-probe results, command logs, and any cost/remaining gap. If a build is incomplete or stopped, state that explicitly and do not call it successful.

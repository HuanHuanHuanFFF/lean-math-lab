# Exact experiment inventory and interpretation

All JSON numeric counts are integer arithmetic. Random seeds choose finite instances or greedy candidates only; no statistical test is used to prove an infinite claim. `elapsed_seconds` records actual runtime of that invocation and is not a reproducible mathematical output.

## `initial_checks.json`

30 single-height Singer configurations: p in [2,3,5,7,11,13,17,19,23,31], M=p, seeds 0,1,2. The pseudorandom seed is 156000+100p+seed. `B` and `d` reconstruct the exact seed, and `A0` is its sorted integer set.

`steps` lists every legal greedy addition with the residual size, exact marginal gain and number of candidates actually tested. For p≤7 all candidates were compared; otherwise at most 48. This is not an optimality claim. `final` is checked for all pair sums and full maximality. The final read-only audit independently retests all 30 complete intervals directly.

## `structural_checks.json`

`dependency_graphs`: every non-base residue for p in [2,3,5,7,11,13,17,19,23,31,43,61], total 8,087 residue types. Variables correspond to the original height coordinates. Midpoint events are included. Observed histograms of double-positive triples are not assumed in the paper proof.

`exact_lift_enumerations`: every height vector and every off-base integer for (p,M)=(2,2),(3,3),(5,3),(7,2),(7,3),(2,16),(3,16), total 77,267 lifts. `point_hole_counts` has exact numerator counts over `number_of_lifts`; rational strings use exact Fraction. `expected_H` here is the expected **total off-base hole count**, not the count in one residue fiber. LLL lower bounds are only checked/stated when M≥16.

## `influence_checks.json`

Four complete height cubes (2,16),(3,16),(5,3),(7,3), totaling 76,922 vectors. For every fixed set of other coordinates, compare all values of the remaining coordinate and every off-base fiber. `max_fiber_cardinality_change` is a difference of cardinalities, not a symmetric-difference cardinality. It equals 3 in each listed test. These cubes overlap structural_checks; do not add the counts as disjoint instances.

## `dense_lift_profiles.json`

Exactly 33 profiles: (31,M) for M=8,4,2; (61,M) for M=16,8,4; (127,M) for M=32,16,8; (251,M) for M=32,16; each three seeds. Pseudorandom seed 156900000+1000p+10M+seed. Every integer point is included through the full forbidden set.

`initial_holes` counts all legal integers; `off_base_holes` excludes B residue classes. Histogram keys are numbers of holes in a fiber, and values count fibers. `anchor_budget_lower_bound` is deliberately the possibly weaker value **off_base_holes/(p+1)**; it is not initial_holes/(p+1). Large p alone does not imply the displayed asymptotic probability bound is nonvacuous.

## `parabola_checks.json`

p in [3,5,7,11,13,17,19,23,31,43]; lambda is the smallest nonsquare. All strong pair sums and all p³ targets are checked both by the complete 2S−S set and explicit formulas. Total formula checks: 137,260. Field claims are about F_p³ here; extension to all odd prime powers is by the paper proof, not these tests.

The no-carry integer image, full residual, and one directly legal point are stored. Eight integer completions for p≤23 also store every step. p=31,43 were not completed by this script.

## `bridge_checks.json`

All odd primes 3≤p≤101 (25 cases) check the standard p+1 hole and parity-twist Sidon property; full parity-twist residuals only for p≤31. Two tiny standard-image certificates list all 21 sums after adding 3 or 4. A genuine Singer seed A={1,2,4,10} in [1,39] has x=14 and y=15 separately legal but not jointly legal: 1+15=2+14. This tests the prohibition against assuming independent legal additions can be combined.

## `cyclic_bridge_checks.json`

p in [3,5,7,11,13,17,19]. Fix theta=alpha in a recorded primitive cubic extension; eta=(0,b,c) ranges through all other nonfield F_p-parallel line cosets. There are p²−2 per p, total 1,009. Each has two distinct unordered nonzero factor pairs with an exactly verified equal product. This is not an enumeration of every arbitrary line pair; the paper theorem treats the general case.

## `paired_lift_checks.json`

Full permutations of gaps 1,…,p+1 with all lower heights zero, M=p+2, for p=2,3,5,7: 6+24+720+40,320 assignments. `histogram` jointly records off-base and total holes; `best.key` is minimized lexicographically. The p=7 minimum off-base holes is exactly 5.

For p in [11,13,17,19,23,31,43,61], two specified configurations each are checked: increasing gaps with zero lowers at M=p+2, or random gap permutation and lowers at M=2p+3 (seed 156300000+p). These 16 configurations are not exhaustive and not optimized.

## `paired_lower_check.json`

Only p=7, M=9, N=513, and the one stored gap vector (1,8,2,3,6,4,5,7). Exhaust all product_i(M−g_i)=40,320 legal lower-height vectors. The best total residual is exactly {314,455}; all 40,320 were examined, no early success occurred. This does not exhaust all 40,320² gap/lower combinations.

`one_step_completion` adds 314. Its direct verification tests every point in [1,513] and all unordered pair sums including doubles. The other hole is blocked by 314+314=455+173. Both the search and completion are regenerated by the script.

## Logs and auditing

Original code outputs remain under `logs/`. `verify.log` is the final successful independent arithmetic certificate audit; `AUDIT_NOTES.md` preserves an earlier audit field-interpretation failure. These are not kernel or Lean logs.

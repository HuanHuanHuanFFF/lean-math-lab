# Canonical support density: exact obligations

The final all-even consumer starts from the original natural-number equation
`∏ i ∈ Icc 1 k, (m+i) = 4 * ∏ i ∈ Icc 1 k, (n+i)`, separation
`n+k ≤ m`, and `Even k`. For every real `ε > 0`, there is a natural `K`
such that every such instance with `k ≥ K` has an actual canonical owner
system whose number `s` of nonunit cells satisfies `s / k² ≤ 1/4 + ε`.
The system is supplied by the implemented canonical provider, not by an extra
existence hypothesis. No assertion of a finite-length exact `1/4` bound is made.

Implementation dependencies:

1. The sliced canonical provider and its `SystemInput` adapter give the owner
   matrix, pairwise coprimality, positive global product, and factorization.
2. Nonunit positive pairwise coprime cell values are distinct. Their product
   is at least `(s+1)!` and at most the original lower-block product `P`.
3. The elementary upper bound `P ≤ (n+k)^k` uses all original factors.
4. A uniform real growth lemma derives
   `2*s*log k ≤ log(s!) + k²` from the standard mathlib Stirling lower bound
   and `log x ≤ x-1`. It converts endpoint growth with leading exponent
   `a*k` into eventual support density at most `a/2 + ε`.
5. The frozen centered consumer supplies
   `n+k < 20 * 2^(4*k) * k^(k/2+1)`, yielding `a=1/2` and density `1/4`.
6. A later quarter-height consumer can reuse the same growth theorem with
   `a=1/4` to yield density `1/8`; its existence is not presumed here.

The parent subsequently authorized the independent `QuarterConsumer.lean`
extension. The quarter provider supplies, under `4 ∣ k`, `4 ≤ k`, `n < m`,
and the original equation,
`n+k < 2^(k/4+1) * k^(k/4+1)`. Use `C=2`, `B=2`, `e=k/4` in
the already accepted growth theorem. The original separated-interval
hypothesis supplies the actual canonical system and implies `n<m`.
The final quarter density statement must retain every length divisible by
four in the eventual tail and have no auxiliary existence or height premise.

Validation must use the fixed project pins, rebuild the complete project
dependency closure into a new object directory, and inspect transitive axioms.
Only the standard `propext`, `Classical.choice`, and `Quot.sound` are allowed;
no `sorry`, `admit`, extra axioms, or `native_decide` are permitted.

The independent B677 finite certificate continues in its existing fresh build
allocation; this density work does not mutate its sources or objects.

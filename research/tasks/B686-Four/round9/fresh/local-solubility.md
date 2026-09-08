# Local-solubility limitation (paper argument)

Recorded 2026-09-08 07:34:56 Asia/Shanghai. No new case of the original problem is excluded.

For each fixed k and every prime p, the curve P_k(m)=4P_k(n) has nonzero p-adic points near (n,m)=(-1,-1), with exactly the valuation difference prescribed by 4. Thus an unrestricted no-solution proof for that k cannot come from a single local obstruction.

One precise proof: put C=(k-1)! and H(z)=P_k(-1+z)/C=z*prod_{j=1}^{k-1}(1+z/j). Choose T>max_{1<=j<k} v_p(j). On p^T Z_p every z/j lies in p Z_p. Therefore H maps p^T Z_p bijectively to itself, preserving valuations; this follows either by its power series being z plus a strict p-adic contraction term, or by the inverse function theorem on this ball. For nonzero z in that ball there is a unique w in the ball with H(w)=4H(z). Then P_k(-1+w)=4P_k(-1+z), and v_p(w)-v_p(z)=v_p(4). For odd p, w/z is a unit congruent to 4 modulo p; for p=2 the valuation difference is 2.

At any finite precision, representatives of these residues can be chosen as positive integers with n+k<=m by adding sufficiently large multiples of the modulus. Consequently a finite congruence sieve alone cannot become empty for all unrestricted n,m. This does not invalidate congruence filtering after a finite archimedean bound, nor an argument coupling valuations to exact size relations. The latter coupling would be the additional global ingredient.

Research significance: this supplies a reason not to allocate a large unbounded search to fixed modular obstructions, independently of how many small cases such a sieve rejects. It is a standard local argument, not a novelty claim.


## Post-exchange correction and provenance

At the 07:39 first exchange, the primary task identified its earlier main/local-solubility.md as the same nonzero Hensel route. The fresh derivation is an independent check, not a new exclusion. See ../main/local-solubility.md and ../main/global-screening.md. Neither branch claims that all combinations of congruences with exact archimedean information are ineffective.

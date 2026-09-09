# Elementary small-prime-part bound: complementary route

Brief paper memo, 2026-09-08 18:34 UTC. Proposed independently by this worker and the primary in the same research round. No novelty claim and no global finiteness claim.

For i>=2 and legal n,i,j, split C(n,i)=U_i(n)*V_i(n), with U using primes strictly below i and V the complete primes at least i. Let pi_i be the number of primes below i. Kummer's count of carries gives

`v_p(C(n,i))<=floor(log_p n)` and hence `p^v_p(C(n,i))<=n`.

Therefore `U_i(n)<=n^pi_i`. In the pinned mathlib source this per-prime inequality is already `Nat.pow_factorization_choose_le`; no new analytic prime-counting theorem is needed.

For d=n-2j>=i, the new actual gap transfer gives, under noCommon,

`C(n,i)<=n^pi_i * C(d,i)*C(d+i-1,i-1)`.

This is an elementary consumer independent of EEES. Using the conservative two-binomial estimate from `two-binomial-bridge.md` gives

`2*n^(i-pi_i)*i^(i-1) < 18^i*d^(2i-1)`.

The gap exponent approaches one half when i grows enough that pi_i/i is small, and can improve the EEES square bound when n dominates a suitable power of i. The exact inequality is preferable to an invented percentage of progress. It does not eliminate all relative growth regimes, and n,i,j remain globally unbounded. Fixed-i finiteness from a different theorem must not be inferred from this gap bound, because d may still grow with n.

Next useful consumer: after the actual gap divisibility is Lean accepted, optionally formalize U as the complementary primeFactors product and apply the already available per-prime bound. The initial proof-engineering priority is the gap transfer, not this optional product lemma. No new finite scan was run for this route.

# Rough LCM compression gives a curved additive-gap exclusion

Valuation-transfer paper theorem, 2026-09-08 18:18 UTC checkpoint; baseline `37e42aca251c33c62cbc2c40f286daa0526d79ee`. No Lean acceptance is claimed. The primary schedules the small generic audit in `audit_lcm_compression.py`; this worker does not execute it. Shared deadline remains 21:41:44 UTC, with no extension invoked.

## Expected change to the unresolved frontier

The earlier LCM bound `V_i(n)|R_i(d)`, with `d=n-2j>=i`, gives `C(n,i)<R_i(d)^2` under noCommon and the adopted EEES theorem. Bounding the full lcm by `4^(d+i)` only controls fixed d/i bands. The new compression proves the exact binomial bound

`R_i(d) | K_i * C(d+i-1,2i-1)`,                              (LC)

where `K_i=product_{i<p<=2i-1, p prime}p`. Hence every hypothetical counterexample with d>=i satisfies

`C(n,i) < K_i^2 * C(d+i-1,2i-1)^2`,                        (BC)

and the entirely elementary, deliberately loose consequence

`n*i^3 < 1296*d^4`.                                       (PC)

Therefore all legal triples with `d>=i` and `1296*d^4<=n*i^3` are covered. The excluded band grows like `n^(1/4)i^(3/4)` in d, rather than stopping at a fixed multiple of i. The exact binomial inequality (BC) should be retained as the stronger consumer.

All of n,i,j remain unbounded in the complement. This does not establish global finiteness or settle the target. It complements the separate odd-progression source route for constant d/i bands. Novelty is unassessed; the arithmetic resembles standard lcm/factorial comparisons and should not be presented as a first discovery.

## Definitions and nonvacuous theorem

For integers i>=2 and d>=i, set `m=2i-1`, `M=d+i-1`. The positive interval `[d-i+1,d+i-1]` has m terms. Let L be its lcm. For prime p define `delta_p=1` when p=i, otherwise 0. Put

`R_i(d)=product_{p prime,p>=i} p^max(v_p(L)-delta_p,0)`.

For every legal B699 triple, the actual avoiding part D defined in `zero-gap-memo.md` satisfies D|R whenever d>=i: there is no zero cell because `2r+d<i` is then impossible. Thus (LC) yields the unconditional, nonvacuous statement

`D_i(n,j) | K_i * C(d+i-1,2i-1)`.

Only the subsequent replacement D=V and use of EEES require noCommon. The algebraic divisibility theorem itself uses neither EEES nor a prime-distribution theorem.

## Exact proof of (LC)

The lcm L divides the product of its positive interval terms, and that product is

`M*(M-1)*...*(M-m+1) = m! * C(M,m)`.

Fix a prime p>=i. Since `m=2i-1<p^2`, the factorial exponent is

`v_p(m!) = 1 if p<=m, and 0 if p>m`.

Consequently

`v_p(L) <= v_p(C(M,m)) + 1[p<=m]`.

If p=i is prime, subtracting the exact numerator correction delta=1 yields

`max(v_p(L)-1,0) <= v_p(C(M,m))`.

If p>i, delta=0, so the only possible extra factor is one p with p<=m; K_i includes exactly those factors, once each. Comparing every prime valuation proves (LC).

No assertion about two numerator multiples, their exact locations, or matching is needed. The preliminary derivation using at most two multiples was correct but unnecessarily detailed; the lcm-divides-product identity and the one-factor factorial valuation are enough. This simplification is the preferred formalization target.

## Explicit polynomial bound with no analytic constant

The following elementary estimates are sufficient:

1. `C(n,i)>=(n/i)^i` for n>=i: write the coefficient as the product of `(n-r)/(i-r)`, each at least n/i.
2. `K_i | C(2i-1,i-1)`, because all its primes lie in the numerator interval `(i,2i-1]` and exceed the denominator i-1. By symmetry and the binomial sum, `C(2i-1,i-1)<=4^(i-1)`.
3. For positive integer m, `m!>(m/3)^m`, hence `C(M,m)<(3M/m)^m` for M>=m.
4. For d>=i, `M/m=(d+i-1)/(2i-1)<=d/i`.

For completeness, estimate 3 has a finite elementary proof. The binomial expansion gives

`(1+1/m)^m <= sum_{r=0}^m 1/r! < 3`,

using `r!>=2^(r-1)` for r>=1 and a finite geometric sum. Induction then proves `m^m<3^m*m!`: the induction step multiplies the previous inequality by the displayed bound `(m+1)^m<3*m^m`. Combining `C(M,m)*m! <= M^m` with this factorial inequality gives the claimed strict coefficient estimate.

Under noCommon, write x=d/i>=1. The previous items and (BC) imply

`(n/i)^i < 16^(i-1) * (3x)^(4i-2) < 16^i * (3x)^(4i)`.

The right side is `(1296*x^4)^i`. Monotonicity of the i-th power on positive rationals yields `n/i<1296*(d/i)^4`, exactly (PC). One can avoid rational roots entirely by multiplying through by `i^(4i)` and comparing positive integer i-th powers.

Using the standard e-based factorial estimate improves 1296 to `16*e^4`, but no such improvement is needed for the accepted scope. Do not replace the exact (BC) by the weaker constant bound when assessing actual inputs.

## Boundaries and failed strengthenings

- K_i cannot generally be omitted. For i=2,d=2, the interval is 1,2,3: L=6, adjusted R=3, C(M,m)=C(3,3)=1, K=3. Thus R does not divide the binomial alone. A nonvacuous actual avoiding-part instance is n=16,i=2,j=7,d=2: D=3 and the same compressed binomial is 1.
- The product being bounded is D, not the numerator-adjusted W. At n=12,i=2,j=4,d=4, D=2 and W=4, while `K*C(5,3)=3*10=30`; D divides 30 but W does not. The extra p=i numerator factor was used to cancel the single p in m!, and cannot be kept in the conclusion.
- The restriction d>=i makes every difference cell nonzero. For d<i, zero-cell primes divide the j-window term instead; (LC) alone cannot be asserted for D without the additional `C(j,z)` factor.

## Acceptance and next check

Paper result only. The algebraic route depends on the exact full-Q localization, the adjusted R definition, lcm-divides-product, the factorial product identity, and prime valuations of `(2i-1)!`. The original-target consumer additionally depends on EEES with all twelve exceptions already discharged by the adopted top-prime argument.

The tiny new audit enumerates only `(i,d)` for the generic lcm/binomial theorem and elementary inequalities, plus the two explicitly chosen avoiding-part diagnostics; it does not rescan all B699 triples or repeat the original i=1 criterion. A proof engineer may use the direct prime-by-prime argument to avoid implementing a large gcd of Vandermonde terms. Source-policy, executable transitive axiom checks, and source correspondence are required before any Lean acceptance claim.

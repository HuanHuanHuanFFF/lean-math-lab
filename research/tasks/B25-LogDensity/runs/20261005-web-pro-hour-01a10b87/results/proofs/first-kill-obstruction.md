# A uniform density-only first-kill charge is false

Status: independently re-derived paper proof plus exact finite checks. This tower mechanism was found in Chojecki's March 19, 2026 partial note; it is NOT claimed as a new counterexample or a solution of Erdős 25.

## Exact family
Fix r>=1 and a positive integer u. In increasing order, choose

    n_j = u*2^(r-j)*3^j, j=0,...,r.

For j<r choose the residue

    a_j congruent to u*3^r*(1+2^(r-j-1)) modulo n_j,

and choose a_r=0. All moduli are distinct and increasing, since the successive ratio is 3/2. Let E_r be the points first deleted by the last row, after avoiding every earlier activated row.

Then, EXACTLY on the positive integers,

    E_r = {u*3^r*(1+2^r*t): t=0,1,2,...}.

Proof. Every last-row point is x=u*3^r*v with v>=1. All earlier rows are active there because n_j<=n_r<=x. The j-th congruence reduces, after cancelling u*3^j and inverting an odd number modulo 2^(r-j), to

    v congruent to 1+2^(r-j-1) modulo 2^(r-j).

As k=r-j ranges over 1,...,r, these are the disjoint cases in which v-1 has 2-adic valuation k-1. Their complement is precisely v=1 modulo 2^r. This proves the formula. No assumption gcd(u,6)=1 is needed for this computation.

## Consequence
Put q=u*3^r and e_r=d(E_r)=1/(q*2^r). At N=q,

    H_(E_r)(N)=1/q,       H_(E_r)(q)/e_r=2^r.

Thus no universal constant C can make

    H_(E_i)(N) <= C*e_i*H_N

hold for all finite activated systems, all first-kill rows, and all N: take u=1 and r tending to infinity, since H_(3^r)<=1+r log 3.

Likewise, the last-row quotient set is v=1 mod 2^r, with quotient density 2^(-r). At quotient cutoff Y=1 its harmonic mass is 1, while an entropy-sized expression C*d*log(2/d) tends to zero. A conditional argument requiring an additional transient/charge term cannot simply set that term to zero.

This does NOT refute a bound for the TOTAL deleted union, an amortized charge across different rows, conditioned-tail continuity in the double-limit sense, or B25. Even r=1 shows a rowwise problem, but the unbounded factor as r grows is the relevant uniform obstruction.

## Executed exact checks
experiments/verify_capacity_and_tower.py checks r=1,...,16 with u=1 and u=5. In each case it tests every possible multiple of the last modulus in one common period, both using the full periodic predicates and using the actual activation predicates on [1,period]. Both independently return the single quotient residue/point v=1. This is 32 parameter instances and 524,280 raw predicate tests on candidate multiples. The analytic proof, not this finite range, establishes all r and u.

# Actual exponent localization and the additive central gap

Initial memo written by 2026-09-08 18:03 UTC. Owner: valuation-transfer (`/root/valuation_transfer`). Only this directory is writable by this worker. Source baseline: `37e42aca251c33c62cbc2c40f286daa0526d79ee`. Shared round start 17:41:44 UTC; original deadline 21:41:44 UTC; no extension invoked. Mathematical statements below are paper arguments, not Lean acceptance. Primary schedules all executable checks.

## Inputs actually adopted

The source-aligned target is: for natural `1 <= i < j <= n/2`, some prime `p >= i` divides both `C(n,i)` and `C(n,j)`. We retain the endpoint `p=i`.

Adopted baseline: the complete prime-power part `V_i(n)` transfers to `C(j,i)` under no common prime, from [DivisorTransfer.lean](../../../20260908-external-reductions-b3c1b7/lean/DivisorTransfer.lean). Adopted paper dependence: exact EEES with all twelve exceptions already handled by the top-prime argument, hence `noCommon => C(n,i) < V_i(n)^2`. The exact numerator localization in external report appendix E, section 1.5 is reused, not claimed as new. Existing two-cofactor hypotheses were read in `Math/B699/CofactorCriterion.lean`; no coprime-cofactor configuration is assumed here.

First packet from primary suggested the three numerator windows and `r+s=a<i`. The present route uses the additive defect `d=n-2j`. Primary independently developed overlapping bounds after the first exchange; those messages and the primary route comparison supply provenance. No novelty claim is made.

## An unconditional object for nonvacuous checking

Fix legal `n,i,j`, initially with `i>=2`. Let

`S = {p prime : p>=i, e_p=v_p(C(n,i))>0, p does not divide C(n,j)}`

and define the actual avoiding part

`D_i(n,j) = product_{p in S} p^e_p`.

This uses actual binomial valuations, and exists for every legal triple. Under `noCommon`, it equals `V_i(n)`; outside that branch it is still useful for a nonvacuous arithmetic audit. Put `delta_p=1` if `p=i`, otherwise 0, and `Q_p=p^(e_p+delta_p)`. The numerator-adjusted product is `W=product Q_p`; it equals D, except for one additional factor i when prime i belongs to S.

For every p in S, the length-i numerator has a unique p-divisible term `n-a_p`, where `0<=a_p<i`, and the valuation of this term is exactly `e_p+delta_p`. Thus `n mod Q_p=a_p`. Kummer's no-carry implication gives

`r_p=j mod Q_p <= a_p`, `s_p=(n-j) mod Q_p=a_p-r_p`.

Consequently all quantities below are actual residues:

`r_p+s_p=a_p<i`, `Q_p | j-r_p`, `Q_p | n-j-s_p`.

These constraints are necessary, not sufficient for p avoiding `C(n,j)`: higher powers than Q still matter.

## Exact zero/nonzero split

Set `d=n-2j>=0`. Then

`Q_p | d+r_p-s_p`.

The integer on the right lies in `[d-i+1,d+i-1]`. Define

`L_i(d) = lcm { |d+h| : h an integer, -i<h<i, d+h != 0 }`,

with empty lcm 1, and set

`z = max(0, ceil((i-d)/2))`.

Split S into actual zero cells, where `d+r_p-s_p=0`, and nonzero cells. At a zero cell,

`s_p=d+r_p`, `2r_p+d<i`, so `0<=r_p<z`.

All Q's are powers of distinct primes. Their zero-cell product divides `(j)_z=product_{r=0}^{z-1}(j-r)`, even when several primes have the same r. Since `z<i`, every prime in this product is coprime to z!, and therefore

`W_zero | C(j,z)`.

No matching, injectivity of p -> r, or generic assignment is assumed. Multiple primes in one row are handled by their actual pairwise coprimality.

For nonzero cells, `Q_p|L_i(d)`. Define the adjusted rough lcm

`R_i(d)=product_{p prime, p>=i} p^max(v_p(L_i(d))-delta_p,0)`.

Then `D_nonzero|R_i(d)`. Because the zero and nonzero parts are coprime, this proves the unconditional divisibility

`D_i(n,j) | R_i(d) * C(j,z)`.                                      (ZG)

It also gives the less adjusted `W | primePart(i,L_i(d))*C(j,z)`, but (ZG) uses the denominator endpoint more sharply.

For `i=1`, the original target already follows from the accepted transfer: under noCommon, `n=V_1(n)|C(j,1)=j<n`. This case does not need the z argument.

## The bounded-gap simplification

Assume `1<=d<=i`, so `d+i-1<=2i-1<i^2` for `i>=2`. Every nonzero Q is at most `i+d-1`. Thus p=i is impossible there, because its exact numerator Q has exponent at least 2. If p>i then Q=p, since p^2>2i-1. Every eligible integer in `(i,i+d-1]` occurs in the lcm interval. Hence the adjustment simplifies exactly to

`R_i(d) = P_i(d) = product_{i<p<=i+d-1, p prime} p`.

In particular P is a squarefree product of actual possible prime bases, and

`P_i(d) | C(i+d-1,d-1)`.

The latter divisibility is merely a convenient upper bound: each p exceeds i>=d, occurs as itself in the numerator interval, and is absent from `(d-1)!`.

Under noCommon, (ZG) and EEES yield the precise necessary inequality

`C(n,i) < P_i(d)^2 * C(j,z)^2`.                                  (NE)

This is an unconditional implication from the original hypotheses plus the explicitly adopted EEES theorem, not a new assumption on a hypothetical counterexample.

## Complete excluded families

For d>=1, `z<=floor(i/2)`. Put u=floor(i/2), t=ceil(i/2). Because i<j, both u and t are at most floor(j/2). Vandermonde and coefficient monotonicity give

`C(n,i) >= C(2j,i) >= C(j,u)C(j,t) >= C(j,z)^2`.

Thus when `1<=d<=i` and `(i,i+d-1]` has no prime, (NE) is impossible. In particular:

- every legal triple with `n=2j+1` is covered;
- every legal triple with `n=2j+2` and odd `i>=3` is covered;
- more generally, the positive central strip through the next-prime gap is covered (the interval formulation above is the self-contained statement; Bertrand places the next prime before 2i for i>=2).

At d=0, the adjusted rough lcm is 1 and z=ceil(i/2). The same proof covers every even i. For odd composite i>=9, transfer the even case at k=i-1: its witness p>=i-1 is actually >=i because i-1 is even>=4; p does not divide the composite integer i. Then `i*C(n,i)=(n-i+1)*C(n,i-1)` transfers p to C(n,i). The only central cases not eliminated by this argument are odd prime i. No claim is made that those are counterexamples.

This is new local coverage relative to the adopted `3i<2j` frontier, including infinitely many triples. Other d and central odd-prime i remain unbounded. Existing or unpublished central-row claims have not been recovered or used here.

## Quantitative consumer and division of work

For `2<=d<=i`, define `h=i-2z`, so h is either d or d-1 and h>0. The primary derived and this worker audited the sharper balanced inequality

`C(n,i) >= C(j,z)^2 * ((j-t+1)/t)^h`, t=ceil(i/2).

Indeed there are exactly `(u-z)+(t-z)=h` coefficient increments, and every increment is at least `(j-t+1)/t`. Among `(i,i+d-1]`, parity bounds the number of primes by floor(h/2):

- i even, d even: at most d/2=h/2;
- i even, d odd: at most (d-1)/2=h/2;
- i odd, d even: at most (d-2)/2=floor(h/2);
- i odd, d odd: at most (d-1)/2=floor(h/2).

This includes i=d=2 (possible prime 3; h=2). With M=i+d-1, `P^2<=M^h`. Combining with (NE) gives

`j < ceil(i/2)*(i+d)-1`,

and hence `n < 2*ceil(i/2)*(i+d)+d-2`. Primary owns its final formulation and any prime-gap-theorem consumer. This uniform O(i^2) restriction is a necessary bound in the whole `2<=d<=i` band; it does not itself make i bounded.

## Failure shields and smallest checks

1. Low Q residues alone are not equivalent to p avoiding the second binomial: `(n,i,j,p)=(12,2,6,3)` has exact Q=3, a=r=s=0, but 3 divides C(12,6)=924. Higher digits still carry.
2. Do not drop the extra p=i exponent: at `(12,2,4,p=2)`, Q=4, a=r=s=0, and Q divides the nonzero defect d=4. This is a valid individual avoiding-prime localization, and shows why the simplified ordinary-prime interval is restricted to d<=i.
3. Do not replace z=ceil((i-d)/2) by its floor: at `(28,3,14,p=13)`, d=0, a=2 and r=s=1. This prime divides j-1 and does not divide C(j,1). The original triple still has the valid boundary common prime 3.
4. The derived D bound is a necessary divisibility, not sufficient for noCommon. The proposed finite audit will compute D from actual binomials and check every claim unconditionally; it will never infer correctness merely because noCommon has no finite instances.

Next decision-changing check: primary serially executes `audit_zero_gap.py` on a small fresh bounded range, independently checks the three explicit diagnostics against integer binomial values, and separately reviews (ZG)'s exact prime-i correction and the even-to-odd-composite transfer. No Lean proof engineering is requested until that review is complete. Expected versus actual frontier: paper elimination of the named infinite families and necessary bounds, with finite verification pending and no Lean acceptance yet.


## 18:07 UTC route reassessment

The rational-structure worker reports a primary Laishram-Shorey odd-progression theorem which, after exact exception checks, covers all d<=i directly. The primary is checking its applicability. Consequently the target coverage of the elementary quadratic bound above is superseded by that stronger source route when accepted. The avoiding-part / adjusted LCM divisibility remains reusable and independently nonvacuous. No extra wheel-count or local-constant work will be allocated in the already covered band.

At the primary's request, the audit script removes all legacy i=1 target scans and the generic original-counterexample collection. It retains only new D/Q localization, new gap structure, exact inequalities, named consumers, and the three diagnostic failures. The next bounded task is the exact Vandermonde gcd comparison and a new d>=i rough-LCM compression.

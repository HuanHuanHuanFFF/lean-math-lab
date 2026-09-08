# Two-binomial gap transfer and the elementary constant 324

Paper supplement to `lcm-binomial-compression.md`, 2026-09-08 18:23 UTC checkpoint. The earlier constant 1296 remains valid but is superseded by 324 in the elementary polynomial consumer. The exact K_i/binomial divisor from the earlier memo remains the stronger exact divisibility. No Lean acceptance or novelty claim is made.

For legal `i>=2`, `i<j<=n/2`, set `d=n-2j` and assume d>=i. Let D be the actual avoiding part, with the complete binomial exponents. Then

`D | C(d,i) * C(d+i-1,i-1)`.                              (TB)

There are two short proofs. First, the earlier bound gives `D|K_i*C(d+i-1,2i-1)`, while `K_i|C(2i-1,i-1)` and the choose-multiplication identity gives

`C(d+i-1,2i-1)*C(2i-1,i-1)=C(d,i)*C(d+i-1,i-1)`.

More directly, every actual numerator Q divides a positive term in `[d-i+1,d+i-1]`, so its product W divides the product of that interval. The exact identity is

`product_{v=d-i+1}^{d+i-1}v = i!*(i-1)!*C(d,i)*C(d+i-1,i-1)`.

For every p>i, the denominator factor i!*(i-1)! is prime to p. For prime p=i it has exactly one p, and W contains one more p than D. Thus the complete selected binomial power p^e divides the two-binomial product for each p, and pairwise coprimality gives (TB). This direct bridge can avoid introducing L or K in the formal interface.

## Exact consumer and polynomial consequence

Under noCommon, D=V and the adopted EEES theorem gives

`C(n,i) < [C(d,i)*C(d+i-1,i-1)]^2`.                     (TBC)

Keep the stronger K-based exact bound as well. To obtain an integer constant without analytic estimates, put x=d/i>=1 and use the previously proved `m!>(m/3)^m`.

Since `d+i-1<2d` and `(i/(i-1))^(i-1)<3`,

`C(d+i-1,i-1) < (6d/(i-1))^(i-1) < 3*(6x)^(i-1)`.

Also `C(d,i)<(3x)^i`. Hence their product is strictly less than

`3*(6x)^(i-1)*(3x)^i = (18^i/2)*x^(2i-1)`.

Combining with `C(n,i)>=(n/i)^i`, we obtain

`(n/i)^i < (324^i/4)*x^(4i-2) < (324*x^4)^i`.

Therefore every hypothetical counterexample with d>=i satisfies

`n*i^3 < 324*d^4`.                                       (PC324)

Equivalently, all legal triples with d>=i and `324*d^4<=n*i^3` satisfy the original Common target. This rules out a curved infinite near-center band, yet n,i,j remain unbounded outside it. The constant is conservative; no claim is made that it is optimal.

The proof requires no new source theorem beyond the explicitly adopted EEES consumer. The algebraic (TB) itself needs only exact full-Q localization and factorial/choose arithmetic. The small i=2 boundary is included: i!*(i-1)!=2, and Q for p=i contains at least 2^2 whenever that prime is selected.

## Verification status

The already handed-off generic compression script is unchanged, so its SHA and primary execution scope stay stable. It checks the stronger exact K divisor and the earlier1296 consequence. This324 supplement is a paper proof sent for cross-route AI review; no extra finite enumeration was requested or run. A targeted reviewer should check the strict inequalities, i=2, and the cancellation of exactly one p=i.

## Primary simplification and formalization outline (18:24 UTC)

The primary supplied a shorter constant argument. Set M=d+i-1. The exact ratio identity gives

`B=C(d,i)*C(M,i-1)=(i/d)*C(d,i)*C(M,i)`.

As i/d<=1 and each choose coefficient is less than `(3N/i)^i`,

`B^2 < (81*d^2*M^2/i^4)^i`.

Combining with the original noCommon/EEES bound gives the sharper intermediate condition

`n*i^3 < 81*d^2*(d+i-1)^2 < 324*d^4`.

This avoids the separate adjacent-factorial estimate in the first324 derivation. Both arguments are valid; use this shorter one for the final exposition. The exact K-based divisor remains the strongest exact statement.

Suggested bounded Lean route, avoiding a large Vandermonde-gcd definition:

1. Establish the per-prime numerator lemma: if p is prime, i<=p, e>=1, and p^e divides C(n,i), then there is a<i with `p^(e+delta)|n-a`, delta=1 iff p=i. e need not be the exact binomial valuation. Among the i numerator terms at most one is p-divisible, and the denominator i! has exactly delta p factors. For engineering, the identity `n.descFactorial i=i!*C(n,i)` and the unique p-divisible factor separate the only real valuation obligation.
2. Put Q=p^(e+delta). Its size Q>=p>=i>a implies n mod Q=a. If p avoids C(n,j), apply the contrapositive of the already accepted `B699.prime_dvd_choose_of_mod_lt` to obtain `b=j mod Q<=a`.
3. With d=n-2j>=i define the natural positive integer `t=d+2*b-a`. Since d>a, no truncated-subtraction issue remains. Modular arithmetic gives Q|t, and `d-i+1<=t<=d+i-1`. This is the reflected residue map, equivalent to the r,s version but using just one child remainder.
4. Split at t<=d. In that case Q divides a term of `d.descFactorial i`; otherwise it divides a term of `M.descFactorial (i-1)`. Thus Q divides their product, which is `i!*(i-1)!*B`.
5. For p>i, Q=p^e is coprime to both factorials, so p^e|B. For p=i, rewrite `i!*(i-1)!=p*((p-1)!)^2`; cancel one p from `p^(e+1)|p*((p-1)!)^2*B`, then use coprimality of p with (p-1)! to get p^e|B. This avoids computing the complete factorization of the gap product.
6. Aggregate the prime powers using their pairwise coprimality. A generic statement can take any D dividing C(n,i), coprime to C(n,j), whose prime divisors are at least i. The actual avoiding part and the noCommon V are consumers. No EEES is needed in this algebraic lemma; the inequality consumer must keep EEES separate.

The only potentially substantial proof-engineering step is item1's complete exponent transfer to the unique numerator term. It is not acceptable to assume that localization without labeling the result conditional. Items2-5 use existing Kummer/Euclidean arithmetic and finite-product facts, and include the p=i boundary explicitly.

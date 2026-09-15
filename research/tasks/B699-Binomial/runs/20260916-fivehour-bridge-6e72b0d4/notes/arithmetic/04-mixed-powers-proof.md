# Two independent smooth exponents over ten fixed rough cofactors

Author `/root/arithmetic`. Completed author paper argument and two exact finite implementations; independent parent AI acceptance is recorded separately. Adopted QIG and Bugeaud Theorem 2 are precisely those bound in `02-fixed7-proof.md`; the elementary logarithmic-inequality lemma is proved in `03-fixed-cofactor-interface.md`. No Lean. This version is frozen for stage handoff; further directions use new files.

## Intended complete statement and boundary

For `d in {5,7,11,13,17,19,23,25,29,31}`, all `A,B>=0`, and `n=d*2^A*3^B`, prove the original binomial statement for each i=4 and i=5, with every legal `i<j<=floor(n/2)` and a prime p>=i. Both exponents and j remain unrestricted in the statement. The two indices are checked separately, including the extra j=5 at i=4.

This removes the two-exponent families at every d with `5<=d<=31` and `gcd(d,6)=1`. It does not include d=1 by an argument requiring d>=5. Any later aggregation with the old pure 2/3-smooth family must state that separate source and its acceptance level. General d is still unbounded, so this is not complete H02 or complete i=4/i=5.

## 1. One quartic upper interface serves both indices

Let T5 be the product of the first four target-5 small parts as in the previous proofs, and let T4 remove only the full 2 and 3 parts. Then `T4<=T5`. The source QIG proof works for each i=4 or i=5 with its own complete-power definition and legal j; all source primes are at least 5. Therefore, if NC_i holds and `T5<=D*n`, then

`n-1 < D^6/2^16`.  (HEIGHT)

Likewise a strict QIG inequality evaluated using T5 proves both whole rows (for their respective legal ranges). This is a comparison of the quartic necessary inequalities, not a transfer of an i=5 prime witness to C(n,4). The finite boundary must be verified independently for both source coefficients.

Partition the exponent quadrant into: (a) A>=2,B>=2; (b) A>=2,B=0 or 1; (c) A=0 or 1 with all B>=0.

## 2. The full two-dimensional interior is impossible under NC_i

If A>=2 and B>=2, the four-window 2-parts multiply to 2^(A+1), the 3-parts to 3^(B+1), and at most one solitary 5 adds a factor 5. Thus

`T5 <= 30*2^A*3^B = (30/d)n <= 6n`.

HEIGHT would give `n-1<6^6/2^16=46656/65536<1`, impossible for the legal n. This argument uses d>=5, and excludes every exponent pair in this quadrant at once.

## 3. Horizontal edges: B=0 or B=1

For B=0, the proof of `03-fixed-cofactor-interface.md` applies, because the same T5 upper bound is valid under either NC_i. For A>=3, let v=v3(d2^A-r), r in {1,2}; then

`A<10v`, `A<5360*k*(ell+11)^2`, where k=bit_length(d), ell=bit_length(k).

For B=1, n=3d2^A with A>=2. Put `v=v3(d2^A-1)>=0`. The exact 3-part product is 3^(v+2), while the 2-part product is 2^(A+1). Hence

`T5 <=90*2^A*3^v=(30/d)*3^v*n`.

If v=0, HEIGHT again gives n-1<1, impossible. Otherwise

`(3d/2)2^A < ((30/d)^6/2^16)*3^(6v)`.

For d>=5 the coefficient remaining after dividing by 3d/2 is less than 1, so A<10v. The same p-adic theorem with ratio 1/d and r=1 gives the same exponent cap. The complete least-residue lifting now needs only the r=1 root. A=2 is a separate finite bottom row on each of these edges.

## 4. Vertical edges: n=e*3^B, e=d or 2d

Let `delta=v2(e)` be 0 or 1 and assume B>=2. In the four-window the 3-parts multiply to 3^(B+1). The 2-parts multiply to `2^(C+1)`, where 2^C is their largest complete 2-power: it occurs at r=1 or 3 when e is odd, and at r=2 when e is even. Thus

`T5 <=30*3^B*2^C=(30/e)*2^C*n`.

Since e>=5, HEIGHT yields `3^B<2^(6C)<3^(4C)`, so

`B<4C`.  (V-LINEAR)

Write `B=2u+epsilon`, epsilon=0 or 1. For the high 2-power source location r, set `alpha2=r/(e*3^epsilon)` and reduce this rational fraction. Let `Lambda=9^u-alpha2`. Since the numerator and denominator have the same 2-valuation delta, alpha2 is a 2-adic unit and

`v2(Lambda)=C-delta`.

When C-delta>=2, alpha2=1 modulo 4 because 9^u=1 modulo 4. Use Bugeaud Theorem 2 with modulus **m=4**, base alpha1=9, auxiliary integer **g=1**, second ratio alpha2, exponents u and 1, heights A1=9 and A2=3e, and mu=4,c1=66.8. Both rationals are nonzero, Lambda is nonzero, u>=1, and gcd(4,u,1)=1. The first fraction is not +-1. H1 has v2(9-1)=3>=2, and H2 requires two valuations >=2, which hold. Auxiliary g is odd as required; an auxiliary g=2 would be invalid here.

The second height safely exceeds both the numerator and denominator of the reduced ratio, including r=3 and either epsilon. Write `L=log(3e)`. The theorem's `b'=u/log(3e)+1/log9<u+1<=2u`. Its coefficient is less than `66.8*3*L=200.4L<201L`, using log9<3 and log4>1. Also log4<2, log(log4)<1, and log2<1, so the logarithmic maximum is less than `max(log u+3,8)`. Thus

`v4(Lambda) <201*L*max(log u+3,8)^2`.

Crucially `v4(Lambda)=floor((C-delta)/2)`, so

`C <= 2v4(Lambda)+1+delta <402*L*max(log u+3,8)^2+2`.

The +2 is retained. V-LINEAR gives

`u <810*L*max(log u+3,8)^2`.

The previous monotonicity lemma, now K=810k with `k=bit_length(3e)` and `ell=bit_length(k)`, proves the explicit cap

`u <3240*k*(ell+11)^2`.  (V-CAP)

If C-delta<2, then C<=delta+1<=2, and V-LINEAR gives B<8. More generally, all cases C-delta<=2 satisfy B<4(delta+2)<=12. They can therefore be included in the finite bottom B=0,...,11, so no logarithm theorem is applied outside H2.

## 5. Complete 2-adic lifting for the vertical high part

It remains to handle B>=12. V-LINEAR then forces `t=C-delta>=3`. Put

`c=e*3^epsilon/2^delta`, `r0=r/2^delta`.

These are odd integers and the congruence is `c*9^u=r0 mod2^t`. Since 9^u=1 modulo 8, only branches with c=r0 modulo 8 are possible. Here r0 is 1 or 3 when e is odd, and 1 when e is even. A branch failing this congruence has no B>=12 candidate.

For t>=3, the order of 9 modulo 2^t is exactly `2^(t-3)`, from the elementary identity `v2(9^v-1)=3+v2(v)` for v>=1. Consequently its powers exhaust the unit subgroup 1 modulo 8. For each valid branch there is one least u_t in `[0,2^(t-3))`, and the next root is exactly one of `u_t` and `u_t+2^(t-3)`. These least roots are nondecreasing.

Enumerate all `u=u_t+z*2^(t-3)` satisfying u<V-CAP and

`12<=2u+epsilon<4(t+delta)`.

Use the actual valuation test `v2(e*3^(2u+epsilon)-r)=t+delta` before the full exact QIG comparison. Stop only when the observed least u_t reaches or exceeds V-CAP. This is a cap-certified termination, not an extrapolation from initial residues. All remaining low B=0,...,11 rows are evaluated separately with exact QIG.

## 6. Completed finite original-problem certificates

For every non-QIG row, certify both i=4 and i=5 using primes p>=i and exact binomial valuations. A compact carry interval may be used: if q=p^h and all j in an interval lie in one q-block with `j modq>n modq`, then the entire interval has a p-carry. This concerns complete powers and all layers, not radicals. The source prime must separately be deterministically certified and satisfy `v_p(C(n,i))>0` for that i.

`experiments/arithmetic/mixed_powers_probe.py` records every branch, final root/cap comparison, exact-valuation filter, and strict QIG row. Its complete reduction output has 20 horizontal cases, 60 vertical cases (12 active high-layer branches), and 479 finite candidate rows including the low boundary. Only 40 rows fail strict QIG.

`mixed_powers_certificate.json` contains separate original certificates for i=4 and i=5 in every one of these 40 rows: 80 indexed rows, covering **32,248,840,180** legal pairs by **157** prime-power carry intervals. This is interval coverage, not that many individual calculations. In particular, i=4 includes j=5 and has its own source-prime valuation check. Complete higher powers such as 7^8 and 17^6 occur legitimately in the target carry intervals; each prime's divisibility of the source binomial is verified separately.

The largest finite row is `n=32,212,254,720=5*2^31*3`. Its entire target range is covered by the prime `32,212,254,719=n-1`, deterministically verified by complete trial division. Other large rows include n=9,034,497 and 27,103,491, covered by several short intervals.

`mixed_powers_verify.py` does not import the discovery code. It reconstructs the horizontal roots using base 4, checks both vertical binary lifts, directly exhausts all small exponents allowed at each valuation level, and compares the complete branch inventory. It then verifies every factorization, prime, source valuation, and entire serialized interval: consecutive endpoints, no gaps/overlaps, the same q-block, and the strict residue inequality. Its output `mixed_powers_verification.json` reports all exact checks passed in about 0.03 seconds. The two implementations share an author; independent parent AI review is separate.

Actual original benefit is the complete stated double-exponent family for both indices. This has not closed unrestricted i=4/i=5 or H02. In the general H02 role, the relations `g^7<2^22 n` and `A=O(log d*(log A)^2)` still allow d to grow; no inference of a bounded d is made. The next route should address that freedom or a structural shift, rather than mechanically extending the finite d list.

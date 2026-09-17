# From fixed 7 to an effective arbitrary fixed cofactor

Author `/root/arithmetic`; continuation of the fixed-7 stage. Completed author paper argument with two exact finite implementations for the corollary below; independent parent acceptance is separate. No Lean. The QIG and Bugeaud Theorem 2 inputs are exactly those identified in `02-fixed7-proof.md`. This version is frozen for stage handoff; the mixed-power continuation will use a new file.

## Expected benefit and missing freedom

Goal: turn **every specified** odd cofactor d, coprime to 3, into a finite and often short exponent check. Success can settle complete infinite row families `n=d*2^A` when the finite original-binomial boundary is also discharged. The unknown d itself remains unbounded in general H02. In particular, a bound depending on d does not close any of the six unrestricted denominator templates.

The first falsifiable application beyond 7 is a short list of d<=31; only complete families with no remaining original-binomial boundary may be called closed. Do not count a QIG survivor as an NC5 point.

## Theorem: an explicit exponent bound in the bit length of d

Let `d>=5`, `gcd(d,6)=1`, `A>=3`, and `n=d*2^A`. If NC5 holds for any legal j, write

`k=bit_length(d)`, `ell=bit_length(k)`.

Then

`A < 5360*k*(ell+11)^2`.  (COFACTOR-CAP)

All integer terms on the right are computable without factoring d. This is an effective relative bound, uniform in d; it does not give an absolute bound as d varies.

### 1. QIG gives A<10B

Among n,n-1,n-2,n-3, exactly one term is divisible by 3: `n-r`, where `r=n mod3` is 1 or 2. Set `B=v3(n-r)>=1`. The complete 2-parts have product 2^(A+1), and the complete 3-parts have product 3^B. At most one solitary 5 contributes. Hence `T<=10*2^A*3^B`.

QIG-height gives

`(d/2)*2^A < ((10/d)^6/2^16)*3^(6B)`.

Since d>=5, the coefficient left after dividing by d/2 is less than 1. As in the fixed-7 argument, `2^A<3^(6B)<2^(10B)`, so `A<10B`.

### 2. The same p-adic theorem retains the coefficient dependence

In Bugeaud Theorem 2 use `m=3`, auxiliary g=2, `x1/y1=2`, `x2/y2=r/d`, `b1=A`, `b2=1`, `A1=3`, `A2=d`, and mu=4 with c1=66.8. H1 holds because every 3-adic unit squares to 1 modulo 3, and H2 is vacuous. Lambda is nonzero because `2^A>r/d`; all denominators are 3-adic units. The fractions r/d are reduced, since d is odd and coprime to 3.

The coefficient of the squared maximum is `(668/5)*log d/(log3)^3 < 134*log d`.
Moreover `b'=A/log d+1/log3<A+1<=2A`, and thus `log b'<log A+1`. Together with `log(log3)<1`, `0.64<1`, and `4log3<8`, this gives

`B < 134*log d*max(log A+3,8)^2`.

In particular, with `K=1340*k` and `log d<k`,

`A < K*max(log A+3,8)^2`.  (RELATIVE)

This is where a fixed coefficient becomes essential. Replacing log d by a constant while d varies would be an invalid use of the theorem.

### 3. Solve the logarithmic inequality explicitly

Here k>=3 and K>=4020. Put `W=log K+3>6`, and `A0=4*K*W^2`.
For W>=6, the function `W-log4-2log W` is increasing and positive: positivity at 6 follows from `e^6>144`. Consequently

`log A0+3 = W+log4+2log W < 2W`,

so `A0/(log A0+3)^2 > K`. The function `x/(log x+3)^2` is increasing for x>1, as its derivative is `(log x+1)/(log x+3)^3`. Thus RELATIVE cannot hold for A>=A0; the alternative maximum 8 is already smaller at A0 (indeed A0>4020*144 and log A0+3>8).

Finally, `log1340<8`, `log k<ell`, and therefore `W=log1340+log k+3<ell+11`. This proves COFACTOR-CAP. All coarse logarithm comparisons are elementary; for instance e>5/2 proves both e^6>144 and e^8>1340.

## Complete lifting procedure for a specified d

For each r=1,2 and each B>=1, maintain the least `a_{B,r}` in `[0,2*3^(B-1))` such that `d*2^a=r mod3^B`. The order proof and three-way lifting are the same as for d=7. Maintain the two roots separately: when d=2 modulo 3, the r=2 root need not equal a_{B,1}+1 without reducing modulo the period.

Enumerate every `A=a_{B,r}+t*2*3^(B-1)` with A>=3 and `A<min(10B,COFACTOR-CAP)`. Check actual `v3(d*2^A-r)=B` before the full exact QIG comparison. All roots are nondecreasing with B. Termination is certified only after **both** least roots exceed the exponent cap. A long observed plateau is never replaced by an assumption that a root will not return.

The finite original-problem boundary comprises A=0,1,2 and the non-QIG candidates. Its cost depends on their actual n. A practical exponent enumeration does not imply that factorization, prime certification, or all-j coverage in a huge surviving row is automatically cheap. If this boundary remains, report only finite reduction for that d.

## General H02 consequence and remaining gap

In the role with the maximal 2-power at zero, the actual n can be written `n=d*2^A` with d odd and coprime to 3. Thus COFACTOR-CAP is a new explicit relation between its complete 2-exponent and its non-2 cofactor. The previous gcd bound constrains d from above through the same input, but does not fix d or make its bit length bounded. No absolute A bound, strict descent, or full H02 closure follows from simply juxtaposing these estimates.

This proof uses the old quartic QIG and an external explicit logarithm theorem; it is not another improvement of the symmetric interpolation constant. Its reuse value is the finite-lifting consumer for each fixed rough coefficient.

## Exact finite corollary for ten complete row families

For each `d in {5,7,11,13,17,19,23,25,29,31}`, the complete original i=5 statement holds on `n=d*2^A` for every A>=0 and every legal j. These are exactly the values d with `5<=d<=31` and `gcd(d,6)=1`. A and j are not bounded in the statement.

`experiments/arithmetic/fixed_cofactor_probe.py` applies the exponent cap and performs all three-way root lifts. The second implementation `fixed_cofactor_verify.py` instead lifts powers of 4 with the two parities separately and directly scans all A<10B at each level. It does not import the discovery code. The two programs share an author; this is not an independent AI or human review.

The full reconstruction passes: 15--17 levels per cofactor, the final least residues above each proved cap, and only four non-QIG rows above A=2:

| d | A | n | Explicit target-carry cover |
|---|---:|---:|---|
| 5 | 13 | 40960 | p=20479 for 6<=j<=20478; p=5851 for j=20479,20480 |
| 7 | 3 | 56 | p=53 for all 6<=j<=28 |
| 19 | 6 | 1216 | p=1213 for all 6<=j<=608 |
| 19 | 7 | 2432 | p=607 for [6,606] and [612,1213]; p=347 for [607,611] and [1214,1216] |

Each listed prime is deterministically certified by trial division and divides C(n,5). The low A=0,1,2 rows are also all checked. Altogether `fixed_cofactor_certificate.json` contains 34 original rows (four empty legal ranges), **22792** legal pairs, and **40** contiguous prime-witness intervals. Every interval was rechecked with exact Legendre valuations; no probable-prime result, sample, or radical-only source condition enters the certificate. The largest original row is 40960.

Actual benefit: ten unrestricted one-power row families, plus the general effective fixed-cofactor interface. The six unrestricted NC5 denominator templates and H01/H02 remain. This stage has not audited overlap with the union of all old row consumers or claimed a literature novelty result.

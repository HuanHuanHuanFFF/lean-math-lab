# Discriminant arithmetic: a uniform large-index exclusion

Owner: valuation-transfer. Scope: this file only; all previously frozen Lean files and notes remain unchanged. This paper-only task began at the primary's request before20:04 UTC, with a20:30 UTC checkpoint and the unchanged whole-round deadline21:41:44 UTC. No numerical scan, factorization search, matrix computation, or Lean run was performed by this worker. Four fixed integer comparisons and one Taylor-polynomial margin were checked with exact integer arithmetic, recorded below.

## Result, provenance, and evidence status

**Paper theorem from the checked source inputs:** for all natural n,i,j satisfying

`1<=i<j<=floor(n/2)` and `i>=1,000,000`,

there is a prime p>=i dividing both C(n,i) and C(n,j).

This is a uniform exclusion in all n and j, not a fixed-i argument. It reduces the remaining index range to i<1,000,000; n and j are still unbounded in that remaining range. It does not solve all B699, and no claim of global finite verification follows.

The primary proposed the discriminant route and supplied the decisive exact factorial cancellation and bootstrap below. This worker independently checked the coefficient-content bridge, every normalization exponent, strict inequality direction, and numerical certificate. The rational-structure worker separately checked the Jacobi source identity and scaling. Novelty has not been established; the older reported determinant/discriminant literature leads are not being claimed as recovered or disproved.

An initial independent uncanceled factorial estimate already gave a safe i>=10^20 exclusion. It was superseded, not refuted, by the primary's exact cancellation, which yields the much stronger explicit1,000,000 threshold without a new source theorem. The proof below is the adopted argument. No discriminant or analytic source theorem has been added as a Lean axiom, and this result is not labeled Lean accepted.

## Exact objects and coefficient divisibility

For i>=2 and legal n,i,j, put k=n-j>=j>i and

`F(X)=sum_{r=0}^i C(j,r) C(k,i-r) X^r`.

Its degree is exactly i, since the leading coefficient C(j,i) is positive. Define the actual avoiding part

`D=product_{p prime,p>=i,p|C(n,i),p not dividing C(n,j)} p^v_p(C(n,i))`.

This is the previously implemented avoidingPart, with complete exponents and p=i included. Let V be the full p>=i part of C(n,i), and U the full complementary p<i part, so C(n,i)=UV. Under noCommon, D=V. Without noCommon, D is still a nonvacuous integer attached to every legal triple.

For every0<=r<=i, the factorial identity is

`C(n,i) C(i,r) C(n-i,j-r) = C(n,j) C(j,r) C(k,i-r)`.

All lower indices are in range because r<=i<j<=k. The actual D divides the left side and is coprime to C(n,j), so D divides the coefficient f_r=C(j,r)C(k,i-r). This proves divisibility of every coefficient without reducing to radicals. At p=i the interior factor C(i,r) can contribute another p, but it is not canceled or needed for the stated full-D divisibility.

Therefore F=D*G for some G in Z[X] of degree i. The ordinary polynomial discriminant is homogeneous of degree2i-2 in the coefficients:

`Disc(F)=D^(2i-2) Disc(G)`.

Once Disc(F) is nonzero, Disc(G) is a nonzero integer; hence

`D^(2i-2)<=|Disc(F)|`.                                    (C)

This is an unconditional actual-D assertion. Only replacing D by V uses noCommon.

## Checked discriminant input and normalization

The [DLMF Jacobi expansion18.5.8](https://dlmf.nist.gov/18.5.E8) identifies

`F(X)=(1-X)^i P_i^(k-i,j-i)((1+X)/(1-X))`.

The parameters are at least1. The Jacobi roots are distinct in(-1,1), and map to negative roots of F. The [DLMF discriminant formula18.16.19](https://dlmf.nist.gov/18.16.E19), citing Ismail(2009), gives, after this fractional-linear change,

`Disc(F)=product_{nu=1}^i nu^(nu-2i+2)`
`  * (j-i+nu)^(nu-1) (k-i+nu)^(nu-1) (n-i+nu)^(i-nu)`.      (J)

The product is positive. Rootwise, differences acquire a factor2 divided by(1+t_a)(1+t_b); the factors in the new leading coefficient cancel every such denominator. Thus `Disc(F)=2^(i(i-1))*Disc(P)`, exactly canceling DLMF's leading2^(-i(i-1)). There is no missing monic normalization or leading-coefficient power.

This worker independently opened the DLMF expansion and discriminant entries and checked the substitution algebra; the rational worker's more detailed source review is the normalization record. For orientation, i=2 reduces to j*k*(n-1), and i=3 to j^2*k^2*(j-1)*(k-1)*(n-2)^2*(n-1)/12. The integer discriminant property in(C), together with(J), supplies the required nonvanishing and positive lower unit.

## Cancel the factorial before bounding anything

Write

`m=pi(i-1)`, `r=m/i`, `H=product_{nu=1}^i nu^nu`, `B=i(i-1)/2`,

and let P be the product of the three shifted factors in(J). Then

`Disc(F)=H*P/(i!)^(2i-2)`.

Kummer's carry bound gives each small-prime power at most n, so `U<=n^m`. This is also the source-independent inequality proved in the frozen SmallPartBound.lean. Under noCommon,

`V=(n)_i/(i!*U)`.

Substituting this exact expression in(C) and canceling `(i!)^(2i-2)` gives

`(n)_i^(2i-2) <= U^(2i-2)*H*P`.                           (F)

This exact cancellation is essential; replacing both factorial expressions independently loses useful normalization.

Now H<=i^(i(i+1)/2). The exponents of the j,k,n shifted groups each sum to B, so

`P<=j^B*k^B*n^B<=n^(3B)/4^B`.

Also `(n)_i>=(n-i+1)^i`. Thus

`(n-i+1)^(2i(i-1))`
` <= i^(i(i+1)/2) n^(3i(i-1)/2+2m(i-1)) / 2^(i(i-1))`.

Taking the positive i(i-1)-th root yields

`2(n-i+1)^2 <= i^((i+1)/(2(i-1))) n^(3/2+2r)`.

Set X=n/i>2. Since `1-(i-1)/n>1/2`, division by the positive factors gives the strict inequality

`X^(1/2-2r) < 2*i^(2r+1/(i-1))`,

or equivalently

`(1/2-2r) log X < log2 + 2r log i + log i/(i-1)`.          (L)

The strict sign comes from the legal X>2 offset bound, even if an earlier estimate was an equality.

## Explicit upper bound X<11000 for every i>=10^6

The prime-count estimate quoted in LS2012 Lemma2.1 is directly available in [Dusart, arXiv1002.0442v1, Theorem6.9, upper inequality(6.5)](https://arxiv.org/pdf/1002.0442v1): for x>1,

`pi(x)<=x/logx*(1+1.2762/logx)`.

We apply it at the integer i and use pi(i-1)<=pi(i). If i>=10^6, then log i>12, because e<3 and3^12=531441<10^6. Consequently

`r<22127/240000`, `1/2-2r>37873/120000`,
`2r log i<22127/10000=2.2127`.

For u=sqrt(i)>=1000, the elementary log u<=u-1 gives

`log i/(i-1)<=2/(sqrt(i)+1)<1/500`.

Also log2<7/10. Hence the right side of(L) is less than29147/10000=2.9147. The exact positive margin

`(37873/120000)*(37/4) -29147/10000 =2245/480000 >0`

proves logX<37/4. The elementary e<68/25 and the fixed rational inequality

`(68/25)^37 <11000^4`

then give X<11000. All divisions and logarithms are of positive quantities; the coefficient of logX is positive before it is divided out.

## Dusart bootstrap contradicts that upper bound

Set y=n-i=i(X-1)>i>=10^6. The already source-audited [Dusart Proposition6.8](https://arxiv.org/pdf/1002.0442v1) gives a prime

`y<p<=y*(1+1/(25(logy)^2))`.

Its threshold is y>=396738; here the application is strictly above10^6, so no endpoint ambiguity in PDF text extraction matters. The absence of an original common prime implies that no prime lies in(y,n], by the accepted top-prime lemma. Hence the displayed prime must satisfy p>n. Comparing its upper bound with n=y+i forces

`X-1>25(logy)^2`.                                        (D)

The direction is strict: an upper interval endpoint equal to n would already contradict noCommon.

Since logy>logi>12, (D) first gives X-1>3600. As e^8<(11/4)^8<3600, we get log(X-1)>8 and therefore logy=logi+log(X-1)>20. A second use of(D) gives X-1>10000. Now e^9<(11/4)^9<10000 gives log(X-1)>9 and logy>21. A third use of(D) gives

`X-1>11025`,

contradicting X<11000. This proves the stated uniform large-index exclusion.

## Fixed exact constants checked, not a numerical scan

The exponential estimates use only elementary series. Summing through1/5! and bounding the tail geometrically gives `e<11743/4320<68/25<11/4<3`. The fourth Taylor partial sum of exp(7/10) is482921/240000>2, proving log2<7/10.

This worker evaluated only the following fixed integer comparisons, with no floating point:

- `11000^4*25^37 -68^37`
  `=14000613552267766631793121372562947959392296629350089528632270098432>0`.
- The alpha comparison's numerator over480000 is2245>0.
- `3600*4^8-11^8=21570719>0`.
- `10000*4^9-11^9=263492309>0`.
- The exp(7/10) Taylor margin over240000 is2921>0.

These are exact constant certificates, not finite evidence for an unrestricted n,i,j assertion. The unrestricted part is the preceding symbolic argument.

## Minimal nonvacuous diagnostic and remaining obligations

Proposed for the primary only, not executed by this worker: at n=12,i=p=2,j=4,k=8, the actual D is2 and

`F=28+32X+6X^2=2*(14+16X+3X^2)`.

Its discriminant is352=4*88, agreeing with j*k*(n-1) and the D^(2i-2) scaling. This checks the actual p=i content boundary without assuming noCommon. The original triple has other common primes, so it is not a B699 counterexample. A direct quartic resultant check may be added only if a remaining normalization doubt warrants it; the already independently checked i=2/i=3 identities are not an unrestricted proof.

The new actual frontier is `i>=1,000,000 excluded for every legal n,j`. For i<1,000,000, n,j remain unbounded. Neither a fixed-i argument nor the separately completed exact-slope1/3 family has been silently promoted to a full global finite reduction.

This file is paper evidence, with a checked classical discriminant source and checked prime estimates. It is not a Lean formalization, human peer review, or a novelty/publication acceptance. All existing Lean files stayed frozen. The next high-value check is independent reconstruction of(F) through(D) against the fixed source formula; do not spend the remaining round merely decreasing1,000,000.

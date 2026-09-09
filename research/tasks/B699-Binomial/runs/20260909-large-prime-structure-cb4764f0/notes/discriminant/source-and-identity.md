# Jacobi source and exact discriminant identity for the coefficient polynomial

Owner: rational_structure, GPT-6 Astra / Max. Source/identity subtask assigned by the primary around2026-09-08 20:00 UTC; first critical source confirmation sent within10 minutes, full checkpoint due20:30 UTC. Shared round deadline21:41:44 UTC, no extension invoked. Only this file is written. No Lean, matrix calculation, factorization or numerical campaign was executed by this worker.

Status: the displayed discriminant identity, its normalization, positivity and content-divisibility consumer are verified on paper against primary reference sources. The quadratic and cubic checks below are hand algebra. This is not a new Lean result or a novelty claim. The primary owns final quantitative global bounds; the valuation worker independently checks their arithmetic.

## Locked object, quantifiers and intended frontier change

Let n=j+k with natural1<=i<j<=k, exactly the original B699 legal range after putting k=n-j. Define the actual integer polynomial

F(X)=sum_{r=0}^i C(j,r)C(k,i-r)X^r.

It has degree exactly i, leading coefficient C(j,i)>0, constant C(k,i)>0 and F(1)=C(n,i)>0. No unproved cofactor or prime-power supply is assumed. Let D be the complete part of C(n,i) whose prime bases p>=i avoid C(n,j), with actual full binomial valuations. Under noCommon, D=V_i(n).

The proposed new object uses all coefficients simultaneously. If valid, content powers divide a nonzero discriminant whose degree in j,k is only3i(i-1)/2. This can constrain all large i uniformly in n,j, rather than another fixed-slope or fixed-gap band. It does not by itself settle the remaining bounded-i, unbounded-n region. The minimal falsification checks were normalization at X=0,1,infinity, nonzero roots and the symbolic i=2,3 discriminants; all passed as below.

## Exact primary sources and conventions

[NIST DLMF18.16.19](https://dlmf.nist.gov/18.16.E19), in the discriminants subsection, explicitly gives

Disc(P_i^(alpha,beta)) = 2^(-i(i-1)) * product_{nu=1}^i
  nu^(nu-2i+2)*(nu+alpha)^(nu-1)*(nu+beta)^(nu-1)
  *(i+nu+alpha+beta)^(i-nu).

DLMF marks this as proved in M.E.H. Ismail, *Classical and Quantum Orthogonal Polynomials in One Variable*, corrected2009 reprint of the2005 original, formula(3.4.16). The DLMF bibliography explicitly distinguishes that corrected reprint; no direct reading of the full Ismail book is claimed here.

The standard normalization is fixed by [DLMF18.5.8](https://dlmf.nist.gov/18.5.E8). The classical parameter range and orthogonality interval are in [DLMFTable18.3.1](https://dlmf.nist.gov/18.3): alpha,beta>-1, interval(-1,1), weight(1-t)^alpha(1+t)^beta. The simple interior-zero theorem is [DLMF18.2(vi)](https://dlmf.nist.gov/18.2#vi).

A directly inspected author-hosted research paper independently confirms the same discriminant convention and formula: A. Dubickas and I. Pritsker, *Extremal problems for polynomials with real roots*, [author PDF](https://math.okstate.edu/people/igor/DubickasPritsker.pdf), page1 for Disc(f)=a_i^(2i-2)*product_{u<v}(t_u-t_v)^2, and Section5, Lemma16/equation(48), manuscript page15, for the Jacobi formula. Its general complex-parameter condition excludes alpha+beta=-i-nu,1<=nu<=i; our positive parameters satisfy that automatically. The reference is corroboration by an actual research source, not a Wikipedia-only attribution.

Use the standard polynomial discriminant. The unnormalized resultant Res(F,F') is instead(-1)^(i(i-1)/2)*lead(F)*Disc(F), so substituting that resultant would introduce an unwanted sign and leading factor. No such substitution is made below.

## Exact Jacobi transformation

Put alpha=k-i and beta=j-i. Both are integers>=1. DLMF18.5.8 reads

P_i^(alpha,beta)(t)=2^(-i)*sum_{ell=0}^i
  C(i+alpha,ell)C(i+beta,i-ell)(t-1)^(i-ell)(t+1)^ell.

At t=(1+X)/(1-X), we have(t-1)/2=X/(1-X) and(t+1)/2=1/(1-X). Multiply by(1-X)^i and set r=i-ell. This gives exactly

F(X)=(1-X)^i P_i^(k-i,j-i)((1+X)/(1-X)).                 (J)

There is no additional constant. Three normalization checks are:

- F(0)=P_i^(alpha,beta)(1)=C(k,i).
- lead(F)=(-1)^i P_i^(alpha,beta)(-1)=C(j,i).
- The standard Jacobi leading coefficient is a_i=2^(-i)C(n,i), so the limiting value at X=1 is2^i*a_i=C(n,i), agreeing with Vandermonde.

The right side of(J) is a polynomial after cancellation, not an equality asserted only away from X=1.

## Simple real roots and the complete discriminant transformation

The classical orthogonality and simple-zero theorem give i distinct Jacobi roots t_1,...,t_i in(-1,1). In particular t_u!=-1. Write P(t)=a_i*product(t-t_u). Then(J) becomes

F(X)=a_i*product[(1-t_u)+(1+t_u)X].

Its roots are x_u=(t_u-1)/(t_u+1), all finite, distinct and negative. Its leading coefficient is L=a_i*product(1+t_u), exactly the already checked C(j,i).

For u<v,

x_u-x_v=2(t_u-t_v)/[(1+t_u)(1+t_v)].

Therefore

Disc(F)=L^(2i-2)*product_{u<v}(x_u-x_v)^2
       =2^(i(i-1))*a_i^(2i-2)*product_{u<v}(t_u-t_v)^2
       =2^(i(i-1))*Disc(P).

Every factor(1+t_u) has exponent2(i-1) in the leading coefficient contribution and the same exponent in the pairwise-difference denominator; they cancel exactly. This is the explicit check that no C(j,i), C(n,i), sign or power of2 is missing. Positivity and nonvanishing follow both from these distinct real roots and from the positive product below. No repeated-root absence is merely assumed.

## Exact final identity and integral denominator

Combining the source formula with the transformation gives

Disc(F)=product_{nu=1}^i nu^(nu-2i+2)
  *(j-i+nu)^(nu-1)*(k-i+nu)^(nu-1)*(n-i+nu)^(i-nu).      (DISC)

For i>=2 define the positive integer

A_i=product_{nu=1}^i nu^(2i-nu-2)
   =(i!)^(2i-2)/H_i,       H_i=product_{nu=1}^i nu^nu.

All exponents in the first expression for A_i are nonnegative. The denominator-free form is

A_i*Disc(F)=product_{nu=1}^i
  (j-i+nu)^(nu-1)*(k-i+nu)^(nu-1)*(n-i+nu)^(i-nu).       (INT)

A_2=1 and A_3=12. The degree of the numerator in j,k, after n=j+k, is exactly

sum_{nu=1}^i [2(nu-1)+(i-nu)]=3i(i-1)/2.

For i=1, F is linear and the usual discriminant is1; the size arguments dividing by i-1 are restricted to i>=2.

## Hand checks of degrees two and three

For i=2,

F(X)=k(k-1)/2+jkX+j(j-1)X^2/2,

so Disc(F)=j^2k^2-j(j-1)k(k-1)=jk(j+k-1)=jk(n-1), exactly(DISC).

For i=3 write F=aX^3+bX^2+cX+d, with

a=j(j-1)(j-2)/6, b=j(j-1)k/2,
c=jk(k-1)/2, d=k(k-1)(k-2)/6.

Use the standard cubic expression b^2c^2-4ac^3-4b^3d-27a^2d^2+18abcd. A compact hand factorization is obtained by setting J=j-1,K=k-1,s=J+K,q=JK,T=q+s+1=jk,U=q-s+1=(j-2)(k-2). After extracting j^2*k^2*J*K/48, the remaining expression is

q*(3T^2+6TU-U^2)-4T*(2q^2+2q-s^2).

Since3T^2+6TU-U^2=8(q+1)T-4s^2, this simplifies to4s^2(T-q)=4s^2(s+1). Thus

Disc(F)=j^2*k^2*(j-1)*(k-1)*(n-2)^2*(n-1)/12,

exactly the nu=1,2,3 factors of(DISC). This hand calculation checks the nontrivial leading-degree cancellations and the denominator12; no symbolic-system result is being silently substituted.

## Actual coefficient content and complete avoiding exponents

For every0<=r<=i, a factorial identity gives

C(n,j)*C(j,r)*C(k,i-r)
 =C(n,i)*C(i,r)*C(n-i,j-r).                              (M)

All indices are legal because i<j<=k. By its actual definition, D divides C(n,i) and gcd(D,C(n,j))=1. Hence(M) proves

D | C(j,r)C(k,i-r)

for EVERY coefficient, retaining every positive exponent of every selected prime, including p=i. There is no need to introduce the numerator-adjusted Q here: the starting divisor is already the true binomial part and the coprime cancellation is against the second binomial.

Write F=D*G with G in Z[X]. Its leading coefficient is nonzero and its degree remains i. Discriminant is an integral polynomial in the coefficients, homogeneous of total degree2i-2. Therefore

Disc(F)=D^(2i-2)*Disc(G),

and Disc(G) is a positive integer because G has the same distinct real roots. In particular

D^(2i-2) | Disc(F), and D^(2i-2)<=Disc(F).                (CONTENT)

Under noCommon, replace D by the actual full V. Do not make that replacement for arbitrary legal triples. For example n=16,i=2,j=6,k=10 has actual avoiding D=15 and F=15(X^2+4X+3), so Disc(F)=900=D^2*4; its full V is120 because2 is actually common. This hand example confirms the nonvacuous D/content interpretation and guards the D=V branch boundary.

## Exact factorial cancellation in the improved global size route

This paragraph independently checks the primary's later improvement; quantitative closure is coordinated by the primary and valuation worker. No EEES assumption is needed.

Let q=pi(i-1), r=q/i, X=n/i and i>=2. Under noCommon, the already established elementary small-part bound gives

V >= C(n,i)/n^q=(n)_i/(i!*n^q).

From(INT), j*k<=n^2/4 and each upper parameter factor bounded by j,k,n respectively,

Disc(F) <= H_i/(i!)^(2i-2) * (n^3/4)^(i(i-1)/2).

Insert this into(CONTENT). The entire factorial denominator cancels EXACTLY, leaving

(n)_i^(2i-2) <= n^(2q(i-1))*H_i*(n^3/4)^(i(i-1)/2).

Legality gives n>2i, so(n)_i>(n/2)^i. Also H_i<=i^(i(i+1)/2). Taking logarithms and collecting terms gives the primary's exact inequality

(1/2-2r)*log(n/i)
 < log2+2r*log i+log i/(i-1).                            (LOG-NEW)

There is no missing factorial constant and no hidden EEES step. The earlier looser4-2log2 inequality is superseded when this exact cancellation is retained.

For the proposed i>=10^6 threshold, the already sourced prime-count estimate pi(i)<=i/log i*(1+1.2762/log i) and log i>12 give r<=22127/240000. Thus1/2-2r>=37873/120000. The elementary bounds log2<7/10 and log i/(i-1)<1/500 then make the right side<2.9147, whereas(37/4)*(37873/120000)=2.919377... . Hence log X<37/4 follows. The bound on log i/(i-1) can be proved from log i<=sqrt i and i>=10^6, not from an asymptotic approximation.

The primary's Dusart bootstrap is also logically consistent: putting y=n-i=(X-1)i, a prime-free mother window forces X-1>25(log y)^2. With log i>12 this gives X-1>3600; log3600>8 gives X-1>10000; then log10000>9 gives X-1>11025. This contradicts X<11000 once the fixed exponential comparison exp(37/4)<11000 is supplied. The valuation worker owns the independent rational-number audit of these final constants.

## Evidence and remaining boundary

The primary's polynomial idea, this worker's exact Jacobi/normalization verification and the valuation worker's arithmetic estimates are separate contributions. The source formula is known mathematics; no novelty claim follows from finding it. The content and transformation arguments are paper derivations, not Lean acceptance.

The source/identity obstacle has been removed. The intended gain is a uniform exclusion of all sufficiently large i for every n,j, not merely fixed-i finiteness. Even a completed bound i<10^6 would leave n and j unbounded for those remaining i, so it would not solve B699 or globally finiteize all inputs. The final accepted threshold and proof status belong in the primary's frontier after the arithmetic cross-check and statement review. No further computation is needed merely to recheck the quadratic/cubic identities above.

### Fixed exact comparisons for the primary's10^6 consumer

After the source verification, this worker also evaluated four fixed scalar integer comparisons, not a scan or symbolic-discriminant computation. They complete the elementary exponential bounds used in the preceding optional arithmetic check.

The series estimate e<163/60+7/4320=11743/4320<68/25<11/4 is proved by bounding the tail from1/6! by a geometric series of ratio1/7. Since68*81=5508<6400=25*256, we have e^(1/4)<4/3. The exact positive comparisons are:

- 4*68^9=124348401185718272 <125885009765625000=33000*25^9, difference1536608579906728. Hence exp(37/4)<(68/25)^9*(4/3)<11000.
- 11^8=214358881 <235929600=3600*4^8, difference21570719. Hence exp8<3600.
- 11^9=2357947691 <2621440000=10000*4^9, difference263492309. Hence exp9<10000.

Also exp(7/10)>1+7/10+49/200+343/6000=12013/6000>2, proving log2<7/10. The bound log i>12 for i>=10^6 follows from exp12<3^12=531441<10^6. To justify log i/(i-1)<1/500, use log i<=sqrt i and sqrt i>=1000: the denominator sqrt i-1/sqrt i exceeds500. The elementary log bound follows by minimizing t/2-log t at t=2 and using log2<1.

Finally, the rational margin in(LOG-NEW) is exact:

(37/4)*(37873/120000)-29147/10000
 =2245/480000>0.

Thus every numerical comparison quoted above has an elementary exact certificate, rather than reliance on a rounded decimal evaluation. The full high-index original-target conclusion still needs the primary's integrated paper acceptance and keeps all1<=i<10^6, unboundedn,j, outside this exclusion.

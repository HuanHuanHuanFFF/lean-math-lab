# A fixed rough cofactor: all rows n = 7 * 2^A

Status: completed author paper argument and two exact finite implementations; independent parent AI review is recorded separately. No Lean, axiom audit, human review, or priority/novelty claim. This version is frozen for stage handoff; subsequent generalizations use new files.

## 1. Claim and actual benefit

For every integer `A>=0`, put `n=7*2^A`. For every integer `6<=j<=floor(n/2)`, there is a prime `p>=5` dividing both `C(n,5)` and `C(n,j)`.

This is a full original-problem row family, with all j and all unbounded A. It does not close either general H01 or general H02, the six denominator templates, or the full i=5 problem. Unlike the initial proposed bridge, the proof below does not need the new g bounds or the old six-family classification. The currently unknown rough cofactor is fixed to 7 here; no global bound on it is inferred.

## 2. Adopted self-contained quartic interface

The fixed original is
`research/tasks/B699-Binomial/runs/20260912-leader-r7-joint-58-c8c256bc/deliveries/D-quartic-gap/notes/PROOFS.md`,
SHA256 `47cf4282825a4aa467973c0b27b1de914719beef17c162638107dedfb2568707`.
It was located by the exact member mapping of the D-odd-full source archive `6fe555795567a3cac52d985767727a6e4693f8717c7af93c5de85308c0427065`; no reconstructed ZIP was substituted for original bytes. Sections 1--3, including the complete-power argument and exact invariant identities, were read directly.

Define `s5(x)` to remove the full 2 and 3 parts, and additionally one factor 5 exactly when `v5(x)=1`; if `v5(x)>=2`, retain its entire 5-power in `q=x/s5(x)`. Under NC5 at n>=12, let `T=product(s5(n-r),r=0..3)`. Then

`T^6*(3n^2-12n+8) >= 2^20*(n-1)^6*(n-3)^3`.  (QIG)

Also, for any positive real d,

`T<=d*n  ==>  n-1 < d^6/2^16`.  (QIG-height)

For clarity, these are consequences of NC5, not alternative definitions of it. The source proves them from `V=product(q_r,r=0..3)` dividing every coefficient of
`sum(C(j,t)C(k,4-t)z^t,t=0..4)`, where k=n-j. With its standard integral quartic invariants I,J, it proves `I/V^2` and `-J/V^3` positive integral, and their combination `E=(-J/V^3)^2-2(I/V^2)^3` strictly positive integral. For X=jk,

`I=X(X-n+1)(n-3)(n-2)/8`,
`J=-X^2(X-n+1)(n-3)^2(n-2)/16`,
`E=X^3(X-n+1)^2(n-3)^3(n-2)^2*((n-1)(n-2)-X)/(256V^6)`.

The source bounds E on j,k>=6 and obtains the displayed inequalities. Full powers at p=5 are kept; p=i is not excluded. No newer or different historical source is adopted for this interface.

## 3. NC5 forces A < 10 B

Assume A>=3 and NC5. In the four-window, the 2 parts multiply to `2^(A+1)`. Since `7*2^A` is not divisible by 3, exactly one member among the four is divisible by 3:

- r=1 when A is even;
- r=2 when A is odd.

Let `B=v3(n-r)>=1` for this r. At most one window term has a solitary factor 5. Thus

`T <= 10*2^A*3^B = (10/7)*3^B*n`.

QIG-height and `n-1>=n/2` give

`(7/2)*2^A < ((10/7)^6/2^16)*3^(6B)`.

The coefficient after dividing by 7/2 is less than 1 (use 10/7<2), so `2^A<3^(6B)<2^(10B)` because `3^6=729<1024=2^10`. Consequently

`A < 10 B`.  (LINEAR)

This statement uses the actual valuation B. The later lifting stage first enumerates divisibility by 3^B, then tests whether the valuation is exactly B.

## 4. The external explicit p-adic bound and every parameter

Primary source: Yann Bugeaud, *Linear Forms in two m-adic Logarithms and Applications to Diophantine Problems*, Compositio Mathematica 132 (2002), 137--158, Theorem 2 on printed page 140. DOI: [10.1023/A:1015825809661](https://doi.org/10.1023/A:1015825809661).

The actual [publisher PDF](https://www.cambridge.org/core/services/aop-cambridge-core/content/view/C29F69887B6E1FDAFA5557110BBA8433/S0010437X02000416a.pdf/linear-forms-in-two-m-adic-logarithms-and-applications-to-diophantine-problems.pdf) was read, including the visual theorem page. The PDF is temporarily at `.tools/replay/6e72b0d4-arithmetic/bugeaud-2002.pdf` (238704 bytes, SHA256 `eeb78b2b94ba6d799d56d1f3c44222d0cfe2f168e2ac8c2ceb89ff1e49ab87b6`); the theorem page image is `bugeaud-theorem2-04.png` in that same directory, and H1/H2 are shown in `bugeaud-hypotheses-03.png`. The tuning parameter is Greek **mu**, not the modulus m; the PDF text extractor confuses them.

Use the theorem's non-independence constant `c1(4)=66.8=334/5`, with

| Paper symbol | Instantiation |
|---|---|
| m | 3 |
| x1/y1 | 2/1 |
| x2/y2 | r/7, r in {1,2} |
| b1,b2 | A,1 |
| g (paper's symbol, unrelated to gcd(n,j)) | 2 |
| A1,A2 | 3,7 |
| mu | 4 |
| Lambda | `2^A-r/7` |

The rational numbers are nonzero, 3-adic units, with the first different from +-1; Lambda is nonzero. The theorem's H1 holds: `v3(2^2-1)=1`, while `v3((r/7)^2-1)` is respectively 1 or 2. The auxiliary integer 2 is coprime to 3. H2 is empty because 2 does not divide m. The three integers m,b1,b2 have gcd 1 because b2=1. Both exponents are positive. Height requirements are satisfied by A1=3 and A2=7. Multiplicative independence is not needed with c1.

The displayed theorem gives, with all logs natural,

`B <= ((668/5)*log(7)/(log(3))^3) * max(log(b')+log(log(3))+0.64, 4log(3))^2`,
`b'=A/log(7)+1/log(3)`.

Here `v3(Lambda)=v3(n-r)` since 7 is a 3-adic unit. Using
`1<log3<2`, `3/2<log7<2`, and `log2<1`, for A>=3 we have `b'<2A/3+1<=A`. The coefficient is less than 267.2, and the maximum is less than `max(logA+2,8)`. Hence the intentionally loose consequence is

`B < 270*max(logA+2,8)^2`.  (PADIC)

These small logarithm comparisons are elementary: e<3 and e>2; e^2>7 follows from its first five series terms summing to 7; e^(3/2)<sqrt(27)<7. The constant is not a numerical approximation standing in for an inequality.

## 5. Absolute exponent bound A < 10^8

For x>1, `f(x)=x/(log x+2)^2` is strictly increasing, because `f'(x)=log x/(log x+2)^3>0`.
At `x0=10^8`, use `log10<3` to get `log x0+2<26`. Therefore

`f(x0)>10^8/676>2700`.

Also `log x0>6`, since e<3 and `3^6<10^8`, so the maximum in PADIC is `log A+2` throughout A>=x0. For such A, LINEAR and PADIC would give `f(A)<2700`, contradicting monotonicity. Thus every NC5 exponent A>=3 satisfies

`A < 100000000`.  (CAP)

The bound is deliberately loose; its magnitude does not control the actual enumeration cost below.

## 6. Complete finite lifting, rather than scanning the exponent cap

The order of 2 modulo 3^B is `P_B=2*3^(B-1)`: for even exponents use `v3(4^u-1)=1+v3(u)`, proved by the binomial expansion or elementary LTE; odd exponents are -1 modulo 3. Since the unit group has exactly P_B elements, the powers of 2 exhaust it. For each B>=1 there is a unique `a_B in [0,P_B)` with

`7*2^a_B = 1 mod3^B`.

Every such a_B is even. All exponents for r=1 are `A=a_B+kP_B`, and for r=2 they are `A=a_B+1+kP_B`, k>=0; no wrap occurs for r=2 because a_B is even and at most P_B-2. The next root is the unique one of `a_B+tP_B`, t=0,1,2 satisfying the next congruence. Thus a_B is nondecreasing.

For each B enumerate **all** exponents in those progressions satisfying `3<=A<10B` and CAP. Construct the small resulting integers n only after this bound. Retain an exponent only when `v3(n-r)=B` exactly, then test strict QIG with the actual four small parts.

The discovery output has 18 lifting levels; at B=18,

`3^B=387420489`, `P_B=258280326`, `a_B=106981814>10^8`.

Every later least residue is at least this large, and the r=2 residue is still larger. Therefore CAP proves termination for both branches, regardless of possible long plateaus. The finite loop is not justified by observing a pattern of growth.

The 13 resulting exponents are

`3,4,5,6,7,8,9,14,15,20,21,38,39`.

Strict QIG proves the original row for all of these except `A=3,n=56`. The exact table and the final stopping residue are in `experiments/arithmetic/fixed7_probe.json`. A second implementation, `experiments/arithmetic/fixed7_verify.py`, lifts powers of 4, tests all small A directly at each B, and reconstructs the same table in `fixed7_certificate.json`. Both programs share this author; the parent's independent AI review is a separate acceptance record.

## 7. Finite original-problem boundary

The only remaining rows to check directly are A=0,1,2,3, namely n=7,14,28,56. Row n=7 has no legal j. The other rows have 2,9,23 legal j values, totaling 34 pairs. The finite certificate must exhibit, for every pair, a deterministically certified prime p>=5 dividing both exact binomial coefficients. In particular the n=28,j=14 case is allowed to use p=5; it is not discarded as a strict-p>5 exception.

The 34-pair verification passed in `fixed7_certificate.json`, with every prime checked by complete trial division and both binomial coefficients computed exactly. Only the primes 5,7,11 were used. There is also a short paper check: if 7 does not divide j, use the carry modulo 7 in all three rows. If 7 divides j, n=14 leaves j=7 and prime 11 works; n=28 leaves j=7,14 and the complete source power 25 gives a 5-carry because `j mod25>28 mod25=3`; n=56 leaves j=7,14,21,28, whose residues modulo 11 are 7,3,10,6, all greater than `56 mod11=1`. Each stated prime divides the source C(n,5). Thus the original endpoint p=5 is handled explicitly. No infinite claim rests on a bounded sample.

## 8. Correction and relation to the first route memo

The weak family in `01-route-memo.md` has constant Q3=9 and also eventually violates the old bounded-minimum necessary height `n<2^24*9^7`. It was never a survivor of all old filters. Its q2 can be h/5, so the exact identity is `j=2h+1` for `h=(n-2)/18`, while the complete q2 congruence still follows. The fixed-cofactor proof now adds precisely the high-power mass that the weak family lacked.

After this fixed-cofactor stage, the central unknown in general H02 remains variable d (or g), not A alone. The logarithmic coefficient above then depends on log d. A fixed-cofactor theorem must not be described as a uniform solution of the six templates.

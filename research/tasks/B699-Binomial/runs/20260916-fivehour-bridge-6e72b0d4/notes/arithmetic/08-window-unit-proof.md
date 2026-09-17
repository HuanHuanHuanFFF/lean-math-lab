# A complete normalized window class: some q_r = 1 at i=7

Author `/root/arithmetic`; completed author paper argument and two exact finite implementations. The signed/cofactor-one reduction, SIXG reconstruction, and original boundary are checked separately; parent independent acceptance is recorded separately. No Lean. The historical two-position premise and its exact evidence boundary are those fixed in 07. This version is frozen for stage handoff.

## 1. Canonical statement and exact equivalence of the family

For a positive integer x define

`s7(x)=2^v2(x)*3^v3(x)*5^v5(x)*epsilon7(x)`,

where epsilon7(x)=7 exactly if v7(x)=1, and is 1 otherwise. In the legal i=7 problem put `q_r=(n-r)/s7(n-r)` for r=0,...,6.

Target: **if some q_r=1, then every legal 8<=j<=floor(n/2) has an original common prime p>=7.** Equivalently, prove all rows

`n=d*2^A*3^B*5^C+h`, `d in {1,7}`, `A,B,C>=0`, `0<=h<=6`.

The equivalence is exact for legal n: q_h=1 permits no prime above 7 and permits 7 only to its first power. A higher 7-power is retained whole in q_h and is not part of this class. Conversely each displayed core has q_h=1. This is not a radical condition.

A scoped source search did not locate an already complete 235-smooth seven-shift theorem: the selected D-even-gap source states ONE6/7 (common maximum-power position), D-quartic states the i4/i5 23-smooth shifts, and D-transfer states relative ROW-H bounds. This is not a global literature or full-history novelty claim.

## 2. Historical two-position premise, now at any source position h

As in 07, call A>=3, B>=2, C>=2 high. Each associated complete power exceeds 6. It is therefore uniquely maximal at the core position h in the full seven-window, even when h is not 0. If two exponents are high, all three maximum powers are covered by h and the position of the third maximum. The adopted historical i7 two-position theorem closes this whole part.

This premise is still the fixed old author-paper/certificate result at SHA `e2fae2c41fd986aba1c058e0c87ab50b9a1c1165fdd9aba7e101f81e1c2cf07a`, not a newly rerun position theorem. The new single-power component below is independent of old minQ/two-position use in its finite boundary.

The remaining triples are the same sixteen single-power strip types per d, with low exponents on the other bases, plus twelve no-high triples. Under seven shifts and two choices of d this gives 224 strip cases and 168 low-box representations. Write a strip core as `u=e*p^a`, p in {2,3,5}; the target is n=u+h. The fixed coefficient e is coprime to p and its other small-prime valuations are at most 2.

## 3. A fixed additive constant admits e=1

In the first four target source terms, the maximum complete p-power is at most p^a: every source term is core-rho with `rho in {-h,...,3-h}`, and a high p^a exceeds every nonzero |rho|<=6. Let Qq,Qr be the maximum complete powers of the other two small primes there. The complete small-part product satisfies

`T7<=42*p^a*Qq*Qr`.

QIG-height and n>=e*p^a now give

`p^a < (2/e)(42/e)^6/2^16 * (Qq*Qr)^6 <2^21*(Qq*Qr)^6`.

The last constant follows from e>=1 and 42<64. If Cmax is the larger of the two integer valuations, then Qq*Qr<=(qr)^Cmax and qr<=15<16<=p^4. Consequently

`a<21+24Cmax<36(Cmax+1)`.

Choose a prime q realizing Cmax. For a>=192, Cmax>=5. It is not the valuation of the core, which is at most 2. It occurs at a nonzero offset rho in [-h,3-h]. The unequal-valuation rule forces

`delta=v_q(e)=v_q(abs(rho))<=2`.

For odd q, delta<=1. Set e'=e/q^delta and rho'=rho/q^delta. They are q-adic units and

`Cmax=delta+v_q(e'*p^a-rho')`, with the latter valuation at least 3.

The small bottom a<192 is therefore complete; no low-valuation branch is passed to the high-level lifting.

## 4. Multiplicatively dependent ratios use elementary LTE

Because p does not divide e', a rational ratio rho'/e' multiplicatively dependent with p must equal `sign*p^b`, where sign=+-1 and b>=0. Here |rho'|<=6, so b<=2. Detect this exactly by integer division and removal of powers of p.

For a>=192, put t=a-b>0. At odd q, the elementary orders used in 07 give

`v_q(p^t-1)<=1+v_q(t)`, `v_q(p^t+1)<=1+v_q(t)`

when the relevant expression is divisible by q, and zero otherwise. At q=2 with p=3 or 5, both signs have valuation at most 2+v2(t). Hence, after restoring delta<=2,

`Cmax<=4+log2(a)`.

The selected-valuation inequality would give `a<36*(5+log2(a))`. It is impossible for a>=10^6: at 10^6 use log2(10^6)<20, and the difference a-36log2(a) is increasing thereafter. Thus these dependent branches have the safe absolute cap a<10^6. No logarithm theorem is applied to a zero auxiliary expression such as 1^g-1.

For a positive exact small root, the least residue may remain constant forever. In that branch termination is certified when the period reaches the exponent cap and the sole least root is below the bottom cutoff, with the exact equality `e'*p^a0=rho'`. The 2-adic version uses `e'*p^epsilon*(p^2)^u0=rho'` and its u cap. Negative ratios cannot give these exact equalities. An observed plateau alone is never a stopping proof.

## 5. Other ratios: the same two-log estimates, with height 6e

Put L=log(6e)>1; this covers every |rho'|<=6, every denominator, and the parity factor p<=5. For odd q=3,5 use m=q, auxiliary g=q-1, fractions p and rho'/e', exponents a and 1, heights 5 and 6e, and mu=4,c1=66.8. Signed nonzero rationals are allowed by the primary theorem's total notation. H1 and all unit/height conditions hold; H2 is empty.

For t=a/L and M(t)=max(log(t+1)+2,8), the same estimate gives

`v_q(e'p^a-rho')<535*L*M(t)^2`.

Since delta<=1 and now a<36(Cmax+1), this implies `t<20000*M(t)^2`, and therefore t<10^8 by the monotonicity lemma in 07.

For q=2, write a=2v+epsilon and use the base p^2=9 or 25, ratio `rho'/(e'*p^epsilon)`, m=4, auxiliary g=1, heights 25 and 6e. The high valuation is at least 3, so the ratio is 1 modulo 8 and H1/H2 hold. The theorem gives `v4(Lambda)<268*L*M(v/L)^2`. This time delta may be 2, so retain the corrected conversion

`Cmax<=2v4(Lambda)+delta+1<536*L*M(v/L)^2+3`.

Then v<=a/2<18(Cmax+1), giving `v/L<10000*M(v/L)^2` and v<10^8 L. Safe integer caps are

`a<3*10^8*bit_length(6e)`, `v<10^8*bit_length(6e)`.

Dependent branches may use a<10^6 and the harmless relaxed u<10^6. These caps apply to their exact stated branches; the old delta<=1/+2 formula was not silently reused at rho=+-4.

## 6. Complete lifting and prototype scope

For every strip, every q distinct from p, and every nonzero rho in [-h,3-h] with matching delta, lift the corresponding complete q-power congruence. Odd q has the primitive-base periods in 07; q=2 uses the base-9/25 subgroup 1 modulo 8 and both parities. Enumerate all progression members with a>=192, the appropriate cap, and

`a<36(v_q(e'p^a-rho')+delta+1)`.

Check the exact valuation, then apply scalar inequalities to **target n=core+h**. Positive exact small roots use the period/cap stopping certificate from section 4; all other roots use the actual least root reaching its cap.

The current prototype has 43,946 finite representations. Exactly 986 fail QIG, corresponding to 828 distinct n; the largest is 2^81+1. This initially made complete trial-prime factoring expensive. The next section supplies a stronger independently reconstructible scalar test; no huge integer is simply omitted.

## 7. SIXG: explicitly reconstructed six-window input

The selected historical source is the ordinary-file member with SHA
`5e6bf2e598b276d2b127a189e537a91d029d85c08a9cc9f158a3ebb16eef411a`,
stored under the daily intake `objects/5e/` path. Sections 1--2 were read directly. The following used part is independently reconstructed here; it is not claimed as a new invariant.

For q_s=(n-s)/s7(n-s), s=0,...,5, set V=product(q_s), T=product(s7(n-s)). Under NC7, V divides every coefficient

`a_t=C(j,t)C(k,6-t)`, t=0,...,6.

Every source prime is greater than 6; a full 7-power is retained when its source valuation is at least two. The no-carry argument then supplies a whole source prime power in one falling-factorial numerator, and both small factorials are units at that prime. Distinct source positions have coprime coarse blocks. Thus the coefficient divisibility uses complete powers, not radicals.

Define the integer coefficient polynomials

`A6=3a3^2-8a2a4+20a1a5-120a0a6`,
`b0=10a0a4-5a1a3+2a2^2`,
`b1=50a0a5-10a1a4+2a2a3`,
`b2=150a0a6-6a2a4+3a3^2`,
`b3=50a1a6-10a2a5+2a3a4`,
`b4=10a2a6-5a3a5+2a4^2`,
`B6=12b0b4-3b1b3+b2^2`, `D6=11A6^2-8B6`.

With X=jk the exact identity is

`D6=X^2(X-n+1)^2(X-2n+4)(n-5)^2(n-4)^2(n-3)*((n-2)(n-3)-X)/1728`.

For j,k>=8 all factors are positive. The coefficient-normalized value D6/V^4 is therefore a positive integer. For fixed n the X-dependent product increases up to X=n^2/4: the only coupled factor X^2*((n-2)(n-3)-X) has derivative X*(2(n-2)(n-3)-3X)>0. At n=16+s the last-factor lower bound and derivative lower bound have positive coefficients. Central substitution and exact cancellation give

`1<=T^4*(3n^2-20n+24)/(2^18*27*(n-1)^4*(n-3)^3*(n-5)^2)`.

Hence strict reverse inequality proves the entire i7 row. `sixg_identity_verify.py` rebuilds all coefficients from falling factorials using only Fraction dictionaries; it imports no CAS or old program. Its output checks the 30-term A6 identity, 93-term degree-17 D6 identity, exact center cancellation, and the positivity/derivative polynomials.

## 8. Completed finite original boundary and reconstruction

Applying exact SIXG to the 828 QIG survivors leaves 127 different target n, the largest 1,146,880. `i7_window_unit_certify.py` records every scalar comparison and constructs `i7_window_unit_certificate.json`: **141** complete prime-power intervals cover **1,233,588** legal original pairs. Every factorization and every prime is certified by complete trial division; the largest source prime is 1,146,877. No probable-prime decision or huge unverified row is accepted.

The second implementation `i7_window_unit_verify.py` imports no generator, factor finder, CAS, or historical position consumer. It reconstructs all **224** strip cases and **864** normalization/parity branches, independently detects **192** dependent branches, and verifies all **36** exact small-identity stopping certificates. It exhausts all bounded exponent ranges, rechecks signed valuations by next-level modular exponentiation, rebuilds all QIG and SIXG survivors, and validates the full prime-power interval certificate against the original C(n,7) and C(n,j). `i7_window_unit_verification.json` records all new checks passed in about 0.62 seconds. Routine candidate tables store exponents rather than redundant huge n strings; every n is recomputed exactly.

The frozen historical two-position theorem is used only for the unbounded part with two high exponents. Its inherited evidence level remains explicit. The new single-power and finite acceptance does not rely on historical minQ or position acceptance.

## 9. Original-index transfer boundary

Once the canonical i7 theorem is accepted, it transfers to i8 and i9 whenever `n mod49>=7`, with legal j>=9 and j>=10 respectively. This condition makes 7 absent from C(n,7), so its common prime is at least 11 and survives the denominators 8 and 72. Every d=7 shifted representation has this property, because the core has exact 7-valuation one and h<=6. The d=1 representations do not all have it; their i8/i9 transfer is conditional. General i7/i8/i9 and the R7 index set remain unresolved.

## 10. A direct necessary condition for every remaining NC7 input

The canonical theorem gives q_r>1 at all seven source positions. By definition a nontrivial q_r either has a prime factor at least 11 or contains a complete 7-power of exponent at least two. Thus `NC7 ==> q_r>=11` for every r=0,...,6. At r=0 the complete no-carry condition also gives q_0 dividing j and hence dividing gcd(n,j), so every remaining NC7 input has gcd(n,j)>=11. This is a structural exclusion, not a bound on the remaining large cofactors or a closure of i=7.

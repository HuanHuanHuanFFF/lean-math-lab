# i=6: a normalized unit window without the old position premise

Author `/root/arithmetic`; completed author paper proof and two exact finite implementations. Parent independent acceptance is recorded separately. No Lean. This proof uses QIG/SIXG, Bugeaud Theorems 2 and 3, and elementary two-dimensional lattice reduction. It does not use the historical i7 two-position theorem. This version is frozen for stage handoff.

## 1. Exact target

Define `s6(x)=2^v2(x)*3^v3(x)*5^v5(x)`, with **no removal of 7**, and `q_r=(n-r)/s6(n-r)` for r=0,...,5. The target is

`some q_r=1 ==> Common6(n,j) for every 7<=j<=floor(n/2)`.

Equivalently, prove every row `n=2^A*3^B*5^C+h`, A,B,C>=0, 0<=h<=5. The witness is a prime p>=6, hence at least 7. All 7-powers, including a solitary 7, stay in the coarse part for this index.

The four- and six-window integer-polynomial proofs apply directly under NC6: source primes are at least 7 and exceed the polynomial degree. Let T4 and T6 denote the target-6 small-part products. QIG-height gives `T4<=D*n ==> n-1<D^6/2^16`, and strict QIG or SIXG gives the whole original row. SIXG is used only at n>=16 here; any n=14,15 is included in direct finite checking.

## 2. Three high exponents are impossible

Use thresholds A>=3, B>=2, C>=2. All associated powers exceed 5. Even if the core lies outside the first four source positions, their maximum p-powers are no larger than the core powers. Removing one maximum for each p from four consecutive terms leaves at most its factor in 3!. Therefore, if all three exponents are high,

`T4<=6*2^A*3^B*5^C<=6n`.

QIG-height gives n-1<6^6/2^16<1, contradicting the legal domain. This is an unrestricted argument and needs no old position consumer.

## 3. At most one high exponent reuses only a necessary scalar interface

There are sixteen single-power strips, with the same low-exponent coefficients as 08 at d=1, plus twelve no-high triples. Under six shifts they form 96 strips and 72 bottom representations. Every target-6 small part is at most the corresponding auxiliary target-7 small part. Thus NC6 implies the same *necessary quartic height inequalities* used in the new single-power proof of 08, including its signed offsets, additive constant, LTE branches, and cap/identity stops.

This does **not** assert NC6 implies NC7. It transfers only the proved scalar inequality, or equivalently repeats its coefficient-divisibility proof with the stronger target-6 coarse blocks. The large-exponent part has n>=16; the stored single-strip candidate lists retain all low exponents, including n=14,15, before their scalar labels are discarded and recomputed for i=6.

Consequently the d=1,h<=5 candidate-exponent tables of `i7_window_unit_probe.json` are a complete finite superset for this component. New i6 scalar and original-prime checks are required on that superset; no i7 prime witness is simply transferred to C(n,6).

## 4. Exactly two high exponents reduce to two fixed logarithms

Let q be the remaining small prime, whose exponent delta is low. Let p<r be the two other primes in {2,3,5}, with high exponents U,V. Write

`core=q^delta*p^U*r^V`, `n=core+h`.

Let Cq be the maximum q-valuation in the first four source positions. Then

`T4<=6*p^U*r^V*q^Cq`,

and QIG-height gives `p^U*r^V<2*q^(6Cq)`. In particular

`U+V<1+kq*Cq`, where `k2=6,k3=12,k5=18`.

For U+V>=64, Cq is too large to occur at the core or at a source offset with unequal q-valuations. There is a nonzero rho in [-h,3-h] such that

`delta=v_q(abs(rho))`, `Cq=delta+v_q(p^U*r^V-rho/q^delta)`.

Since |rho|<=5, the remaining factor is `rho/q^delta=sign*p^s*r^t`, sign=+-1, with s+t<=2. The two high exponents ensure a=U-s>0 and b=V-t>0. Put H=a+b. Then

`Cq=delta+v_q(p^a*r^b-sign)`.

There is no variable coefficient in this expression. Thus three p-adic logarithms are unnecessary for this pure 235-smooth component.

## 5. Bugeaud Theorem 3 gives H<10^8

Use the same primary PDF as 02, now **Theorem 3 on printed pages 140--141**, visually checked in `bugeaud-theorem3-05.png`. It applies when m is a prime power without the gcd(m,b1,b2)=1 restriction. For mu=4 it has c3(4)=67. All other notation and H1/H2 are the same as in the already used Theorem 2.

For odd q=3 or 5 take m=q, auxiliary g=q-1, fractions p and 1/r, exponents 2a and 2b, and heights A1=A2=5. The form is `p^(2a)-r^(-2b)`, nonzero; all unit, H1, and height conditions hold and H2 is empty. Its valuation is at least that of p^a*r^b-sign. The coefficient is less than 1072, and its logarithmic maximum is bounded by

`M(H)=max(log H+3,8)`.

For q=2, use m=4, auxiliary g=1, fractions 9 and 1/25, exponents a,b, and heights A1=A2=25. H1/H2 hold because both fractions are 1 modulo 8. The form is again the squared product minus one times a 2-adic unit. Its v4 is less than 1072*M(H)^2. Restoring the valuation floor and delta<=2 gives, uniformly in all three cases,

`Cq<2144*M(H)^2+3`.

These numerical constants follow from log5<2, log25<4, logq>1, log4>1, b'<2H, and mu logm<8. Both exponents are positive; their possible common factors are covered by Theorem 3, not ignored.

Since H<=U+V<1+18Cq, we get `H<40000*M(H)^2`. For H>=10^8 the function H/(log H+3)^2 is increasing and at 10^8 exceeds 10^8/27^2>40000, using log10<3. Hence

`H<10^8`, `U+V<10^8+3<10^9`.

The integer 10^9 will be used as a deliberately loose norm cap for the finite lattice certificate.

## 6. Three exact lattices replace an enormous exponent square

For odd q use P=p^(q-1), R=r^(q-1), and M=q^(v-1). For q=2 use P=9,R=25, and M=2^(v-3), starting at v=3. In each case P generates the principal unit subgroup and R belongs to it, by the elementary valuations

`v3(4-1)=v3(25-1)=1`, `v5(16-1)=v5(81-1)=1`, `v2(9-1)=v2(25-1)=3`.

Let L_v be the unique logarithm R=P^L_v modulo q^v, in [0,M). It is lifted by testing all q next residues. Since the sign disappears on raising to the even exponent q-1 or 2, every high-valuation input supplies

`a+L_v*b=0 mod M`.

Thus (a,b) lies in the lattice with basis (M,0),(-L_v,1). The sign and exact valuation are restored when candidates are tested; this congruence is used only as a necessary condition.

### Exact shortest-vector stopping certificate

Two integer vectors b1,b2 are a basis of this lattice when they satisfy the lattice congruence and their determinant has absolute value M. A Gauss-reduced basis additionally has

`||b1||^2<=||b2||^2`, `2|<b1,b2>|<=||b1||^2`.

These inequalities prove b1 is shortest. Indeed b2's perpendicular component has length at least sqrt(3)/2 times ||b1||; a vector with coefficient of b2 of magnitude at least 2 is therefore longer. For coefficient +-1 the nearest multiple of b1 is zero by the inner-product bound, and for coefficient zero the claim is immediate.

Consequently `||b1||^2>=10^18` rules out every nonzero (a,b) with a+b<10^9. Higher valuation lattices are subsets of the current one, so this certifies termination at all later levels as well. No floating LLL output or inferred growth pattern is used.

The actual integer certificates stop at:

| q | final v | shortest squared norm |
|---:|---:|---:|
| 2 | 65 | 3776175218829249184 |
| 3 | 42 | 3766152863540569554 |
| 5 | 27 | 1414256803674469450 |

At earlier levels enumerate every positive b and the entire residue progression a=-L_v*b modulo M within the linear bound U+V<=kq*(v+delta). Impose the two high thresholds, U+V>=64, the signed offset, and the exact valuation of core-rho. This is a complete finite enumeration. A shortest-norm bound exceeding the small current sum bound also safely skips an entire level.

## 7. Completed finite reconstruction and original boundary

The full two-high region U+V<64 consists of 75,420 shifted exponent representations. The finite lattice levels contribute 139 high-sum representations. The probe `i6_two_high_lattice_probe.py/.json` applies exact QIG/SIXG to them; only three original rows remain, with maximum n=405. The lattices and scalar tests took about 0.45 seconds.

`i6_window_unit_certify.py` combines these cases with 18,807 single-high/low-box candidates from the frozen d=1 component. It recomputes i6's own source small parts and binomial conditions: 94,366 finite representations leave 595 distinct QIG survivors, and only **46** different target n after SIXG. The largest is **13,125**. The original certificate has **51** complete prime-power intervals covering **23,029** legal pairs, with j=7 included and source primes checked directly in C(n,6).

`i6_window_unit_verify.py` imports no generator or historical position consumer. It rechecks the frozen single-power trace functions, verifies each new lattice basis by its full determinant/index, congruences and reduction inequalities, and enumerates high candidates independently in a bounded **basis-coordinate box**, rather than using the generator's residue loop. It separately rebuilds the 75,420 low two-high representations, all scalar screens, and every original prime/interval witness. `i6_window_unit_verification.json` reports all new checks passed in about 0.85 seconds.

Thus the canonical unit-window theorem is complete at the author paper-plus-exact-certificate level without an old position premise. It still does not close arbitrary i=6 inputs whose six coarse blocks are all nontrivial. A direct consequence is `NC6 ==> q_r>=7` for all r=0,...,5; since q_0 divides gcd(n,j) under NC6, every remaining NC6 input has gcd(n,j)>=7.

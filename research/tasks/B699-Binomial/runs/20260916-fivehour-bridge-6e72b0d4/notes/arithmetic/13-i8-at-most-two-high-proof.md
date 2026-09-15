# Canonical i8 unit windows: every component with at most two high exponents

Author `/root/arithmetic`; completed paper proof and two exact finite implementations. Parent mathematical acceptance is separate. No Lean and no historical position theorem. This is an unrestricted family result, not a sample of small exponents.

## 1. Statement and unresolved component

Let `n=2^A*3^B*5^C*7^D+h`, with A,B,C,D>=0 and h in {0,...,7}. Call an exponent high using the fixed thresholds

`A>=3`, `B>=2`, `C>=2`, `D>=2`.

If **at most two** exponents are high, then the original common-prime statement holds for i=8 and i=9, for every legal j. The i8 witness is a prime p>=11 dividing C(n,8) and C(n,j). It transfers to i9 by `C(n,9)=C(n,8)*(n-8)/9` whenever j>=10. All complete powers are retained. In particular the proof includes h=7,D=1 as a low 7-exponent; it does not incorrectly assume that this core controls every 7-valuation in its shifted window.

For i8, the full canonical hypothesis `some q_r=1`, r=0,...,7, with q_r obtained by removing all 2,3,5,7 powers from n-r, is equivalent to the union of all the displayed representations. This theorem settles its zero-, one-, and two-high components. The four-high component is also excluded directly in section 2. The only canonical component still outside this file is **exactly three high exponents**; it is being handled separately. Arbitrary nontrivial coarse blocks remain outside the canonical hypothesis altogether.

## 2. Native six-window scalar bounds

Use the QIG and SIXG integer-polynomial constructions with source primes at least 11, directly under NC8. These primes exceed both source polynomial degrees and the target factorial denominators. This is the same-n,j complete-power argument reconstructed in 08 and the degree-six identity checker, not a transfer NC8=>NC7. n<18 has no legal i8 pair. For every other n the SIXG necessary inequality implies

`n^7<T6^4/4608`,

because n-r>n/2 for r<=5 and 3n^2-20n+24<3n^2. Here T6 is the product of the native 2357-small parts of n,...,n-5.

For each small prime p, choose a source position with maximal p-valuation. The sum of all the other valuations is at most v_p(5!), by comparing differences to that position. Thus the product of the small parts, after removing one maximum for every prime, is at most 120.

Every high core power exceeds 7. Since every source differs from the core by rho=r-h with |rho|<=7, its valuation at that high prime is at most the core valuation. Write H for the sum of the high exponents and let Cq be the largest source valuation at an inactive, low prime q. Then

`T6<=120*product(high core powers)*product(low q^Cq)`

`   <=120*n*product(low q^Cq)`.

Consequently

`n^3<45000*product(low q^(4Cq))`.

If two exponents are high, the product of the two inactive primes is at most 35<2^6. With C=max Cq and n>=2^H this gives **H<6+8C**. If one exponent is high, the product of the other three primes is at most 105<2^7, giving **H<6+10C**. These are necessary inequalities; no converse is claimed.

If all four exponents are high, there is no inactive prime. Then n^3<45000, whereas n>=8*9*25*49=88200. Thus the four-high component is already impossible under NC8.

## 3. Fixed rational forms and a global cap

Put CUT=64. Every representation with H<CUT will be checked directly. For H>=64 choose q attaining C. The above bounds show C>=8 in the two-high case and C>=6 in the one-high case. The core q-valuation delta is at most 2. Therefore a source attaining C has a nonzero rho with

`delta=v_q(abs(rho))`, `rho in [-h,5-h]`.

Indeed unequal valuations of core and rho would give a source valuation at most 2. Write

`core=q^delta*e*product(high p^U)`, `u=rho/q^delta`, `c=e/u`.

Both e and u are q-adic units and

`C=delta+v`, `v=v_q(c*product(high p^U)-1)`.

The rational coefficient is fixed within each finite coefficient/shift/offset cell. For two high primes e contains at most one other low prime power and e<=7. For one high prime e contains at most **two** other low prime powers and e<=35. This is after removing the selected q^delta; using the full low coefficient here would overstate the height. Also |u|<=7.

Apply **Yu 1994, section 0.1, printed pages 241--242**, with exactly the source PDF and SHA fixed in 11. For one high prime use two rational numbers `(p^2,c^2)` and exponents `(U,1)`; for two high primes use `(p^2,r^2,c^2)` and `(U,V,1)`. Their field is Q, d=f=1, and all heights h_j=h'=10 are admissible: the largest relevant rational squared height is at most 2 log35<10. A coefficient 1 and multiplicative dependence are allowed by this displayed source theorem.

The squared form is nonzero since the core exceeds |rho|, so `|c*product(high p^U)|>1`. Its q-valuation is at least v. Bmax<=H, and the same explicit estimate as 11, also valid for ell=2, gives

`v<10^26*log H`.

Since delta<=2, both cases imply `H<26+10^27*log H`. At H0=10^32 the right side is smaller than H0, using log H0<96; the difference is increasing for H>=H0. Thus **H<10^32** uniformly for every one- and two-high cell. This cap precedes the finite lift computation.

## 4. Exhaustive cells and principal-unit groups

There are 352 one-high coefficient/shift cells and 240 two-high cells. Checking all six source offsets and all inactive primes, retaining the exact condition delta=v_q(rho), gives 2520 and 1134 eligible offset branches respectively. After grouping identical high-prime tuples, q, and reduced rational c, there are **376 one-variable forms and 207 two-variable forms**, altogether 583. The low box has 192 representations. Both programs independently reconstruct this inventory and its cell-to-form links.

Raise the necessary original source congruence to exponent k=2 for q=2 and k=q-1 for odd q. Let p be the smallest high prime and

`P=p^k`, `s=v_q(P-1)`, `M=q^(v-s)`.

For v>=s, P generates the principal-unit subgroup 1 modulo q^s, with exact order M. The possible start depths are 1,2,3,4. Two one-variable exceptions must be explicit:

* p=7,q=2: s=4 since 7^2-1=48;
* p=7,q=5: s=2 since 7^4-1=2400=25*96.

The remaining q=2 starts are 3; other odd-q starts are 1. CUT64 ensures the selected exact source v reaches its required start. First check whether the target c^(-k) is 1 modulo q^s. If not, no source of valuation at least s is possible. This excludes **36 complete forms**: 10 at (p,q)=(7,2), and 26 at (7,5). No nonexistent logarithm is assigned to such a target.

For the other forms, uniquely lift T_v in [0,M) satisfying `P^T_v=c^(-k) modulo q^v`. In the two-variable case also lift L_v satisfying `P^L_v=r^k`. Every lift tests the complete q-element progression. The necessary exponent equations are

`U=T_v modulo M`, or `U+L_v*V=T_v modulo M`.

## 5. Global termination, exact-v finite candidates, and all lifts

Use the same full affine-lattice method as 11, with high-exponent lower bounds 3 for prime 2 and 2 for other primes. Global tests range over the entire region `H<10^32`. One-variable tests retain the whole residue progression; two-variable tests use a full basis with determinant M and the complete inverse-coordinate rectangle. A reduced basis only reduces cost. No assumed root growth or floating closest-vector result enters correctness.

At a terminal level check every point in that global high-exponent region against the **original unsquared source congruence modulo q^v**. A zero-free global test excludes valuation at least v and every later level. Persistent low or zero roots are filtered by the positive high thresholds. The stored final basis, root, bounds and point count suffice to reconstruct every terminal point; redundant point lists are not needed.

All 547 compatible forms terminate. The deepest one-variable level is **112** and the deepest two-variable level is **217**. The final inverse-coordinate rectangle is allowed at most 32 points, keeping certificates small; this cost cutoff is not a mathematical exponent cutoff.

At each earlier level use the deliberately enlarged necessary bounds

`H<=5+10(v+2)` for one variable,

`H<=5+8(v+2)` for two variables.

They cover every actual delta<=2. Retain H>=64 and restore **exact** source valuation by a nonzero residue modulo q^(v+1) that is divisible by q^v. This is separate from the at-least-v global stop. There are 1355 high form candidates. Expanding them to their coefficient/shift cells and removing repeated representations gives 9133 high representations.

Together with 192 low-box and 455200 H<64 representations, this yields **464525** finite representations. All source constructions, factors and binomial arguments refer to their actual n and the same legal j; the candidate supersets are not asserted to be counterexamples.

## 6. Original finite endpoint and independent replay

Recompute the native target-8 four- and six-window small parts for every finite representation. The exact classification is:

| result | representations |
|---|---:|
| no legal i8 pair | 95 |
| strict QIG | 460502 |
| strict SIXG after QIG | 3522 |
| needs an original-prime check | 406 |

The last group has **201 distinct n**, largest **1146880**. `i8_low_high_certify.py` factors all eight source terms of each row by exact trial division, computes the source valuations in C(n,8), and covers every j=9,...,floor(n/2) by complete prime-power intervals. The final certificate has **238 intervals covering 2605218 legal pairs**. Its largest witnessing prime is **1146877**. No probable primality or external computer algebra acceptance is used.

For each interval, the checker verifies p>=11, positive v_p(C(n,8)), and a full power Q=p^a with `j mod Q>n mod Q` throughout that interval. The endpoints stay in one Q-block, proving a carry and hence p|C(n,j) for every j in the interval. It checks adjacency of all intervals through the complete legal range. Transfer to i=9 preserves the same prime because 9 has no factor at least 11.

`i8_low_high_verify.py` imports no generator, lattice reducer, CAS, or probabilistic primality package. It independently rebuilds all cells and exact rational forms, reconstructs **45014 valuation levels**, verifies group orders and all lifts, and enumerates finite two-variable candidates by residue progressions rather than the generator's basis-coordinate boxes. At final stops it derives inverse-coordinate bounds by signed linear intervals and checks all original-source residues. It then independently reconstructs every finite representation, both scalar inequalities, every source factorization and prime, and the complete 201-row interval cover.

The fresh author run passed in about 13.4 seconds. The generator takes about 5.6 seconds after reducing redundant terminal enumeration; its compact lift certificate is 747554 bytes. Commands are the run-local `i8_low_high_probe.py`, `i8_low_high_certify.py`, and `i8_low_high_verify.py` in `experiments/arithmetic`. Their outputs are respectively `i8_low_high_probe.json`, `i8_low_high_screen.json`, `i8_low_high_certificate.json`, and `i8_low_high_verification.json`.

The independent replay initially exposed an overly restrictive checker assertion that omitted the p=7,q=5 group start s=2. The generator had computed s exactly and already covered this case. The checker assertion and prospective record 12 were corrected, followed by the full successful replay above. This is a traceable checker/prose repair, not a discarded mathematical case.

## 7. Acceptance boundary

This file closes the entire stated zero-, one-, and two-high family at the author paper-plus-exact-certificate level, with a direct four-high exclusion as well. Three-high cells require their own completed lattice and endpoint consumer; a design or small sample there cannot complete the canonical q8=1 theorem. Parent acceptance and Lean acceptance remain distinct from the two same-author implementations here.

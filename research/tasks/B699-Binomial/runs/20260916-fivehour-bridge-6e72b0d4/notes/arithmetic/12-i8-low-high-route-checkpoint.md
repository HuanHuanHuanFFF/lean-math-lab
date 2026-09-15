# Checkpoint: the complete at-most-two-high part of a normalized i8 unit window

2026-09-15 22:20 UTC; owner `/root/arithmetic`. Original round deadline 23:28:45 UTC; this component must freeze, or report a concrete failure, by **22:58 UTC** so the parent can accept and publish it. This is a prospective design record, not a completed theorem.

## Intended frontier change

For the canonical family `n=2^A*3^B*5^C*7^D+h`, h=0,...,7, use fixed high thresholds `(3,2,2,2)`. Attempt every representation with at most two high exponents. If successful, the complete remaining canonical family has exactly three high exponents; four high exponents are already ruled out by the six-window scalar bound. Arbitrary coarse blocks remain outside this canonical family even if it is eventually finished.

Uniform thresholds include h=7 and D=1 in the **low** category. Lowering the 7 threshold without separating that shift would miss extra valuation at core+7.

The inventory `i8_unit_route_count.py/.json` gives:

| high exponents | coefficient/shift cells | eligible offset branches | distinct fixed forms |
|---:|---:|---:|---:|
| 1 | 352 | 2520 | 376 |
| 2 | 240 | 1134 | 207 |
| 3 | 72 | 168 | 37 |

The low box has 192 representations. Eligibility means a nonzero source offset rho=r-h, r=0,...,5, satisfies `v_q(abs(rho))=delta`, the low q-exponent of the core. Distinct forms keep the high prime tuple, selected q, and exact reduced rational coefficient. The three-high case has three fixed logarithms after absorbing rho and needs a three-dimensional homogeneous lattice; it is assigned elsewhere and will not be silently included here.

## Necessary bounds to be proved and consumed

For n>=16, SIXG and n-r>n/2 give `n^7<T6^4/4608`. If H is the sum of high exponents and C the largest valuation among the low primes, `T6<=120*n*product(q^Cq)` gives `H<6+8C` for two high exponents. For one high exponent the product of its other three primes is at most 105<2^7, giving `H<6+10C`.

At H>=64 the selected C exceeds 2 and its source offset obeys delta=v_q(rho). Let e be the product of other low prime powers and u=rho/q^delta. The exact source form is `c*product(p^U)-1`, with fixed rational c=e/u, and `C=delta+v_q(form)`. Its square is nonzero because the core exceeds |rho|. Yu's section 0.1, ell=2 or 3, squared rational bases and all heights 10, gives `v<10^26 log H`; hence **H<10^32**. A coefficient 1 or multiplicative dependence is allowed by this source. The one-high and two-high caps are proved before the lift scan.

## Smallest falsifiable computation and acceptance boundary

First build all 376 one-variable and 207 affine two-variable valuation towers. At odd q raise to q-1; at q=2 square. The one-variable base 7 at q=2 has `v2(7^2-1)=4`, so start its principal group at 4 and explicitly reject an incompatible target residue there. **22:29 correction from the independent checker:** the one-variable base 7 at q=5 also has `v5(7^4-1)=2`; the initial text incorrectly said every odd-q group starts at 1. The generator already computed every start by exact valuation and was unaffected. Other groups start at 3 for q=2 or 1 for odd q. CUT64 guarantees the selected exact source valuation reaches all these starts. The initial checker assertion, not the candidate or stopping computation, was repaired accordingly.

At each tower, enumerate exact-v candidates using the linear height bound, and stop only after the entire **global** high-exponent region below 10^32 has no original-source solution modulo the current prime power. Full residue progressions are retained. Two-dimensional stops use certified full bases and complete inverse-coordinate rectangles. Persistent low roots are excluded by the high thresholds, not by an unsupported eventual-growth assertion.

Then reconstruct each coefficient/shift cell, recompute native i8 small parts, and apply QIG/SIXG. Every surviving n requires a complete original-prime interval certificate with p>=11 and full trial primality. Counts and simple scalar checks alone do not prove the family.

The decisive cost test is the number and size of **distinct n surviving both scalar invariants**, not the number of parameter representations. If the full two-high endpoint is expensive, freeze the completed one-high family separately and identify the exact blocked cells; do not describe the untested aggregate as proved.

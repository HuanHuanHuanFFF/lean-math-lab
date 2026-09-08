# Erdős #686, k=5 genus-two arithmetic audit

Date: 2026-07-16

Status: exact reduction and full Mordell-Weil group certified; rational-point
completeness remains open.

## Corrected Jacobian frontier

The proposed certificate

```text
dim_F2 Sel^(2)(J/Q) = 4
```

is false for

```text
C: y^2 = 9x^6 + 64x^5 - 200x^3 + 64x + 144.
```

Unconditional Magma V2.29-8 returns:

```text
J(Q)_tors = 0
Sel^(2)(J/Q) = (Z/2Z)^5
```

so the 2-Selmer upper bound is five. A search through multiplicative
x-height 20,000 finds exactly the reported 36 rational points. Their images
in the Jacobian generate a rank-five subgroup. Magma's
`MordellWeilGroupGenus2` then returns:

```text
finite_index = true
proved = true
rank_bound = 5
J(Q) = Z^5
```

with generators:

```text
(x^2 - 1,     -3*x + 12,      2)
(x^2 + x,      3*x - 12,      2)
(x^2 + 2*x,   12*x + 12,      2)
(x^2 + x - 2, -x + 10,        2)
(x - 2,       -3*x^3 - 12,    2)
```

Thus the rank-four route is invalid. The exact rank is five.

Taking `P0=(0,12)` on the curve, the differences from

```text
(-20, 19308)
(-20, -19308)
(-38/5, 55764/125)
(-2, 12)
(-1, 15)
```

have coordinate matrix

```text
[ 2 -1  0 -1  1]
[-1  2 -1  0 -1]
[ 2  2  0  0  1]
[ 0  0 -1  0  0]
[ 1  0 -1 -1  0]
```

in the Magma basis. Its determinant is `-1`, so these five point differences
are themselves a basis of the full Mordell-Weil group.

## Rational-point status

`RationalPointsGenus2` returns the same 36 points but

```text
proved_all = false
search_bound = 20000.
```

The fake two-Selmer set of the curve contains eight locally soluble
two-covers. The pair-sum resultant of the monic sextic factors as

```text
degree 6 diagonal factor * (irreducible degree 15 factor)^2.
```

Over the degree-15 pair field the sextic factors in degrees `2+4`. Mapping
the eight descent representatives through the quadratic factor constructs
eight elliptic quartic covers, each with a known point. The 34 known affine
points occupy every cover class, with sorted class sizes

```text
[2,4,4,4,4,4,6,6].
```

The independent exact pullback audit checks all 36 projective points under

```text
s = 8(x-4)/(5(x^3-4)-y).
```

None gives integers `n>=0`, `d>=5`. The unique zero-denominator point is
`(4,300)`, already excluded by the Lean exceptional-point theorem.

This is strong evidence but not a completeness proof. The surviving direct
route must determine the rational points on the eight two-covers, most
likely through explicit elliptic Chabauty over auxiliary number fields or a
special-purpose high-rank Mordell-Weil sieve incorporating the square inverse
condition.

The pair-field source and verifier are:

```text
compute/campaign686/k5_genus2/two_cover_pair_field.m
compute/campaign686/k5_genus2/two_cover_certificate.json
compute/campaign686/k5_genus2/two_cover_verify.py
```

The long-running one-cover Mordell-Weil source is:

```text
compute/campaign686/k5_genus2/elliptic_cover_mw_browser.m
```

Its `cover_index` ranges from `1` through `8`. The optimized pair field has
defining polynomial

```text
z^15 + 5z^14 - 40z^13 - 370z^12 + 310z^11 + 12646z^10
+ 28620z^9 - 196560z^8 - 1018755z^7 + 508265z^6
+ 14099572z^5 + 27417970z^4 - 57078960z^3
- 324899280z^2 - 528740460z - 311944932.
```

For cover one, construction, optimization, integral modeling, and trivial
torsion finish quickly. Both `PseudoMordellWeilGroup` and a direct
`TwoSelmerGroup` call then reach the public XML calculator's execution cap
before returning. This is a resource frontier, not a mathematical
certificate or a proof that the computation cannot finish in a longer-lived
Magma session.

## Rank-five Mordell-Weil sieve

Fourteen exact reduction packets are now normalized for

```text
p = 7,11,13,17,19,23,29,31,37,41,43,47,53,59.
```

All 34 affine point vectors and both infinity vectors survive every packet.
The exact infinity coordinates in the fixed reduced-model basis are

```text
(1: 3:0) -> [-2,0,0,0,0]
(1:-3:0) -> [0,1,0,1,0].
```

The combined kernel lattice has index

```text
42343330413030424784735169272832000000
```

and the exact sparse primary-component contraction leaves

```text
516168751624777728
```

cosets, of density

```text
5383303927 / 441613360315210220469081750000.
```

All 36 known projective points occupy distinct combined classes. At `p=37`,
the global reduction subgroup has order `760`, not the ambient order `1520`;
only 27 of the 42 curve-image classes are reachable, so the effective local
density is `27/760`.

An invariant-only scout at 18 candidate primes identifies `p=107` as the
best next full packet if another packet is needed: its cyclic reduction image
has prime order `11717`, the current lattice maps onto all of it, and that
factor is absent from the fourteen-packet combined index.

The height pairing has a certified rational lower eigenvalue `43/200`.
Magma's exact Kummer model gives

```text
kappa([P-P0]) =
  (A^2*C : A^3 : 0 : 6*B + 8*A*C^2 + 18*C^3)
```

for weighted-projective `P=(A:B:C)`, with the `A=0`, `C=0`, and infinity
fibres separately audited. The exact duplication-quartic coefficient norms
are

```text
[25186676, 25439912, 14117360, 1077517601].
```

Thus, with `H(P)=max(|A|,|C|,|B|^(1/3))`,

```text
canonical_height([P-P0])
  <= 3*log(H(P)) + log(32) + log(1077517601)/3.
```

The factor-of-two normalization is excluded: `CanonicalHeight(G1)`,
`HeightPairing(G1,G1)`, and the Kummer-height doubling limit have the same
normalization.

As a bounded admissible-lift audit, `H(P)<=20000` implies
`sum m_i^2<=280` using only `log(2)<1`. Exact enumeration of all `6,944,265`
lattice vectors in that ball leaves precisely the 36 known projective
vectors; packets through `p=23` already suffice. This is not global
completeness. The remaining height obligation is an independent absolute
upper bound for `H(P)`, or an equivalent exhaustive integral-point/two-cover
bound.

Detailed artifacts:

```text
compute/campaign686/k5_genus2/sieve/packet_audit.md
compute/campaign686/k5_genus2/sieve/packets.json
compute/campaign686/k5_genus2/sieve/combined_sieve.json
compute/campaign686/k5_genus2/sieve/invariant_scout.json
compute/campaign686/k5_genus2/sieve/kummer_height_upper_certificate.json
compute/campaign686/k5_genus2/sieve/bounded_lift_sieve_20000.json
compute/campaign686/k5_genus2/sieve/height_bound_plan.md
```

## Reproduction

```bash
python3 compute/campaign686/k5_genus2/magma_rank_verify.py
python3 compute/campaign686/k5_genus2/magma_rank_verify.py --online
python3 compute/campaign686/k5_genus2/two_cover_verify.py
python3 compute/campaign686/k5_genus2/two_cover_verify.py --online
python3 -m pytest -q compute/campaign686/k5_genus2/test_magma_rank_verify.py
python3 -m pytest -q compute/campaign686/k5_genus2/test_two_cover_verify.py
```

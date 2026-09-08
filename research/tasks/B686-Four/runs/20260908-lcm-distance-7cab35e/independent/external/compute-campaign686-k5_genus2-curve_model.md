# Erdős #686, k=5: genus-two quotient lane

Status: exact reduction Lean-banked and full Mordell-Weil group certified;
rational-point completeness open.

For

```text
P5(t) = t^5 - 5t^3 + 4t,
X = n+d+3,
Y = n+3,
```

the `k=5` equation is `P5(X)=4P5(Y)`. Put

```text
x = X/Y,
s = Y^2.
```

Then

```text
(x^5-4)s^2 - 5(x^3-4)s + 4(x-4) = 0.
```

With

```text
y = 2(x^5-4)s - 5(x^3-4),
```

the discriminant identity gives

```text
y^2 = 9x^6 + 64x^5 - 200x^3 + 64x + 144.
```

The rationalized inverse relation is

```text
(5(x^3-4)-y)s = 8(x-4).
```

Thus, away from a zero denominator,

```text
s = 8(x-4)/(5(x^3-4)-y).
```

Lean proves that the chosen denominator vanishes only at `(x,y)=(4,300)`,
and that `x=4` cannot arise from a positive integral centered solution.

Formal module:

```text
ErdosProblems/Erdos686K5GenusTwoReduction.lean
```

## Corrected Mordell-Weil certificate

The proposed 2-Selmer dimension four is false. Exact Magma V2.29-8
computation gives

```text
Sel^(2)(J/Q) = (Z/2Z)^5,
J(Q)_tors = 0,
J(Q) = Z^5.
```

`MordellWeilGroupGenus2` reports `proved=true`, rank bound five, and a
finite-index subgroup. With `P0=(0,12)`, the differences from

```text
(-20, 19308)
(-20, -19308)
(-38/5, 55764/125)
(-2, 12)
(-1, 15)
```

have determinant `-1` in the proved Magma basis. They therefore form a
unimodular basis of the full Mordell-Weil group. Rank, finite-index
generation, and saturation are closed.

The frozen rank source and hostile verifier are:

```text
compute/campaign686/k5_genus2/magma_rank_certificate.m
compute/campaign686/k5_genus2/rank_certificate.json
compute/campaign686/k5_genus2/magma_rank_verify.py
```

## Eight-cover frontier

`TwoCoverDescent(C)` returns eight locally soluble covers. The pair-sum
resultant of the monic sextic factors as a degree-six diagonal factor times
the square of an irreducible degree-15 factor. Over that degree-15 field the
sextic factors in degrees `2+4`, and all eight cover classes produce elliptic
quartic covers with known points. The 34 known affine points occupy all eight
classes with sorted counts

```text
[2,4,4,4,4,4,6,6].
```

The exact source and verifier are:

```text
compute/campaign686/k5_genus2/two_cover_pair_field.m
compute/campaign686/k5_genus2/two_cover_certificate.json
compute/campaign686/k5_genus2/two_cover_verify.py
```

## Exact remaining certificate chain

1. Prove an explicit upper bound for
   `canonical_height([P-P0])` in terms of the projective height of `P`.
2. Combine that bound with the certified lower eigenvalue `43/200`, the
   fourteen-packet HNF lattice, and exact coset-height reduction.
3. If the high-rank sieve remains too broad, determine the full
   Mordell-Weil group of every elliptic cover over the degree-15 pair field
   and apply elliptic Chabauty.
4. Prove that the 36 known weighted-projective points exhaust `C(Q)`.
5. Audit the complete list against the inverse formula and the integral
   conditions `n>=0`, `d>=5`.

The current machine has PARI/GP and Docker, but no local Magma or Sage
installation. The public Magma calculator has a short execution cap, so the
degree-15 elliptic Mordell-Weil computations must be optimized and run one
cover at a time or moved to a longer-lived exact Magma environment. A bounded
rational-point search is not a completeness proof.

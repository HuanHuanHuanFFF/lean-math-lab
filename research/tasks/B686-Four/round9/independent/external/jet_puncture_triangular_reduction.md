# Erdős 686: triangular punctured-grid jet reduction

Date: 2026-07-15

Status: exact structural reduction and verified `k=5` coefficient closure;
one saturated `k=7` puncture verified, including exact local denominator
clearing.  The all-puncture and Lean layers are still in progress.  This is
not an odd-tail or full-problem solve.

## Coordinate-ring decomposition

Put `U=B_k(X)`.  Since `B_k` is monic of degree `k`, the coordinate ring of

```text
C_k : B_k(Y)=4B_k(X)
```

has a degree-filtered basis

```text
U^q X^a Y^b,  0<=a,b<k,  kq+a+b<=r.
```

For the repaired puncture parameters

```text
mu = k*s+2g,  r=k*mu-s,
```

this basis has exactly `k*r-g+1` elements.  At every grid point, `U` has a
simple zero.  Hence the order-`h` jet row only sees layers `q<=h`.

For every layer with residual degree `r-kq>=2k-2`, replace the monomial
rectangle by the tensor interpolation basis

```text
U^q Q_j(X) Q_i(Y),
Q_h(T)=B_k(T)/(T+h).
```

At the grid point `(-j,-i)`, every tensor basis function except the matching
`Q_j Q_i` vanishes.  Therefore the diagonal jet block at order `h=q` is
diagonal across the grid cells.

## Only one or two dense top layers

Writing `q=mu-c`, the residual degree is `kc-s`.  A layer is a full tensor
rectangle exactly when

```text
kc-s >= 2k-2.
```

At the first positive-budget parameters this leaves only:

| `k` | `s` | `mu` | non-full top layers |
|---:|---:|---:|---:|
| 5 | 1 | 17 | 1 |
| 7 | 1 | 37 | 1 |
| 9 | 1 | 65 | 1 |
| 11 | 2 | 112 | 1 |
| 13 | 3 | 171 | 2 |
| 15 | 6 | 272 | 2 |

Eliminating the diagonal puncture-cell pivots in every full layer leaves the
following exact residual dimensions before the final kernel computation:

| `k` | residual rows | residual columns | predicted nullity `g+1` |
|---:|---:|---:|---:|
| 5 | 24 | 31 | 7 |
| 7 | 48 | 64 | 16 |
| 9 | 80 | 109 | 29 |
| 11 | 120 | 166 | 46 |
| 13 | 336 | 403 | 67 |
| 15 | 448 | 540 | 92 |

For `k=13`, the columns are `169` puncture-free variables from the full
layers, `168` columns in the `q=mu-2` layer, and `66` in the final layer.
For `k=15`, the corresponding count is `270+215+55=540`.

Thus the apparent `k=15` system with roughly 61,000 rows and columns is not
intrinsically dense.  Its theorem-strength residual is at most `448 x 540`.
The remaining implementation task is an exact forward substitution through
the diagonal full layers that emits this Schur complement without forming
the ambient matrix.

## Saturation is essential

FLINT's fraction-free `nullspace` returns a rational kernel basis represented
by integer columns, not necessarily the full saturated integer lattice.
Primitive-column normalization and LLL alone are insufficient.  The verifier
now computes

```text
(Q-span(kernel)) intersect Z^N
```

exactly: an integer RREF turns integrality into a rank-`g+1` system of linear
congruences; each congruence is solved by an explicit Bezout unimodular
transformation, with column HNF after every update.  Only then is the basis
LLL-reduced in standard polynomial coefficients.

At puncture `(1,1)` this changes the measured heights as follows:

| `k` | raw primitive digits | raw + LLL | saturated + LLL | budget margin |
|---:|---:|---:|---:|---:|
| 5 | 147 | 125 | 62 | 890 orders |
| 7 | 822 | 810 | 215 | 570 orders |

The saturated `k=7` value is

```text
12938305549073323181749236991103178215804278115980655053454297292184378961985428684589965556407512565696343814942293636576509227501888761499259346608954174722971798931090809031694152701807420461450475968074417700864
```

and satisfies the corrected budget exactly.  This is evidence for one
puncture only; the 49-puncture audit is required before claiming the `k=7`
proper-support coefficient bound.

The exact ambient local-division audit was then run on all 16 reduced basis
sections for this same `k=7`, puncture `(1,1)` system.  At each of the 48
non-punctured grid points, every curve quotient was already integral: all 16
global least-common-multiple multipliers equal `1`.  Consequently the
denominator-cleared maximum norm is still the 215-digit integer displayed
above, and the denominator-cleared budget retains 570 decimal orders.

The same puncture also passes the constructive base-locus audit. Two basis
sections give exact curve-section resultants of degree `1806`; their integer
polynomial gcd has degree `1776` and is exactly the prescribed order-`37`
punctured-grid factor times the nonzero constant `37647680`. There is no
residual factor, so those two sections cannot vanish together at any
positive integral point of `C_7`.

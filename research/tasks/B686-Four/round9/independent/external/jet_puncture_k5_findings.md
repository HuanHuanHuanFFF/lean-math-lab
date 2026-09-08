# Erdős 686: exact punctured-grid jet basis at `k = 5`

Date: 2026-07-15

Status: all exact computational obligations for the `k=5` proper-support
arm pass, including local integrality, coefficient height, and an explicit
on-curve non-common-zero audit. Certificate emission and Lean composition
remain; this is not a full odd-tail closure.

## Result

For every puncture `P = (-j,-i)` in the `5 x 5` consecutive-product grid,
the script

```bash
python3 -m pip install --target /tmp/erdos686-python-flint python-flint==0.8.0
PYTHONPATH=/tmp/erdos686-python-flint \
  python3 compute/campaign686/jet_puncture_basis_experiment.py \
    --k 5 --s 1 --all-punctures --workers 4 \
    --audit-integral-quotients
```

constructs the exact degree-`84` coordinate-ring space on

```text
C_5 : B_5(Y) = 4 B_5(X),
```

and imposes order-`17` vanishing at the other 24 grid points.  Each of the
25 resulting integer matrices has shape `408 x 415`, rank `408`, and
nullity `7 = g(C_5)+1`.

The worst primitive integral basis produced by FLINT occurs at puncture
`(j,i)=(1,2)`.  Across all 25 punctures its maximum coefficient `l1` norm is

```text
2187146176510896858470196489183774166178369234472818213720098661184236
```

which has 70 decimal digits.  The largest individual coefficient has 68
digits.

For every one of the `25*7=175` sections, and at every non-punctured grid
point, exact truncated polynomial division produces an integral local
quotient already: every denominator-clearing multiplier is `1`.  Thus the
displayed norm is the corrected norm after the handoff's mandatory
denominator audit; there is no omitted `kappa` factor.

## Exact base-locus certificate

The independent script

```bash
PYTHONPATH=/tmp/erdos686-python-flint \
  python3 compute/campaign686/jet_puncture_base_locus_all.py \
    --k 5 --s 1 --workers 4
```

computes exact integer resultants against the curve equation. For every
puncture, it selects basis sections until the gcd of their degree-`420`
curve-section resultants is exactly

```text
nonzero integer *
  product_{h=1}^5 (X+h)^(17*(5-[h=puncture_row])).
```

There is no residual factor. Thus if all selected sections vanished at an
integer point of `C_5`, its `X` coordinate would have to be one of
`-1,-2,-3,-4,-5`; in particular the sections have no common zero for
`X>=0`. Twenty-four punctures need two sections. The symmetric central
puncture `(3,3)` needs five; its final constant quotient is `5314410000`.

Each resultant is computed as the exact fraction-free determinant of
multiplication by the section in the rank-five algebra
`Z[X,Y]/(B_5(Y)-4B_5(X))`. Bareiss divisions are asserted exact. This is a
finite constructive replacement for importing a general Riemann--Roch
basepoint-free theorem. As an independent implementation check at puncture
`(1,1)`, SymPy recomputes all seven curve-section resultants modulo each of
`101`, `103`, and `107`; every modular gcd has the same degree `408`, the
same grid multiplicities `68,85,85,85,85`, and no residual factor.

## Exact budget check

For `k=5`, `s=1`, `g=6`, the repaired puncture parameters are

```text
mu = k*s + 2*g = 17,
r  = k*mu - s   = 84.
```

Writing `K` for the displayed worst `l1` norm, the script checks the exact
integer inequality

```text
24^17 * K * 6^84 < 3^85 * 10^1000.
```

It passes with `floor(log10(RHS/LHS)) = 882`.  Thus the computed basis lies
far inside the corrected jet-compression budget; no floating-point estimate
is used in the verdict.

## Construction and audit surface

Polynomials are represented uniquely modulo the curve equation in the
block-adapted basis `B_5(X)^q X^a Y^b`, with `a,b<5` and
`5q+a+b<=84`.  This gives exactly `5*84-6+1=415` columns, rather than the
ambient quadratic monomial count.  Because `B_5(X)` has a simple zero at
every grid point, the jet matrix becomes block-triangular by vanishing order.
The fraction-free kernel returned by FLINT is not assumed to be saturated.
The script computes the full lattice
`(Q-span(kernel)) intersect Z^415` by reducing the rational row space to
small-rank congruences, solving those congruences with exact Bezout
transformations, and column-HNF reducing after each step.  The saturated
vectors are then LLL-reduced in the standard `X^A Y^b` coefficient space
before their norms are measured.  This saturation step reduces the worst
height by more than one hundred decimal digits.

At each grid point `(-j,-i)`, the script solves

```text
B_5(-i+y(x)) = 4 B_5(-j+x)
```

recursively in `Q[[x]]/(x^17)`.  Substitution of every coordinate-ring
monomial supplies the 17 exact jet rows at that point.  Each rational row is
cleared to a primitive integer row.  FLINT computes the integer nullspace,
and the script verifies the matrix-kernel product exactly.

After constructing the saturated basis, the verifier independently Taylor
expands each standard polynomial in the two ambient local variables.  It
divides the total-degree-`<17` part by the exact local curve equation using
the `Y`-linear coefficient, checks that every pure-`X` remainder is zero, and
computes the least common multiple of all quotient denominators.  This is the
integrality check needed for `A^17 | F(z)`, rather than merely vanishing in
the rational completed local ring.

The corrected arithmetic composition is now kernel-banked in
`Erdos686JetCompressionArithmetic.lean`. It proves that the 70-digit norm
fits the exact `k=5` budget, multiplies all local order-17 divisibilities
through the pairwise-coprime canonical matrix, and turns any nonzero
puncture-section value into a contradiction at `d>=10^1000`. The theorem
`no_k5_tail_solution_of_proper_canonical_support` isolates the remaining
finite payload as `K5PunctureJetWitness`.

`Erdos686SparseJetCertificate.lean` supplies the generic sparse
integral-polynomial checker: total shifted order implies `A^mu` divisibility
of the evaluated natural absolute value, and total degree plus the exact
coefficient `l1` norm gives the evaluation bound.

The remaining proof-engineering work is therefore strictly the concrete
25-puncture payload: emit the selected sparse sections, their shifted
high-order identities, and the determinant/polynomial-gcd non-common-zero
certificates in Lean-friendly form and instantiate the witness interface.
Complete owner support remains a separate branch.

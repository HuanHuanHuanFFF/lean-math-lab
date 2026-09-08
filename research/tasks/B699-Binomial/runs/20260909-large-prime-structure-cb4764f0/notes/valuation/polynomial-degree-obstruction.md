# Minimal polynomial degree for a universal avoiding-part gap bound

Paper method-obstruction memo, 2026-09-08 18:57 UTC checkpoint. No enumeration or Lean implementation. This complements, rather than weakens, the exact D transfer. It is not an impossibility claim about B699.

Fix i>=2. Suppose a nonzero polynomial F_i(X) in Z[X], with coefficients depending only on i, satisfies

`D_i(n,j) | F_i(n-2j)`

as integer divisibility for EVERY legal triple `i<j<=n/2` with `n-2j>=i`. Then

`degree(F_i)>=2i-1`.

The same degree conclusion holds for a fixed rational integer-valued polynomial, after clearing its fixed denominator.

Proof: fix any integer h with |h|<i. Put r=max(-h,0), s=max(h,0), and a=r+s=|h|<i. For every sufficiently large prime p>2i+3, set

`j=p+r`, `k=2p+s`, `n=j+k=3p+a`, `d=k-j=p+h`.

These are actual legal integers with d>=i. The prime p is larger than i, and exactly one numerator term of C(n,i), namely n-a=3p, contains it, to exponent1. Thus p divides C(n,i). Also n<p^2, while the quotients of n,j,k by p are3,1,2. The factorial valuation gives

`v_p(C(n,j))=3-1-2=0`.

Therefore p is an actual avoiding prime and p|D_i(n,j). The assumed universal divisibility implies p|F_i(d), hence p|F_i(h), because d is h modulo p. Arbitrarily large primes divide this fixed integer, so F_i(h)=0. All 2i-1 integers from -i+1 through i-1 are distinct roots, proving the degree bound.

For rational F_i, multiply by one fixed integer denominator A; the same argument shows A*F_i(h)=0. No positivity of F_i at negative h is required.

The polynomial

`C(d,i)*C(d+i-1,i-1)`

has degree2i-1 and exactly the listed roots. Thus the implemented universal D-to-gap-polynomial method reaches the minimal possible degree in this class. This explains why simply replacing the interval product by a lower-degree univariate polynomial cannot improve the exponent of the current curved gap estimate.

What remains open: stronger bounds exploiting the complete noCommon condition for ALL large primes, constraints at powers above the selected Q, n-dependent coefficients, genuinely multivariate constructions, or nonpolynomial arithmetic bounds. The counterfamily above is not a family of B699 counterexamples: only its selected prime p avoids the second binomial, and other primes can witness Common. Consequently this obstruction does not apply to a polynomial statement asserted only under noCommon unless that stronger statement is proved separately.

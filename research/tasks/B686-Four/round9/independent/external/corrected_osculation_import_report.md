# Erdős 686 Corrected Bounded-Osculation Import Report

Date: 2026-07-16

Status: corrected symbolic addendum banked on top of the frozen 919-theorem
checkpoint `e2cdf71`. No support enumeration was started.

## Source

`/Users/williamblair/.codex/attachments/e28c63a1-f1b4-47e4-bc31-a83c3f185db8/pasted-text.txt`

SHA-256:

`df04eb6c3674ab45c458e4b8ae60bac215b2eb694e94eb78557d0a2567f1c554`

## Lean module hashes

- `Erdos686LocalJetFactorAllocation.lean`:
  `70c5a5c869e3f40036c857c146691fc8cc461b10854c98df971cfa798db5b8a3`.
- `Erdos686BoundedOsculationSpace.lean`:
  `a329226113be2ac5b682fe925066ebac8b2a227972f5f5eac2aeab520d0e2683`.
- `Erdos686OsculationFixedDivisor.lean`:
  `08e7bfb814cfba8cb493df4e0fe890b7ddbf6369c040eceaa394cef38619bba4`.
- `Erdos686BarycentricMomentLadder.lean`:
  `539e34a0deb2db574fadb3d5b5ad21bc3fcfa9f51f1a09dff80750615037203d`.
- `Erdos686EffectiveIntersectionInterface.lean`:
  `6c6700eb2cc7d38953f9a926b2244d6b1e47ba4f3496f08582212829897be4ba`.

## Retained

- The arithmetic osculation matrix has exactly `2m` rows.
- The corrected finite-cube theorem gives `N_r-4m+1` independent bounded
  integral kernel vectors.
- Their coefficient radius is
  `12*N_r*r*2^k*k^(r-1)`.
- Pairwise-coprime owner squares give `M^2 | F(-n,-d)`.
- The exact cancellation threshold certificate has uniform threshold
  `K0=44`.
- For `k>=3`, `(c+v)^k-4v^k=0` over the rationals exactly when `c=v=0`.

## Repaired

- The loss from algebraic nullity `N_r-2m` to bounded-family size
  `N_r-4m+1` comes from the cube/fiber cardinality proof, not from extra
  arithmetic constraints.
- Common-factor analysis is being replaced by an exact local product-rule
  allocation theorem and a canonical fixed divisor of the whole bounded
  rational space.
- The residual quotient branch is an algebraic intersection interface. It is
  not eliminated until a nonzero resultant and an exact integral-root
  enumeration are supplied.
- The full-jet fixed-divisor degree bound is kept separate from the bounded
  space `V_B`; no transfer is allowed without a spanning theorem.

## Rejected

- A `4m`-row arithmetic constraint matrix.
- Automatic inheritance of every support jet by the gcd of two selected
  osculation polynomials.
- Calling `(c+v)^k-4v^k` the leading coefficient in a degree-drop branch.
- Treating multivariate factor-coprimality or Bézout finiteness as an
  effective enumeration of integral intersections.

## Kernel-checked

- `EffectiveIntersectionCertificate.common_zero_enumerated`: a
  support-specific nonzero sheared resultant, complete integral `T` roots,
  complete fiber-gcd `Y` roots, and original-curve checks form an exact
  finite-enumeration interface.
- Exact polynomial and evaluated Leibniz rules for
  `delta=b*d/dX+A*d/dY`.
- The three local allocation cases: full jet passes to a nonvanishing
  cofactor; a simple zero forces only the other factor's value; a factor
  carrying the full jet leaves the other factor locally unrestricted.
- The moment generating numerator recurrence, its exact `X^q` factorization
  under lower-moment cancellation, and the first surviving coefficient.
- Over `Q` and `k>=3`, the candidate block
  `(mu_q+nu_(q-1))^k-4*mu_q^k` vanishes exactly when both moments vanish.
- Vandermonde termination: vanishing of `mu_0,...,mu_(m-1)` at distinct
  rational nodes forces every weight to vanish.
- The exact reflection bridge from the original `matchingPhi` at degree
  `k*|S|` to the reverse generating-series matching polynomial.
- Under the lower moment vanishings, the reverse matching product factors by
  `X^(q*k)` and its first surviving coefficient is exactly `Delta_q`.
- The coefficient of the original `matchingPhi` at `k*(|S|-q)` is therefore
  exactly `Delta_q`.
- If `Delta_q` is the first nonzero moment block, then
  `deg matchingPhi = k*(|S|-q)` exactly.
- After a certified factorization `matchingPhi=W_S^2*Q`, the residual degree
  is exactly `k*(|S|-q)-2|S|`.
- For distinct integral nodes, nonzero integral weights, `mu_0=0`, and
  `k>=3`, a least block `1<=q<=|S|` with `Delta_q!=0` exists. Consequently
  `matchingPhi` is nonzero and has the exact first-block degree. This is a
  direct moment proof of the required nonvanishing branch.
- `Lambda_r(S)`, the canonical bounded set, and `V_B(S)` as the rational
  span of all bounded integral lattice points.
- `V_B(S) <= K_r` and the basis-free cancellation extension from bounded
  lattice points to their span.
- `dim K_r >= binom(r+2,2)-2m`.
- The exact full-space degree arithmetic
  `e*(2r-e+3) <= 4m`, conditional on the quotient-space dimension upper
  bound. It is not transferred to `V_B`.
- The universal fixed-divisor property is invariant under basis changes,
  spanning-family changes, and associated scalar normalization.
- A genuine multivariate fixed divisor exists for every nonzero
  finite-dimensional polynomial subspace, using the gcd of a finite basis.
- In particular, every nonzero bounded osculation polynomial space has a
  fixed divisor and a pointwise quotient presentation.
- The exact entry and column bounds from the bounded-kernel construction
  prove that this bounded polynomial space is nonzero, so fixed-divisor
  existence and a full presentation no longer require a separate nonzero
  hypothesis.
- Residual division is linear, and the residual quotients of a finite basis
  have unit gcd. No pairwise coprimality is inferred.
- A presented fixed divisor leaves a residual family with no common
  nonunit factor and gives the exact specialization split.

## Certificate-backed

- `osculation_kernel_certificate.json` and its exact verifier.
- `cancellation_threshold_certificate.json` and its exact verifier.
- Both certificates use integer arithmetic only.

## Still unclaimed

- An effective coefficient-level computation of the multivariate fixed
  divisor for a concrete support. Existence and its universal property are
  kernel-checked under the exact bounded-kernel hypotheses.
- Extraction of two coprime residual elements from the whole residual space.
  Absence of a common divisor for the family does not by itself select a
  coprime pair; this remains a separate certificate interface.
- The `(r-e)^2` projective intersection bound in the exact formal interface.
- Transfer of the full-jet divisor-degree bound to the bounded space.
- Any concrete support-specific instance of the effective intersection
  interface. The interface itself does not claim its root bound beats the
  surviving arithmetic scale.
- Any support enumeration or large-k closure.

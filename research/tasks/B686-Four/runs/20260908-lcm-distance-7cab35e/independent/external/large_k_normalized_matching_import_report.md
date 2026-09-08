# Erdős 686 large-k normalized matching import audit

Date: 2026-07-16

Repository checkpoint audited: `a5e98ef8025ff4dd2f73f32548696be654ac5b7c`

Imported prose source:

- Codex attachment `c151e737-7892-498c-bf02-9307a1447634/pasted-text.txt`
- SHA-256:
  `1f19481b1c5b28c440300427a98a0646205e02f13f9fc4e25cca790bf4dead8e`

## Verdict

The attachment is a mathematical report, not an importable theorem package.
It contains no Lean source and the four linked verifier/certificate artifacts
were not attached. Therefore no certificate-dependent theorem was imported
directly from the attachment. The normalization repair and exact
reduced-binomial bounds have since been independently reconstructed in Lean.

Several symbolic arguments in the report are mathematically viable after the
repairs below. The normalization theorem and reduced-binomial bounds have now
been independently reconstructed and checked in Lean; the remaining items
stay reconstruction targets.

## Accepted claims

The following claims are accepted as correct mathematical interfaces. The
first reduced-binomial item has since been reconstructed and kernel-checked in
`Erdos686NormalizedMatching.lean`; the remaining items are still designs to
formalize, subject to their stated hypotheses:

1. The reduced-binomial ratio bound
   `a_ij,b_ij <= binom(k-1,|i-j|)`. The unreduced ratio is
   `binom(k-j,r)/binom(j+r-1,r)` for `i=j+r`; reduction can only decrease
   numerator and denominator. **Kernel-banked after this audit.**
2. For a matching with distinct signed offsets,
   `sum max(a_ij,b_ij) <= 2^k-1`.
3. The square-Hermite dimension count: the degree bounds
   `deg U <= m`, `deg V <= m-1` give `2m+1` coefficients and the value and
   derivative conditions give `2m` homogeneous equations.
4. The coefficient-height envelope
   `(12*m*D_k*k^m)^(2m)`. Matrix entries are at most `6*D_k*k^m`;
   a maximal-rank cofactor has size at most
   `(2m * 6*D_k*k^m)^(2m)`.
5. The Taylor step modulo `P^2`, provided `P | n+j` and
   `P | d+i-j`.
6. In the zero branch, the treatment of support nodes with `V(j)=0`:
   then `U(j)=0`, so both terms of `Phi_S` vanish to order at least two
   when `k>=2`.
7. The rational-map nonvanishing strategy. If `Phi_S=0`, then for
   `psi=T+U/V`, the identity `W o psi=4W` is an equality of rational maps.
   Composition degree gives `k*deg(psi)=k`; absence of finite poles makes
   `psi` affine; comparison of leading coefficients would require a rational
   `k`-th root of `4`, impossible for `k>=3`.
8. Once `W_S^2 | Phi_S` is proved in `Z[T]`, the monicity of `W_S^2`
   gives an integral quotient. The implication `Q_S(-n)=0` uses
   `W_S(-n) != 0` and does not divide by `V(-n)`.
9. The ordinary Lagrange matching resultant, including the singleton
   specialization, is a valid target when rows are distinct.

These are accepted as proof designs, not as repository theorems.

## Repaired claims

### A. Normalization

Let

```text
L = (k-1)!
C_h = binom(k-1,h-1)
F_h = L/C_h
g = gcd(C_i,C_j)
a = C_i/g
b = C_j/g
s = (-1)^(i+j)
x = n+j
y = n+d+i
```

Then the exact integer identity is

```text
F_i*(d+i-j) - (4*s*F_j-F_i)*x
  = (L/lcm(C_i,C_j)) *
      (b*(d+i-j) - (4*s*a-b)*x).
```

Equivalence of the two `P^2` divisibilities is not unconditional. It requires

```text
Coprime P ((k-1)!)
```

or an equivalent hypothesis saying every prime divisor of `P` exceeds `k`.
That hypothesis makes the prefactor a unit modulo the composite modulus
`P^2`. The attachment uses high-prime owner moduli, so the repair is
compatible with its intended application. This exact repaired interface is
now kernel-banked as `matched_owner_normalized_square_dvd`.

### D. Nonvanishing of `Phi_S`

The equation

```text
deg(W o psi) = k * deg(psi)
```

must be stated for rational maps. It must not be justified by uncancelled
numerator degrees. The proof also needs separate facts that `psi` is
nonconstant and that a finite pole of `psi` produces a finite pole of
`W o psi`.

### E. Square divisibility

The Taylor expansion has the exact remainder form

```text
U(-n)+d*V(-n)
  = delta*V(j)
    - x*(U'(j)-rho*V'(j))
    - delta*x*V'(j)        mod P^2.
```

The sign of the last term is immaterial for divisibility, but the Lean proof
should use the exact identity. Cancellation of `beta_ij` again requires the
explicit high-prime coprimality hypothesis.

### F. Height

The stated height is consistent only after using `m<=k` to absorb derivative
factors into `k^m`. This hypothesis must be present in the height theorem.

## Rejected or unverified claims

1. The claim that the package was computationally certified is unverified:
   none of the four linked files exists in the attachment or repository.
2. The advertised 89,426 normalization and reduced-ratio checks are
   unverified for the same reason.
3. The advertised row-binomial-lcm scan through `k=64`, Hermite checks,
   `W_S^2` checks, synthetic `P^2` checks, and ordinary resultant checks are
   unverified.
4. The symbolic identity
   `lcm_h binom(k-1,h-1)=lcm(1,...,k)/k` is plausible and passed an
   independent exact finite scan through `k=400`, but no proof is imported.
5. The global inequality `B_{>k}(k,n)>3(n+1)` is not proved by the attachment.
   The displayed `k=16` boundary arithmetic is only one boundary check; a
   uniform monotonic or prime-counting argument is still required before the
   one-owner elimination can be accepted.
6. The fixed-`k`, fixed-support finiteness theorem is not a large-`k`
   closure. The attachment itself correctly leaves a uniform family of
   bounded nonzero-resultant candidates and integer roots of `Q_S`.

## Existing kernel-checked Lean interfaces

The nearest banked interfaces are:

- `matched_owner_local_coefficients_dvd_sq`
- `canonicalOwnerCell_dvd_shiftedDifference`
- `large_prime_has_unique_full_exponent_owner_cell`
- `blockProduct_le_smallLoss_mul_kLargePart`
- `blockProduct_dvd_factorial_mul_centeredDiffLcm_four`
- `owner_shiftedLocalQuotient_coboundary`

The new normalized module now defines the row binomials and reduced ratios,
proves `C_h*F_h=(k-1)!`, constructs the common prefactor, and specializes the
original factorial owner-square theorem to the exact normalized congruence.
It does not yet define `D_k,U_S,V_S,Phi_S,Q_S` or imply the claimed
square-Hermite and ordinary matching resultants.

## Required Lean interfaces before import

```text
owner_square_normalized_iff
reduced_binomial_ratio_le
matching_reduced_ratio_sum_le
row_binomial_lcm
bounded_integral_tangent_normal
one_owner_high_prime_impossible
square_hermite_kernel_exists
square_hermite_kernel_height
owner_square_dvd_matching_resultant
matching_square_product_dvd
matching_resultant_nonzero_bound
osculation_polynomial_double_roots
osculation_polynomial_ne_zero
vanishing_resultant_implies_Q_root
offset_matching_resultant
offset_matching_resultant_singleton
```

No declaration in this list is advertised as banked by this report.

## Independent verifier evidence available in the repository

The repository's older matching and all-owner-resultant packages are
different theorem surfaces. They were rerun only as regression evidence:

```text
python3 -m pytest -q -p no:cacheprovider \
  compute/campaign686/test_matching_compression.py \
  compute/campaign686/agent_t1_all_owner_resultant/test_all_owner_resultant_verify.py

19 passed
```

The older exact all-owner verifier reproduced:

```text
report SHA-256:
2d68ac996adbf8ea8a258556d2f7360eb53d9eb6f6b0f9b71480a5f96d419080

table SHA-256:
2d1a2713f61ec917998c03f2396ef4108e91be0f7fac3bc1625a3441ffa920e4
```

Relevant file SHA-256 values:

```text
9686733f2893e305e2020cf5e5f0069f26b1ca4ab809c76999b8974dca61a0bf
  matching_compression.py
f19078d1a0d519085736753026386d53908b4b39f6c425c7dc0403f323377823
  test_matching_compression.py
a07232904ffccf65989eb97430d507327d4e81d8d02dbdcf40803fb276c39fe1
  all_owner_resultant_verify.py
aedefbcb703a9ebd9f01d0a4269234bab25df3991e6cfb61deb60309bf9c685d
  test_all_owner_resultant_verify.py
4d703e5fbcbb4eedc48a81422a949643bde87066b91c5a5a61920a76a99431ce
  hostile_audit.md
```

These hashes do not validate the unattached normalized-matching package.

## Claimed but unavailable certificate hashes

The attachment reports:

```text
7ef910851617823abe0e8cdc5e3ba9ee48ae06e07385d9dc9198099932341ca4
  verify_normalized_matching_pass.py
60abab1dd4275febf54cdf092a43481479c5665fb255d7efc014b05a722a4901
  normalized_matching_certificate.json
f9624ef44e687a0cdf83f712a88710cce9e2a7a36640de2b5c01f06914da4da6
  verify_matching_pass.py
0285c18f5b35224f086c2e4e277983cfdbe5ee7443708d9b0b7a217669992c22
  matching_pass_certificate.json
```

They are recorded for provenance only and have not been reproduced.

## Import decision

- Accepted into the repository: this audit report and its exact repair map.
- Accepted into `Audit.lean` / `proofs.yaml`: none of the attachment's new
  certificate-dependent large-`k` claims. The repaired normalization layer
  and the exact reduced-binomial bounds were independently reconstructed and
  are now kernel-banked.
- Next formalization priority: the row-binomial lcm identity, followed by the
  square-Hermite kernel.
- Repository-scale support enumeration: not authorized and not started.

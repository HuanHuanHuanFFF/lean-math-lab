import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.C2DirectDivisor.Family

/-! Uncompiled complete explicit-type, definition-body and transitive-axiom audit. -/
set_option autoImplicit false
set_option relaxedAutoImplicit false
open scoped BigOperators
open Math.B699.C2Direct
open Math.B699.PadeConstruction
open Polynomial

#check (@Math.B699.C2Direct.total : ∀ (x y z : ℕ),
  ℕ)
#print axioms Math.B699.C2Direct.total
#print Math.B699.C2Direct.total

#check (@Math.B699.C2Direct.layer : ∀ (x y z q : ℕ),
  ℕ)
#print axioms Math.B699.C2Direct.layer
#print Math.B699.C2Direct.layer

#check (@Math.B699.C2Direct.cutoff : ∀ (x y z p : ℕ),
  ℕ)
#print axioms Math.B699.C2Direct.cutoff
#print Math.B699.C2Direct.cutoff

#check (@Math.B699.C2Direct.exponent : ∀ (x y z p : ℕ),
  ℕ)
#print axioms Math.B699.C2Direct.exponent
#print Math.B699.C2Direct.exponent

#check (@Math.B699.C2Direct.primeSet : ∀ (x y z : ℕ),
  Finset ℕ)
#print axioms Math.B699.C2Direct.primeSet
#print Math.B699.C2Direct.primeSet

#check (@Math.B699.C2Direct.c2 : ∀ (x y z : ℕ),
  ℕ)
#print axioms Math.B699.C2Direct.c2
#print Math.B699.C2Direct.c2

#check (@Math.B699.C2Direct.layer_one : ∀ (x y z : ℕ),
  layer x y z 1 = 0)
#print axioms Math.B699.C2Direct.layer_one

#check (@Math.B699.C2Direct.layer_support : ∀ (x y z q : ℕ) (h : layer x y z q = 1),
  2 * q + 1 ≤ total x y z)
#print axioms Math.B699.C2Direct.layer_support

#check (@Math.B699.C2Direct.layer_zero_of_large : ∀ (x y z q : ℕ) (hq : total x y z < q),
  layer x y z q = 0)
#print axioms Math.B699.C2Direct.layer_zero_of_large

#check (@Math.B699.C2Direct.layer_zero_above_cutoff : ∀ (x y z p h : ℕ) (hp : p.Prime)
    (hh : cutoff x y z p ≤ h),
  layer x y z (p ^ h) = 0)
#print axioms Math.B699.C2Direct.layer_zero_above_cutoff

#check (@Math.B699.C2Direct.layer_zero_outside : ∀ (x y z p h : ℕ) (hp : p.Prime)
    (hh : h ∉ Finset.Ico 1 (cutoff x y z p)),
  layer x y z (p ^ h) = 0)
#print axioms Math.B699.C2Direct.layer_zero_outside

#check (@Math.B699.C2Direct.exponent_zero_of_large_prime : ∀ (x y z p : ℕ) (hp : p.Prime)
    (hlarge : total x y z < p),
  exponent x y z p = 0)
#print axioms Math.B699.C2Direct.exponent_zero_of_large_prime

#check (@Math.B699.C2Direct.c2_pos : ∀ (x y z : ℕ),
  0 < c2 x y z)
#print axioms Math.B699.C2Direct.c2_pos

#check (@Math.B699.C2Direct.layer_swap : ∀ (x y z q : ℕ),
  layer x y z q = layer y x z q)
#print axioms Math.B699.C2Direct.layer_swap

#check (@Math.B699.C2Direct.exponent_swap : ∀ (x y z p : ℕ),
  exponent x y z p = exponent y x z p)
#print axioms Math.B699.C2Direct.exponent_swap

#check (@Math.B699.C2Direct.c2_swap : ∀ (x y z : ℕ),
  c2 x y z = c2 y x z)
#print axioms Math.B699.C2Direct.c2_swap

#check (@Math.B699.C2Direct.carry : ∀ (a b q : ℕ),
  ℕ)
#print axioms Math.B699.C2Direct.carry
#print Math.B699.C2Direct.carry

#check (@Math.B699.C2Direct.remainder_sub_add_le : ∀ (A r q : ℕ) (hr : r ≤ A),
  A % q ≤ (A - r) % q + r % q)
#print axioms Math.B699.C2Direct.remainder_sub_add_le

#check (@Math.B699.C2Direct.no_carries_bound : ∀ (A B C r q : ℕ) (hr : r ≤ A)
    (h1 : ¬ q ≤ C % q + (A - r) % q)
    (h2 : ¬ q ≤ r % q + B % q),
  A % q + B % q + C % q ≤ 2 * q - 2)
#print axioms Math.B699.C2Direct.no_carries_bound

#check (@Math.B699.C2Direct.shifted_forces_carry : ∀ (A B C r q : ℕ) (hr : r ≤ A) (hq : 0 < q)
    (hs : 2 * q - 1 ≤ A % q + B % q + C % q),
  q ≤ C % q + (A - r) % q ∨ q ≤ r % q + B % q)
#print axioms Math.B699.C2Direct.shifted_forces_carry

#check (@Math.B699.C2Direct.remainder_pred_le : ∀ (x q : ℕ) (hx : 1 ≤ x),
  x % q ≤ (x - 1) % q + 1)
#print axioms Math.B699.C2Direct.remainder_pred_le

#check (@Math.B699.C2Direct.shifted_layer_threshold : ∀ (x y z delta q : ℕ)
    (hx : 1 ≤ x) (hy : 1 ≤ y) (hz : 1 ≤ z)
    (hd : delta = 0 ∨ delta = 1)
    (hs : 2 * q + 1 ≤ x % q + y % q + z % q),
  2 * q - 1 ≤ (x - delta) % q + (z - 1 + delta) % q + (y - delta) % q)
#print axioms Math.B699.C2Direct.shifted_layer_threshold

#check (@Math.B699.C2Direct.layer_le_two_carries : ∀ (x y z delta r q : ℕ)
    (hx : 1 ≤ x) (hy : 1 ≤ y) (hz : 1 ≤ z)
    (hd : delta = 0 ∨ delta = 1) (hr : r ≤ x - delta) (hq : 0 < q),
  layer x y z q ≤ carry (y - delta) (x - delta - r) q + carry r (z - 1 + delta) q)
#print axioms Math.B699.C2Direct.layer_le_two_carries

#check (@Math.B699.C2Direct.qMagnitude_pos : ∀ (A B C r : ℕ) (hr : r ≤ A),
  0 < qMagnitude A B C r)
#print axioms Math.B699.C2Direct.qMagnitude_pos

#check (@Math.B699.C2Direct.choose_factorization_sum : ∀ (p n k b : ℕ) (hp : p.Prime)
    (hk : k ≤ n) (hb : Nat.log p n < b),
  (n.choose k).factorization p = ∑ h ∈ Finset.Ico 1 b, carry k (n - k) (p ^ h))
#print axioms Math.B699.C2Direct.choose_factorization_sum

#check (@Math.B699.C2Direct.exponent_le_qMagnitude_factorization : ∀ (x y z delta r p : ℕ)
    (hx : 1 ≤ x) (hy : 1 ≤ y) (hz : 1 ≤ z)
    (hd : delta = 0 ∨ delta = 1) (hr : r ≤ x - delta) (hp : p.Prime),
  exponent x y z p ≤
      (qMagnitude (x - delta) (z - 1 + delta) (y - delta) r).factorization p)
#print axioms Math.B699.C2Direct.exponent_le_qMagnitude_factorization

#check (@Math.B699.C2Direct.prime_power_dvd_qMagnitude : ∀ (x y z delta r p : ℕ)
    (hx : 1 ≤ x) (hy : 1 ≤ y) (hz : 1 ≤ z)
    (hd : delta = 0 ∨ delta = 1) (hr : r ≤ x - delta) (hp : p.Prime),
  p ^ exponent x y z p ∣ qMagnitude (x - delta) (z - 1 + delta) (y - delta) r)
#print axioms Math.B699.C2Direct.prime_power_dvd_qMagnitude

#check (@Math.B699.C2Direct.c2_dvd_qMagnitude : ∀ (x y z delta r : ℕ)
    (hx : 1 ≤ x) (hy : 1 ≤ y) (hz : 1 ≤ z)
    (hd : delta = 0 ∨ delta = 1) (hr : r ≤ x - delta),
  c2 x y z ∣ qMagnitude (x - delta) (z - 1 + delta) (y - delta) r)
#print axioms Math.B699.C2Direct.c2_dvd_qMagnitude

#check (@Math.B699.C2Direct.c2_dvd_qCoefficient : ∀ (x y z delta r : ℕ)
    (hx : 1 ≤ x) (hy : 1 ≤ y) (hz : 1 ≤ z)
    (hd : delta = 0 ∨ delta = 1) (hr : r ≤ x - delta),
  (c2 x y z : ℤ) ∣ qCoefficient (x - delta) (z - 1 + delta) (y - delta) r)
#print axioms Math.B699.C2Direct.c2_dvd_qCoefficient

#check (@Math.B699.C2Direct.c2_dvd_qContent : ∀ (x y z delta : ℕ)
    (hx : 1 ≤ x) (hy : 1 ≤ y) (hz : 1 ≤ z)
    (hd : delta = 0 ∨ delta = 1),
  c2 x y z ∣ qContent (x - delta) (z - 1 + delta) (y - delta))
#print axioms Math.B699.C2Direct.c2_dvd_qContent

#check (@Math.B699.C2Direct.c2_le_qContent : ∀ (x y z delta : ℕ)
    (hx : 1 ≤ x) (hy : 1 ≤ y) (hz : 1 ≤ z)
    (hd : delta = 0 ∨ delta = 1),
  c2 x y z ≤ qContent (x - delta) (z - 1 + delta) (y - delta))
#print axioms Math.B699.C2Direct.c2_le_qContent

#check (@Math.B699.C2Direct.c2_dvd_qPolynomial_coeff : ∀ (x y z delta r : ℕ)
    (hx : 1 ≤ x) (hy : 1 ≤ y) (hz : 1 ≤ z)
    (hd : delta = 0 ∨ delta = 1),
  (c2 x y z : ℤ) ∣ (qPolynomial (x - delta) (z - 1 + delta) (y - delta)).coeff r)
#print axioms Math.B699.C2Direct.c2_dvd_qPolynomial_coeff

#check (@Math.B699.C2Direct.choose_rearrange : ∀ (A C k r : ℕ) (hk : k ≤ C) (hr : r ≤ k),
  (A + C - r).choose A * (C - r).choose (k - r) =
      (A + C - k).choose A * (A + C - r).choose (k - r))
#print axioms Math.B699.C2Direct.choose_rearrange

#check (@Math.B699.C2Direct.shifted_convolution : ∀ (A B C k : ℕ) (hk : k ≤ C),
  (∑ r ∈ Finset.range (k + 1), (B + r).choose r * (A + C - r).choose (k - r)) =
      (A + B + C + 1).choose k)
#print axioms Math.B699.C2Direct.shifted_convolution

#check (@Math.B699.C2Direct.swapped_qMagnitude_convolution : ∀ (A B C k : ℕ) (hk : k ≤ C),
  (∑ r ∈ Finset.range (k + 1), qMagnitude C B A r * (C - r).choose (k - r)) =
      (A + C - k).choose A * (A + B + C + 1).choose k)
#print axioms Math.B699.C2Direct.swapped_qMagnitude_convolution

#check (@Math.B699.C2Direct.c2_dvd_swapped_qMagnitude : ∀ (x y z delta r : ℕ)
    (hx : 1 ≤ x) (hy : 1 ≤ y) (hz : 1 ≤ z)
    (hd : delta = 0 ∨ delta = 1) (hr : r ≤ y - delta),
  c2 x y z ∣ qMagnitude (y - delta) (z - 1 + delta) (x - delta) r)
#print axioms Math.B699.C2Direct.c2_dvd_swapped_qMagnitude

#check (@Math.B699.C2Direct.c2_dvd_pMagnitude : ∀ (x y z delta k : ℕ)
    (hx : 1 ≤ x) (hy : 1 ≤ y) (hz : 1 ≤ z)
    (hd : delta = 0 ∨ delta = 1) (hk : k ≤ y - delta),
  c2 x y z ∣ ((x - delta + (z - 1 + delta) + (y - delta) + 1).choose k) *
      ((x - delta + (y - delta) - k).choose (x - delta)))
#print axioms Math.B699.C2Direct.c2_dvd_pMagnitude

#check (@Math.B699.C2Direct.c2_dvd_pCoefficient : ∀ (x y z delta k : ℕ)
    (hx : 1 ≤ x) (hy : 1 ≤ y) (hz : 1 ≤ z)
    (hd : delta = 0 ∨ delta = 1) (hk : k ≤ y - delta),
  (c2 x y z : ℤ) ∣ pCoefficient (x - delta) (z - 1 + delta) (y - delta) k)
#print axioms Math.B699.C2Direct.c2_dvd_pCoefficient

#check (@Math.B699.C2Direct.c2_dvd_pPolynomial_coeff : ∀ (x y z delta k : ℕ)
    (hx : 1 ≤ x) (hy : 1 ≤ y) (hz : 1 ≤ z)
    (hd : delta = 0 ∨ delta = 1),
  (c2 x y z : ℤ) ∣ (pPolynomial (x - delta) (z - 1 + delta) (y - delta)).coeff k)
#print axioms Math.B699.C2Direct.c2_dvd_pPolynomial_coeff

#check (@Math.B699.C2Direct.qQuotient : ∀ (x y z delta r : ℕ),
  ℤ)
#print axioms Math.B699.C2Direct.qQuotient
#print Math.B699.C2Direct.qQuotient

#check (@Math.B699.C2Direct.pQuotient : ∀ (x y z delta r : ℕ),
  ℤ)
#print axioms Math.B699.C2Direct.pQuotient
#print Math.B699.C2Direct.pQuotient

#check (@Math.B699.C2Direct.qQuotientPolynomial : ∀ (x y z delta : ℕ),
  ℤ[X])
#print axioms Math.B699.C2Direct.qQuotientPolynomial
#print Math.B699.C2Direct.qQuotientPolynomial

#check (@Math.B699.C2Direct.pQuotientPolynomial : ∀ (x y z delta : ℕ),
  ℤ[X])
#print axioms Math.B699.C2Direct.pQuotientPolynomial
#print Math.B699.C2Direct.pQuotientPolynomial

#check (@Math.B699.C2Direct.qQuotientValue : ∀ (x y z delta : ℕ) (a b : ℤ),
  ℤ)
#print axioms Math.B699.C2Direct.qQuotientValue
#print Math.B699.C2Direct.qQuotientValue

#check (@Math.B699.C2Direct.pQuotientValue : ∀ (x y z delta : ℕ) (a b : ℤ),
  ℤ)
#print axioms Math.B699.C2Direct.pQuotientValue
#print Math.B699.C2Direct.pQuotientValue

#check (@Math.B699.C2Direct.c2_mul_qQuotient : ∀ (x y z delta r : ℕ)
    (hx : 1 ≤ x) (hy : 1 ≤ y) (hz : 1 ≤ z)
    (hd : delta = 0 ∨ delta = 1) (hr : r ≤ x - delta),
  (c2 x y z : ℤ) * qQuotient x y z delta r =
      qCoefficient (x - delta) (z - 1 + delta) (y - delta) r)
#print axioms Math.B699.C2Direct.c2_mul_qQuotient

#check (@Math.B699.C2Direct.c2_mul_pQuotient : ∀ (x y z delta r : ℕ)
    (hx : 1 ≤ x) (hy : 1 ≤ y) (hz : 1 ≤ z)
    (hd : delta = 0 ∨ delta = 1) (hr : r ≤ y - delta),
  (c2 x y z : ℤ) * pQuotient x y z delta r =
      pCoefficient (x - delta) (z - 1 + delta) (y - delta) r)
#print axioms Math.B699.C2Direct.c2_mul_pQuotient

#check (@Math.B699.C2Direct.c2_mul_qQuotientPolynomial : ∀ (x y z delta : ℕ)
    (hx : 1 ≤ x) (hy : 1 ≤ y) (hz : 1 ≤ z)
    (hd : delta = 0 ∨ delta = 1),
  Polynomial.C (c2 x y z : ℤ) * qQuotientPolynomial x y z delta =
      qPolynomial (x - delta) (z - 1 + delta) (y - delta))
#print axioms Math.B699.C2Direct.c2_mul_qQuotientPolynomial

#check (@Math.B699.C2Direct.c2_mul_pQuotientPolynomial : ∀ (x y z delta : ℕ)
    (hx : 1 ≤ x) (hy : 1 ≤ y) (hz : 1 ≤ z)
    (hd : delta = 0 ∨ delta = 1),
  Polynomial.C (c2 x y z : ℤ) * pQuotientPolynomial x y z delta =
      pPolynomial (x - delta) (z - 1 + delta) (y - delta))
#print axioms Math.B699.C2Direct.c2_mul_pQuotientPolynomial

#check (@Math.B699.C2Direct.c2_mul_qQuotientValue : ∀ (x y z delta : ℕ) (a b : ℤ)
    (hx : 1 ≤ x) (hy : 1 ≤ y) (hz : 1 ≤ z)
    (hd : delta = 0 ∨ delta = 1),
  (c2 x y z : ℤ) * qQuotientValue x y z delta a b =
      homogeneousValue (x - delta)
        (qCoefficient (x - delta) (z - 1 + delta) (y - delta)) a b)
#print axioms Math.B699.C2Direct.c2_mul_qQuotientValue

#check (@Math.B699.C2Direct.c2_mul_pQuotientValue : ∀ (x y z delta : ℕ) (a b : ℤ)
    (hx : 1 ≤ x) (hy : 1 ≤ y) (hz : 1 ≤ z)
    (hd : delta = 0 ∨ delta = 1),
  (c2 x y z : ℤ) * pQuotientValue x y z delta a b =
      homogeneousValue (y - delta)
        (pCoefficient (x - delta) (z - 1 + delta) (y - delta)) a b)
#print axioms Math.B699.C2Direct.c2_mul_pQuotientValue

#check (@Math.B699.C2Direct.sourceDivisor : ∀ (e d f m : ℕ),
  ℕ)
#print axioms Math.B699.C2Direct.sourceDivisor
#print Math.B699.C2Direct.sourceDivisor

#check (@Math.B699.C2Direct.source_products_pos : ∀ (e d f m : ℕ)
    (he : 1 ≤ e) (hd : 1 ≤ d) (hf : 1 ≤ f) (hm : 1 ≤ m),
  1 ≤ e * m ∧ 1 ≤ d * m ∧ 1 ≤ f * m)
#print axioms Math.B699.C2Direct.source_products_pos

#check (@Math.B699.C2Direct.sourceDivisor_pos : ∀ (e d f m : ℕ),
  0 < sourceDivisor e d f m)
#print axioms Math.B699.C2Direct.sourceDivisor_pos

#check (@Math.B699.C2Direct.source_layer_tail : ∀ (e d f m p h : ℕ)
    (ht : (e + d + f) * m < p ^ h),
  layer (e * m) (d * m) (f * m) (p ^ h) = 0)
#print axioms Math.B699.C2Direct.source_layer_tail

#check (@Math.B699.C2Direct.source_dvd_qMagnitude : ∀ (e d f m delta r : ℕ)
    (he : 1 ≤ e) (hd : 1 ≤ d) (hf : 1 ≤ f) (hm : 1 ≤ m)
    (hdelta : delta = 0 ∨ delta = 1) (hr : r ≤ e * m - delta),
  sourceDivisor e d f m ∣ qMagnitude (e * m - delta) (f * m - 1 + delta) (d * m - delta) r)
#print axioms Math.B699.C2Direct.source_dvd_qMagnitude

#check (@Math.B699.C2Direct.source_dvd_qCoefficient : ∀ (e d f m delta r : ℕ)
    (he : 1 ≤ e) (hd : 1 ≤ d) (hf : 1 ≤ f) (hm : 1 ≤ m)
    (hdelta : delta = 0 ∨ delta = 1) (hr : r ≤ e * m - delta),
  (sourceDivisor e d f m : ℤ) ∣
      qCoefficient (e * m - delta) (f * m - 1 + delta) (d * m - delta) r)
#print axioms Math.B699.C2Direct.source_dvd_qCoefficient

#check (@Math.B699.C2Direct.source_dvd_qContent : ∀ (e d f m delta : ℕ)
    (he : 1 ≤ e) (hd : 1 ≤ d) (hf : 1 ≤ f) (hm : 1 ≤ m)
    (hdelta : delta = 0 ∨ delta = 1),
  sourceDivisor e d f m ∣ qContent (e * m - delta) (f * m - 1 + delta) (d * m - delta))
#print axioms Math.B699.C2Direct.source_dvd_qContent

#check (@Math.B699.C2Direct.source_dvd_pCoefficient : ∀ (e d f m delta r : ℕ)
    (he : 1 ≤ e) (hd : 1 ≤ d) (hf : 1 ≤ f) (hm : 1 ≤ m)
    (hdelta : delta = 0 ∨ delta = 1) (hr : r ≤ d * m - delta),
  (sourceDivisor e d f m : ℤ) ∣
      pCoefficient (e * m - delta) (f * m - 1 + delta) (d * m - delta) r)
#print axioms Math.B699.C2Direct.source_dvd_pCoefficient

#check (@Math.B699.C2Direct.source_integer_polynomials : ∀ (e d f m delta : ℕ)
    (he : 1 ≤ e) (hd : 1 ≤ d) (hf : 1 ≤ f) (hm : 1 ≤ m)
    (hdelta : delta = 0 ∨ delta = 1),
  ∃ P Q : ℤ[X],
      Polynomial.C (sourceDivisor e d f m : ℤ) * P =
        pPolynomial (e * m - delta) (f * m - 1 + delta) (d * m - delta) ∧
      Polynomial.C (sourceDivisor e d f m : ℤ) * Q =
        qPolynomial (e * m - delta) (f * m - 1 + delta) (d * m - delta))
#print axioms Math.B699.C2Direct.source_integer_polynomials

import research.tasks.«B699-Binomial».runs.«20261001-lean-nonr7-01a0f779».continuations.«20261002-onehour».critical.HeightGroups.Group003
import Mathlib.Algebra.Order.Group.Unbundled.Int
import Mathlib.Algebra.Order.Ring.Cast
import Mathlib.Algebra.Polynomial.Basic
import Mathlib.Algebra.Ring.Commute
import Mathlib.Data.Nat.Choose.Sum
import Mathlib.Data.Real.Basic
import Mathlib.Tactic.Linarith
import Mathlib.Tactic.Ring
set_option Elab.async false
/- Frozen member 16 research\tasks\B699-Binomial\runs\20260911-low-index-lean-513dc7cc\lean\IntegerBridge.lean dab88701d97ddd8885c17b49f65c8750b7e21de7ef876e8f59b4fcc9079acfd8 -/
section HeightMember016






/-!
# A finite integer approximation bridge used in BFT Section 7

Adapted from the frozen candidate; current acceptance is recorded by the run verifier. This file is not a formalization of BFT Lemma 4.1.

Source: Bennett--Filaseta--Trifonov, "On the factorization of consecutive
integers", 2007-02-26 author manuscript, PDF pages 26--27, equation (7.4).
Frozen PDF SHA256:
0df18ee8d108f658812ac05d1f8947b3dcc28b70d17f268acd7c871e7e7c392c.

The actual Lemma 4.1, on PDF page 10, supplies analytic bounds for the
polynomials Q_n and E_n. Those bounds are NOT assumed as a new axiom here
and are NOT proved in this file.

Notation for the direct Section 7 application:
* r = p^(k_0*c*m), s = q^(l_0*c*m);
* a = a_source^(c*m), b = b_source^(c*m);
* u = x_1'', v = x_2'';
* P_j, Q_j are the integer-normalized Padé values for n = d*m or d*m-1.
Then r*a*P_j - s*b*Q_j is exactly E_j in (7.3), and
b*Q_j*u - a*P_j*v is the integer whose nonvanishing yields (7.4).

All results below concern arbitrary integers (and real numbers in the last
section). No Padé construction, G-bound, logarithmic height, or B699
original-problem consumer is supplied.
-/

namespace Math.B699.IntegerApproximationBridge

/-- Two independent integer rows cannot both be proportional to `(u,v)`
when `v` is nonzero. This is the algebraic step immediately before (7.4).
The determinant is computed from the inputs, rather than hidden in a type. -/
theorem cross_ne_zero_or
    {P₀ Q₀ P₁ Q₁ u v : ℤ}
    (hdet : P₀ * Q₁ - P₁ * Q₀ ≠ 0) (hv : v ≠ 0) :
    Q₀ * u - P₀ * v ≠ 0 ∨ Q₁ * u - P₁ * v ≠ 0 := by
  by_cases h₀ : Q₀ * u - P₀ * v = 0
  · right
    intro h₁
    have hprod : (P₀ * Q₁ - P₁ * Q₀) * v = 0 := by
      calc
        (P₀ * Q₁ - P₁ * Q₀) * v =
            Q₀ * (Q₁ * u - P₁ * v) - Q₁ * (Q₀ * u - P₀ * v) := by ring
        _ = 0 := by rw [h₀, h₁]; ring
    exact (mul_ne_zero hdet hv) hprod
  · exact Or.inl h₀

/-- The precise integer triangle-inequality core of (7.4), with arbitrary
integer parameters and no sign assumptions on the approximating row.
Here `r*u-s*v` is the target gap and `r*P-s*Q` is the row error. -/
theorem integer_gap_lower_bound
    {r s P Q u v D : ℤ}
    (hr : 0 ≤ r) (hcross : Q * u - P * v ≠ 0)
    (hgap : |r * u - s * v| ≤ D) :
    r ≤ |Q| * D + |r * P - s * Q| * |v| := by
  calc
    r = r * 1 := by ring
    _ ≤ r * |Q * u - P * v| :=
      mul_le_mul_of_nonneg_left (Int.one_le_abs hcross) hr
    _ = |r * (Q * u - P * v)| := by rw [abs_mul, abs_of_nonneg hr]
    _ = |Q * (r * u - s * v) - (r * P - s * Q) * v| := by
      congr 1
      ring
    _ ≤ |Q * (r * u - s * v)| + |(r * P - s * Q) * v| := by
      simpa only [sub_eq_add_neg, abs_neg] using
        (abs_add_le (Q * (r * u - s * v)) (-((r * P - s * Q) * v)))
    _ = |Q| * |r * u - s * v| + |r * P - s * Q| * |v| := by
      rw [abs_mul, abs_mul]
    _ ≤ |Q| * D + |r * P - s * Q| * |v| :=
      add_le_add (mul_le_mul_of_nonneg_left hgap (abs_nonneg Q)) (le_refl _)

/-- A finite two-index form: the determinant chooses a usable row, then the
integer gap bound follows. Arbitrary indices cover both `d*m` and `d*m-1`
without silently imposing a convention on natural-number subtraction. -/
theorem exists_integer_gap_lower_bound
    {ι : Type*} (P Q : ι → ℤ) (i₀ i₁ : ι)
    {r s u v D : ℤ}
    (hr : 0 ≤ r) (hv : v ≠ 0)
    (hdet : P i₀ * Q i₁ - P i₁ * Q i₀ ≠ 0)
    (hgap : |r * u - s * v| ≤ D) :
    ∃ i, (i = i₀ ∨ i = i₁) ∧ Q i * u - P i * v ≠ 0 ∧
      r ≤ |Q i| * D + |r * P i - s * Q i| * |v| := by
  rcases cross_ne_zero_or (u := u) hdet hv with h₀ | h₁
  · exact ⟨i₀, Or.inl rfl, h₀, integer_gap_lower_bound hr h₀ hgap⟩
  · exact ⟨i₁, Or.inr rfl, h₁, integer_gap_lower_bound hr h₁ hgap⟩

/-- Directly shaped for BFT (7.4). The unscaled Padé determinant is an input;
common nonzero integer scaling factors preserve its nonvanishing. -/
theorem bft_7_4_of_two_rows
    {ι : Type*} (P Q : ι → ℤ) (i₀ i₁ : ι)
    {r s a b u v D : ℤ}
    (hr : 0 ≤ r) (ha : a ≠ 0) (hb : 0 < b) (hv : v ≠ 0)
    (hdet : P i₀ * Q i₁ - P i₁ * Q i₀ ≠ 0)
    (hgap : |r * u - s * v| ≤ D) :
    ∃ i, (i = i₀ ∨ i = i₁) ∧ b * Q i * u - a * P i * v ≠ 0 ∧
      r ≤ b * D * |Q i| + |r * a * P i - s * b * Q i| * |v| := by
  have hscaled :
      (a * P i₀) * (b * Q i₁) - (a * P i₁) * (b * Q i₀) ≠ 0 := by
    have hid :
        (a * P i₀) * (b * Q i₁) - (a * P i₁) * (b * Q i₀) =
          a * b * (P i₀ * Q i₁ - P i₁ * Q i₀) := by ring
    rw [hid]
    exact mul_ne_zero (mul_ne_zero ha (ne_of_gt hb)) hdet
  obtain ⟨i, hi, hcross, hbound⟩ :=
    exists_integer_gap_lower_bound (fun j => a * P j) (fun j => b * Q j)
      i₀ i₁ hr hv hscaled hgap
  refine ⟨i, hi, hcross, ?_⟩
  simpa only [abs_mul, abs_of_pos hb, mul_assoc, mul_left_comm, mul_comm] using hbound

/-- Cast the discrete nonzero-integer lower bound into the real numbers. -/
theorem one_le_abs_int_cast {z : ℤ} (hz : z ≠ 0) :
    (1 : ℝ) ≤ |(z : ℝ)| := by
  have hcast : ((1 : ℤ) : ℝ) ≤ ((|z| : ℤ) : ℝ) :=
    Int.cast_le.mpr (Int.one_le_abs hz)
  simpa only [Int.cast_one, Int.cast_abs] using hcast

/-- Real approximation form of the same integer determinant mechanism.
The conclusion remains valid for any real `α`; irrationality is not assumed. -/
theorem one_le_approximation_sum
    {P Q p q : ℤ} {α : ℝ}
    (hcross : Q * p - P * q ≠ 0) :
    (1 : ℝ) ≤ |(Q : ℝ)| * |(q : ℝ) * α - (p : ℝ)| +
      |(q : ℝ)| * |(Q : ℝ) * α - (P : ℝ)| := by
  have hunit := one_le_abs_int_cast hcross
  have hid :
      ((Q * p - P * q : ℤ) : ℝ) =
        (q : ℝ) * ((Q : ℝ) * α - (P : ℝ)) -
          (Q : ℝ) * ((q : ℝ) * α - (p : ℝ)) := by
    rw [Int.cast_sub, Int.cast_mul, Int.cast_mul]
    ring
  rw [hid] at hunit
  have htriangle := abs_add_le
    ((q : ℝ) * ((Q : ℝ) * α - (P : ℝ)))
    (-((Q : ℝ) * ((q : ℝ) * α - (p : ℝ))))
  have hsum :
      |(q : ℝ) * ((Q : ℝ) * α - (P : ℝ)) -
        (Q : ℝ) * ((q : ℝ) * α - (p : ℝ))| ≤
      |(Q : ℝ)| * |(q : ℝ) * α - (p : ℝ)| +
        |(q : ℝ)| * |(Q : ℝ) * α - (P : ℝ)| := by
    simpa only [sub_eq_add_neg, abs_neg, abs_mul, add_comm] using htriangle
  exact le_trans hunit hsum

/-- If a selected row has height at most `B` and its error times `|q|`
is strictly less than one half, then the target linear form is bounded below.
The strict conclusion comes from the strict error hypothesis. -/
theorem half_lt_height_mul_error
    {P Q p q : ℤ} {α B : ℝ}
    (hcross : Q * p - P * q ≠ 0)
    (hheight : |(Q : ℝ)| ≤ B)
    (herror : |(q : ℝ)| * |(Q : ℝ) * α - (P : ℝ)| < 1 / 2) :
    (1 : ℝ) / 2 < B * |(q : ℝ) * α - (p : ℝ)| := by
  have hsum := one_le_approximation_sum (α := α) hcross
  have hmono := mul_le_mul_of_nonneg_right hheight
    (abs_nonneg ((q : ℝ) * α - (p : ℝ)))
  linarith

/-- A finite-index rational-approximation lower bound.
Both row estimates are checked only at the two supplied indices. The
nonzero determinant selects one of them; no lower-bound conclusion is
included among the assumptions. For `q ≠ 0`, the resulting strict bound is
`1 / (2 * B * |q|) < |α - p/q|`.

This is an independent auxiliary corollary, not a source statement numbered
Lemma 4.1. An infinite-sequence/logarithm theorem still has to construct the
index pair and prove these quantitative input estimates. -/
theorem rational_approximation_lower_bound_of_two_rows
    {ι : Type*} (P Q : ι → ℤ) (i₀ i₁ : ι)
    {α B : ℝ} {p q : ℤ}
    (hB : 0 < B) (hq : q ≠ 0)
    (hdet : P i₀ * Q i₁ - P i₁ * Q i₀ ≠ 0)
    (hheight : ∀ i, i = i₀ ∨ i = i₁ → |(Q i : ℝ)| ≤ B)
    (herror : ∀ i, i = i₀ ∨ i = i₁ →
      |(q : ℝ)| * |(Q i : ℝ) * α - (P i : ℝ)| < 1 / 2) :
    1 / (2 * B * |(q : ℝ)|) < |α - (p : ℝ) / (q : ℝ)| := by
  have hlinear : (1 : ℝ) / 2 < B * |(q : ℝ) * α - (p : ℝ)| := by
    rcases cross_ne_zero_or (u := p) hdet hq with h₀ | h₁
    · exact half_lt_height_mul_error h₀ (hheight i₀ (Or.inl rfl))
        (herror i₀ (Or.inl rfl))
    · exact half_lt_height_mul_error h₁ (hheight i₁ (Or.inr rfl))
        (herror i₁ (Or.inr rfl))
  have hqreal : (q : ℝ) ≠ 0 := Int.cast_ne_zero.mpr hq
  have hqabs : 0 < |(q : ℝ)| := abs_pos.mpr hqreal
  have hid : (q : ℝ) * α - (p : ℝ) =
      (q : ℝ) * (α - (p : ℝ) / (q : ℝ)) := by
    calc
      (q : ℝ) * α - (p : ℝ) =
          (q : ℝ) * α - ((p : ℝ) / (q : ℝ)) * (q : ℝ) := by
        rw [div_mul_cancel₀ _ hqreal]
      _ = (q : ℝ) * (α - (p : ℝ) / (q : ℝ)) := by ring
  rw [hid, abs_mul] at hlinear
  apply (div_lt_iff₀ (mul_pos (mul_pos (by norm_num) hB) hqabs)).2
  nlinarith

#print axioms Math.B699.IntegerApproximationBridge.cross_ne_zero_or
#print axioms Math.B699.IntegerApproximationBridge.integer_gap_lower_bound
#print axioms Math.B699.IntegerApproximationBridge.exists_integer_gap_lower_bound
#print axioms Math.B699.IntegerApproximationBridge.bft_7_4_of_two_rows
#print axioms Math.B699.IntegerApproximationBridge.one_le_abs_int_cast
#print axioms Math.B699.IntegerApproximationBridge.one_le_approximation_sum
#print axioms Math.B699.IntegerApproximationBridge.half_lt_height_mul_error
#print axioms Math.B699.IntegerApproximationBridge.rational_approximation_lower_bound_of_two_rows

end Math.B699.IntegerApproximationBridge


end HeightMember016
/- Frozen member 17 research\tasks\B699-Binomial\runs\20260911-low-index-lean-513dc7cc\lean\Pade\Rows.lean 9436eed58f7a68a64de455efcd13d976ddf171b8f9874fc67fa09f39ea5d9901 -/
section HeightMember017




/-!
# Actual normalized rows with no hraw hypothesis

This module calls the actual P/Q content-normalization lemmas and the actual
source homogeneous determinant directly. It does not import the old conditional
adjacent-determinant consumers. PContentTransform is a complete but still pending
candidate dependency. The final Section 7 theorem has no Padé identity, recurrence,
six-ratio, or raw-determinant hypothesis. Analytic growth/height inputs are separate.
-/

namespace Math.B699.PadeActualRows

open Math.B699.PadeConstruction
open Math.B699.PadeContent
open Math.B699.PadeActualRecurrence

def normalizedDeterminant (u v : ℕ) (x y : ℤ) : ℤ :=
  pNormalizedValue u v x y * qNormalizedValue (u - 1) (v + 1) (u - 1) x y -
    pNormalizedValue (u - 1) (v + 1) x y * qNormalizedValue u v u x y

/-- The actual content scaling, established without a determinant hypothesis. -/
theorem content_product_mul_normalizedDeterminant (u v : ℕ) (x y : ℤ) :
    (qContent u v u : ℤ) * (qContent (u - 1) (v + 1) (u - 1) : ℤ) *
      normalizedDeterminant u v x y = rawHomogeneousDeterminant u v x y := by
  unfold normalizedDeterminant rawHomogeneousDeterminant
  calc
    (qContent u v u : ℤ) * (qContent (u - 1) (v + 1) (u - 1) : ℤ) *
        (pNormalizedValue u v x y * qNormalizedValue (u - 1) (v + 1) (u - 1) x y -
          pNormalizedValue (u - 1) (v + 1) x y * qNormalizedValue u v u x y) =
      ((qContent u v u : ℤ) * pNormalizedValue u v x y) *
          ((qContent (u - 1) (v + 1) (u - 1) : ℤ) * qNormalizedValue (u - 1) (v + 1) (u - 1) x y) -
        ((qContent (u - 1) (v + 1) (u - 1) : ℤ) * pNormalizedValue (u - 1) (v + 1) x y) *
          ((qContent u v u : ℤ) * qNormalizedValue u v u x y) := by ring
    _ = homogeneousValue u (pCoefficient u v u) x y *
          homogeneousValue (u - 1) (qCoefficient (u - 1) (v + 1) (u - 1)) x y -
        homogeneousValue (u - 1) (pCoefficient (u - 1) (v + 1) (u - 1)) x y *
          homogeneousValue u (qCoefficient u v u) x y := by
      rw [qContent_mul_pNormalizedValue, qContent_mul_normalizedValue,
        qContent_mul_pNormalizedValue, qContent_mul_normalizedValue]

/-- The concrete gcd-normalized rows have nonzero determinant for every
u>=1,v and nonzero numerator/denominator. No hraw input remains. -/
theorem actual_normalized_rows_det_ne_zero (u v : ℕ) (hu : 1 ≤ u) {x y : ℤ}
    (hx : x ≠ 0) (hy : y ≠ 0) : normalizedDeterminant u v x y ≠ 0 := by
  have hraw := rawHomogeneousDeterminant_ne_zero u v hu hx hy
  intro hz
  have hs := content_product_mul_normalizedDeterminant u v x y
  rw [hz, mul_zero] at hs
  exact hraw hs.symm

def actualPRow (u v : ℕ) (x y : ℤ) (upper : Bool) : ℤ :=
  if upper then pNormalizedValue u v x y else pNormalizedValue (u - 1) (v + 1) x y

def actualQRow (u v : ℕ) (x y : ℤ) (upper : Bool) : ℤ :=
  if upper then qNormalizedValue u v u x y else qNormalizedValue (u - 1) (v + 1) (u - 1) x y

/-- BFT (7.4) for the actual constructed adjacent row pair. Only ordinary
integer/scaling/gap conditions remain; the source determinant is proved upstream. -/
theorem actual_bft_integer_gap (u v : ℕ) (hu : 1 ≤ u) (x y : ℤ)
    {r s a b U V D : ℤ}
    (hx : x ≠ 0) (hy : y ≠ 0)
    (hr : 0 ≤ r) (ha : a ≠ 0) (hb : 0 < b) (hV : V ≠ 0)
    (hgap : |r * U - s * V| ≤ D) :
    ∃ row : Bool,
      b * actualQRow u v x y row * U - a * actualPRow u v x y row * V ≠ 0 ∧
      r ≤ b * D * |actualQRow u v x y row| +
        |r * a * actualPRow u v x y row - s * b * actualQRow u v x y row| * |V| := by
  have hn := actual_normalized_rows_det_ne_zero u v hu hx hy
  have hd : actualPRow u v x y true * actualQRow u v x y false -
      actualPRow u v x y false * actualQRow u v x y true ≠ 0 := by
    simpa [actualPRow, actualQRow, normalizedDeterminant] using hn
  obtain ⟨row, _, hc, hbnd⟩ :=
    Math.B699.IntegerApproximationBridge.bft_7_4_of_two_rows
      (actualPRow u v x y) (actualQRow u v x y) true false hr ha hb hV hd hgap
  exact ⟨row, hc, hbnd⟩

#print axioms Math.B699.PadeActualRows.content_product_mul_normalizedDeterminant
#print axioms Math.B699.PadeActualRows.actual_normalized_rows_det_ne_zero
#print axioms Math.B699.PadeActualRows.actual_bft_integer_gap

end Math.B699.PadeActualRows

end HeightMember017
/- Frozen member 18 research\tasks\B699-Binomial\runs\20260911-low-index-lean-513dc7cc\lean\HomRemainder\RationalHom.lean b3b9101deb68816685b6a14e87d223d9b228c90a078ed54fd2b6f52d393c0fc0 -/
section HeightMember018


/-!
# Actual integer homogeneous values over the rationals

UNCOMPILED CANDIDATE. The accepted construction supplies the actual finite
integer coefficient arrays and the actual content-divisibility identities.
This module proves the rational evaluation correspondence directly, using
the same finite-sum argument as the accepted real-valued correspondence.
No source identity, gcd divisibility, or analytic estimate is an input.
-/

set_option autoImplicit false
set_option relaxedAutoImplicit false

namespace Math.B699.PadeRationalHomogeneous

open Polynomial Math.B699.PadeConstruction Math.B699.PadeContent
open scoped BigOperators

/-- Rational evaluation of the actual integer homogeneous finite sum.
Only the denominator is required to be nonzero; the numerator may be zero. -/
theorem homogeneousValue_cast_q (n : ℕ) (a : ℕ → ℤ) (x y : ℤ) (hy : y ≠ 0) :
    (homogeneousValue n a x y : ℚ) =
      (y : ℚ) ^ n * (coefficientPolynomial n a).eval₂ (Int.castRingHom ℚ)
        ((x : ℚ) / (y : ℚ)) := by
  classical
  have hyq : (y : ℚ) ≠ 0 := Int.cast_ne_zero.mpr hy
  simp only [homogeneousValue, coefficientPolynomial, Int.cast_sum, Int.cast_mul,
    Int.cast_pow, Polynomial.eval₂_finsetSum, Polynomial.eval₂_monomial,
    Finset.mul_sum]
  apply Finset.sum_congr rfl
  intro r hr
  have hle : r ≤ n := Nat.lt_succ_iff.mp (Finset.mem_range.mp hr)
  have hpow : (y : ℚ) ^ n = (y : ℚ) ^ (n - r) * (y : ℚ) ^ r := by
    rw [← pow_add, Nat.sub_add_cancel hle]
  change (a r : ℚ) * (x : ℚ) ^ r * (y : ℚ) ^ (n - r) =
    (y : ℚ) ^ n * ((a r : ℚ) * ((x : ℚ) / (y : ℚ)) ^ r)
  rw [hpow, div_pow]
  field_simp [hyq]
  <;> ring

/-- The actual P array has homogeneous degree C, including degenerate cases. -/
theorem p_homogeneousValue_cast_q (A B C : ℕ) (x y : ℤ) (hy : y ≠ 0) :
    (homogeneousValue C (pCoefficient A B C) x y : ℚ) =
      (y : ℚ) ^ C * (pPolynomial A B C).eval₂ (Int.castRingHom ℚ)
        ((x : ℚ) / (y : ℚ)) := by
  simpa only [pPolynomial] using
    homogeneousValue_cast_q C (pCoefficient A B C) x y hy

/-- The actual Q array has homogeneous degree A, including degenerate cases. -/
theorem q_homogeneousValue_cast_q (A B C : ℕ) (x y : ℤ) (hy : y ≠ 0) :
    (homogeneousValue A (qCoefficient A B C) x y : ℚ) =
      (y : ℚ) ^ A * (qPolynomial A B C).eval₂ (Int.castRingHom ℚ)
        ((x : ℚ) / (y : ℚ)) := by
  simpa only [qPolynomial] using
    homogeneousValue_cast_q A (qCoefficient A B C) x y hy

/-- Cast the accepted actual P-content identity; this statement even permits y=0. -/
theorem qContent_mul_pNormalizedValue_cast_q (u v : ℕ) (x y : ℤ) :
    (qContent u v u : ℚ) * (pNormalizedValue u v x y : ℚ) =
      (homogeneousValue u (pCoefficient u v u) x y : ℚ) := by
  have h := congrArg (fun k : ℤ => (k : ℚ))
    (qContent_mul_pNormalizedValue u v x y)
  simpa only [Int.cast_mul, Int.cast_natCast] using h

/-- Cast the accepted actual Q-content identity; no divisibility is assumed. -/
theorem qContent_mul_qNormalizedValue_cast_q (A B C : ℕ) (x y : ℤ) :
    (qContent A B C : ℚ) * (qNormalizedValue A B C x y : ℚ) =
      (homogeneousValue A (qCoefficient A B C) x y : ℚ) := by
  have h := congrArg (fun k : ℤ => (k : ℚ))
    (qContent_mul_normalizedValue A B C x y)
  simpa only [Int.cast_mul, Int.cast_natCast] using h

end Math.B699.PadeRationalHomogeneous

end HeightMember018
/- Frozen member 19 research\tasks\B699-Binomial\runs\20260911-low-index-lean-513dc7cc\lean\Moment\Kernel.lean 18e6f3030d5957cc63ceeb4f6542fe56ee37e596ebe4210a7857247f2d15f12f -/
section HeightMember019





/-!
# Finite BFT kernel expansions over any commutative ring

Derived from the frozen sibling KernelExpansion.lean, generalized from Real
to an arbitrary commutative ring. Used below with R = Rat[X].
All sources in this new experiment are UNCOMPILED CANDIDATES.
-/

namespace Math.B699.PadeMomentIdentity.KernelAlgebra

variable {R : Type*} [CommRing R]

open scoped BigOperators

private theorem parity_sub_add (C r : ℕ) (hr : r ≤ C) :
    (-1 : R) ^ (C - r) = (-1 : R) ^ (C + r) := by
  conv_lhs => rw [neg_one_pow_eq_pow_mod_two]
  conv_rhs => rw [neg_one_pow_eq_pow_mod_two]
  congr 1
  omega

/-- BFT (3.1) expanded in powers of z; the parity factor is explicit. -/
theorem p_kernel_expansion (A B C : ℕ) (z u : R) :
    u ^ A * (1 - u) ^ B * (z - u) ^ C =
      ∑ r ∈ Finset.range (C + 1),
        ((-1 : R) ^ (C + r) * (C.choose r : R) * z ^ r) *
          (u ^ (A + C - r) * (1 - u) ^ B) := by
  have hbin : (z - u) ^ C =
      ∑ r ∈ Finset.range (C + 1), z ^ r * (-u) ^ (C - r) * (C.choose r : R) := by
    simpa only [sub_eq_add_neg] using (add_pow z (-u) C)
  rw [hbin, Finset.mul_sum]
  apply Finset.sum_congr rfl
  intro r hr
  have hle : r ≤ C := Nat.lt_succ_iff.mp (Finset.mem_range.mp hr)
  have hexp : A + C - r = A + (C - r) := by omega
  rw [neg_pow, parity_sub_add C r hle, hexp, pow_add]
  ring

/-- BFT (3.2), before its outer `(-1)^C` and factorial prefactor. -/
theorem q_kernel_expansion (A B C : ℕ) (z u : R) :
    u ^ B * (1 - u) ^ C * (1 - u + z * u) ^ A =
      ∑ r ∈ Finset.range (A + 1), ((A.choose r : R) * z ^ r) *
        (u ^ (B + r) * (1 - u) ^ (A + C - r)) := by
  have hbin : (1 - u + z * u) ^ A =
      ∑ r ∈ Finset.range (A + 1),
        (z * u) ^ r * (1 - u) ^ (A - r) * (A.choose r : R) := by
    simpa only [add_comm (z * u) (1 - u)] using (add_pow (z * u) (1 - u) A)
  rw [hbin, Finset.mul_sum]
  apply Finset.sum_congr rfl
  intro r hr
  have hle : r ≤ A := Nat.lt_succ_iff.mp (Finset.mem_range.mp hr)
  have hexp : A + C - r = C + (A - r) := by omega
  rw [hexp, mul_pow, pow_add, pow_add]
  ring

/-- BFT (3.3), with the error polynomial's alternating coefficients. -/
theorem e_kernel_expansion (A B C : ℕ) (z u : R) :
    u ^ A * (1 - u) ^ C * (1 - z * u) ^ B =
      ∑ r ∈ Finset.range (B + 1),
        ((-1 : R) ^ r * (B.choose r : R) * z ^ r) *
          (u ^ (A + r) * (1 - u) ^ C) := by
  have hbin : (1 - z * u) ^ B =
      ∑ r ∈ Finset.range (B + 1), (-(z * u)) ^ r * (B.choose r : R) := by
    have h := add_pow (-(z * u)) (1 : R) B
    simpa only [one_pow, mul_one, neg_add_eq_sub] using h
  rw [hbin, Finset.mul_sum]
  apply Finset.sum_congr rfl
  intro r hr
  rw [neg_pow, mul_pow, pow_add]
  ring

#print axioms Math.B699.PadeMomentIdentity.KernelAlgebra.p_kernel_expansion
#print axioms Math.B699.PadeMomentIdentity.KernelAlgebra.q_kernel_expansion
#print axioms Math.B699.PadeMomentIdentity.KernelAlgebra.e_kernel_expansion

end Math.B699.PadeMomentIdentity.KernelAlgebra

end HeightMember019

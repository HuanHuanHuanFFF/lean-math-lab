import Mathlib.Algebra.Order.Group.Unbundled.Int
import Mathlib.Algebra.Order.Ring.Cast
import Mathlib.Data.Real.Basic
import Mathlib.Tactic.Linarith
import Mathlib.Tactic.Ring

/-!
# A finite integer approximation bridge used in BFT Section 7

UNCOMPILED CANDIDATE. This file is not a formalization of BFT Lemma 4.1.

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
      add_le_add_right (mul_le_mul_of_nonneg_left hgap (abs_nonneg Q)) _

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

#print axioms cross_ne_zero_or
#print axioms integer_gap_lower_bound
#print axioms exists_integer_gap_lower_bound
#print axioms bft_7_4_of_two_rows
#print axioms one_le_abs_int_cast
#print axioms one_le_approximation_sum
#print axioms half_lt_height_mul_error
#print axioms rational_approximation_lower_bound_of_two_rows

end Math.B699.IntegerApproximationBridge


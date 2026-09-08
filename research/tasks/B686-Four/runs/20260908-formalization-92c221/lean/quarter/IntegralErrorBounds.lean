import research.tasks.«B686-Four».runs.«20260908-formalization-92c221».lean.quarter.MixedCutIntegrals
import Mathlib.Analysis.SpecialFunctions.Trigonometric.Basic

/-! The positive, strictly decreasing integral error and its uniform bound. -/

namespace B686QuarterRunge

open Finset intervalIntegral

noncomputable section

theorem sqrt_realRadicand_le (r : ℕ) (k u : ℝ) (hk : 0 ≤ k)
    (hu : 0 ≤ u) (huk : u ≤ k)
    (ha : ∀ i < r, 2 * (i : ℝ) + 1 ≤ k) :
    Real.sqrt |realRadicand r u| ≤ k ^ r := by
  apply (Real.sqrt_le_left (pow_nonneg hk r)).mpr
  calc
    |realRadicand r u| = ∏ i ∈ range r, |u ^ 2 - (2 * (i : ℝ) + 1) ^ 2| := by
      exact Finset.abs_prod _ _
    _ ≤ ∏ _i ∈ range r, k ^ 2 := by
      apply prod_le_prod (fun i hi => abs_nonneg _)
      intro i hi
      have hai := ha i (mem_range.mp hi)
      have hai0 : 0 ≤ 2 * (i : ℝ) + 1 := by positivity
      apply abs_le.mpr
      constructor <;> nlinarith [sq_nonneg u, sq_nonneg (2 * (i : ℝ) + 1)]
    _ = (k ^ r) ^ 2 := by simp [← pow_mul, Nat.mul_comm]

theorem quarter_cutIntegrand_le (s : ℕ) (z u : ℝ)
    (hu : 0 ≤ u) (huk : u ≤ 4 * (s : ℝ)) (hz : (4 * (s : ℝ)) ^ 2 < z) :
    cutIntegrand (2 * s) 1 z u ≤
      (2 * (4 * (s : ℝ)) * (4 * (s : ℝ)) ^ (2 * s)) / (z - (4 * (s : ℝ)) ^ 2) := by
  have hsqrt := sqrt_realRadicand_le (2 * s) (4 * (s : ℝ)) u (by positivity) hu huk
    (by
      intro i hi
      have hcast : (i : ℝ) + 1 ≤ 2 * (s : ℝ) := by exact_mod_cast hi
      linarith)
  have hnum : 2 * u * Real.sqrt |realRadicand (2 * s) u| ≤
      2 * (4 * (s : ℝ)) * (4 * (s : ℝ)) ^ (2 * s) :=
    mul_le_mul (by linarith) hsqrt (Real.sqrt_nonneg _) (by positivity)
  unfold cutIntegrand
  rw [pow_one]
  calc
    _ ≤ (2 * (4 * (s : ℝ)) * (4 * (s : ℝ)) ^ (2 * s)) / (z - u ^ 2) :=
      div_le_div_of_nonneg_right hnum (by nlinarith [Nat.cast_nonneg (α := ℝ) s])
    _ ≤ _ := div_le_div_of_nonneg_left (by positivity) (by linarith)
      (by nlinarith [Nat.cast_nonneg (α := ℝ) s])

theorem cutIntegral_le (s j : ℕ) (hj : j < s) (z : ℝ)
    (hz : (4 * (s : ℝ)) ^ 2 < z) :
    cutIntegral s j 1 z ≤
      4 * (4 * (s : ℝ)) * (4 * (s : ℝ)) ^ (2 * s) / (z - (4 * (s : ℝ)) ^ 2) := by
  have hend := cut_endpoint_bound s j hj
  have hb : (4 * (j : ℝ) + 3) ^ 2 < z := by
    nlinarith [Nat.cast_nonneg (α := ℝ) j, Nat.cast_nonneg (α := ℝ) s]
  have hfi := (cutIntegrand_continuousOn (2 * s) 1 z _ _ (by positivity) hb).intervalIntegrable_of_Icc
    (μ := MeasureTheory.volume)
    (by linarith : 4 * (j : ℝ) + 1 ≤ 4 * j + 3)
  have hbound := intervalIntegral.integral_mono_on (by linarith) hfi
    (intervalIntegrable_const (c := (2 * (4 * (s : ℝ)) * (4 * (s : ℝ)) ^ (2 * s)) /
      (z - (4 * (s : ℝ)) ^ 2)))
    (fun u hu => quarter_cutIntegrand_le s z u
      (by linarith [hu.1, Nat.cast_nonneg (α := ℝ) j]) (by linarith [hu.2]) hz)
  simpa only [intervalIntegral.integral_const, smul_eq_mul, cutIntegral,
    show (4 * (j : ℝ) + 3) - (4 * j + 1) = 2 by ring,
    show (2 : ℝ) * ((2 * (4 * (s : ℝ)) * (4 * (s : ℝ)) ^ (2 * s)) /
      (z - (4 * (s : ℝ)) ^ 2)) =
        4 * (4 * (s : ℝ)) * (4 * (s : ℝ)) ^ (2 * s) /
          (z - (4 * (s : ℝ)) ^ 2) by ring] using hbound

theorem alternatingFromRight_le_sum (f : ℕ → ℝ) (s : ℕ)
    (hf : ∀ j < s, 0 ≤ f j) : alternatingFromRight f s ≤ ∑ j ∈ range s, f j := by
  apply sum_le_sum
  intro j hj
  have hsign : (-1 : ℝ) ^ (s - 1 - j) ≤ 1 :=
    (le_abs_self _).trans (abs_neg_one_pow _).le
  simpa only [one_mul] using mul_le_mul_of_nonneg_right hsign (hf j (mem_range.mp hj))

def quarterErrorIntegral (s : ℕ) (z : ℝ) : ℝ :=
  (1 / Real.pi) * alternatingFromRight (fun j => cutIntegral s j 1 z) s

theorem quarterErrorIntegral_pos (s : ℕ) (hs : 1 ≤ s) (z : ℝ)
    (hz : (4 * (s : ℝ)) ^ 2 < z) : 0 < quarterErrorIntegral s z :=
  mul_pos (one_div_pos.mpr Real.pi_pos) (alternating_cutIntegral_pos s 1 hs z hz)

theorem quarterErrorIntegral_strictAnti (s : ℕ) (hs : 1 ≤ s) (z w : ℝ)
    (hz : (4 * (s : ℝ)) ^ 2 < z) (hzw : z < w) :
    quarterErrorIntegral s w < quarterErrorIntegral s z :=
  mul_lt_mul_of_pos_left (alternating_cutIntegral_strictAnti s hs z w hz hzw)
    (one_div_pos.mpr Real.pi_pos)

theorem quarterErrorIntegral_le (s : ℕ) (hs : 1 ≤ s) (z : ℝ)
    (hz : (4 * (s : ℝ)) ^ 2 < z) :
    quarterErrorIntegral s z ≤ (4 * (s : ℝ)) ^ (2 * s + 2) /
      (z - (4 * (s : ℝ)) ^ 2) := by
  have halt := alternating_cutIntegral_pos s 1 hs z hz
  have hpi : 1 / Real.pi ≤ (1 : ℝ) := by
    apply (div_le_iff₀ Real.pi_pos).mpr
    linarith [Real.two_le_pi]
  calc
    _ ≤ alternatingFromRight (fun j => cutIntegral s j 1 z) s := by
      exact (mul_le_mul_of_nonneg_right hpi halt.le).trans_eq (one_mul _)
    _ ≤ ∑ j ∈ range s, cutIntegral s j 1 z :=
      alternatingFromRight_le_sum _ s (fun j hj => (cutIntegral_pos s j 1 hj z hz).le)
    _ ≤ ∑ _j ∈ range s,
        4 * (4 * (s : ℝ)) * (4 * (s : ℝ)) ^ (2 * s) /
          (z - (4 * (s : ℝ)) ^ 2) :=
      sum_le_sum (fun j hj => cutIntegral_le s j (mem_range.mp hj) z hz)
    _ = _ := by simp only [sum_const, card_range, nsmul_eq_mul]; rw [pow_add]; ring

end

end B686QuarterRunge

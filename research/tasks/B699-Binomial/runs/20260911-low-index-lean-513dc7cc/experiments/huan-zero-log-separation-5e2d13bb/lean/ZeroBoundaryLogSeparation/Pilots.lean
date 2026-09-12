import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».experiments.«huan-zero-log-separation-5e2d13bb».lean.ZeroBoundaryLogSeparation.BoxData
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».experiments.«huan-zero-log-boxes-5e2d13bb».Pilots

/-! Two concrete real-log consumers. Their only mathematical inputs are bounded
integer x and arbitrary integer y, with the zero pair retained explicitly in
the resonant case. No B699 noCommon or full-table claim is made here. -/
set_option autoImplicit false
set_option relaxedAutoImplicit false

namespace Math.B699.ZeroBoundaryLogSeparation
open Math.B699.ZeroBoundaryLogBoxes

theorem alpha23_log_bounds :
    (alpha23Lower : ℝ) ≤ Real.log 2 / Real.log 3 ∧
      Real.log 2 / Real.log 3 ≤ (alpha23Upper : ℝ) :=
  quotientBoxCheck_sound alpha23_box_check log_two_bounds log_three_bounds

theorem betaFive_log_bounds :
    (betaFiveLower : ℝ) ≤ Real.log 5 / Real.log 3 ∧
      Real.log 5 / Real.log 3 ≤ (betaFiveUpper : ℝ) :=
  quotientBoxCheck_sound betaFive_box_check log_five_bounds log_three_bounds

theorem half_lt_log_three : (1 : ℝ) / 2 < Real.log 3 := by
  have h : (1 : ℝ) / 2 < (logLower 3 : ℝ) := by exact_mod_cast half_lt_logThreeLower
  exact h.trans_le log_three_bounds.1

theorem pilot_five_distance (x y : ℤ) (hx : |x| ≤ (M0 : ℤ)) :
    (1 : ℝ) / 100 ≤ 9881527843552324 *
      |(x : ℝ) * (Real.log 2 / Real.log 3) - y + Real.log 5 / Real.log 3| :=
  pilot_nonresonant_abstract alpha23_log_bounds betaFive_log_bounds x y hx

theorem pilot_one_distance (x y : ℤ) (hx : |x| ≤ (M0 : ℤ))
    (hxy : ¬ (x = 0 ∧ y = 0)) :
    (1 : ℝ) / 2 < 9881527843552324 *
      |(x : ℝ) * (Real.log 2 / Real.log 3) - y| :=
  pilot_resonant_abstract alpha23_log_bounds x y hx hxy

theorem pilot_five_linear_form (x y : ℤ) (hx : |x| ≤ (M0 : ℤ)) :
    (1 : ℝ) / (200 * 9881527843552324) <
      |Real.log 5 + (x : ℝ) * Real.log 2 - (y : ℝ) * Real.log 3| := by
  have h := scaled_separation (by norm_num : (0 : ℝ) < 9881527843552324)
    half_lt_log_three (by norm_num : (0 : ℝ) < 1 / 100) (pilot_five_distance x y hx)
  have hq : Real.log 3 ≠ 0 := ne_of_gt (by linarith [half_lt_log_three])
  rw [normalized_form_eq x y hq] at h
  norm_num at h ⊢
  exact h

theorem pilot_one_linear_form (x y : ℤ) (hx : |x| ≤ (M0 : ℤ))
    (hxy : ¬ (x = 0 ∧ y = 0)) :
    (1 : ℝ) / (4 * 9881527843552324) <
      |(x : ℝ) * Real.log 2 - (y : ℝ) * Real.log 3| := by
  have h := scaled_separation (by norm_num : (0 : ℝ) < 9881527843552324)
    half_lt_log_three (by norm_num : (0 : ℝ) < 1 / 2) (pilot_one_distance x y hx hxy).le
  have hq : Real.log 3 ≠ 0 := ne_of_gt (by linarith [half_lt_log_three])
  have hform := normalized_form_eq (lp := Real.log 2) (lq := Real.log 3) (lb := 0) x y hq
  simp only [zero_div, add_zero, zero_add] at hform
  rw [hform] at h
  norm_num at h ⊢
  exact h

end Math.B699.ZeroBoundaryLogSeparation

#check (Math.B699.ZeroBoundaryLogSeparation.alpha23_log_bounds :
  (Math.B699.ZeroBoundaryLogSeparation.alpha23Lower : ℝ) ≤ Real.log 2 / Real.log 3 ∧
    Real.log 2 / Real.log 3 ≤ (Math.B699.ZeroBoundaryLogSeparation.alpha23Upper : ℝ))
#check (Math.B699.ZeroBoundaryLogSeparation.betaFive_log_bounds :
  (Math.B699.ZeroBoundaryLogSeparation.betaFiveLower : ℝ) ≤ Real.log 5 / Real.log 3 ∧
    Real.log 5 / Real.log 3 ≤ (Math.B699.ZeroBoundaryLogSeparation.betaFiveUpper : ℝ))
#check (Math.B699.ZeroBoundaryLogSeparation.half_lt_log_three : (1 : ℝ) / 2 < Real.log 3)
#check (Math.B699.ZeroBoundaryLogSeparation.pilot_five_distance :
  ∀ x y : ℤ, |x| ≤ (Math.B699.ZeroBoundaryLogSeparation.M0 : ℤ) →
    (1 : ℝ) / 100 ≤ 9881527843552324 *
      |(x : ℝ) * (Real.log 2 / Real.log 3) - y + Real.log 5 / Real.log 3|)
#check (Math.B699.ZeroBoundaryLogSeparation.pilot_one_distance :
  ∀ x y : ℤ, |x| ≤ (Math.B699.ZeroBoundaryLogSeparation.M0 : ℤ) →
    ¬ (x = 0 ∧ y = 0) → (1 : ℝ) / 2 < 9881527843552324 *
      |(x : ℝ) * (Real.log 2 / Real.log 3) - y|)
#check (Math.B699.ZeroBoundaryLogSeparation.pilot_five_linear_form :
  ∀ x y : ℤ, |x| ≤ (Math.B699.ZeroBoundaryLogSeparation.M0 : ℤ) →
    (1 : ℝ) / (200 * 9881527843552324) <
      |Real.log 5 + (x : ℝ) * Real.log 2 - (y : ℝ) * Real.log 3|)
#check (Math.B699.ZeroBoundaryLogSeparation.pilot_one_linear_form :
  ∀ x y : ℤ, |x| ≤ (Math.B699.ZeroBoundaryLogSeparation.M0 : ℤ) →
    ¬ (x = 0 ∧ y = 0) → (1 : ℝ) / (4 * 9881527843552324) <
      |(x : ℝ) * Real.log 2 - (y : ℝ) * Real.log 3|)
#print axioms Math.B699.ZeroBoundaryLogSeparation.alpha23_log_bounds
#print axioms Math.B699.ZeroBoundaryLogSeparation.betaFive_log_bounds
#print axioms Math.B699.ZeroBoundaryLogSeparation.half_lt_log_three
#print axioms Math.B699.ZeroBoundaryLogSeparation.pilot_five_distance
#print axioms Math.B699.ZeroBoundaryLogSeparation.pilot_one_distance
#print axioms Math.B699.ZeroBoundaryLogSeparation.pilot_five_linear_form
#print axioms Math.B699.ZeroBoundaryLogSeparation.pilot_one_linear_form
import research.tasks.«B686-Four».round9.main.PhaseGeometry
import Mathlib.MeasureTheory.Integral.IntervalIntegral.IntegrationByParts
import Mathlib.Analysis.SpecialFunctions.Log.Basic
import Mathlib.Analysis.Calculus.Deriv.Inv

/-! Reciprocal substitution and the logarithmic sampling weight.
This module does not import or postulate a prime equidistribution theorem. -/

namespace B686Round9

open Set MeasureTheory intervalIntegral

theorem reciprocal_substitution (g : ℝ → ℝ) (a b d : ℝ)
    (ha : 0 < a) (hab : a ≤ b) (hd : 0 < d) :
    (∫ x in a..b, g (d/x) * (d/x^2)) = ∫ t in d/b..d/a, g t := by
  have hxpos : ∀ x ∈ uIcc a b, 0 < x := by
    intro x hx
    rw [uIcc_of_le hab] at hx
    exact ha.trans_le hx.1
  have hc : ContinuousOn (fun x : ℝ => d/x) (uIcc a b) :=
    continuousOn_const.div continuousOn_id (fun x hx => (hxpos x hx).ne')
  have hderiv : ∀ x ∈ Ioo (min a b) (max a b),
      HasDerivAt (fun x : ℝ => d/x) (-d/x^2) x := by
    intro x hx
    have hx0 : x ≠ 0 := ne_of_gt (ha.trans (by simpa [min_eq_left hab] using hx.1))
    simpa only [mul_one, zero_mul, zero_sub] using!
      (hasDerivAt_const x d).fun_div (hasDerivAt_id x) hx0
  have hsign : ∀ x ∈ Ioo (min a b) (max a b), -d/x^2 ≤ 0 := by
    intro x _
    exact div_nonpos_of_nonpos_of_nonneg (by linarith) (sq_nonneg x)
  have h := integral_comp_mul_deriv_of_deriv_nonpos (g := g) hc hderiv hsign
  simp only [Function.comp_def, neg_div, mul_neg, intervalIntegral.integral_neg] at h
  have hs := integral_symm (a := d/a) (b := d/b) (f := g) (μ := volume)
  linarith

theorem reciprocal_scale_bounds (D k x : ℝ) (hD : 0 < D) (hk : 0 < k)
    (hx : x ∈ Icc (D/4) (D/2)) :
    2*k ≤ D*k/x ∧ D*k/x ≤ 4*k := by
  have hx0 : 0 < x := by linarith [hx.1]
  constructor
  · apply (le_div_iff₀ hx0).mpr
    nlinarith [mul_le_mul_of_nonneg_right hx.2 hk.le]
  · apply (div_le_iff₀ hx0).mpr
    nlinarith [mul_le_mul_of_nonneg_right hx.1 hk.le]

theorem logarithmic_weight_lower (D k x : ℝ) (hD : 0 < D) (hk : 2 ≤ k)
    (hx : x ∈ Icc (D/4) (D/2)) :
    4*k/(D*Real.log (4*k)) ≤ D*k/(x^2*Real.log (D*k/x)) := by
  have hk0 : 0 < k := by linarith
  have hx0 : 0 < x := by linarith [hx.1]
  have ht := reciprocal_scale_bounds D k x hD hk0 hx
  have ht1 : 1 < D*k/x := by linarith [ht.1]
  have hlog0 : 0 < Real.log (D*k/x) := Real.log_pos ht1
  have hlog4 : 0 < Real.log (4*k) := Real.log_pos (by linarith)
  have hlogle : Real.log (D*k/x) ≤ Real.log (4*k) :=
    Real.log_le_log (by linarith) ht.2
  have hscale : 4*k/D ≤ D*k/x^2 := by
    apply (div_le_div_iff₀ hD (sq_pos_of_pos hx0)).mpr
    have hs : 4*x^2 ≤ D^2 := by nlinarith [hx.2]
    nlinarith [mul_le_mul_of_nonneg_right hs hk0.le]
  calc
    4*k/(D*Real.log (4*k)) = (4*k/D)/Real.log (4*k) := by ring
    _ ≤ (D*k/x^2)/Real.log (4*k) := div_le_div_of_nonneg_right hscale hlog4.le
    _ ≤ (D*k/x^2)/Real.log (D*k/x) :=
      div_le_div_of_nonneg_left (by positivity) hlog0 hlogle
    _ = D*k/(x^2*Real.log (D*k/x)) := by ring

theorem logarithmic_weight_continuousOn (D k : ℝ) (hD : 0 < D) (hk : 2 ≤ k) :
    ContinuousOn (fun x => D*k/(x^2*Real.log (D*k/x))) (Icc (D/4) (D/2)) := by
  intro x hx
  have hx0 : x ≠ 0 := ne_of_gt (by linarith [hx.1])
  have hk0 : 0 < k := by linarith
  have ht := reciprocal_scale_bounds D k x hD hk0 hx
  have ht1 : 1 < D*k/x := by linarith [ht.1]
  have ht0 : D*k/x ≠ 0 := ne_of_gt (by linarith)
  have hlog0 : Real.log (D*k/x) ≠ 0 := (Real.log_pos ht1).ne'
  have hc : ContinuousAt (fun x : ℝ => D*k/x) x :=
    continuousAt_const.div continuousAt_id hx0
  exact (continuousAt_const.div
    ((continuousAt_id.pow 2).mul ((Real.continuousAt_log ht0).comp hc))
    (mul_ne_zero (pow_ne_zero 2 hx0) hlog0)).continuousWithinAt

theorem weighted_phase_integral_lower (W : ℝ → ℝ → ℝ)
    (hW0 : ∀ u v, 0 ≤ W u v) (hW : HasMismatchPlateaus W)
    (hWc : Continuous (fun z : ℝ × ℝ => W z.1 z.2))
    (D L k : ℝ) (hD : 1 ≤ D) (hL : 400 ≤ L) (hk : 2 ≤ k) :
    k/(160*Real.log (4*k)) ≤
      ∫ x in D/4..D/2, W (L*x) ((L+1)*x) * (D*k/(x^2*Real.log (D*k/x))) := by
  have hD0 : 0 < D := by linarith
  have hk0 : 0 < k := by linarith
  have hab : D/4 ≤ D/2 := by linarith
  have hFc : Continuous (fun x => W (L*x) ((L+1)*x)) :=
    hWc.comp ((continuous_const.mul continuous_id).prodMk (continuous_const.mul continuous_id))
  have hweightc := logarithmic_weight_continuousOn D k hD0 hk
  have hlog0 : 0 < Real.log (4*k) := Real.log_pos (by linarith)
  let c : ℝ := 4*k/(D*Real.log (4*k))
  have hc0 : 0 ≤ c := by dsimp [c]; positivity
  have hmono : (∫ x in D/4..D/2, W (L*x) ((L+1)*x)*c) ≤
      ∫ x in D/4..D/2, W (L*x) ((L+1)*x)*(D*k/(x^2*Real.log (D*k/x))) := by
    apply integral_mono_on hab (hFc.mul continuous_const |>.intervalIntegrable _ _)
      ((hFc.continuousOn.mul hweightc).intervalIntegrable_of_Icc hab)
    intro x hx
    exact mul_le_mul_of_nonneg_left (logarithmic_weight_lower D k x hD0 hk hx) (hW0 _ _)
  rw [intervalIntegral.integral_mul_const] at hmono
  have hphase := phase_integral_lower W hW0 hW D L hD hL hFc.intervalIntegrable
  have hmain := (mul_le_mul_of_nonneg_right hphase hc0).trans hmono
  have heq : D/640*c = k/(160*Real.log (4*k)) := by
    dsimp [c]
    field_simp
    ring
  rw [heq] at hmain
  exact hmain

theorem sampling_integral_substitution (W : ℝ → ℝ → ℝ) (D L k : ℝ)
    (hD : 0 < D) (hk : 0 < k) :
    (∫ t in 2*k..4*k, W (L*(D*k)/t) ((L+1)*(D*k)/t) / Real.log t) =
      ∫ x in D/4..D/2, W (L*x) ((L+1)*x) * (D*k/(x^2*Real.log (D*k/x))) := by
  let g : ℝ → ℝ := fun t => W (L*(D*k)/t) ((L+1)*(D*k)/t) / Real.log t
  have h := reciprocal_substitution g (D/4) (D/2) (D*k)
    (by positivity) (by linarith) (by positivity)
  have hlo : D*k/(D/2) = 2*k := by field_simp
  have hhi : D*k/(D/4) = 4*k := by field_simp
  rw [hlo, hhi] at h
  rw [← h]
  apply integral_congr_Ioo_of_le (by linarith : D/4 ≤ D/2)
  intro x hx
  have hx0 : x ≠ 0 := ne_of_gt (by linarith [hx.1])
  have hd0 : D*k ≠ 0 := mul_ne_zero hD.ne' hk.ne'
  have hphase (a : ℝ) : a*(D*k)/(D*k/x) = a*x := by field_simp
  dsimp [g]
  rw [hphase L, hphase (L+1)]
  ring

/-- The actual continuous main term in the published sampling theorem.
The smooth cutoff and prime sampling theorem are not postulated here. -/
theorem sampling_integral_lower (W : ℝ → ℝ → ℝ)
    (hW0 : ∀ u v, 0 ≤ W u v) (hW : HasMismatchPlateaus W)
    (hWc : Continuous (fun z : ℝ × ℝ => W z.1 z.2))
    (D L k : ℝ) (hD : 1 ≤ D) (hL : 400 ≤ L) (hk : 2 ≤ k) :
    k/(160*Real.log (4*k)) ≤
      ∫ t in 2*k..4*k, W (L*(D*k)/t) ((L+1)*(D*k)/t) / Real.log t := by
  rw [sampling_integral_substitution W D L k (by linarith) (by linarith)]
  exact weighted_phase_integral_lower W hW0 hW hWc D L k hD hL hk

/-- info: 'B686Round9.reciprocal_substitution' depends on axioms: [propext, Classical.choice, Quot.sound] -/
#guard_msgs in
#print axioms reciprocal_substitution
/-- info: 'B686Round9.logarithmic_weight_lower' depends on axioms: [propext, Classical.choice, Quot.sound] -/
#guard_msgs in
#print axioms logarithmic_weight_lower
/-- info: 'B686Round9.weighted_phase_integral_lower' depends on axioms: [propext, Classical.choice, Quot.sound] -/
#guard_msgs in
#print axioms weighted_phase_integral_lower
/-- info: 'B686Round9.sampling_integral_substitution' depends on axioms: [propext, Classical.choice, Quot.sound] -/
#guard_msgs in
#print axioms sampling_integral_substitution
/-- info: 'B686Round9.sampling_integral_lower' depends on axioms: [propext, Classical.choice, Quot.sound] -/
#guard_msgs in
#print axioms sampling_integral_lower

end B686Round9

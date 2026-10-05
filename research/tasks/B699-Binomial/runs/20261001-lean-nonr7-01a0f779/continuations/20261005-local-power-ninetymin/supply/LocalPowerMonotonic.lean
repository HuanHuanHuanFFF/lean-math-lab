module
public import Mathlib.Analysis.SpecialFunctions.Log.Monotone
public import Mathlib.Analysis.Complex.ExponentialBounds
public import Mathlib.Tactic.FieldSimp
public import Mathlib.Tactic.Ring
public import Mathlib.Tactic.NormNum
public import Mathlib.Tactic.Linarith
public import Mathlib.Tactic.Positivity
set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option Elab.async false
@[expose] public section
namespace B699LocalPowerMonotonic20261005

/-- The fixed multiplicative shift preserves the useful log/sqrt monotonicity. -/
theorem log_ratio_le {A x : ℝ} (hA : 16 ≤ A) (hx : A ≤ x) :
    Real.log (x + x / 4095) / Real.sqrt x ≤
      Real.log (A + A / 4095) / Real.sqrt A := by
  let q : ℝ := 1 + 1 / 4095
  have hq : 0 < q := by norm_num [q]
  have hq1 : 1 ≤ q := by norm_num [q]
  have hA0 : 0 < A := by linarith
  have hx0 : 0 < x := by linarith
  have hshift (t : ℝ) : t + t / 4095 = q * t := by dsimp [q]; ring
  have hqA0 : 0 < q * A := mul_pos hq hA0
  have hqA : (2 : ℝ) ^ 4 ≤ q * A := by
    have ht := mul_le_mul_of_nonneg_right hq1 hA0.le
    norm_num at *
    linarith
  have hLA := Real.log_le_log (by norm_num : (0 : ℝ) < 2 ^ 4) hqA
  rw [Real.log_pow] at hLA
  norm_num only at hLA
  have hlogA : (2 : ℝ) ≤ Real.log (q * A) := by
    norm_num [q] at hLA ⊢
    linarith [Real.log_two_gt_d9]
  have hdomainA : Real.exp 2 ≤ q * A := (Real.le_log_iff_exp_le hqA0).mp hlogA
  have hqAx : q * A ≤ q * x := mul_le_mul_of_nonneg_left hx hq.le
  have hdomainX : Real.exp 2 ≤ q * x := hdomainA.trans hqAx
  have hm := Real.log_div_sqrt_antitoneOn hdomainA hdomainX hqAx
  change Real.log (q * x) / Real.sqrt (q * x) ≤
    Real.log (q * A) / Real.sqrt (q * A) at hm
  have hsA : 0 < Real.sqrt A := Real.sqrt_pos.mpr hA0
  have hsX : 0 < Real.sqrt x := Real.sqrt_pos.mpr hx0
  have hsQ : 0 < Real.sqrt q := Real.sqrt_pos.mpr hq
  rw [Real.sqrt_mul hq.le x, Real.sqrt_mul hq.le A] at hm
  have hcross := (div_le_div_iff₀ (mul_pos hsQ hsX) (mul_pos hsQ hsA)).mp hm
  have hcancel : Real.sqrt q * (Real.log (q * x) * Real.sqrt A) ≤
      Real.sqrt q * (Real.log (q * A) * Real.sqrt x) := by
    calc
      _ = Real.log (q * x) * (Real.sqrt q * Real.sqrt A) := by ring
      _ ≤ Real.log (q * A) * (Real.sqrt q * Real.sqrt x) := hcross
      _ = _ := by ring
  rw [hshift x, hshift A]
  have hcancel' : (Real.log (q * x) * Real.sqrt A) * Real.sqrt q ≤
      (Real.log (q * A) * Real.sqrt x) * Real.sqrt q := by
    simpa only [mul_comm] using hcancel
  exact (div_le_div_iff₀ hsX hsA).mpr ((mul_le_mul_iff_left₀ hsQ).mp hcancel')

theorem log_square_ratio_le {A x : ℝ} (hA : 16 ≤ A) (hx : A ≤ x) :
    Real.log (x + x / 4095) ^ 2 / x ≤
      Real.log (A + A / 4095) ^ 2 / A := by
  have hA0 : 0 ≤ A := by linarith
  have hx0 : 0 ≤ x := by linarith
  have hlogX : 0 ≤ Real.log (x + x / 4095) :=
    Real.log_nonneg (by have hd := div_nonneg hx0 (by norm_num : (0 : ℝ) ≤ 4095); linarith)
  have hlogA : 0 ≤ Real.log (A + A / 4095) :=
    Real.log_nonneg (by have hd := div_nonneg hA0 (by norm_num : (0 : ℝ) ≤ 4095); linarith)
  have hr := log_ratio_le hA hx
  have hpX : 0 ≤ Real.log (x + x / 4095) / Real.sqrt x :=
    div_nonneg hlogX (Real.sqrt_nonneg x)
  have hpA : 0 ≤ Real.log (A + A / 4095) / Real.sqrt A :=
    div_nonneg hlogA (Real.sqrt_nonneg A)
  have hs : (Real.log (x + x / 4095) / Real.sqrt x) ^ 2 ≤
      (Real.log (A + A / 4095) / Real.sqrt A) ^ 2 := by nlinarith
  simpa only [div_pow, Real.sq_sqrt hx0, Real.sq_sqrt hA0] using hs

end B699LocalPowerMonotonic20261005
#print axioms B699LocalPowerMonotonic20261005.log_ratio_le
#print axioms B699LocalPowerMonotonic20261005.log_square_ratio_le

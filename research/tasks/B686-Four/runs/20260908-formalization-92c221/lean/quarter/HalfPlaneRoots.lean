import research.tasks.«B686-Four».runs.«20260908-formalization-92c221».lean.quarter.SlitBranch
import Mathlib.Analysis.Calculus.Deriv.Mul

/-! Continuous boundary branches for the two-rectangle Cauchy argument. -/

namespace B686QuarterRunge

open Finset Complex

noncomputable section

def upperSqrtFormula (z : ℂ) : ℂ :=
  (Real.sqrt ((‖z‖ + z.re) / 2) : ℂ) +
    (Real.sqrt ((‖z‖ - z.re) / 2) : ℂ) * Complex.I

theorem upperSqrtFormula_continuous : Continuous upperSqrtFormula := by
  unfold upperSqrtFormula
  fun_prop

theorem sqrt_eq_upperSqrtFormula (z : ℂ) (hz : 0 ≤ z.im) :
    Complex.sqrt z = upperSqrtFormula z := by
  rw [Complex.sqrt_eq_real_add_ite, if_pos hz, one_mul]
  rfl

theorem sqrt_continuousOn_upper :
    ContinuousOn Complex.sqrt {z : ℂ | 0 ≤ z.im} := by
  apply upperSqrtFormula_continuous.continuousOn.congr
  intro z hz
  exact sqrt_eq_upperSqrtFormula z hz

def upperProduct (a : ℕ → ℝ) (r : ℕ) (z : ℂ) : ℂ :=
  ∏ i ∈ range r, Complex.sqrt (z - a i)

def lowerProduct (a : ℕ → ℝ) (s : ℕ) (z : ℂ) : ℂ :=
  (-1) ^ s * ∏ i ∈ range (2 * s), Complex.sqrt (a i - z)

theorem upperProduct_sq (a : ℕ → ℝ) (r : ℕ) (z : ℂ) :
    upperProduct a r z ^ 2 = ∏ i ∈ range r, (z - a i) := by
  simp only [upperProduct, ← prod_pow, complex_sqrt_sq]

theorem lowerProduct_sq (a : ℕ → ℝ) (s : ℕ) (z : ℂ) :
    lowerProduct a s z ^ 2 = ∏ i ∈ range (2 * s), (z - a i) := by
  simp only [lowerProduct, mul_pow, ← prod_pow, complex_sqrt_sq]
  rw [← pow_mul, mul_comm s 2, pow_mul]
  norm_num only [neg_one_sq, one_pow, one_mul]
  calc
    _ = ∏ i ∈ range (2 * s), -(z - a i) := by congr 1; ext i; ring
    _ = _ := by rw [prod_neg, card_range, pow_mul, neg_one_sq, one_pow, one_mul]

theorem upperProduct_continuousOn (a : ℕ → ℝ) (r : ℕ) :
    ContinuousOn (upperProduct a r) {z : ℂ | 0 ≤ z.im} := by
  apply continuousOn_finsetProd
  intro i hi
  apply sqrt_continuousOn_upper.comp (continuous_id.sub continuous_const).continuousOn
  intro z hz
  simpa using hz

theorem lowerProduct_continuousOn (a : ℕ → ℝ) (s : ℕ) :
    ContinuousOn (lowerProduct a s) {z : ℂ | z.im ≤ 0} := by
  apply continuousOn_const.mul
  apply continuousOn_finsetProd
  intro i hi
  apply sqrt_continuousOn_upper.comp (continuous_const.sub continuous_id).continuousOn
  intro z hz
  simpa using hz

theorem upperProduct_differentiableAt (a : ℕ → ℝ) (r : ℕ) (z : ℂ) (hz : 0 < z.im) :
    DifferentiableAt ℂ (upperProduct a r) z := by
  apply DifferentiableAt.fun_finsetProd
  intro i hi
  have hsqrt : DifferentiableAt ℂ Complex.sqrt (z - a i) :=
    Complex.differentiableAt_sqrt (Or.inr (by simpa using hz.ne'))
  exact hsqrt.comp z (differentiableAt_id.sub_const _)

theorem lowerProduct_differentiableAt (a : ℕ → ℝ) (s : ℕ) (z : ℂ) (hz : z.im < 0) :
    DifferentiableAt ℂ (lowerProduct a s) z := by
  apply (differentiableAt_const ((-1 : ℂ) ^ s)).mul
  apply DifferentiableAt.fun_finsetProd
  intro i hi
  have hsqrt : DifferentiableAt ℂ Complex.sqrt (a i - z) :=
    Complex.differentiableAt_sqrt (Or.inr (by simpa using hz.ne))
  exact hsqrt.comp z ((differentiableAt_const (a i : ℂ)).sub differentiableAt_id)

theorem sqrt_real_sign (t : ℝ) :
    Complex.sqrt (t : ℂ) = (if t < 0 then Complex.I else 1) * (Real.sqrt |t| : ℂ) := by
  rw [Complex.sqrt_eq_real_add_ite]
  simp only [Complex.norm_real, Real.norm_eq_abs, Complex.ofReal_re, Complex.ofReal_im,
    le_refl, if_true, one_mul]
  by_cases ht : t < 0
  · rw [if_pos ht, abs_of_neg ht]
    have hzero : (-t + t) / 2 = 0 := by ring
    have hval : (-t - t) / 2 = -t := by ring
    rw [hzero, hval]
    simp [mul_comm]
  · rw [if_neg ht, abs_of_nonneg (le_of_not_gt ht)]
    have hval : (t + t) / 2 = t := by ring
    rw [hval]
    simp

def rootDensity (a : ℕ → ℝ) (r : ℕ) (t : ℝ) : ℝ :=
  Real.sqrt |∏ i ∈ range r, (t - a i)|

theorem upperProduct_real (a : ℕ → ℝ) (r : ℕ) (t : ℝ) :
    upperProduct a r (t : ℂ) =
      Complex.I ^ ((range r).filter (fun i => t < a i)).card * (rootDensity a r t : ℂ) := by
  simp only [upperProduct, ← Complex.ofReal_sub, sqrt_real_sign, sub_neg]
  rw [prod_mul_distrib, prod_ite]
  simp only [prod_const, one_pow, mul_one]
  congr 1
  rw [← Complex.ofReal_prod]
  congr 1
  rw [rootDensity]
  have habs : |∏ i ∈ range r, (t - a i)| = ∏ i ∈ range r, |t - a i| := by
    induction r with
    | zero => simp
    | succ r ih => rw [prod_range_succ, prod_range_succ, abs_mul, ih]
  rw [habs, Real.sqrt_prod (range r) (fun i hi => abs_nonneg (t - a i))]

theorem sqrt_neg_real_eq_I_conj (t : ℝ) :
    Complex.sqrt (-t : ℂ) = Complex.I * (starRingEnd ℂ) (Complex.sqrt (t : ℂ)) := by
  rw [← Complex.ofReal_neg, sqrt_real_sign, sqrt_real_sign]
  rcases lt_trichotomy t 0 with ht | ht | ht
  · simp [ht, show ¬-t < 0 by linarith, abs_neg, ← mul_assoc]
  · subst t
    simp
  · simp [ht.not_gt, show -t < 0 by linarith, abs_neg]

theorem lowerProduct_real_eq_conj (a : ℕ → ℝ) (s : ℕ) (t : ℝ) :
    lowerProduct a s (t : ℂ) = (starRingEnd ℂ) (upperProduct a (2 * s) (t : ℂ)) := by
  simp only [lowerProduct, upperProduct, ← Complex.ofReal_sub]
  have hfactor (i : ℕ) : Complex.sqrt ((a i - t : ℝ) : ℂ) =
      Complex.I * (starRingEnd ℂ) (Complex.sqrt ((t - a i : ℝ) : ℂ)) := by
    simpa only [neg_sub, Complex.ofReal_sub, Complex.ofReal_neg] using
      sqrt_neg_real_eq_I_conj (t - a i)
  simp only [hfactor, prod_mul_distrib, prod_const, card_range, ← map_prod]
  rw [pow_mul, Complex.I_sq, ← mul_assoc, ← pow_add]
  rw [show s + s = 2 * s by omega, pow_mul]
  norm_num

end

end B686QuarterRunge

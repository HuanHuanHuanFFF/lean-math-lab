import research.tasks.«B686-Four».runs.«20260908-formalization-92c221».lean.quarter.JumpIntegral
import research.tasks.«B686-Four».runs.«20260908-formalization-92c221».lean.quarter.IntegralErrorBounds
import research.tasks.«B686-Four».runs.«20260908-formalization-92c221».lean.centered.CenteredRunge

/-! The Cauchy representation evaluated at the integer polynomial and the
original centered radicand. -/

namespace B686QuarterRunge

open Finset Polynomial B686CenteredRunge

noncomputable section

theorem upperProduct_right (s : ℕ) (z : ℝ) (hz : rootLocations (2 * s) ≤ z) :
    upperProduct rootLocations (2 * s) (z : ℂ) =
      (rootDensity rootLocations (2 * s) z : ℂ) := by
  have hfilter : (range (2 * s)).filter (fun i => z < rootLocations i) = ∅ := by
    apply filter_eq_empty_iff.mpr
    intro i hi hzi
    have hh := rootLocations_strictMono (mem_range.mp hi)
    linarith
  rw [upperProduct_real, hfilter]
  simp

theorem quarterPolynomial_eval_eq_density_add_error (s : ℕ) (hs : 1 ≤ s) (t : ℤ)
    (ht : rootLocations (2 * s) < (t : ℝ)) :
    (((quarterPolynomial s).eval t : ℤ) : ℝ) =
      rootDensity rootLocations (2 * s) (t : ℝ) + quarterErrorIntegral s (t : ℝ) := by
  have he := upperRemainder_eq_alternating_integral s hs (t : ℝ) ht
  rw [upperRemainder, upperProduct_right s (t : ℝ) ht.le] at he
  have hq : (complexQuarterPolynomial s).eval ((t : ℝ) : ℂ) =
      (((quarterPolynomial s).eval t : ℤ) : ℂ) := by
    simpa only [complexQuarterPolynomial, Complex.ofReal_intCast, Int.cast_id,
      Int.coe_castRingHom] using
      eval_intCast_map (Int.castRingHom ℂ) (quarterPolynomial s) t
  rw [hq] at he
  have hre := congrArg Complex.re he
  simp only [Complex.sub_re, Complex.neg_re, Complex.ofReal_re, Complex.intCast_re] at hre
  change _ = _ + (1 / Real.pi) * alternatingFromRight (fun j => cutIntegral s j 1 (t : ℝ)) s
  linarith

theorem rootDensity_centered (s : ℕ) (x : ℤ) :
    rootDensity rootLocations (2 * s) ((x : ℝ) ^ 2) =
      Real.sqrt |(centeredProduct (2 * s) x : ℝ)| := by
  simp [rootDensity, rootLocations, centeredProduct]

theorem rootDensity_scale_four (s : ℕ) (x y : ℤ)
    (heq : centeredProduct (2 * s) y = 4 * centeredProduct (2 * s) x) :
    rootDensity rootLocations (2 * s) ((y : ℝ) ^ 2) =
      2 * rootDensity rootLocations (2 * s) ((x : ℝ) ^ 2) := by
  rw [rootDensity_centered, rootDensity_centered, heq]
  push_cast
  rw [abs_mul, Real.sqrt_mul (abs_nonneg (4 : ℝ))]
  have hfour : Real.sqrt (4 : ℝ) = 2 := by
    apply (Real.sqrt_eq_iff_eq_sq (by norm_num) (by norm_num)).mpr
    norm_num
  rw [abs_of_pos (by norm_num : (0 : ℝ) < 4), hfour]

end

end B686QuarterRunge

import Mathlib.NumberTheory.Bertrand
open Real
namespace SylvesterCompatibilityProbe
noncomputable def scaledPowerLog (x y : ℝ) : ℝ :=
  log x + √y * log y - x * log (y / (2 * x))

lemma hasDerivAt_scaledPowerLog {x y : ℝ} (hx : 0 < x) (hy : 0 < y) :
    HasDerivAt (fun y => scaledPowerLog x y)
      (((2 + log y) / (2 * √y)) - x / y) y := by
  have hne2x : 2 * x ≠ 0 := by positivity
  have hlog : HasDerivAt (fun t : ℝ => log t) (1 / y) y := by
    simpa [one_div] using hasDerivAt_log hy.ne'
  have hsqrt : HasDerivAt (fun t : ℝ => √t) (1 / (2 * √y)) y :=
    hasDerivAt_sqrt hy.ne'
  have hprod :
      HasDerivAt (fun t : ℝ => √t * log t)
        (√y * (1 / y) + (1 / (2 * √y)) * log y) y :=
    by convert! hsqrt.mul hlog using 1 <;> ring
  have hdiv :
      HasDerivAt (fun t : ℝ => t / (2 * x)) (1 / (2 * x)) y := by
    simpa using (hasDerivAt_id y).div_const (2 * x)
  have hlogdiv :
      HasDerivAt (fun t : ℝ => log (t / (2 * x))) (1 / y) y := by
    have hydiv : y / (2 * x) ≠ 0 := by positivity
    have hcomp := (hasDerivAt_log hydiv).comp y hdiv
    convert! hcomp using 1
    field_simp [hy.ne', hne2x]
  have hmain :
      HasDerivAt (fun t : ℝ => log x + √t * log t - x * log (t / (2 * x)))
        ((√y * (1 / y) + (1 / (2 * √y)) * log y) - x * (1 / y)) y :=
    by
      have hmain0 := ((hasDerivAt_const y (log x)).add hprod).sub
        ((hasDerivAt_const y x).mul hlogdiv)
      convert! hmain0 using 1
      ring
  convert! hmain using 1
  · field_simp [sqrt_sq_eq_abs, abs_of_pos (sqrt_pos_of_pos hy)]
    rw [sq_sqrt hy.le]
    ring

end SylvesterCompatibilityProbe

import Mathlib.Analysis.SpecialFunctions.Log.Basic
import Mathlib.Tactic.FieldSimp
import Mathlib.Tactic.Linarith
import Mathlib.Tactic.Ring

/-! Elementary estimates used by the actual positive-window bridge.
Both signs are handled; no derivative theorem or approximate real evaluation is used. -/
set_option autoImplicit false
set_option relaxedAutoImplicit false

namespace Math.B699.ZeroBoundaryWindowLog

theorem log_sub_log_le_div {u v : ℝ} (hu : 0 < u) (hv : 0 < v) :
    Real.log u - Real.log v ≤ (u - v) / v := by
  calc
    Real.log u - Real.log v = Real.log (u / v) :=
      (Real.log_div (ne_of_gt hu) (ne_of_gt hv)).symm
    _ ≤ u / v - 1 := Real.log_le_sub_one_of_pos (div_pos hu hv)
    _ = (u - v) / v := by field_simp [ne_of_gt hv] <;> ring

/-- Both inputs lie above the same positive lower endpoint, and their distance is bounded. -/
theorem abs_log_sub_log_le_of_lower_bound {u v lower D : ℝ}
    (hu : 0 < u) (hv : 0 < v) (hlower : 0 < lower)
    (hlu : lower ≤ u) (hlv : lower ≤ v) (hdiff : |u - v| ≤ D) :
    |Real.log u - Real.log v| ≤ D / lower := by
  have hD : 0 ≤ D := (abs_nonneg _).trans hdiff
  have hdiffuv : u - v ≤ D := (le_abs_self _).trans hdiff
  have hdiffvu : v - u ≤ D := by
    have h := (neg_le_abs (u - v)).trans hdiff
    linarith
  have hquotuv : (u - v) / v ≤ D / lower := by
    apply (div_le_div_iff₀ hv hlower).mpr
    exact (mul_le_mul_of_nonneg_right hdiffuv hlower.le).trans
      (mul_le_mul_of_nonneg_left hlv hD)
  have hquotvu : (v - u) / u ≤ D / lower := by
    apply (div_le_div_iff₀ hu hlower).mpr
    exact (mul_le_mul_of_nonneg_right hdiffvu hlower.le).trans
      (mul_le_mul_of_nonneg_left hlu hD)
  have hupper := (log_sub_log_le_div hu hv).trans hquotuv
  have hlowerBound := (log_sub_log_le_div hv hu).trans hquotvu
  exact abs_le.mpr ⟨by linarith, hupper⟩

end Math.B699.ZeroBoundaryWindowLog

#check (Math.B699.ZeroBoundaryWindowLog.log_sub_log_le_div :
  ∀ {u v : ℝ}, 0 < u → 0 < v → Real.log u - Real.log v ≤ (u - v) / v)
#check (Math.B699.ZeroBoundaryWindowLog.abs_log_sub_log_le_of_lower_bound :
  ∀ {u v lower D : ℝ}, 0 < u → 0 < v → 0 < lower → lower ≤ u → lower ≤ v →
    |u - v| ≤ D → |Real.log u - Real.log v| ≤ D / lower)
#print axioms Math.B699.ZeroBoundaryWindowLog.log_sub_log_le_div
#print axioms Math.B699.ZeroBoundaryWindowLog.abs_log_sub_log_le_of_lower_bound
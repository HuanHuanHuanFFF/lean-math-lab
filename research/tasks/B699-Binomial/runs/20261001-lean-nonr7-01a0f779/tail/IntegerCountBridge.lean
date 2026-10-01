import research.tasks.«B699-Binomial».runs.«20261001-lean-nonr7-01a0f779».tail.ICAlgebra
import Mathlib.Analysis.SpecialFunctions.Log.Basic
import Mathlib.Tactic.Linarith
import Mathlib.Tactic.NormNum
import Mathlib.Tactic.FieldSimp
import Mathlib.Tactic.Ring
import Mathlib.Tactic.Positivity

/-!
Algebraic contradiction in Section 3 (IC) of the fixed prime-optimization
report. The normalization and logarithm bounds remain explicit inputs.
No integer sieve certificates or B699 cases are accepted by this file alone.
-/
set_option autoImplicit false
set_option relaxedAutoImplicit false

namespace B699TailIC

/-- The precise logarithmic error bound used by the count bridge. -/
theorem neg_log_one_sub_le {h : ℝ} (hh : h < 1) :
    -Real.log (1 - h) ≤ h / (1 - h) := by
  have hp : 0 < 1 - h := by linarith
  have hb := Real.log_le_sub_one_of_pos (inv_pos.mpr hp)
  rw [Real.log_inv] at hb
  have heq : (1 - h)⁻¹ - 1 = h / (1 - h) := by
    field_simp [ne_of_gt hp]
    ring
  rwa [heq] at hb

/-- Exact 4095 denominator; equality at the endpoint is harmless. -/
theorem neg_log_one_sub_le_4095 {h : ℝ} (hh : h ≤ 1 / 4096) :
    -Real.log (1 - h) ≤ 1 / 4095 := by
  have hlt : h < 1 := by linarith
  have hp : 0 < 1 - h := by linarith
  apply (neg_log_one_sub_le hlt).trans
  apply (div_le_iff₀ hp).mpr
  nlinarith

end B699TailIC

#check @B699TailIC.ic_real_obstruction
#print axioms B699TailIC.neg_log_one_sub_le
#print axioms B699TailIC.neg_log_one_sub_le_4095
#print axioms B699TailIC.ic_real_obstruction


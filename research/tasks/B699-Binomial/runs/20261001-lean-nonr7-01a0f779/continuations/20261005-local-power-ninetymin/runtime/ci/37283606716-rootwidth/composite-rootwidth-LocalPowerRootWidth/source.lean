module
public import Mathlib.Analysis.SpecialFunctions.Pow.Real
public import Mathlib.Algebra.Order.Ring.Pow
public import Mathlib.Tactic.FieldSimp
public import Mathlib.Tactic.Ring
public import Mathlib.Tactic.NormNum
public import Mathlib.Tactic.Linarith
public import Mathlib.Tactic.Positivity
public import Lean.Elab.Tactic.NormCast
set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option Elab.async false
@[expose] public section
namespace B699LocalPowerWidth20261005

theorem bernoulli_step {k : Nat} (hk : 2 ≤ k) :
    (1 + 1 / 4095 : ℝ) ≤ (1 + 1 / (4095 * (k : ℝ))) ^ k := by
  have hkR : (0 : ℝ) < (k : ℝ) := by exact_mod_cast (by omega : 0 < k)
  have hq : (0 : ℝ) ≤ 1 / (4095 * (k : ℝ)) := by positivity
  have h := one_add_mul_le_pow (by linarith : (-2 : ℝ) ≤ 1 / (4095 * (k : ℝ))) k
  have hmul : (k : ℝ) * (1 / (4095 * (k : ℝ))) = 1 / 4095 := by
    field_simp [ne_of_gt hkR]
    <;> ring
  simpa only [hmul] using h

theorem ratio_root_bound {k : Nat} (hk : 2 ≤ k) :
    (1 + 1 / 4095 : ℝ) ^ ((1 : ℝ) / k) ≤ 1 + 1 / (4095 * (k : ℝ)) := by
  have hkNe : k ≠ 0 := by omega
  have hkR : (0 : ℝ) < (k : ℝ) := by exact_mod_cast (by omega : 0 < k)
  have hbase : (0 : ℝ) ≤ 1 + 1 / (4095 * (k : ℝ)) := by positivity
  have h := Real.rpow_le_rpow (by positivity : (0 : ℝ) ≤ 1 + 1 / 4095)
    (bernoulli_step hk) (by positivity : (0 : ℝ) ≤ (k : ℝ)⁻¹)
  simpa only [one_div, Real.pow_rpow_inv_natCast hbase hkNe] using h

theorem local_root_width {x : ℝ} {k : Nat} (hx : 0 ≤ x) (hk : 2 ≤ k) :
    (x + x / 4095) ^ ((1 : ℝ) / k) - x ^ ((1 : ℝ) / k) ≤
      x ^ ((1 : ℝ) / k) / (4095 * (k : ℝ)) := by
  have hz : x + x / 4095 = x * (1 + 1 / 4095) := by ring
  have hm := mul_le_mul_of_nonneg_left (ratio_root_bound hk)
    (Real.rpow_nonneg hx ((1 : ℝ) / k))
  rw [hz, Real.mul_rpow hx (by positivity : (0 : ℝ) ≤ 1 + 1 / 4095)]
  calc
    x ^ ((1 : ℝ) / k) * (1 + 1 / 4095) ^ ((1 : ℝ) / k) - x ^ ((1 : ℝ) / k)
      ≤ x ^ ((1 : ℝ) / k) * (1 + 1 / (4095 * (k : ℝ))) - x ^ ((1 : ℝ) / k) :=
        sub_le_sub_right hm _
    _ = x ^ ((1 : ℝ) / k) / (4095 * (k : ℝ)) := by ring

end B699LocalPowerWidth20261005
#print axioms B699LocalPowerWidth20261005.bernoulli_step
#print axioms B699LocalPowerWidth20261005.ratio_root_bound
#print axioms B699LocalPowerWidth20261005.local_root_width

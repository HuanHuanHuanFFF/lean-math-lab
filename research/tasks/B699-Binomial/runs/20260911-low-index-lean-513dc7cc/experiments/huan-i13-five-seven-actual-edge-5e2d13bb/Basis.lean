import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I13FiveSevenEdge.Parameters
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.DiscreteSelector.ShortPowerBounds

/-! UNCOMPILED. Largest closed Nat basis is 2^1271, of 1272 bits. -/
set_option autoImplicit false
set_option relaxedAutoImplicit false
namespace Math.B699.I13FiveSevenEdge

set_option maxHeartbeats 1000000

theorem basis_five : (5 : ℕ) ^ 59 ≤ 2 ^ 137 := by decide
theorem basis_seven : (7 : ℕ) ^ 26 ≤ 2 ^ 73 := by decide
theorem basis_Z_lower : (2 : ℕ) ^ 397 ≤ indexBase ^ 5 := by decide
theorem basis_Z_upper : indexBase ^ 16 ≤ (2 : ℕ) ^ 1271 := by decide

theorem four_height : 4 * heightY0 = (2 : ℕ) ^ (65535 + 2) := by
  rw [heightY0, show (4 : ℕ) = 2 ^ 2 by decide, ← Nat.pow_add]
  congr 1
  omega

theorem previous_at_min : indexBase ^ (minIndex - 1) ≤ 4 * heightY0 := by
  rw [four_height]
  apply (Nat.pow_le_pow_iff_left (by decide : (16 : ℕ) ≠ 0)).mp
  calc
    (indexBase ^ (minIndex - 1)) ^ 16 = (indexBase ^ 16) ^ (minIndex - 1) := by
      simp only [← Nat.pow_mul]
      congr 1
      ring
    _ ≤ (2 ^ 1271) ^ (minIndex - 1) := Nat.pow_le_pow_left basis_Z_upper _
    _ = 2 ^ (1271 * (minIndex - 1)) := by rw [← Nat.pow_mul]
    _ ≤ 2 ^ ((65535 + 2) * 16) :=
      Nat.pow_le_pow_right (by decide) (by norm_num [minIndex])
    _ = (2 ^ (65535 + 2)) ^ 16 := by rw [← Nat.pow_mul]

theorem p_capacity_certificates :
    (5 : ℕ) ^ 22000 ≤ indexBase ^ 645 ∧
    (5 ^ 22000) ^ minIndex ≤ heightY0 ^ 645 ∧
    4 ^ 645 * (5 ^ 22000) ^ (minIndex + 1) ≤ indexBase ^ (645 * minIndex) := by
  have h := Math.B699.DiscretePadeSelector.conditions_from_short_bases
    5 indexBase 22000 645 minIndex 65535 137 59 397 5
    (by decide) (by decide) basis_five basis_Z_lower
    (by decide) (by norm_num [minIndex]) (by norm_num [minIndex])
  simpa only [heightY0] using h

theorem q_capacity_certificates :
    (7 : ℕ) ^ 22000 ≤ indexBase ^ 779 ∧
    (7 ^ 22000) ^ minIndex ≤ heightY0 ^ 779 ∧
    4 ^ 779 * (7 ^ 22000) ^ (minIndex + 1) ≤ indexBase ^ (779 * minIndex) := by
  have h := Math.B699.DiscretePadeSelector.conditions_from_short_bases
    7 indexBase 22000 779 minIndex 65535 73 26 397 5
    (by decide) (by decide) basis_seven basis_Z_lower
    (by decide) (by norm_num [minIndex]) (by norm_num [minIndex])
  simpa only [heightY0] using h
end Math.B699.I13FiveSevenEdge

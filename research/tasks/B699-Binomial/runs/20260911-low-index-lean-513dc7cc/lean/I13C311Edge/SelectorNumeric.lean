import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I13C311Edge.Parameters
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I13C311Edge.Basis3
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I13C311Edge.Basis11
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I13C311Edge.Basis71
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.DiscreteSelector.ShortPowerBounds

/-! UNCOMPILED actual fixed(3,11)c7d5 edge candidate. -/
set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxHeartbeats 2000000
set_option maxRecDepth 4096

namespace Math.B699.I13C311Edge

open Math.B699.DiscretePadeSelector

theorem z_basis_lower : (2 : ℕ) ^ 336485 ≤ selectorZ ^ 4096 := by
  have he : 336485 = 25189 + 76 * 4096 := by decide
  rw [he, Nat.pow_add, Nat.pow_mul]
  simpa only [selectorZ, Nat.mul_pow] using
    Nat.mul_le_mul_right (((2 : ℕ) ^ 76) ^ 4096) basis_71_lower

theorem z_basis_upper : selectorZ ^ 4096 ≤ (2 : ℕ) ^ 336486 := by
  have he : 336486 = 25190 + 76 * 4096 := by decide
  rw [he, Nat.pow_add, Nat.pow_mul]
  simpa only [selectorZ, Nat.mul_pow] using
    Nat.mul_le_mul_right (((2 : ℕ) ^ 76) ^ 4096) basis_71_upper

theorem predecessor : selectorZ ^ (selectorM - 1) ≤ 4 * heightY0 := by
  have h := base_from_short_basis selectorZ 1 1 186 15361 336486 4096
    (by decide) z_basis_upper (by decide)
  have h186 : selectorZ ^ 186 ≤ (2 : ℕ) ^ 15361 := by
    simpa only [Nat.pow_one] using h
  calc
    selectorZ ^ (selectorM - 1) = selectorZ ^ 186 := rfl
    _ ≤ (2 : ℕ) ^ 15361 := h186
    _ = 4 * heightY0 := by
      have he : 15361 = 15359 + 2 := by decide
      rw [he, Nat.pow_add]
      simpa only [heightY0, show (2 : ℕ) ^ 2 = 4 by decide, Nat.mul_comm]

theorem p_conditions : (3 : ℕ) ^ 35000 ≤ selectorZ ^ 679 ∧
    ((3 : ℕ) ^ 35000) ^ selectorM ≤ heightY0 ^ 679 ∧
    (4 : ℕ) ^ 679 * (3 ^ 35000) ^ (selectorM + 1) ≤ selectorZ ^ (679 * selectorM) := by
  exact conditions_from_short_bases 3 selectorZ 35000 679 187 15359
    51937 32768 336485 4096 (by decide) (by decide) basis_3 z_basis_lower
    (by decide) (by decide) (by decide)

theorem q_conditions : (11 : ℕ) ^ 14000 ≤ selectorZ ^ 593 ∧
    ((11 : ℕ) ^ 14000) ^ selectorM ≤ heightY0 ^ 593 ∧
    (4 : ℕ) ^ 593 * (11 ^ 14000) ^ (selectorM + 1) ≤ selectorZ ^ (593 * selectorM) := by
  exact conditions_from_short_bases 11 selectorZ 14000 593 187 15359
    14170 4096 336485 4096 (by decide) (by decide) basis_11 z_basis_lower
    (by decide) (by decide) (by decide)

end Math.B699.I13C311Edge
#print axioms Math.B699.I13C311Edge.z_basis_lower
#print axioms Math.B699.I13C311Edge.z_basis_upper
#print axioms Math.B699.I13C311Edge.predecessor
#print axioms Math.B699.I13C311Edge.p_conditions
#print axioms Math.B699.I13C311Edge.q_conditions

import Mathlib.Data.Nat.Find
import Lean.Elab.Tactic.Omega

/-!
UNCOMPILED CANDIDATE. The actual least exponent with 4*Y < Z^m, followed by
two-sided capacity at that same m. Only Nat arithmetic is used.
The existence witness 4*Y is not selected or evaluated as a huge power.
-/

set_option autoImplicit false
set_option relaxedAutoImplicit false

namespace Math.B699.DiscretePadeSelector

theorem exists_power_above_four_mul (Z Y : ℕ) (hZ : 1 < Z) :
    ∃ m : ℕ, 4 * Y < Z ^ m := by
  exact ⟨4 * Y, Nat.lt_pow_self hZ⟩

def leastExponent (Z Y : ℕ) (hZ : 1 < Z) : ℕ :=
  Nat.find (exists_power_above_four_mul Z Y hZ)

theorem leastExponent_threshold (Z Y : ℕ) (hZ : 1 < Z) :
    4 * Y < Z ^ leastExponent Z Y hZ := by
  exact Nat.find_spec (exists_power_above_four_mul Z Y hZ)

theorem leastExponent_minimal (Z Y : ℕ) (hZ : 1 < Z)
    {k : ℕ} (hk : k < leastExponent Z Y hZ) : Z ^ k ≤ 4 * Y := by
  exact Nat.le_of_not_gt (Nat.find_min (exists_power_above_four_mul Z Y hZ) hk)

theorem leastExponent_pos (Z Y : ℕ) (hZ : 1 < Z) (hY : 0 < Y) :
    0 < leastExponent Z Y hZ := by
  apply Nat.pos_of_ne_zero
  intro hz
  have hthreshold := leastExponent_threshold Z Y hZ
  rw [hz, Nat.pow_zero] at hthreshold
  omega

theorem leastExponent_previous (Z Y : ℕ) (hZ : 1 < Z) (hY : 0 < Y) :
    Z ^ (leastExponent Z Y hZ - 1) ≤ 4 * Y := by
  have hpos := leastExponent_pos Z Y hZ hY
  exact leastExponent_minimal Z Y hZ (by omega)

theorem leastExponent_lower_bound (Z Y0 Y M : ℕ) (hZ : 1 < Z)
    (hY : Y0 ≤ Y) (hM : 0 < M) (hprevious : Z ^ (M - 1) ≤ 4 * Y0) :
    M ≤ leastExponent Z Y hZ := by
  apply Nat.le_of_not_gt
  intro h
  have hsmall : leastExponent Z Y hZ ≤ M - 1 := by omega
  have hpower : Z ^ leastExponent Z Y hZ ≤ Z ^ (M - 1) :=
    Nat.pow_le_pow_right (by omega) hsmall
  have hupper : Z ^ leastExponent Z Y hZ ≤ 4 * Y :=
    Nat.le_trans hpower (Nat.le_trans hprevious (Nat.mul_le_mul_left 4 hY))
  exact Nat.not_le_of_gt (leastExponent_threshold Z Y hZ) hupper

theorem leastExponent_le_of_threshold (Z Y M : ℕ) (hZ : 1 < Z)
    (hthreshold : 4 * Y < Z ^ M) : leastExponent Z Y hZ ≤ M := by
  exact Nat.find_min' (exists_power_above_four_mul Z Y hZ) hthreshold

theorem leastExponent_eq_of_bracket (Z Y M : ℕ) (hZ : 1 < Z)
    (hM : 0 < M) (hprevious : Z ^ (M - 1) ≤ 4 * Y)
    (hthreshold : 4 * Y < Z ^ M) : leastExponent Z Y hZ = M := by
  exact Nat.le_antisymm
    (leastExponent_le_of_threshold Z Y M hZ hthreshold)
    (leastExponent_lower_bound Z Y Y M hZ (Nat.le_refl Y) hM hprevious)

/-- Extend from M+1 using the rate, with the constant 4^alpha retained. -/
theorem lookahead_rate_extend (Z J alpha M k : ℕ)
    (hrate : J ≤ Z ^ alpha)
    (hlookahead : 4 ^ alpha * J ^ (M + 1) ≤ Z ^ (alpha * M)) :
    4 ^ alpha * J ^ (M + 1 + k) ≤ Z ^ (alpha * (M + k)) := by
  calc
    _ = (4 ^ alpha * J ^ (M + 1)) * J ^ k := by
      simp only [Nat.pow_add, Nat.mul_assoc]
    _ ≤ Z ^ (alpha * M) * (Z ^ alpha) ^ k :=
      Nat.mul_le_mul hlookahead (Nat.pow_le_pow_left hrate k)
    _ = Z ^ (alpha * (M + k)) := by
      simp only [← Nat.pow_mul, ← Nat.pow_add, Nat.mul_add]

/-- The elementary two-branch argument, before substituting the actual selector. -/
theorem capacity_of_previous_bound (Z J alpha M m Y0 Y : ℕ)
    (hY : Y0 ≤ Y) (hMm : M ≤ m) (hprevious : Z ^ (m - 1) ≤ 4 * Y)
    (hrate : J ≤ Z ^ alpha) (hbase : J ^ M ≤ Y0 ^ alpha)
    (hlookahead : 4 ^ alpha * J ^ (M + 1) ≤ Z ^ (alpha * M)) :
    J ^ m ≤ Y ^ alpha := by
  by_cases heq : m = M
  · rw [heq]
    exact Nat.le_trans hbase (Nat.pow_le_pow_left hY alpha)
  · let k := m - (M + 1)
    have hm : m = M + 1 + k := by dsimp [k]; omega
    have hpred : m - 1 = M + k := by omega
    have hscaled : 4 ^ alpha * J ^ m ≤ (Z ^ (m - 1)) ^ alpha := by
      calc
        _ = 4 ^ alpha * J ^ (M + 1 + k) := by rw [hm]
        _ ≤ Z ^ (alpha * (M + k)) :=
          lookahead_rate_extend Z J alpha M k hrate hlookahead
        _ = (Z ^ (m - 1)) ^ alpha := by
          rw [hpred, ← Nat.pow_mul, Nat.mul_comm alpha (M + k)]
    have hcombined := Nat.le_trans hscaled (Nat.pow_le_pow_left hprevious alpha)
    have hcancel : 4 ^ alpha * J ^ m ≤ 4 ^ alpha * Y ^ alpha := by
      simpa only [Nat.mul_pow] using hcombined
    exact Nat.le_of_mul_le_mul_left hcancel (Nat.pow_pos (by decide : 0 < (4 : ℕ)))

theorem leastExponent_capacity (Z J alpha M Y0 Y : ℕ) (hZ : 1 < Z)
    (hY0 : 0 < Y0) (hY : Y0 ≤ Y) (hM : 0 < M)
    (hprevious : Z ^ (M - 1) ≤ 4 * Y0)
    (hrate : J ≤ Z ^ alpha) (hbase : J ^ M ≤ Y0 ^ alpha)
    (hlookahead : 4 ^ alpha * J ^ (M + 1) ≤ Z ^ (alpha * M)) :
    J ^ leastExponent Z Y hZ ≤ Y ^ alpha := by
  exact capacity_of_previous_bound Z J alpha M (leastExponent Z Y hZ) Y0 Y
    hY (leastExponent_lower_bound Z Y0 Y M hZ hY hM hprevious)
    (leastExponent_previous Z Y hZ (Nat.lt_of_lt_of_le hY0 hY))
    hrate hbase hlookahead

/-- Both ends use literally the same leastExponent, not separately chosen indices. -/
theorem leastExponent_two_capacities (Z Jp alphaP Jq alphaQ M Y0 Y : ℕ)
    (hZ : 1 < Z) (hY0 : 0 < Y0) (hY : Y0 ≤ Y) (hM : 0 < M)
    (hprevious : Z ^ (M - 1) ≤ 4 * Y0)
    (hrateP : Jp ≤ Z ^ alphaP) (hbaseP : Jp ^ M ≤ Y0 ^ alphaP)
    (hlookaheadP : 4 ^ alphaP * Jp ^ (M + 1) ≤ Z ^ (alphaP * M))
    (hrateQ : Jq ≤ Z ^ alphaQ) (hbaseQ : Jq ^ M ≤ Y0 ^ alphaQ)
    (hlookaheadQ : 4 ^ alphaQ * Jq ^ (M + 1) ≤ Z ^ (alphaQ * M)) :
    Jp ^ leastExponent Z Y hZ ≤ Y ^ alphaP ∧
      Jq ^ leastExponent Z Y hZ ≤ Y ^ alphaQ := by
  exact ⟨leastExponent_capacity Z Jp alphaP M Y0 Y hZ hY0 hY hM hprevious
      hrateP hbaseP hlookaheadP,
    leastExponent_capacity Z Jq alphaQ M Y0 Y hZ hY0 hY hM hprevious
      hrateQ hbaseQ hlookaheadQ⟩

end Math.B699.DiscretePadeSelector

#print axioms Math.B699.DiscretePadeSelector.exists_power_above_four_mul
#print axioms Math.B699.DiscretePadeSelector.leastExponent
#print axioms Math.B699.DiscretePadeSelector.leastExponent_threshold
#print axioms Math.B699.DiscretePadeSelector.leastExponent_minimal
#print axioms Math.B699.DiscretePadeSelector.leastExponent_pos
#print axioms Math.B699.DiscretePadeSelector.leastExponent_previous
#print axioms Math.B699.DiscretePadeSelector.leastExponent_lower_bound
#print axioms Math.B699.DiscretePadeSelector.leastExponent_le_of_threshold
#print axioms Math.B699.DiscretePadeSelector.leastExponent_eq_of_bracket
#print axioms Math.B699.DiscretePadeSelector.lookahead_rate_extend
#print axioms Math.B699.DiscretePadeSelector.capacity_of_previous_bound
#print axioms Math.B699.DiscretePadeSelector.leastExponent_capacity
#print axioms Math.B699.DiscretePadeSelector.leastExponent_two_capacities

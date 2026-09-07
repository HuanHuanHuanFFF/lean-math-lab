import Mathlib.Tactic.Ring
import Mathlib.Tactic.NormNum
import Mathlib.Data.Finset.Card

/-!
Exact rational-point witnesses for the k=5 quotient curve. There are eighteen
listed affine points and two rational infinity branches, whose leading z/t^3
coordinates are +3 and -3. The smooth projective curve and the Coleman theorem
are NOT formalized here; see exploration.md for that separate paper argument.
-/

namespace B686Round3K5PointWitnesses

def sextic (t : ℚ) : ℚ := 9 * t ^ 6 + 64 * t ^ 5 - 200 * t ^ 3 + 64 * t + 144

def affine_points : Finset (ℚ × ℚ) :=
  {(-2, 12), (-2, -12), (-1, 15), (-1, -15),
    (-1 / 2, 93 / 8), (-1 / 2, -93 / 8), (0, 12), (0, -12),
    (1 / 2, 99 / 8), (1 / 2, -99 / 8), (1, 9), (1, -9),
    (2, 36), (2, -36), (4, 300), (4, -300),
    (14 / 11, 10740 / 1331), (14 / 11, -10740 / 1331)}

theorem affine_points_card : affine_points.card = 18 := by norm_num [affine_points]

theorem affine_points_on_curve :
    ∀ p ∈ affine_points, p.2 ^ 2 = sextic p.1 := by
  norm_num [affine_points, sextic]

theorem two_distinct_infinity_leading_values :
    (3 : ℚ) ^ 2 = 9 ∧ (-3 : ℚ) ^ 2 = 9 ∧ (3 : ℚ) ≠ -3 := by
  norm_num

-- These are numerical inputs to Howe--Zhu Theorem 6, not a Lean theorem
-- asserting absolute simplicity of a Jacobian.
theorem howe_zhu_numerical_conditions :
    Nat.Coprime 15 11 ∧ (5 : ℤ) ≠ 0 ∧ (5 : ℤ) ^ 2 ≠ 11 + 15 ∧
      (5 : ℤ) ^ 2 ≠ 2 * 15 ∧ (5 : ℤ) ^ 2 ≠ 3 * 15 - 3 * 11 := by
  decide

theorem elliptic_trace_obstruction (u v : ℤ)
    (hsum : u + v = -5) (hprod : u * v = -7) : False := by
  have hid : (u - v) ^ 2 = (u + v) ^ 2 - 4 * (u * v) := by ring
  have heq : (u - v) ^ 2 = 53 := by rw [hsum, hprod] at hid; norm_num at hid; exact hid
  have hcases : u - v ≤ -8 ∨ -7 ≤ u - v ∧ u - v ≤ 7 ∨ 8 ≤ u - v := by omega
  rcases hcases with hlo | hmid | hhi
  · have hsq : (64 : ℤ) ≤ (u - v) ^ 2 := by
      calc
        64 = (8 : ℤ) ^ 2 := by norm_num
        _ ≤ (-(u - v)) ^ 2 :=
          pow_le_pow_left₀ (by decide : (0 : ℤ) ≤ 8) (by omega : 8 ≤ -(u - v)) 2
        _ = (u - v) ^ 2 := by ring
    omega
  · have hleft : 0 ≤ u - v + 7 := by omega
    have hright : 0 ≤ 7 - (u - v) := by omega
    have hp := mul_nonneg hleft hright
    have hring : (u - v + 7) * (7 - (u - v)) = 49 - (u - v) ^ 2 := by ring
    omega
  · have hsq : (64 : ℤ) ≤ (u - v) ^ 2 := by
      calc
        64 = (8 : ℤ) ^ 2 := by norm_num
        _ ≤ (u - v) ^ 2 := pow_le_pow_left₀ (by decide : (0 : ℤ) ≤ 8) hhi 2
    omega

/-- info: 'B686Round3K5PointWitnesses.affine_points_card' depends on axioms: [propext, Classical.choice, Quot.sound] -/
#guard_msgs in
#print axioms affine_points_card
/-- info: 'B686Round3K5PointWitnesses.affine_points_on_curve' depends on axioms: [propext, Classical.choice, Quot.sound] -/
#guard_msgs in
#print axioms affine_points_on_curve
/-- info: 'B686Round3K5PointWitnesses.two_distinct_infinity_leading_values' depends on axioms: [propext,
 Classical.choice,
 Quot.sound] -/
#guard_msgs in
#print axioms two_distinct_infinity_leading_values
/-- info: 'B686Round3K5PointWitnesses.howe_zhu_numerical_conditions' depends on axioms: [propext] -/
#guard_msgs in
#print axioms howe_zhu_numerical_conditions
/-- info: 'B686Round3K5PointWitnesses.elliptic_trace_obstruction' depends on axioms: [propext, Classical.choice, Quot.sound] -/
#guard_msgs in
#print axioms elliptic_trace_obstruction

end B686Round3K5PointWitnesses

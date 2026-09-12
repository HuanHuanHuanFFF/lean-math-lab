import Mathlib.Data.Nat.Basic
import Lean.Elab.Tactic.Omega

/-! UNCOMPILED CANDIDATE. A common dyadic interval for all eleven numerator
positions. The huge concrete height is kept out of arithmetic normalization. -/
set_option autoImplicit false
set_option relaxedAutoImplicit false
namespace B699LowIndex.I11FiveThreeComponentEdge

def ceilHalf (n : ℕ) : ℕ := (n + 1) / 2

theorem window_in_ceilHalf_interval {n a : ℕ} (hn : 20 ≤ n) (ha : a < 11) :
    ceilHalf n ≤ n - a ∧ n - a ≤ 2 * ceilHalf n := by
  dsimp only [ceilHalf]
  omega

theorem ceilHalf_lower_of_two_mul_le {n H : ℕ} (h : 2 * H ≤ n) :
    H ≤ ceilHalf n := by
  dsimp only [ceilHalf]
  omega

theorem ceilHalf_power_lower {n k : ℕ} (h : (2 : ℕ) ^ (k + 1) ≤ n) :
    (2 : ℕ) ^ k ≤ ceilHalf n := by
  apply ceilHalf_lower_of_two_mul_le
  calc
    2 * (2 : ℕ) ^ k = (2 : ℕ) ^ (k + 1) := by
      rw [Nat.pow_succ]
      exact Nat.mul_comm _ _
    _ ≤ n := h

theorem twenty_le_of_power_bound {n k : ℕ} (hk : 5 ≤ k) (hn : (2 : ℕ) ^ k ≤ n) :
    20 ≤ n := by
  have h32 : 32 ≤ (2 : ℕ) ^ k := by
    change (2 : ℕ) ^ 5 ≤ (2 : ℕ) ^ k
    exact Nat.pow_le_pow_right (by decide) hk
  exact Nat.le_trans (by decide : 20 ≤ 32) (Nat.le_trans h32 hn)

end B699LowIndex.I11FiveThreeComponentEdge
#print axioms B699LowIndex.I11FiveThreeComponentEdge.window_in_ceilHalf_interval
#print axioms B699LowIndex.I11FiveThreeComponentEdge.ceilHalf_lower_of_two_mul_le
#print axioms B699LowIndex.I11FiveThreeComponentEdge.ceilHalf_power_lower
#print axioms B699LowIndex.I11FiveThreeComponentEdge.twenty_le_of_power_bound

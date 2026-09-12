import Mathlib.Data.Nat.Basic
import Mathlib.Data.Nat.Dist
import Lean.Elab.Tactic.Omega

/-! UNCOMPILED CANDIDATE. Pure Nat conversion from a large component to cubic cofactors. -/

set_option autoImplicit false
set_option relaxedAutoImplicit false

namespace B699LowIndex.I11CubicBridge

theorem cofactor_four_le {n A X : ℕ} (hn : 0 < n)
    (hproduct : A * X ≤ n) (hlarge : n ^ 3 < X ^ 4) : A ^ 4 ≤ n := by
  have hscaled : A ^ 4 * n ^ 3 ≤ n * n ^ 3 := by
    calc
      _ ≤ A ^ 4 * X ^ 4 := Nat.mul_le_mul_left _ (Nat.le_of_lt hlarge)
      _ = (A * X) ^ 4 := Eq.symm (Nat.mul_pow A X 4)
      _ ≤ n ^ 4 := Nat.pow_le_pow_left hproduct 4
      _ = n * n ^ 3 := Eq.trans (Nat.pow_succ n 3) (Nat.mul_comm _ _)
  exact Nat.le_of_mul_le_mul_right hscaled (Nat.pow_pos hn)

theorem cofactor_cube_le_n_sub_ten {n A : ℕ}
    (hn : 20 ≤ n) (hA : 1 ≤ A) (hfour : A ^ 4 ≤ n) : A ^ 3 ≤ n - 10 := by
  have hdouble : 2 * A ^ 3 ≤ n := by
    by_cases htwo : 2 ≤ A
    · calc
        _ = A ^ 3 * 2 := Nat.mul_comm _ _
        _ ≤ A ^ 3 * A := Nat.mul_le_mul_left _ htwo
        _ = A ^ 4 := Eq.symm (Nat.pow_succ A 3)
        _ ≤ n := hfour
    · have heq : A = 1 := by omega
      simpa only [heq, Nat.one_pow, Nat.mul_one] using (show 2 ≤ n by omega)
  omega

theorem cofactor_cube_le_both_windows {n A a b : ℕ}
    (hn : 20 ≤ n) (hA : 1 ≤ A) (hfour : A ^ 4 ≤ n)
    (ha : a < 11) (hb : b < 11) : A ^ 3 ≤ min (n - a) (n - b) := by
  have hcube := cofactor_cube_le_n_sub_ten hn hA hfour
  apply le_min <;> omega

theorem window_distance_le_ten {n a b : ℕ} (ha : a < 11) (hb : b < 11) :
    Nat.dist (n - a) (n - b) ≤ 10 := by
  unfold Nat.dist
  omega

theorem exponent_pos_of_large_fourth {n p e : ℕ} (hn : 0 < n)
    (hlarge : n ^ 3 < (p ^ e) ^ 4) : 0 < e := by
  apply Nat.pos_of_ne_zero
  intro heq
  rw [heq, Nat.pow_zero, Nat.one_pow] at hlarge
  have hpositive : 0 < n ^ 3 := Nat.pow_pos hn
  omega

end B699LowIndex.I11CubicBridge

#print axioms B699LowIndex.I11CubicBridge.cofactor_four_le
#print axioms B699LowIndex.I11CubicBridge.cofactor_cube_le_n_sub_ten
#print axioms B699LowIndex.I11CubicBridge.cofactor_cube_le_both_windows
#print axioms B699LowIndex.I11CubicBridge.window_distance_le_ten
#print axioms B699LowIndex.I11CubicBridge.exponent_pos_of_large_fourth

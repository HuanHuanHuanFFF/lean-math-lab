import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11Cubic.CubicCofactors

/-! Candidate: seven-tenths component threshold gives cubic cofactors for offset0..12. -/
set_option autoImplicit false
set_option relaxedAutoImplicit false
namespace B699LowIndex.I13CubicBridge

theorem cofactor_ten_le {n A X : ℕ} (hn : 0 < n)
    (hproduct : A * X ≤ n) (hlarge : n ^ 7 < X ^ 10) : A ^ 10 ≤ n ^ 3 := by
  have hscaled : A ^ 10 * n ^ 7 ≤ n ^ 3 * n ^ 7 := by
    calc
      _ ≤ A ^ 10 * X ^ 10 := Nat.mul_le_mul_left _ hlarge.le
      _ = (A * X) ^ 10 := Eq.symm (Nat.mul_pow A X 10)
      _ ≤ n ^ 10 := Nat.pow_le_pow_left hproduct 10
      _ = n ^ 3 * n ^ 7 := by rw [← Nat.pow_add]
  exact Nat.le_of_mul_le_mul_right hscaled (Nat.pow_pos hn)

theorem cofactor_cube_le_n_sub_twelve {n A : ℕ}
    (hn : 686 ≤ n) (hten : A ^ 10 ≤ n ^ 3) : A ^ 3 ≤ n - 12 := by
  have hdouble : 2 * A ^ 3 ≤ n := by
    by_cases hbig : 8 ≤ A
    · apply (Nat.pow_le_pow_iff_left (n := 3) (by decide)).mp
      calc
        (2 * A ^ 3) ^ 3 = 8 * A ^ 9 := by simp only [Nat.mul_pow, ← Nat.pow_mul]
        _ ≤ A * A ^ 9 := Nat.mul_le_mul_right _ hbig
        _ = A ^ 10 := by rw [Nat.pow_succ, Nat.mul_comm]
        _ ≤ n ^ 3 := hten
    · have hsmall : A ^ 3 ≤ 343 := Nat.pow_le_pow_left (by omega : A ≤ 7) 3
      omega
  omega

theorem cofactor_cube_le_both_windows {n A a b : ℕ}
    (hn : 686 ≤ n) (hten : A ^ 10 ≤ n ^ 3)
    (ha : a < 13) (hb : b < 13) : A ^ 3 ≤ min (n - a) (n - b) := by
  have hcube := cofactor_cube_le_n_sub_twelve hn hten
  apply le_min <;> omega

theorem window_distance_le_twelve {n a b : ℕ} (ha : a < 13) (hb : b < 13) :
    Nat.dist (n - a) (n - b) ≤ 12 := by
  unfold Nat.dist
  omega

theorem exponent_pos_of_large_tenth {n p e : ℕ} (hn : 0 < n)
    (hlarge : n ^ 7 < (p ^ e) ^ 10) : 0 < e := by
  apply Nat.pos_of_ne_zero
  intro heq
  rw [heq, Nat.pow_zero, Nat.one_pow] at hlarge
  have hpositive : 0 < n ^ 7 := Nat.pow_pos hn
  omega
end B699LowIndex.I13CubicBridge

#print axioms B699LowIndex.I13CubicBridge.cofactor_ten_le

#print axioms B699LowIndex.I13CubicBridge.cofactor_cube_le_n_sub_twelve

#print axioms B699LowIndex.I13CubicBridge.cofactor_cube_le_both_windows

#print axioms B699LowIndex.I13CubicBridge.window_distance_le_twelve

#print axioms B699LowIndex.I13CubicBridge.exponent_pos_of_large_tenth

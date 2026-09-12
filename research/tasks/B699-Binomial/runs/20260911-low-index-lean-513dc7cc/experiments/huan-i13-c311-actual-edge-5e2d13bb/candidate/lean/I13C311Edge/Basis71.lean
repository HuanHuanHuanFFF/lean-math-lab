import Mathlib.Data.Nat.Basic

/-! UNCOMPILED actual fixed(3,11)c7d5 edge candidate. -/
set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxHeartbeats 2000000
set_option maxRecDepth 4096

namespace Math.B699.I13C311Edge

theorem basis_71_lower : (2 : ℕ) ^ 25189 ≤ (71 : ℕ) ^ 4096 := by
  set_option exponentiation.threshold 26000 in
    decide

theorem basis_71_upper : (71 : ℕ) ^ 4096 ≤ (2 : ℕ) ^ 25190 := by
  set_option exponentiation.threshold 26000 in
    decide

end Math.B699.I13C311Edge
#print axioms Math.B699.I13C311Edge.basis_71_lower
#print axioms Math.B699.I13C311Edge.basis_71_upper

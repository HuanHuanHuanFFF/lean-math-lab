import Mathlib.Data.Nat.Basic

/-! UNCOMPILED actual fixed(3,11)c7d5 edge candidate. -/
set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxHeartbeats 2000000
set_option maxRecDepth 4096

namespace Math.B699.I13C311Edge

theorem basis_11 : (11 : ℕ) ^ 4096 ≤ (2 : ℕ) ^ 14170 := by
  set_option exponentiation.threshold 60000 in
    decide

end Math.B699.I13C311Edge
#print axioms Math.B699.I13C311Edge.basis_11

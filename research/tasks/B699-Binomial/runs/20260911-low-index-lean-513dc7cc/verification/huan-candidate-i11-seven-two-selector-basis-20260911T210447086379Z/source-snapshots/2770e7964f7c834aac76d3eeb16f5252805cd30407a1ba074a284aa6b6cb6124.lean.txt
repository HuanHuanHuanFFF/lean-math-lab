import Mathlib.Data.Nat.Basic

/-! Uncompiled (7,2) selector candidate. Short basis decisions only; no
large J or selector conclusion is kernel-reduced directly here. -/
set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 4096

namespace Math.B699.I11SevenTwoNumeric

def certificateZ : ℕ := 17498099772305953
def selectorM : ℕ := 285
def heightH : ℕ := 15359

theorem basis_two_lower : (2 : ℕ) ^ 13813 ≤ certificateZ ^ 256 := by
  set_option exponentiation.threshold 13814 in
    decide

theorem basis_two_upper : certificateZ ^ 256 ≤ (2 : ℕ) ^ 13814 := by
  set_option exponentiation.threshold 13814 in
    decide

theorem basis_seven : (7 : ℕ) ^ 4096 ≤ (2 : ℕ) ^ 11499 := by
  set_option exponentiation.threshold 11499 in
    decide

/-- The q=2 short basis is the small equality used by the selector bridge. -/
theorem basis_two_unit : (2 : ℕ) ^ 1 ≤ (2 : ℕ) ^ 1 := by
  decide

end Math.B699.I11SevenTwoNumeric

#print axioms Math.B699.I11SevenTwoNumeric.basis_two_lower
#print axioms Math.B699.I11SevenTwoNumeric.basis_two_upper
#print axioms Math.B699.I11SevenTwoNumeric.basis_seven
#print axioms Math.B699.I11SevenTwoNumeric.basis_two_unit

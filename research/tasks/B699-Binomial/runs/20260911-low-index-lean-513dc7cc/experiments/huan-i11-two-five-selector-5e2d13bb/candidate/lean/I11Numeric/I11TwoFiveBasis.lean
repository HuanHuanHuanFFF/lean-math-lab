import Mathlib.Data.Nat.Basic

/-! Uncompiled (2,5) selector candidate. Short basis decisions only; no
large J or selector conclusion is kernel-reduced directly here. -/
set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 4096

namespace Math.B699.I11TwoFiveNumeric

def certificateZ : ℕ := 115572769905797
def selectorM : ℕ := 329
def heightH : ℕ := 15359

theorem basis_two_lower : (2 : ℕ) ^ 11959 ≤ certificateZ ^ 256 := by
  set_option exponentiation.threshold 11960 in
    decide

theorem basis_two_upper : certificateZ ^ 256 ≤ (2 : ℕ) ^ 11960 := by
  set_option exponentiation.threshold 11960 in
    decide

theorem basis_five : (5 : ℕ) ^ 4096 ≤ (2 : ℕ) ^ 9511 := by
  set_option exponentiation.threshold 9511 in
    decide

/-- The p=2 short basis is the small equality used by the selector bridge. -/
theorem basis_two_unit : (2 : ℕ) ^ 1 ≤ (2 : ℕ) ^ 1 := by
  decide

end Math.B699.I11TwoFiveNumeric

#print axioms Math.B699.I11TwoFiveNumeric.basis_two_lower
#print axioms Math.B699.I11TwoFiveNumeric.basis_two_upper
#print axioms Math.B699.I11TwoFiveNumeric.basis_five
#print axioms Math.B699.I11TwoFiveNumeric.basis_two_unit

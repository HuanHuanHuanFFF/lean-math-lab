import Mathlib.Data.Nat.Basic
set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 4096
namespace Math.B699.I11ThreeTwoNumeric
def certificateZ : ℕ := 37002653975761602583641821923
def selectorM : ℕ := 162
def heightH : ℕ := 15359
theorem basis_two_lower : (2 : ℕ) ^ 759 ≤ certificateZ ^ 8 := by
  set_option exponentiation.threshold 760 in decide
theorem basis_two_upper : certificateZ ^ 8 ≤ (2 : ℕ) ^ 760 := by
  set_option exponentiation.threshold 760 in decide
theorem basis_three : (3 : ℕ) ^ 128 ≤ (2 : ℕ) ^ 203 := by
  set_option exponentiation.threshold 203 in decide
theorem basis_two_unit : (2 : ℕ) ^ 1 ≤ (2 : ℕ) ^ 1 := by decide
end Math.B699.I11ThreeTwoNumeric
#print axioms Math.B699.I11ThreeTwoNumeric.basis_two_lower
#print axioms Math.B699.I11ThreeTwoNumeric.basis_two_upper
#print axioms Math.B699.I11ThreeTwoNumeric.basis_three
#print axioms Math.B699.I11ThreeTwoNumeric.basis_two_unit

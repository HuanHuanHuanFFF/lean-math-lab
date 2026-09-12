import Mathlib.Data.Nat.Basic
set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 4096
namespace Math.B699.I11FiveSevenNumeric
def certificateZ : ℕ := 719422706382292314227864
def selectorM : ℕ := 194
def heightH : ℕ := 15359
theorem basis_two_lower : (2 : ℕ) ^ 81153 ≤ certificateZ ^ 1024 := by
  set_option exponentiation.threshold 81154 in decide
theorem basis_two_upper : certificateZ ^ 1024 ≤ (2 : ℕ) ^ 81154 := by
  set_option exponentiation.threshold 81154 in decide
theorem basis_five : (5 : ℕ) ^ 4096 ≤ (2 : ℕ) ^ 9511 := by
  set_option exponentiation.threshold 9511 in decide
theorem basis_two_unit : (2 : ℕ) ^ 1 ≤ (2 : ℕ) ^ 1 := by decide
theorem basis_seven : (7 : ℕ) ^ 256 ≤ (2 : ℕ) ^ 719 := by
  set_option exponentiation.threshold 719 in decide +kernel
end Math.B699.I11FiveSevenNumeric
#print axioms Math.B699.I11FiveSevenNumeric.basis_two_lower
#print axioms Math.B699.I11FiveSevenNumeric.basis_two_upper
#print axioms Math.B699.I11FiveSevenNumeric.basis_five
#print axioms Math.B699.I11FiveSevenNumeric.basis_two_unit
#print axioms Math.B699.I11FiveSevenNumeric.basis_seven

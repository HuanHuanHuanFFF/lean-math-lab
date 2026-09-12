import Mathlib.Data.Nat.Basic

/-! UNCOMPILED CANDIDATE. All explicit kernel-decided integers are at most
1190 bits. No large final selector power is evaluated. -/
set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 4096
namespace Math.B699.I11FiveThreeNumeric

def certificateZ : ℕ := 5726930071079973414170
def a3Numerator : ℕ := 1694801261684299070333536458252484608
def a3Denominator : ℕ := 1476369155193264712520030439541015625

theorem basis_five : (5 : ℕ) ^ 512 ≤ 2 ^ 1189 := by decide
theorem basis_three : (3 : ℕ) ^ 128 ≤ 2 ^ 203 := by decide
theorem basis_Z_lower : (2 : ℕ) ^ 289 ≤ certificateZ ^ 4 := by decide
/-- One additional short upper basis for the predecessor certificate. -/
theorem basis_Z_upper : certificateZ ^ 8 ≤ (2 : ℕ) ^ 579 := by decide

theorem a3_denominator_pos : 0 < a3Denominator := by decide
theorem a3_numerator_ge_denominator : a3Denominator ≤ a3Numerator := by decide
/-- 723-bit numerator versus 722-bit left side; not a 213th-power computation. -/
theorem a3_sixth_integer : 2 * a3Denominator ^ 6 ≤ a3Numerator ^ 6 := by decide

end Math.B699.I11FiveThreeNumeric
#print axioms Math.B699.I11FiveThreeNumeric.basis_five
#print axioms Math.B699.I11FiveThreeNumeric.basis_three
#print axioms Math.B699.I11FiveThreeNumeric.basis_Z_lower
#print axioms Math.B699.I11FiveThreeNumeric.basis_Z_upper
#print axioms Math.B699.I11FiveThreeNumeric.a3_denominator_pos
#print axioms Math.B699.I11FiveThreeNumeric.a3_numerator_ge_denominator
#print axioms Math.B699.I11FiveThreeNumeric.a3_sixth_integer

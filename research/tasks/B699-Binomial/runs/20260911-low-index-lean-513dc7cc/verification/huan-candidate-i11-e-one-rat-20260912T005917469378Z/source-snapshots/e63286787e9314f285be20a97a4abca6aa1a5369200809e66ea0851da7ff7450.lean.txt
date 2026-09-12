import Mathlib.Algebra.Field.Rat
import Mathlib.Tactic.NormNum

/-! UNCOMPILED. Nine literal rational terms; no direct Polynomial or Pade import. -/
set_option autoImplicit false
set_option relaxedAutoImplicit false
namespace Math.B699.I11EOne

def rationalDelta1Sum : ℚ :=
    (Int.castRingHom ℚ) (38608020 : ℤ) * (1 / 9 : ℚ) ^ 0 +
    (Int.castRingHom ℚ) (-154432080 : ℤ) * (1 / 9 : ℚ) ^ 1 +
    (Int.castRingHom ℚ) (278974080 : ℤ) * (1 / 9 : ℚ) ^ 2 +
    (Int.castRingHom ℚ) (-296409960 : ℤ) * (1 / 9 : ℚ) ^ 3 +
    (Int.castRingHom ℚ) (202097700 : ℤ) * (1 / 9 : ℚ) ^ 4 +
    (Int.castRingHom ℚ) (-90349560 : ℤ) * (1 / 9 : ℚ) ^ 5 +
    (Int.castRingHom ℚ) (25814160 : ℤ) * (1 / 9 : ℚ) ^ 6 +
    (Int.castRingHom ℚ) (-4302360 : ℤ) * (1 / 9 : ℚ) ^ 7 +
    (Int.castRingHom ℚ) (319770 : ℤ) * (1 / 9 : ℚ) ^ 8

theorem rational_delta1_sum_value :
    rationalDelta1Sum = (117258057456010 : ℚ) / 4782969 := by
  norm_num [rationalDelta1Sum, Int.coe_castRingHom]

end Math.B699.I11EOne

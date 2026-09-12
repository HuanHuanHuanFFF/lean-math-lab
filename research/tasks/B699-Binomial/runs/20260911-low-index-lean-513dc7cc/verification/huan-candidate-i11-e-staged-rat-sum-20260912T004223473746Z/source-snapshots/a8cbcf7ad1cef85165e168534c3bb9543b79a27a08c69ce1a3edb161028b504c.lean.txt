import Mathlib.Algebra.Field.Rat
import Mathlib.Tactic.NormNum

/-! UNCOMPILED. This layer imports no Polynomial or Padé module.
It contains only eight fixed rational terms with integer coefficients. -/
set_option autoImplicit false
set_option relaxedAutoImplicit false
namespace Math.B699.I11ECoefficientStaging

def rationalDelta0Sum : ℚ :=
    (Int.castRingHom ℚ) (12620256 : ℤ) * (1 / 9 : ℚ) ^ 0 +
    (Int.castRingHom ℚ) (-44170896 : ℤ) * (1 / 9 : ℚ) ^ 1 +
    (Int.castRingHom ℚ) (68264112 : ℤ) * (1 / 9 : ℚ) ^ 2 +
    (Int.castRingHom ℚ) (-60233040 : ℤ) * (1 / 9 : ℚ) ^ 3 +
    (Int.castRingHom ℚ) (32697936 : ℤ) * (1 / 9 : ℚ) ^ 4 +
    (Int.castRingHom ℚ) (-10899312 : ℤ) * (1 / 9 : ℚ) ^ 5 +
    (Int.castRingHom ℚ) (2062032 : ℤ) * (1 / 9 : ℚ) ^ 6 +
    (Int.castRingHom ℚ) (-170544 : ℤ) * (1 / 9 : ℚ) ^ 7

theorem rational_delta0_sum_value :
    rationalDelta0Sum = (13515592997264 : ℚ) / 1594323 := by
  norm_num [rationalDelta0Sum, Int.coe_castRingHom]

end Math.B699.I11ECoefficientStaging

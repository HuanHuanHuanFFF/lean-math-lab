import Mathlib.Data.Real.Basic
import Mathlib.Tactic.Linarith
import Mathlib.Tactic.NormNum

/-! Actual IC real algebra from the fixed paper section 3. This smaller root
avoids loading the logarithm and calculus libraries. Logarithm correspondence
and the integer sieve bounds remain separately identified prerequisites. -/
set_option autoImplicit false
set_option relaxedAutoImplicit false
namespace B699TailIC
/-- IC eliminates normalized inputs whose logarithms have the displayed bounds.
Here `Z=log X`, `L=log i`, `E=-log(1-h)`, and `l=log 2` in the paper. -/
theorem ic_real_obstruction {i t q k l L Z E : ℝ}
    (hi : 0 < i) (ht : 0 ≤ t) (hq : 12 ≤ q) (hk : 0 ≤ k)
    (hl : 56 / 81 < l)
    (hic : 100 * (3 * (q + k) * t + 5 * q + 9 * k) ≤ (100 * q - 1) * i)
    (hZ : q * l ≤ Z) (hL : L ≤ k * l) (hE : E ≤ 1 / 4095)
    (hA : (i - 5 - 3 * t) * Z ≤ (3 * t + 9) * L + 3 * i * E) : False := by
  have hlp : 0 < l := by linarith
  have htp : 0 ≤ 3 * t + 9 := by linarith
  have hkt : 0 ≤ k * (3 * t + 9) := mul_nonneg hk htp
  have hd : i / 100 ≤ q * (i - 5 - 3 * t) - k * (3 * t + 9) := by
    nlinarith [hic]
  have hm : 0 < i - 5 - 3 * t := by
    by_contra h
    have hm' : i - 5 - 3 * t ≤ 0 := by linarith
    have hqm : q * (i - 5 - 3 * t) ≤ 0 :=
      mul_nonpos_of_nonneg_of_nonpos (by linarith) hm'
    linarith
  have hz := mul_le_mul_of_nonneg_left hZ hm.le
  have hl' := mul_le_mul_of_nonneg_left hL htp
  have he' := mul_le_mul_of_nonneg_left hE (by linarith : 0 ≤ 3 * i)
  have ha' : (q * (i - 5 - 3 * t) - k * (3 * t + 9)) * l ≤ 3 * i / 4095 := by
    nlinarith [hA, hz, hl', he']
  have hd' := mul_le_mul_of_nonneg_right hd hlp.le
  have hi' := mul_lt_mul_of_pos_right hl hi
  nlinarith [ha', hd', hi']

end B699TailIC
#check @B699TailIC.ic_real_obstruction
#print axioms B699TailIC.ic_real_obstruction

import Mathlib.Tactic.NormNum
import Mathlib.Tactic.Ring
import Mathlib.Tactic.Linarith
import Mathlib.Tactic.Positivity

namespace B699.SmoothWindow

theorem I_bound_forces_four_mul {n U : ℤ} (hn : 10 ≤ n) (hU : 0 ≤ U)
    (hI : 2*(n-1)^2*(n-3) ≤ 9*(n-2)*U^2) : n < 4*U := by
  by_contra h
  have hUn : 4*U ≤ n := by omega
  have hsq : 16*U^2 ≤ n^2 := by nlinarith
  have hmul := mul_le_mul_of_nonneg_left hsq (show 0 ≤ 9*(n-2) by omega)
  have hpoly : 0 < 32*(n-1)^2*(n-3)-9*n^2*(n-2) := by
    have heq : 32*(n-1)^2*(n-3)-9*n^2*(n-2) =
        10944+4284*(n-10)+548*(n-10)^2+23*(n-10)^3 := by ring
    rw [heq]
    have : 0 ≤ n-10 := by omega
    positivity
  nlinarith only [hI, hmul, hpoly]

theorem shifted_product_lower {n : ℤ} (hn : 3 ≤ n) :
    (n-14)*n^7 ≤ (n-1)^5*(n-3)^3 := by
  have heq : (n-1)^5*(n-3)^3-(n-14)*n^7 =
      24057+53946*(n-3)+51030*(n-3)^2+26114*(n-3)^3+
      7640*(n-3)^4+1214*(n-3)^5+82*(n-3)^6 := by ring
  have hpos : 0 ≤ 24057+53946*(n-3)+51030*(n-3)^2+26114*(n-3)^3+
      7640*(n-3)^4+1214*(n-3)^5+82*(n-3)^6 := by
    have : 0 ≤ n-3 := by omega
    positivity
  linarith only [heq, hpos]

theorem W_bound_sharp {n U : ℤ} (hn : 44 ≤ n)
    (hW : (n-1)^5*(n-3)^3 < 729*(n-2)*U^6) :
    n^7 < 1024*U^6 := by
  have hlo := shifted_product_lower (show 3 ≤ n by omega)
  have hgap : 729*(n-2) < 1024*(n-14) := by omega
  have hn7 : 0 < n^7 := by
    have : 0 < n := by omega
    positivity
  by_contra h
  have hmul := mul_le_mul_of_nonneg_left (show 1024*U^6 ≤ n^7 by omega)
    (show 0 ≤ 729*(n-2) by omega)
  have hgapmul := mul_lt_mul_of_pos_right hgap hn7
  nlinarith only [hW, hlo, hmul, hgapmul]

end B699.SmoothWindow


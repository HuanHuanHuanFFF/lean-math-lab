import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I13FiveSevenEdge.Parameters
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11DivisorFiveSeven.Bounds
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Growth.ElementaryRate

/-! UNCOMPILED. Actual two-delta G lower bounds from the accepted factorial step. -/
set_option autoImplicit false
set_option relaxedAutoImplicit false
namespace Math.B699.I13FiveSevenEdge

open Math.B699.I11FiveSevenScaled Math.B699.RationalFactorialDivisor

theorem actual_divisor_zero_lower (m : ℕ) (hm : 1 ≤ m) :
    lowerG m ≤ Math.B699.I11DivisorFiveSeven.divisor m := by
  have h := Math.B699.ElementaryRate.lower_telescoping_from_step
    (F := Math.B699.I11DivisorFiveSeven.divisor) (R := rateR) (k0 := 1)
    rateR_pos.le (fun k hk => Math.B699.I11DivisorFiveSeven.divisor_rough_step k hk)
    (m - 1)
  rw [Math.B699.I11DivisorFiveSeven.divisor_initial,
    show 1 + (m - 1) = m by omega] at h
  convert h using 1 <;> dsimp only [lowerG, squareTerm] <;> norm_num only [Nat.cast_one] <;> ring

theorem content_zero_lower (m : ℕ) (hm : 1 ≤ m) :
    lowerG m ≤ content m true := by
  have h := (actual_divisor_zero_lower m hm).trans
    (rationalDivisor_le_qContent (7 * m) (4 * m - 1))
  simpa [content, rowDelta, Math.B699.I11DivisorFiveSeven.divisor] using h

theorem content_one_scaled_lower (m : ℕ) (hm : 15 ≤ m) :
    50 * lowerG m ≤ content m false := by
  have hm1 : 1 ≤ m := by omega
  have hmQ : (15 : ℚ) ≤ (m : ℚ) := by exact_mod_cast hm
  have hcoef : (50 : ℚ) ≤ (7 * (m : ℚ)) / 2 := by linarith
  have hD := actual_divisor_zero_lower m hm1
  have hadj := Math.B699.I11DivisorFiveSeven.divisor_adjacent_eq m hm1
  have hc : 0 ≤ (7 * (m : ℚ)) / 2 := by positivity
  have h : 50 * lowerG m ≤ rationalDivisor (7 * m - 1) (4 * m) := by
    calc
      _ ≤ ((7 * (m : ℚ)) / 2) * lowerG m :=
        mul_le_mul_of_nonneg_right hcoef (lowerG_pos m).le
      _ ≤ ((7 * (m : ℚ)) / 2) * Math.B699.I11DivisorFiveSeven.divisor m :=
        mul_le_mul_of_nonneg_left hD hc
      _ = rationalDivisor (7 * m - 1) (4 * m) := by
        simpa only [Nat.cast_mul, Nat.cast_ofNat] using hadj.symm
  have hq := h.trans (rationalDivisor_le_qContent (7 * m - 1) (4 * m))
  simpa [content, rowDelta] using hq

theorem content_common_lower (m : ℕ) (hm : 15 ≤ m) (row : Bool) :
    lowerG m ≤ content m row := by
  cases row with
  | false =>
    have h := content_one_scaled_lower m hm
    have hp := lowerG_pos m
    linarith
  | true => exact content_zero_lower m (by omega)
end Math.B699.I13FiveSevenEdge

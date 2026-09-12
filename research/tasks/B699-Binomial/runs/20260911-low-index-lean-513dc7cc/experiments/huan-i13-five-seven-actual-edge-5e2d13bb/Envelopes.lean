import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I13FiveSevenEdge.Growth
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I13FiveSevenEdge.Decay

/-! UNCOMPILED. Actual Rat row fractions, with all polynomial loss retained. -/
set_option autoImplicit false
set_option relaxedAutoImplicit false
namespace Math.B699.I13FiveSevenEdge

open Math.B699.I11FiveSevenScaled

def qEnvelope (m : ℕ) : ℚ := (9 * rateR / 2) * squareTerm m * qRatio ^ m
def eEnvelope (m : ℕ) : ℚ := (3 * rateR / 1600) * squareTerm m * eRatio ^ m
noncomputable def qFraction (m : ℕ) (row : Bool) : ℚ :=
  24 * |(qRow m row : ℚ)| / (25 : ℚ) ^ (11 * m)
noncomputable def eFraction (m : ℕ) (row : Bool) (Nq : ℚ) : ℚ :=
  Nq * |(rowError m row : ℚ)| / ((25 : ℚ) ^ (11 * m) * (49 : ℚ) ^ (11 * m))

theorem weighted_abs_le (g x T : ℚ) (hg : 0 < g) (h : g * |x| ≤ T) :
    |x| ≤ T / g := by
  exact (le_div_iff₀ hg).2 (by simpa only [mul_comm] using h)

theorem q_scaling_identity (m : ℕ) (hm : 1 ≤ m) :
    24 * ((((50 : ℚ) ^ 7 * qB) ^ m) / lowerG m) / (25 : ℚ) ^ (11 * m) =
      qEnvelope m := by
  have hr := ne_of_gt rateR_pos
  have hrp : rateR ^ (m - 1) ≠ 0 := pow_ne_zero _ hr
  have hs := ne_of_gt (squareTerm_pos m)
  have hp : (25 : ℚ) ^ (11 * m) ≠ 0 := pow_ne_zero _ (by norm_num)
  simp only [qEnvelope, qRatio, lowerG, div_pow, mul_pow, ← pow_mul]
  rw [rate_power_split m hm]
  field_simp [hr, hrp, hs, hp]
  <;> ring

theorem e_scaling_identity (m : ℕ) (hm : 1 ≤ m) :
    (((indexBase : ℚ) ^ m / 2) *
      ((50 : ℚ) ^ (4 * m - 1) * eB ^ m / lowerG m)) /
      ((25 : ℚ) ^ (11 * m) * (49 : ℚ) ^ (11 * m)) = eEnvelope m := by
  have hr := ne_of_gt rateR_pos
  have hrp : rateR ^ (m - 1) ≠ 0 := pow_ne_zero _ hr
  have hs := ne_of_gt (squareTerm_pos m)
  have hp : (25 : ℚ) ^ (11 * m) ≠ 0 := pow_ne_zero _ (by norm_num)
  have hq : (49 : ℚ) ^ (11 * m) ≠ 0 := pow_ne_zero _ (by norm_num)
  have hi : 4 * m - 1 + 1 = 4 * m := by omega
  have hy : (50 : ℚ) ^ (4 * m) = (50 : ℚ) ^ (4 * m - 1) * 50 := by
    simpa only [hi] using pow_succ (50 : ℚ) (4 * m - 1)
  simp only [eEnvelope, eRatio, lowerG, div_pow, mul_pow, ← pow_mul]
  rw [rate_power_split m hm, hy]
  field_simp [hr, hrp, hs, hp, hq]
  <;> ring

theorem qFraction_le_envelope (m : ℕ) (hm : 149 ≤ m) (row : Bool) :
    qFraction m row ≤ qEnvelope m := by
  have habs := weighted_abs_le (lowerG m) (qRow m row)
    (((50 : ℚ) ^ 7 * qB) ^ m) (lowerG_pos m) (q_row_weighted m hm row)
  calc
    qFraction m row ≤
        24 * ((((50 : ℚ) ^ 7 * qB) ^ m) / lowerG m) / (25 : ℚ) ^ (11 * m) :=
      div_le_div_of_nonneg_right (mul_le_mul_of_nonneg_left habs (by norm_num))
        (pow_nonneg (by norm_num) _)
    _ = qEnvelope m := q_scaling_identity m (by omega)

theorem eFraction_lt_envelope (Y Nq m : ℕ) (hm : 149 ≤ m) (row : Bool)
    (hN : Nq ≤ 2 * Y) (hZ : 4 * (Y : ℚ) < (indexBase : ℚ) ^ m) :
    eFraction m row (Nq : ℚ) < eEnvelope m := by
  have habs := weighted_abs_le (lowerG m) (rowError m row)
    ((50 : ℚ) ^ (4 * m - 1) * eB ^ m) (lowerG_pos m) (e_row_weighted m hm row)
  have hNQ : (Nq : ℚ) ≤ 2 * (Y : ℚ) := by exact_mod_cast hN
  have hn : (Nq : ℚ) < (indexBase : ℚ) ^ m / 2 := by linarith
  have hT : 0 < (50 : ℚ) ^ (4 * m - 1) * eB ^ m / lowerG m :=
    div_pos (mul_pos (pow_pos (by norm_num) _) (pow_pos eB_pos _)) (lowerG_pos m)
  have hden : 0 < (25 : ℚ) ^ (11 * m) * (49 : ℚ) ^ (11 * m) := by positivity
  calc
    eFraction m row (Nq : ℚ) ≤
        ((Nq : ℚ) * ((50 : ℚ) ^ (4 * m - 1) * eB ^ m / lowerG m)) /
          ((25 : ℚ) ^ (11 * m) * (49 : ℚ) ^ (11 * m)) :=
      div_le_div_of_nonneg_right
        (mul_le_mul_of_nonneg_left habs (Nat.cast_nonneg Nq)) hden.le
    _ < (((indexBase : ℚ) ^ m / 2) *
        ((50 : ℚ) ^ (4 * m - 1) * eB ^ m / lowerG m)) /
          ((25 : ℚ) ^ (11 * m) * (49 : ℚ) ^ (11 * m)) :=
      div_lt_div_of_pos_right (mul_lt_mul_of_pos_right hn hT) hden
    _ = eEnvelope m := e_scaling_identity m (by omega)

theorem qEnvelope_le_damp (m : ℕ) : qEnvelope m ≤ qDamp m := by
  exact mul_le_mul
    (mul_le_mul_of_nonneg_right q_coefficient_le (squareTerm_pos m).le)
    (pow_le_pow_left₀ qRatio_nonneg qRatio_le m)
    (pow_nonneg qRatio_nonneg m) (by have h := squareTerm_pos m; positivity)

theorem eEnvelope_le_damp (m : ℕ) : eEnvelope m ≤ eDamp m := by
  exact mul_le_mul
    (mul_le_mul_of_nonneg_right e_coefficient_le (squareTerm_pos m).le)
    (pow_le_pow_left₀ eRatio_nonneg eRatio_le m)
    (pow_nonneg eRatio_nonneg m) (by have h := squareTerm_pos m; positivity)

theorem actual_row_fractions_small (Y Nq m : ℕ) (hm : minIndex ≤ m) (row : Bool)
    (hN : Nq ≤ 2 * Y) (hZ : 4 * (Y : ℚ) < (indexBase : ℚ) ^ m) :
    qFraction m row + eFraction m row (Nq : ℚ) < 1 := by
  have hm149 : 149 ≤ m := by dsimp only [minIndex] at hm; omega
  have hq : qFraction m row < (1 / 4 : ℚ) :=
    (qFraction_le_envelope m hm149 row).trans_lt
      ((qEnvelope_le_damp m).trans_lt (qDamp_small m hm))
  have he : eFraction m row (Nq : ℚ) < (1 / 4 : ℚ) :=
    (eFraction_lt_envelope Y Nq m hm149 row hN hZ).trans_le
      ((eEnvelope_le_damp m).trans (eDamp_small m hm).le)
  linarith
end Math.B699.I13FiveSevenEdge

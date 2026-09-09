import research.tasks.«B686-Four».runs.«20260908-formalization-92c221».lean.quarter.IntegralErrorBounds

namespace B686QuarterRunge

noncomputable section

theorem quarter_threshold_estimates (s : ℕ) (hs : 1 ≤ s) (x : ℝ)
    (hx : 2 * (4 * (s : ℝ)) ^ (s + 1) ≤ x) :
    (4 * (s : ℝ) + 1) ^ 2 < x ^ 2 ∧ 2 * quarterErrorIntegral s (x ^ 2) < 1 := by
  have hsreal : (1 : ℝ) ≤ s := by exact_mod_cast hs
  have hk : 1 ≤ 4 * (s : ℝ) := by linarith
  have hkpos : 0 < 4 * (s : ℝ) := by linarith
  have hb : 4 * (s : ℝ) ≤ (4 * (s : ℝ)) ^ (s + 1) := by
    simpa only [pow_one] using (pow_le_pow_right₀ hk (by omega : 1 ≤ s + 1))
  have hxpos : 0 < x := by linarith
  have hroot : (4 * (s : ℝ) + 1) ^ 2 < x ^ 2 := by nlinarith
  have hdomain : (4 * (s : ℝ)) ^ 2 < x ^ 2 := by nlinarith
  have hsq := pow_le_pow_left₀ (by positivity : 0 ≤ 2 * (4 * (s : ℝ)) ^ (s + 1)) hx 2
  have hpower : ((4 * (s : ℝ)) ^ (s + 1)) ^ 2 = (4 * (s : ℝ)) ^ (2 * s + 2) := by
    rw [← pow_mul]
    congr 1
    omega
  rw [mul_pow, hpower] at hsq
  have hsmall : (4 * (s : ℝ)) ^ 2 ≤ (4 * (s : ℝ)) ^ (2 * s + 2) :=
    pow_le_pow_right₀ hk (by omega)
  have hpos := pow_pos hkpos (2 * s + 2)
  have hden : 0 < x ^ 2 - (4 * (s : ℝ)) ^ 2 := by linarith
  have hfrac : 2 * ((4 * (s : ℝ)) ^ (2 * s + 2) /
      (x ^ 2 - (4 * (s : ℝ)) ^ 2)) < 1 := by
    rw [← mul_div_assoc, div_lt_iff₀ hden]
    nlinarith
  refine ⟨hroot, ?_⟩
  exact (mul_le_mul_of_nonneg_left (quarterErrorIntegral_le s hs (x ^ 2) hdomain)
    (by norm_num : (0 : ℝ) ≤ 2)).trans_lt hfrac

end

end B686QuarterRunge

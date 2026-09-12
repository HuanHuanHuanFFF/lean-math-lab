import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11DivisorTwoFive.Bounds
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Growth.ElementaryRate

/-!
UNCOMPILED. All four actual tracks feed the accepted sequence lemmas.
The final qContent statement has no G, divisor-step, asymptotic or height premise.
-/
set_option autoImplicit false
set_option relaxedAutoImplicit false
namespace Math.B699.I11DivisorTwoFive
open Math.B699.ElementaryRate Math.B699.RationalFactorialDivisor
open Math.B699.PadeConstruction

def normalized (t : Track) (k : ℕ) : ℚ :=
  divisor t k / (targetBase ^ (4 * rho t) * targetRate ^ k)

theorem normalized_pos (t : Track) (k : ℕ) : 0 < normalized t k :=
  div_pos (divisor_pos t k)
    (mul_pos (pow_pos target_base_pos _) (pow_pos target_rate_pos _))

theorem normalized_rough_step (t : Track) (k : ℕ) (hk : kMin t ≤ k) :
    normalized t k * (1 * (((k : ℚ) + 1) / ((k : ℚ) + 2)) ^ 2) ≤
      normalized t (k + 1) := by
  have hcoef := mul_le_mul_of_nonneg_right target_rate_le_infinite
    (sq_nonneg ((((k : ℚ) + 1) / ((k : ℚ) + 2))))
  have hstep : divisor t k *
      (targetRate * (((k : ℚ) + 1) / ((k : ℚ) + 2)) ^ 2) ≤ divisor t (k + 1) :=
    (mul_le_mul_of_nonneg_left hcoef (divisor_pos t k).le).trans
      (divisor_rough_step t k hk)
  have ht : targetRate ≠ 0 := ne_of_gt target_rate_pos
  have hp : targetRate ^ k ≠ 0 := pow_ne_zero _ ht
  have hs : targetBase ^ (4 * rho t) ≠ 0 :=
    pow_ne_zero _ (ne_of_gt target_base_pos)
  have hd : (k : ℚ) + 2 ≠ 0 := by positivity
  calc
    _ = (divisor t k * (targetRate * (((k : ℚ) + 1) / ((k : ℚ) + 2)) ^ 2)) /
        (targetBase ^ (4 * rho t) * targetRate ^ (k + 1)) := by
      unfold normalized
      rw [pow_succ targetRate k]
      field_simp [ht, hp, hs, hd]
      <;> ring
    _ ≤ divisor t (k + 1) / (targetBase ^ (4 * rho t) * targetRate ^ (k + 1)) :=
      div_le_div_of_nonneg_right hstep
        (mul_pos (pow_pos target_base_pos _) (pow_pos target_rate_pos _)).le
    _ = normalized t (k + 1) := rfl

theorem normalized_middle_step (t : Track) (k : ℕ) (hk : cutoff t ≤ k) :
    normalized t k * blockRatio ≤ normalized t (k + 1) := by
  have ht : targetRate ≠ 0 := ne_of_gt target_rate_pos
  have hp : targetRate ^ k ≠ 0 := pow_ne_zero _ ht
  have hs : targetBase ^ (4 * rho t) ≠ 0 :=
    pow_ne_zero _ (ne_of_gt target_base_pos)
  calc
    _ = (divisor t k * middleRate) /
        (targetBase ^ (4 * rho t) * targetRate ^ (k + 1)) := by
      unfold normalized blockRatio
      rw [pow_succ targetRate k]
      field_simp [ht, hp, hs]
      <;> ring
    _ ≤ divisor t (k + 1) / (targetBase ^ (4 * rho t) * targetRate ^ (k + 1)) :=
      div_le_div_of_nonneg_right (divisor_middle_step t k hk)
        (mul_pos (pow_pos target_base_pos _) (pow_pos target_rate_pos _)).le
    _ = normalized t (k + 1) := rfl

/-- The only direct evaluations use the actual four small initial values. -/
theorem finite_binary_base (t : Track) :
    1 ≤ (normalized t (kMin t) * ((kMin t : ℚ) + 1) ^ 2 /
      ((cutoff t : ℚ) + 1) ^ 2) * (2 : ℚ) ^ loss t := by
  rw [normalized, divisor_initial]
  cases t <;> norm_num [initialValue, kMin, cutoff, loss, rho, targetRate, targetBase]

theorem normalized_binary_base (t : Track) :
    1 ≤ normalized t (cutoff t) * (2 : ℚ) ^ loss t := by
  have hstart := cutoff_ge_kMin t
  have hindex : kMin t + (cutoff t - kMin t) = cutoff t := by omega
  have h := lower_telescoping_from_step (F := normalized t) (R := 1) (k0 := kMin t)
    (by norm_num) (fun k hk => normalized_rough_step t k hk) (cutoff t - kMin t)
  have htel : normalized t (kMin t) * ((kMin t : ℚ) + 1) ^ 2 /
      ((cutoff t : ℚ) + 1) ^ 2 ≤ normalized t (cutoff t) := by
    simpa only [one_pow, mul_one, hindex] using h
  exact (finite_binary_base t).trans
    (mul_le_mul_of_nonneg_right htel (by positivity))

theorem normalized_gt_one (t : Track) (k : ℕ)
    (hk : cutoff t + 5 * (loss t + 1) ≤ k) : 1 < normalized t k := by
  have hn : 5 * (loss t + 1) ≤ k - cutoff t := by omega
  have h := strict_threshold_from_step (F := normalized t) (R := blockRatio)
    (K := cutoff t) (T := loss t) (B := 5) (n := k - cutoff t)
    block_ratio_ge_one (normalized_pos t (cutoff t)).le
    (fun j hj => normalized_middle_step t j hj)
    (normalized_binary_base t) block_linear_bound hn
  have hindex : cutoff t + (k - cutoff t) = k := by omega
  simpa only [hindex] using h

theorem divisor_lower (t : Track) (k : ℕ)
    (hk : cutoff t + 5 * (loss t + 1) ≤ k) :
    targetBase ^ (4 * (2 * k + rho t)) < divisor t k := by
  have h := normalized_gt_one t k hk
  change 1 < divisor t k / (targetBase ^ (4 * rho t) * targetRate ^ k) at h
  have hmul := (lt_div_iff₀
    (mul_pos (pow_pos target_base_pos _) (pow_pos target_rate_pos _))).mp h
  have hden : targetBase ^ (4 * rho t) * targetRate ^ k =
      targetBase ^ (4 * (2 * k + rho t)) := by
    rw [targetRate, ← pow_mul, ← pow_add]
    congr 1
    ring
  simpa only [one_mul, hden] using hmul

theorem threshold_from_large_m (t : Track) (k : ℕ) (hm : 141 ≤ 2 * k + rho t) :
    cutoff t + 5 * (loss t + 1) ≤ k := by
  cases t <;> simp only [rho, cutoff, loss] at * <;> omega

/-- Both delta values and both parity classes are covered, including odd m=141. -/
theorem source_track (d m : ℕ) (hd : d = 0 ∨ d = 1) (hm : 1 ≤ m) :
    ∃ t : Track, ∃ k : ℕ, kMin t ≤ k ∧ d = delta t ∧ m = 2 * k + rho t := by
  have hmod : m % 2 = 0 ∨ m % 2 = 1 := by omega
  have hdiv := Nat.mod_add_div m 2
  rcases hd with rfl | rfl
  · rcases hmod with hz | ho
    · refine ⟨.evenZero, m / 2, ?_, rfl, ?_⟩ <;> simp only [kMin, rho] <;> omega
    · refine ⟨.oddZero, m / 2, ?_, rfl, ?_⟩ <;> simp only [kMin, rho] <;> omega
  · rcases hmod with hz | ho
    · refine ⟨.evenOne, m / 2, ?_, rfl, ?_⟩ <;> simp only [kMin, rho] <;> omega
    · refine ⟨.oddOne, m / 2, ?_, rfl, ?_⟩ <;> simp only [kMin, rho] <;> omega

theorem rationalDivisor_two_five_lower (d m : ℕ)
    (hd : d = 0 ∨ d = 1) (hm : 141 ≤ m) :
    (602791 / 500000 : ℚ) ^ (4 * m) <
      rationalDivisor (4 * m - d) (m + d - 1) := by
  obtain ⟨t, k, _hk, hdrep, hmrep⟩ := source_track d m hd (by omega)
  have hlarge : 141 ≤ 2 * k + rho t := by omega
  have h := divisor_lower t k (threshold_from_large_m t k hlarge)
  rw [divisor_eq_actual] at h
  change targetBase ^ (4 * m) < rationalDivisor (4 * m - d) (m + d - 1)
  rw [hdrep, hmrep]
  exact h

/-- Actual finite-gcd qContent, with no G, recurrence, growth or height assumption. -/
theorem qContent_two_five_lower (d m : ℕ)
    (hd : d = 0 ∨ d = 1) (hm : 141 ≤ m) :
    (602791 / 500000 : ℚ) ^ (4 * m) <
      (qContent (4 * m - d) (m + d - 1) (4 * m - d) : ℚ) := by
  exact (rationalDivisor_two_five_lower d m hd hm).trans_le
    (rationalDivisor_le_qContent (4 * m - d) (m + d - 1))

theorem qContent_upper_row_lower (m : ℕ) (hm : 141 ≤ m) :
    (602791 / 500000 : ℚ) ^ (4 * m) < (qContent (4 * m) (m - 1) (4 * m) : ℚ) := by
  simpa only [Nat.sub_zero, Nat.add_zero] using
    qContent_two_five_lower 0 m (Or.inl rfl) hm

theorem qContent_adjacent_row_lower (m : ℕ) (hm : 141 ≤ m) :
    (602791 / 500000 : ℚ) ^ (4 * m) < (qContent (4 * m - 1) m (4 * m - 1) : ℚ) := by
  simpa only [Nat.add_sub_cancel] using
    qContent_two_five_lower 1 m (Or.inr rfl) hm

end Math.B699.I11DivisorTwoFive

import research.tasks.«B686-Four».runs.«20260908-formalization-92c221».lean.quarter.RealError
import research.tasks.«B686-Four».runs.«20260908-formalization-92c221».lean.quarter.NumericalBound

/-! Full quarter Runge consumers for the original product. The only hypotheses
are the length, strict ordering, and original equation. -/

namespace B686QuarterRunge

open Finset Polynomial B686CenteredRunge

noncomputable section

theorem centered_not_four_above_threshold (s : ℕ) (hs : 1 ≤ s) (x y : ℤ)
    (hx : 2 * (4 * (s : ℝ)) ^ (s + 1) ≤ (x : ℝ)) (hxy : x < y) :
    centeredProduct (2 * s) y ≠ 4 * centeredProduct (2 * s) x := by
  intro heq
  have hest := quarter_threshold_estimates s hs (x : ℝ) hx
  have hxpos : (0 : ℝ) < x := lt_of_lt_of_le (by positivity) hx
  have hxyreal : (x : ℝ) < y := by exact_mod_cast hxy
  have hsq : (x : ℝ) ^ 2 < (y : ℝ) ^ 2 := by nlinarith
  have hxroot : rootLocations (2 * s) < (x : ℝ) ^ 2 := by
    convert hest.1 using 1 <;> simp [rootLocations] <;> ring
  have hyroot := hxroot.trans hsq
  have hxdomain : (4 * (s : ℝ)) ^ 2 < (x : ℝ) ^ 2 := by
    nlinarith [Nat.cast_nonneg (α := ℝ) s]
  have hydomain := hxdomain.trans hsq
  have hqx := quarterPolynomial_eval_eq_density_add_error s hs (x ^ 2)
    (by simpa only [Int.cast_pow] using hxroot)
  have hqy := quarterPolynomial_eval_eq_density_add_error s hs (y ^ 2)
    (by simpa only [Int.cast_pow] using hyroot)
  simp only [Int.cast_pow] at hqx hqy
  have hdensity := rootDensity_scale_four s x y heq
  let H : ℤ := (quarterPolynomial s).eval (y ^ 2) - 2 * (quarterPolynomial s).eval (x ^ 2)
  have hidentity : (H : ℝ) = quarterErrorIntegral s ((y : ℝ) ^ 2) -
      2 * quarterErrorIntegral s ((x : ℝ) ^ 2) := by
    dsimp [H]
    push_cast
    rw [hqx, hqy, hdensity]
    ring
  have hposx := quarterErrorIntegral_pos s hs ((x : ℝ) ^ 2) hxdomain
  have hposy := quarterErrorIntegral_pos s hs ((y : ℝ) ^ 2) hydomain
  have hdec := quarterErrorIntegral_strictAnti s hs ((x : ℝ) ^ 2) ((y : ℝ) ^ 2) hxdomain hsq
  have hHneg : (H : ℝ) < 0 := by rw [hidentity]; linarith
  have hHlo : (-1 : ℝ) < H := by rw [hidentity]; linarith [hest.2]
  have hHneg' : H < 0 := by exact_mod_cast hHneg
  have hHlo' : -1 < H := by exact_mod_cast hHlo
  omega

theorem n_lt_explicit_bound (s n m : ℕ) (hs : 1 ≤ s) (hnm : n < m)
    (heq : product (4 * s) m = 4 * product (4 * s) n) :
    n < 2 ^ s * (4 * s) ^ (s + 1) := by
  by_contra hnot
  have hn : 2 ^ s * (4 * s) ^ (s + 1) ≤ n := by omega
  have hnreal : (2 : ℝ) ^ s * (4 * (s : ℝ)) ^ (s + 1) ≤ n := by exact_mod_cast hn
  have hpow : (1 : ℝ) ≤ 2 ^ s := one_le_pow₀ (by norm_num)
  have hbase : (4 * (s : ℝ)) ^ (s + 1) ≤ (n : ℝ) := by
    calc
      _ = 1 * (4 * (s : ℝ)) ^ (s + 1) := by ring
      _ ≤ (2 : ℝ) ^ s * (4 * (s : ℝ)) ^ (s + 1) :=
        mul_le_mul_of_nonneg_right hpow (by positivity)
      _ ≤ _ := hnreal
  have hx : 2 * (4 * (s : ℝ)) ^ (s + 1) ≤
      ((2 * (n : ℤ) + 2 * (2 * s) + 1 : ℤ) : ℝ) := by
    push_cast
    linarith [Nat.cast_nonneg (α := ℝ) s]
  have hxy : 2 * (n : ℤ) + 2 * (2 * s) + 1 < 2 * (m : ℤ) + 2 * (2 * s) + 1 := by
    have hcast : (n : ℤ) < m := by exact_mod_cast hnm
    linarith
  exact centered_not_four_above_threshold s hs _ _ hx hxy
    (centered_equation_of_original (2 * s) n m (by simpa [show 2 * (2 * s) = 4 * s by omega] using heq))

theorem n_add_k_lt_explicit_bound (s n m : ℕ) (hs : 1 ≤ s) (hnm : n < m)
    (heq : product (4 * s) m = 4 * product (4 * s) n) :
    n + 4 * s < 2 ^ (s + 1) * (4 * s) ^ (s + 1) := by
  have hn := n_lt_explicit_bound s n m hs hnm heq
  have hk : 1 ≤ 4 * s := by omega
  have hb : 4 * s ≤ (4 * s) ^ (s + 1) := by
    simpa only [pow_one] using (pow_le_pow_right₀ hk (by omega : 1 ≤ s + 1))
  have hp : 1 ≤ (2 : ℕ) ^ s := one_le_pow₀ (by omega)
  have hN : 4 * s ≤ 2 ^ s * (4 * s) ^ (s + 1) := by
    exact hb.trans (by simpa only [one_mul] using
      mul_le_mul_of_nonneg_right hp (Nat.zero_le ((4 * s) ^ (s + 1))))
  rw [pow_succ]
  nlinarith

theorem original_product_consumers (s n m : ℕ) (hs : 1 ≤ s) (hnm : n < m)
    (heq : (∏ i ∈ Icc 1 (4 * s), (m + i)) = 4 * (∏ i ∈ Icc 1 (4 * s), (n + i))) :
    n < 2 ^ s * (4 * s) ^ (s + 1) ∧
      n + 4 * s < 2 ^ (s + 1) * (4 * s) ^ (s + 1) :=
  ⟨n_lt_explicit_bound s n m hs hnm heq,
    n_add_k_lt_explicit_bound s n m hs hnm heq⟩

theorem four_dvd_product_consumers (k n m : ℕ) (hk : 4 ≤ k) (hfour : 4 ∣ k)
    (hnm : n < m)
    (heq : (∏ i ∈ Icc 1 k, (m + i)) = 4 * (∏ i ∈ Icc 1 k, (n + i))) :
    n < 2 ^ (k / 4) * k ^ (k / 4 + 1) ∧
      n + k < 2 ^ (k / 4 + 1) * k ^ (k / 4 + 1) := by
  obtain ⟨s, rfl⟩ := hfour
  have hs : 1 ≤ s := by omega
  simpa using original_product_consumers s n m hs hnm heq

end

end B686QuarterRunge

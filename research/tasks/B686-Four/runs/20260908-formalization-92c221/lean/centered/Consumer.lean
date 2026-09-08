import research.tasks.«B686-Four».runs.«20260908-formalization-92c221».lean.centered.ErrorPolynomial
import research.tasks.«B686-Four».runs.«20260908-formalization-92c221».lean.centered.CoefficientBounds
import research.tasks.«B686-Four».runs.«20260908-formalization-92c221».lean.centered.NumericalControl

/-!
The all-even centered Runge height bound, with exactly the natural-number
hypotheses of B686 / Four.  No auxiliary construction or error estimate is a
hypothesis of the final consumers.
-/

namespace B686CenteredRunge

open Finset Polynomial

noncomputable section

theorem threshold_estimates (C B k L t : ℤ) (r : ℕ)
    (hC : 0 ≤ C) (hCB : C ≤ B) (hB : 1 ≤ B) (hk : 1 ≤ k) (hL : 1 ≤ L)
    (ht : 32 * B * k ^ (r + 1) ≤ t) :
    2 * k ≤ t ∧ 16 * C * k ≤ L * t ∧
      16 * B * k ^ (2 * r) ≤ t ^ 2 ∧ 48 * B * k ^ (r + 1) < 7 * L * t := by
  have hk0 : 0 ≤ k := by omega
  have hkpow : k ≤ k ^ (r + 1) := le_self_pow₀ hk (by omega)
  have hkp : 1 ≤ k ^ r := one_le_pow₀ hk
  have hkp' : 1 ≤ k ^ (r + 1) := one_le_pow₀ hk
  have hBkp : k ^ (r + 1) ≤ B * k ^ (r + 1) := by
    have h := mul_le_mul_of_nonneg_right hB (by positivity : 0 ≤ k ^ (r + 1))
    simpa using h
  have htpos : 0 < t := by nlinarith
  have hLt : t ≤ L * t := by
    have h := mul_le_mul_of_nonneg_right hL htpos.le
    simpa using h
  have hCk : C * k ≤ B * k ^ (r + 1) :=
    mul_le_mul hCB hkpow hk0 (by omega)
  have htweak : 4 * B * k ^ r ≤ t := by
    have hp : k ^ r ≤ k ^ (r + 1) := pow_le_pow_right₀ hk (by omega)
    have hm := mul_le_mul_of_nonneg_left hp (by omega : 0 ≤ B)
    nlinarith
  have htsq := pow_le_pow_left₀ (show 0 ≤ 4 * B * k ^ r by positivity) htweak 2
  have hBsq : B ≤ B ^ 2 := by nlinarith
  have hBsq' := mul_le_mul_of_nonneg_right hBsq (sq_nonneg (k ^ r))
  have hkp2 : k ^ (2 * r) = (k ^ r) ^ 2 := by rw [mul_comm 2 r, pow_mul]
  refine ⟨by nlinarith, by nlinarith, ?_, by nlinarith⟩
  rw [hkp2]
  nlinarith only [htsq, hBsq']

theorem oddRoots_bound (r : ℕ) : ∀ i < r, |oddRoots i| ≤ (2 * r : ℤ) := by
  intro i hi
  rw [oddRoots, abs_of_nonneg (by positivity)]
  omega

theorem radicand_odd_eval (r : ℕ) (t : ℤ) :
    (radicand oddRoots r).eval t = centeredProduct r t := by
  simp [radicand, centeredProduct, oddRoots, eval_prod]

theorem centered_valueControl (r : ℕ) (hr : 1 ≤ r) (t : ℤ)
    (ht : 32 * 2 ^ (8 * r) * (2 * r : ℤ) ^ (r + 1) ≤ t) :
    ValueControl r (errorPolynomial oddRoots r).natDegree (2 ^ r)
      (errorPolynomial oddRoots r).leadingCoeff t
      ((rootPolynomial oddRoots r).eval t) ((errorPolynomial oddRoots r).eval t) := by
  have hCB : (2 : ℤ) ^ (2 * r + r / 2) ≤ 2 ^ (8 * r) :=
    pow_le_pow_right₀ (by norm_num) (by omega)
  obtain ⟨htk, hsizeA, hsizeE, hgap⟩ := threshold_estimates
    (2 ^ (2 * r + r / 2)) (2 ^ (8 * r)) (2 * r) (2 ^ r) t r
    (by positivity) hCB (one_le_pow₀ (by norm_num)) (by omega)
    (one_le_pow₀ (by norm_num)) ht
  apply valueControl_of_coeff_bounds (rootPolynomial oddRoots r) (errorPolynomial oddRoots r)
    (2 ^ (2 * r + r / 2)) (2 ^ (8 * r)) (2 * r) (2 ^ r) t r hr
    (by positivity) (by positivity) (by omega) (one_le_pow₀ (by norm_num)) htk
    (rootPolynomial_degree oddRoots r) (rootPolynomial_leadingCoeff oddRoots r)
    (fun i hi => errorPolynomial_coeff_bound oddRoots (2 * r) (by positivity)
      r i hr (oddRoots_bound r) hi)
    (fun i hi => rootPolynomial_coeff_bound oddRoots (2 * r) (by positivity)
      r i (oddRoots_bound r) hi)
    (errorPolynomial_odd_ne_zero r hr) (errorPolynomial_degree oddRoots r hr)
    (errorPolynomial_even oddRoots r) hsizeA hsizeE hgap

theorem centered_not_four_above_threshold (r : ℕ) (hr : 1 ≤ r) (x y : ℤ)
    (hx : 32 * 2 ^ (8 * r) * (2 * r : ℤ) ^ (r + 1) ≤ x) (hxy : x ≤ y) :
    centeredProduct r y ≠ 4 * centeredProduct r x := by
  have hpos : 0 < x := by
    have hp : 0 < (32 : ℤ) * 2 ^ (8 * r) * (2 * r : ℤ) ^ (r + 1) := by positivity
    omega
  have hid (t : ℤ) : (rootPolynomial oddRoots r).eval t ^ 2 =
      (2 ^ r) ^ 2 * centeredProduct r t + (errorPolynomial oddRoots r).eval t := by
    simp only [errorPolynomial, eval_sub, eval_pow, eval_mul, eval_C, radicand_odd_eval]
    have hp : ((2 : ℤ) ^ r) ^ 2 = 2 ^ (2 * r) := by rw [← pow_mul, mul_comm r 2]
    rw [hp]
    ring
  exact incompatible_centered_values r (errorPolynomial oddRoots r).natDegree
    (2 ^ r) (errorPolynomial oddRoots r).leadingCoeff x y
    ((rootPolynomial oddRoots r).eval x) ((rootPolynomial oddRoots r).eval y)
    ((errorPolynomial oddRoots r).eval x) ((errorPolynomial oddRoots r).eval y)
    (by positivity) (leadingCoeff_ne_zero.mpr (errorPolynomial_odd_ne_zero r hr))
    hpos hxy (errorPolynomial_degree oddRoots r hr).le
    (centered_valueControl r hr x hx) (centered_valueControl r hr y (hx.trans hxy))
    (hid x) (hid y)

/-- The explicit height bound for every positive even length. -/
theorem n_lt_explicit_bound (k n m : ℕ) (hk : 2 ≤ k) (heven : Even k)
    (hsep : n + k ≤ m) (heq : product k m = 4 * product k n) :
    n < 16 * 2 ^ (4 * k) * k ^ (k / 2 + 1) := by
  obtain ⟨r, hkr⟩ := heven
  have hkr' : k = 2 * r := by omega
  subst k
  rw [hkr'] at hk hsep heq ⊢
  have hr : 1 ≤ r := by omega
  have hrdiv : 2 * r / 2 = r := by omega
  rw [hrdiv]
  by_contra hn
  have hnn : 16 * 2 ^ (4 * (2 * r)) * (2 * r) ^ (r + 1) ≤ n := by omega
  have hx : 32 * 2 ^ (8 * r) * (2 * r : ℤ) ^ (r + 1) ≤
      2 * (n : ℤ) + 2 * r + 1 := by
    have hnn' : (16 : ℤ) * 2 ^ (8 * r) * (2 * r : ℤ) ^ (r + 1) ≤ n := by
      have hh : 4 * (2 * r) = 8 * r := by omega
      rw [hh] at hnn
      exact_mod_cast hnn
    nlinarith
  have hxy : 2 * (n : ℤ) + 2 * r + 1 ≤ 2 * (m : ℤ) + 2 * r + 1 := by omega
  exact centered_not_four_above_threshold r hr _ _ hx hxy
    (centered_equation_of_original r n m heq)

/-- The upper endpoint consumer, with the same original hypotheses. -/
theorem n_add_k_lt_explicit_bound (k n m : ℕ) (hk : 2 ≤ k) (heven : Even k)
    (hsep : n + k ≤ m) (heq : product k m = 4 * product k n) :
    n + k < 20 * 2 ^ (4 * k) * k ^ (k / 2 + 1) := by
  have hn := n_lt_explicit_bound k n m hk heven hsep heq
  have hkp : k ≤ k ^ (k / 2 + 1) := le_self_pow₀ (by omega) (by omega)
  have hB : 1 ≤ 2 ^ (4 * k) := one_le_pow₀ (by omega)
  have hmul := Nat.mul_le_mul_right (k ^ (k / 2 + 1)) hB
  have hk' : k ≤ 4 * 2 ^ (4 * k) * k ^ (k / 2 + 1) := by nlinarith
  nlinarith

/-- Direct original notation, preventing accidental use of an altered product convention. -/
theorem original_product_consumers (k n m : ℕ) (hk : 2 ≤ k) (heven : Even k)
    (hsep : n + k ≤ m)
    (heq : (∏ i ∈ Icc 1 k, (m + i)) = 4 * ∏ i ∈ Icc 1 k, (n + i)) :
    n < 16 * 2 ^ (4 * k) * k ^ (k / 2 + 1) ∧
      n + k < 20 * 2 ^ (4 * k) * k ^ (k / 2 + 1) :=
  ⟨n_lt_explicit_bound k n m hk heven hsep heq,
    n_add_k_lt_explicit_bound k n m hk heven hsep heq⟩

end

end B686CenteredRunge

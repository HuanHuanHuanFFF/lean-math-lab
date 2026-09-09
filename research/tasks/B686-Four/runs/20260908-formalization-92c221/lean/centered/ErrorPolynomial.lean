import research.tasks.«B686-Four».runs.«20260908-formalization-92c221».lean.centered.RootPolynomial
import Mathlib.Algebra.Polynomial.Derivative

namespace B686CenteredRunge

open Finset Polynomial

noncomputable section

theorem reflect_expand_two (p : ℤ[X]) (r : ℕ) :
    reflect (2 * r) (expand ℤ 2 p) = expand ℤ 2 (reflect r p) := by
  ext h
  have heven : 2 ∣ revAt (2 * r) h ↔ 2 ∣ h := by
    by_cases hh : h ≤ 2 * r
    · rw [revAt_le hh]
      omega
    · rw [revAt_eq_self_of_lt (by omega)]
  have hhalf (he : 2 ∣ h) : revAt (2 * r) h / 2 = revAt r (h / 2) := by
    by_cases hh : h ≤ 2 * r
    · rw [revAt_le hh, revAt_le (by omega : h / 2 ≤ r)]
      omega
    · rw [revAt_eq_self_of_lt (by omega), revAt_eq_self_of_lt (by omega : r < h / 2)]
  simp only [coeff_reflect, coeff_expand (by norm_num : 0 < 2), heven]
  split_ifs with he
  · rw [hhalf he]
  · rfl

theorem reflect_reversedRadicand (a : ℕ → ℤ) (r : ℕ) :
    reflect r (reversedRadicand a r) =
      ∏ i ∈ range r, (X - C (4 * a i ^ 2)) := by
  induction r with
  | zero => simp [reversedRadicand]
  | succ r ih =>
    rw [reversedRadicand, prod_range_succ]
    change reflect (r + 1) (reversedRadicand a r * (1 - C (4 * a r ^ 2) * X)) = _
    have hf : (1 - C (4 * a r ^ 2) * X).natDegree ≤ 1 := by
      have hm : (C (4 * a r ^ 2) * X).natDegree ≤ 1 := by
        simpa only [pow_one] using natDegree_C_mul_X_pow_le (4 * a r ^ 2) 1
      exact (natDegree_sub_le _ _).trans (max_le (by simp) hm)
    rw [reflect_mul _ _ (reversedRadicand_degree a r) hf, ih, prod_range_succ]
    rw [reflect_sub, reflect_one, reflect_C_mul, reflect_one_X]
    simp only [pow_one, mul_one]

theorem scaled_reflected_radicand (a : ℕ → ℤ) (r : ℕ) :
    (expand ℤ 2 (reflect r (reversedRadicand a r))).comp (C 2 * X) =
      C (2 ^ (2 * r)) * radicand a r := by
  rw [reflect_reversedRadicand, map_prod, Polynomial.prod_comp]
  have hf (i : ℕ) :
      (expand ℤ 2 (X - C (4 * a i ^ 2))).comp (C 2 * X) =
        C 4 * (X ^ 2 - C (a i ^ 2)) := by
    simp only [map_sub, expand_X, expand_C, sub_comp, pow_comp, X_comp, C_comp]
    simp only [map_mul, map_pow, map_ofNat]
    ring
  simp_rw [hf]
  rw [prod_mul_distrib]
  simp only [prod_const, card_range]
  rw [← map_pow]
  have hp : (4 : ℤ) ^ r = 2 ^ (2 * r) := by rw [pow_mul]; norm_num
  rw [hp]
  rfl

theorem errorPolynomial_reflected (a : ℕ → ℤ) (r : ℕ) :
    errorPolynomial a r =
      (expand ℤ 2 (reflect r (rootTruncation a r ^ 2 - reversedRadicand a r))).comp
        (C 2 * X) := by
  have hs : rootPolynomial a r ^ 2 =
      (expand ℤ 2 (reflect r (rootTruncation a r ^ 2))).comp (C 2 * X) := by
    rw [rootPolynomial, ← pow_comp, ← reflect_expand_two]
    have h := rootTruncation_expand_degree a r
    rw [show 2 * r = r + r by omega, map_pow]
    simp only [pow_two, reflect_mul _ _ h h]
  rw [errorPolynomial, hs, ← scaled_reflected_radicand]
  simp only [reflect_sub, map_sub, sub_comp]

theorem truncation_error_degree (a : ℕ → ℤ) (r : ℕ) :
    (rootTruncation a r ^ 2 - reversedRadicand a r).natDegree ≤ r := by
  have hD : (rootTruncation a r ^ 2).natDegree ≤ r := by
    rw [natDegree_pow]
    have h := rootTruncation_degree a r
    omega
  exact (natDegree_sub_le _ _).trans (max_le hD (reversedRadicand_degree a r))

theorem reflected_error_degree (a : ℕ → ℤ) (r : ℕ) (hr : 1 ≤ r) :
    (reflect r (rootTruncation a r ^ 2 - reversedRadicand a r)).natDegree ≤
      r - (r / 2 + 1) := by
  apply natDegree_le_iff_coeff_eq_zero.mpr
  intro i hi
  rw [coeff_reflect]
  by_cases hir : i ≤ r
  · rw [revAt_le hir, coeff_sub, rootTruncation_sq_coeff a r (r - i) (by omega)]
    exact sub_self _
  · rw [revAt_eq_self_of_lt (by omega)]
    exact coeff_eq_zero_of_natDegree_lt ((truncation_error_degree a r).trans_lt (by omega))

theorem errorPolynomial_degree (a : ℕ → ℤ) (r : ℕ) (hr : 1 ≤ r) :
    (errorPolynomial a r).natDegree < r := by
  rw [errorPolynomial_reflected]
  have hrE := reflected_error_degree a r hr
  have hexp : (expand ℤ 2 (reflect r
      (rootTruncation a r ^ 2 - reversedRadicand a r))).natDegree < r := by
    rw [natDegree_expand]
    omega
  have hc := natDegree_comp_le (p := expand ℤ 2
    (reflect r (rootTruncation a r ^ 2 - reversedRadicand a r))) (q := C 2 * X)
  exact hc.trans_lt (by simpa using hexp)

theorem errorPolynomial_even (a : ℕ → ℤ) (r i : ℕ) (hi : ¬Even i) :
    (errorPolynomial a r).coeff i = 0 := by
  have hn : ¬2 ∣ i := fun h => hi (even_iff_two_dvd.mpr h)
  rw [errorPolynomial_reflected, comp_C_mul_X_coeff, coeff_expand (by norm_num : 0 < 2),
    if_neg hn, zero_mul]

/-- A simple root rules out a polynomial square, including a nonzero constant scale. -/
theorem square_sub_scaled_ne_zero (A R : ℤ[X]) (c x : ℤ) (hc : c ≠ 0)
    (hroot : R.eval x = 0) (hsimple : R.derivative.eval x ≠ 0) :
    A ^ 2 - C c * R ≠ 0 := by
  intro hzero
  have hid : A ^ 2 = C c * R := sub_eq_zero.mp hzero
  have hval := congrArg (fun p : ℤ[X] => p.eval x) hid
  simp only [eval_pow, eval_mul, eval_C, hroot, mul_zero] at hval
  have hAval : A.eval x = 0 := by nlinarith [sq_nonneg (A.eval x)]
  have hder := congrArg (fun p : ℤ[X] => p.derivative.eval x) hid
  simp only [derivative_pow, derivative_mul, derivative_C, zero_mul, zero_add,
    eval_mul, eval_C, eval_pow, hAval, pow_one, mul_zero, zero_mul] at hder
  norm_num at hder
  exact hder.elim hc hsimple

def oddRoots (i : ℕ) : ℤ := 2 * i + 1

theorem radicand_odd_first_factor (r : ℕ) :
    radicand oddRoots (r + 1) =
      (X ^ 2 - 1) * ∏ i ∈ range r, (X ^ 2 - C ((2 * (i : ℤ) + 3) ^ 2)) := by
  rw [radicand, prod_range_succ']
  simp only [oddRoots, Nat.cast_zero, mul_zero, zero_add, one_pow, C_1]
  rw [mul_comm]
  apply congrArg ((X ^ 2 - 1) * ·)
  apply prod_congr rfl
  intro i hi
  push_cast
  congr 2

theorem radicand_odd_simple_root (r : ℕ) (hr : 1 ≤ r) :
    (radicand oddRoots r).eval 1 = 0 ∧
      (radicand oddRoots r).derivative.eval 1 ≠ 0 := by
  obtain ⟨r, rfl⟩ := Nat.exists_eq_succ_of_ne_zero (by omega : r ≠ 0)
  rw [radicand_odd_first_factor]
  constructor
  · simp
  · simp only [derivative_mul, derivative_sub, derivative_pow, derivative_X, derivative_one,
      mul_one, sub_zero, eval_add, eval_mul, eval_sub, eval_pow, eval_X, eval_one,
      one_pow, sub_self, zero_mul, add_zero, eval_ofNat]
    apply mul_ne_zero (by norm_num)
    rw [eval_prod]
    apply prod_ne_zero_iff.mpr
    intro i hi
    simp only [eval_sub, eval_pow, eval_X, one_pow, eval_C]
    have hi0 : (0 : ℤ) ≤ i := Int.natCast_nonneg i
    nlinarith

theorem errorPolynomial_odd_ne_zero (r : ℕ) (hr : 1 ≤ r) :
    errorPolynomial oddRoots r ≠ 0 := by
  obtain ⟨hroot, hsimple⟩ := radicand_odd_simple_root r hr
  exact square_sub_scaled_ne_zero _ _ _ _ (by positivity) hroot hsimple

end

end B686CenteredRunge

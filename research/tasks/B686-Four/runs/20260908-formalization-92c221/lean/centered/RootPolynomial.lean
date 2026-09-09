import research.tasks.«B686-Four».runs.«20260908-formalization-92c221».lean.centered.CatalanConstruction
import Mathlib.Algebra.Polynomial.Expand
import Mathlib.Algebra.Polynomial.BigOperators

namespace B686CenteredRunge

open Finset Polynomial

noncomputable section

def rootTruncation (a : ℕ → ℤ) (r : ℕ) : ℤ[X] :=
  PowerSeries.trunc (r / 2 + 1) (squareRootProduct a r)

def reversedRadicand (a : ℕ → ℤ) (r : ℕ) : ℤ[X] :=
  ∏ i ∈ range r, (1 - C (4 * a i ^ 2) * X)

def radicand (a : ℕ → ℤ) (r : ℕ) : ℤ[X] :=
  ∏ i ∈ range r, (X ^ 2 - C (a i ^ 2))

/-- The integer polynomial part, with leading coefficient exactly `2^r`. -/
def rootPolynomial (a : ℕ → ℤ) (r : ℕ) : ℤ[X] :=
  (reflect r (expand ℤ 2 (rootTruncation a r))).comp (C 2 * X)

def errorPolynomial (a : ℕ → ℤ) (r : ℕ) : ℤ[X] :=
  rootPolynomial a r ^ 2 - C (2 ^ (2 * r)) * radicand a r

theorem rootTruncation_degree (a : ℕ → ℤ) (r : ℕ) :
    (rootTruncation a r).natDegree ≤ r / 2 := by
  exact Nat.lt_succ_iff.mp (PowerSeries.natDegree_trunc_lt _ _)

theorem rootTruncation_expand_degree (a : ℕ → ℤ) (r : ℕ) :
    (expand ℤ 2 (rootTruncation a r)).natDegree ≤ r := by
  rw [natDegree_expand]
  have h := rootTruncation_degree a r
  omega

theorem rootPolynomial_degree_le (a : ℕ → ℤ) (r : ℕ) :
    (rootPolynomial a r).natDegree ≤ r := by
  have hr := natDegree_reflect_le (N := r) (p := expand ℤ 2 (rootTruncation a r))
  have ht := rootTruncation_expand_degree a r
  have hh : (reflect r (expand ℤ 2 (rootTruncation a r))).natDegree ≤ r := by
    simpa [max_eq_left ht] using hr
  exact natDegree_comp_le.trans (by simpa using hh)

theorem rootPolynomial_coeff (a : ℕ → ℤ) (r h : ℕ) (hh : h ≤ r) :
    (rootPolynomial a r).coeff h =
      (if 2 ∣ r - h then
        PowerSeries.coeff ((r - h) / 2) (squareRootProduct a r) else 0) * 2 ^ h := by
  have hj : (r - h) / 2 < r / 2 + 1 := by omega
  simp only [rootPolynomial, comp_C_mul_X_coeff, coeff_reflect, revAt_le hh,
    coeff_expand (by norm_num : 0 < 2), rootTruncation, PowerSeries.coeff_trunc,
    if_pos hj]

@[simp] theorem rootPolynomial_coeff_top (a : ℕ → ℤ) (r : ℕ) :
    (rootPolynomial a r).coeff r = 2 ^ r := by
  simp [rootPolynomial_coeff a r r le_rfl]

theorem rootPolynomial_degree (a : ℕ → ℤ) (r : ℕ) :
    (rootPolynomial a r).natDegree = r := by
  apply natDegree_eq_of_le_of_coeff_ne_zero (rootPolynomial_degree_le a r)
  rw [rootPolynomial_coeff_top]
  positivity

theorem rootPolynomial_leadingCoeff (a : ℕ → ℤ) (r : ℕ) :
    (rootPolynomial a r).leadingCoeff = 2 ^ r := by
  rw [leadingCoeff, rootPolynomial_degree, rootPolynomial_coeff_top]

theorem rootPolynomial_coeff_bound (a : ℕ → ℤ) (k : ℤ) (hk : 0 ≤ k)
    (r h : ℕ) (ha : ∀ i < r, |a i| ≤ k) (hh : h ≤ r) :
    |(rootPolynomial a r).coeff h| ≤
      2 ^ (2 * r + r / 2) * k ^ (r - h) := by
  rw [rootPolynomial_coeff a r h hh]
  split_ifs with heven
  · let j := (r - h) / 2
    have hjr : j ≤ r / 2 := by dsimp [j]; omega
    have hjeq : 2 * j = r - h := Nat.mul_div_cancel' heven
    have hsum : h + 2 * j = r := by omega
    rw [abs_mul, abs_of_nonneg (pow_nonneg (by norm_num : (0 : ℤ) ≤ 2) h)]
    calc
      |PowerSeries.coeff j (squareRootProduct a r)| * 2 ^ h ≤
          (2 ^ (r + j) * (4 * k ^ 2) ^ j) * 2 ^ h :=
        mul_le_mul_of_nonneg_right (squareRootProduct_coeff_bound a k hk r ha j)
          (by positivity)
      _ = 2 ^ (2 * r + j) * k ^ (r - h) := by
        have hp : (4 * k ^ 2) ^ j = (2 : ℤ) ^ (2 * j) * k ^ (2 * j) := by
          rw [mul_pow, show (4 : ℤ) = 2 ^ 2 by norm_num, ← pow_mul, ← pow_mul]
        rw [hp]
        calc
          _ = 2 ^ ((r + j) + (2 * j) + h) * k ^ (2 * j) := by
            simp only [pow_add]
            ring
          _ = 2 ^ (2 * r + j) * k ^ (r - h) := by
            rw [show (r + j) + 2 * j + h = 2 * r + j by omega, hjeq]
      _ ≤ 2 ^ (2 * r + r / 2) * k ^ (r - h) :=
        mul_le_mul_of_nonneg_right
          (pow_le_pow_right₀ (by norm_num) (by omega)) (pow_nonneg hk _)
  · simp only [zero_mul, abs_zero]
    positivity

theorem reversedRadicand_degree (a : ℕ → ℤ) (r : ℕ) :
    (reversedRadicand a r).natDegree ≤ r := by
  induction r with
  | zero => simp [reversedRadicand]
  | succ r ih =>
    rw [reversedRadicand, prod_range_succ]
    change (reversedRadicand a r * (1 - C (4 * a r ^ 2) * X)).natDegree ≤ r + 1
    have hf : (1 - C (4 * a r ^ 2) * X).natDegree ≤ 1 := by
      have hm : (C (4 * a r ^ 2) * X).natDegree ≤ 1 := by
        simpa only [pow_one] using natDegree_C_mul_X_pow_le (4 * a r ^ 2) 1
      exact (natDegree_sub_le _ _).trans (max_le (by simp) hm)
    exact natDegree_mul_le.trans (Nat.add_le_add ih hf)

theorem squareRootProduct_sq_coe (a : ℕ → ℤ) (r : ℕ) :
    squareRootProduct a r ^ 2 = (reversedRadicand a r : PowerSeries ℤ) := by
  rw [squareRootProduct_sq]
  have hp := map_prod (Polynomial.coeToPowerSeries.ringHom (R := ℤ))
    (fun i => (1 - C (4 * a i ^ 2) * X : ℤ[X])) (range r)
  simpa only [reversedRadicand, Polynomial.coeToPowerSeries.ringHom_apply,
    Polynomial.coe_sub, Polynomial.coe_one, Polynomial.coe_mul,
    Polynomial.coe_C, Polynomial.coe_X] using hp.symm

/-- The first `floor(r/2)+1` coefficients of the square agree exactly. -/
theorem rootTruncation_sq_coeff (a : ℕ → ℤ) (r j : ℕ) (hj : j ≤ r / 2) :
    (rootTruncation a r ^ 2).coeff j = (reversedRadicand a r).coeff j := by
  have hh := PowerSeries.coeff_mul_eq_coeff_trunc_mul_trunc
    (squareRootProduct a r) (squareRootProduct a r) (by omega : j < r / 2 + 1)
  have hs := congrArg (PowerSeries.coeff j) (squareRootProduct_sq_coe a r)
  rw [pow_two, hh] at hs
  rw [← Polynomial.coe_mul, Polynomial.coeff_coe, Polynomial.coeff_coe] at hs
  simpa [rootTruncation, pow_two] using hs

end

end B686CenteredRunge

import Mathlib.RingTheory.PowerSeries.Catalan
import Mathlib.RingTheory.PowerSeries.Trunc
import Mathlib.Algebra.Polynomial.Reverse
import Mathlib.Algebra.Polynomial.Eval.Degree
import Mathlib.Tactic.Linarith
import Mathlib.Tactic.Positivity
import Mathlib.Tactic.Ring
import Mathlib.Tactic.NormNum

/-!
An integer Catalan construction of the finite square-root part.  Its coefficient
bounds are uniform in the number of factors; no finite list of lengths is used.
-/

namespace B686CenteredRunge

open Finset Polynomial

noncomputable section

def integerCatalan : PowerSeries ℤ :=
  PowerSeries.catalanSeries.map (Nat.castRingHom ℤ)

theorem integerCatalan_identity :
    integerCatalan ^ 2 * PowerSeries.X + 1 = integerCatalan := by
  have h := congrArg (PowerSeries.map (Nat.castRingHom ℤ))
    PowerSeries.catalanSeries_sq_mul_X_add_one
  simpa [integerCatalan] using h

@[simp] theorem integerCatalan_coeff (j : ℕ) :
    PowerSeries.coeff j integerCatalan = (catalan j : ℤ) := by
  simp [integerCatalan]

/-- The integral expansion of `sqrt(1-4z)`. -/
def integralSquareRoot : PowerSeries ℤ :=
  1 - PowerSeries.C 2 * integerCatalan * PowerSeries.X

theorem integralSquareRoot_sq :
    integralSquareRoot ^ 2 = 1 - PowerSeries.C 4 * PowerSeries.X := by
  have h := integerCatalan_identity
  calc
    integralSquareRoot ^ 2 = 1 - PowerSeries.C 4 * PowerSeries.X +
        PowerSeries.C 4 * PowerSeries.X *
          (integerCatalan ^ 2 * PowerSeries.X + 1 - integerCatalan) := by
      simp only [integralSquareRoot, map_ofNat]
      ring
    _ = 1 - PowerSeries.C 4 * PowerSeries.X := by rw [h]; ring

@[simp] theorem integralSquareRoot_coeff_zero :
    PowerSeries.coeff 0 integralSquareRoot = 1 := by
  simp [integralSquareRoot]

@[simp] theorem integralSquareRoot_coeff_succ (j : ℕ) :
    PowerSeries.coeff (j + 1) integralSquareRoot = -2 * (catalan j : ℤ) := by
  simp only [integralSquareRoot, map_sub, PowerSeries.coeff_one,
    if_neg (by omega : j + 1 ≠ 0), zero_sub, PowerSeries.coeff_succ_mul_X,
    PowerSeries.coeff_C_mul, integerCatalan_coeff]
  ring

theorem catalan_le_four_pow (j : ℕ) : catalan j ≤ 4 ^ j := by
  rw [catalan_eq_centralBinom_div]
  exact (Nat.div_le_self _ _).trans (Nat.centralBinom_le_four_pow j)

theorem integralSquareRoot_coeff_bound (j : ℕ) :
    |PowerSeries.coeff j integralSquareRoot| ≤ (4 : ℤ) ^ j := by
  cases j with
  | zero => simp
  | succ j =>
    rw [integralSquareRoot_coeff_succ, abs_mul]
    norm_num only [abs_neg, Int.abs_natCast, show |(2 : ℤ)| = 2 by norm_num]
    have h : (catalan j : ℤ) ≤ (4 : ℤ) ^ j := by
      exact_mod_cast catalan_le_four_pow j
    rw [pow_succ]
    nlinarith [pow_nonneg (by norm_num : (0 : ℤ) ≤ 4) j]

def factorSquareRoot (a : ℤ) : PowerSeries ℤ :=
  PowerSeries.rescale (a ^ 2) integralSquareRoot

theorem rescale_C (a b : ℤ) :
    PowerSeries.rescale a (PowerSeries.C b) = PowerSeries.C b := by
  ext j
  by_cases hj : j = 0 <;> simp [PowerSeries.coeff_rescale, PowerSeries.coeff_C, hj]

theorem factorSquareRoot_sq (a : ℤ) :
    factorSquareRoot a ^ 2 =
      1 - PowerSeries.C (4 * a ^ 2) * PowerSeries.X := by
  rw [factorSquareRoot, ← map_pow, integralSquareRoot_sq]
  simp only [map_sub, map_one, map_mul, rescale_C, PowerSeries.rescale_X]
  ring

@[simp] theorem factorSquareRoot_coeff_zero (a : ℤ) :
    PowerSeries.coeff 0 (factorSquareRoot a) = 1 := by
  simp [factorSquareRoot, PowerSeries.coeff_rescale]

theorem factorSquareRoot_coeff_bound (a k : ℤ) (hk : 0 ≤ k) (ha : |a| ≤ k)
    (j : ℕ) : |PowerSeries.coeff j (factorSquareRoot a)| ≤ (4 * k ^ 2) ^ j := by
  rw [factorSquareRoot, PowerSeries.coeff_rescale, abs_mul,
    abs_of_nonneg (pow_nonneg (sq_nonneg a) j)]
  have ha2 : a ^ 2 ≤ k ^ 2 := by nlinarith [sq_abs a, abs_nonneg a]
  calc
    (a ^ 2) ^ j * |PowerSeries.coeff j integralSquareRoot| ≤
        (a ^ 2) ^ j * 4 ^ j :=
      mul_le_mul_of_nonneg_left (integralSquareRoot_coeff_bound j)
        (pow_nonneg (sq_nonneg a) j)
    _ ≤ (k ^ 2) ^ j * 4 ^ j :=
      mul_le_mul_of_nonneg_right (pow_le_pow_left₀ (sq_nonneg a) ha2 j)
        (pow_nonneg (by norm_num) j)
    _ = (4 * k ^ 2) ^ j := by rw [mul_pow]; ring

def squareRootProduct (a : ℕ → ℤ) (r : ℕ) : PowerSeries ℤ :=
  ∏ i ∈ range r, factorSquareRoot (a i)

@[simp] theorem squareRootProduct_coeff_zero (a : ℕ → ℤ) (r : ℕ) :
    PowerSeries.coeff 0 (squareRootProduct a r) = 1 := by
  simp [squareRootProduct, PowerSeries.coeff_zero_eq_constantCoeff_apply,
    ← PowerSeries.coeff_zero_eq_constantCoeff_apply]

theorem squareRootProduct_sq (a : ℕ → ℤ) (r : ℕ) :
    squareRootProduct a r ^ 2 =
      ∏ i ∈ range r, (1 - PowerSeries.C (4 * a i ^ 2) * PowerSeries.X) := by
  simp only [squareRootProduct, ← Finset.prod_pow, factorSquareRoot_sq]

theorem sum_two_pow_le (j : ℕ) :
    (∑ i ∈ range j, (2 : ℤ) ^ i) ≤ 2 ^ j := by
  induction j with
  | zero => simp
  | succ j ih =>
    rw [sum_range_succ, pow_succ]
    linarith

/-- A geometric convolution majorant, avoiding any hypothesis about a fixed length. -/
theorem squareRootProduct_coeff_bound (a : ℕ → ℤ) (k : ℤ) (hk : 0 ≤ k)
    (r : ℕ) (ha : ∀ i < r, |a i| ≤ k) (j : ℕ) :
    |PowerSeries.coeff j (squareRootProduct a r)| ≤
      2 ^ (r + j) * (4 * k ^ 2) ^ j := by
  induction r generalizing j with
  | zero =>
    by_cases hj : j = 0
    · subst j; simp [squareRootProduct]
    · simp only [squareRootProduct, range_zero, prod_empty, PowerSeries.coeff_one, if_neg hj,
        abs_zero, zero_add]
      positivity
  | succ r ih =>
    have hD : 0 ≤ 4 * k ^ 2 := by positivity
    have hprev := ih (fun i hi => ha i (by omega))
    rw [squareRootProduct, prod_range_succ]
    change |PowerSeries.coeff j (squareRootProduct a r * factorSquareRoot (a r))| ≤ _
    rw [PowerSeries.coeff_mul,
      Finset.Nat.sum_antidiagonal_eq_sum_range_succ
        (fun i v => PowerSeries.coeff i (squareRootProduct a r) *
          PowerSeries.coeff v (factorSquareRoot (a r))) j]
    calc
      |∑ i ∈ range (j + 1),
          PowerSeries.coeff i (squareRootProduct a r) *
            PowerSeries.coeff (j - i) (factorSquareRoot (a r))| ≤
          ∑ i ∈ range (j + 1),
            |PowerSeries.coeff i (squareRootProduct a r) *
              PowerSeries.coeff (j - i) (factorSquareRoot (a r))| := abs_sum_le_sum_abs _ _
      _ ≤ ∑ i ∈ range (j + 1), 2 ^ r * (4 * k ^ 2) ^ j * 2 ^ i := by
        apply sum_le_sum
        intro i hi
        have hij : i ≤ j := by simpa using hi
        rw [abs_mul]
        calc
          _ ≤ (2 ^ (r + i) * (4 * k ^ 2) ^ i) * (4 * k ^ 2) ^ (j - i) :=
            mul_le_mul (hprev i)
              (factorSquareRoot_coeff_bound (a r) k hk (ha r (by omega)) (j - i))
              (abs_nonneg _) (by positivity)
          _ = 2 ^ r * (4 * k ^ 2) ^ j * 2 ^ i := by
            rw [pow_add, mul_assoc, mul_assoc, ← pow_add,
              Nat.add_sub_of_le hij]
            ring
      _ = (2 ^ r * (4 * k ^ 2) ^ j) * ∑ i ∈ range (j + 1), (2 : ℤ) ^ i :=
        (mul_sum _ _ _).symm
      _ ≤ (2 ^ r * (4 * k ^ 2) ^ j) * 2 ^ (j + 1) :=
        mul_le_mul_of_nonneg_left (sum_two_pow_le (j + 1)) (by positivity)
      _ = 2 ^ (r + 1 + j) * (4 * k ^ 2) ^ j := by
        rw [show r + 1 + j = r + (j + 1) by omega, pow_add]
        ring

end

end B686CenteredRunge

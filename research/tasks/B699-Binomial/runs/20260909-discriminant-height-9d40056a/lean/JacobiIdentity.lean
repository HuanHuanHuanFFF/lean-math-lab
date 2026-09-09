import research.tasks.«B699-Binomial».runs.«20260909-discriminant-height-9d40056a».lean.CoefficientContent
import research.tasks.«B699-Binomial».runs.«20260909-discriminant-height-9d40056a».lean.DiscriminantAlgebra

set_option autoImplicit false
set_option relaxedAutoImplicit false

noncomputable section

namespace B699Height

open Polynomial

private theorem coeff_X_derivative (g : ℤ[X]) (r : ℕ) :
    (X * g.derivative).coeff r = (r : ℤ) * g.coeff r := by
  cases r with
  | zero => simp
  | succ r =>
    simp only [coeff_X_mul, coeff_derivative, Nat.cast_add, Nat.cast_one]
    ring

private theorem lowering_coeff_zero (g : ℤ[X]) (c b : ℤ) :
    (X * (1 - X) * g.derivative + g * (C c + C b * X)).coeff 0 =
      c * g.coeff 0 := by simp; ring

private theorem lowering_coeff_succ (g : ℤ[X]) (c b : ℤ) (r : ℕ) :
    (X * (1 - X) * g.derivative + g * (C c + C b * X)).coeff (r + 1) =
      (c + (r + 1 : ℤ)) * g.coeff (r + 1) + (b - (r : ℤ)) * g.coeff r := by
  have he : X * (1 - X) * g.derivative + g * (C c + C b * X) =
      X * g.derivative - X * (X * g.derivative) + C c * g + X * (C b * g) := by ring
  rw [he]
  simp only [coeff_add, coeff_sub, coeff_X_mul, coeff_C_mul, coeff_derivative,
    coeff_X_derivative, Nat.cast_add, Nat.cast_one]
  ring

/-- The interior coefficient of the actual first-order lowering identity.
Natural subtraction is used only where the supplied inequalities justify it. -/
private theorem binomial_lowering_coeff_succ {i j k r : ℕ}
    (hr : r + 1 < i) (hij : i ≤ j) (hik : i ≤ k) :
    i * (j.choose (r + 1) * k.choose (i - (r + 1))) =
      (k - i + r + 2) * ((j - 1).choose (r + 1) * k.choose (i - 1 - (r + 1))) +
      (i + j - 1 - r) * ((j - 1).choose r * k.choose (i - 1 - r)) := by
  let t := i - (r + 1)
  let u := j - 1 - r
  have ht : 1 ≤ t := by dsimp [t]; omega
  have hti : i = t + (r + 1) := by dsimp [t]; omega
  have htprev : t - 1 = i - 1 - (r + 1) := by dsimp [t]; omega
  have hkt : k - (t - 1) = k - i + r + 2 := by dsimp [t]; omega
  have hiu : i + u = i + j - 1 - r := by dsimp [u]; omega
  have hsame : i - 1 - r = t := by dsimp [t]; omega
  have hkc : t * k.choose t = (k - (t - 1)) * k.choose (t - 1) := by
    have h := Nat.choose_succ_right_eq k (t - 1)
    rw [Nat.sub_add_cancel ht] at h
    simpa only [mul_comm] using h
  have hjc : (r + 1) * (j - 1).choose (r + 1) = u * (j - 1).choose r := by
    simpa only [u, mul_comm] using Nat.choose_succ_right_eq (j - 1) r
  have hp : j.choose (r + 1) = (j - 1).choose r + (j - 1).choose (r + 1) :=
    Nat.choose_succ_right j r (by omega)
  change i * (j.choose (r + 1) * k.choose t) = _
  calc
    _ = (t * (j - 1).choose (r + 1) + i * (j - 1).choose r +
        (r + 1) * (j - 1).choose (r + 1)) * k.choose t := by rw [hp, hti]; ring
    _ = (t * (j - 1).choose (r + 1) + i * (j - 1).choose r +
        u * (j - 1).choose r) * k.choose t := by rw [hjc]
    _ = (j - 1).choose (r + 1) * (t * k.choose t) +
        (i + u) * ((j - 1).choose r * k.choose t) := by ring
    _ = _ := by rw [hkc, hkt, htprev, hiu, hsame]; ring

/-- The exact first-order relation for the actual binomial polynomial.
This identity replaces the analytic Jacobi route. -/
theorem coefficientPolynomial_lowering {n i j : ℕ}
    (hi : 1 ≤ i) (hij : i ≤ j) (hik : i ≤ n - j) (hjn : j ≤ n) :
    C (i : ℤ) * coefficientPolynomial n i j =
      X * (1 - X) * (coefficientPolynomial (n - 1) (i - 1) (j - 1)).derivative +
        coefficientPolynomial (n - 1) (i - 1) (j - 1) *
          (C ((n - j - i + 1 : ℕ) : ℤ) + C ((i + j - 1 : ℕ) : ℤ) * X) := by
  have hnk : n - 1 - (j - 1) = n - j := by omega
  ext r
  cases r with
  | zero =>
    rw [coeff_C_mul, lowering_coeff_zero, coefficientPolynomial_coeff_zero,
      coefficientPolynomial_coeff_zero, hnk]
    have h := Nat.choose_succ_right_eq (n - j) (i - 1)
    rw [Nat.sub_add_cancel hi, show n - j - (i - 1) = n - j - i + 1 by omega] at h
    exact_mod_cast (by simpa only [mul_comm] using h)
  | succ r =>
    rw [coeff_C_mul, lowering_coeff_succ]
    by_cases hr : r + 1 < i
    · rw [coefficientPolynomial_coeff_of_le (by omega : r + 1 ≤ i),
        coefficientPolynomial_coeff_of_le (by omega : r + 1 ≤ i - 1),
        coefficientPolynomial_coeff_of_le (by omega : r ≤ i - 1), hnk]
      have h := binomial_lowering_coeff_succ hr hij hik
      have hb : r ≤ i + j - 1 := by omega
      have hc : (((n - j - i + 1 : ℕ) : ℤ) + (r + 1 : ℤ)) =
          ((n - j - i + r + 2 : ℕ) : ℤ) := by push_cast; ring
      rw [hc, ← Nat.cast_sub hb]
      exact_mod_cast h
    · by_cases he : r + 1 = i
      · subst i
        simp only [Nat.add_sub_cancel_right] at *
        rw [coefficientPolynomial_coeff_top,
          coefficientPolynomial_coeff, if_neg (by omega : ¬ r + 1 ≤ r),
          coefficientPolynomial_coeff_top]
        simp only [mul_zero, zero_add]
        have hh := Nat.add_one_mul_choose_eq (j - 1) r
        rw [Nat.sub_add_cancel (by omega : 1 ≤ j)] at hh
        have h : (r + 1 : ℤ) * (j.choose (r + 1) : ℤ) =
            (j : ℤ) * ((j - 1).choose r : ℤ) := by
          exact_mod_cast (by simpa only [mul_comm] using hh.symm)
        rw [show r + 1 + j - 1 = r + j by omega]
        push_cast
        convert h using 1 <;> ring
      · have hri : ¬ r + 1 ≤ i := by omega
        have hrg : ¬ r + 1 ≤ i - 1 := by omega
        have hrg' : ¬ r ≤ i - 1 := by omega
        simp only [coefficientPolynomial_coeff, if_neg hri, if_neg hrg, if_neg hrg',
          mul_zero, add_zero]

/-- The actual linear polynomial has discriminant one. -/
theorem coefficientPolynomial_discr_one {n j : ℕ} (hj : 1 ≤ j) :
    (coefficientPolynomial n 1 j).discr = 1 := by
  apply discr_of_degree_eq_one
  simpa using coefficientPolynomial_degree (n := n) hj

/-- Exact discriminant descent for the actual polynomial, without a
discriminant or separability assumption. -/
theorem coefficientPolynomial_discr_step {n i j : ℕ}
    (hi : 2 ≤ i) (hij : i ≤ j) (hik : i ≤ n - j) (hjn : j ≤ n) :
    (i : ℤ) ^ (i - 2) * (coefficientPolynomial n i j).discr =
      (j : ℤ) ^ (i - 1) * ((n - j).choose (i - 1) : ℤ) *
        ((n - 1).choose (i - 1) : ℤ) *
          (coefficientPolynomial (n - 1) (i - 1) (j - 1)).discr := by
  let L : ℤ[X] := C ((n - j - i + 1 : ℕ) : ℤ) + C ((i + j - 1 : ℕ) : ℤ) * X
  have hL : L.natDegree ≤ 1 := by
    apply natDegree_le_iff_coeff_eq_zero.mpr
    intro r hr
    simp only [L, coeff_add, coeff_C, coeff_C_mul_X,
      if_neg (by omega : r ≠ 0), if_neg (by omega : r ≠ 1), zero_add]
  have h := discr_of_lowering (coefficientPolynomial n i j)
    (coefficientPolynomial (n - 1) (i - 1) (j - 1)) L (i - 1) (by omega) (j : ℤ)
    (by rw [coefficientPolynomial_natDegree hij]; omega)
    (coefficientPolynomial_natDegree (by omega))
    (coefficientPolynomial_derivative (by omega) hij hjn) hL
    (by simpa [L, Nat.cast_sub (show 1 ≤ i by omega)] using
      coefficientPolynomial_lowering (by omega : 1 ≤ i) hij hik hjn)
  rw [coefficientPolynomial_eval_zero,
    coefficientPolynomial_eval_one (by omega : j - 1 ≤ n - 1)] at h
  simpa only [show n - 1 - (j - 1) = n - j by omega,
    show i - 1 - 1 = i - 2 by omega, Nat.cast_sub (show 1 ≤ i by omega),
    Nat.cast_one, sub_add_cancel] using h

/-- Positivity is established recursively for every actual legal polynomial. -/
theorem coefficientPolynomial_discr_pos {n i j : ℕ}
    (hi : 1 ≤ i) (hij : i ≤ j) (hik : i ≤ n - j) (hjn : j ≤ n) :
    0 < (coefficientPolynomial n i j).discr := by
  induction i using Nat.strong_induction_on generalizing n j with
  | h i ih =>
    by_cases he : i = 1
    · subst i
      rw [coefficientPolynomial_discr_one hij]
      norm_num
    have hi2 : 2 ≤ i := by omega
    have hg : 0 < (coefficientPolynomial (n - 1) (i - 1) (j - 1)).discr :=
      ih (i - 1) (by omega) (by omega) (by omega) (by omega) (by omega)
    have h := coefficientPolynomial_discr_step hi2 hij hik hjn
    have hmul : 0 < (i : ℤ) ^ (i - 2) * (coefficientPolynomial n i j).discr := by
      rw [h]
      have hjpos : (0 : ℤ) < j := by omega
      have hkpos : (0 : ℤ) < (n - j).choose (i - 1) := by
        exact_mod_cast Nat.choose_pos (by omega : i - 1 ≤ n - j)
      have hnpos : (0 : ℤ) < (n - 1).choose (i - 1) := by
        exact_mod_cast Nat.choose_pos (by omega : i - 1 ≤ n - 1)
      exact mul_pos (mul_pos (mul_pos (pow_pos hjpos _) hkpos) hnpos) hg
    exact (mul_pos_iff_of_pos_left (pow_pos (by omega : (0 : ℤ) < i) (i - 2))).mp hmul

theorem coefficientPolynomial_discr_ne_zero {n i j : ℕ}
    (hi : 1 ≤ i) (hij : i ≤ j) (hik : i ≤ n - j) (hjn : j ≤ n) :
    (coefficientPolynomial n i j).discr ≠ 0 :=
  ne_of_gt (coefficientPolynomial_discr_pos hi hij hik hjn)

end B699Height

#print axioms B699Height.coefficientPolynomial_lowering
#print axioms B699Height.coefficientPolynomial_discr_one
#print axioms B699Height.coefficientPolynomial_discr_step
#print axioms B699Height.coefficientPolynomial_discr_pos
#print axioms B699Height.coefficientPolynomial_discr_ne_zero

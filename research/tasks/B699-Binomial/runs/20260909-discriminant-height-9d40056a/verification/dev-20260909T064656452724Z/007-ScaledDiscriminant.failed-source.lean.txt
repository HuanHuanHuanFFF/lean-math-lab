import research.tasks.«B699-Binomial».runs.«20260909-discriminant-height-9d40056a».lean.JacobiIdentity
import Mathlib.Data.Nat.Factorial.BigOperators

set_option autoImplicit false
set_option relaxedAutoImplicit false

noncomputable section

namespace B699Height

/-- The exact factorial-scaled absolute discriminant of the actual polynomial. -/
def scaledDiscriminant (n i j : ℕ) : ℕ :=
  i.factorial ^ (2 * (i - 1)) * (coefficientPolynomial n i j).discr.natAbs

/-- Taking the natural absolute value preserves the exact integer recurrence. -/
theorem coefficientPolynomial_discr_natAbs_step {n i j : ℕ}
    (hi : 2 ≤ i) (hij : i ≤ j) (hjk : i ≤ n - j) (hjn : j ≤ n) :
    i ^ (i - 2) * (coefficientPolynomial n i j).discr.natAbs =
      j ^ (i - 1) * (n - j).choose (i - 1) * (n - 1).choose (i - 1) *
        (coefficientPolynomial (n - 1) (i - 1) (j - 1)).discr.natAbs := by
  simpa using congrArg Int.natAbs (coefficientPolynomial_discr_step hi hij hjk hjn)

/-- The two factorials from the descending factorials cancel the normalization
exactly. This equality is obtained by multiplication, without integer division. -/
theorem scaledDiscriminant_step {n i j : ℕ}
    (hi : 2 ≤ i) (hij : i ≤ j) (hjk : i ≤ n - j) (hjn : j ≤ n) :
    scaledDiscriminant n i j =
      i ^ i * j ^ (i - 1) * (n - j).descFactorial (i - 1) *
        (n - 1).descFactorial (i - 1) * scaledDiscriminant (n - 1) (i - 1) (j - 1) := by
  have hfact : i.factorial = i * (i - 1).factorial := by
    simpa only [Nat.sub_add_cancel (by omega : 1 ≤ i)] using Nat.factorial_succ (i - 1)
  have hpowi : i ^ (2 * (i - 1)) = i ^ i * i ^ (i - 2) := by
    rw [← pow_add]
    congr 1
    omega
  have hpowf : (i - 1).factorial ^ (2 * (i - 1)) =
      (i - 1).factorial ^ 2 * (i - 1).factorial ^ (2 * (i - 1 - 1)) := by
    rw [← pow_add]
    congr 1
    omega
  unfold scaledDiscriminant
  calc
    _ = i ^ i * (i - 1).factorial ^ (2 * (i - 1)) *
        (i ^ (i - 2) * (coefficientPolynomial n i j).discr.natAbs) := by
      rw [hfact, mul_pow, hpowi]
      ring
    _ = i ^ i * (i - 1).factorial ^ (2 * (i - 1)) *
        (j ^ (i - 1) * (n - j).choose (i - 1) * (n - 1).choose (i - 1) *
          (coefficientPolynomial (n - 1) (i - 1) (j - 1)).discr.natAbs) := by
      rw [coefficientPolynomial_discr_natAbs_step hi hij hjk hjn]
    _ = _ := by
      rw [Nat.descFactorial_eq_factorial_mul_choose,
        Nat.descFactorial_eq_factorial_mul_choose, hpowf, pow_two]
      ring

@[simp] theorem scaledDiscriminant_one {n j : ℕ} (hj : 1 ≤ j) :
    scaledDiscriminant n 1 j = 1 := by
  simp [scaledDiscriminant, coefficientPolynomial_discr_one hj]

/-- A coarse one-step estimate retaining the factorial before bounding factors. -/
theorem scaledDiscriminant_step_le {n i j : ℕ}
    (hi : 2 ≤ i) (hij : i ≤ j) (hjk : i ≤ n - j) (hjn : j ≤ n) :
    scaledDiscriminant n i j ≤
      i ^ i * n ^ (3 * (i - 1)) * scaledDiscriminant (n - 1) (i - 1) (j - 1) := by
  have hjpow : j ^ (i - 1) ≤ n ^ (i - 1) := Nat.pow_le_pow_left hjn _
  have hkpow : (n - j).descFactorial (i - 1) ≤ n ^ (i - 1) :=
    (Nat.descFactorial_le_pow _ _).trans (Nat.pow_le_pow_left (Nat.sub_le n j) _)
  have hnprevpow : (n - 1).descFactorial (i - 1) ≤ n ^ (i - 1) :=
    (Nat.descFactorial_le_pow _ _).trans (Nat.pow_le_pow_left (Nat.sub_le n 1) _)
  have hnpow : n ^ (i - 1) * n ^ (i - 1) * n ^ (i - 1) = n ^ (3 * (i - 1)) := by
    rw [← pow_add, ← pow_add]
    congr 1
    omega
  rw [scaledDiscriminant_step hi hij hjk hjn]
  apply Nat.mul_le_mul_right
  calc
    _ ≤ i ^ i * n ^ (i - 1) * n ^ (i - 1) * n ^ (i - 1) :=
      Nat.mul_le_mul (Nat.mul_le_mul (Nat.mul_le_mul (le_refl _) hjpow) hkpow) hnprevpow
    _ = i ^ i * (n ^ (i - 1) * n ^ (i - 1) * n ^ (i - 1)) := by ring
    _ = _ := by rw [hnpow]

/-- The actual polynomial satisfies the factorial-scaled discriminant bound
uniformly in the whole legal parameter range. -/
theorem scaledDiscriminant_sq_le {n i j : ℕ}
    (hi : 1 ≤ i) (hij : i ≤ j) (hjk : i ≤ n - j) (hjn : j ≤ n) :
    scaledDiscriminant n i j ^ 2 ≤ i ^ (i * (i + 1)) * n ^ (3 * i * (i - 1)) := by
  induction i using Nat.strong_induction_on generalizing n j with
  | h i ih =>
    by_cases hi1 : i = 1
    · subst i
      simp [scaledDiscriminant_one hij]
    · have hi2 : 2 ≤ i := by omega
      have hnk : n - 1 - (j - 1) = n - j := by omega
      have hprev := ih (i - 1) (by omega) (n := n - 1) (j := j - 1)
        (by omega : 1 ≤ i - 1) (by omega : i - 1 ≤ j - 1)
        (by omega : i - 1 ≤ n - 1 - (j - 1)) (by omega : j - 1 ≤ n - 1)
      have hprev' : scaledDiscriminant (n - 1) (i - 1) (j - 1) ^ 2 ≤
          (i - 1) ^ ((i - 1) * i) * (n - 1) ^ (3 * (i - 1) * (i - 2)) := by
        simpa only [Nat.sub_add_cancel hi, show i - 1 - 1 = i - 2 by omega] using hprev
      have hpowi : (i - 1) ^ ((i - 1) * i) ≤ i ^ ((i - 1) * i) :=
        Nat.pow_le_pow_left (Nat.sub_le i 1) _
      have hpown : (n - 1) ^ (3 * (i - 1) * (i - 2)) ≤
          n ^ (3 * (i - 1) * (i - 2)) := Nat.pow_le_pow_left (Nat.sub_le n 1) _
      have hei : i * 2 + (i - 1) * i = i * (i + 1) := by
        calc
          _ = i * (2 + (i - 1)) := by ring
          _ = _ := by congr 1; omega
      have hen : (3 * (i - 1)) * 2 + 3 * (i - 1) * (i - 2) = 3 * i * (i - 1) := by
        calc
          _ = (3 * (i - 1)) * (2 + (i - 2)) := by ring
          _ = (3 * (i - 1)) * i := by rw [show 2 + (i - 2) = i by omega]
          _ = _ := by ring
      calc
        _ ≤ (i ^ i * n ^ (3 * (i - 1)) *
            scaledDiscriminant (n - 1) (i - 1) (j - 1)) ^ 2 :=
          Nat.pow_le_pow_left (scaledDiscriminant_step_le hi2 hij hjk hjn) 2
        _ = (i ^ i * n ^ (3 * (i - 1))) ^ 2 *
            scaledDiscriminant (n - 1) (i - 1) (j - 1) ^ 2 := by rw [mul_pow]
        _ ≤ (i ^ i * n ^ (3 * (i - 1))) ^ 2 *
            ((i - 1) ^ ((i - 1) * i) * (n - 1) ^ (3 * (i - 1) * (i - 2))) :=
          Nat.mul_le_mul_left _ hprev'
        _ ≤ (i ^ i * n ^ (3 * (i - 1))) ^ 2 *
            (i ^ ((i - 1) * i) * n ^ (3 * (i - 1) * (i - 2))) :=
          Nat.mul_le_mul_left _ (Nat.mul_le_mul hpowi hpown)
        _ = (i ^ (i * 2) * i ^ ((i - 1) * i)) *
            (n ^ ((3 * (i - 1)) * 2) * n ^ (3 * (i - 1) * (i - 2))) := by
          simp only [mul_pow, ← pow_mul]
          ring
        _ = _ := by rw [← pow_add, ← pow_add, hei, hen]

/-- The explicit form consumed by the height module, with no formula parameter. -/
theorem coefficientPolynomial_scaled_discr_sq_le {n i j : ℕ}
    (hi : 1 ≤ i) (hij : i ≤ j) (hjk : i ≤ n - j) (hjn : j ≤ n) :
    (i.factorial ^ (2 * (i - 1)) * (coefficientPolynomial n i j).discr.natAbs) ^ 2 ≤
      i ^ (i * (i + 1)) * n ^ (3 * i * (i - 1)) := by
  exact scaledDiscriminant_sq_le hi hij hjk hjn

end B699Height

#print axioms B699Height.scaledDiscriminant_step
#print axioms B699Height.scaledDiscriminant_sq_le
#print axioms B699Height.coefficientPolynomial_scaled_discr_sq_le

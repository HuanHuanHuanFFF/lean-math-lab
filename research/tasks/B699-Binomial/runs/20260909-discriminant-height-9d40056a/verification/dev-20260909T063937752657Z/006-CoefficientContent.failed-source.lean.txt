import research.tasks.«B699-Binomial».runs.«20260909-large-prime-structure-cb4764f0».lean.PrimePowerTransfer
import Mathlib.Algebra.Polynomial.Derivative
import Mathlib.Algebra.Polynomial.Degree.Lemmas
import Mathlib.Data.Nat.Choose.Vandermonde
import Mathlib.Tactic.NormNum

set_option autoImplicit false
set_option relaxedAutoImplicit false

noncomputable section

namespace B699Height

open Polynomial

/-- The actual coefficient polynomial; all parameters and binomial indices are natural. -/
def coefficientPolynomial (n i j : ℕ) : Polynomial ℤ :=
  ∑ r ∈ Finset.range (i + 1),
    C ((j.choose r * (n - j).choose (i - r) : ℕ) : ℤ) * X ^ r

/-- Interchanging two disjoint selections, including zero binomial coefficients. -/
theorem choose_mul_complement_comm (a b c : ℕ) :
    a.choose b * (a - b).choose c = a.choose c * (a - c).choose b := by
  calc
    _ = a.choose (b + c) * (b + c).choose b := by
      rw [Nat.choose_mul (by omega : b ≤ b + c), Nat.add_sub_cancel_left]
    _ = a.choose (b + c) * (b + c).choose c := by rw [Nat.choose_symm_add]
    _ = _ := by
      rw [Nat.choose_mul (by omega : c ≤ b + c), Nat.add_sub_cancel_right]

/-- The actual binomial identity behind the content divisibility. -/
theorem coefficient_identity {n i j r : ℕ}
    (hri : r ≤ i) (hij : i ≤ j) (hjn : j ≤ n) :
    n.choose j * j.choose r * (n - j).choose (i - r) =
      n.choose i * i.choose r * (n - i).choose (j - r) := by
  have hnrj : n - r - (j - r) = n - j := by omega
  have hnri : n - r - (i - r) = n - i := by omega
  have hswap : (n - r).choose (j - r) * (n - j).choose (i - r) =
      (n - r).choose (i - r) * (n - i).choose (j - r) := by
    simpa only [hnrj, hnri] using choose_mul_complement_comm (n - r) (j - r) (i - r)
  rw [Nat.choose_mul (hri.trans hij), Nat.choose_mul hri]
  simpa only [mul_assoc] using congrArg (fun t ↦ n.choose r * t) hswap

/-- The selected complete prime-power product divides the actual first binomial. -/
theorem avoidingPart_dvd_choose {n i j : ℕ} (hin : i ≤ n) :
    B699LargePrimeStructure.avoidingPart n i j ∣ n.choose i := by
  classical
  unfold B699LargePrimeStructure.avoidingPart
  calc
    _ ∣ (n.choose i).primeFactors.prod (fun p ↦ p ^ (n.choose i).factorization p) :=
      Finset.prod_dvd_prod_of_subset _ _ _ (Finset.filter_subset _ _)
    _ = n.choose i := (Nat.prod_primeFactors_pow_factorization (Nat.choose_ne_zero hin)).symm

/-- Every selected prime avoids the second binomial, at its complete exponent. -/
theorem avoidingPart_coprime_choose (n i j : ℕ) :
    (B699LargePrimeStructure.avoidingPart n i j).Coprime (n.choose j) := by
  classical
  unfold B699LargePrimeStructure.avoidingPart
  apply Nat.coprime_prod_left_iff.mpr
  intro p hp
  obtain ⟨hmem, _, havoid⟩ := Finset.mem_filter.mp hp
  exact ((Nat.prime_of_mem_primeFactors hmem).coprime_iff_not_dvd.mpr havoid).pow_left _

/-- The avoiding part is positive, also when its supporting set is empty. -/
theorem avoidingPart_pos (n i j : ℕ) :
    0 < B699LargePrimeStructure.avoidingPart n i j := by
  classical
  unfold B699LargePrimeStructure.avoidingPart
  apply Finset.prod_pos
  intro p hp
  exact pow_pos (Nat.prime_of_mem_primeFactors (Finset.mem_filter.mp hp).1).pos _

/-- Each actual coefficient is divisible by D, without a noCommon hypothesis. -/
theorem avoidingPart_dvd_coefficient {n i j r : ℕ}
    (hri : r ≤ i) (hij : i ≤ j) (hjn : j ≤ n) :
    B699LargePrimeStructure.avoidingPart n i j ∣
      j.choose r * (n - j).choose (i - r) := by
  apply (avoidingPart_coprime_choose n i j).dvd_of_dvd_mul_left
  rw [← mul_assoc, coefficient_identity hri hij hjn]
  exact dvd_mul_of_dvd_left (dvd_mul_of_dvd_left (avoidingPart_dvd_choose (hij.trans hjn)) _) _

/-- Only the original noCommon condition identifies D with the complete large-prime part. -/
theorem primePart_dvd_coefficient_of_noCommon {n i j r : ℕ}
    (hri : r ≤ i) (hij : i ≤ j) (hjn : j ≤ n)
    (hno : ¬ ∃ p : ℕ, p.Prime ∧ i ≤ p ∧ p ∣ Nat.gcd (n.choose i) (n.choose j)) :
    B699BridgeAudit.primePart i (n.choose i) ∣
      j.choose r * (n - j).choose (i - r) := by
  rw [← B699LargePrimeStructure.avoidingPart_eq_primePart_of_noCommon hno]
  exact avoidingPart_dvd_coefficient hri hij hjn

/-- Coefficients outside the displayed summation range are zero. -/
theorem coefficientPolynomial_coeff (n i j r : ℕ) :
    (coefficientPolynomial n i j).coeff r =
      if r ≤ i then ((j.choose r * (n - j).choose (i - r) : ℕ) : ℤ) else 0 := by
  classical
  simp [coefficientPolynomial, Polynomial.finsetSum_coeff, Polynomial.coeff_C_mul_X_pow,
    Finset.sum_ite_eq, Finset.sum_ite_eq', Nat.lt_succ_iff]

theorem coefficientPolynomial_coeff_of_le {n i j r : ℕ} (hri : r ≤ i) :
    (coefficientPolynomial n i j).coeff r =
      ((j.choose r * (n - j).choose (i - r) : ℕ) : ℤ) := by
  rw [coefficientPolynomial_coeff, if_pos hri]

@[simp] theorem coefficientPolynomial_coeff_zero (n i j : ℕ) :
    (coefficientPolynomial n i j).coeff 0 = ((n - j).choose i : ℤ) := by
  simp [coefficientPolynomial_coeff]

@[simp] theorem coefficientPolynomial_coeff_top (n i j : ℕ) :
    (coefficientPolynomial n i j).coeff i = (j.choose i : ℤ) := by
  simp [coefficientPolynomial_coeff]

@[simp] theorem coefficientPolynomial_eval_zero (n i j : ℕ) :
    (coefficientPolynomial n i j).eval 0 = ((n - j).choose i : ℤ) := by
  rw [← Polynomial.coeff_zero_eq_eval_zero, coefficientPolynomial_coeff_zero]

theorem coefficientPolynomial_ne_zero {n i j : ℕ} (hij : i ≤ j) :
    coefficientPolynomial n i j ≠ 0 := by
  have hc : (coefficientPolynomial n i j).coeff i ≠ 0 := by
    rw [coefficientPolynomial_coeff_top]
    exact_mod_cast Nat.choose_ne_zero hij
  intro hz
  apply hc
  simp [hz]

theorem coefficientPolynomial_natDegree_le (n i j : ℕ) :
    (coefficientPolynomial n i j).natDegree ≤ i := by
  apply Polynomial.natDegree_le_iff_coeff_eq_zero.mpr
  intro r hr
  rw [coefficientPolynomial_coeff, if_neg (by omega)]

theorem coefficientPolynomial_natDegree {n i j : ℕ} (hij : i ≤ j) :
    (coefficientPolynomial n i j).natDegree = i := by
  apply Polynomial.natDegree_eq_of_le_of_coeff_ne_zero (coefficientPolynomial_natDegree_le n i j)
  rw [coefficientPolynomial_coeff_top]
  exact_mod_cast Nat.choose_ne_zero hij

theorem coefficientPolynomial_degree {n i j : ℕ} (hij : i ≤ j) :
    (coefficientPolynomial n i j).degree = (i : WithBot ℕ) := by
  rw [Polynomial.degree_eq_natDegree (coefficientPolynomial_ne_zero hij),
    coefficientPolynomial_natDegree hij]

theorem coefficientPolynomial_leadingCoeff {n i j : ℕ} (hij : i ≤ j) :
    (coefficientPolynomial n i j).leadingCoeff = (j.choose i : ℤ) := by
  rw [Polynomial.leadingCoeff, coefficientPolynomial_natDegree hij,
    coefficientPolynomial_coeff_top]

theorem coefficientPolynomial_eval_one {n i j : ℕ} (hjn : j ≤ n) :
    (coefficientPolynomial n i j).eval 1 = (n.choose i : ℤ) := by
  have hsum : (∑ r ∈ Finset.range (i + 1), j.choose r * (n - j).choose (i - r)) =
      n.choose i := by
    have hh := Nat.add_choose_eq j (n - j) i
    rw [Finset.Nat.sum_antidiagonal_eq_sum_range_succ_mk, Nat.add_sub_of_le hjn] at hh
    exact hh.symm
  simpa [coefficientPolynomial, Polynomial.eval_finsetSum] using
    congrArg (fun t : ℕ ↦ (t : ℤ)) hsum

/-- Actual integer coefficients have the full selected natural divisor. -/
theorem avoidingPart_dvd_polynomial_coeff {n i j : ℕ}
    (hij : i ≤ j) (hjn : j ≤ n) (r : ℕ) :
    (B699LargePrimeStructure.avoidingPart n i j : ℤ) ∣
      (coefficientPolynomial n i j).coeff r := by
  rw [coefficientPolynomial_coeff]
  split_ifs with hr
  · exact_mod_cast avoidingPart_dvd_coefficient hr hij hjn
  · exact dvd_zero _

/-- A genuine integer polynomial quotient, obtained from all actual coefficients. -/
theorem coefficientPolynomial_eq_C_mul {n i j : ℕ}
    (hij : i ≤ j) (hjn : j ≤ n) :
    ∃ G : Polynomial ℤ, coefficientPolynomial n i j =
      C (B699LargePrimeStructure.avoidingPart n i j : ℤ) * G := by
  exact (Polynomial.C_dvd_iff_dvd_coeff _ _).mpr
    (avoidingPart_dvd_polynomial_coeff hij hjn)

/-- The original noCommon assumption supplies the actual complete large-prime quotient. -/
theorem coefficientPolynomial_eq_primePart_mul_of_noCommon {n i j : ℕ}
    (hij : i ≤ j) (hjn : j ≤ n)
    (hno : ¬ ∃ p : ℕ, p.Prime ∧ i ≤ p ∧ p ∣ Nat.gcd (n.choose i) (n.choose j)) :
    ∃ G : Polynomial ℤ, coefficientPolynomial n i j =
      C (B699BridgeAudit.primePart i (n.choose i) : ℤ) * G := by
  rw [← B699LargePrimeStructure.avoidingPart_eq_primePart_of_noCommon hno]
  exact coefficientPolynomial_eq_C_mul hij hjn

/-- Dividing the actual polynomial by a nonzero integer does not lower its degree. -/
theorem coefficientPolynomial_quotient_natDegree {n i j : ℕ} {D : ℤ} {G : Polynomial ℤ}
    (hij : i ≤ j) (hD : D ≠ 0)
    (hF : coefficientPolynomial n i j = C D * G) : G.natDegree = i := by
  have hdeg := coefficientPolynomial_natDegree (n := n) hij
  rw [hF, Polynomial.natDegree_C_mul hD] at hdeg
  exact hdeg

/-- The integer quotient is nonzero because the actual top coefficient is positive. -/
theorem coefficientPolynomial_quotient_ne_zero {n i j : ℕ} {D : ℤ} {G : Polynomial ℤ}
    (hij : i ≤ j) (hF : coefficientPolynomial n i j = C D * G) : G ≠ 0 := by
  intro hG
  apply coefficientPolynomial_ne_zero hij
  rw [hF, hG, mul_zero]

/-- The derivative lowers n, i and j simultaneously and preserves n-j. -/
theorem coefficientPolynomial_derivative {n i j : ℕ}
    (hi : 1 ≤ i) (hij : i ≤ j) (hjn : j ≤ n) :
    (coefficientPolynomial n i j).derivative =
      C (j : ℤ) * coefficientPolynomial (n - 1) (i - 1) (j - 1) := by
  ext r
  rw [Polynomial.coeff_derivative, Polynomial.coeff_C_mul,
    coefficientPolynomial_coeff, coefficientPolynomial_coeff]
  have hnk : n - 1 - (j - 1) = n - j := by omega
  have hchoose : j.choose (r + 1) * (r + 1) = j * (j - 1).choose r := by
    have hh := Nat.add_one_mul_choose_eq (j - 1) r
    rw [Nat.sub_add_cancel (by omega : 1 ≤ j)] at hh
    exact hh.symm
  by_cases hr : r + 1 ≤ i
  · have hr' : r ≤ i - 1 := by omega
    rw [if_pos hr, if_pos hr', hnk]
    have hsub : i - 1 - r = i - (r + 1) := by omega
    rw [hsub]
    have hh := congrArg (fun t : ℕ ↦ (t : ℤ)) hchoose
    push_cast at hh ⊢
    calc
      _ = ((j.choose (r + 1) : ℤ) * ((r : ℤ) + 1)) *
          ((n - j).choose (i - (r + 1)) : ℤ) := by ring
      _ = _ := by rw [hh]; ring
  · have hr' : ¬ r ≤ i - 1 := by omega
    simp [hr, hr']

end B699Height

#print axioms B699Height.coefficient_identity
#print axioms B699Height.avoidingPart_dvd_coefficient
#print axioms B699Height.primePart_dvd_coefficient_of_noCommon
#print axioms B699Height.coefficientPolynomial_natDegree
#print axioms B699Height.coefficientPolynomial_eval_one
#print axioms B699Height.coefficientPolynomial_eq_C_mul
#print axioms B699Height.coefficientPolynomial_eq_primePart_mul_of_noCommon
#print axioms B699Height.coefficientPolynomial_derivative

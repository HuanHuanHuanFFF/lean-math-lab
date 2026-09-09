import research.tasks.«B699-Binomial».runs.«20260909-discriminant-height-9d40056a».lean.OriginalHeight

set_option autoImplicit false
set_option relaxedAutoImplicit false

open Polynomial B699Height

/-- A direct transcription check of the actual coefficient polynomial. -/
example : coefficientPolynomial 12 2 4 =
    C (28 : ℤ) + C (32 : ℤ) * X + C (6 : ℤ) * X ^ 2 := by
  norm_num [coefficientPolynomial, Finset.sum_range_succ]

/-- A nontrivial selected divisor containing the boundary prime p=i=2. -/
example : B699LargePrimeStructure.avoidingPart 12 2 4 = 2 := by decide

/-- The selected part and full large-prime part differ without noCommon. -/
example : B699LargePrimeStructure.avoidingPart 16 2 6 = 15 := by decide
example : B699BridgeAudit.primePart 2 (16.choose 2) = 120 := by decide

/-- Concrete evaluation of the advertised, executable integer height. -/
example : heightSlack 185 = 17 := by decide
example : effectiveHeight 185 = 28273563576220552539381170176000000000000 := by decide

/-- Original-statement usage with every natural index quantified explicitly. -/
example : ∀ n i j : ℕ, 1 ≤ i → i < j → j ≤ n / 2 →
    4 * i.primesBelow.card < i →
    (¬ ∃ p : ℕ, p.Prime ∧ i ≤ p ∧ p ∣ Nat.gcd (n.choose i) (n.choose j)) →
    n ≤ effectiveHeight i := fun _ _ _ hi hij hjn hc hno ↦
  counterexample_height hi hij hjn hc hno

/-- The actual tail is consumed in original gcd form, without a structural input. -/
example (n j : ℕ) (hij : 185 < j) (hjn : j ≤ n / 2)
    (hn : effectiveHeight 185 < n) :
    ∃ p : ℕ, p.Prime ∧ 185 ≤ p ∧ p ∣ Nat.gcd (n.choose 185) (n.choose j) :=
  common_of_index185_height_lt (by decide) hij hjn hn

#print axioms B699Height.discr_C_mul
#print axioms B699Height.content_pow_dvd_discr
#print axioms B699Height.discr_of_lowering
#print axioms B699Height.coefficient_identity
#print axioms B699Height.avoidingPart_dvd_coefficient
#print axioms B699Height.coefficientPolynomial_eq_C_mul
#print axioms B699Height.coefficientPolynomial_derivative
#print axioms B699Height.coefficientPolynomial_lowering
#print axioms B699Height.coefficientPolynomial_discr_step
#print axioms B699Height.coefficientPolynomial_discr_pos
#print axioms B699Height.scaledDiscriminant_step
#print axioms B699Height.coefficientPolynomial_scaled_discr_sq_le
#print axioms B699Height.avoidingPart_pow_dvd_natAbs_discr
#print axioms B699Height.primePart_pow_dvd_natAbs_discr_of_noCommon
#print axioms B699Height.factorial_cancelled_content
#print axioms B699Height.scaled_power_of_factorial_discriminant
#print axioms B699Height.heightBase_le_effectiveHeight_pow
#print axioms B699Height.residual_power_le_of_discriminant_power
#print axioms B699Height.height_of_factorial_discriminant
#print axioms B699Height.four_mul_primesBelow_lt
#print axioms B699Height.counterexample_height
#print axioms B699Height.common_of_height_lt
#print axioms B699Height.counterexample_height_of_index185
#print axioms B699Height.common_of_index185_height_lt

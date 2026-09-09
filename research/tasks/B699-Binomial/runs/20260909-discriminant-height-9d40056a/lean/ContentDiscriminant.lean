import research.tasks.«B699-Binomial».runs.«20260909-discriminant-height-9d40056a».lean.CoefficientContent
import research.tasks.«B699-Binomial».runs.«20260909-discriminant-height-9d40056a».lean.DiscriminantAlgebra
import Mathlib.Data.Int.Basic

set_option autoImplicit false
set_option relaxedAutoImplicit false

namespace B699Height

/-- All complete selected prime powers contribute to the content exponent.
This statement is unconditional on noCommon and on discriminant nonvanishing. -/
theorem avoidingPart_pow_dvd_natAbs_discr {n i j : ℕ}
    (hi : 1 ≤ i) (hij : i ≤ j) (hjn : j ≤ n) :
    B699LargePrimeStructure.avoidingPart n i j ^ (2 * (i - 1)) ∣
      (coefficientPolynomial n i j).discr.natAbs := by
  obtain ⟨G, hG⟩ := coefficientPolynomial_eq_C_mul hij hjn
  have hd : (B699LargePrimeStructure.avoidingPart n i j : ℤ) ≠ 0 := by
    exact_mod_cast (avoidingPart_pos n i j).ne'
  have hdeg : 0 < (coefficientPolynomial n i j).natDegree := by
    rw [coefficientPolynomial_natDegree hij]
    omega
  have hh := content_pow_dvd_discr (coefficientPolynomial n i j) G
    (B699LargePrimeStructure.avoidingPart n i j : ℤ) hd hG hdeg
  rw [coefficientPolynomial_natDegree hij] at hh
  have he : 2 * i - 2 = 2 * (i - 1) := by omega
  rw [he, ← Nat.cast_pow] at hh
  exact Int.natCast_dvd.mp hh

/-- D=V is used only under the actual original noCommon assumption. -/
theorem primePart_pow_dvd_natAbs_discr_of_noCommon {n i j : ℕ}
    (hi : 1 ≤ i) (hij : i < j) (hjn : j ≤ n / 2)
    (hno : ¬ ∃ p : ℕ, p.Prime ∧ i ≤ p ∧ p ∣ Nat.gcd (n.choose i) (n.choose j)) :
    B699BridgeAudit.primePart i (n.choose i) ^ (2 * (i - 1)) ∣
      (coefficientPolynomial n i j).discr.natAbs := by
  rw [← B699LargePrimeStructure.avoidingPart_eq_primePart_of_noCommon hno]
  exact avoidingPart_pow_dvd_natAbs_discr hi hij.le (by omega)

/-- Explicit nonzero input at the content layer; the final consumer must supply
it from the actual polynomial recurrence, not assume it about arbitrary F. -/
theorem primePart_pow_le_natAbs_discr_of_noCommon {n i j : ℕ}
    (hi : 1 ≤ i) (hij : i < j) (hjn : j ≤ n / 2)
    (hno : ¬ ∃ p : ℕ, p.Prime ∧ i ≤ p ∧ p ∣ Nat.gcd (n.choose i) (n.choose j))
    (hdisc : (coefficientPolynomial n i j).discr ≠ 0) :
    B699BridgeAudit.primePart i (n.choose i) ^ (2 * (i - 1)) ≤
      (coefficientPolynomial n i j).discr.natAbs :=
  Nat.le_of_dvd (Int.natAbs_pos.mpr hdisc)
    (primePart_pow_dvd_natAbs_discr_of_noCommon hi hij hjn hno)

end B699Height

import research.tasks.«B699-Binomial».runs.«20260909-discriminant-height-9d40056a».lean.FactorialHeight
import research.tasks.«B699-Binomial».runs.«20260909-discriminant-height-9d40056a».lean.ContentDiscriminant
import research.tasks.«B699-Binomial».runs.«20260909-discriminant-height-9d40056a».lean.ScaledDiscriminant
import research.tasks.«B699-Binomial».runs.«20260909-large-prime-structure-cb4764f0».lean.SmallPartBound
import research.tasks.«B686-Four».formalization.PrimeCounting.LinearPrimeCounting

set_option autoImplicit false
set_option relaxedAutoImplicit false

namespace B699Height

/-- The already accepted wheel inequality actually gives a strict positive
height exponent at every index at least 185. -/
theorem four_mul_primesBelow_lt {i : ℕ} (hi : 185 ≤ i) :
    4 * i.primesBelow.card < i := by
  have h := B686PrimeCounting.prime_counting_linear (i - 1)
  rw [Nat.primeCounting_sub_one, ← Nat.primesBelow_card_eq_primeCounting'] at h
  omega

/-- Every original counterexample with a positive discriminant exponent has
an explicit computable height bound. No structural or external theorem premise. -/
theorem counterexample_height {n i j : ℕ}
    (hi : 1 ≤ i) (hij : i < j) (hjn : j ≤ n / 2)
    (hcount : 4 * i.primesBelow.card < i)
    (hno : ¬ ∃ p : ℕ, p.Prime ∧ i ≤ p ∧ p ∣ Nat.gcd (n.choose i) (n.choose j)) :
    n ≤ effectiveHeight i := by
  by_cases hi2 : i ≤ 2
  · exact False.elim (hno (B699LargePrimeStructure.common_small_index hi hij hjn hi2))
  have hi3 : 3 ≤ i := by omega
  have hjn' : j ≤ n := by omega
  have hik : i ≤ n - j := by omega
  have hpos := coefficientPolynomial_discr_pos hi hij.le hik hjn'
  have hsplit := B699LargePrimeStructure.smallPrimePart_mul_primePart (by omega : i ≤ n)
  have hsmall : B699LargePrimeStructure.smallPrimePart n i ≤ n ^ i.primesBelow.card := by
    simpa only [B699LargePrimeStructure.smallPrimeCount, Nat.primesBelow] using
      B699LargePrimeStructure.smallPrimePart_le_pow_smallPrimeCount
        (i := i) (by omega : 0 < n)
  exact height_of_factorial_discriminant (by omega) hi3 (by omega) hcount
    hsplit hsmall
    (primePart_pow_le_natAbs_discr_of_noCommon hi hij hjn hno hpos.ne')
    (coefficientPolynomial_scaled_discr_sq_le hi hij.le hik hjn')

/-- Original Common consumer beyond the explicit height, including p=i. -/
theorem common_of_height_lt {n i j : ℕ}
    (hi : 1 ≤ i) (hij : i < j) (hjn : j ≤ n / 2)
    (hcount : 4 * i.primesBelow.card < i) (hheight : effectiveHeight i < n) :
    ∃ p : ℕ, p.Prime ∧ i ≤ p ∧ p ∣ Nat.gcd (n.choose i) (n.choose j) := by
  by_contra hno
  exact hheight.not_ge (counterexample_height hi hij hjn hcount hno)

/-- Whole high-index counterexample consumer using the fixed wheel theorem. -/
theorem counterexample_height_of_index185 {n i j : ℕ}
    (hi : 185 ≤ i) (hij : i < j) (hjn : j ≤ n / 2)
    (hno : ¬ ∃ p : ℕ, p.Prime ∧ i ≤ p ∧ p ∣ Nat.gcd (n.choose i) (n.choose j)) :
    n ≤ effectiveHeight i :=
  counterexample_height (by omega) hij hjn (four_mul_primesBelow_lt hi) hno

/-- Original high-index tail with no prime-count or discriminant parameter. -/
theorem common_of_index185_height_lt {n i j : ℕ}
    (hi : 185 ≤ i) (hij : i < j) (hjn : j ≤ n / 2)
    (hheight : effectiveHeight i < n) :
    ∃ p : ℕ, p.Prime ∧ i ≤ p ∧ p ∣ Nat.gcd (n.choose i) (n.choose j) :=
  common_of_height_lt (by omega) hij hjn (four_mul_primesBelow_lt hi) hheight

end B699Height

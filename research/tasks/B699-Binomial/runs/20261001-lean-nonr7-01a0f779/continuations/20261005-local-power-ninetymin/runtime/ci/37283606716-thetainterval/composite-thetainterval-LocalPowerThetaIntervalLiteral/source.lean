import research.tasks.«B699-Binomial».runs.«20261001-lean-nonr7-01a0f779».continuations.«20261005-lean-halfhour».supply.LocalPowerThetaInterval

set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option Elab.async false

namespace B699LocalPowerVerify20261005

-- theta is expanded from its actual Ioc-zero prime-filter definition.
-- primesLE is expanded to the actual filtered finite range.
theorem theta_increment_eq_sum_literal {a b : ℝ} (hab : a ≤ b) :
    (∑ p ∈ (Finset.Ioc 0 ⌊b⌋₊).filter Nat.Prime, Real.log (p : ℝ)) -
      (∑ p ∈ (Finset.Ioc 0 ⌊a⌋₊).filter Nat.Prime, Real.log (p : ℝ)) =
      ∑ p ∈ (Finset.range (⌊b⌋₊ + 1)).filter Nat.Prime \
          (Finset.range (⌊a⌋₊ + 1)).filter Nat.Prime,
        Real.log (p : ℝ) := by
  simpa only [Chebyshev.theta, Nat.primesLE, Nat.primesBelow] using
    B699LocalPowerTheta20261005.theta_increment_eq_sum hab

theorem prime_interval_subset_literal {a b : ℝ} :
    (Finset.range (⌊b⌋₊ + 1)).filter Nat.Prime \
      (Finset.range (⌊a⌋₊ + 1)).filter Nat.Prime ⊆ Finset.Ioc ⌊a⌋₊ ⌊b⌋₊ := by
  simpa only [Nat.primesLE, Nat.primesBelow] using
    (B699LocalPowerTheta20261005.prime_interval_subset (a := a) (b := b))

theorem theta_increment_bound_literal {a b : ℝ} (ha : 1 ≤ a) (hab : a ≤ b) :
    (∑ p ∈ (Finset.Ioc 0 ⌊b⌋₊).filter Nat.Prime, Real.log (p : ℝ)) -
      (∑ p ∈ (Finset.Ioc 0 ⌊a⌋₊).filter Nat.Prime, Real.log (p : ℝ)) ≤
      (b - a + 1) * Real.log b := by
  simpa only [Chebyshev.theta] using
    B699LocalPowerTheta20261005.theta_increment_bound ha hab

end B699LocalPowerVerify20261005

#print axioms B699LocalPowerVerify20261005.theta_increment_eq_sum_literal
#print axioms B699LocalPowerVerify20261005.prime_interval_subset_literal
#print axioms B699LocalPowerVerify20261005.theta_increment_bound_literal

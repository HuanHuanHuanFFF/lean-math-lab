import research.tasks.«B699-Binomial».runs.«20261001-lean-nonr7-01a0f779».continuations.«20261005-local-power-ninetymin».supply.LocalPowerEndpoint

set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option Elab.async false

namespace B699LocalPowerVerify20261005

theorem log_small_endpoint_literal :
    Real.log ((4096 : ℝ) / 4095 * 100000000) ≤ 19 := by
  rw [show (4096 : ℝ) / 4095 * 100000000 = 100000000 + 100000000 / 4095 by ring]
  exact B699LocalPowerEndpoint20261005.log_small_endpoint

theorem log_tail_endpoint_literal :
    Real.log ((4096 : ℝ) / 4095 * 14400000000) ≤ 24 := by
  rw [show (4096 : ℝ) / 4095 * 14400000000 = 14400000000 + 14400000000 / 4095 by ring]
  exact B699LocalPowerEndpoint20261005.log_tail_endpoint

-- This generic endpoint theorem has explicit numerical inputs.
-- The final two theorems below have only the stated lower bound on x.
theorem local_power_increment_le_endpoint_literal {A x S L : ℝ}
    (hA : 16 ≤ A) (hx : A ≤ x) (hS : Real.sqrt A = S)
    (hL0 : 0 ≤ L) (hL : Real.log ((4096 : ℝ) / 4095 * A) ≤ L) :
    ((∑ n ∈ Finset.Ioc 0 ⌊(4096 : ℝ) / 4095 * x⌋₊, ArithmeticFunction.vonMangoldt n) -
        (∑ p ∈ (Finset.Ioc 0 ⌊(4096 : ℝ) / 4095 * x⌋₊).filter Nat.Prime,
          Real.log (p : ℝ))) -
      ((∑ n ∈ Finset.Ioc 0 ⌊x⌋₊, ArithmeticFunction.vonMangoldt n) -
        (∑ p ∈ (Finset.Ioc 0 ⌊x⌋₊).filter Nat.Prime, Real.log (p : ℝ))) ≤
      x * (L / (4095 * S) + 3 * L ^ 2 / (4 * A)) := by
  have hLA : Real.log (A + A / 4095) ≤ L := by
    rwa [show (4096 : ℝ) / 4095 * A = A + A / 4095 by ring] at hL
  rw [show (4096 : ℝ) / 4095 * x = x + x / 4095 by ring]
  simpa only [Chebyshev.psi, Chebyshev.theta] using
    B699LocalPowerEndpoint20261005.local_power_increment_le_endpoint hA hx hS hL0 hLA

theorem local_power_increment_small_literal {x : ℝ} (hx : 100000000 ≤ x) :
    ((∑ n ∈ Finset.Ioc 0 ⌊(4096 : ℝ) / 4095 * x⌋₊, ArithmeticFunction.vonMangoldt n) -
        (∑ p ∈ (Finset.Ioc 0 ⌊(4096 : ℝ) / 4095 * x⌋₊).filter Nat.Prime,
          Real.log (p : ℝ))) -
      ((∑ n ∈ Finset.Ioc 0 ⌊x⌋₊, ArithmeticFunction.vonMangoldt n) -
        (∑ p ∈ (Finset.Ioc 0 ⌊x⌋₊).filter Nat.Prime, Real.log (p : ℝ))) ≤ x / 300000 := by
  rw [show (4096 : ℝ) / 4095 * x = x + x / 4095 by ring]
  simpa only [Chebyshev.psi, Chebyshev.theta] using
    B699LocalPowerEndpoint20261005.local_power_increment_small hx

theorem local_power_increment_tail_literal {x : ℝ} (hx : 14400000000 ≤ x) :
    ((∑ n ∈ Finset.Ioc 0 ⌊(4096 : ℝ) / 4095 * x⌋₊, ArithmeticFunction.vonMangoldt n) -
        (∑ p ∈ (Finset.Ioc 0 ⌊(4096 : ℝ) / 4095 * x⌋₊).filter Nat.Prime,
          Real.log (p : ℝ))) -
      ((∑ n ∈ Finset.Ioc 0 ⌊x⌋₊, ArithmeticFunction.vonMangoldt n) -
        (∑ p ∈ (Finset.Ioc 0 ⌊x⌋₊).filter Nat.Prime, Real.log (p : ℝ))) ≤ x / 10000000 := by
  rw [show (4096 : ℝ) / 4095 * x = x + x / 4095 by ring]
  simpa only [Chebyshev.psi, Chebyshev.theta] using
    B699LocalPowerEndpoint20261005.local_power_increment_tail hx

end B699LocalPowerVerify20261005

#print axioms B699LocalPowerVerify20261005.log_small_endpoint_literal
#print axioms B699LocalPowerVerify20261005.log_tail_endpoint_literal
#print axioms B699LocalPowerVerify20261005.local_power_increment_le_endpoint_literal
#print axioms B699LocalPowerVerify20261005.local_power_increment_small_literal
#print axioms B699LocalPowerVerify20261005.local_power_increment_tail_literal

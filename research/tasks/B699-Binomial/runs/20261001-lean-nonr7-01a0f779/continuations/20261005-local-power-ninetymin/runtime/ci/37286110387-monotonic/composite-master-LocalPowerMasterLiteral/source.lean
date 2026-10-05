import research.tasks.«B699-Binomial».runs.«20261001-lean-nonr7-01a0f779».continuations.«20261005-local-power-ninetymin».supply.LocalPowerMaster

set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option Elab.async false

namespace B699LocalPowerVerify20261005

theorem theta_root_increment_bound_literal {x : ℝ} {k : Nat}
    (hx : 2 ≤ x) (hk : 2 ≤ k) :
    (∑ p ∈ (Finset.Ioc 0 ⌊((4096 : ℝ) / 4095 * x) ^ ((1 : ℝ) / k)⌋₊).filter Nat.Prime,
        Real.log (p : ℝ)) -
      (∑ p ∈ (Finset.Ioc 0 ⌊x ^ ((1 : ℝ) / k)⌋₊).filter Nat.Prime, Real.log (p : ℝ)) ≤
      (Real.sqrt x * Real.log ((4096 : ℝ) / 4095 * x) / 4095) * (1 / (k : ℝ) ^ 2) +
        Real.log ((4096 : ℝ) / 4095 * x) * (1 / (k : ℝ)) := by
  rw [show (4096 : ℝ) / 4095 * x = x + x / 4095 by ring]
  simpa only [Chebyshev.theta] using
    B699LocalPowerMaster20261005.theta_root_increment_bound hx hk

-- This literal is the actual finite-sum prime-power error, without suppliers.
theorem local_power_increment_bound_of_two_literal {x : ℝ} (hx : 2 ≤ x) :
    ((∑ n ∈ Finset.Ioc 0 ⌊(4096 : ℝ) / 4095 * x⌋₊, ArithmeticFunction.vonMangoldt n) -
        (∑ p ∈ (Finset.Ioc 0 ⌊(4096 : ℝ) / 4095 * x⌋₊).filter Nat.Prime,
          Real.log (p : ℝ))) -
      ((∑ n ∈ Finset.Ioc 0 ⌊x⌋₊, ArithmeticFunction.vonMangoldt n) -
        (∑ p ∈ (Finset.Ioc 0 ⌊x⌋₊).filter Nat.Prime, Real.log (p : ℝ))) ≤
      Real.sqrt x * Real.log ((4096 : ℝ) / 4095 * x) / 4095 +
        Real.log ((4096 : ℝ) / 4095 * x) ^ 2 / (2 * Real.log 2) := by
  rw [show (4096 : ℝ) / 4095 * x = x + x / 4095 by ring]
  simpa only [Chebyshev.psi, Chebyshev.theta] using
    B699LocalPowerMaster20261005.local_power_increment_bound_of_two hx

theorem local_power_increment_bound_literal {x : ℝ} (hx : 100000000 ≤ x) :
    ((∑ n ∈ Finset.Ioc 0 ⌊(4096 : ℝ) / 4095 * x⌋₊, ArithmeticFunction.vonMangoldt n) -
        (∑ p ∈ (Finset.Ioc 0 ⌊(4096 : ℝ) / 4095 * x⌋₊).filter Nat.Prime,
          Real.log (p : ℝ))) -
      ((∑ n ∈ Finset.Ioc 0 ⌊x⌋₊, ArithmeticFunction.vonMangoldt n) -
        (∑ p ∈ (Finset.Ioc 0 ⌊x⌋₊).filter Nat.Prime, Real.log (p : ℝ))) ≤
      Real.sqrt x * Real.log ((4096 : ℝ) / 4095 * x) / 4095 +
        Real.log ((4096 : ℝ) / 4095 * x) ^ 2 / (2 * Real.log 2) := by
  rw [show (4096 : ℝ) / 4095 * x = x + x / 4095 by ring]
  simpa only [Chebyshev.psi, Chebyshev.theta] using
    B699LocalPowerMaster20261005.local_power_increment_bound hx

end B699LocalPowerVerify20261005

#print axioms B699LocalPowerVerify20261005.theta_root_increment_bound_literal
#print axioms B699LocalPowerVerify20261005.local_power_increment_bound_of_two_literal
#print axioms B699LocalPowerVerify20261005.local_power_increment_bound_literal

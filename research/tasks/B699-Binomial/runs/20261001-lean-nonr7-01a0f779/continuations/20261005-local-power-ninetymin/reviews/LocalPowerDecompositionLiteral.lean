import research.tasks.«B699-Binomial».runs.«20261001-lean-nonr7-01a0f779».continuations.«20261005-lean-halfhour».supply.LocalPowerDecomposition

set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option Elab.async false

namespace B699LocalPowerVerify20261005

-- The two sums below are the pinned Mathlib definitions of psi and theta.
-- No free function or local-power hypothesis is introduced.
theorem common_log_cutoff_literal {x z : ℝ} (hx : 2 ≤ x) (hxz : x ≤ z) :
    ⌊Real.log x / Real.log 2⌋₊ ≤ ⌊Real.log z / Real.log 2⌋₊ :=
  B699LocalPowerSteps20261005.common_log_cutoff hx hxz

theorem power_increment_eq_sum_literal {x z : ℝ} {N : Nat}
    (hx : 2 ≤ x) (hxz : x ≤ z) (hN : ⌊Real.log z / Real.log 2⌋₊ ≤ N) :
    ((∑ n ∈ Finset.Ioc 0 ⌊z⌋₊, ArithmeticFunction.vonMangoldt n) -
        (∑ p ∈ (Finset.Ioc 0 ⌊z⌋₊).filter Nat.Prime, Real.log (p : ℝ))) -
      ((∑ n ∈ Finset.Ioc 0 ⌊x⌋₊, ArithmeticFunction.vonMangoldt n) -
        (∑ p ∈ (Finset.Ioc 0 ⌊x⌋₊).filter Nat.Prime, Real.log (p : ℝ))) =
      ∑ k ∈ Finset.Icc 2 N,
        ((∑ p ∈ (Finset.Ioc 0 ⌊z ^ ((1 : ℝ) / k)⌋₊).filter Nat.Prime,
            Real.log (p : ℝ)) -
          (∑ p ∈ (Finset.Ioc 0 ⌊x ^ ((1 : ℝ) / k)⌋₊).filter Nat.Prime,
            Real.log (p : ℝ))) := by
  simpa only [Chebyshev.psi, Chebyshev.theta] using
    B699LocalPowerSteps20261005.power_increment_eq_sum hx hxz hN

theorem local_power_increment_eq_sum_literal {x : ℝ} (hx : 100000000 ≤ x) :
    ((∑ n ∈ Finset.Ioc 0 ⌊x + x / 4095⌋₊, ArithmeticFunction.vonMangoldt n) -
        (∑ p ∈ (Finset.Ioc 0 ⌊x + x / 4095⌋₊).filter Nat.Prime, Real.log (p : ℝ))) -
      ((∑ n ∈ Finset.Ioc 0 ⌊x⌋₊, ArithmeticFunction.vonMangoldt n) -
        (∑ p ∈ (Finset.Ioc 0 ⌊x⌋₊).filter Nat.Prime, Real.log (p : ℝ))) =
      ∑ k ∈ Finset.Icc 2 ⌊Real.log (x + x / 4095) / Real.log 2⌋₊,
        ((∑ p ∈ (Finset.Ioc 0 ⌊(x + x / 4095) ^ ((1 : ℝ) / k)⌋₊).filter Nat.Prime,
            Real.log (p : ℝ)) -
          (∑ p ∈ (Finset.Ioc 0 ⌊x ^ ((1 : ℝ) / k)⌋₊).filter Nat.Prime,
            Real.log (p : ℝ))) := by
  simpa only [Chebyshev.psi, Chebyshev.theta] using
    B699LocalPowerSteps20261005.local_power_increment_eq_sum hx

theorem integer_interval_card_bound_literal {a b : ℝ} (ha : 1 ≤ a) (hab : a ≤ b) :
    ((Finset.Ioc ⌊a⌋₊ ⌊b⌋₊).card : ℝ) ≤ b - a + 1 :=
  B699LocalPowerSteps20261005.integer_interval_card_bound ha hab

end B699LocalPowerVerify20261005

#print axioms B699LocalPowerVerify20261005.common_log_cutoff_literal
#print axioms B699LocalPowerVerify20261005.power_increment_eq_sum_literal
#print axioms B699LocalPowerVerify20261005.local_power_increment_eq_sum_literal
#print axioms B699LocalPowerVerify20261005.integer_interval_card_bound_literal

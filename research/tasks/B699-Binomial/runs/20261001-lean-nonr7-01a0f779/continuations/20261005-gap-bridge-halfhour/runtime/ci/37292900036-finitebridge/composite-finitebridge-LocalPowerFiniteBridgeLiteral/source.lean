import research.tasks.«B699-Binomial».runs.«20261001-lean-nonr7-01a0f779».continuations.«20261005-local-power-ninetymin».supply.LocalPowerFiniteBridge

set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option Elab.async false

namespace B699LocalPowerVerify20261005

theorem tail_gap_of_budget_literal :
    (∀ u : ℝ, 14400000000 ≤ u →
      u / 8192 - 14 * Real.sqrt u - (2001 / 1000000000 : ℝ) * u - 1 ≤
        (∑ n ∈ Finset.Ioc 0 ⌊u + u / 4095⌋₊, ArithmeticFunction.vonMangoldt n) -
          (∑ n ∈ Finset.Ioc 0 ⌊u⌋₊, ArithmeticFunction.vonMangoldt n)) →
    ∀ y : Nat, 14400000000 ≤ y →
      ∃ p : Nat, Nat.Prime p ∧ y < p ∧ 4095 * (p - y) ≤ y := by
  simpa only [B699LocalPowerRound220261005.DifferenceBudget, Chebyshev.psi, B699TailGap.Gap] using
    B699LocalPowerBridge20261005.tail_gap_of_budget

theorem gap_of_middle_and_budget_literal :
    (∀ y : Nat, 122568684 ≤ y → y < 14400000000 →
      ∃ p : Nat, Nat.Prime p ∧ y < p ∧ 4095 * (p - y) ≤ y) →
    (∀ u : ℝ, 14400000000 ≤ u →
      u / 8192 - 14 * Real.sqrt u - (2001 / 1000000000 : ℝ) * u - 1 ≤
        (∑ n ∈ Finset.Ioc 0 ⌊u + u / 4095⌋₊, ArithmeticFunction.vonMangoldt n) -
          (∑ n ∈ Finset.Ioc 0 ⌊u⌋₊, ArithmeticFunction.vonMangoldt n)) →
    (∀ y : Nat, 10000000 ≤ y → y < 122568684 →
      ∃ p : Nat, Nat.Prime p ∧ y < p ∧ 4095 * (p - y) ≤ y) →
    ∀ y : Nat, 10000000 ≤ y →
      ∃ p : Nat, Nat.Prime p ∧ y < p ∧ 4095 * (p - y) ≤ y := by
  simpa only [B699LocalPowerBridge20261005.FiniteMiddleGap,
    B699LocalPowerRound220261005.DifferenceBudget, B699LocalPowerRound220261005.InitialSegment,
    Chebyshev.psi, B699TailGap.Gap] using B699LocalPowerBridge20261005.gap_of_middle_and_budget

end B699LocalPowerVerify20261005

#print axioms B699LocalPowerVerify20261005.tail_gap_of_budget_literal
#print axioms B699LocalPowerVerify20261005.gap_of_middle_and_budget_literal

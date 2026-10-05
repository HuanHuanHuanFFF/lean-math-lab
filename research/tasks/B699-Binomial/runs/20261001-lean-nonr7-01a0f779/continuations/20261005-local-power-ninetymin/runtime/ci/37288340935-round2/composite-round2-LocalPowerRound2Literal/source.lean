import research.tasks.«B699-Binomial».runs.«20261001-lean-nonr7-01a0f779».continuations.«20261005-local-power-ninetymin».supply.LocalPowerRound2

set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option Elab.async false

namespace B699LocalPowerVerify20261005

theorem coefficient_margin_literal :
    (1 / 8192 : ℝ) - 14 / 120000 - 2001 / 1000000000 -
      1 / 10000000 - 1 / 14400000000 = 475571 / 144000000000 :=
  B699LocalPowerRound220261005.coefficient_margin

theorem sqrt_bound_literal {x : ℝ} (hx : 14400000000 ≤ x) :
    Real.sqrt x ≤ x / 120000 :=
  B699LocalPowerRound220261005.sqrt_bound hx

theorem theta_tail_of_budget_literal
    (hbudget : ∀ u : ℝ, 14400000000 ≤ u →
      u / 8192 - 14 * Real.sqrt u - (2001 / 1000000000 : ℝ) * u - 1 ≤
        (∑ n ∈ Finset.Ioc 0 ⌊u + u / 4095⌋₊, ArithmeticFunction.vonMangoldt n) -
          (∑ n ∈ Finset.Ioc 0 ⌊u⌋₊, ArithmeticFunction.vonMangoldt n))
    {x : ℝ} (hx : 14400000000 ≤ x) :
    (∑ p ∈ (Finset.Ioc 0 ⌊x⌋₊).filter Nat.Prime, Real.log (p : ℝ)) <
      (∑ p ∈ (Finset.Ioc 0 ⌊x + x / 4095⌋₊).filter Nat.Prime, Real.log (p : ℝ)) := by
  have hb : B699LocalPowerRound220261005.DifferenceBudget := by
    simpa only [B699LocalPowerRound220261005.DifferenceBudget, Chebyshev.psi] using hbudget
  simpa only [Chebyshev.theta] using B699LocalPowerRound220261005.theta_tail_of_budget hb hx

theorem theta_bridge_of_finite_literal
    (hfinite : ∀ t : ℝ, 122568684 ≤ t → t ≤ 14403516484 →
      |(∑ n ∈ Finset.Ioc 0 ⌊t⌋₊, ArithmeticFunction.vonMangoldt n) - t| ≤
        (3 / 25000 : ℝ) * t)
    {x : ℝ} (hx : 122568684 ≤ x) (hB : x < 14400000000) :
    (∑ p ∈ (Finset.Ioc 0 ⌊x⌋₊).filter Nat.Prime, Real.log (p : ℝ)) <
      (∑ p ∈ (Finset.Ioc 0 ⌊x + x / 4095⌋₊).filter Nat.Prime, Real.log (p : ℝ)) := by
  have hf : B699LocalPowerRound220261005.FinitePsiSupply := by
    simpa only [B699LocalPowerRound220261005.FinitePsiSupply, Chebyshev.psi] using hfinite
  simpa only [Chebyshev.theta] using B699LocalPowerRound220261005.theta_bridge_of_finite hf hx hB

theorem real_prime_from_supplies_literal
    (hfinite : ∀ t : ℝ, 122568684 ≤ t → t ≤ 14403516484 →
      |(∑ n ∈ Finset.Ioc 0 ⌊t⌋₊, ArithmeticFunction.vonMangoldt n) - t| ≤
        (3 / 25000 : ℝ) * t)
    (hbudget : ∀ u : ℝ, 14400000000 ≤ u →
      u / 8192 - 14 * Real.sqrt u - (2001 / 1000000000 : ℝ) * u - 1 ≤
        (∑ n ∈ Finset.Ioc 0 ⌊u + u / 4095⌋₊, ArithmeticFunction.vonMangoldt n) -
          (∑ n ∈ Finset.Ioc 0 ⌊u⌋₊, ArithmeticFunction.vonMangoldt n))
    {x : ℝ} (hx : 122568684 ≤ x) :
    ∃ p : ℕ, Nat.Prime p ∧ x < (p : ℝ) ∧ (4095 : ℝ) * ((p : ℝ) - x) ≤ x := by
  have hf : B699LocalPowerRound220261005.FinitePsiSupply := by
    simpa only [B699LocalPowerRound220261005.FinitePsiSupply, Chebyshev.psi] using hfinite
  have hb : B699LocalPowerRound220261005.DifferenceBudget := by
    simpa only [B699LocalPowerRound220261005.DifferenceBudget, Chebyshev.psi] using hbudget
  exact B699LocalPowerRound220261005.real_prime_from_supplies hf hb hx

-- All three still-needed suppliers are explicit; SmallLP/TailLP are absent.
-- Nat subtraction is retained together with the strict y<p witness.
theorem gap_from_supplies_literal
    (hfinite : ∀ t : ℝ, 122568684 ≤ t → t ≤ 14403516484 →
      |(∑ n ∈ Finset.Ioc 0 ⌊t⌋₊, ArithmeticFunction.vonMangoldt n) - t| ≤
        (3 / 25000 : ℝ) * t)
    (hbudget : ∀ u : ℝ, 14400000000 ≤ u →
      u / 8192 - 14 * Real.sqrt u - (2001 / 1000000000 : ℝ) * u - 1 ≤
        (∑ n ∈ Finset.Ioc 0 ⌊u + u / 4095⌋₊, ArithmeticFunction.vonMangoldt n) -
          (∑ n ∈ Finset.Ioc 0 ⌊u⌋₊, ArithmeticFunction.vonMangoldt n))
    (hinitial : ∀ y : ℕ, 10000000 ≤ y → y < 122568684 →
      ∃ p : ℕ, Nat.Prime p ∧ y < p ∧ 4095 * (p - y) ≤ y) :
    ∀ y : ℕ, 10000000 ≤ y → ∃ p : ℕ, Nat.Prime p ∧ y < p ∧ 4095 * (p - y) ≤ y := by
  have hf : B699LocalPowerRound220261005.FinitePsiSupply := by
    simpa only [B699LocalPowerRound220261005.FinitePsiSupply, Chebyshev.psi] using hfinite
  have hb : B699LocalPowerRound220261005.DifferenceBudget := by
    simpa only [B699LocalPowerRound220261005.DifferenceBudget, Chebyshev.psi] using hbudget
  simpa only [B699TailGap.Gap] using
    B699LocalPowerRound220261005.gap_from_supplies hf hb hinitial

end B699LocalPowerVerify20261005

#print axioms B699LocalPowerVerify20261005.coefficient_margin_literal
#print axioms B699LocalPowerVerify20261005.sqrt_bound_literal
#print axioms B699LocalPowerVerify20261005.theta_tail_of_budget_literal
#print axioms B699LocalPowerVerify20261005.theta_bridge_of_finite_literal
#print axioms B699LocalPowerVerify20261005.real_prime_from_supplies_literal
#print axioms B699LocalPowerVerify20261005.gap_from_supplies_literal

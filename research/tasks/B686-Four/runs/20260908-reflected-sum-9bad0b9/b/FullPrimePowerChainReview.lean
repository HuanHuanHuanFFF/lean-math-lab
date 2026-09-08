import research.tasks.«B686-Four».runs.«20260908-reflected-sum-9bad0b9».main.SumPrimePowerExclusion

/-! B's read-only chain audit. This file adds no mathematical premise to the
reviewed roots. The two examples check the necessity of their stated domain.
No other mathematical source file was read for this review; `#print` below
inspects the actual definitions already loaded in Lean's environment. -/

#print B686Target.product
#print B686Reflected.reflectedSum
#check @B686ReflectedA.original_high_contact_data
#check @B686ReflectedA.original_high_contact_nat
#check @B686ReflectedA.original_high_contact_sharp_nat
#check @B686Reflected.not_four_prime_power_reflected_sum

/-- info: 'B686ReflectedA.original_high_contact_data' depends on axioms: [propext, Classical.choice, Quot.sound] -/
#guard_msgs in
#print axioms B686ReflectedA.original_high_contact_data
/-- info: 'B686ReflectedA.original_high_contact_nat' depends on axioms: [propext, Classical.choice, Quot.sound] -/
#guard_msgs in
#print axioms B686ReflectedA.original_high_contact_nat
/-- info: 'B686Reflected.not_four_prime_power_reflected_sum' depends on axioms: [propext, Classical.choice, Quot.sound] -/
#guard_msgs in
#print axioms B686Reflected.not_four_prime_power_reflected_sum

namespace B686Round9.FullPrimePowerChainReview

/-- The reviewed root in precisely the original-equation-implies-S-not-pow
orientation. No extra valuation, positivity, unit or contact premise appears. -/
theorem original_equation_sum_ne_prime_power (k n m p a : ℕ)
    (hk : 2 ≤ k) (hsep : n + k ≤ m)
    (heq : B686Target.product k m = 4 * B686Target.product k n)
    (hp : Nat.Prime p) : B686Reflected.reflectedSum k n m ≠ p ^ a := by
  intro hsum
  exact B686Reflected.not_four_prime_power_reflected_sum k n m p a hk hsep hp hsum heq

/-- Dropping k >= 2 really permits a separated multiplier-four example. -/
theorem length_one_boundary :
    B686Target.product 1 3 = 4 * B686Target.product 1 0 ∧
      0 + 1 ≤ (3 : ℕ) ∧ B686Reflected.reflectedSum 1 0 3 = 5 ^ 1 ∧
      Nat.Prime 5 := by decide

/-- Dropping separation really permits a prime-power reflected sum at k=3. -/
theorem overlapping_boundary :
    B686Target.product 3 1 = 4 * B686Target.product 3 0 ∧
      B686Reflected.reflectedSum 3 0 1 = 5 ^ 1 ∧ Nat.Prime 5 ∧
      ¬ (0 + 3 ≤ (1 : ℕ)) := by decide

#check @original_equation_sum_ne_prime_power
/-- info: 'B686Round9.FullPrimePowerChainReview.original_equation_sum_ne_prime_power' depends on axioms: [propext,
 Classical.choice,
 Quot.sound] -/
#guard_msgs in
#print axioms original_equation_sum_ne_prime_power
/-- info: 'B686Round9.FullPrimePowerChainReview.length_one_boundary' depends on axioms: [propext, Classical.choice, Quot.sound] -/
#guard_msgs in
#print axioms length_one_boundary
/-- info: 'B686Round9.FullPrimePowerChainReview.overlapping_boundary' depends on axioms: [propext, Classical.choice, Quot.sound] -/
#guard_msgs in
#print axioms overlapping_boundary

end B686Round9.FullPrimePowerChainReview

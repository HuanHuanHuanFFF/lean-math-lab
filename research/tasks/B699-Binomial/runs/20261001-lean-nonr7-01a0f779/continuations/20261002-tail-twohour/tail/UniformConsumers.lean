import research.tasks.«B699-Binomial».runs.«20261001-lean-nonr7-01a0f779».continuations.«20261002-tail-twohour».tail.CertifiedSieveRows
import research.tasks.«B699-Binomial».runs.«20261001-lean-nonr7-01a0f779».continuations.«20261002-onehour».tail.Consumers

/-! Planned final uniform original consumers. The actual115 certificate root
must be compiled and audited before this file can be accepted. All legal j,
same prime p>=i, original binomial coefficients and full prime powers remain. -/
set_option autoImplicit false
set_option relaxedAutoImplicit false
namespace B699TwoHourConsumers

theorem common_of_ratio_4096 {n i j : Nat} (hi : 1000 ≤ i)
    (hij : i < j) (hjn : j ≤ n / 2) (hn : 4096 * i ≤ n) :
    ∃ p : Nat, p.Prime ∧ i ≤ p ∧ p ∣ n.choose i ∧ p ∣ n.choose j := by
  by_cases hup : i ≤ 131071
  · exact B699ContinuationRows.common_1000_131071_of_finite_sieve
      B699PrunedSieve.finite_sieve_certificates hi hup hij hjn hn
  · exact B699TailConsumers.common_of_ratio_4096 (by omega) hij hjn hn

theorem counterexample_height_1000 {n i j : Nat} (hi : 1000 ≤ i)
    (hij : i < j) (hjn : j ≤ n / 2)
    (hno : ¬ ∃ p : Nat, p.Prime ∧ i ≤ p ∧ p ∣ n.choose i ∧ p ∣ n.choose j) :
    n < 4096 * i := by
  by_contra hn
  exact hno (common_of_ratio_4096 hi hij hjn (by omega))

theorem counterexample_height_4883 {n i j : Nat} (hi : 4883 ≤ i)
    (hij : i < j) (hjn : j ≤ n / 2)
    (hno : ¬ ∃ p : Nat, p.Prime ∧ i ≤ p ∧ p ∣ n.choose i ∧ p ∣ n.choose j) :
    n < 4096 * i :=
  counterexample_height_1000 (by omega) hij hjn hno

end B699TwoHourConsumers
#check @B699TwoHourConsumers.common_of_ratio_4096
#check @B699TwoHourConsumers.counterexample_height_1000
#check @B699TwoHourConsumers.counterexample_height_4883
#print axioms B699TwoHourConsumers.common_of_ratio_4096
#print axioms B699TwoHourConsumers.counterexample_height_1000
#print axioms B699TwoHourConsumers.counterexample_height_4883

import research.tasks.«B699-Binomial».runs.«20260908-external-reductions-b3c1b7».lean.DivisorTransfer

set_option autoImplicit false
set_option relaxedAutoImplicit false

namespace B699ExternalRecovery

/-- Original B699 range and gcd formulation; p = i and full valuations remain. -/
theorem original_counterexample_prime_part_transfer {n i j : ℕ}
    (_hi : 1 ≤ i) (hij : i < j) (hjn : j ≤ n / 2)
    (hnone : ¬ ∃ p : ℕ, p.Prime ∧ i ≤ p ∧ p ∣ Nat.gcd (n.choose i) (n.choose j)) :
    B699BridgeAudit.primePart i (n.choose i) ∣ j.choose i := by
  apply B699BridgeAudit.actual_prime_part_transfer hij.le
    (hjn.trans (Nat.div_le_self n 2))
  rintro ⟨p, hp, hpi, hpa, hpb⟩
  exact hnone ⟨p, hp, hpi, Nat.dvd_gcd hpa hpb⟩

/-- A concrete obstruction to the necessary divisibility proves the original conclusion. -/
theorem common_large_prime_of_prime_part_not_dvd {n i j : ℕ}
    (hi : 1 ≤ i) (hij : i < j) (hjn : j ≤ n / 2)
    (hnot : ¬ B699BridgeAudit.primePart i (n.choose i) ∣ j.choose i) :
    ∃ p : ℕ, p.Prime ∧ i ≤ p ∧ p ∣ Nat.gcd (n.choose i) (n.choose j) := by
  by_contra hnone
  exact hnot (original_counterexample_prime_part_transfer hi hij hjn hnone)

end B699ExternalRecovery

/-- info: 'B699BridgeAudit.divisor_transfer' depends on axioms: [propext, Classical.choice, Quot.sound] -/
#guard_msgs in
#print axioms B699BridgeAudit.divisor_transfer

/-- info: 'B699BridgeAudit.prime_part_dvd' depends on axioms: [propext, Classical.choice, Quot.sound] -/
#guard_msgs in
#print axioms B699BridgeAudit.prime_part_dvd

/-- info: 'B699BridgeAudit.prime_part_coprime_of_no_common' depends on axioms: [propext, Classical.choice, Quot.sound] -/
#guard_msgs in
#print axioms B699BridgeAudit.prime_part_coprime_of_no_common

/-- info: 'B699BridgeAudit.actual_prime_part_transfer' depends on axioms: [propext, Classical.choice, Quot.sound] -/
#guard_msgs in
#print axioms B699BridgeAudit.actual_prime_part_transfer

/-- info: 'B699ExternalRecovery.original_counterexample_prime_part_transfer' depends on axioms: [propext,
 Classical.choice,
 Quot.sound] -/
#guard_msgs in
#print axioms B699ExternalRecovery.original_counterexample_prime_part_transfer

/-- info: 'B699ExternalRecovery.common_large_prime_of_prime_part_not_dvd' depends on axioms: [propext,
 Classical.choice,
 Quot.sound] -/
#guard_msgs in
#print axioms B699ExternalRecovery.common_large_prime_of_prime_part_not_dvd

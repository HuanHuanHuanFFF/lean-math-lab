import research.tasks.«B699-Binomial».runs.«20261001-lean-nonr7-01a0f779».continuations.«20261002-tail-twohour».tail.SieveRecursion
import research.tasks.«B699-Binomial».runs.«20261001-lean-nonr7-01a0f779».continuations.«20261002-tail-twohour».tail.AllNumericFinal
import research.tasks.«B699-Binomial».runs.«20261001-lean-nonr7-01a0f779».continuations.«20261002-tail-twohour».tail.CoreTransfer

/-! Transfer of actual kernel-checked finite numeric goals to the adopted115
rows. This candidate requires the independently verified numeric modules. -/
set_option autoImplicit false
set_option relaxedAutoImplicit false
namespace B699PrunedSieve

theorem numeric_pairs_match :
    B699ContinuationRows.rows.map (fun r => (r.b, r.bound)) = B699CorePrunedSieve.AllNumeric.pairs := by decide

theorem finite_sieve_certificates : B699ContinuationRows.finiteSieveCertificates := by
  intro r hr
  have hpair : (r.b, r.bound) ∈ B699CorePrunedSieve.AllNumeric.pairs := by
    rw [← numeric_pairs_match]
    exact List.mem_map.mpr ⟨r, hr, rfl⟩
  have hc := B699CorePrunedSieve.AllNumeric.pairs_valid (r.b, r.bound) hpair
  rw [B699CorePrunedSieve.count_eq_first_implementation, B699CorePrunedSieve.primes_eq_first_implementation, count_eq_adopted_sieveValue] at hc
  exact hc

end B699PrunedSieve
#check B699PrunedSieve.finite_sieve_certificates
#print axioms B699PrunedSieve.numeric_pairs_match
#print axioms B699PrunedSieve.finite_sieve_certificates




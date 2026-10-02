import research.tasks.«B699-Binomial».runs.«20261001-lean-nonr7-01a0f779».continuations.«20261002-onehour».tail.ICConsumer
import research.tasks.«B699-Binomial».runs.«20261001-lean-nonr7-01a0f779».continuations.«20261002-onehour».tail.RowsNumeric
import research.tasks.«B699-Binomial».runs.«20261001-lean-nonr7-01a0f779».continuations.«20261002-onehour».tail.SieveFloor

/-! The fixed 115-row bridge with its one remaining finite arithmetic obligation
exposed exactly. The obligation is NOT proved in this module. -/
set_option autoImplicit false
set_option relaxedAutoImplicit false
open scoped BigOperators
namespace B699ContinuationRows

def sievePrimes : Finset Nat := {2, 3, 5, 7, 11, 13, 17, 19, 23, 29, 31, 37, 41, 43, 47, 53}
def sieveValue (b : Nat) : Int :=
  ∑ t ∈ sievePrimes.powerset, (-1 : Int) ^ t.card * (b / t.prod id : Nat)
def finiteSieveCertificates : Prop :=
  ∀ r ∈ rows, sieveValue r.b ≤ (r.bound : Int) - 15

theorem fixed_primes_prime : ∀ p ∈ sievePrimes, p.Prime := by decide
theorem fixed_primes_max : ∀ p ∈ sievePrimes, p ≤ 53 := by decide
theorem fixed_primes_card : sievePrimes.card = 16 := by decide

theorem row_primeCounting_bound (hcert : finiteSieveCertificates) {r : Row} (hr : r ∈ rows) :
    Nat.primeCounting r.b ≤ r.bound := by
  have hv := all_rows_valid r hr
  have hb53 : 53 ≤ r.b := by have ha := hv.1; have hab := hv.2.1; omega
  have hbound : ∀ p ∈ sievePrimes, p ≤ r.b := fun p hp =>
    (fixed_primes_max p hp).trans hb53
  have hupper := B699ContinuationSieve.primeCounting_sieve_upper
    (by decide : sievePrimes.Nonempty) fixed_primes_prime hbound
  rw [fixed_primes_card] at hupper
  have hupperI : (Nat.primeCounting r.b : Int) ≤
      15 + (B699ContinuationSieve.survivors sievePrimes r.b).card := by
    exact_mod_cast hupper
  have heq := B699ContinuationSieve.survivors_card_floor_formula
    sievePrimes fixed_primes_prime r.b
  change ((B699ContinuationSieve.survivors sievePrimes r.b).card : Int) = sieveValue r.b at heq
  have hs := hcert r hr
  rw [← heq] at hs
  have hi : (Nat.primeCounting r.b : Int) ≤ r.bound := by omega
  exact_mod_cast hi

theorem common_1000_131071_of_finite_sieve (hcert : finiteSieveCertificates)
    {n i j : Nat} (hi : 1000 ≤ i) (hup : i ≤ 131071) (hij : i < j)
    (hjn : j ≤ n / 2) (hn : 4096 * i ≤ n) :
    ∃ p : Nat, p.Prime ∧ i ≤ p ∧ p ∣ n.choose i ∧ p ∣ n.choose j := by
  obtain ⟨r, hr, hai, hib⟩ := covers_1000_131071 hi hup
  obtain ⟨ha, hab, hbk, hc⟩ := all_rows_valid r hr
  exact B699ContinuationIC.row_common hi hij hjn hai hib hbk
    (by decide : 12 ≤ 12) (row_primeCounting_bound hcert hr) hc hn

end B699ContinuationRows
#check @B699ContinuationRows.finiteSieveCertificates
#check @B699ContinuationRows.common_1000_131071_of_finite_sieve
#print axioms B699ContinuationRows.fixed_primes_prime
#print axioms B699ContinuationRows.row_primeCounting_bound
#print axioms B699ContinuationRows.common_1000_131071_of_finite_sieve

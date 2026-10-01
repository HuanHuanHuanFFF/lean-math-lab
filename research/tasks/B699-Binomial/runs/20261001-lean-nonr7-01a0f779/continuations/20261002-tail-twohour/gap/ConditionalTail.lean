import research.tasks.«B699-Binomial».runs.«20261001-lean-nonr7-01a0f779».continuations.«20261002-tail-twohour».gap.FiniteSupply
import research.tasks.«B699-Binomial».runs.«20261001-lean-nonr7-01a0f779».continuations.«20261002-tail-twohour».gap.DusartAdapter
import research.tasks.«B699-Binomial».runs.«20261001-lean-nonr7-01a0f779».continuations.«20261002-onehour».tail.Consumers
import research.tasks.«B699-Binomial».runs.«20261001-lean-nonr7-01a0f779».continuations.«20261002-onehour».tail.SieveRowsConsumer

/-! The actual previously accepted analytic/counting interfaces are connected
here. Exactly the finite 115-row check, infinite prime supplier, and finite
prime supplier remain explicit. This is not an unconditional original tail. -/
set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option Elab.async false

namespace B699TailAssembly
open B699TailGap

theorem actual_height_of_finite_sieve
    (hcert : B699ContinuationRows.finiteSieveCertificates)
    {n i j : ℕ} (hi : 1000 ≤ i) (hij : i < j) (hjn : j ≤ n / 2)
    (hno : ¬ Common n i j) : n < 4096 * i := by
  by_contra hn
  have hratio : 4096 * i ≤ n := by omega
  by_cases hup : i ≤ 131071
  · exact hno (B699ContinuationRows.common_1000_131071_of_finite_sieve
      hcert hi hup hij hjn hratio)
  · exact hno (B699TailConsumers.common_of_ratio_4096
      (by omega : 131072 ≤ i) hij hjn hratio)

theorem original_tail_of_sieve_gap_and_finite
    (hcert : B699ContinuationRows.finiteSieveCertificates)
    (hgap : Gap 4095 10000000) (hfinite : FiniteTopSupply 4883 20000000) :
    ∀ n i j : ℕ, 4883 ≤ i → i < j → j ≤ n / 2 →
      ∃ p : ℕ, p.Prime ∧ i ≤ p ∧ p ∣ n.choose i ∧ p ∣ n.choose j := by
  apply original_tail_of_prime_supplies ?_ hgap hfinite
  intro n i j hi hij hjn hno
  exact actual_height_of_finite_sieve hcert (by omega) hij hjn hno

theorem original_tail_of_sieve_dusart_and_finite
    (hcert : B699ContinuationRows.finiteSieveCertificates)
    (hds : DusartStrictInput) (hfinite : FiniteTopSupply 4883 20000000) :
    ∀ n i j : ℕ, 4883 ≤ i → i < j → j ≤ n / 2 →
      ∃ p : ℕ, p.Prime ∧ i ≤ p ∧ p ∣ n.choose i ∧ p ∣ n.choose j :=
  original_tail_of_sieve_gap_and_finite hcert (nat_gap_of_dusart hds) hfinite

end B699TailAssembly

#print B699TailAssembly.original_tail_of_sieve_gap_and_finite
#print B699TailAssembly.original_tail_of_sieve_dusart_and_finite
#print axioms B699TailAssembly.actual_height_of_finite_sieve
#print axioms B699TailAssembly.original_tail_of_sieve_gap_and_finite
#print axioms B699TailAssembly.original_tail_of_sieve_dusart_and_finite

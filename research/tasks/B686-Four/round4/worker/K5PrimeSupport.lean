import research.tasks.«B686-Four».round4.worker.K5AllPrimeClasses
import Mathlib.Data.Nat.Factorization.Defs

/-! A necessary structure theorem on the original natural displacement.
This counts DISTINCT prime divisors. It is separate from the coordinator's
necessary condition on how many factor positions are occupied. -/

namespace B686Round4K5

theorem solution_requires_three_distinct_primes (n m : ℕ) (hm : n + 5 ≤ m)
    (heq : (∏ r ∈ Finset.Icc 1 (5 : ℕ), (m + r)) =
      4 * (∏ r ∈ Finset.Icc 1 (5 : ℕ), (n + r))) :
    3 ≤ (m - n).primeFactors.card := by
  let d := m - n
  have hd : 5 ≤ d := by dsimp [d]; omega
  have hd0 : d ≠ 0 := by omega
  have hpos : 0 < d.primeFactors.card :=
    Finset.card_pos.mpr (Nat.nonempty_primeFactors.mpr (by omega))
  change 3 ≤ d.primeFactors.card
  by_contra hnot
  have hcases : d.primeFactors.card = 1 ∨ d.primeFactors.card = 2 := by omega
  rcases hcases with hcard | hcard
  · obtain ⟨p, hs⟩ := Finset.card_eq_one.mp hcard
    have hpMem : p ∈ d.primeFactors := by rw [hs]; simp
    have hp := Nat.prime_of_mem_primeFactors hpMem
    have ha := hp.factorization_pos_of_dvd hd0 (Nat.dvd_of_mem_primeFactors hpMem)
    have hdecomp : d = p ^ d.factorization p := by
      have hf := Nat.prod_factorization_pow_eq_self hd0
      rw [Finsupp.prod, Nat.support_factorization, hs] at hf
      simpa only [Finset.prod_singleton] using hf.symm
    exact not_four_any_prime_power n m p (d.factorization p) hm hp ha hdecomp heq
  · obtain ⟨p, q, hpq, hs⟩ := Finset.card_eq_two.mp hcard
    have hpMem : p ∈ d.primeFactors := by rw [hs]; simp
    have hqMem : q ∈ d.primeFactors := by rw [hs]; simp
    have hp := Nat.prime_of_mem_primeFactors hpMem
    have hq := Nat.prime_of_mem_primeFactors hqMem
    have ha := hp.factorization_pos_of_dvd hd0 (Nat.dvd_of_mem_primeFactors hpMem)
    have hb := hq.factorization_pos_of_dvd hd0 (Nat.dvd_of_mem_primeFactors hqMem)
    have hdecomp : d = p ^ d.factorization p * q ^ d.factorization q := by
      have hf := Nat.prod_factorization_pow_eq_self hd0
      rw [Finsupp.prod, Nat.support_factorization, hs] at hf
      simpa only [Finset.prod_pair hpq] using hf.symm
    exact not_four_any_two_prime_powers n m p q (d.factorization p) (d.factorization q)
      hm hp hq ha hb hdecomp heq

/-- info: 'B686Round4K5.solution_requires_three_distinct_primes' depends on axioms: [propext, Classical.choice, Quot.sound] -/
#guard_msgs in
#print axioms solution_requires_three_distinct_primes

end B686Round4K5

import research.tasks.«B686-Four».round6.b.SumFiveAdic
import Mathlib.Data.Nat.Factorization.Defs

/-! Necessary conditions on m+n+6, connected to the original rational target.
These are separate from the older conditions on m-n. -/
namespace B686Round6B

/-- With no factors 2 or 3, every prime divisor is at least 5. -/
theorem prime_divisor_ge_five (s p : ℕ) (h6 : Nat.Coprime s 6)
    (hp : p.Prime) (hps : p ∣ s) : 5 ≤ p := by
  have hp6 : ¬ p ∣ 6 := hp.coprime_iff_not_dvd.mp (h6.coprime_dvd_left hps)
  have hp2 := hp.two_le
  have hp4 : p ≠ 4 := by
    intro h
    subst p
    exact (by decide : ¬ Nat.Prime 4) hp
  by_contra hnot
  have hcases : p = 2 ∨ p = 3 := by omega
  rcases hcases with h | h
  · subst p
    exact hp6 (by decide)
  · subst p
    exact hp6 (by decide)

/-- The sum modulus needs at least three DISTINCT prime divisors when prime to 6. -/
theorem solution_sum_requires_three_distinct_primes (n m : ℕ) (hm : n + 5 ≤ m)
    (h6 : Nat.Coprime (n + m + 6) 6)
    (heq : B686Target.product 5 m = 4 * B686Target.product 5 n) :
    3 ≤ (n + m + 6).primeFactors.card := by
  let s := n + m + 6
  have hs0 : s ≠ 0 := by dsimp [s]; omega
  have hpos : 0 < s.primeFactors.card :=
    Finset.card_pos.mpr (Nat.nonempty_primeFactors.mpr (by dsimp [s]; omega))
  change 3 ≤ s.primeFactors.card
  by_contra hnot
  have hcases : s.primeFactors.card = 1 ∨ s.primeFactors.card = 2 := by omega
  rcases hcases with hcard | hcard
  · obtain ⟨p, hset⟩ := Finset.card_eq_one.mp hcard
    have hpMem : p ∈ s.primeFactors := by rw [hset]; simp
    have hp := Nat.prime_of_mem_primeFactors hpMem
    have hp5 := prime_divisor_ge_five s p h6 hp (Nat.dvd_of_mem_primeFactors hpMem)
    have hdecomp : s = p ^ s.factorization p := by
      have hf := Nat.prod_factorization_pow_eq_self hs0
      rw [Finsupp.prod, Nat.support_factorization, hset] at hf
      simpa only [Finset.prod_singleton] using hf.symm
    have hsum : n + m + 6 = p ^ s.factorization p * p ^ 0 := by
      simpa only [pow_zero, mul_one] using hdecomp
    exact not_four_sum_two_prime_powers_ge_five n m p p (s.factorization p) 0
      hm hp hp hp5 hp5 hsum heq
  · obtain ⟨p, q, hpq, hset⟩ := Finset.card_eq_two.mp hcard
    have hpMem : p ∈ s.primeFactors := by rw [hset]; simp
    have hqMem : q ∈ s.primeFactors := by rw [hset]; simp
    have hp := Nat.prime_of_mem_primeFactors hpMem
    have hq := Nat.prime_of_mem_primeFactors hqMem
    have hp5 := prime_divisor_ge_five s p h6 hp (Nat.dvd_of_mem_primeFactors hpMem)
    have hq5 := prime_divisor_ge_five s q h6 hq (Nat.dvd_of_mem_primeFactors hqMem)
    have hdecomp : s = p ^ s.factorization p * q ^ s.factorization q := by
      have hf := Nat.prod_factorization_pow_eq_self hs0
      rw [Finsupp.prod, Nat.support_factorization, hset] at hf
      simpa only [Finset.prod_pair hpq] using hf.symm
    exact not_four_sum_two_prime_powers_ge_five n m p q (s.factorization p) (s.factorization q)
      hm hp hq hp5 hq5 hdecomp heq

/-- Rational-target statement, with prime 5 retained in the permitted sum factors. -/
theorem original_sum_necessary_conditions (n m : ℕ) (hm : n + 5 ≤ m)
    (heq : (4 : ℚ) = (B686Target.product 5 m : ℚ) / (B686Target.product 5 n : ℚ)) :
    (5 ∣ n + m + 6 → 25 ∣ n + m + 6) ∧
    (Nat.Coprime (n + m + 6) 6 →
      3 ≤ (n + m + 6).primeFactors.card ∧
      ∀ i ∈ Finset.Icc 1 5, ∀ j ∈ Finset.Icc 1 5,
        ¬ n + m + 6 ∣ (n + i) * (n + j)) := by
  have hp := (B686Target.ratio_iff 5 n m).mp heq
  refine ⟨fun h5 => sum_five_implies_twentyfive n m h5 hp, ?_⟩
  intro h6
  refine ⟨solution_sum_requires_three_distinct_primes n m hm h6 hp, ?_⟩
  intro i hi j hj hdiv
  exact not_four_sum_two_position_support n m i j hm hi hj h6 hdiv hp

end B686Round6B

import research.tasks.«B699-Binomial».runs.«20260909-large-prime-structure-cb4764f0».lean.SmallPartBound

set_option autoImplicit false
set_option relaxedAutoImplicit false

namespace B699LowIndex
open B699LargePrimeStructure

/-- A nonempty product of natural numbers strictly below n is below n to its
cardinality. Zero factors are allowed. -/
theorem nat_prod_lt_pow_of_pointwise_lt {S : Finset ℕ} {g : ℕ → ℕ} {n : ℕ}
    (hn : 0 < n) (hS : S.Nonempty) (hg : ∀ p ∈ S, g p < n) :
    S.prod g < n ^ S.card := by
  have hle : S.prod g ≤ (n - 1) ^ S.card :=
    Finset.prod_le_pow_card S g (n - 1) (by
      intro p hp
      have := hg p hp
      omega)
  have hcard : S.card ≠ 0 := Nat.ne_of_gt (Finset.card_pos.mpr hS)
  exact hle.trans_lt (Nat.pow_lt_pow_left (by omega : n - 1 < n) hcard)

/-- If all but one factor are small after scaling by M, the scaled whole
product is strictly below the threshold. The distinguished factor may be zero. -/
theorem scaled_prod_lt_of_all_but_one_small {S : Finset ℕ} {f : ℕ → ℕ}
    {n M p : ℕ} (hn : 0 < n) (ht : 2 ≤ S.card) (hp : p ∈ S)
    (hfp : f p ≤ n) (hsmall : ∀ q ∈ S.erase p, M * f q < n) :
    M ^ (S.card - 1) * S.prod f < n ^ S.card := by
  have hcard : (S.erase p).card = S.card - 1 := Finset.card_erase_of_mem hp
  have hnonempty : (S.erase p).Nonempty :=
    Finset.card_pos.mp (by omega)
  have hrest : (S.erase p).prod (fun q ↦ M * f q) < n ^ (S.card - 1) := by
    simpa only [hcard] using nat_prod_lt_pow_of_pointwise_lt hn hnonempty hsmall
  have hsplit : M ^ (S.card - 1) * S.prod f =
      f p * (S.erase p).prod (fun q ↦ M * f q) := by
    rw [← Finset.mul_prod_erase S f hp]
    simp only [Finset.prod_mul_distrib, Finset.prod_const, hcard]
    ring
  calc
    M ^ (S.card - 1) * S.prod f =
        f p * (S.erase p).prod (fun q ↦ M * f q) := hsplit
    _ ≤ n * (S.erase p).prod (fun q ↦ M * f q) :=
      Nat.mul_le_mul_right _ hfp
    _ < n * n ^ (S.card - 1) := Nat.mul_lt_mul_of_pos_left hrest hn
    _ = n ^ S.card := by
      rw [← pow_succ', Nat.sub_add_cancel (by omega : 1 ≤ S.card)]

/-- An explicit integer lower bound on a finite product forces two distinct
factors to meet the scaled threshold. No positivity of the factors is assumed. -/
theorem exists_two_large_factors_of_scaled_prod {S : Finset ℕ} {f : ℕ → ℕ}
    {n M : ℕ} (hn : 0 < n) (_hM : 0 < M) (ht : 2 ≤ S.card)
    (hf : ∀ p ∈ S, f p ≤ n)
    (hprod : n ^ S.card ≤ M ^ (S.card - 1) * S.prod f) :
    ∃ p ∈ S, ∃ q ∈ S, p ≠ q ∧ n ≤ M * f p ∧ n ≤ M * f q := by
  classical
  by_contra htwo
  have hS : S.Nonempty := Finset.card_pos.mp (by omega)
  have hdistinguished : ∃ p ∈ S, ∀ q ∈ S.erase p, M * f q < n := by
    by_cases hlarge : ∃ p ∈ S, n ≤ M * f p
    · obtain ⟨p, hp, hpbig⟩ := hlarge
      refine ⟨p, hp, ?_⟩
      intro q hq
      by_contra hqsmall
      have hqS : q ∈ S := Finset.mem_of_mem_erase hq
      have hpq : p ≠ q := Ne.symm (Finset.mem_erase.mp hq).1
      exact htwo ⟨p, hp, q, hqS, hpq, hpbig, by omega⟩
    · obtain ⟨p, hp⟩ := hS
      refine ⟨p, hp, ?_⟩
      intro q hq
      by_contra hqsmall
      exact hlarge ⟨q, Finset.mem_of_mem_erase hq, by omega⟩
  obtain ⟨p, hp, hsmall⟩ := hdistinguished
  exact (Nat.not_le_of_gt
    (scaled_prod_lt_of_all_but_one_small hn ht hp (hf p hp) hsmall)) hprod

/-- Expanding the actual small part over every prime below i adds only factors
p^0=1. The inclusive endpoint p=i remains outside this product. -/
theorem small_prime_part_eq_prod_small_primes (n i : ℕ) :
    smallPrimePart n i = ((Finset.range i).filter Nat.Prime).prod
      (fun p ↦ p ^ (n.choose i).factorization p) := by
  classical
  unfold smallPrimePart
  apply Finset.prod_subset
  · intro p hp
    obtain ⟨hmem, hpi⟩ := Finset.mem_filter.mp hp
    exact Finset.mem_filter.mpr ⟨Finset.mem_range.mpr hpi,
      Nat.prime_of_mem_primeFactors hmem⟩
  · intro p hp hnot
    have hpi : p < i := Finset.mem_range.mp (Finset.mem_filter.mp hp).1
    have hpnot : p ∉ (n.choose i).primeFactors := by
      intro hmem
      exact hnot (Finset.mem_filter.mpr ⟨hmem, hpi⟩)
    have he : (n.choose i).factorization p = 0 := by
      apply Finsupp.notMem_support_iff.mp
      simpa only [Nat.support_factorization] using hpnot
    simp only [he, pow_zero]

/-- The complete binomial small part yields two distinct small primes with
large full powers. The only product premise is an explicit integer inequality. -/
theorem exists_two_large_small_prime_powers {n i M : ℕ}
    (_hi : 2 ≤ i) (_hin : i ≤ n) (hcount : 2 ≤ smallPrimeCount i)
    (hn : 0 < n) (hM : 0 < M)
    (hU : n ^ smallPrimeCount i ≤
      M ^ (smallPrimeCount i - 1) * smallPrimePart n i) :
    ∃ p q : ℕ, p.Prime ∧ p < i ∧ q.Prime ∧ q < i ∧ p ≠ q ∧
      n ≤ M * p ^ (n.choose i).factorization p ∧
      n ≤ M * q ^ (n.choose i).factorization q := by
  classical
  let S := (Finset.range i).filter Nat.Prime
  let f : ℕ → ℕ := fun p ↦ p ^ (n.choose i).factorization p
  have hcard : S.card = smallPrimeCount i := rfl
  have hfull : S.prod f = smallPrimePart n i :=
    (small_prime_part_eq_prod_small_primes n i).symm
  have hprod : n ^ S.card ≤ M ^ (S.card - 1) * S.prod f := by
    simpa only [hcard, hfull] using hU
  obtain ⟨p, hp, q, hq, hpq, hpbig, hqbig⟩ :=
    exists_two_large_factors_of_scaled_prod (S := S) (f := f) hn hM
      (by simpa only [hcard] using hcount)
      (fun _ _ ↦ Nat.pow_factorization_choose_le hn) hprod
  obtain ⟨hpRange, hpPrime⟩ := Finset.mem_filter.mp hp
  obtain ⟨hqRange, hqPrime⟩ := Finset.mem_filter.mp hq
  exact ⟨p, q, hpPrime, Finset.mem_range.mp hpRange, hqPrime,
    Finset.mem_range.mp hqRange, hpq, hpbig, hqbig⟩

end B699LowIndex

#print axioms B699LowIndex.nat_prod_lt_pow_of_pointwise_lt
#print axioms B699LowIndex.scaled_prod_lt_of_all_but_one_small
#print axioms B699LowIndex.exists_two_large_factors_of_scaled_prod
#print axioms B699LowIndex.small_prime_part_eq_prod_small_primes
#print axioms B699LowIndex.exists_two_large_small_prime_powers
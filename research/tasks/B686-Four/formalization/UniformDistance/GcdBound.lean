import research.tasks.«B686-Four».formalization.UniformDistance.BigPrimeBinomial
import research.tasks.«B686-Four».formalization.UniformDistance.SmallPrime
import Mathlib.NumberTheory.PrimeCounting

namespace B686UniformDistance
open B686Round8

lemma product_pos (k n : ℕ) : 0 < product k n := by
  apply Finset.prod_pos
  intro i hi
  have hi' := Finset.mem_Icc.mp hi
  omega

/-- A selected finite prime part of the gcd is controlled by one maximal factor
per selected prime and the single common factorial. -/
theorem prime_part_le_factorial_pow (k n m : ℕ) (hk : 1 ≤ k)
    (s : Finset ℕ)
    (hs : s ⊆ (Nat.gcd (product k m) (product k n)).primeFactors) :
    (∏ p ∈ s, p ^ (Nat.gcd (product k m) (product k n)).factorization p) ≤
      (k - 1).factorial * (n + k) ^ s.card := by
  let g := Nat.gcd (product k m) (product k n)
  have hn0 : product k n ≠ 0 := (product_pos k n).ne'
  have hg0 : g ≠ 0 := by
    intro heq
    have hd : g ∣ product k n := Nat.gcd_dvd_right _ _
    rw [heq, zero_dvd_iff] at hd
    exact hn0 hd
  have hle : ∀ p ∈ s, p ^ g.factorization p ≤
      p ^ (k - 1).factorial.factorization p * (n + k) := by
    intro p hp
    have hp' := Nat.prime_of_mem_primeFactors (hs hp)
    obtain ⟨j, hj, hv⟩ := small_prime_factorization_bound k n p hk hp'
    have hgv := (Nat.factorization_le_iff_dvd hg0 hn0).mpr (Nat.gcd_dvd_right _ _) p
    have hj' := Finset.mem_Icc.mp hj
    have hnj : 0 < n + j := by omega
    have hpow : p ^ (n + j).factorization p ≤ n + k :=
      (Nat.le_of_dvd hnj (Nat.ordProj_dvd _ _)).trans (by omega)
    calc
      p ^ g.factorization p ≤
          p ^ ((k - 1).factorial.factorization p + (n + j).factorization p) :=
        Nat.pow_le_pow_right hp'.pos (hgv.trans hv)
      _ = p ^ (k - 1).factorial.factorization p * p ^ (n + j).factorization p :=
        pow_add _ _ _
      _ ≤ _ := Nat.mul_le_mul_left _ hpow
  have hfactdvd : (∏ p ∈ s, p ^ (k - 1).factorial.factorization p) ∣ (k - 1).factorial := by
    apply prod_dvd_of_pairwise_coprime
    · intro p hp q hq hpq
      have hp' := Nat.prime_of_mem_primeFactors (hs hp)
      have hq' := Nat.prime_of_mem_primeFactors (hs hq)
      exact ((hp'.coprime_iff_not_dvd.mpr
        (fun hd ↦ hpq ((Nat.prime_dvd_prime_iff_eq hp' hq').mp hd))).pow_left _).pow_right _
    · intro p hp
      exact Nat.ordProj_dvd _ _
  have hfactle := Nat.le_of_dvd (Nat.factorial_pos (k - 1)) hfactdvd
  calc
    (∏ p ∈ s, p ^ g.factorization p) ≤
        ∏ p ∈ s, (p ^ (k - 1).factorial.factorization p * (n + k)) :=
      Finset.prod_le_prod' hle
    _ = (∏ p ∈ s, p ^ (k - 1).factorial.factorization p) * (n + k) ^ s.card := by
      rw [Finset.prod_mul_distrib, Finset.prod_const]
    _ ≤ _ := Nat.mul_le_mul_right _ hfactle

/-- The complete gcd estimate, with the exact number of its small prime factors. -/
theorem gcd_le_factorial_pow_choose_card (k n m : ℕ) (hk : 1 ≤ k)
    (hsep : n + k ≤ m) :
    Nat.gcd (product k m) (product k n) ≤
      (k - 1).factorial * (n + k) ^
        ((Nat.gcd (product k m) (product k n)).primeFactors.filter
          (fun p ↦ p ≤ 2 * k - 1)).card *
        Nat.choose (m - n + k - 1) (2 * k - 1) := by
  let g := Nat.gcd (product k m) (product k n)
  let s := g.primeFactors.filter (fun p ↦ p ≤ 2 * k - 1)
  let l := g.primeFactors.filter (fun p ↦ 2 * k - 1 < p)
  have hg0 : g ≠ 0 := by
    intro heq
    have hd : g ∣ product k n := Nat.gcd_dvd_right _ _
    rw [heq, zero_dvd_iff] at hd
    exact (product_pos k n).ne' hd
  have hsplit : (∏ p ∈ s, p ^ g.factorization p) *
      (∏ p ∈ l, p ^ g.factorization p) = g := by
    have h := Finset.prod_filter_mul_prod_filter_not
      (s := g.primeFactors) (p := fun p ↦ p ≤ 2 * k - 1)
      (f := fun p ↦ p ^ g.factorization p)
    simp only [not_le] at h
    exact h.trans (Nat.prod_factorization_pow_eq_self hg0)
  have hs : s ⊆ g.primeFactors := Finset.filter_subset _ _
  have hsmall := prime_part_le_factorial_pow k n m hk s hs
  have hlarge := large_prime_part_dvd_choose k n m hk hsep
  have hkn : 2 * k - 1 ≤ m - n + k - 1 := by omega
  have hlargeLe := Nat.le_of_dvd (Nat.choose_pos hkn) hlarge
  change g ≤ (k - 1).factorial * (n + k) ^ s.card * Nat.choose (m - n + k - 1) (2 * k - 1)
  rw [← hsplit]
  exact Nat.mul_le_mul hsmall hlargeLe

/-- The unrestricted two-disjoint-block gcd bound with the usual prime count. -/
theorem gcd_le_factorial_pow_choose (k n m : ℕ) (hk : 1 ≤ k)
    (hsep : n + k ≤ m) :
    Nat.gcd (product k m) (product k n) ≤
      (k - 1).factorial * (n + k) ^ (2 * k - 1).primeCounting *
        Nat.choose (m - n + k - 1) (2 * k - 1) := by
  let s := (Nat.gcd (product k m) (product k n)).primeFactors.filter
    (fun p ↦ p ≤ 2 * k - 1)
  have hsub : s ⊆ Nat.primesLE (2 * k - 1) := by
    intro p hp
    exact Nat.mem_primesLE.mpr ⟨(Finset.mem_filter.mp hp).2,
      Nat.prime_of_mem_primeFactors (Finset.mem_filter.mp hp).1⟩
  have hcard : s.card ≤ (2 * k - 1).primeCounting := by
    simpa only [Nat.primesLE_card_eq_primeCounting] using Finset.card_le_card hsub
  have hpow := Nat.pow_le_pow_right (show 0 < n + k by omega) hcard
  exact (gcd_le_factorial_pow_choose_card k n m hk hsep).trans
    (Nat.mul_le_mul_right _ (Nat.mul_le_mul_left _ hpow))

/-- info: 'B686UniformDistance.gcd_le_factorial_pow_choose' depends on axioms: [propext, Classical.choice, Quot.sound] -/
#guard_msgs in
#print axioms gcd_le_factorial_pow_choose
/-- info: 'B686UniformDistance.prime_part_le_factorial_pow' depends on axioms: [propext, Classical.choice, Quot.sound] -/
#guard_msgs in
#print axioms prime_part_le_factorial_pow
/-- info: 'B686UniformDistance.gcd_le_factorial_pow_choose_card' depends on axioms: [propext, Classical.choice, Quot.sound] -/
#guard_msgs in
#print axioms gcd_le_factorial_pow_choose_card
end B686UniformDistance
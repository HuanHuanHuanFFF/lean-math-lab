import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.UpperHeight.I11SmallPart
import research.tasks.«B699-Binomial».runs.«20260909-low-index-structure-b41a5a63».lean.LargeSmallPowers

/-!
UNCOMPILED CANDIDATE. Actual i11 noCommon forces two strict fourth-power
thresholds. Source: fixed pade-three delivery REPORT section 4, attributed in
the handoff to commit 5c37f257401952ed85ddd104de8e56a4f2024031.
The existing actual three-window inequality and actual U are used throughout.
-/

set_option autoImplicit false
set_option relaxedAutoImplicit false

namespace B699LowIndex.I11CubicBridge

open B699LargePrimeStructure
open B699LowIndex.UpperHeight

/-- If the product exceeds one cap and all other thresholds, two factors exceed the threshold. -/
theorem exists_two_gt_of_prod_gt {S : Finset ℕ} {f : ℕ → ℕ} {cap threshold : ℕ}
    (hS : S.Nonempty) (hcap : ∀ p ∈ S, f p ≤ cap)
    (hprod : cap * threshold ^ (S.card - 1) < S.prod f) :
    ∃ p ∈ S, ∃ q ∈ S, p ≠ q ∧ threshold < f p ∧ threshold < f q := by
  classical
  by_contra hnone
  have hdistinguished : ∃ p ∈ S, ∀ q ∈ S.erase p, f q ≤ threshold := by
    by_cases hlarge : ∃ p ∈ S, threshold < f p
    · obtain ⟨p, hp, hfp⟩ := hlarge
      refine ⟨p, hp, ?_⟩
      intro q hq
      apply Nat.le_of_not_gt
      intro hqbig
      have hpq : p ≠ q := Ne.symm (Finset.mem_erase.mp hq).1
      exact hnone ⟨p, hp, q, Finset.mem_of_mem_erase hq, hpq, hfp, hqbig⟩
    · obtain ⟨p, hp⟩ := hS
      refine ⟨p, hp, ?_⟩
      intro q hq
      apply Nat.le_of_not_gt
      intro hqbig
      exact hlarge ⟨q, Finset.mem_of_mem_erase hq, hqbig⟩
  obtain ⟨p, hp, hrest⟩ := hdistinguished
  have hcard : (S.erase p).card = S.card - 1 := Finset.card_erase_of_mem hp
  have hrestProd : (S.erase p).prod f ≤ threshold ^ (S.card - 1) := by
    simpa only [hcard] using Finset.prod_le_pow_card (S.erase p) f threshold hrest
  have hbound : S.prod f ≤ cap * threshold ^ (S.card - 1) := by
    rw [← Finset.mul_prod_erase S f hp]
    exact Nat.mul_le_mul (hcap p hp) hrestProd
  exact Nat.not_le_of_gt hprod hbound

theorem cubic_start_large : 110 ≤ (2 : ℕ) ^ 98 := by decide

/-- The exact fixed integer comparison required by section 4. -/
theorem i11_cubic_constant :
    (2 * Nat.factorial 11) ^ 44 < i11K ^ 4 * (2 : ℕ) ^ (98 * 5) := by decide

theorem actual_U_44_gt {n j : ℕ}
    (hn : (2 : ℕ) ^ 98 ≤ n) (hij : 11 < j) (hjn : j ≤ n / 2)
    (hno : ¬ Common n 11 j) : n ^ 143 < (smallPrimePart n 11) ^ 44 := by
  have hn110 : 110 ≤ n := Nat.le_trans cubic_start_large hn
  have hnpos : 0 < n := by omega
  have hbase : i11K * n ^ 121 ≤
      (2 * Nat.factorial 11) ^ 11 * (smallPrimePart n 11) ^ 11 * n ^ 84 := by
    have h := noCommon_bernoulli_size (r := 3) (s := 7)
      (by decide : 2 ≤ 11) hij hjn (by decide : 7 < 11) hn110 hno
    simpa only [i11_windowConstant, i11_windowDegree] using h
  have hfour : i11K ^ 4 * n ^ 484 ≤
      (2 * Nat.factorial 11) ^ 44 * (smallPrimePart n 11) ^ 44 * n ^ 336 := by
    simpa only [Nat.mul_pow, ← Nat.pow_mul] using Nat.pow_le_pow_left hbase 4
  have hsplit : n ^ 484 = n ^ 336 * n ^ 148 := by rw [← Nat.pow_add]
  have hscaled : n ^ 336 * (i11K ^ 4 * n ^ 148) ≤
      n ^ 336 * ((2 * Nat.factorial 11) ^ 44 * (smallPrimePart n 11) ^ 44) := by
    rw [hsplit] at hfour
    simpa only [Nat.mul_assoc, Nat.mul_comm, Nat.mul_left_comm] using hfour
  have hbound : i11K ^ 4 * n ^ 148 ≤
      (2 * Nat.factorial 11) ^ 44 * (smallPrimePart n 11) ^ 44 :=
    Nat.le_of_mul_le_mul_left hscaled (Nat.pow_pos hnpos)
  have hstartPower : (2 : ℕ) ^ (98 * 5) ≤ n ^ 5 := by
    simpa only [← Nat.pow_mul] using Nat.pow_le_pow_left hn 5
  have hconstant : (2 * Nat.factorial 11) ^ 44 < i11K ^ 4 * n ^ 5 :=
    Nat.lt_of_lt_of_le i11_cubic_constant (Nat.mul_le_mul_left _ hstartPower)
  have hlift : (2 * Nat.factorial 11) ^ 44 * n ^ 143 < i11K ^ 4 * n ^ 148 := by
    have h := Nat.mul_lt_mul_of_pos_right hconstant (Nat.pow_pos hnpos : 0 < n ^ 143)
    simpa only [Nat.mul_assoc, ← Nat.pow_add] using h
  have hstrict := Nat.lt_of_lt_of_le hlift hbound
  apply Nat.lt_of_not_ge
  intro hreverse
  exact Nat.not_le_of_gt hstrict (Nat.mul_le_mul_left _ hreverse)

theorem actual_U_four_gt {n j : ℕ}
    (hn : (2 : ℕ) ^ 98 ≤ n) (hij : 11 < j) (hjn : j ≤ n / 2)
    (hno : ¬ Common n 11 j) : n ^ 13 < (smallPrimePart n 11) ^ 4 := by
  apply Iff.mp (Nat.pow_lt_pow_iff_left (n := 11) (by decide))
  simpa only [← Nat.pow_mul] using actual_U_44_gt hn hij hjn hno

/-- The selected powers are actual complete binomial components; primes are distinct. -/
theorem two_actual_large_components {n j : ℕ}
    (hn : (2 : ℕ) ^ 98 ≤ n) (hij : 11 < j) (hjn : j ≤ n / 2)
    (hno : ¬ Common n 11 j) :
    ∃ p q : ℕ, p.Prime ∧ p < 11 ∧ q.Prime ∧ q < 11 ∧ p ≠ q ∧
      n ^ 3 < (p ^ (n.choose 11).factorization p) ^ 4 ∧
      n ^ 3 < (q ^ (n.choose 11).factorization q) ^ 4 := by
  classical
  have hn110 : 110 ≤ n := Nat.le_trans cubic_start_large hn
  have hnpos : 0 < n := by omega
  let S := (Finset.range 11).filter Nat.Prime
  let f : ℕ → ℕ := fun p => (p ^ (n.choose 11).factorization p) ^ 4
  have hcard : S.card = 4 := i11_smallPrimeCount
  have hS : S.Nonempty := Finset.card_pos.mp (by simpa only [hcard] using (by decide : 0 < (4 : ℕ)))
  have hsmall : S.prod (fun p => p ^ (n.choose 11).factorization p) = smallPrimePart n 11 :=
    Eq.symm (small_prime_part_eq_prod_small_primes n 11)
  have hproduct : S.prod f = (smallPrimePart n 11) ^ 4 := by
    dsimp only [f]
    rw [Finset.prod_pow, hsmall]
  have hcap : ∀ p ∈ S, f p ≤ n ^ 4 := by
    intro p hp
    exact Nat.pow_le_pow_left (Nat.pow_factorization_choose_le hnpos) 4
  have hprod : n ^ 4 * (n ^ 3) ^ (S.card - 1) < S.prod f := by
    rw [hcard, hproduct]
    simpa only [← Nat.pow_mul, ← Nat.pow_add] using actual_U_four_gt hn hij hjn hno
  obtain ⟨p, hp, q, hq, hpq, hpb, hqb⟩ := exists_two_gt_of_prod_gt hS hcap hprod
  obtain ⟨hpRange, hpPrime⟩ := Finset.mem_filter.mp hp
  obtain ⟨hqRange, hqPrime⟩ := Finset.mem_filter.mp hq
  exact ⟨p, q, hpPrime, Finset.mem_range.mp hpRange, hqPrime, Finset.mem_range.mp hqRange,
    hpq, hpb, hqb⟩

end B699LowIndex.I11CubicBridge

#print axioms B699LowIndex.I11CubicBridge.exists_two_gt_of_prod_gt
#print axioms B699LowIndex.I11CubicBridge.cubic_start_large
#print axioms B699LowIndex.I11CubicBridge.i11_cubic_constant
#print axioms B699LowIndex.I11CubicBridge.actual_U_44_gt
#print axioms B699LowIndex.I11CubicBridge.actual_U_four_gt
#print axioms B699LowIndex.I11CubicBridge.two_actual_large_components

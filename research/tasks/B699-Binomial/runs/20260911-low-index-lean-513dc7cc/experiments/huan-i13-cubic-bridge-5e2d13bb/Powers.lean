import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11Cubic.CubicPowers
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I13Cubic.Window

/-! Candidate: actual i13 noCommon, exact seven-tenths threshold. -/
set_option autoImplicit false
set_option relaxedAutoImplicit false
namespace B699LowIndex.I13CubicBridge
open B699LargePrimeStructure

def i13K : ℕ := 21076454043628845073230965209192466198104541850346795431833763170589081600000000000000

theorem cubic_start_large : 686 ≤ (2 : ℕ) ^ 67 := by decide
theorem i13_smallPrimeCount : smallPrimeCount 13 = 5 := by decide
theorem i13_windowDegree : windowDegree 13 4 9 = 126 := by decide
theorem i13_windowConstant : windowConstant 13 4 9 = i13K := by decide

theorem i13_cubic_constant :
    (2 * Nat.factorial 13) ^ 140 < i13K ^ 10 * (2 : ℕ) ^ (67 * 28) := by decide

theorem actual_U_140_gt {n j : ℕ}
    (hn : (2 : ℕ) ^ 67 ≤ n) (hij : 13 < j) (hjn : j ≤ n / 2)
    (hno : ¬ Common n 13 j) : n ^ 532 < (smallPrimePart n 13) ^ 140 := by
  have hn686 : 686 ≤ n := cubic_start_large.trans hn
  have hnpos : 0 < n := by omega
  have hbase : i13K * n ^ 182 ≤
      (2 * Nat.factorial 13) ^ 14 * (smallPrimePart n 13) ^ 14 * n ^ 126 := by
    have h := noCommon_bernoulli_size (r := 4) (s := 9)
      (by decide : 2 ≤ 13) hij hjn (by decide : 9 < 13) (by omega : 156 ≤ n) hno
    simpa only [i13_windowConstant, i13_windowDegree] using h
  have hten : i13K ^ 10 * n ^ 1820 ≤
      (2 * Nat.factorial 13) ^ 140 * (smallPrimePart n 13) ^ 140 * n ^ 1260 := by
    simpa only [Nat.mul_pow, ← Nat.pow_mul] using Nat.pow_le_pow_left hbase 10
  have hsplit : n ^ 1820 = n ^ 1260 * n ^ 560 := by rw [← Nat.pow_add]
  have hscaled : n ^ 1260 * (i13K ^ 10 * n ^ 560) ≤
      n ^ 1260 * ((2 * Nat.factorial 13) ^ 140 * (smallPrimePart n 13) ^ 140) := by
    rw [hsplit] at hten
    simpa only [Nat.mul_assoc, Nat.mul_comm, Nat.mul_left_comm] using hten
  have hbound : i13K ^ 10 * n ^ 560 ≤
      (2 * Nat.factorial 13) ^ 140 * (smallPrimePart n 13) ^ 140 :=
    Nat.le_of_mul_le_mul_left hscaled (Nat.pow_pos hnpos)
  have hstartPower : (2 : ℕ) ^ (67 * 28) ≤ n ^ 28 := by
    simpa only [← Nat.pow_mul] using Nat.pow_le_pow_left hn 28
  have hconstant : (2 * Nat.factorial 13) ^ 140 < i13K ^ 10 * n ^ 28 :=
    i13_cubic_constant.trans_le (Nat.mul_le_mul_left _ hstartPower)
  have hlift : (2 * Nat.factorial 13) ^ 140 * n ^ 532 < i13K ^ 10 * n ^ 560 := by
    have h := Nat.mul_lt_mul_of_pos_right hconstant (Nat.pow_pos hnpos : 0 < n ^ 532)
    simpa only [Nat.mul_assoc, ← Nat.pow_add] using h
  have hstrict := hlift.trans_le hbound
  apply Nat.lt_of_not_ge
  intro hreverse
  exact Nat.not_le_of_gt hstrict (Nat.mul_le_mul_left _ hreverse)

theorem actual_U_ten_gt {n j : ℕ}
    (hn : (2 : ℕ) ^ 67 ≤ n) (hij : 13 < j) (hjn : j ≤ n / 2)
    (hno : ¬ Common n 13 j) : n ^ 38 < (smallPrimePart n 13) ^ 10 := by
  apply Iff.mp (Nat.pow_lt_pow_iff_left (n := 14) (by decide))
  simpa only [← Nat.pow_mul] using actual_U_140_gt hn hij hjn hno

theorem two_actual_large_components {n j : ℕ}
    (hn : (2 : ℕ) ^ 67 ≤ n) (hij : 13 < j) (hjn : j ≤ n / 2)
    (hno : ¬ Common n 13 j) :
    ∃ p q : ℕ, p.Prime ∧ p < 13 ∧ q.Prime ∧ q < 13 ∧ p ≠ q ∧
      n ^ 7 < (p ^ (n.choose 13).factorization p) ^ 10 ∧
      n ^ 7 < (q ^ (n.choose 13).factorization q) ^ 10 := by
  classical
  have hnpos : 0 < n := by have h := cubic_start_large.trans hn; omega
  let S := (Finset.range 13).filter Nat.Prime
  let f : ℕ → ℕ := fun p => (p ^ (n.choose 13).factorization p) ^ 10
  have hcard : S.card = 5 := i13_smallPrimeCount
  have hS : S.Nonempty := Finset.card_pos.mp (by simpa only [hcard] using (by decide : 0 < (5 : ℕ)))
  have hsmall : S.prod (fun p => p ^ (n.choose 13).factorization p) = smallPrimePart n 13 :=
    Eq.symm (small_prime_part_eq_prod_small_primes n 13)
  have hproduct : S.prod f = (smallPrimePart n 13) ^ 10 := by
    dsimp only [f]
    rw [Finset.prod_pow, hsmall]
  have hcap : ∀ p ∈ S, f p ≤ n ^ 10 := by
    intro p hp
    exact Nat.pow_le_pow_left (Nat.pow_factorization_choose_le hnpos) 10
  have hprod : n ^ 10 * (n ^ 7) ^ (S.card - 1) < S.prod f := by
    rw [hcard, hproduct]
    simpa only [← Nat.pow_mul, ← Nat.pow_add] using actual_U_ten_gt hn hij hjn hno
  obtain ⟨p, hp, q, hq, hpq, hpb, hqb⟩ :=
    B699LowIndex.I11CubicBridge.exists_two_gt_of_prod_gt hS hcap hprod
  obtain ⟨hpRange, hpPrime⟩ := Finset.mem_filter.mp hp
  obtain ⟨hqRange, hqPrime⟩ := Finset.mem_filter.mp hq
  exact ⟨p, q, hpPrime, Finset.mem_range.mp hpRange, hqPrime, Finset.mem_range.mp hqRange,
    hpq, hpb, hqb⟩
end B699LowIndex.I13CubicBridge

#print axioms B699LowIndex.I13CubicBridge.i13K

#print axioms B699LowIndex.I13CubicBridge.cubic_start_large

#print axioms B699LowIndex.I13CubicBridge.i13_smallPrimeCount

#print axioms B699LowIndex.I13CubicBridge.i13_windowDegree

#print axioms B699LowIndex.I13CubicBridge.i13_windowConstant

#print axioms B699LowIndex.I13CubicBridge.i13_cubic_constant

#print axioms B699LowIndex.I13CubicBridge.actual_U_140_gt

#print axioms B699LowIndex.I13CubicBridge.actual_U_ten_gt

#print axioms B699LowIndex.I13CubicBridge.two_actual_large_components

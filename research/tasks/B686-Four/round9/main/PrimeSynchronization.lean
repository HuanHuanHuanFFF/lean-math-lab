import Mathlib.Algebra.BigOperators.Associated
import Mathlib.Data.Nat.Prime.Basic
import Mathlib.Order.Interval.Finset.Nat
import Mathlib.Tactic.NormNum
import research.tasks.«B686-Four».round9.main.HitSemantics

/-!
Arithmetic interface for the round-9 prime-sampling route.
No distribution theorem or analytic hypothesis is asserted here.
-/

namespace B686Round9

def blockProduct (k n : ℕ) : ℕ := (Finset.Icc 1 k).prod (fun i => n + i)

theorem prime_dvd_blockProduct_iff (k n p : ℕ) (hp : p.Prime) :
    p ∣ blockProduct k n ↔ ∃ i, 1 ≤ i ∧ i ≤ k ∧ p ∣ n + i := by
  simp only [blockProduct, hp.prime.dvd_finsetProd_iff, Finset.mem_Icc]
  aesop

theorem prime_support_of_scaled_eq (k n m r p : ℕ) (hp : p.Prime)
    (hpr : ¬ p ∣ r) (heq : blockProduct k m = r * blockProduct k n) :
    p ∣ blockProduct k m ↔ p ∣ blockProduct k n := by
  rw [heq, hp.dvd_mul]
  simp only [hpr, false_or]

theorem no_rectangle_of_scaled_eq (k n m r p : ℕ)
    (hk : 2 ≤ k) (hp : p.Prime) (hlo : 2*k ≤ p) (hhi : p ≤ 4*k)
    (hpr : ¬ p ∣ r) (heq : blockProduct k m = r * blockProduct k n)
    (hn : 4*p < 5*(n%p)) (hm : 5*(m%p) < p) : False := by
  obtain ⟨hnHit, hmMiss⟩ := rectangle_hit_miss k n m p hk hlo hhi hn hm
  have hlow := (prime_dvd_blockProduct_iff k n p hp).mpr hnHit
  have hupp := (prime_support_of_scaled_eq k n m r p hp hpr heq).mpr hlow
  exact hmMiss ((prime_dvd_blockProduct_iff k m p hp).mp hupp)

theorem no_rectangle_of_four_eq (k n m p : ℕ)
    (hk : 2 ≤ k) (hp : p.Prime) (hlo : 2*k ≤ p) (hhi : p ≤ 4*k)
    (heq : blockProduct k m = 4 * blockProduct k n)
    (hn : 4*p < 5*(n%p)) (hm : 5*(m%p) < p) : False := by
  have hpr : ¬ p ∣ 4 := by
    intro hd
    have hd2 : p ∣ 2 := hp.dvd_of_dvd_pow (show p ∣ 2^2 by norm_num; exact hd)
    have hle := Nat.le_of_dvd (by decide : 0 < 2) hd2
    omega
  exact no_rectangle_of_scaled_eq k n m 4 p hk hp hlo hhi hpr heq hn hm

theorem no_bidirectional_mismatch_of_four_eq (k n m p : ℕ)
    (hk : 2 ≤ k) (hp : p.Prime) (hlo : 2*k ≤ p) (hhi : p ≤ 4*k)
    (heq : blockProduct k m = 4 * blockProduct k n) :
    ¬ ((3*p < 4*(n%p) ∧ 2*(m%p) < p) ∨
      (3*p < 4*(m%p) ∧ 2*(n%p) < p)) := by
  have hpr : ¬ p ∣ 4 := by
    intro hd
    have hd2 : p ∣ 2 := hp.dvd_of_dvd_pow (show p ∣ 2^2 by norm_num; exact hd)
    have hle := Nat.le_of_dvd (by decide : 0 < 2) hd2
    omega
  have hs := prime_support_of_scaled_eq k n m 4 p hp hpr heq
  rintro (⟨hn, hm⟩ | ⟨hm, hn⟩)
  · obtain ⟨hhit, hmiss⟩ := wide_rectangle_hit_miss k n m p hk hlo hhi hn hm
    exact hmiss ((prime_dvd_blockProduct_iff k m p hp).mp
      (hs.mpr ((prime_dvd_blockProduct_iff k n p hp).mpr hhit)))
  · obtain ⟨hhit, hmiss⟩ := wide_rectangle_hit_miss k m n p hk hlo hhi hm hn
    exact hmiss ((prime_dvd_blockProduct_iff k n p hp).mp
      (hs.mp ((prime_dvd_blockProduct_iff k m p hp).mpr hhit)))

/-- info: 'B686Round9.prime_dvd_blockProduct_iff' depends on axioms: [propext, Classical.choice, Quot.sound] -/
#guard_msgs in
#print axioms prime_dvd_blockProduct_iff
/-- info: 'B686Round9.prime_support_of_scaled_eq' depends on axioms: [propext, Classical.choice, Quot.sound] -/
#guard_msgs in
#print axioms prime_support_of_scaled_eq
/-- info: 'B686Round9.no_rectangle_of_scaled_eq' depends on axioms: [propext, Classical.choice, Quot.sound] -/
#guard_msgs in
#print axioms no_rectangle_of_scaled_eq
/-- info: 'B686Round9.no_rectangle_of_four_eq' depends on axioms: [propext, Classical.choice, Quot.sound] -/
#guard_msgs in
#print axioms no_rectangle_of_four_eq
/-- info: 'B686Round9.no_bidirectional_mismatch_of_four_eq' depends on axioms: [propext, Classical.choice, Quot.sound] -/
#guard_msgs in
#print axioms no_bidirectional_mismatch_of_four_eq

end B686Round9

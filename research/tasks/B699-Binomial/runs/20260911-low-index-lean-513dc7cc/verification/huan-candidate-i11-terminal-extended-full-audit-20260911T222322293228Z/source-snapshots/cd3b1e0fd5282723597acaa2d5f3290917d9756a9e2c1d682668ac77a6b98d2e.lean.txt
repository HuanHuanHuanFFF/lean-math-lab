import Mathlib.Algebra.BigOperators.Associated
import Mathlib.Algebra.BigOperators.Ring.Nat
import Mathlib.Algebra.Order.Ring.Abs
import Mathlib.Data.Nat.GCD.BigOperators
import Mathlib.Data.Nat.GCD.Basic
import Mathlib.Data.Nat.Prime.Basic
import Mathlib.Order.Interval.Finset.Nat
import Mathlib.Tactic.NormNum
import Mathlib.Tactic.Ring

/-!
Reusable prime-support lemmas for two disjoint blocks of consecutive integers.

These lemmas are independent of the ratio `4` and of any prime-counting estimate.
They formalize the first, support-level layer of the large-prime part of the
round-7 gcd argument.  They do not yet show that the complete `p`-primary part
of the gcd divides the binomial coefficient.
-/

namespace B686Round8

def product (k t : ℕ) : ℕ := ∏ i ∈ Finset.Icc 1 k, (t + i)

/-- A prime divisor common to two disjoint blocks divides a positive cross-block
difference in the interval from `m - n - k + 1` to `m - n + k - 1`. -/
theorem common_prime_divides_cross_difference
    (k n m p : ℕ) (hsep : n + k ≤ m) (hp : p.Prime)
    (hcommon : p ∣ Nat.gcd (product k m) (product k n)) :
    ∃ i ∈ Finset.Icc 1 k, ∃ j ∈ Finset.Icc 1 k,
      (p : ℤ) ∣ ((m + i : ℕ) : ℤ) - ((n + j : ℕ) : ℤ) ∧
      0 < ((m + i : ℕ) : ℤ) - ((n + j : ℕ) : ℤ) ∧
      (m : ℤ) - n - k + 1 ≤ ((m + i : ℕ) : ℤ) - ((n + j : ℕ) : ℤ) ∧
      ((m + i : ℕ) : ℤ) - ((n + j : ℕ) : ℤ) ≤ (m : ℤ) - n + k - 1 := by
  have hm : p ∣ product k m := hcommon.trans (Nat.gcd_dvd_left _ _)
  have hn : p ∣ product k n := hcommon.trans (Nat.gcd_dvd_right _ _)
  obtain ⟨i, hi, hpi⟩ := (hp.prime.dvd_finsetProd_iff (fun i : ℕ ↦ m + i)).mp hm
  obtain ⟨j, hj, hpj⟩ := (hp.prime.dvd_finsetProd_iff (fun j : ℕ ↦ n + j)).mp hn
  refine ⟨i, hi, j, hj, ?_, ?_, ?_, ?_⟩
  · have hpi' : (p : ℤ) ∣ ((m + i : ℕ) : ℤ) := by exact_mod_cast hpi
    have hpj' : (p : ℤ) ∣ ((n + j : ℕ) : ℤ) := by exact_mod_cast hpj
    exact dvd_sub hpi' hpj'
  · have hi' := (Finset.mem_Icc.mp hi).1
    have hj' := (Finset.mem_Icc.mp hj).2
    omega
  · have hi' := (Finset.mem_Icc.mp hi).1
    have hj' := (Finset.mem_Icc.mp hj).2
    omega
  · have hi' := (Finset.mem_Icc.mp hi).2
    have hj' := (Finset.mem_Icc.mp hj).1
    omega

/-- A prime larger than the block length can divide at most one member of a
block of `k` consecutive positive integers. -/
theorem large_prime_hits_block_unique
    (k t p i j : ℕ) (hp : p.Prime) (hpk : k < p)
    (hi : i ∈ Finset.Icc 1 k) (hj : j ∈ Finset.Icc 1 k)
    (hpi : p ∣ t + i) (hpj : p ∣ t + j) : i = j := by
  have hpdiff : (p : ℤ) ∣ (i : ℤ) - j := by
    have hpi' : (p : ℤ) ∣ ((t + i : ℕ) : ℤ) := by exact_mod_cast hpi
    have hpj' : (p : ℤ) ∣ ((t + j : ℕ) : ℤ) := by exact_mod_cast hpj
    have hraw := dvd_sub hpi' hpj'
    have heq : ((t + i : ℕ) : ℤ) - ((t + j : ℕ) : ℤ) = (i : ℤ) - j := by
      push_cast
      ring
    rwa [heq] at hraw
  by_contra hij
  have hijz : (i : ℤ) ≠ (j : ℤ) := by exact_mod_cast hij
  have habspos : 0 < |(i : ℤ) - j| := abs_pos.mpr (sub_ne_zero.mpr hijz)
  have hpabs : (p : ℤ) ∣ |(i : ℤ) - j| := (dvd_abs _ _).mpr hpdiff
  have hple : (p : ℤ) ≤ |(i : ℤ) - j| := Int.le_of_dvd habspos hpabs
  have hi' := Finset.mem_Icc.mp hi
  have hj' := Finset.mem_Icc.mp hj
  have habslt : |(i : ℤ) - j| < p := by
    rw [abs_lt]
    constructor <;> omega
  omega

/-- If `p > k`, every positive power of `p` dividing a block product is
already carried by one factor of that block. -/
theorem large_prime_power_dvd_one_factor
    (k t p a : ℕ) (hp : p.Prime) (hpk : k < p) (ha : 0 < a)
    (hpow : p ^ a ∣ product k t) :
    ∃ i ∈ Finset.Icc 1 k, p ^ a ∣ t + i := by
  have hpProd : p ∣ product k t := (dvd_pow_self p ha.ne').trans hpow
  obtain ⟨i, hi, hpi⟩ := (hp.prime.dvd_finsetProd_iff (fun i : ℕ ↦ t + i)).mp hpProd
  let rest := ∏ j ∈ (Finset.Icc 1 k).erase i, (t + j)
  have hcopP : Nat.Coprime p rest := by
    apply Nat.Coprime.prod_right
    intro j hj
    apply hp.coprime_iff_not_dvd.mpr
    intro hpj
    have hj' := (Finset.mem_erase.mp hj).2
    have hji := large_prime_hits_block_unique k t p j i hp hpk hj' hi hpj hpi
    exact (Finset.mem_erase.mp hj).1 hji
  have hcopPow : Nat.Coprime (p ^ a) rest := hcopP.pow_left a
  have hsplit : (t + i) * rest = product k t := by
    exact Finset.mul_prod_erase (Finset.Icc 1 k) (fun j : ℕ ↦ t + j) hi
  rw [← hsplit] at hpow
  exact ⟨i, hi, hcopPow.dvd_of_dvd_mul_right hpow⟩
/-- The complete supplied `p`-power common to two disjoint blocks divides one
positive cross-block difference.  In particular this applies to the complete
`p`-primary part of their gcd once its exponent is supplied. -/
theorem large_prime_power_divides_cross_difference
    (k n m p a : ℕ) (hsep : n + k ≤ m) (hp : p.Prime) (hpk : k < p)
    (ha : 0 < a) (hcommon : p ^ a ∣ Nat.gcd (product k m) (product k n)) :
    ∃ i ∈ Finset.Icc 1 k, ∃ j ∈ Finset.Icc 1 k,
      ((p ^ a : ℕ) : ℤ) ∣ ((m + i : ℕ) : ℤ) - ((n + j : ℕ) : ℤ) ∧
      0 < ((m + i : ℕ) : ℤ) - ((n + j : ℕ) : ℤ) := by
  have hm : p ^ a ∣ product k m := hcommon.trans (Nat.gcd_dvd_left _ _)
  have hn : p ^ a ∣ product k n := hcommon.trans (Nat.gcd_dvd_right _ _)
  obtain ⟨i, hi, hpi⟩ := large_prime_power_dvd_one_factor k m p a hp hpk ha hm
  obtain ⟨j, hj, hpj⟩ := large_prime_power_dvd_one_factor k n p a hp hpk ha hn
  refine ⟨i, hi, j, hj, ?_, ?_⟩
  · have hpi' : ((p ^ a : ℕ) : ℤ) ∣ ((m + i : ℕ) : ℤ) := by exact_mod_cast hpi
    have hpj' : ((p ^ a : ℕ) : ℤ) ∣ ((n + j : ℕ) : ℤ) := by exact_mod_cast hpj
    exact dvd_sub hpi' hpj'
  · have hi' := (Finset.mem_Icc.mp hi).1
    have hj' := (Finset.mem_Icc.mp hj).2
    omega

/-- info: 'B686Round8.large_prime_power_dvd_one_factor' depends on axioms: [propext, Classical.choice, Quot.sound] -/
#guard_msgs in
#print axioms large_prime_power_dvd_one_factor

/-- info: 'B686Round8.large_prime_power_divides_cross_difference' depends on axioms: [propext, Classical.choice, Quot.sound] -/
#guard_msgs in
#print axioms large_prime_power_divides_cross_difference
/-- info: 'B686Round8.common_prime_divides_cross_difference' depends on axioms: [propext, Classical.choice, Quot.sound] -/
#guard_msgs in
#print axioms common_prime_divides_cross_difference

/-- info: 'B686Round8.large_prime_hits_block_unique' depends on axioms: [propext, Classical.choice, Quot.sound] -/
#guard_msgs in
#print axioms large_prime_hits_block_unique

end B686Round8

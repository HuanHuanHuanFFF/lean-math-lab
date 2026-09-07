import research.tasks.«B686-Four».round8.lean.BigPrimeSupport
import Mathlib.Data.Nat.Factorial.BigOperators
import Mathlib.Data.Nat.Prime.Factorial
import Mathlib.Data.Nat.Factorization.Basic

namespace B686UniformDistance

open B686Round8

/-- A complete large prime power in the common divisor survives division of the
cross-difference product by its factorial denominator. -/
theorem large_prime_power_dvd_choose
    (k n m p a : ℕ) (hk : 1 ≤ k) (hsep : n + k ≤ m)
    (hp : p.Prime) (hpq : 2 * k - 1 < p)
    (hcommon : p ^ a ∣ Nat.gcd (product k m) (product k n)) :
    p ^ a ∣ Nat.choose (m - n + k - 1) (2 * k - 1) := by
  by_cases ha : a = 0
  · simp [ha]
  have hpk : k < p := by omega
  obtain ⟨i, hi, j, hj, hdiv, hpos⟩ :=
    large_prime_power_divides_cross_difference k n m p a hsep hp hpk
      (Nat.pos_of_ne_zero ha) hcommon
  have hi' := Finset.mem_Icc.mp hi
  have hj' := Finset.mem_Icc.mp hj
  have hnmi : n + j ≤ m + i := by omega
  have hdivNat : p ^ a ∣ m + i - (n + j) := by
    have heq : ((m + i - (n + j) : ℕ) : ℤ) =
        ((m + i : ℕ) : ℤ) - ((n + j : ℕ) : ℤ) := Nat.cast_sub hnmi
    rw [← heq] at hdiv
    exact_mod_cast hdiv
  let b := m - n - k + 1
  let r := i + k - j - 1
  have hr : r ∈ Finset.range (2 * k - 1) := by
    simp only [Finset.mem_range]
    dsimp [r]
    omega
  have hfactor : b + r = m + i - (n + j) := by
    dsimp [b, r]
    omega
  have hprod : p ^ a ∣ b.ascFactorial (2 * k - 1) := by
    rw [Nat.ascFactorial_eq_prod_range]
    apply hdivNat.trans
    rw [← hfactor]
    exact Finset.dvd_prod_of_mem (fun r : ℕ ↦ b + r) hr
  have htop : b + (2 * k - 1) - 1 = m - n + k - 1 := by
    dsimp [b]
    omega
  rw [Nat.ascFactorial_eq_factorial_mul_choose', htop] at hprod
  exact ((hp.coprime_factorial_of_lt hpq).pow_left a).dvd_of_dvd_mul_left hprod

theorem prod_dvd_of_pairwise_coprime (s : Finset ℕ) (f : ℕ → ℕ) (N : ℕ)
    (hcop : ∀ p ∈ s, ∀ q ∈ s, p ≠ q → Nat.Coprime (f p) (f q))
    (hdiv : ∀ p ∈ s, f p ∣ N) : (∏ p ∈ s, f p) ∣ N := by
  induction s using Finset.induction_on with
  | empty => simp
  | @insert p s hps ih =>
    rw [Finset.prod_insert hps]
    have hc : Nat.Coprime (f p) (∏ q ∈ s, f q) := by
      apply Nat.Coprime.prod_right
      intro q hq
      apply hcop p (Finset.mem_insert_self _ _) q (Finset.mem_insert_of_mem hq)
      intro heq
      subst q
      exact hps hq
    apply hc.mul_dvd_of_dvd_of_dvd (hdiv p (Finset.mem_insert_self _ _))
    apply ih
    · intro a ha b hb hab
      exact hcop a (Finset.mem_insert_of_mem ha) b (Finset.mem_insert_of_mem hb) hab
    · intro a ha
      exact hdiv a (Finset.mem_insert_of_mem ha)

/-- The complete product of prime-primary components above the difference
window length divides the binomial coefficient. -/
theorem large_prime_part_dvd_choose
    (k n m : ℕ) (hk : 1 ≤ k) (hsep : n + k ≤ m) :
    (∏ p ∈ (Nat.gcd (product k m) (product k n)).primeFactors.filter
      (fun p ↦ 2 * k - 1 < p),
      p ^ (Nat.gcd (product k m) (product k n)).factorization p) ∣
      Nat.choose (m - n + k - 1) (2 * k - 1) := by
  apply prod_dvd_of_pairwise_coprime
  · intro p hp q hq hpq
    have hp' := Nat.prime_of_mem_primeFactors (Finset.mem_filter.mp hp).1
    have hq' := Nat.prime_of_mem_primeFactors (Finset.mem_filter.mp hq).1
    exact ((hp'.coprime_iff_not_dvd.mpr
      (fun hd ↦ hpq ((Nat.prime_dvd_prime_iff_eq hp' hq').mp hd))).pow_left _).pow_right _
  · intro p hp
    have hp' := Nat.prime_of_mem_primeFactors (Finset.mem_filter.mp hp).1
    exact large_prime_power_dvd_choose k n m p _ hk hsep hp'
      (Finset.mem_filter.mp hp).2 (Nat.ordProj_dvd _ _)

/-- info: 'B686UniformDistance.large_prime_power_dvd_choose' depends on axioms: [propext, Classical.choice, Quot.sound] -/
#guard_msgs in
#print axioms large_prime_power_dvd_choose
/-- info: 'B686UniformDistance.large_prime_part_dvd_choose' depends on axioms: [propext, Classical.choice, Quot.sound] -/
#guard_msgs in
#print axioms large_prime_part_dvd_choose

end B686UniformDistance

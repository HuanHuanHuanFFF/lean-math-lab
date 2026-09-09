import research.tasks.«B686-Four».formalization.UniformDistance.SmallPrime
import Mathlib.Data.Nat.Choose.Basic

set_option autoImplicit false
set_option relaxedAutoImplicit false

/-!
# Full binomial prime powers in a numerator interval

This file reuses `B686UniformDistance.small_prime_factorization_bound` from
`research/tasks/B686-Four/formalization/UniformDistance/SmallPrime.lean`,
source baseline `7fd3928656489afe2c80698f0a09d1d933444186`.
The maximum-valuation deletion argument is not reimplemented here.

The exponent is the actual binomial valuation plus the valuation of the index.
In particular the prime equal to the index is retained with its extra power.
-/

namespace B699LowIndex

private theorem shifted_product_eq_descFactorial {n i : ℕ} (hin : i ≤ n) :
    B686Round8.product i (n - i) = n.descFactorial i := by
  rw [B686Round8.product, Nat.descFactorial_eq_prod_range]
  refine Finset.prod_bij (fun j _ ↦ i - j) ?_ ?_ ?_ ?_
  · intro j hj
    simp only [Finset.mem_Icc] at hj
    simp only [Finset.mem_range]
    omega
  · intro j hj j' hj' hsame
    simp only [Finset.mem_Icc] at hj hj'
    omega
  · intro a ha
    simp only [Finset.mem_range] at ha
    refine ⟨i - a, ?_, ?_⟩
    · simp only [Finset.mem_Icc]
      omega
    · omega
  · intro j hj
    simp only [Finset.mem_Icc] at hj
    omega

/-- One numerator position carries the full binomial valuation together with
all powers removed by the index i. This holds for every prime, including p=i. -/
theorem binomial_factorization_add_index_le {n i p : ℕ}
    (hi : 1 ≤ i) (hin : i ≤ n) (hp : p.Prime) :
    ∃ a < i, (n.choose i).factorization p + i.factorization p ≤
      (n - a).factorization p := by
  obtain ⟨j, hj, hbound⟩ :=
    B686UniformDistance.small_prime_factorization_bound i (n - i) p hi hp
  have hjBounds := Finset.mem_Icc.mp hj
  have hchoose : n.choose i ≠ 0 := (Nat.choose_pos hin).ne'
  have hfactorial : i.factorial = i * (i - 1).factorial := by
    simpa only [show i - 1 + 1 = i by omega] using Nat.factorial_succ (i - 1)
  have hfactorization : i.factorial.factorization p =
      i.factorization p + (i - 1).factorial.factorization p := by
    rw [hfactorial, Nat.factorization_mul (by omega : i ≠ 0)
      (Nat.factorial_ne_zero (i - 1)), Finsupp.add_apply]
  rw [shifted_product_eq_descFactorial hin,
    Nat.descFactorial_eq_factorial_mul_choose,
    Nat.factorization_mul (Nat.factorial_ne_zero i) hchoose,
    Finsupp.add_apply, hfactorization] at hbound
  have hposition : n - i + j = n - (i - j) := by omega
  rw [hposition] at hbound
  exact ⟨i - j, by omega, by omega⟩

/-- The actual binomial p-power, including the complete p-part of the index,
divides one positive numerator term n-a with a<i. -/
theorem binomial_prime_power_localization {n i p : ℕ}
    (hi : 1 ≤ i) (hin : i ≤ n) (hp : p.Prime) :
    ∃ a < i, p ^ ((n.choose i).factorization p + i.factorization p) ∣ n - a := by
  obtain ⟨a, ha, hval⟩ := binomial_factorization_add_index_le hi hin hp
  exact ⟨a, ha, (hp.pow_dvd_iff_le_factorization (by omega : n - a ≠ 0)).2 hval⟩

/-- A supplied exponent below the actual binomial valuation uses the same
localization and still retains the full index contribution. -/
theorem binomial_prime_power_localization_of_le {n i p e : ℕ}
    (hi : 1 ≤ i) (hin : i ≤ n) (hp : p.Prime)
    (he : e ≤ (n.choose i).factorization p) :
    ∃ a < i, p ^ (e + i.factorization p) ∣ n - a := by
  obtain ⟨a, ha, hdiv⟩ := binomial_prime_power_localization hi hin hp
  exact ⟨a, ha, (Nat.pow_dvd_pow p (Nat.add_le_add_right he _)).trans hdiv⟩

end B699LowIndex

#print axioms B699LowIndex.binomial_factorization_add_index_le
#print axioms B699LowIndex.binomial_prime_power_localization
#print axioms B699LowIndex.binomial_prime_power_localization_of_le

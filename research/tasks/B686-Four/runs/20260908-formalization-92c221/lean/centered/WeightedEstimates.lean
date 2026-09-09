import Mathlib.Algebra.Polynomial.EraseLead
import Mathlib.Algebra.Polynomial.Eval.Defs
import Mathlib.Tactic.Linarith
import Mathlib.Tactic.Positivity
import Mathlib.Tactic.Ring
import Mathlib.Tactic.NormNum

namespace B686CenteredRunge

open Finset Polynomial

/-- A finite weighted geometric sum; all arithmetic remains integral. -/
theorem weighted_sum_le (k t : ℤ) (hk : 0 ≤ k) (ht : 2 * k ≤ t)
    (d : ℕ) :
    (∑ i ∈ range (d + 1), k ^ (d - i) * t ^ i) ≤ 2 * t ^ d := by
  have ht0 : 0 ≤ t := by omega
  induction d with
  | zero => simp
  | succ d ih =>
    rw [sum_range_succ]
    have hsum : (∑ i ∈ range (d + 1), k ^ (d + 1 - i) * t ^ i) =
        k * ∑ i ∈ range (d + 1), k ^ (d - i) * t ^ i := by
      rw [mul_sum]
      apply sum_congr rfl
      intro i hi
      have hid : i ≤ d := by simpa using hi
      rw [show d + 1 - i = (d - i) + 1 by omega, pow_succ]
      ring
    rw [hsum]
    simp only [Nat.sub_self, pow_zero, one_mul]
    have hmul := mul_le_mul_of_nonneg_left ih hk
    have hpow := mul_le_mul_of_nonneg_right ht (pow_nonneg ht0 d)
    rw [pow_succ]
    nlinarith

/-- A coefficient bound weighted by its distance from the declared degree. -/
theorem eval_bound_of_weighted_coeff (p : ℤ[X]) (C k t : ℤ) (N d : ℕ)
    (hC : 0 ≤ C) (hk : 0 ≤ k) (ht : 2 * k ≤ t)
    (hd : p.natDegree ≤ d) (hdN : d ≤ N)
    (hc : ∀ i ≤ d, |p.coeff i| ≤ C * k ^ (N - i)) :
    |p.eval t| ≤ 2 * C * k ^ (N - d) * t ^ d := by
  have ht0 : 0 ≤ t := by omega
  rw [p.eval_eq_sum_range' (by omega : p.natDegree < d + 1)]
  calc
    |∑ i ∈ range (d + 1), p.coeff i * t ^ i| ≤
        ∑ i ∈ range (d + 1), |p.coeff i * t ^ i| := abs_sum_le_sum_abs _ _
    _ ≤ ∑ i ∈ range (d + 1), C * k ^ (N - d) * (k ^ (d - i) * t ^ i) := by
      apply sum_le_sum
      intro i hi
      have hid : i ≤ d := by simpa using hi
      rw [abs_mul, abs_of_nonneg (pow_nonneg ht0 i)]
      calc
        |p.coeff i| * t ^ i ≤ (C * k ^ (N - i)) * t ^ i :=
          mul_le_mul_of_nonneg_right (hc i hid) (pow_nonneg ht0 i)
        _ = C * k ^ (N - d) * (k ^ (d - i) * t ^ i) := by
          rw [show N - i = (N - d) + (d - i) by omega, pow_add]
          ring
    _ = (C * k ^ (N - d)) * ∑ i ∈ range (d + 1), k ^ (d - i) * t ^ i :=
      (mul_sum _ _ _).symm
    _ ≤ (C * k ^ (N - d)) * (2 * t ^ d) :=
      mul_le_mul_of_nonneg_left (weighted_sum_le k t hk ht d)
        (mul_nonneg hC (pow_nonneg hk _))
    _ = 2 * C * k ^ (N - d) * t ^ d := by ring

theorem eraseLead_weighted_coeff (p : ℤ[X]) (C k : ℤ) (N d : ℕ)
    (hC : 0 ≤ C) (hk : 0 ≤ k)
    (hc : ∀ i ≤ d, |p.coeff i| ≤ C * k ^ (N - i)) :
    ∀ i ≤ d, |p.eraseLead.coeff i| ≤ C * k ^ (N - i) := by
  intro i hi
  rw [p.eraseLead_coeff]
  split_ifs
  · simp only [abs_zero]
    exact mul_nonneg hC (pow_nonneg hk _)
  · exact hc i hi

/-- The extra degree saved by an even polynomial after deleting its leading term. -/
theorem eraseLead_degree_le_sub_two_of_even (p : ℤ[X])
    (hp : ∀ i, ¬Even i → p.coeff i = 0) (hdeg : Even p.natDegree) :
    p.eraseLead.natDegree ≤ p.natDegree - 2 := by
  apply p.natDegree_eraseLead_le_of_nextCoeff_eq_zero
  rw [Polynomial.nextCoeff]
  split_ifs with hzero
  · rfl
  · apply hp
    intro h
    have h1 := hdeg.two_dvd
    have h2 := h.two_dvd
    omega

end B686CenteredRunge

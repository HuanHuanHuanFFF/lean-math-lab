import Mathlib.Data.Nat.Choose.Sum
import Mathlib.Data.Real.Basic
import Mathlib.Tactic.Ring

/-!
# Exact finite expansions of the three BFT integrands

Pure ring identities, for all real z,u and all natural A,B,C. These formulas
are the remaining finite-sum side of source coefficient correspondence.
No integral, Padé identity, height bound, or gcd estimate is assumed here.
-/

namespace Math.B699.PadeKernelExpansion

open scoped BigOperators

private theorem parity_sub_add (C r : ℕ) (hr : r ≤ C) :
    (-1 : ℝ) ^ (C - r) = (-1 : ℝ) ^ (C + r) := by
  rw [neg_one_pow_eq_pow_mod_two, neg_one_pow_eq_pow_mod_two]
  congr 1
  omega

/-- BFT (3.1) expanded in powers of z; the parity factor is explicit. -/
theorem p_kernel_expansion (A B C : ℕ) (z u : ℝ) :
    u ^ A * (1 - u) ^ B * (z - u) ^ C =
      ∑ r ∈ Finset.range (C + 1),
        ((-1 : ℝ) ^ (C + r) * (C.choose r : ℝ) * z ^ r) *
          (u ^ (A + C - r) * (1 - u) ^ B) := by
  have hbin : (z - u) ^ C =
      ∑ r ∈ Finset.range (C + 1), z ^ r * (-u) ^ (C - r) * (C.choose r : ℝ) := by
    simpa only [sub_eq_add_neg] using (add_pow z (-u) C)
  rw [hbin, Finset.mul_sum]
  apply Finset.sum_congr rfl
  intro r hr
  have hle : r ≤ C := Nat.lt_succ_iff.mp (Finset.mem_range.mp hr)
  have hexp : A + C - r = A + (C - r) := by omega
  rw [neg_pow, parity_sub_add C r hle, hexp, pow_add]
  ring

/-- BFT (3.2), before its outer `(-1)^C` and factorial prefactor. -/
theorem q_kernel_expansion (A B C : ℕ) (z u : ℝ) :
    u ^ B * (1 - u) ^ C * (1 - u + z * u) ^ A =
      ∑ r ∈ Finset.range (A + 1), ((A.choose r : ℝ) * z ^ r) *
        (u ^ (B + r) * (1 - u) ^ (A + C - r)) := by
  have hbin : (1 - u + z * u) ^ A =
      ∑ r ∈ Finset.range (A + 1),
        (z * u) ^ r * (1 - u) ^ (A - r) * (A.choose r : ℝ) := by
    simpa only [add_comm (z * u) (1 - u)] using (add_pow (z * u) (1 - u) A)
  rw [hbin, Finset.mul_sum]
  apply Finset.sum_congr rfl
  intro r hr
  have hle : r ≤ A := Nat.lt_succ_iff.mp (Finset.mem_range.mp hr)
  have hexp : A + C - r = C + (A - r) := by omega
  rw [hexp, mul_pow, pow_add, pow_add]
  ring

/-- BFT (3.3), with the error polynomial's alternating coefficients. -/
theorem e_kernel_expansion (A B C : ℕ) (z u : ℝ) :
    u ^ A * (1 - u) ^ C * (1 - z * u) ^ B =
      ∑ r ∈ Finset.range (B + 1),
        ((-1 : ℝ) ^ r * (B.choose r : ℝ) * z ^ r) *
          (u ^ (A + r) * (1 - u) ^ C) := by
  have hbin : (1 - z * u) ^ B =
      ∑ r ∈ Finset.range (B + 1), (-(z * u)) ^ r * (B.choose r : ℝ) := by
    have h := add_pow (-(z * u)) (1 : ℝ) B
    simpa only [one_pow, mul_one, neg_add_eq_sub] using h
  rw [hbin, Finset.mul_sum]
  apply Finset.sum_congr rfl
  intro r hr
  rw [neg_pow, mul_pow, pow_add]
  ring

#print axioms Math.B699.PadeKernelExpansion.p_kernel_expansion
#print axioms Math.B699.PadeKernelExpansion.q_kernel_expansion
#print axioms Math.B699.PadeKernelExpansion.e_kernel_expansion

end Math.B699.PadeKernelExpansion

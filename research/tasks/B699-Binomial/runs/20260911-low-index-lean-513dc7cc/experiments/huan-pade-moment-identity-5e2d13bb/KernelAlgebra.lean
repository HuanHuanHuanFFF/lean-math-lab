import Mathlib.Data.Nat.Choose.Sum
import Mathlib.Algebra.Polynomial.Basic
import Mathlib.Algebra.Ring.Commute
import Mathlib.Tactic.Ring

/-!
# Finite BFT kernel expansions over any commutative ring

Derived from the frozen sibling KernelExpansion.lean, generalized from Real
to an arbitrary commutative ring. Used below with R = Rat[X].
All sources in this new experiment are UNCOMPILED CANDIDATES.
-/

namespace Math.B699.PadeMomentIdentity.KernelAlgebra

variable {R : Type*} [CommRing R]

open scoped BigOperators

private theorem parity_sub_add (C r : ℕ) (hr : r ≤ C) :
    (-1 : R) ^ (C - r) = (-1 : R) ^ (C + r) := by
  rw [neg_one_pow_eq_pow_mod_two, neg_one_pow_eq_pow_mod_two]
  congr 1
  omega

/-- BFT (3.1) expanded in powers of z; the parity factor is explicit. -/
theorem p_kernel_expansion (A B C : ℕ) (z u : R) :
    u ^ A * (1 - u) ^ B * (z - u) ^ C =
      ∑ r ∈ Finset.range (C + 1),
        ((-1 : R) ^ (C + r) * (C.choose r : R) * z ^ r) *
          (u ^ (A + C - r) * (1 - u) ^ B) := by
  have hbin : (z - u) ^ C =
      ∑ r ∈ Finset.range (C + 1), z ^ r * (-u) ^ (C - r) * (C.choose r : R) := by
    simpa only [sub_eq_add_neg] using (add_pow z (-u) C)
  rw [hbin, Finset.mul_sum]
  apply Finset.sum_congr rfl
  intro r hr
  have hle : r ≤ C := Nat.lt_succ_iff.mp (Finset.mem_range.mp hr)
  have hexp : A + C - r = A + (C - r) := by omega
  rw [neg_pow, parity_sub_add C r hle, hexp, pow_add]
  ring

/-- BFT (3.2), before its outer `(-1)^C` and factorial prefactor. -/
theorem q_kernel_expansion (A B C : ℕ) (z u : R) :
    u ^ B * (1 - u) ^ C * (1 - u + z * u) ^ A =
      ∑ r ∈ Finset.range (A + 1), ((A.choose r : R) * z ^ r) *
        (u ^ (B + r) * (1 - u) ^ (A + C - r)) := by
  have hbin : (1 - u + z * u) ^ A =
      ∑ r ∈ Finset.range (A + 1),
        (z * u) ^ r * (1 - u) ^ (A - r) * (A.choose r : R) := by
    simpa only [add_comm (z * u) (1 - u)] using (add_pow (z * u) (1 - u) A)
  rw [hbin, Finset.mul_sum]
  apply Finset.sum_congr rfl
  intro r hr
  have hle : r ≤ A := Nat.lt_succ_iff.mp (Finset.mem_range.mp hr)
  have hexp : A + C - r = C + (A - r) := by omega
  rw [hexp, mul_pow, pow_add, pow_add]
  ring

/-- BFT (3.3), with the error polynomial's alternating coefficients. -/
theorem e_kernel_expansion (A B C : ℕ) (z u : R) :
    u ^ A * (1 - u) ^ C * (1 - z * u) ^ B =
      ∑ r ∈ Finset.range (B + 1),
        ((-1 : R) ^ r * (B.choose r : R) * z ^ r) *
          (u ^ (A + r) * (1 - u) ^ C) := by
  have hbin : (1 - z * u) ^ B =
      ∑ r ∈ Finset.range (B + 1), (-(z * u)) ^ r * (B.choose r : R) := by
    have h := add_pow (-(z * u)) (1 : R) B
    simpa only [one_pow, mul_one, neg_add_eq_sub] using h
  rw [hbin, Finset.mul_sum]
  apply Finset.sum_congr rfl
  intro r hr
  rw [neg_pow, mul_pow, pow_add]
  ring

#print axioms Math.B699.PadeMomentIdentity.KernelAlgebra.p_kernel_expansion
#print axioms Math.B699.PadeMomentIdentity.KernelAlgebra.q_kernel_expansion
#print axioms Math.B699.PadeMomentIdentity.KernelAlgebra.e_kernel_expansion

end Math.B699.PadeMomentIdentity.KernelAlgebra

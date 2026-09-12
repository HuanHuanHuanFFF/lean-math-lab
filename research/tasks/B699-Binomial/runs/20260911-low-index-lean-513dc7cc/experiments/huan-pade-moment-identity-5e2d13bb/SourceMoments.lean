import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».experiments.«huan-pade-moment-identity-5e2d13bb».KernelAlgebra
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».experiments.«huan-pade-moment-identity-5e2d13bb».KernelMoments

/-!
# Actual source coefficient sums are the concrete moment values

UNCOMPILED CANDIDATE. These are the explicit integer BFT coefficient formulas,
cast to Rat, not polynomials specified only by satisfying a Padé identity.
Every natural-subtraction bound is attached to the finite sum index.
-/

namespace Math.B699.PadeMomentIdentity

open Polynomial Math.B699.PadeMoment
open scoped BigOperators

def pSource (A B C : ℕ) (z : ℚ) : ℚ :=
  ∑ r ∈ Finset.range (C + 1),
    ((-1 : ℚ) ^ (C + r) * ((A + B + C + 1).choose r : ℚ) *
      ((A + C - r).choose A : ℚ)) * z ^ r

def qSource (A B C : ℕ) (z : ℚ) : ℚ :=
  ∑ r ∈ Finset.range (A + 1),
    ((-1 : ℚ) ^ C * ((A + C - r).choose C : ℚ) * ((B + r).choose r : ℚ)) * z ^ r

def eSource (A B C : ℕ) (z : ℚ) : ℚ :=
  ∑ r ∈ Finset.range (B + 1),
    ((-1 : ℚ) ^ r * ((A + r).choose r : ℚ) *
      ((A + B + C + 1).choose (A + C + r + 1) : ℚ)) * z ^ r

theorem pKernel_expansion (A B C : ℕ) (z : ℚ) :
    pKernel A B C z =
      ∑ r ∈ Finset.range (C + 1),
        Polynomial.C ((-1 : ℚ) ^ (C + r) * (C.choose r : ℚ) * z ^ r) *
          bernsteinMonomial (A + C - r) B := by
  simpa only [pKernel, bernsteinMonomial, map_mul, map_pow, map_neg, map_one,
    map_natCast] using
    (KernelAlgebra.p_kernel_expansion A B C (Polynomial.C z) (X : ℚ[X]))

theorem qKernel_expansion (A B C : ℕ) (z : ℚ) :
    qKernel A B C z =
      ∑ r ∈ Finset.range (A + 1),
        Polynomial.C ((A.choose r : ℚ) * z ^ r) *
          bernsteinMonomial (B + r) (A + C - r) := by
  simpa only [qKernel, bernsteinMonomial, map_mul, map_pow, map_natCast] using
    (KernelAlgebra.q_kernel_expansion A B C (Polynomial.C z) (X : ℚ[X]))

theorem eKernel_expansion (A B C : ℕ) (z : ℚ) :
    eKernel A B C z =
      ∑ r ∈ Finset.range (B + 1),
        Polynomial.C ((-1 : ℚ) ^ r * (B.choose r : ℚ) * z ^ r) *
          bernsteinMonomial (A + r) C := by
  simpa only [eKernel, bernsteinMonomial, map_mul, map_pow, map_neg, map_one,
    map_natCast] using
    (KernelAlgebra.e_kernel_expansion A B C (Polynomial.C z) (X : ℚ[X]))

theorem pSource_eq_moment (A B C : ℕ) (z : ℚ) : pSource A B C z = pMoment A B C z := by
  classical
  unfold pSource pMoment
  rw [pKernel_expansion, moment_sum]
  simp only [moment_C_mul, moment_bernsteinMonomial]
  rw [Finset.mul_sum]
  apply Finset.sum_congr rfl
  intro r hr
  have h := p_coefficient_factor A B C r (Nat.lt_succ_iff.mp (Finset.mem_range.mp hr))
  calc
    ((-1 : ℚ) ^ (C + r) * ((A + B + C + 1).choose r : ℚ) *
        ((A + C - r).choose A : ℚ)) * z ^ r =
      ((-1 : ℚ) ^ (C + r) * z ^ r) *
        (((A + B + C + 1).choose r : ℚ) * ((A + C - r).choose A : ℚ)) := by ring
    _ = ((-1 : ℚ) ^ (C + r) * z ^ r) *
        (prefactor A B C * (C.choose r : ℚ) * betaMoment (A + C - r) B) := by rw [h]
    _ = _ := by ring

theorem qSource_eq_moment (A B C : ℕ) (z : ℚ) : qSource A B C z = qMoment A B C z := by
  classical
  unfold qSource qMoment
  rw [qKernel_expansion, moment_sum]
  simp only [moment_C_mul, moment_bernsteinMonomial]
  rw [Finset.mul_sum]
  apply Finset.sum_congr rfl
  intro r hr
  have h := q_coefficient_factor A B C r (Nat.lt_succ_iff.mp (Finset.mem_range.mp hr))
  calc
    ((-1 : ℚ) ^ C * ((A + C - r).choose C : ℚ) * ((B + r).choose r : ℚ)) * z ^ r =
        ((-1 : ℚ) ^ C * z ^ r) *
          (((A + C - r).choose C : ℚ) * ((B + r).choose r : ℚ)) := by ring
    _ = ((-1 : ℚ) ^ C * z ^ r) *
        (prefactor A B C * (A.choose r : ℚ) * betaMoment (B + r) (A + C - r)) := by rw [h]
    _ = _ := by ring

theorem eSource_eq_moment (A B C : ℕ) (z : ℚ) : eSource A B C z = eMoment A B C z := by
  classical
  unfold eSource eMoment
  rw [eKernel_expansion, moment_sum]
  simp only [moment_C_mul, moment_bernsteinMonomial]
  rw [Finset.mul_sum]
  apply Finset.sum_congr rfl
  intro r hr
  have h := e_coefficient_factor A B C r (Nat.lt_succ_iff.mp (Finset.mem_range.mp hr))
  calc
    ((-1 : ℚ) ^ r * ((A + r).choose r : ℚ) *
        ((A + B + C + 1).choose (A + C + r + 1) : ℚ)) * z ^ r =
      ((-1 : ℚ) ^ r * z ^ r) *
        (((A + r).choose r : ℚ) * ((A + B + C + 1).choose (A + C + r + 1) : ℚ)) := by ring
    _ = ((-1 : ℚ) ^ r * z ^ r) *
        (prefactor A B C * (B.choose r : ℚ) * betaMoment (A + r) C) := by rw [h]
    _ = _ := by ring

theorem source_pade_identity (A B C : ℕ) (z : ℚ) :
    pSource A B C z - (1 - z) ^ (B + C + 1) * qSource A B C z =
      z ^ (A + C + 1) * eSource A B C z := by
  rw [pSource_eq_moment, qSource_eq_moment, eSource_eq_moment]
  exact moment_pade_identity A B C z

#print axioms Math.B699.PadeMomentIdentity.pSource_eq_moment
#print axioms Math.B699.PadeMomentIdentity.qSource_eq_moment
#print axioms Math.B699.PadeMomentIdentity.eSource_eq_moment
#print axioms Math.B699.PadeMomentIdentity.source_pade_identity

end Math.B699.PadeMomentIdentity

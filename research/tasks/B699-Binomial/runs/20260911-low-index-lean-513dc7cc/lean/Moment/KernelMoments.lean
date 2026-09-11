import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Moment.Subdivision

/-!
# The Padé identity from actual rational moments of polynomial kernels

UNCOMPILED CANDIDATE. All A,B,C are natural numbers and z is any rational.
No Padé identity, multiplicativity of moment, or analytic substitution rule
is an input. The actual integer-coefficient connection is in SourceMoments.
-/

namespace Math.B699.PadeMomentIdentity

open Polynomial Math.B699.PadeMoment

noncomputable def pKernel (A B C : ℕ) (z : ℚ) : ℚ[X] :=
  X ^ A * (1 - X) ^ B * (Polynomial.C z - X) ^ C

noncomputable def qKernel (A B C : ℕ) (z : ℚ) : ℚ[X] :=
  X ^ B * (1 - X) ^ C * (1 - X + Polynomial.C z * X) ^ A

noncomputable def eKernel (A B C : ℕ) (z : ℚ) : ℚ[X] :=
  X ^ A * (1 - X) ^ C * (1 - Polynomial.C z * X) ^ B

noncomputable def pMoment (A B C : ℕ) (z : ℚ) : ℚ :=
  prefactor A B C * moment (pKernel A B C z)

noncomputable def qMoment (A B C : ℕ) (z : ℚ) : ℚ :=
  (-1 : ℚ) ^ C * prefactor A B C * moment (qKernel A B C z)

noncomputable def eMoment (A B C : ℕ) (z : ℚ) : ℚ :=
  prefactor A B C * moment (eKernel A B C z)

theorem pKernel_comp_left (A B C : ℕ) (z : ℚ) :
    (pKernel A B C z).comp (Polynomial.C z * X) =
      Polynomial.C (z ^ (A + C)) * eKernel A B C z := by
  simp only [pKernel, Polynomial.mul_comp, Polynomial.pow_comp,
    Polynomial.sub_comp, Polynomial.X_comp, Polynomial.C_comp, Polynomial.one_comp]
  have h : Polynomial.C z - Polynomial.C z * (X : ℚ[X]) =
      Polynomial.C z * (1 - X) := by ring
  rw [h]
  unfold eKernel
  simp only [mul_pow, Polynomial.C_mul, Polynomial.C_pow, pow_add]
  ring

theorem pKernel_comp_right (A B C : ℕ) (z : ℚ) :
    (pKernel A B C z).comp ((1 - X) + Polynomial.C z * X) =
      Polynomial.C ((-1 : ℚ) ^ C * (1 - z) ^ (B + C)) * qKernel A B C z := by
  simp only [pKernel, Polynomial.mul_comp, Polynomial.pow_comp,
    Polynomial.sub_comp, Polynomial.X_comp, Polynomial.C_comp, Polynomial.one_comp]
  have h1 : (1 : ℚ[X]) - ((1 - X) + Polynomial.C z * X) =
      Polynomial.C (1 - z) * X := by
    simp only [map_sub, map_one]
    ring
  have h2 : Polynomial.C z - ((1 - X : ℚ[X]) + Polynomial.C z * X) =
      Polynomial.C (-(1 - z)) * (1 - X) := by
    simp only [map_neg, map_sub, map_one]
    ring
  have hneg : (Polynomial.C (-(1 - z)) : ℚ[X]) =
      Polynomial.C (-1) * Polynomial.C (1 - z) := by
    rw [← Polynomial.C_mul, neg_one_mul]
  rw [h1, h2, hneg]
  unfold qKernel
  simp only [mul_pow, Polynomial.C_mul, Polynomial.C_pow, pow_add]
  ring

/-- The correct source exponents are B+C+1 and A+C+1. -/
theorem moment_pade_identity (A B C : ℕ) (z : ℚ) :
    pMoment A B C z - (1 - z) ^ (B + C + 1) * qMoment A B C z =
      z ^ (A + C + 1) * eMoment A B C z := by
  have h := moment_subdivision (pKernel A B C z) z
  simp only [pKernel_comp_left, pKernel_comp_right, moment_C_mul] at h
  unfold pMoment qMoment eMoment
  rw [h]
  simp only [pow_succ]
  ring

#print axioms Math.B699.PadeMomentIdentity.pKernel_comp_left
#print axioms Math.B699.PadeMomentIdentity.pKernel_comp_right
#print axioms Math.B699.PadeMomentIdentity.moment_pade_identity

end Math.B699.PadeMomentIdentity

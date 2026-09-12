import Mathlib.MeasureTheory.Integral.IntervalIntegral.Basic
import Mathlib.Data.Nat.Factorial.Basic
import Mathlib.Tactic.FunProp
import Mathlib.Tactic.Ring

/-!
# The integral identity underlying BFT (3.4)

Source: Bennett--Filaseta--Trifonov, February 26, 2007 author manuscript,
Section 3, equations (3.1)--(3.4), printed page 9.
PDF SHA256: 0df18ee8d108f658812ac05d1f8947b3dcc28b70d17f268acd7c871e7e7c392c.

These are the actual integral definitions, not an assumption that a Padé
identity or height estimate holds. The theorem covers every natural A, B, C
and every real z, including z = 0 and z = 1. Source coefficient correspondence,
integer content, and analytic bounds are separate obligations.

Candidate only until its exact source has passed the run's verifier.
-/

namespace Math.B699.PadeConstruction

noncomputable def pKernel (A B C : ℕ) (z u : ℝ) : ℝ :=
  u ^ A * (1 - u) ^ B * (z - u) ^ C

noncomputable def qKernel (A B C : ℕ) (z u : ℝ) : ℝ :=
  u ^ B * (1 - u) ^ C * (1 - u + z * u) ^ A

noncomputable def eKernel (A B C : ℕ) (z u : ℝ) : ℝ :=
  u ^ A * (1 - u) ^ C * (1 - z * u) ^ B

noncomputable def factorialPrefactor (A B C : ℕ) : ℝ :=
  ((A + B + C + 1).factorial : ℝ) /
    ((A.factorial : ℝ) * (B.factorial : ℝ) * (C.factorial : ℝ))

noncomputable def pIntegral (A B C : ℕ) (z : ℝ) : ℝ :=
  factorialPrefactor A B C * ∫ u in (0 : ℝ)..1, pKernel A B C z u

noncomputable def qIntegral (A B C : ℕ) (z : ℝ) : ℝ :=
  (-1 : ℝ) ^ C * factorialPrefactor A B C *
    ∫ u in (0 : ℝ)..1, qKernel A B C z u

noncomputable def eIntegral (A B C : ℕ) (z : ℝ) : ℝ :=
  factorialPrefactor A B C * ∫ u in (0 : ℝ)..1, eKernel A B C z u

private theorem pKernel_left_substitution (A B C : ℕ) (z u : ℝ) :
    pKernel A B C z (z * u) = z ^ (A + C) * eKernel A B C z u := by
  dsimp [pKernel, eKernel]
  rw [show z - z * u = z * (1 - u) by ring]
  simp only [mul_pow, pow_add]
  ring

private theorem pKernel_right_substitution (A B C : ℕ) (z u : ℝ) :
    pKernel A B C z (1 - (1 - z) * u) =
      (-1 : ℝ) ^ C * (1 - z) ^ (B + C) * qKernel A B C z u := by
  dsimp [pKernel, qKernel]
  rw [show 1 - (1 - (1 - z) * u) = (1 - z) * u by ring]
  rw [show z - (1 - (1 - z) * u) = (-1 : ℝ) * (1 - z) * (1 - u) by ring]
  rw [show 1 - (1 - z) * u = 1 - u + z * u by ring]
  simp only [mul_pow, pow_add]
  ring

/-- The left segment gives the exact high-order remainder. No restriction
on the sign of z is needed because interval integrals are oriented. -/
theorem pKernel_integral_zero_to_z (A B C : ℕ) (z : ℝ) :
    (∫ u in (0 : ℝ)..z, pKernel A B C z u) =
      z ^ (A + C + 1) * ∫ u in (0 : ℝ)..1, eKernel A B C z u := by
  have hsub := intervalIntegral.smul_integral_comp_mul_left
    (a := (0 : ℝ)) (b := 1) (pKernel A B C z) z
  calc
    (∫ u in (0 : ℝ)..z, pKernel A B C z u) =
        z * ∫ u in (0 : ℝ)..1, pKernel A B C z (z * u) := by
          simpa only [smul_eq_mul, mul_zero, mul_one] using hsub.symm
    _ = z * (z ^ (A + C) * ∫ u in (0 : ℝ)..1, eKernel A B C z u) := by
      simp_rw [pKernel_left_substitution]
      rw [intervalIntegral.integral_const_mul]
    _ = z ^ (A + C + 1) * ∫ u in (0 : ℝ)..1, eKernel A B C z u := by
      rw [pow_succ]
      ring

/-- The right segment gives the binomial factor and its required parity sign. -/
theorem pKernel_integral_z_to_one (A B C : ℕ) (z : ℝ) :
    (∫ u in z..(1 : ℝ), pKernel A B C z u) =
      (-1 : ℝ) ^ C * (1 - z) ^ (B + C + 1) *
        ∫ u in (0 : ℝ)..1, qKernel A B C z u := by
  have hsub := intervalIntegral.smul_integral_comp_sub_mul
    (a := (0 : ℝ)) (b := 1) (pKernel A B C z) (1 - z) 1
  calc
    (∫ u in z..(1 : ℝ), pKernel A B C z u) =
        (1 - z) * ∫ u in (0 : ℝ)..1, pKernel A B C z (1 - (1 - z) * u) := by
          simpa only [smul_eq_mul, mul_zero, mul_one, sub_zero, sub_sub_cancel] using hsub.symm
    _ = (1 - z) * (((-1 : ℝ) ^ C * (1 - z) ^ (B + C)) *
        ∫ u in (0 : ℝ)..1, qKernel A B C z u) := by
      simp_rw [pKernel_right_substitution]
      rw [intervalIntegral.integral_const_mul]
    _ = (-1 : ℝ) ^ C * (1 - z) ^ (B + C + 1) *
        ∫ u in (0 : ℝ)..1, qKernel A B C z u := by
      rw [pow_succ]
      ring

/-- BFT (3.4), proved directly from its integral definitions for all parameters. -/
theorem pade_integral_identity (A B C : ℕ) (z : ℝ) :
    pIntegral A B C z - (1 - z) ^ (B + C + 1) * qIntegral A B C z =
      z ^ (A + C + 1) * eIntegral A B C z := by
  have hcont : Continuous (pKernel A B C z) := by
    unfold pKernel
    fun_prop
  have hsplit := intervalIntegral.integral_add_adjacent_intervals
    (μ := MeasureTheory.volume)
    (hcont.intervalIntegrable (0 : ℝ) z) (hcont.intervalIntegrable z (1 : ℝ))
  rw [pKernel_integral_zero_to_z, pKernel_integral_z_to_one] at hsplit
  dsimp [pIntegral, qIntegral, eIntegral]
  rw [← hsplit]
  ring

#print axioms Math.B699.PadeConstruction.pKernel_integral_zero_to_z
#print axioms Math.B699.PadeConstruction.pKernel_integral_z_to_one
#print axioms Math.B699.PadeConstruction.pade_integral_identity

end Math.B699.PadeConstruction

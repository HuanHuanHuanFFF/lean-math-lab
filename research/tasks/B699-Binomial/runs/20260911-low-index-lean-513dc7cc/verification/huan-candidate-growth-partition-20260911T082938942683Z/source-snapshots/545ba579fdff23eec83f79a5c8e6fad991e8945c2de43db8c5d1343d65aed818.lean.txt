import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Moment.Subdivision
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Moment.Bernstein
import Mathlib.Tactic.NormNum
import Mathlib.Tactic.Ring

/-!
# Combine actual dyadic moment subdivisions with local Bernstein certificates

UNCOMPILED CANDIDATE. The imported Moment/Subdivision/Bernstein prerequisites
have separate parent acceptance records. This file has not been run in Lean.

The data checker only supplies finite polynomial certificates. Constructing
GrowthTree terms for those concrete data is still a separate obligation.
No local numerical bound is substituted for a global BernsteinCone premise.
-/

namespace Math.B699.PadeGrowthPartition

open Polynomial Math.B699.PadeMoment Math.B699.PadeMomentIdentity

noncomputable def halfLeft : ℚ[X] := Polynomial.C (1 / 2 : ℚ) * X
noncomputable def halfRight : ℚ[X] := Polynomial.C (1 / 2 : ℚ) + Polynomial.C (1 / 2 : ℚ) * X
noncomputable def halfReflected : ℚ[X] := (1 - X) + Polynomial.C (1 / 2 : ℚ) * X

/-- This is obtained from the actual subdivision theorem at z=0. -/
theorem moment_reflection (p : ℚ[X]) :
    moment (p.comp (1 - X)) = moment p := by
  simpa using (moment_subdivision p (0 : ℚ)).symm

theorem halfReflected_comp_reflection :
    halfReflected.comp (1 - X) = halfRight := by
  unfold halfReflected halfRight
  simp only [Polynomial.add_comp, Polynomial.sub_comp, Polynomial.one_comp,
    Polynomial.X_comp, Polynomial.mul_comp, Polynomial.C_comp]
  have htwo : (Polynomial.C (1 / 2 : ℚ) : ℚ[X]) + Polynomial.C (1 / 2 : ℚ) = 1 := by
    rw [← map_add]
    norm_num
  have hsub : (1 : ℚ[X]) - Polynomial.C (1 / 2 : ℚ) = Polynomial.C (1 / 2 : ℚ) :=
    (sub_eq_iff_eq_add).2 htwo.symm
  calc
    (1 : ℚ[X]) - (1 - X) + Polynomial.C (1 / 2 : ℚ) * (1 - X) =
        Polynomial.C (1 / 2 : ℚ) + (1 - Polynomial.C (1 / 2 : ℚ)) * X := by ring
    _ = _ := by rw [hsub]

/-- The orientation-preserving binary split used by the certificate tree. -/
theorem moment_half_split (p : ℚ[X]) :
    moment p = (1 / 2 : ℚ) * moment (p.comp halfLeft) +
      (1 / 2 : ℚ) * moment (p.comp halfRight) := by
  have hr : moment (p.comp halfReflected) = moment (p.comp halfRight) := by
    calc
      moment (p.comp halfReflected) =
          moment ((p.comp halfReflected).comp (1 - X)) :=
        (moment_reflection (p.comp halfReflected)).symm
      _ = moment (p.comp halfRight) := by
        rw [Polynomial.comp_assoc, halfReflected_comp_reflection]
  have h := moment_subdivision p (1 / 2 : ℚ)
  change moment p = (1 / 2 : ℚ) * moment (p.comp halfLeft) +
    (1 - (1 / 2 : ℚ)) * moment (p.comp halfReflected) at h
  have hhalf : 1 - (1 / 2 : ℚ) = (1 / 2 : ℚ) := by norm_num
  rw [hhalf, hr] at h
  exact h

/-- A finite binary tree of genuine local cone proofs. The uniform lambda is
shared by every leaf; numerical pointwise assertions are not constructors. -/
inductive GrowthTree (lam : ℚ) : ℚ[X] → ℚ[X] → Prop
  | leaf {w f : ℚ[X]} : BernsteinCone w → BernsteinCone f →
      BernsteinCone (Polynomial.C lam - f) → GrowthTree lam w f
  | split {w f : ℚ[X]} :
      GrowthTree lam (w.comp halfLeft) (f.comp halfLeft) →
      GrowthTree lam (w.comp halfRight) (f.comp halfRight) → GrowthTree lam w f

/-- Local cone positivity also survives the actual moment subdivision. -/
theorem moment_nonneg_of_tree (lam : ℚ) {w f : ℚ[X]}
    (certificate : GrowthTree lam w f) (n : ℕ) :
    0 ≤ moment (w * f ^ n) := by
  induction certificate with
  | @leaf w f hw hf hgap =>
      exact bernsteinCone_moment_nonneg (bernsteinCone_mul hw (bernsteinCone_pow hf n))
  | @split w f left right ihl ihr =>
      have h := moment_half_split (w * f ^ n)
      simp only [Polynomial.mul_comp, Polynomial.pow_comp] at h
      rw [h]
      exact add_nonneg (mul_nonneg (by norm_num) ihl) (mul_nonneg (by norm_num) ihr)

/-- Full-parameter growth from a finite certificate tree, using the actual M.
This proof never calls multiplicativity of M; only the affine maps preserve
products, and the moment split adds the resulting pieces with positive weights. -/
theorem moment_growth_of_tree (lam : ℚ) (hlam : 0 ≤ lam)
    {w f : ℚ[X]} (certificate : GrowthTree lam w f) (n : ℕ) :
    moment (w * f ^ n) ≤ lam ^ n * moment w := by
  induction certificate with
  | @leaf w f hw hf hgap =>
      exact moment_weighted_power_le w f lam hlam hw hf hgap n
  | @split w f left right ihl ihr =>
      have hproduct : moment (w * f ^ n) =
          (1 / 2 : ℚ) * moment (w.comp halfLeft * (f.comp halfLeft) ^ n) +
          (1 / 2 : ℚ) * moment (w.comp halfRight * (f.comp halfRight) ^ n) := by
        simpa only [Polynomial.mul_comp, Polynomial.pow_comp] using moment_half_split (w * f ^ n)
      have hweight := moment_half_split w
      calc
        moment (w * f ^ n) =
            (1 / 2 : ℚ) * moment (w.comp halfLeft * (f.comp halfLeft) ^ n) +
            (1 / 2 : ℚ) * moment (w.comp halfRight * (f.comp halfRight) ^ n) := hproduct
        _ ≤ (1 / 2 : ℚ) * (lam ^ n * moment (w.comp halfLeft)) +
            (1 / 2 : ℚ) * (lam ^ n * moment (w.comp halfRight)) :=
          add_le_add (mul_le_mul_of_nonneg_left ihl (by norm_num))
            (mul_le_mul_of_nonneg_left ihr (by norm_num))
        _ = lam ^ n * ((1 / 2 : ℚ) * moment (w.comp halfLeft) +
            (1 / 2 : ℚ) * moment (w.comp halfRight)) := by ring
        _ = lam ^ n * moment w := by rw [← hweight]

theorem moment_abs_growth_of_tree (lam : ℚ) (hlam : 0 ≤ lam)
    {w f : ℚ[X]} (certificate : GrowthTree lam w f) (n : ℕ) :
    |moment (w * f ^ n)| ≤ lam ^ n * moment w := by
  rw [abs_of_nonneg (moment_nonneg_of_tree lam certificate n)]
  exact moment_growth_of_tree lam hlam certificate n

#print axioms Math.B699.PadeGrowthPartition.moment_reflection
#print axioms Math.B699.PadeGrowthPartition.moment_half_split
#print axioms Math.B699.PadeGrowthPartition.moment_growth_of_tree
#print axioms Math.B699.PadeGrowthPartition.moment_nonneg_of_tree
#print axioms Math.B699.PadeGrowthPartition.moment_abs_growth_of_tree

end Math.B699.PadeGrowthPartition

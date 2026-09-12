import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Moment.Bernstein
import Mathlib.Algebra.Polynomial.Eval.Defs
import Mathlib.Tactic.Ring

/-!
# Actual positive affine substitution preserves the Bernstein cone

UNCOMPILED CANDIDATE. No cone membership is assumed for a desired source core
or weight. They are built below from X, 1-X and positive affine factors.
-/

namespace Math.B699.GrowthLeaf

open Polynomial Math.B699.PadeMoment

theorem cone_X : BernsteinCone (X : ℚ[X]) := by
  simpa only [bernsteinMonomial, pow_one, pow_zero, mul_one] using BernsteinCone.basis 1 0

theorem cone_one_sub_X : BernsteinCone (1 - X : ℚ[X]) := by
  simpa only [bernsteinMonomial, pow_zero, pow_one, one_mul] using BernsteinCone.basis 0 1

noncomputable def affine (a b : ℚ) : ℚ[X] :=
  Polynomial.C a * (1 - X) + Polynomial.C b * X

theorem affine_eq_standard (a b : ℚ) :
    affine a b = Polynomial.C a + Polynomial.C (b - a) * X := by
  unfold affine
  rw [map_sub]
  ring

theorem cone_affine (a b : ℚ) (ha : 0 ≤ a) (hb : 0 ≤ b) :
    BernsteinCone (affine a b) := by
  exact BernsteinCone.add (BernsteinCone.scale a ha cone_one_sub_X)
    (BernsteinCone.scale b hb cone_X)

theorem one_sub_affine (a b : ℚ) :
    1 - affine a b = affine (1 - a) (1 - b) := by
  unfold affine
  simp only [map_sub, map_one]
  ring

/-- All endpoint inequalities are actual hypotheses. No interval order is
inferred from a numerical certificate label. -/
theorem cone_comp_affine {p : ℚ[X]} (hp : BernsteinCone p)
    (a b : ℚ) (ha : 0 ≤ a) (hab : a ≤ b) (hb : b ≤ 1) :
    BernsteinCone (p.comp (affine a b)) := by
  have ht : BernsteinCone (affine a b) := cone_affine a b ha (ha.trans hab)
  have hcomp : BernsteinCone (1 - affine a b) := by
    rw [one_sub_affine]
    exact cone_affine (1 - a) (1 - b)
      (sub_nonneg.mpr (hab.trans hb)) (sub_nonneg.mpr hb)
  induction hp with
  | zero => simpa only [Polynomial.zero_comp] using BernsteinCone.zero
  | basis i j =>
      simpa only [bernsteinMonomial, Polynomial.mul_comp, Polynomial.pow_comp,
        Polynomial.sub_comp, Polynomial.one_comp, Polynomial.X_comp] using
        bernsteinCone_mul (bernsteinCone_pow ht i) (bernsteinCone_pow hcomp j)
  | @add p q hp hq ihp ihq =>
      simpa only [Polynomial.add_comp] using BernsteinCone.add ihp ihq
  | @scale c hc p hp ih =>
      simpa only [Polynomial.mul_comp, Polynomial.C_comp] using BernsteinCone.scale c hc ih

noncomputable def qFactor (z : ℚ) : ℚ[X] := (1 - X) + Polynomial.C z * X
noncomputable def eFactor (z : ℚ) : ℚ[X] := 1 - Polynomial.C z * X

theorem cone_qFactor (z : ℚ) (hz : 0 ≤ z) : BernsteinCone (qFactor z) := by
  exact BernsteinCone.add cone_one_sub_X (BernsteinCone.scale z hz cone_X)

theorem cone_eFactor (z : ℚ) (hz : z ≤ 1) : BernsteinCone (eFactor z) := by
  have h : eFactor z = qFactor (1 - z) := by
    unfold eFactor qFactor
    rw [map_sub, map_one]
    ring
  rw [h]
  exact cone_qFactor (1 - z) (sub_nonneg.mpr hz)

noncomputable def qCore (c d : ℕ) (z : ℚ) : ℚ[X] :=
  X ^ (c - d) * (1 - X) ^ d * qFactor z ^ d
noncomputable def eCore (c d : ℕ) (z : ℚ) : ℚ[X] :=
  X ^ d * (1 - X) ^ d * eFactor z ^ (c - d)
noncomputable def qWeight (c d delta : ℕ) (z : ℚ) : ℚ[X] :=
  X ^ (c - d - 1 + delta) * (1 - X) ^ (d - delta) * qFactor z ^ (d - delta)
noncomputable def eWeight (c d delta : ℕ) (z : ℚ) : ℚ[X] :=
  X ^ (d - delta) * (1 - X) ^ (d - delta) * eFactor z ^ (c - d - 1 + delta)

theorem cone_qCore (c d : ℕ) (z : ℚ) (hz : 0 ≤ z) : BernsteinCone (qCore c d z) := by
  exact bernsteinCone_mul
    (bernsteinCone_mul (bernsteinCone_pow cone_X (c - d)) (bernsteinCone_pow cone_one_sub_X d))
    (bernsteinCone_pow (cone_qFactor z hz) d)

theorem cone_eCore (c d : ℕ) (z : ℚ) (hz : z ≤ 1) : BernsteinCone (eCore c d z) := by
  exact bernsteinCone_mul
    (bernsteinCone_mul (bernsteinCone_pow cone_X d) (bernsteinCone_pow cone_one_sub_X d))
    (bernsteinCone_pow (cone_eFactor z hz) (c - d))

theorem cone_qWeight (c d delta : ℕ) (z : ℚ) (hz : 0 ≤ z) :
    BernsteinCone (qWeight c d delta z) := by
  exact bernsteinCone_mul
    (bernsteinCone_mul (bernsteinCone_pow cone_X (c - d - 1 + delta))
      (bernsteinCone_pow cone_one_sub_X (d - delta)))
    (bernsteinCone_pow (cone_qFactor z hz) (d - delta))

theorem cone_eWeight (c d delta : ℕ) (z : ℚ) (hz : z ≤ 1) :
    BernsteinCone (eWeight c d delta z) := by
  exact bernsteinCone_mul
    (bernsteinCone_mul (bernsteinCone_pow cone_X (d - delta))
      (bernsteinCone_pow cone_one_sub_X (d - delta)))
    (bernsteinCone_pow (cone_eFactor z hz) (c - d - 1 + delta))

#print axioms Math.B699.GrowthLeaf.cone_comp_affine
#print axioms Math.B699.GrowthLeaf.cone_qCore
#print axioms Math.B699.GrowthLeaf.cone_eCore
#print axioms Math.B699.GrowthLeaf.cone_qWeight
#print axioms Math.B699.GrowthLeaf.cone_eWeight

end Math.B699.GrowthLeaf

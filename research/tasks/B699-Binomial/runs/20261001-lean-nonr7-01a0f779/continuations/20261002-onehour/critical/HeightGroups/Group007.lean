import research.tasks.«B699-Binomial».runs.«20261001-lean-nonr7-01a0f779».continuations.«20261002-onehour».critical.HeightGroups.Group006
import Mathlib.Algebra.Polynomial.Eval.Defs
import Mathlib.Data.Nat.Factorial.Basic
import Mathlib.Data.Rat.Cast.Order
import Mathlib.Tactic.FieldSimp
import Mathlib.Tactic.Linarith
import Mathlib.Tactic.NormNum
import Mathlib.Tactic.Positivity
import Mathlib.Tactic.Ring
set_option Elab.async false
/- Frozen member 28 research\tasks\B699-Binomial\runs\20260911-low-index-lean-513dc7cc\lean\Growth\Affine.lean 630dee1e6c6fc6cb3750192d2e2ca319b0d0d57cb1b6cf88ab7849bf3c378071 -/
section HeightMember028




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

end HeightMember028
/- Frozen member 29 research\tasks\B699-Binomial\runs\20260911-low-index-lean-513dc7cc\lean\Growth\Partition.lean 545ba579fdff23eec83f79a5c8e6fad991e8945c2de43db8c5d1343d65aed818 -/
section HeightMember029





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

end HeightMember029
/- Frozen member 30 research\tasks\B699-Binomial\runs\20260911-low-index-lean-513dc7cc\lean\Growth\ActualKernel.lean 82962fb0fffebcb9fe1fdf6054ad861300365106cb85c2a150962c227949622a -/
section HeightMember030




/-!
Connect actual Padé kernels to fixed positive weights times a core power.
The finite GrowthTree certificate remains an explicit input; all source
factorization and integer polynomial correspondence are proved here.
No full original index or unconditional seed bound is claimed by this bridge.
-/

namespace Math.B699.PadeActualGrowth

open Polynomial Math.B699.PadeMoment Math.B699.PadeMomentIdentity
open Math.B699.GrowthLeaf Math.B699.PadeGrowthPartition Math.B699.PadeConstruction

private theorem exponent_split (c d delta m : ℕ) (hcd : d < c)
    (hdelta : delta ≤ d) (hm : 1 ≤ m) :
    d * m - delta = (d - delta) + d * (m - 1) ∧
    (c - d) * m + delta - 1 = (c - d - 1 + delta) + (c - d) * (m - 1) := by
  have hm' : m = (m - 1) + 1 := by omega
  have hd : d * m = d * (m - 1) + d := by
    conv_lhs => rw [hm']
    ring
  have hc : (c - d) * m = (c - d) * (m - 1) + (c - d) := by
    conv_lhs => rw [hm']
    ring
  omega

theorem qKernel_eq_weight_core (c d delta m : ℕ) (z : ℚ)
    (hcd : d < c) (hdelta : delta ≤ d) (hm : 1 ≤ m) :
    qKernel (d * m - delta) ((c - d) * m + delta - 1) (d * m - delta) z =
      qWeight c d delta z * qCore c d z ^ (m - 1) := by
  obtain ⟨hd, hb⟩ := exponent_split c d delta m hcd hdelta hm
  simp only [qKernel, qWeight, qCore, qFactor, hd, hb, mul_pow, pow_add, pow_mul]
  ring

theorem eKernel_eq_weight_core (c d delta m : ℕ) (z : ℚ)
    (hcd : d < c) (hdelta : delta ≤ d) (hm : 1 ≤ m) :
    eKernel (d * m - delta) ((c - d) * m + delta - 1) (d * m - delta) z =
      eWeight c d delta z * eCore c d z ^ (m - 1) := by
  obtain ⟨hd, hb⟩ := exponent_split c d delta m hcd hdelta hm
  simp only [eKernel, eWeight, eCore, eFactor, hd, hb, mul_pow, pow_add, pow_mul]
  ring

theorem qKernel_abs_moment_bound (c d delta m : ℕ) (z lam : ℚ)
    (hcd : d < c) (hdelta : delta ≤ d) (hm : 1 ≤ m) (hlam : 0 ≤ lam)
    (tree : GrowthTree lam (qWeight c d delta z) (qCore c d z)) :
    |moment (qKernel (d * m - delta) ((c - d) * m + delta - 1) (d * m - delta) z)| ≤
      lam ^ (m - 1) * moment (qWeight c d delta z) := by
  rw [qKernel_eq_weight_core c d delta m z hcd hdelta hm]
  exact moment_abs_growth_of_tree lam hlam tree (m - 1)

theorem eKernel_abs_moment_bound (c d delta m : ℕ) (z lam : ℚ)
    (hcd : d < c) (hdelta : delta ≤ d) (hm : 1 ≤ m) (hlam : 0 ≤ lam)
    (tree : GrowthTree lam (eWeight c d delta z) (eCore c d z)) :
    |moment (eKernel (d * m - delta) ((c - d) * m + delta - 1) (d * m - delta) z)| ≤
      lam ^ (m - 1) * moment (eWeight c d delta z) := by
  rw [eKernel_eq_weight_core c d delta m z hcd hdelta hm]
  exact moment_abs_growth_of_tree lam hlam tree (m - 1)

theorem prefactor_pos (A B C : ℕ) : 0 < prefactor A B C := by
  unfold prefactor
  exact div_pos (Nat.cast_pos.mpr (Nat.factorial_pos _))
    (mul_pos (mul_pos (Nat.cast_pos.mpr (Nat.factorial_pos _))
      (Nat.cast_pos.mpr (Nat.factorial_pos _))) (Nat.cast_pos.mpr (Nat.factorial_pos _)))

theorem actual_q_eval_bound (c d delta m : ℕ) (z lam : ℚ)
    (hcd : d < c) (hdelta : delta ≤ d) (hm : 1 ≤ m) (hlam : 0 ≤ lam)
    (tree : GrowthTree lam (qWeight c d delta z) (qCore c d z)) :
    |(qPolynomial (d * m - delta) ((c - d) * m + delta - 1) (d * m - delta)).eval₂
        (Int.castRingHom ℚ) z| ≤
      prefactor (d * m - delta) ((c - d) * m + delta - 1) (d * m - delta) *
        (lam ^ (m - 1) * moment (qWeight c d delta z)) := by
  rw [← qSource_eq_actual_eval, qSource_eq_moment]
  simp only [qMoment, abs_mul, abs_pow, abs_neg, abs_one, one_pow, one_mul]
  rw [abs_of_pos (prefactor_pos _ _ _)]
  exact mul_le_mul_of_nonneg_left
    (qKernel_abs_moment_bound c d delta m z lam hcd hdelta hm hlam tree)
    (le_of_lt (prefactor_pos _ _ _))

theorem actual_e_eval_bound (c d delta m : ℕ) (z lam : ℚ)
    (hcd : d < c) (hdelta : delta ≤ d) (hm : 1 ≤ m) (hlam : 0 ≤ lam)
    (tree : GrowthTree lam (eWeight c d delta z) (eCore c d z)) :
    |(ePolynomial (d * m - delta) ((c - d) * m + delta - 1) (d * m - delta)).eval₂
        (Int.castRingHom ℚ) z| ≤
      prefactor (d * m - delta) ((c - d) * m + delta - 1) (d * m - delta) *
        (lam ^ (m - 1) * moment (eWeight c d delta z)) := by
  rw [← eSource_eq_actual_eval, eSource_eq_moment]
  simp only [eMoment, abs_mul]
  rw [abs_of_pos (prefactor_pos _ _ _)]
  exact mul_le_mul_of_nonneg_left
    (eKernel_abs_moment_bound c d delta m z lam hcd hdelta hm hlam tree)
    (le_of_lt (prefactor_pos _ _ _))

#print axioms Math.B699.PadeActualGrowth.qKernel_eq_weight_core
#print axioms Math.B699.PadeActualGrowth.eKernel_eq_weight_core
#print axioms Math.B699.PadeActualGrowth.qKernel_abs_moment_bound
#print axioms Math.B699.PadeActualGrowth.eKernel_abs_moment_bound
#print axioms Math.B699.PadeActualGrowth.prefactor_pos
#print axioms Math.B699.PadeActualGrowth.actual_q_eval_bound
#print axioms Math.B699.PadeActualGrowth.actual_e_eval_bound

end Math.B699.PadeActualGrowth

end HeightMember030
/- Frozen member 31 research\tasks\B699-Binomial\runs\20260911-low-index-lean-513dc7cc\lean\Factorial\FactorialCommon.lean 0995a9105c3c2d13ce2ffdcdcc7853c26886d585b8e9f0fc9d396ae0e1c73fd6 -/
section HeightMember031







/-!
# Elementary factorial bounds for three BFT parameter pairs

UNCOMPILED CANDIDATE. No Lean execution or axiom audit has occurred.
Source: BFT author manuscript 2007-02-26, equations (3.1)--(3.3), page 9,
with A=C=d*m-delta and B=(c-d)*m+delta-1 on page 10.
PDF SHA256: 0df18ee8d108f658812ac05d1f8947b3dcc28b70d17f268acd7c871e7e7c392c.

This candidate concerns only the factorial prefactor. It does not prove
an integral representation, a maximizer bound, G/theta estimates, BFT
Lemma 4.1 with its printed constants, or a B699 original-problem theorem.

The target is intentionally represented in Q. Every factorial is a natural
factorial, cast before division; there is no natural-number quotient. All
final source-aligned statements require m >= 1 and delta in {0,1}.
The formula is total at other inputs only because Nat subtraction is total;
no source claim is made at those inputs. The pure factorial base at m=1
does not assert that the source's positive A,B,C convention covers that
Pade endpoint.
-/

namespace Math.B699.ElementaryFactorialBound

/-- The exact factorial prefactor after the BFT substitutions. -/
def factorialTerm (c d delta m : ℕ) : ℚ :=
  ((((c + d) * m - delta).factorial : ℕ) : ℚ) /
    (((((d * m - delta).factorial : ℕ) : ℚ) ^ 2) *
      ((((c - d) * m + delta - 1).factorial : ℕ) : ℚ))

/-- The rational growth base; the real identity with alpha(c/d)^d remains
an explicit analytic-notation bridge outside this candidate. -/
def beta (c d : ℕ) : ℚ :=
  (((c + d : ℕ) : ℚ) ^ (c + d)) /
    ((d : ℚ) ^ (2 * d) * ((c - d : ℕ) : ℚ) ^ (c - d))

theorem factorialTerm_pos (c d delta m : ℕ) :
    0 < factorialTerm c d delta m := by
  unfold factorialTerm
  positivity

/-- A casted exact factorial recurrence, with no integer division. -/
theorem factorial_add_cast (n k : ℕ) :
    (((n + k).factorial : ℕ) : ℚ) =
      ((n.factorial : ℕ) : ℚ) * (((n + 1).ascFactorial k : ℕ) : ℚ) := by
  rw [← Nat.factorial_mul_ascFactorial, Nat.cast_mul]

theorem factorial_cast_mul_pred (n : ℕ) (hn : 0 < n) :
    ((n.factorial : ℕ) : ℚ) = (n : ℚ) * (((n - 1).factorial : ℕ) : ℚ) := by
  have hpred : n - 1 + 1 = n := Nat.sub_add_cancel (by omega)
  have hnat : n.factorial = n * (n - 1).factorial := by
    calc
      n.factorial = (n - 1 + 1).factorial := congrArg Nat.factorial hpred.symm
      _ = n * (n - 1).factorial := by rw [Nat.factorial_succ, hpred]
  rw [hnat, Nat.cast_mul]

/-- The exact delta ratio. This proves the suggested constant instead of
assuming it. The denominator is (c+d)*(c-d)=c^2-d^2. -/
theorem factorial_delta_one_eq (c d m : ℕ)
    (hc : d < c) (hd : 0 < d) (hm : 0 < m) :
    factorialTerm c d 1 m =
      ((d : ℚ) ^ 2 / (((c + d : ℕ) : ℚ) * ((c - d : ℕ) : ℚ))) *
        factorialTerm c d 0 m := by
  have hcp : 0 < c + d := by omega
  have hcm : 0 < c - d := Nat.sub_pos_of_lt hc
  have ha : 0 < (c + d) * m := Nat.mul_pos hcp hm
  have hdm : 0 < d * m := Nat.mul_pos hd hm
  have hb : 0 < (c - d) * m := Nat.mul_pos hcm hm
  simp only [factorialTerm, Nat.add_zero, Nat.sub_zero, Nat.add_sub_cancel]
  rw [factorial_cast_mul_pred ((c + d) * m) ha,
    factorial_cast_mul_pred (d * m) hdm,
    factorial_cast_mul_pred ((c - d) * m) hb]
  simp only [Nat.cast_mul]
  field_simp
  <;> ring

/-- Common consumer of the finite positive-coefficient certificates. All
factors that are cancelled have explicit positivity hypotheses. -/
theorem ratio_le_of_certificate
    {a b d bn bd U W m : ℚ}
    (hb : 0 < b) (hd : 0 < d) (hbd : 0 < bd)
    (hm : 0 < m) (hW : 0 < W)
    (hcert : a * bd * (m + 2) * U ≤
      bn * b * d ^ 2 * (m + 1) ^ 3 * W) :
    a * U / (b * d ^ 2 * m * (m + 1) * W) ≤
      (bn / bd) * (m + 1) ^ 2 / (m * (m + 2)) := by
  apply sub_nonneg.mp
  have hid :
      (bn / bd) * (m + 1) ^ 2 / (m * (m + 2)) -
        a * U / (b * d ^ 2 * m * (m + 1) * W) =
      (bn * b * d ^ 2 * (m + 1) ^ 3 * W - a * bd * (m + 2) * U) /
        (bd * b * d ^ 2 * m * (m + 1) * (m + 2) * W) := by
    field_simp
    <;> ring
  rw [hid]
  exact div_nonneg (sub_nonneg.mpr hcert) (by positivity)

/-- The telescoping induction, used below with actual factorial sequences.
This generic lemma is not the final factorial theorem on its own. -/
theorem telescoping_bound_from_step
    {F : ℕ → ℚ} {B : ℚ} (hB : 0 < B)
    (hstep : ∀ m : ℕ, 1 ≤ m →
      F (m + 1) ≤ F m * (B * ((m : ℚ) + 1) ^ 2 / ((m : ℚ) * (m + 2))))
    {m : ℕ} (hm : 1 ≤ m) :
    F m ≤ (2 * F 1 / B) * B ^ m * (m : ℚ) / ((m : ℚ) + 1) := by
  induction m, hm using Nat.le_induction with
  | base =>
      apply le_of_eq
      simp only [pow_one, Nat.cast_one]
      field_simp
      <;> ring
  | succ m hm ih =>
      have hmQ : 0 < (m : ℚ) := Nat.cast_pos.mpr (by omega)
      calc
        F (m + 1) ≤
            F m * (B * ((m : ℚ) + 1) ^ 2 / ((m : ℚ) * (m + 2))) :=
          hstep m hm
        _ ≤ ((2 * F 1 / B) * B ^ m * (m : ℚ) / ((m : ℚ) + 1)) *
            (B * ((m : ℚ) + 1) ^ 2 / ((m : ℚ) * (m + 2))) :=
          mul_le_mul_of_nonneg_right ih (by positivity)
        _ = (2 * F 1 / B) * B ^ (m + 1) * ((m + 1 : ℕ) : ℚ) /
            (((m + 1 : ℕ) : ℚ) + 1) := by
          rw [pow_succ]
          simp only [Nat.cast_add, Nat.cast_one]
          field_simp
          <;> ring

theorem strict_bound_from_step
    {F : ℕ → ℚ} {B : ℚ} (hB : 0 < B) (hF : 0 < F 1)
    (hstep : ∀ m : ℕ, 1 ≤ m →
      F (m + 1) ≤ F m * (B * ((m : ℚ) + 1) ^ 2 / ((m : ℚ) * (m + 2))))
    {m : ℕ} (hm : 1 ≤ m) :
    F m < (2 * F 1 / B) * B ^ m := by
  have hmQ : 0 < (m : ℚ) := Nat.cast_pos.mpr (by omega)
  have hpos : 0 < (2 * F 1 / B) * B ^ m := by positivity
  calc
    F m ≤ (2 * F 1 / B) * B ^ m * (m : ℚ) / ((m : ℚ) + 1) :=
      telescoping_bound_from_step hB hstep hm
    _ < (2 * F 1 / B) * B ^ m := by
      apply (div_lt_iff₀ (show 0 < (m : ℚ) + 1 by positivity)).2
      nlinarith

#print axioms Math.B699.ElementaryFactorialBound.factorialTerm_pos
#print axioms Math.B699.ElementaryFactorialBound.factorial_add_cast
#print axioms Math.B699.ElementaryFactorialBound.factorial_cast_mul_pred
#print axioms Math.B699.ElementaryFactorialBound.factorial_delta_one_eq
#print axioms Math.B699.ElementaryFactorialBound.ratio_le_of_certificate
#print axioms Math.B699.ElementaryFactorialBound.telescoping_bound_from_step
#print axioms Math.B699.ElementaryFactorialBound.strict_bound_from_step

end Math.B699.ElementaryFactorialBound

end HeightMember031

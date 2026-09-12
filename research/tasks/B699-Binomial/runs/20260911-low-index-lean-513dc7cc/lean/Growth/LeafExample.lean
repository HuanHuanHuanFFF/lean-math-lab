import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Growth.Affine
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Growth.Partition
import Mathlib.Algebra.Polynomial.Roots
import Mathlib.Tactic.NormNum
import Mathlib.Tactic.Ring

/-!
UNCOMPILED CANDIDATE. One actual compact-certificate leaf; two actual delta weights.
Source row 0, Q core, leaf 0, path 000.
Certificate SHA256 3bb7821e13b55137af6b1529143d85f77593df156f51b1c57343cb78653b8d09.
The gap identity is proved for the actual source polynomial, not assumed from JSON.
Polynomial.funext below requires equality at every rational x; no finite sampling inference.
-/

namespace Math.B699.GrowthLeaf.Row00QLeaf000

open Polynomial Math.B699.PadeMoment Math.B699.PadeGrowthPartition Math.B699.GrowthLeaf

-- Same Nat-embedding proof as fixed mathlib CharZero.Infinite; keep it local.
local instance : Infinite ℚ :=
  Infinite.of_injective (fun n : ℕ => (n : ℚ)) Nat.cast_injective

def seedC : ℕ := 3
def seedD : ℕ := 2
def seedZ : ℚ := (5 : ℚ) / 512
def leafA : ℚ := (0 : ℚ)
def leafB : ℚ := (1 : ℚ) / 8
def lam : ℚ := (6522198863402714783048734994 : ℚ) / (2 : ℚ) ^ 96

theorem seed_parameter_bounds : 0 < seedD ∧ seedD < seedC ∧
    0 < seedZ ∧ seedZ < (seedD : ℚ) / (seedC : ℚ) := by
  norm_num [seedC, seedD, seedZ]

theorem leaf_interval_bounds : 0 ≤ leafA ∧ leafA < leafB ∧ leafB ≤ 1 := by
  norm_num [leafA, leafB]

theorem lam_pos : 0 < lam := by norm_num [lam]

noncomputable def seedCore : ℚ[X] := qCore seedC seedD seedZ
noncomputable def seedWeight0 : ℚ[X] := qWeight seedC seedD 0 seedZ
noncomputable def seedWeight1 : ℚ[X] := qWeight seedC seedD 1 seedZ
noncomputable def leafMap : ℚ[X] := affine leafA leafB
noncomputable def localCore : ℚ[X] := seedCore.comp leafMap
noncomputable def localWeight0 : ℚ[X] := seedWeight0.comp leafMap
noncomputable def localWeight1 : ℚ[X] := seedWeight1.comp leafMap

def gapCoeff0 : ℚ := (3261099431701357391524367497 : ℚ) / 39614081257132168796771975168
def gapCoeff1 : ℚ := (11353737001365265858025340589 : ℚ) / 39614081257132168796771975168
def gapCoeff2 : ℚ := (7633872254411051887454437037 : ℚ) / 19807040628566084398385987584
def gapCoeff3 : ℚ := (4916052206841098932157791917 : ℚ) / 19807040628566084398385987584
def gapCoeff4 : ℚ := (3008546934776492025504186029 : ℚ) / 39614081257132168796771975168
def gapCoeff5 : ℚ := (350364030973138727963167881 : ℚ) / 39614081257132168796771975168

noncomputable def gapExpansion : ℚ[X] :=
  Polynomial.C gapCoeff0 * bernsteinMonomial 0 5 +
  Polynomial.C gapCoeff1 * bernsteinMonomial 1 4 +
  Polynomial.C gapCoeff2 * bernsteinMonomial 2 3 +
  Polynomial.C gapCoeff3 * bernsteinMonomial 3 2 +
  Polynomial.C gapCoeff4 * bernsteinMonomial 4 1 +
  Polynomial.C gapCoeff5 * bernsteinMonomial 5 0

/-- Actual polynomial identity, proved by rational ring arithmetic at all x. -/
theorem actual_gap_eq : Polynomial.C lam - localCore = gapExpansion := by
  apply Polynomial.funext
  intro x
  norm_num [lam, localCore, seedCore, qCore, qFactor, seedC, seedD, seedZ, leafMap, affine, leafA, leafB, gapExpansion, gapCoeff0, gapCoeff1, gapCoeff2, gapCoeff3, gapCoeff4, gapCoeff5, bernsteinMonomial,
    Polynomial.eval_comp, Polynomial.eval_add, Polynomial.eval_sub, Polynomial.eval_mul,
    Polynomial.eval_pow, Polynomial.eval_C, Polynomial.eval_X] <;> ring

/-- Bind the supplied interval to its actual path in the dyadic tree. -/
theorem leafMap_eq_path : leafMap = ((halfLeft).comp halfLeft).comp halfLeft := by
  apply Polynomial.funext
  intro x
  norm_num [leafMap, affine, leafA, leafB, halfLeft, halfRight,
    Polynomial.eval_comp, Polynomial.eval_add, Polynomial.eval_sub, Polynomial.eval_mul,
    Polynomial.eval_C, Polynomial.eval_X] <;> ring

theorem gapExpansion_cone : BernsteinCone gapExpansion := by
  have h0 : BernsteinCone (Polynomial.C gapCoeff0 * bernsteinMonomial 0 5) :=
    BernsteinCone.scale gapCoeff0 (by norm_num [gapCoeff0]) (BernsteinCone.basis 0 5)
  have h1 : BernsteinCone (Polynomial.C gapCoeff1 * bernsteinMonomial 1 4) :=
    BernsteinCone.scale gapCoeff1 (by norm_num [gapCoeff1]) (BernsteinCone.basis 1 4)
  have h2 : BernsteinCone (Polynomial.C gapCoeff2 * bernsteinMonomial 2 3) :=
    BernsteinCone.scale gapCoeff2 (by norm_num [gapCoeff2]) (BernsteinCone.basis 2 3)
  have h3 : BernsteinCone (Polynomial.C gapCoeff3 * bernsteinMonomial 3 2) :=
    BernsteinCone.scale gapCoeff3 (by norm_num [gapCoeff3]) (BernsteinCone.basis 3 2)
  have h4 : BernsteinCone (Polynomial.C gapCoeff4 * bernsteinMonomial 4 1) :=
    BernsteinCone.scale gapCoeff4 (by norm_num [gapCoeff4]) (BernsteinCone.basis 4 1)
  have h5 : BernsteinCone (Polynomial.C gapCoeff5 * bernsteinMonomial 5 0) :=
    BernsteinCone.scale gapCoeff5 (by norm_num [gapCoeff5]) (BernsteinCone.basis 5 0)
  exact (BernsteinCone.add (BernsteinCone.add (BernsteinCone.add (BernsteinCone.add (BernsteinCone.add h0 h1) h2) h3) h4) h5)

theorem local_gap_cone : BernsteinCone (Polynomial.C lam - localCore) := by
  rw [actual_gap_eq]
  exact gapExpansion_cone

theorem local_core_cone : BernsteinCone localCore := by
  exact cone_comp_affine (cone_qCore seedC seedD seedZ (by norm_num [seedZ]))
    leafA leafB (by norm_num [leafA]) (by norm_num [leafA, leafB]) (by norm_num [leafB])

theorem local_weight0_cone : BernsteinCone localWeight0 := by
  exact cone_comp_affine (cone_qWeight seedC seedD 0 seedZ (by norm_num [seedZ]))
    leafA leafB (by norm_num [leafA]) (by norm_num [leafA, leafB]) (by norm_num [leafB])

theorem leaf_delta0 : GrowthTree lam localWeight0 localCore := by
  exact GrowthTree.leaf (lam := lam) (w := localWeight0) (f := localCore)
    local_weight0_cone local_core_cone local_gap_cone

theorem local_weight1_cone : BernsteinCone localWeight1 := by
  exact cone_comp_affine (cone_qWeight seedC seedD 1 seedZ (by norm_num [seedZ]))
    leafA leafB (by norm_num [leafA]) (by norm_num [leafA, leafB]) (by norm_num [leafB])

theorem leaf_delta1 : GrowthTree lam localWeight1 localCore := by
  exact GrowthTree.leaf (lam := lam) (w := localWeight1) (f := localCore)
    local_weight1_cone local_core_cone local_gap_cone

#print axioms Math.B699.GrowthLeaf.Row00QLeaf000.actual_gap_eq
#print axioms Math.B699.GrowthLeaf.Row00QLeaf000.leafMap_eq_path
#print axioms Math.B699.GrowthLeaf.Row00QLeaf000.local_core_cone
#print axioms Math.B699.GrowthLeaf.Row00QLeaf000.local_weight0_cone
#print axioms Math.B699.GrowthLeaf.Row00QLeaf000.local_weight1_cone
#print axioms Math.B699.GrowthLeaf.Row00QLeaf000.local_gap_cone
#print axioms Math.B699.GrowthLeaf.Row00QLeaf000.leaf_delta0
#print axioms Math.B699.GrowthLeaf.Row00QLeaf000.leaf_delta1

end Math.B699.GrowthLeaf.Row00QLeaf000

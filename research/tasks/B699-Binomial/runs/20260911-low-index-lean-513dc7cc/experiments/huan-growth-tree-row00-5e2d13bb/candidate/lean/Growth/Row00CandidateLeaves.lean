import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Growth.Affine
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Growth.Partition
import Mathlib.Algebra.Polynomial.Roots
import Mathlib.Tactic.NormNum
import Mathlib.Tactic.Ring

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace Math.B699.GrowthTreeRow00Candidate.QLeaf000


open Polynomial Math.B699.PadeMoment Math.B699.PadeGrowthPartition Math.B699.GrowthLeaf
open Math.B699.GrowthTreeRow00Candidate.Shared

local instance : Infinite ℚ :=
  Infinite.of_injective (fun n : ℕ => (n : ℚ)) Nat.cast_injective

def seedC : ℕ := 3
def seedD : ℕ := 2
def seedZ : ℚ := (5 : ℚ) / 512
def leafA : ℚ := (0 : ℚ)
def leafB : ℚ := (1 : ℚ) / 8
def lam : ℚ := (3261099431701357391524367497 : ℚ) / 39614081257132168796771975168

noncomputable def seedCore : ℚ[X] := qSeedCore
noncomputable def seedWeight0 : ℚ[X] := qSeedWeight0
noncomputable def seedWeight1 : ℚ[X] := qSeedWeight1
noncomputable def leafMap : ℚ[X] := affine leafA leafB
noncomputable def localCore : ℚ[X] := seedCore.comp leafMap
noncomputable def localWeight0 : ℚ[X] := seedWeight0.comp leafMap
noncomputable def localWeight1 : ℚ[X] := seedWeight1.comp leafMap

def gapCoeff0 : ℚ := (0 : ℚ) / 42949672960
def gapCoeff1 : ℚ := (1073741824 : ℚ) / 42949672960
def gapCoeff2 : ℚ := (1880358912 : ℚ) / 42949672960
def gapCoeff3 : ℚ := (2469692192 : ℚ) / 42949672960
def gapCoeff4 : ℚ := (2883316464 : ℚ) / 42949672960
def gapCoeff5 : ℚ := (3155825645 : ℚ) / 42949672960

noncomputable def gapExpansion : ℚ[X] :=
  Polynomial.C gapCoeff0 * bernsteinMonomial 0 5 +
  Polynomial.C gapCoeff1 * bernsteinMonomial 1 4 +
  Polynomial.C gapCoeff2 * bernsteinMonomial 2 3 +
  Polynomial.C gapCoeff3 * bernsteinMonomial 3 2 +
  Polynomial.C gapCoeff4 * bernsteinMonomial 4 1 +
  Polynomial.C gapCoeff5 * bernsteinMonomial 5 0

theorem seed_parameter_bounds : 0 < seedD ∧ seedD < seedC ∧
    0 < seedZ ∧ seedZ < (seedD : ℚ) / (seedC : ℚ) := by
  norm_num [seedC, seedD, seedZ]

theorem leaf_interval_bounds : 0 ≤ leafA ∧ leafA < leafB ∧ leafB ≤ 1 := by
  norm_num [leafA, leafB]

theorem lam_pos : 0 < lam := by
  norm_num [lam]

theorem actual_gap_eq : Polynomial.C lam - localCore = gapExpansion := by
  apply Polynomial.funext
  intro x
  norm_num [lam, localCore, seedCore, qSeedCore, qSeedC, qSeedD, qSeedZ,
    Math.B699.GrowthLeaf.qCore, Math.B699.GrowthLeaf.qFactor, seedC, seedD, seedZ,
    leafMap, affine, leafA, leafB, gapExpansion,
    gapCoeff0, gapCoeff1, gapCoeff2, gapCoeff3, gapCoeff4, gapCoeff5,
    bernsteinMonomial, Polynomial.eval_comp, Polynomial.eval_add, Polynomial.eval_sub,
    Polynomial.eval_mul, Polynomial.eval_pow, Polynomial.eval_C, Polynomial.eval_X] <;> ring

theorem leafMap_eq_path : leafMap = ((halfLeft).comp halfLeft).comp halfLeft := by
  apply Polynomial.funext
  intro x
  norm_num [leafMap, affine, leafA, leafB, halfLeft, halfRight,
    Polynomial.eval_comp, Polynomial.eval_add, Polynomial.eval_sub,
    Polynomial.eval_mul, Polynomial.eval_C, Polynomial.eval_X] <;> ring


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
  exact BernsteinCone.add (BernsteinCone.add (BernsteinCone.add (BernsteinCone.add (BernsteinCone.add (h0) h1) h2) h3) h4) h5

theorem local_gap_cone : BernsteinCone (Polynomial.C lam - localCore) := by
  rw [actual_gap_eq]
  exact gapExpansion_cone

theorem local_core_cone : BernsteinCone localCore := by
  exact cone_comp_affine (cone_qCore seedC seedD seedZ (by norm_num [seedZ]))
    leafA leafB (by norm_num [leafA]) (by norm_num [leafA, leafB]) (by norm_num [leafB])

theorem local_weight0_cone : BernsteinCone localWeight0 := by
  exact cone_comp_affine (cone_qWeight seedC seedD 0 seedZ (by norm_num [seedZ]))
    leafA leafB (by norm_num [leafA]) (by norm_num [leafA, leafB]) (by norm_num [leafB])

theorem local_weight1_cone : BernsteinCone localWeight1 := by
  exact cone_comp_affine (cone_qWeight seedC seedD 1 seedZ (by norm_num [seedZ]))
    leafA leafB (by norm_num [leafA]) (by norm_num [leafA, leafB]) (by norm_num [leafB])

theorem leaf_delta0 : GrowthTree lam localWeight0 localCore := by
  exact GrowthTree.leaf (lam := lam) (w := localWeight0) (f := localCore)
    local_weight0_cone local_core_cone local_gap_cone

theorem leaf_delta1 : GrowthTree lam localWeight1 localCore := by
  exact GrowthTree.leaf (lam := lam) (w := localWeight1) (f := localCore)
    local_weight1_cone local_core_cone local_gap_cone

end Math.B699.GrowthTreeRow00Candidate.QLeaf000

#print axioms Math.B699.GrowthTreeRow00Candidate.QLeaf000.actual_gap_eq
#print axioms Math.B699.GrowthTreeRow00Candidate.QLeaf000.leafMap_eq_path
#print axioms Math.B699.GrowthTreeRow00Candidate.QLeaf000.gapExpansion_cone
#print axioms Math.B699.GrowthTreeRow00Candidate.QLeaf000.local_gap_cone
#print axioms Math.B699.GrowthTreeRow00Candidate.QLeaf000.local_core_cone
#print axioms Math.B699.GrowthTreeRow00Candidate.QLeaf000.local_weight0_cone
#print axioms Math.B699.GrowthTreeRow00Candidate.QLeaf000.local_weight1_cone
#print axioms Math.B699.GrowthTreeRow00Candidate.QLeaf000.leaf_delta0
#print axioms Math.B699.GrowthTreeRow00Candidate.QLeaf000.leaf_delta1
namespace Math.B699.GrowthTreeRow00Candidate.QLeaf001


open Polynomial Math.B699.PadeMoment Math.B699.PadeGrowthPartition Math.B699.GrowthLeaf
open Math.B699.GrowthTreeRow00Candidate.Shared

local instance : Infinite ℚ :=
  Infinite.of_injective (fun n : ℕ => (n : ℚ)) Nat.cast_injective

def seedC : ℕ := 3
def seedD : ℕ := 2
def seedZ : ℚ := (5 : ℚ) / 512
def leafA : ℚ := (1 : ℚ) / 8
def leafB : ℚ := (3 : ℚ) / 16
def lam : ℚ := (3261099431701357391524367497 : ℚ) / 39614081257132168796771975168

noncomputable def seedCore : ℚ[X] := qSeedCore
noncomputable def seedWeight0 : ℚ[X] := qSeedWeight0
noncomputable def seedWeight1 : ℚ[X] := qSeedWeight1
noncomputable def leafMap : ℚ[X] := affine leafA leafB
noncomputable def localCore : ℚ[X] := seedCore.comp leafMap
noncomputable def localWeight0 : ℚ[X] := seedWeight0.comp leafMap
noncomputable def localWeight1 : ℚ[X] := seedWeight1.comp leafMap

def gapCoeff0 : ℚ := (100986420640 : ℚ) / 1374389534720
def gapCoeff1 : ℚ := (105346567536 : ℚ) / 1374389534720
def gapCoeff2 : ℚ := (108577793704 : ℚ) / 1374389534720
def gapCoeff3 : ℚ := (110818474812 : ℚ) / 1374389534720
def gapCoeff4 : ℚ := (112193024762 : ℚ) / 1374389534720
def gapCoeff5 : ℚ := (112813180935 : ℚ) / 1374389534720

noncomputable def gapExpansion : ℚ[X] :=
  Polynomial.C gapCoeff0 * bernsteinMonomial 0 5 +
  Polynomial.C gapCoeff1 * bernsteinMonomial 1 4 +
  Polynomial.C gapCoeff2 * bernsteinMonomial 2 3 +
  Polynomial.C gapCoeff3 * bernsteinMonomial 3 2 +
  Polynomial.C gapCoeff4 * bernsteinMonomial 4 1 +
  Polynomial.C gapCoeff5 * bernsteinMonomial 5 0

theorem seed_parameter_bounds : 0 < seedD ∧ seedD < seedC ∧
    0 < seedZ ∧ seedZ < (seedD : ℚ) / (seedC : ℚ) := by
  norm_num [seedC, seedD, seedZ]

theorem leaf_interval_bounds : 0 ≤ leafA ∧ leafA < leafB ∧ leafB ≤ 1 := by
  norm_num [leafA, leafB]

theorem lam_pos : 0 < lam := by
  norm_num [lam]

theorem actual_gap_eq : Polynomial.C lam - localCore = gapExpansion := by
  apply Polynomial.funext
  intro x
  norm_num [lam, localCore, seedCore, qSeedCore, qSeedC, qSeedD, qSeedZ,
    Math.B699.GrowthLeaf.qCore, Math.B699.GrowthLeaf.qFactor, seedC, seedD, seedZ,
    leafMap, affine, leafA, leafB, gapExpansion,
    gapCoeff0, gapCoeff1, gapCoeff2, gapCoeff3, gapCoeff4, gapCoeff5,
    bernsteinMonomial, Polynomial.eval_comp, Polynomial.eval_add, Polynomial.eval_sub,
    Polynomial.eval_mul, Polynomial.eval_pow, Polynomial.eval_C, Polynomial.eval_X] <;> ring

theorem leafMap_eq_path : leafMap = (((halfLeft).comp halfLeft).comp halfRight).comp halfLeft := by
  apply Polynomial.funext
  intro x
  norm_num [leafMap, affine, leafA, leafB, halfLeft, halfRight,
    Polynomial.eval_comp, Polynomial.eval_add, Polynomial.eval_sub,
    Polynomial.eval_mul, Polynomial.eval_C, Polynomial.eval_X] <;> ring


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
  exact BernsteinCone.add (BernsteinCone.add (BernsteinCone.add (BernsteinCone.add (BernsteinCone.add (h0) h1) h2) h3) h4) h5

theorem local_gap_cone : BernsteinCone (Polynomial.C lam - localCore) := by
  rw [actual_gap_eq]
  exact gapExpansion_cone

theorem local_core_cone : BernsteinCone localCore := by
  exact cone_comp_affine (cone_qCore seedC seedD seedZ (by norm_num [seedZ]))
    leafA leafB (by norm_num [leafA]) (by norm_num [leafA, leafB]) (by norm_num [leafB])

theorem local_weight0_cone : BernsteinCone localWeight0 := by
  exact cone_comp_affine (cone_qWeight seedC seedD 0 seedZ (by norm_num [seedZ]))
    leafA leafB (by norm_num [leafA]) (by norm_num [leafA, leafB]) (by norm_num [leafB])

theorem local_weight1_cone : BernsteinCone localWeight1 := by
  exact cone_comp_affine (cone_qWeight seedC seedD 1 seedZ (by norm_num [seedZ]))
    leafA leafB (by norm_num [leafA]) (by norm_num [leafA, leafB]) (by norm_num [leafB])

theorem leaf_delta0 : GrowthTree lam localWeight0 localCore := by
  exact GrowthTree.leaf (lam := lam) (w := localWeight0) (f := localCore)
    local_weight0_cone local_core_cone local_gap_cone

theorem leaf_delta1 : GrowthTree lam localWeight1 localCore := by
  exact GrowthTree.leaf (lam := lam) (w := localWeight1) (f := localCore)
    local_weight1_cone local_core_cone local_gap_cone

end Math.B699.GrowthTreeRow00Candidate.QLeaf001

#print axioms Math.B699.GrowthTreeRow00Candidate.QLeaf001.actual_gap_eq
#print axioms Math.B699.GrowthTreeRow00Candidate.QLeaf001.leafMap_eq_path
#print axioms Math.B699.GrowthTreeRow00Candidate.QLeaf001.gapExpansion_cone
#print axioms Math.B699.GrowthTreeRow00Candidate.QLeaf001.local_gap_cone
#print axioms Math.B699.GrowthTreeRow00Candidate.QLeaf001.local_core_cone
#print axioms Math.B699.GrowthTreeRow00Candidate.QLeaf001.local_weight0_cone
#print axioms Math.B699.GrowthTreeRow00Candidate.QLeaf001.local_weight1_cone
#print axioms Math.B699.GrowthTreeRow00Candidate.QLeaf001.leaf_delta0
#print axioms Math.B699.GrowthTreeRow00Candidate.QLeaf001.leaf_delta1
namespace Math.B699.GrowthTreeRow00Candidate.QLeaf002


open Polynomial Math.B699.PadeMoment Math.B699.PadeGrowthPartition Math.B699.GrowthLeaf
open Math.B699.GrowthTreeRow00Candidate.Shared

local instance : Infinite ℚ :=
  Infinite.of_injective (fun n : ℕ => (n : ℚ)) Nat.cast_injective

def seedC : ℕ := 3
def seedD : ℕ := 2
def seedZ : ℚ := (5 : ℚ) / 512
def leafA : ℚ := (3 : ℚ) / 16
def leafB : ℚ := (25 : ℚ) / 128
def lam : ℚ := (3261099431701357391524367497 : ℚ) / 39614081257132168796771975168

noncomputable def seedCore : ℚ[X] := qSeedCore
noncomputable def seedWeight0 : ℚ[X] := qSeedWeight0
noncomputable def seedWeight1 : ℚ[X] := qSeedWeight1
noncomputable def leafMap : ℚ[X] := affine leafA leafB
noncomputable def localCore : ℚ[X] := seedCore.comp leafMap
noncomputable def localWeight0 : ℚ[X] := seedWeight0.comp leafMap
noncomputable def localWeight1 : ℚ[X] := seedWeight1.comp leafMap

def gapCoeff0 : ℚ := (3696662312878080 : ℚ) / 45035996273704960
def gapCoeff1 : ℚ := (3699202472562688 : ℚ) / 45035996273704960
def gapCoeff2 : ℚ := (3701356382633472 : ℚ) / 45035996273704960
def gapCoeff3 : ℚ := (3703131194282816 : ℚ) / 45035996273704960
def gapCoeff4 : ℚ := (3704533957290936 : ℚ) / 45035996273704960
def gapCoeff5 : ℚ := (3705571621311125 : ℚ) / 45035996273704960

noncomputable def gapExpansion : ℚ[X] :=
  Polynomial.C gapCoeff0 * bernsteinMonomial 0 5 +
  Polynomial.C gapCoeff1 * bernsteinMonomial 1 4 +
  Polynomial.C gapCoeff2 * bernsteinMonomial 2 3 +
  Polynomial.C gapCoeff3 * bernsteinMonomial 3 2 +
  Polynomial.C gapCoeff4 * bernsteinMonomial 4 1 +
  Polynomial.C gapCoeff5 * bernsteinMonomial 5 0

theorem seed_parameter_bounds : 0 < seedD ∧ seedD < seedC ∧
    0 < seedZ ∧ seedZ < (seedD : ℚ) / (seedC : ℚ) := by
  norm_num [seedC, seedD, seedZ]

theorem leaf_interval_bounds : 0 ≤ leafA ∧ leafA < leafB ∧ leafB ≤ 1 := by
  norm_num [leafA, leafB]

theorem lam_pos : 0 < lam := by
  norm_num [lam]

theorem actual_gap_eq : Polynomial.C lam - localCore = gapExpansion := by
  apply Polynomial.funext
  intro x
  norm_num [lam, localCore, seedCore, qSeedCore, qSeedC, qSeedD, qSeedZ,
    Math.B699.GrowthLeaf.qCore, Math.B699.GrowthLeaf.qFactor, seedC, seedD, seedZ,
    leafMap, affine, leafA, leafB, gapExpansion,
    gapCoeff0, gapCoeff1, gapCoeff2, gapCoeff3, gapCoeff4, gapCoeff5,
    bernsteinMonomial, Polynomial.eval_comp, Polynomial.eval_add, Polynomial.eval_sub,
    Polynomial.eval_mul, Polynomial.eval_pow, Polynomial.eval_C, Polynomial.eval_X] <;> ring

theorem leafMap_eq_path : leafMap = ((((((halfLeft).comp halfLeft).comp halfRight).comp halfRight).comp halfLeft).comp halfLeft).comp halfLeft := by
  apply Polynomial.funext
  intro x
  norm_num [leafMap, affine, leafA, leafB, halfLeft, halfRight,
    Polynomial.eval_comp, Polynomial.eval_add, Polynomial.eval_sub,
    Polynomial.eval_mul, Polynomial.eval_C, Polynomial.eval_X] <;> ring


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
  exact BernsteinCone.add (BernsteinCone.add (BernsteinCone.add (BernsteinCone.add (BernsteinCone.add (h0) h1) h2) h3) h4) h5

theorem local_gap_cone : BernsteinCone (Polynomial.C lam - localCore) := by
  rw [actual_gap_eq]
  exact gapExpansion_cone

theorem local_core_cone : BernsteinCone localCore := by
  exact cone_comp_affine (cone_qCore seedC seedD seedZ (by norm_num [seedZ]))
    leafA leafB (by norm_num [leafA]) (by norm_num [leafA, leafB]) (by norm_num [leafB])

theorem local_weight0_cone : BernsteinCone localWeight0 := by
  exact cone_comp_affine (cone_qWeight seedC seedD 0 seedZ (by norm_num [seedZ]))
    leafA leafB (by norm_num [leafA]) (by norm_num [leafA, leafB]) (by norm_num [leafB])

theorem local_weight1_cone : BernsteinCone localWeight1 := by
  exact cone_comp_affine (cone_qWeight seedC seedD 1 seedZ (by norm_num [seedZ]))
    leafA leafB (by norm_num [leafA]) (by norm_num [leafA, leafB]) (by norm_num [leafB])

theorem leaf_delta0 : GrowthTree lam localWeight0 localCore := by
  exact GrowthTree.leaf (lam := lam) (w := localWeight0) (f := localCore)
    local_weight0_cone local_core_cone local_gap_cone

theorem leaf_delta1 : GrowthTree lam localWeight1 localCore := by
  exact GrowthTree.leaf (lam := lam) (w := localWeight1) (f := localCore)
    local_weight1_cone local_core_cone local_gap_cone

end Math.B699.GrowthTreeRow00Candidate.QLeaf002

#print axioms Math.B699.GrowthTreeRow00Candidate.QLeaf002.actual_gap_eq
#print axioms Math.B699.GrowthTreeRow00Candidate.QLeaf002.leafMap_eq_path
#print axioms Math.B699.GrowthTreeRow00Candidate.QLeaf002.gapExpansion_cone
#print axioms Math.B699.GrowthTreeRow00Candidate.QLeaf002.local_gap_cone
#print axioms Math.B699.GrowthTreeRow00Candidate.QLeaf002.local_core_cone
#print axioms Math.B699.GrowthTreeRow00Candidate.QLeaf002.local_weight0_cone
#print axioms Math.B699.GrowthTreeRow00Candidate.QLeaf002.local_weight1_cone
#print axioms Math.B699.GrowthTreeRow00Candidate.QLeaf002.leaf_delta0
#print axioms Math.B699.GrowthTreeRow00Candidate.QLeaf002.leaf_delta1
namespace Math.B699.GrowthTreeRow00Candidate.QLeaf003


open Polynomial Math.B699.PadeMoment Math.B699.PadeGrowthPartition Math.B699.GrowthLeaf
open Math.B699.GrowthTreeRow00Candidate.Shared

local instance : Infinite ℚ :=
  Infinite.of_injective (fun n : ℕ => (n : ℚ)) Nat.cast_injective

def seedC : ℕ := 3
def seedD : ℕ := 2
def seedZ : ℚ := (5 : ℚ) / 512
def leafA : ℚ := (25 : ℚ) / 128
def leafB : ℚ := (51 : ℚ) / 256
def lam : ℚ := (3261099431701357391524367497 : ℚ) / 39614081257132168796771975168

noncomputable def seedCore : ℚ[X] := qSeedCore
noncomputable def seedWeight0 : ℚ[X] := qSeedWeight0
noncomputable def seedWeight1 : ℚ[X] := qSeedWeight1
noncomputable def leafMap : ℚ[X] := affine leafA leafB
noncomputable def localCore : ℚ[X] := seedCore.comp leafMap
noncomputable def localWeight0 : ℚ[X] := seedWeight0.comp leafMap
noncomputable def localWeight1 : ℚ[X] := seedWeight1.comp leafMap

def gapCoeff0 : ℚ := (118578291881956000 : ℚ) / 1441151880758558720
def gapCoeff1 : ℚ := (118594894506279024 : ℚ) / 1441151880758558720
def gapCoeff2 : ℚ := (118608576338698600 : ℚ) / 1441151880758558720
def gapCoeff3 : ℚ := (118619365177827900 : ℚ) / 1441151880758558720
def gapCoeff4 : ℚ := (118627288622026250 : ℚ) / 1441151880758558720
def gapCoeff5 : ℚ := (118632374070684375 : ℚ) / 1441151880758558720

noncomputable def gapExpansion : ℚ[X] :=
  Polynomial.C gapCoeff0 * bernsteinMonomial 0 5 +
  Polynomial.C gapCoeff1 * bernsteinMonomial 1 4 +
  Polynomial.C gapCoeff2 * bernsteinMonomial 2 3 +
  Polynomial.C gapCoeff3 * bernsteinMonomial 3 2 +
  Polynomial.C gapCoeff4 * bernsteinMonomial 4 1 +
  Polynomial.C gapCoeff5 * bernsteinMonomial 5 0

theorem seed_parameter_bounds : 0 < seedD ∧ seedD < seedC ∧
    0 < seedZ ∧ seedZ < (seedD : ℚ) / (seedC : ℚ) := by
  norm_num [seedC, seedD, seedZ]

theorem leaf_interval_bounds : 0 ≤ leafA ∧ leafA < leafB ∧ leafB ≤ 1 := by
  norm_num [leafA, leafB]

theorem lam_pos : 0 < lam := by
  norm_num [lam]

theorem actual_gap_eq : Polynomial.C lam - localCore = gapExpansion := by
  apply Polynomial.funext
  intro x
  norm_num [lam, localCore, seedCore, qSeedCore, qSeedC, qSeedD, qSeedZ,
    Math.B699.GrowthLeaf.qCore, Math.B699.GrowthLeaf.qFactor, seedC, seedD, seedZ,
    leafMap, affine, leafA, leafB, gapExpansion,
    gapCoeff0, gapCoeff1, gapCoeff2, gapCoeff3, gapCoeff4, gapCoeff5,
    bernsteinMonomial, Polynomial.eval_comp, Polynomial.eval_add, Polynomial.eval_sub,
    Polynomial.eval_mul, Polynomial.eval_pow, Polynomial.eval_C, Polynomial.eval_X] <;> ring

theorem leafMap_eq_path : leafMap = (((((((halfLeft).comp halfLeft).comp halfRight).comp halfRight).comp halfLeft).comp halfLeft).comp halfRight).comp halfLeft := by
  apply Polynomial.funext
  intro x
  norm_num [leafMap, affine, leafA, leafB, halfLeft, halfRight,
    Polynomial.eval_comp, Polynomial.eval_add, Polynomial.eval_sub,
    Polynomial.eval_mul, Polynomial.eval_C, Polynomial.eval_X] <;> ring


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
  exact BernsteinCone.add (BernsteinCone.add (BernsteinCone.add (BernsteinCone.add (BernsteinCone.add (h0) h1) h2) h3) h4) h5

theorem local_gap_cone : BernsteinCone (Polynomial.C lam - localCore) := by
  rw [actual_gap_eq]
  exact gapExpansion_cone

theorem local_core_cone : BernsteinCone localCore := by
  exact cone_comp_affine (cone_qCore seedC seedD seedZ (by norm_num [seedZ]))
    leafA leafB (by norm_num [leafA]) (by norm_num [leafA, leafB]) (by norm_num [leafB])

theorem local_weight0_cone : BernsteinCone localWeight0 := by
  exact cone_comp_affine (cone_qWeight seedC seedD 0 seedZ (by norm_num [seedZ]))
    leafA leafB (by norm_num [leafA]) (by norm_num [leafA, leafB]) (by norm_num [leafB])

theorem local_weight1_cone : BernsteinCone localWeight1 := by
  exact cone_comp_affine (cone_qWeight seedC seedD 1 seedZ (by norm_num [seedZ]))
    leafA leafB (by norm_num [leafA]) (by norm_num [leafA, leafB]) (by norm_num [leafB])

theorem leaf_delta0 : GrowthTree lam localWeight0 localCore := by
  exact GrowthTree.leaf (lam := lam) (w := localWeight0) (f := localCore)
    local_weight0_cone local_core_cone local_gap_cone

theorem leaf_delta1 : GrowthTree lam localWeight1 localCore := by
  exact GrowthTree.leaf (lam := lam) (w := localWeight1) (f := localCore)
    local_weight1_cone local_core_cone local_gap_cone

end Math.B699.GrowthTreeRow00Candidate.QLeaf003

#print axioms Math.B699.GrowthTreeRow00Candidate.QLeaf003.actual_gap_eq
#print axioms Math.B699.GrowthTreeRow00Candidate.QLeaf003.leafMap_eq_path
#print axioms Math.B699.GrowthTreeRow00Candidate.QLeaf003.gapExpansion_cone
#print axioms Math.B699.GrowthTreeRow00Candidate.QLeaf003.local_gap_cone
#print axioms Math.B699.GrowthTreeRow00Candidate.QLeaf003.local_core_cone
#print axioms Math.B699.GrowthTreeRow00Candidate.QLeaf003.local_weight0_cone
#print axioms Math.B699.GrowthTreeRow00Candidate.QLeaf003.local_weight1_cone
#print axioms Math.B699.GrowthTreeRow00Candidate.QLeaf003.leaf_delta0
#print axioms Math.B699.GrowthTreeRow00Candidate.QLeaf003.leaf_delta1
namespace Math.B699.GrowthTreeRow00Candidate.QLeaf004


open Polynomial Math.B699.PadeMoment Math.B699.PadeGrowthPartition Math.B699.GrowthLeaf
open Math.B699.GrowthTreeRow00Candidate.Shared

local instance : Infinite ℚ :=
  Infinite.of_injective (fun n : ℕ => (n : ℚ)) Nat.cast_injective

def seedC : ℕ := 3
def seedD : ℕ := 2
def seedZ : ℚ := (5 : ℚ) / 512
def leafA : ℚ := (51 : ℚ) / 256
def leafB : ℚ := (205 : ℚ) / 1024
def lam : ℚ := (3261099431701357391524367497 : ℚ) / 39614081257132168796771975168

noncomputable def seedCore : ℚ[X] := qSeedCore
noncomputable def seedWeight0 : ℚ[X] := qSeedWeight0
noncomputable def seedWeight1 : ℚ[X] := qSeedWeight1
noncomputable def leafMap : ℚ[X] := affine leafA leafB
noncomputable def localCore : ℚ[X] := seedCore.comp leafMap
noncomputable def localWeight0 : ℚ[X] := seedWeight0.comp leafMap
noncomputable def localWeight1 : ℚ[X] := seedWeight1.comp leafMap

def gapCoeff0 : ℚ := (121479551048380800000 : ℚ) / 1475739525896764129280
def gapCoeff1 : ℚ := (121480852923237280000 : ℚ) / 1475739525896764129280
def gapCoeff2 : ℚ := (121481973166379185600 : ℚ) / 1475739525896764129280
def gapCoeff3 : ℚ := (121482912216196768400 : ℚ) / 1475739525896764129280
def gapCoeff4 : ℚ := (121483670510284405596 : ℚ) / 1475739525896764129280
def gapCoeff5 : ℚ := (121484248485441885225 : ℚ) / 1475739525896764129280

noncomputable def gapExpansion : ℚ[X] :=
  Polynomial.C gapCoeff0 * bernsteinMonomial 0 5 +
  Polynomial.C gapCoeff1 * bernsteinMonomial 1 4 +
  Polynomial.C gapCoeff2 * bernsteinMonomial 2 3 +
  Polynomial.C gapCoeff3 * bernsteinMonomial 3 2 +
  Polynomial.C gapCoeff4 * bernsteinMonomial 4 1 +
  Polynomial.C gapCoeff5 * bernsteinMonomial 5 0

theorem seed_parameter_bounds : 0 < seedD ∧ seedD < seedC ∧
    0 < seedZ ∧ seedZ < (seedD : ℚ) / (seedC : ℚ) := by
  norm_num [seedC, seedD, seedZ]

theorem leaf_interval_bounds : 0 ≤ leafA ∧ leafA < leafB ∧ leafB ≤ 1 := by
  norm_num [leafA, leafB]

theorem lam_pos : 0 < lam := by
  norm_num [lam]

theorem actual_gap_eq : Polynomial.C lam - localCore = gapExpansion := by
  apply Polynomial.funext
  intro x
  norm_num [lam, localCore, seedCore, qSeedCore, qSeedC, qSeedD, qSeedZ,
    Math.B699.GrowthLeaf.qCore, Math.B699.GrowthLeaf.qFactor, seedC, seedD, seedZ,
    leafMap, affine, leafA, leafB, gapExpansion,
    gapCoeff0, gapCoeff1, gapCoeff2, gapCoeff3, gapCoeff4, gapCoeff5,
    bernsteinMonomial, Polynomial.eval_comp, Polynomial.eval_add, Polynomial.eval_sub,
    Polynomial.eval_mul, Polynomial.eval_pow, Polynomial.eval_C, Polynomial.eval_X] <;> ring

theorem leafMap_eq_path : leafMap = (((((((((halfLeft).comp halfLeft).comp halfRight).comp halfRight).comp halfLeft).comp halfLeft).comp halfRight).comp halfRight).comp halfLeft).comp halfLeft := by
  apply Polynomial.funext
  intro x
  norm_num [leafMap, affine, leafA, leafB, halfLeft, halfRight,
    Polynomial.eval_comp, Polynomial.eval_add, Polynomial.eval_sub,
    Polynomial.eval_mul, Polynomial.eval_C, Polynomial.eval_X] <;> ring


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
  exact BernsteinCone.add (BernsteinCone.add (BernsteinCone.add (BernsteinCone.add (BernsteinCone.add (h0) h1) h2) h3) h4) h5

theorem local_gap_cone : BernsteinCone (Polynomial.C lam - localCore) := by
  rw [actual_gap_eq]
  exact gapExpansion_cone

theorem local_core_cone : BernsteinCone localCore := by
  exact cone_comp_affine (cone_qCore seedC seedD seedZ (by norm_num [seedZ]))
    leafA leafB (by norm_num [leafA]) (by norm_num [leafA, leafB]) (by norm_num [leafB])

theorem local_weight0_cone : BernsteinCone localWeight0 := by
  exact cone_comp_affine (cone_qWeight seedC seedD 0 seedZ (by norm_num [seedZ]))
    leafA leafB (by norm_num [leafA]) (by norm_num [leafA, leafB]) (by norm_num [leafB])

theorem local_weight1_cone : BernsteinCone localWeight1 := by
  exact cone_comp_affine (cone_qWeight seedC seedD 1 seedZ (by norm_num [seedZ]))
    leafA leafB (by norm_num [leafA]) (by norm_num [leafA, leafB]) (by norm_num [leafB])

theorem leaf_delta0 : GrowthTree lam localWeight0 localCore := by
  exact GrowthTree.leaf (lam := lam) (w := localWeight0) (f := localCore)
    local_weight0_cone local_core_cone local_gap_cone

theorem leaf_delta1 : GrowthTree lam localWeight1 localCore := by
  exact GrowthTree.leaf (lam := lam) (w := localWeight1) (f := localCore)
    local_weight1_cone local_core_cone local_gap_cone

end Math.B699.GrowthTreeRow00Candidate.QLeaf004

#print axioms Math.B699.GrowthTreeRow00Candidate.QLeaf004.actual_gap_eq
#print axioms Math.B699.GrowthTreeRow00Candidate.QLeaf004.leafMap_eq_path
#print axioms Math.B699.GrowthTreeRow00Candidate.QLeaf004.gapExpansion_cone
#print axioms Math.B699.GrowthTreeRow00Candidate.QLeaf004.local_gap_cone
#print axioms Math.B699.GrowthTreeRow00Candidate.QLeaf004.local_core_cone
#print axioms Math.B699.GrowthTreeRow00Candidate.QLeaf004.local_weight0_cone
#print axioms Math.B699.GrowthTreeRow00Candidate.QLeaf004.local_weight1_cone
#print axioms Math.B699.GrowthTreeRow00Candidate.QLeaf004.leaf_delta0
#print axioms Math.B699.GrowthTreeRow00Candidate.QLeaf004.leaf_delta1
namespace Math.B699.GrowthTreeRow00Candidate.QLeaf005


open Polynomial Math.B699.PadeMoment Math.B699.PadeGrowthPartition Math.B699.GrowthLeaf
open Math.B699.GrowthTreeRow00Candidate.Shared

local instance : Infinite ℚ :=
  Infinite.of_injective (fun n : ℕ => (n : ℚ)) Nat.cast_injective

def seedC : ℕ := 3
def seedD : ℕ := 2
def seedZ : ℚ := (5 : ℚ) / 512
def leafA : ℚ := (205 : ℚ) / 1024
def leafB : ℚ := (411 : ℚ) / 2048
def lam : ℚ := (3261099431701357391524367497 : ℚ) / 39614081257132168796771975168

noncomputable def seedCore : ℚ[X] := qSeedCore
noncomputable def seedWeight0 : ℚ[X] := qSeedWeight0
noncomputable def seedWeight1 : ℚ[X] := qSeedWeight1
noncomputable def leafMap : ℚ[X] := affine leafA leafB
noncomputable def localCore : ℚ[X] := seedCore.comp leafMap
noncomputable def localWeight0 : ℚ[X] := seedWeight0.comp leafMap
noncomputable def localWeight1 : ℚ[X] := seedWeight1.comp leafMap

def gapCoeff0 : ℚ := (3887495951534140327200 : ℚ) / 47223664828696452136960
def gapCoeff1 : ℚ := (3887505199136660001264 : ℚ) / 47223664828696452136960
def gapCoeff2 : ℚ := (3887513004187738414792 : ℚ) / 47223664828696452136960
def gapCoeff3 : ℚ := (3887519368434574719932 : ℚ) / 47223664828696452136960
def gapCoeff4 : ℚ := (3887524293622778890514 : ℚ) / 47223664828696452136960
def gapCoeff5 : ℚ := (3887527781496373007295 : ℚ) / 47223664828696452136960

noncomputable def gapExpansion : ℚ[X] :=
  Polynomial.C gapCoeff0 * bernsteinMonomial 0 5 +
  Polynomial.C gapCoeff1 * bernsteinMonomial 1 4 +
  Polynomial.C gapCoeff2 * bernsteinMonomial 2 3 +
  Polynomial.C gapCoeff3 * bernsteinMonomial 3 2 +
  Polynomial.C gapCoeff4 * bernsteinMonomial 4 1 +
  Polynomial.C gapCoeff5 * bernsteinMonomial 5 0

theorem seed_parameter_bounds : 0 < seedD ∧ seedD < seedC ∧
    0 < seedZ ∧ seedZ < (seedD : ℚ) / (seedC : ℚ) := by
  norm_num [seedC, seedD, seedZ]

theorem leaf_interval_bounds : 0 ≤ leafA ∧ leafA < leafB ∧ leafB ≤ 1 := by
  norm_num [leafA, leafB]

theorem lam_pos : 0 < lam := by
  norm_num [lam]

theorem actual_gap_eq : Polynomial.C lam - localCore = gapExpansion := by
  apply Polynomial.funext
  intro x
  norm_num [lam, localCore, seedCore, qSeedCore, qSeedC, qSeedD, qSeedZ,
    Math.B699.GrowthLeaf.qCore, Math.B699.GrowthLeaf.qFactor, seedC, seedD, seedZ,
    leafMap, affine, leafA, leafB, gapExpansion,
    gapCoeff0, gapCoeff1, gapCoeff2, gapCoeff3, gapCoeff4, gapCoeff5,
    bernsteinMonomial, Polynomial.eval_comp, Polynomial.eval_add, Polynomial.eval_sub,
    Polynomial.eval_mul, Polynomial.eval_pow, Polynomial.eval_C, Polynomial.eval_X] <;> ring

theorem leafMap_eq_path : leafMap = ((((((((((halfLeft).comp halfLeft).comp halfRight).comp halfRight).comp halfLeft).comp halfLeft).comp halfRight).comp halfRight).comp halfLeft).comp halfRight).comp halfLeft := by
  apply Polynomial.funext
  intro x
  norm_num [leafMap, affine, leafA, leafB, halfLeft, halfRight,
    Polynomial.eval_comp, Polynomial.eval_add, Polynomial.eval_sub,
    Polynomial.eval_mul, Polynomial.eval_C, Polynomial.eval_X] <;> ring


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
  exact BernsteinCone.add (BernsteinCone.add (BernsteinCone.add (BernsteinCone.add (BernsteinCone.add (h0) h1) h2) h3) h4) h5

theorem local_gap_cone : BernsteinCone (Polynomial.C lam - localCore) := by
  rw [actual_gap_eq]
  exact gapExpansion_cone

theorem local_core_cone : BernsteinCone localCore := by
  exact cone_comp_affine (cone_qCore seedC seedD seedZ (by norm_num [seedZ]))
    leafA leafB (by norm_num [leafA]) (by norm_num [leafA, leafB]) (by norm_num [leafB])

theorem local_weight0_cone : BernsteinCone localWeight0 := by
  exact cone_comp_affine (cone_qWeight seedC seedD 0 seedZ (by norm_num [seedZ]))
    leafA leafB (by norm_num [leafA]) (by norm_num [leafA, leafB]) (by norm_num [leafB])

theorem local_weight1_cone : BernsteinCone localWeight1 := by
  exact cone_comp_affine (cone_qWeight seedC seedD 1 seedZ (by norm_num [seedZ]))
    leafA leafB (by norm_num [leafA]) (by norm_num [leafA, leafB]) (by norm_num [leafB])

theorem leaf_delta0 : GrowthTree lam localWeight0 localCore := by
  exact GrowthTree.leaf (lam := lam) (w := localWeight0) (f := localCore)
    local_weight0_cone local_core_cone local_gap_cone

theorem leaf_delta1 : GrowthTree lam localWeight1 localCore := by
  exact GrowthTree.leaf (lam := lam) (w := localWeight1) (f := localCore)
    local_weight1_cone local_core_cone local_gap_cone

end Math.B699.GrowthTreeRow00Candidate.QLeaf005

#print axioms Math.B699.GrowthTreeRow00Candidate.QLeaf005.actual_gap_eq
#print axioms Math.B699.GrowthTreeRow00Candidate.QLeaf005.leafMap_eq_path
#print axioms Math.B699.GrowthTreeRow00Candidate.QLeaf005.gapExpansion_cone
#print axioms Math.B699.GrowthTreeRow00Candidate.QLeaf005.local_gap_cone
#print axioms Math.B699.GrowthTreeRow00Candidate.QLeaf005.local_core_cone
#print axioms Math.B699.GrowthTreeRow00Candidate.QLeaf005.local_weight0_cone
#print axioms Math.B699.GrowthTreeRow00Candidate.QLeaf005.local_weight1_cone
#print axioms Math.B699.GrowthTreeRow00Candidate.QLeaf005.leaf_delta0
#print axioms Math.B699.GrowthTreeRow00Candidate.QLeaf005.leaf_delta1
namespace Math.B699.GrowthTreeRow00Candidate.QLeaf006


open Polynomial Math.B699.PadeMoment Math.B699.PadeGrowthPartition Math.B699.GrowthLeaf
open Math.B699.GrowthTreeRow00Candidate.Shared

local instance : Infinite ℚ :=
  Infinite.of_injective (fun n : ℕ => (n : ℚ)) Nat.cast_injective

def seedC : ℕ := 3
def seedD : ℕ := 2
def seedZ : ℚ := (5 : ℚ) / 512
def leafA : ℚ := (411 : ℚ) / 2048
def leafB : ℚ := (823 : ℚ) / 4096
def lam : ℚ := (3261099431701357391524367497 : ℚ) / 39614081257132168796771975168

noncomputable def seedCore : ℚ[X] := qSeedCore
noncomputable def seedWeight0 : ℚ[X] := qSeedWeight0
noncomputable def seedWeight1 : ℚ[X] := qSeedWeight1
noncomputable def leafMap : ℚ[X] := affine leafA leafB
noncomputable def localCore : ℚ[X] := seedCore.comp leafMap
noncomputable def localWeight0 : ℚ[X] := seedWeight0.comp leafMap
noncomputable def localWeight1 : ℚ[X] := seedWeight1.comp leafMap

def gapCoeff0 : ℚ := (124400889007883936233440 : ℚ) / 1511157274518286468382720
def gapCoeff1 : ℚ := (124400944813861442101936 : ℚ) / 1511157274518286468382720
def gapCoeff2 : ℚ := (124400989121322067540024 : ℚ) / 1511157274518286468382720
def gapCoeff3 : ℚ := (124401021937241900870732 : ℚ) / 1511157274518286468382720
def gapCoeff4 : ℚ := (124401043268593854630942 : ℚ) / 1511157274518286468382720
def gapCoeff5 : ℚ := (124401053122347666856635 : ℚ) / 1511157274518286468382720

noncomputable def gapExpansion : ℚ[X] :=
  Polynomial.C gapCoeff0 * bernsteinMonomial 0 5 +
  Polynomial.C gapCoeff1 * bernsteinMonomial 1 4 +
  Polynomial.C gapCoeff2 * bernsteinMonomial 2 3 +
  Polynomial.C gapCoeff3 * bernsteinMonomial 3 2 +
  Polynomial.C gapCoeff4 * bernsteinMonomial 4 1 +
  Polynomial.C gapCoeff5 * bernsteinMonomial 5 0

theorem seed_parameter_bounds : 0 < seedD ∧ seedD < seedC ∧
    0 < seedZ ∧ seedZ < (seedD : ℚ) / (seedC : ℚ) := by
  norm_num [seedC, seedD, seedZ]

theorem leaf_interval_bounds : 0 ≤ leafA ∧ leafA < leafB ∧ leafB ≤ 1 := by
  norm_num [leafA, leafB]

theorem lam_pos : 0 < lam := by
  norm_num [lam]

theorem actual_gap_eq : Polynomial.C lam - localCore = gapExpansion := by
  apply Polynomial.funext
  intro x
  norm_num [lam, localCore, seedCore, qSeedCore, qSeedC, qSeedD, qSeedZ,
    Math.B699.GrowthLeaf.qCore, Math.B699.GrowthLeaf.qFactor, seedC, seedD, seedZ,
    leafMap, affine, leafA, leafB, gapExpansion,
    gapCoeff0, gapCoeff1, gapCoeff2, gapCoeff3, gapCoeff4, gapCoeff5,
    bernsteinMonomial, Polynomial.eval_comp, Polynomial.eval_add, Polynomial.eval_sub,
    Polynomial.eval_mul, Polynomial.eval_pow, Polynomial.eval_C, Polynomial.eval_X] <;> ring

theorem leafMap_eq_path : leafMap = (((((((((((halfLeft).comp halfLeft).comp halfRight).comp halfRight).comp halfLeft).comp halfLeft).comp halfRight).comp halfRight).comp halfLeft).comp halfRight).comp halfRight).comp halfLeft := by
  apply Polynomial.funext
  intro x
  norm_num [leafMap, affine, leafA, leafB, halfLeft, halfRight,
    Polynomial.eval_comp, Polynomial.eval_add, Polynomial.eval_sub,
    Polynomial.eval_mul, Polynomial.eval_C, Polynomial.eval_X] <;> ring


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
  exact BernsteinCone.add (BernsteinCone.add (BernsteinCone.add (BernsteinCone.add (BernsteinCone.add (h0) h1) h2) h3) h4) h5

theorem local_gap_cone : BernsteinCone (Polynomial.C lam - localCore) := by
  rw [actual_gap_eq]
  exact gapExpansion_cone

theorem local_core_cone : BernsteinCone localCore := by
  exact cone_comp_affine (cone_qCore seedC seedD seedZ (by norm_num [seedZ]))
    leafA leafB (by norm_num [leafA]) (by norm_num [leafA, leafB]) (by norm_num [leafB])

theorem local_weight0_cone : BernsteinCone localWeight0 := by
  exact cone_comp_affine (cone_qWeight seedC seedD 0 seedZ (by norm_num [seedZ]))
    leafA leafB (by norm_num [leafA]) (by norm_num [leafA, leafB]) (by norm_num [leafB])

theorem local_weight1_cone : BernsteinCone localWeight1 := by
  exact cone_comp_affine (cone_qWeight seedC seedD 1 seedZ (by norm_num [seedZ]))
    leafA leafB (by norm_num [leafA]) (by norm_num [leafA, leafB]) (by norm_num [leafB])

theorem leaf_delta0 : GrowthTree lam localWeight0 localCore := by
  exact GrowthTree.leaf (lam := lam) (w := localWeight0) (f := localCore)
    local_weight0_cone local_core_cone local_gap_cone

theorem leaf_delta1 : GrowthTree lam localWeight1 localCore := by
  exact GrowthTree.leaf (lam := lam) (w := localWeight1) (f := localCore)
    local_weight1_cone local_core_cone local_gap_cone

end Math.B699.GrowthTreeRow00Candidate.QLeaf006

#print axioms Math.B699.GrowthTreeRow00Candidate.QLeaf006.actual_gap_eq
#print axioms Math.B699.GrowthTreeRow00Candidate.QLeaf006.leafMap_eq_path
#print axioms Math.B699.GrowthTreeRow00Candidate.QLeaf006.gapExpansion_cone
#print axioms Math.B699.GrowthTreeRow00Candidate.QLeaf006.local_gap_cone
#print axioms Math.B699.GrowthTreeRow00Candidate.QLeaf006.local_core_cone
#print axioms Math.B699.GrowthTreeRow00Candidate.QLeaf006.local_weight0_cone
#print axioms Math.B699.GrowthTreeRow00Candidate.QLeaf006.local_weight1_cone
#print axioms Math.B699.GrowthTreeRow00Candidate.QLeaf006.leaf_delta0
#print axioms Math.B699.GrowthTreeRow00Candidate.QLeaf006.leaf_delta1
namespace Math.B699.GrowthTreeRow00Candidate.QLeaf007


open Polynomial Math.B699.PadeMoment Math.B699.PadeGrowthPartition Math.B699.GrowthLeaf
open Math.B699.GrowthTreeRow00Candidate.Shared

local instance : Infinite ℚ :=
  Infinite.of_injective (fun n : ℕ => (n : ℚ)) Nat.cast_injective

def seedC : ℕ := 3
def seedD : ℕ := 2
def seedZ : ℚ := (5 : ℚ) / 512
def leafA : ℚ := (823 : ℚ) / 4096
def leafB : ℚ := (103 : ℚ) / 512
def lam : ℚ := (3261099431701357391524367497 : ℚ) / 39614081257132168796771975168

noncomputable def seedCore : ℚ[X] := qSeedCore
noncomputable def seedWeight0 : ℚ[X] := qSeedWeight0
noncomputable def seedWeight1 : ℚ[X] := qSeedWeight1
noncomputable def leafMap : ℚ[X] := affine leafA leafB
noncomputable def localCore : ℚ[X] := seedCore.comp leafMap
noncomputable def localWeight0 : ℚ[X] := seedWeight0.comp leafMap
noncomputable def localWeight1 : ℚ[X] := seedWeight1.comp leafMap

def gapCoeff0 : ℚ := (124401053122347666856635 : ℚ) / 1511157274518286468382720
def gapCoeff1 : ℚ := (124401062976101479082328 : ℚ) / 1511157274518286468382720
def gapCoeff2 : ℚ := (124401061352257149773504 : ℚ) / 1511157274518286468382720
def gapCoeff3 : ℚ := (124401048257784416966144 : ℚ) / 1511157274518286468382720
def gapCoeff4 : ℚ := (124401023699649844195328 : ℚ) / 1511157274518286468382720
def gapCoeff5 : ℚ := (124400987684816821780480 : ℚ) / 1511157274518286468382720

noncomputable def gapExpansion : ℚ[X] :=
  Polynomial.C gapCoeff0 * bernsteinMonomial 0 5 +
  Polynomial.C gapCoeff1 * bernsteinMonomial 1 4 +
  Polynomial.C gapCoeff2 * bernsteinMonomial 2 3 +
  Polynomial.C gapCoeff3 * bernsteinMonomial 3 2 +
  Polynomial.C gapCoeff4 * bernsteinMonomial 4 1 +
  Polynomial.C gapCoeff5 * bernsteinMonomial 5 0

theorem seed_parameter_bounds : 0 < seedD ∧ seedD < seedC ∧
    0 < seedZ ∧ seedZ < (seedD : ℚ) / (seedC : ℚ) := by
  norm_num [seedC, seedD, seedZ]

theorem leaf_interval_bounds : 0 ≤ leafA ∧ leafA < leafB ∧ leafB ≤ 1 := by
  norm_num [leafA, leafB]

theorem lam_pos : 0 < lam := by
  norm_num [lam]

theorem actual_gap_eq : Polynomial.C lam - localCore = gapExpansion := by
  apply Polynomial.funext
  intro x
  norm_num [lam, localCore, seedCore, qSeedCore, qSeedC, qSeedD, qSeedZ,
    Math.B699.GrowthLeaf.qCore, Math.B699.GrowthLeaf.qFactor, seedC, seedD, seedZ,
    leafMap, affine, leafA, leafB, gapExpansion,
    gapCoeff0, gapCoeff1, gapCoeff2, gapCoeff3, gapCoeff4, gapCoeff5,
    bernsteinMonomial, Polynomial.eval_comp, Polynomial.eval_add, Polynomial.eval_sub,
    Polynomial.eval_mul, Polynomial.eval_pow, Polynomial.eval_C, Polynomial.eval_X] <;> ring

theorem leafMap_eq_path : leafMap = (((((((((((halfLeft).comp halfLeft).comp halfRight).comp halfRight).comp halfLeft).comp halfLeft).comp halfRight).comp halfRight).comp halfLeft).comp halfRight).comp halfRight).comp halfRight := by
  apply Polynomial.funext
  intro x
  norm_num [leafMap, affine, leafA, leafB, halfLeft, halfRight,
    Polynomial.eval_comp, Polynomial.eval_add, Polynomial.eval_sub,
    Polynomial.eval_mul, Polynomial.eval_C, Polynomial.eval_X] <;> ring


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
  exact BernsteinCone.add (BernsteinCone.add (BernsteinCone.add (BernsteinCone.add (BernsteinCone.add (h0) h1) h2) h3) h4) h5

theorem local_gap_cone : BernsteinCone (Polynomial.C lam - localCore) := by
  rw [actual_gap_eq]
  exact gapExpansion_cone

theorem local_core_cone : BernsteinCone localCore := by
  exact cone_comp_affine (cone_qCore seedC seedD seedZ (by norm_num [seedZ]))
    leafA leafB (by norm_num [leafA]) (by norm_num [leafA, leafB]) (by norm_num [leafB])

theorem local_weight0_cone : BernsteinCone localWeight0 := by
  exact cone_comp_affine (cone_qWeight seedC seedD 0 seedZ (by norm_num [seedZ]))
    leafA leafB (by norm_num [leafA]) (by norm_num [leafA, leafB]) (by norm_num [leafB])

theorem local_weight1_cone : BernsteinCone localWeight1 := by
  exact cone_comp_affine (cone_qWeight seedC seedD 1 seedZ (by norm_num [seedZ]))
    leafA leafB (by norm_num [leafA]) (by norm_num [leafA, leafB]) (by norm_num [leafB])

theorem leaf_delta0 : GrowthTree lam localWeight0 localCore := by
  exact GrowthTree.leaf (lam := lam) (w := localWeight0) (f := localCore)
    local_weight0_cone local_core_cone local_gap_cone

theorem leaf_delta1 : GrowthTree lam localWeight1 localCore := by
  exact GrowthTree.leaf (lam := lam) (w := localWeight1) (f := localCore)
    local_weight1_cone local_core_cone local_gap_cone

end Math.B699.GrowthTreeRow00Candidate.QLeaf007

#print axioms Math.B699.GrowthTreeRow00Candidate.QLeaf007.actual_gap_eq
#print axioms Math.B699.GrowthTreeRow00Candidate.QLeaf007.leafMap_eq_path
#print axioms Math.B699.GrowthTreeRow00Candidate.QLeaf007.gapExpansion_cone
#print axioms Math.B699.GrowthTreeRow00Candidate.QLeaf007.local_gap_cone
#print axioms Math.B699.GrowthTreeRow00Candidate.QLeaf007.local_core_cone
#print axioms Math.B699.GrowthTreeRow00Candidate.QLeaf007.local_weight0_cone
#print axioms Math.B699.GrowthTreeRow00Candidate.QLeaf007.local_weight1_cone
#print axioms Math.B699.GrowthTreeRow00Candidate.QLeaf007.leaf_delta0
#print axioms Math.B699.GrowthTreeRow00Candidate.QLeaf007.leaf_delta1
namespace Math.B699.GrowthTreeRow00Candidate.QLeaf008


open Polynomial Math.B699.PadeMoment Math.B699.PadeGrowthPartition Math.B699.GrowthLeaf
open Math.B699.GrowthTreeRow00Candidate.Shared

local instance : Infinite ℚ :=
  Infinite.of_injective (fun n : ℕ => (n : ℚ)) Nat.cast_injective

def seedC : ℕ := 3
def seedD : ℕ := 2
def seedZ : ℚ := (5 : ℚ) / 512
def leafA : ℚ := (103 : ℚ) / 512
def leafB : ℚ := (13 : ℚ) / 64
def lam : ℚ := (3261099431701357391524367497 : ℚ) / 39614081257132168796771975168

noncomputable def seedCore : ℚ[X] := qSeedCore
noncomputable def seedWeight0 : ℚ[X] := qSeedWeight0
noncomputable def seedWeight1 : ℚ[X] := qSeedWeight1
noncomputable def leafMap : ℚ[X] := affine leafA leafB
noncomputable def localCore : ℚ[X] := seedCore.comp leafMap
noncomputable def localWeight0 : ℚ[X] := seedWeight0.comp leafMap
noncomputable def localWeight1 : ℚ[X] := seedWeight1.comp leafMap

def gapCoeff0 : ℚ := (3796416860498560235 : ℚ) / 46116860184273879040
def gapCoeff1 : ℚ := (3796408067814716872 : ℚ) / 46116860184273879040
def gapCoeff2 : ℚ := (3796376898766714048 : ℚ) / 46116860184273879040
def gapCoeff3 : ℚ := (3796323462157525504 : ℚ) / 46116860184273879040
def gapCoeff4 : ℚ := (3796247866393473024 : ℚ) / 46116860184273879040
def gapCoeff5 : ℚ := (3796150219485511680 : ℚ) / 46116860184273879040

noncomputable def gapExpansion : ℚ[X] :=
  Polynomial.C gapCoeff0 * bernsteinMonomial 0 5 +
  Polynomial.C gapCoeff1 * bernsteinMonomial 1 4 +
  Polynomial.C gapCoeff2 * bernsteinMonomial 2 3 +
  Polynomial.C gapCoeff3 * bernsteinMonomial 3 2 +
  Polynomial.C gapCoeff4 * bernsteinMonomial 4 1 +
  Polynomial.C gapCoeff5 * bernsteinMonomial 5 0

theorem seed_parameter_bounds : 0 < seedD ∧ seedD < seedC ∧
    0 < seedZ ∧ seedZ < (seedD : ℚ) / (seedC : ℚ) := by
  norm_num [seedC, seedD, seedZ]

theorem leaf_interval_bounds : 0 ≤ leafA ∧ leafA < leafB ∧ leafB ≤ 1 := by
  norm_num [leafA, leafB]

theorem lam_pos : 0 < lam := by
  norm_num [lam]

theorem actual_gap_eq : Polynomial.C lam - localCore = gapExpansion := by
  apply Polynomial.funext
  intro x
  norm_num [lam, localCore, seedCore, qSeedCore, qSeedC, qSeedD, qSeedZ,
    Math.B699.GrowthLeaf.qCore, Math.B699.GrowthLeaf.qFactor, seedC, seedD, seedZ,
    leafMap, affine, leafA, leafB, gapExpansion,
    gapCoeff0, gapCoeff1, gapCoeff2, gapCoeff3, gapCoeff4, gapCoeff5,
    bernsteinMonomial, Polynomial.eval_comp, Polynomial.eval_add, Polynomial.eval_sub,
    Polynomial.eval_mul, Polynomial.eval_pow, Polynomial.eval_C, Polynomial.eval_X] <;> ring

theorem leafMap_eq_path : leafMap = ((((((((halfLeft).comp halfLeft).comp halfRight).comp halfRight).comp halfLeft).comp halfLeft).comp halfRight).comp halfRight).comp halfRight := by
  apply Polynomial.funext
  intro x
  norm_num [leafMap, affine, leafA, leafB, halfLeft, halfRight,
    Polynomial.eval_comp, Polynomial.eval_add, Polynomial.eval_sub,
    Polynomial.eval_mul, Polynomial.eval_C, Polynomial.eval_X] <;> ring


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
  exact BernsteinCone.add (BernsteinCone.add (BernsteinCone.add (BernsteinCone.add (BernsteinCone.add (h0) h1) h2) h3) h4) h5

theorem local_gap_cone : BernsteinCone (Polynomial.C lam - localCore) := by
  rw [actual_gap_eq]
  exact gapExpansion_cone

theorem local_core_cone : BernsteinCone localCore := by
  exact cone_comp_affine (cone_qCore seedC seedD seedZ (by norm_num [seedZ]))
    leafA leafB (by norm_num [leafA]) (by norm_num [leafA, leafB]) (by norm_num [leafB])

theorem local_weight0_cone : BernsteinCone localWeight0 := by
  exact cone_comp_affine (cone_qWeight seedC seedD 0 seedZ (by norm_num [seedZ]))
    leafA leafB (by norm_num [leafA]) (by norm_num [leafA, leafB]) (by norm_num [leafB])

theorem local_weight1_cone : BernsteinCone localWeight1 := by
  exact cone_comp_affine (cone_qWeight seedC seedD 1 seedZ (by norm_num [seedZ]))
    leafA leafB (by norm_num [leafA]) (by norm_num [leafA, leafB]) (by norm_num [leafB])

theorem leaf_delta0 : GrowthTree lam localWeight0 localCore := by
  exact GrowthTree.leaf (lam := lam) (w := localWeight0) (f := localCore)
    local_weight0_cone local_core_cone local_gap_cone

theorem leaf_delta1 : GrowthTree lam localWeight1 localCore := by
  exact GrowthTree.leaf (lam := lam) (w := localWeight1) (f := localCore)
    local_weight1_cone local_core_cone local_gap_cone

end Math.B699.GrowthTreeRow00Candidate.QLeaf008

#print axioms Math.B699.GrowthTreeRow00Candidate.QLeaf008.actual_gap_eq
#print axioms Math.B699.GrowthTreeRow00Candidate.QLeaf008.leafMap_eq_path
#print axioms Math.B699.GrowthTreeRow00Candidate.QLeaf008.gapExpansion_cone
#print axioms Math.B699.GrowthTreeRow00Candidate.QLeaf008.local_gap_cone
#print axioms Math.B699.GrowthTreeRow00Candidate.QLeaf008.local_core_cone
#print axioms Math.B699.GrowthTreeRow00Candidate.QLeaf008.local_weight0_cone
#print axioms Math.B699.GrowthTreeRow00Candidate.QLeaf008.local_weight1_cone
#print axioms Math.B699.GrowthTreeRow00Candidate.QLeaf008.leaf_delta0
#print axioms Math.B699.GrowthTreeRow00Candidate.QLeaf008.leaf_delta1
namespace Math.B699.GrowthTreeRow00Candidate.QLeaf009


open Polynomial Math.B699.PadeMoment Math.B699.PadeGrowthPartition Math.B699.GrowthLeaf
open Math.B699.GrowthTreeRow00Candidate.Shared

local instance : Infinite ℚ :=
  Infinite.of_injective (fun n : ℕ => (n : ℚ)) Nat.cast_injective

def seedC : ℕ := 3
def seedD : ℕ := 2
def seedZ : ℚ := (5 : ℚ) / 512
def leafA : ℚ := (13 : ℚ) / 64
def leafB : ℚ := (7 : ℚ) / 32
def lam : ℚ := (3261099431701357391524367497 : ℚ) / 39614081257132168796771975168

noncomputable def seedCore : ℚ[X] := qSeedCore
noncomputable def seedWeight0 : ℚ[X] := qSeedWeight0
noncomputable def seedWeight1 : ℚ[X] := qSeedWeight1
noncomputable def leafMap : ℚ[X] := affine leafA leafB
noncomputable def localCore : ℚ[X] := seedCore.comp leafMap
noncomputable def localWeight0 : ℚ[X] := seedWeight0.comp leafMap
noncomputable def localWeight1 : ℚ[X] := seedWeight1.comp leafMap

def gapCoeff0 : ℚ := (115849310897385 : ℚ) / 1407374883553280
def gapCoeff1 : ℚ := (115825471320246 : ℚ) / 1407374883553280
def gapCoeff2 : ℚ := (115758563102660 : ℚ) / 1407374883553280
def gapCoeff3 : ℚ := (115650273915800 : ℚ) / 1407374883553280
def gapCoeff4 : ℚ := (115502242010000 : ℚ) / 1407374883553280
def gapCoeff5 : ℚ := (115316057500000 : ℚ) / 1407374883553280

noncomputable def gapExpansion : ℚ[X] :=
  Polynomial.C gapCoeff0 * bernsteinMonomial 0 5 +
  Polynomial.C gapCoeff1 * bernsteinMonomial 1 4 +
  Polynomial.C gapCoeff2 * bernsteinMonomial 2 3 +
  Polynomial.C gapCoeff3 * bernsteinMonomial 3 2 +
  Polynomial.C gapCoeff4 * bernsteinMonomial 4 1 +
  Polynomial.C gapCoeff5 * bernsteinMonomial 5 0

theorem seed_parameter_bounds : 0 < seedD ∧ seedD < seedC ∧
    0 < seedZ ∧ seedZ < (seedD : ℚ) / (seedC : ℚ) := by
  norm_num [seedC, seedD, seedZ]

theorem leaf_interval_bounds : 0 ≤ leafA ∧ leafA < leafB ∧ leafB ≤ 1 := by
  norm_num [leafA, leafB]

theorem lam_pos : 0 < lam := by
  norm_num [lam]

theorem actual_gap_eq : Polynomial.C lam - localCore = gapExpansion := by
  apply Polynomial.funext
  intro x
  norm_num [lam, localCore, seedCore, qSeedCore, qSeedC, qSeedD, qSeedZ,
    Math.B699.GrowthLeaf.qCore, Math.B699.GrowthLeaf.qFactor, seedC, seedD, seedZ,
    leafMap, affine, leafA, leafB, gapExpansion,
    gapCoeff0, gapCoeff1, gapCoeff2, gapCoeff3, gapCoeff4, gapCoeff5,
    bernsteinMonomial, Polynomial.eval_comp, Polynomial.eval_add, Polynomial.eval_sub,
    Polynomial.eval_mul, Polynomial.eval_pow, Polynomial.eval_C, Polynomial.eval_X] <;> ring

theorem leafMap_eq_path : leafMap = (((((halfLeft).comp halfLeft).comp halfRight).comp halfRight).comp halfLeft).comp halfRight := by
  apply Polynomial.funext
  intro x
  norm_num [leafMap, affine, leafA, leafB, halfLeft, halfRight,
    Polynomial.eval_comp, Polynomial.eval_add, Polynomial.eval_sub,
    Polynomial.eval_mul, Polynomial.eval_C, Polynomial.eval_X] <;> ring


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
  exact BernsteinCone.add (BernsteinCone.add (BernsteinCone.add (BernsteinCone.add (BernsteinCone.add (h0) h1) h2) h3) h4) h5

theorem local_gap_cone : BernsteinCone (Polynomial.C lam - localCore) := by
  rw [actual_gap_eq]
  exact gapExpansion_cone

theorem local_core_cone : BernsteinCone localCore := by
  exact cone_comp_affine (cone_qCore seedC seedD seedZ (by norm_num [seedZ]))
    leafA leafB (by norm_num [leafA]) (by norm_num [leafA, leafB]) (by norm_num [leafB])

theorem local_weight0_cone : BernsteinCone localWeight0 := by
  exact cone_comp_affine (cone_qWeight seedC seedD 0 seedZ (by norm_num [seedZ]))
    leafA leafB (by norm_num [leafA]) (by norm_num [leafA, leafB]) (by norm_num [leafB])

theorem local_weight1_cone : BernsteinCone localWeight1 := by
  exact cone_comp_affine (cone_qWeight seedC seedD 1 seedZ (by norm_num [seedZ]))
    leafA leafB (by norm_num [leafA]) (by norm_num [leafA, leafB]) (by norm_num [leafB])

theorem leaf_delta0 : GrowthTree lam localWeight0 localCore := by
  exact GrowthTree.leaf (lam := lam) (w := localWeight0) (f := localCore)
    local_weight0_cone local_core_cone local_gap_cone

theorem leaf_delta1 : GrowthTree lam localWeight1 localCore := by
  exact GrowthTree.leaf (lam := lam) (w := localWeight1) (f := localCore)
    local_weight1_cone local_core_cone local_gap_cone

end Math.B699.GrowthTreeRow00Candidate.QLeaf009

#print axioms Math.B699.GrowthTreeRow00Candidate.QLeaf009.actual_gap_eq
#print axioms Math.B699.GrowthTreeRow00Candidate.QLeaf009.leafMap_eq_path
#print axioms Math.B699.GrowthTreeRow00Candidate.QLeaf009.gapExpansion_cone
#print axioms Math.B699.GrowthTreeRow00Candidate.QLeaf009.local_gap_cone
#print axioms Math.B699.GrowthTreeRow00Candidate.QLeaf009.local_core_cone
#print axioms Math.B699.GrowthTreeRow00Candidate.QLeaf009.local_weight0_cone
#print axioms Math.B699.GrowthTreeRow00Candidate.QLeaf009.local_weight1_cone
#print axioms Math.B699.GrowthTreeRow00Candidate.QLeaf009.leaf_delta0
#print axioms Math.B699.GrowthTreeRow00Candidate.QLeaf009.leaf_delta1
namespace Math.B699.GrowthTreeRow00Candidate.QLeaf010


open Polynomial Math.B699.PadeMoment Math.B699.PadeGrowthPartition Math.B699.GrowthLeaf
open Math.B699.GrowthTreeRow00Candidate.Shared

local instance : Infinite ℚ :=
  Infinite.of_injective (fun n : ℕ => (n : ℚ)) Nat.cast_injective

def seedC : ℕ := 3
def seedD : ℕ := 2
def seedZ : ℚ := (5 : ℚ) / 512
def leafA : ℚ := (7 : ℚ) / 32
def leafB : ℚ := (1 : ℚ) / 4
def lam : ℚ := (3261099431701357391524367497 : ℚ) / 39614081257132168796771975168

noncomputable def seedCore : ℚ[X] := qSeedCore
noncomputable def seedWeight0 : ℚ[X] := qSeedWeight0
noncomputable def seedWeight1 : ℚ[X] := qSeedWeight1
noncomputable def leafMap : ℚ[X] := affine leafA leafB
noncomputable def localCore : ℚ[X] := seedCore.comp leafMap
noncomputable def localWeight0 : ℚ[X] := seedWeight0.comp leafMap
noncomputable def localWeight1 : ℚ[X] := seedWeight1.comp leafMap

def gapCoeff0 : ℚ := (3603626796875 : ℚ) / 43980465111040
def gapCoeff1 : ℚ := (3591990265000 : ℚ) / 43980465111040
def gapCoeff2 : ℚ := (3575584657600 : ℚ) / 43980465111040
def gapCoeff3 : ℚ := (3554807503360 : ℚ) / 43980465111040
def gapCoeff4 : ℚ := (3530032263168 : ℚ) / 43980465111040
def gapCoeff5 : ℚ := (3501609615360 : ℚ) / 43980465111040

noncomputable def gapExpansion : ℚ[X] :=
  Polynomial.C gapCoeff0 * bernsteinMonomial 0 5 +
  Polynomial.C gapCoeff1 * bernsteinMonomial 1 4 +
  Polynomial.C gapCoeff2 * bernsteinMonomial 2 3 +
  Polynomial.C gapCoeff3 * bernsteinMonomial 3 2 +
  Polynomial.C gapCoeff4 * bernsteinMonomial 4 1 +
  Polynomial.C gapCoeff5 * bernsteinMonomial 5 0

theorem seed_parameter_bounds : 0 < seedD ∧ seedD < seedC ∧
    0 < seedZ ∧ seedZ < (seedD : ℚ) / (seedC : ℚ) := by
  norm_num [seedC, seedD, seedZ]

theorem leaf_interval_bounds : 0 ≤ leafA ∧ leafA < leafB ∧ leafB ≤ 1 := by
  norm_num [leafA, leafB]

theorem lam_pos : 0 < lam := by
  norm_num [lam]

theorem actual_gap_eq : Polynomial.C lam - localCore = gapExpansion := by
  apply Polynomial.funext
  intro x
  norm_num [lam, localCore, seedCore, qSeedCore, qSeedC, qSeedD, qSeedZ,
    Math.B699.GrowthLeaf.qCore, Math.B699.GrowthLeaf.qFactor, seedC, seedD, seedZ,
    leafMap, affine, leafA, leafB, gapExpansion,
    gapCoeff0, gapCoeff1, gapCoeff2, gapCoeff3, gapCoeff4, gapCoeff5,
    bernsteinMonomial, Polynomial.eval_comp, Polynomial.eval_add, Polynomial.eval_sub,
    Polynomial.eval_mul, Polynomial.eval_pow, Polynomial.eval_C, Polynomial.eval_X] <;> ring

theorem leafMap_eq_path : leafMap = ((((halfLeft).comp halfLeft).comp halfRight).comp halfRight).comp halfRight := by
  apply Polynomial.funext
  intro x
  norm_num [leafMap, affine, leafA, leafB, halfLeft, halfRight,
    Polynomial.eval_comp, Polynomial.eval_add, Polynomial.eval_sub,
    Polynomial.eval_mul, Polynomial.eval_C, Polynomial.eval_X] <;> ring


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
  exact BernsteinCone.add (BernsteinCone.add (BernsteinCone.add (BernsteinCone.add (BernsteinCone.add (h0) h1) h2) h3) h4) h5

theorem local_gap_cone : BernsteinCone (Polynomial.C lam - localCore) := by
  rw [actual_gap_eq]
  exact gapExpansion_cone

theorem local_core_cone : BernsteinCone localCore := by
  exact cone_comp_affine (cone_qCore seedC seedD seedZ (by norm_num [seedZ]))
    leafA leafB (by norm_num [leafA]) (by norm_num [leafA, leafB]) (by norm_num [leafB])

theorem local_weight0_cone : BernsteinCone localWeight0 := by
  exact cone_comp_affine (cone_qWeight seedC seedD 0 seedZ (by norm_num [seedZ]))
    leafA leafB (by norm_num [leafA]) (by norm_num [leafA, leafB]) (by norm_num [leafB])

theorem local_weight1_cone : BernsteinCone localWeight1 := by
  exact cone_comp_affine (cone_qWeight seedC seedD 1 seedZ (by norm_num [seedZ]))
    leafA leafB (by norm_num [leafA]) (by norm_num [leafA, leafB]) (by norm_num [leafB])

theorem leaf_delta0 : GrowthTree lam localWeight0 localCore := by
  exact GrowthTree.leaf (lam := lam) (w := localWeight0) (f := localCore)
    local_weight0_cone local_core_cone local_gap_cone

theorem leaf_delta1 : GrowthTree lam localWeight1 localCore := by
  exact GrowthTree.leaf (lam := lam) (w := localWeight1) (f := localCore)
    local_weight1_cone local_core_cone local_gap_cone

end Math.B699.GrowthTreeRow00Candidate.QLeaf010

#print axioms Math.B699.GrowthTreeRow00Candidate.QLeaf010.actual_gap_eq
#print axioms Math.B699.GrowthTreeRow00Candidate.QLeaf010.leafMap_eq_path
#print axioms Math.B699.GrowthTreeRow00Candidate.QLeaf010.gapExpansion_cone
#print axioms Math.B699.GrowthTreeRow00Candidate.QLeaf010.local_gap_cone
#print axioms Math.B699.GrowthTreeRow00Candidate.QLeaf010.local_core_cone
#print axioms Math.B699.GrowthTreeRow00Candidate.QLeaf010.local_weight0_cone
#print axioms Math.B699.GrowthTreeRow00Candidate.QLeaf010.local_weight1_cone
#print axioms Math.B699.GrowthTreeRow00Candidate.QLeaf010.leaf_delta0
#print axioms Math.B699.GrowthTreeRow00Candidate.QLeaf010.leaf_delta1
namespace Math.B699.GrowthTreeRow00Candidate.QLeaf011


open Polynomial Math.B699.PadeMoment Math.B699.PadeGrowthPartition Math.B699.GrowthLeaf
open Math.B699.GrowthTreeRow00Candidate.Shared

local instance : Infinite ℚ :=
  Infinite.of_injective (fun n : ℕ => (n : ℚ)) Nat.cast_injective

def seedC : ℕ := 3
def seedD : ℕ := 2
def seedZ : ℚ := (5 : ℚ) / 512
def leafA : ℚ := (1 : ℚ) / 4
def leafB : ℚ := (1 : ℚ) / 2
def lam : ℚ := (3261099431701357391524367497 : ℚ) / 39614081257132168796771975168

noncomputable def seedCore : ℚ[X] := qSeedCore
noncomputable def seedWeight0 : ℚ[X] := qSeedWeight0
noncomputable def seedWeight1 : ℚ[X] := qSeedWeight1
noncomputable def leafMap : ℚ[X] := affine leafA leafB
noncomputable def localCore : ℚ[X] := seedCore.comp leafMap
noncomputable def localWeight0 : ℚ[X] := seedWeight0.comp leafMap
noncomputable def localWeight1 : ℚ[X] := seedWeight1.comp leafMap

def gapCoeff0 : ℚ := (106860645 : ℚ) / 1342177280
def gapCoeff1 : ℚ := (99921522 : ℚ) / 1342177280
def gapCoeff2 : ℚ := (85858556 : ℚ) / 1342177280
def gapCoeff3 : ℚ := (70151096 : ℚ) / 1342177280
def gapCoeff4 : ℚ := (55430672 : ℚ) / 1342177280
def gapCoeff5 : ℚ := (42766240 : ℚ) / 1342177280

noncomputable def gapExpansion : ℚ[X] :=
  Polynomial.C gapCoeff0 * bernsteinMonomial 0 5 +
  Polynomial.C gapCoeff1 * bernsteinMonomial 1 4 +
  Polynomial.C gapCoeff2 * bernsteinMonomial 2 3 +
  Polynomial.C gapCoeff3 * bernsteinMonomial 3 2 +
  Polynomial.C gapCoeff4 * bernsteinMonomial 4 1 +
  Polynomial.C gapCoeff5 * bernsteinMonomial 5 0

theorem seed_parameter_bounds : 0 < seedD ∧ seedD < seedC ∧
    0 < seedZ ∧ seedZ < (seedD : ℚ) / (seedC : ℚ) := by
  norm_num [seedC, seedD, seedZ]

theorem leaf_interval_bounds : 0 ≤ leafA ∧ leafA < leafB ∧ leafB ≤ 1 := by
  norm_num [leafA, leafB]

theorem lam_pos : 0 < lam := by
  norm_num [lam]

theorem actual_gap_eq : Polynomial.C lam - localCore = gapExpansion := by
  apply Polynomial.funext
  intro x
  norm_num [lam, localCore, seedCore, qSeedCore, qSeedC, qSeedD, qSeedZ,
    Math.B699.GrowthLeaf.qCore, Math.B699.GrowthLeaf.qFactor, seedC, seedD, seedZ,
    leafMap, affine, leafA, leafB, gapExpansion,
    gapCoeff0, gapCoeff1, gapCoeff2, gapCoeff3, gapCoeff4, gapCoeff5,
    bernsteinMonomial, Polynomial.eval_comp, Polynomial.eval_add, Polynomial.eval_sub,
    Polynomial.eval_mul, Polynomial.eval_pow, Polynomial.eval_C, Polynomial.eval_X] <;> ring

theorem leafMap_eq_path : leafMap = (halfLeft).comp halfRight := by
  apply Polynomial.funext
  intro x
  norm_num [leafMap, affine, leafA, leafB, halfLeft, halfRight,
    Polynomial.eval_comp, Polynomial.eval_add, Polynomial.eval_sub,
    Polynomial.eval_mul, Polynomial.eval_C, Polynomial.eval_X] <;> ring


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
  exact BernsteinCone.add (BernsteinCone.add (BernsteinCone.add (BernsteinCone.add (BernsteinCone.add (h0) h1) h2) h3) h4) h5

theorem local_gap_cone : BernsteinCone (Polynomial.C lam - localCore) := by
  rw [actual_gap_eq]
  exact gapExpansion_cone

theorem local_core_cone : BernsteinCone localCore := by
  exact cone_comp_affine (cone_qCore seedC seedD seedZ (by norm_num [seedZ]))
    leafA leafB (by norm_num [leafA]) (by norm_num [leafA, leafB]) (by norm_num [leafB])

theorem local_weight0_cone : BernsteinCone localWeight0 := by
  exact cone_comp_affine (cone_qWeight seedC seedD 0 seedZ (by norm_num [seedZ]))
    leafA leafB (by norm_num [leafA]) (by norm_num [leafA, leafB]) (by norm_num [leafB])

theorem local_weight1_cone : BernsteinCone localWeight1 := by
  exact cone_comp_affine (cone_qWeight seedC seedD 1 seedZ (by norm_num [seedZ]))
    leafA leafB (by norm_num [leafA]) (by norm_num [leafA, leafB]) (by norm_num [leafB])

theorem leaf_delta0 : GrowthTree lam localWeight0 localCore := by
  exact GrowthTree.leaf (lam := lam) (w := localWeight0) (f := localCore)
    local_weight0_cone local_core_cone local_gap_cone

theorem leaf_delta1 : GrowthTree lam localWeight1 localCore := by
  exact GrowthTree.leaf (lam := lam) (w := localWeight1) (f := localCore)
    local_weight1_cone local_core_cone local_gap_cone

end Math.B699.GrowthTreeRow00Candidate.QLeaf011

#print axioms Math.B699.GrowthTreeRow00Candidate.QLeaf011.actual_gap_eq
#print axioms Math.B699.GrowthTreeRow00Candidate.QLeaf011.leafMap_eq_path
#print axioms Math.B699.GrowthTreeRow00Candidate.QLeaf011.gapExpansion_cone
#print axioms Math.B699.GrowthTreeRow00Candidate.QLeaf011.local_gap_cone
#print axioms Math.B699.GrowthTreeRow00Candidate.QLeaf011.local_core_cone
#print axioms Math.B699.GrowthTreeRow00Candidate.QLeaf011.local_weight0_cone
#print axioms Math.B699.GrowthTreeRow00Candidate.QLeaf011.local_weight1_cone
#print axioms Math.B699.GrowthTreeRow00Candidate.QLeaf011.leaf_delta0
#print axioms Math.B699.GrowthTreeRow00Candidate.QLeaf011.leaf_delta1
namespace Math.B699.GrowthTreeRow00Candidate.QLeaf012


open Polynomial Math.B699.PadeMoment Math.B699.PadeGrowthPartition Math.B699.GrowthLeaf
open Math.B699.GrowthTreeRow00Candidate.Shared

local instance : Infinite ℚ :=
  Infinite.of_injective (fun n : ℕ => (n : ℚ)) Nat.cast_injective

def seedC : ℕ := 3
def seedD : ℕ := 2
def seedZ : ℚ := (5 : ℚ) / 512
def leafA : ℚ := (1 : ℚ) / 2
def leafB : ℚ := (1 : ℚ)
def lam : ℚ := (3261099431701357391524367497 : ℚ) / 39614081257132168796771975168

noncomputable def seedCore : ℚ[X] := qSeedCore
noncomputable def seedWeight0 : ℚ[X] := qSeedWeight0
noncomputable def seedWeight1 : ℚ[X] := qSeedWeight1
noncomputable def leafMap : ℚ[X] := affine leafA leafB
noncomputable def localCore : ℚ[X] := seedCore.comp leafMap
noncomputable def localWeight0 : ℚ[X] := seedWeight0.comp leafMap
noncomputable def localWeight1 : ℚ[X] := seedWeight1.comp leafMap

def gapCoeff0 : ℚ := (1336445 : ℚ) / 41943040
def gapCoeff1 : ℚ := (544918 : ℚ) / 41943040
def gapCoeff2 : ℚ := (10390 : ℚ) / 41943040
def gapCoeff3 : ℚ := (100 : ℚ) / 41943040
def gapCoeff4 : ℚ := (0 : ℚ) / 41943040
def gapCoeff5 : ℚ := (0 : ℚ) / 41943040

noncomputable def gapExpansion : ℚ[X] :=
  Polynomial.C gapCoeff0 * bernsteinMonomial 0 5 +
  Polynomial.C gapCoeff1 * bernsteinMonomial 1 4 +
  Polynomial.C gapCoeff2 * bernsteinMonomial 2 3 +
  Polynomial.C gapCoeff3 * bernsteinMonomial 3 2 +
  Polynomial.C gapCoeff4 * bernsteinMonomial 4 1 +
  Polynomial.C gapCoeff5 * bernsteinMonomial 5 0

theorem seed_parameter_bounds : 0 < seedD ∧ seedD < seedC ∧
    0 < seedZ ∧ seedZ < (seedD : ℚ) / (seedC : ℚ) := by
  norm_num [seedC, seedD, seedZ]

theorem leaf_interval_bounds : 0 ≤ leafA ∧ leafA < leafB ∧ leafB ≤ 1 := by
  norm_num [leafA, leafB]

theorem lam_pos : 0 < lam := by
  norm_num [lam]

theorem actual_gap_eq : Polynomial.C lam - localCore = gapExpansion := by
  apply Polynomial.funext
  intro x
  norm_num [lam, localCore, seedCore, qSeedCore, qSeedC, qSeedD, qSeedZ,
    Math.B699.GrowthLeaf.qCore, Math.B699.GrowthLeaf.qFactor, seedC, seedD, seedZ,
    leafMap, affine, leafA, leafB, gapExpansion,
    gapCoeff0, gapCoeff1, gapCoeff2, gapCoeff3, gapCoeff4, gapCoeff5,
    bernsteinMonomial, Polynomial.eval_comp, Polynomial.eval_add, Polynomial.eval_sub,
    Polynomial.eval_mul, Polynomial.eval_pow, Polynomial.eval_C, Polynomial.eval_X] <;> ring

theorem leafMap_eq_path : leafMap = halfRight := by
  apply Polynomial.funext
  intro x
  norm_num [leafMap, affine, leafA, leafB, halfLeft, halfRight,
    Polynomial.eval_comp, Polynomial.eval_add, Polynomial.eval_sub,
    Polynomial.eval_mul, Polynomial.eval_C, Polynomial.eval_X] <;> ring


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
  exact BernsteinCone.add (BernsteinCone.add (BernsteinCone.add (BernsteinCone.add (BernsteinCone.add (h0) h1) h2) h3) h4) h5

theorem local_gap_cone : BernsteinCone (Polynomial.C lam - localCore) := by
  rw [actual_gap_eq]
  exact gapExpansion_cone

theorem local_core_cone : BernsteinCone localCore := by
  exact cone_comp_affine (cone_qCore seedC seedD seedZ (by norm_num [seedZ]))
    leafA leafB (by norm_num [leafA]) (by norm_num [leafA, leafB]) (by norm_num [leafB])

theorem local_weight0_cone : BernsteinCone localWeight0 := by
  exact cone_comp_affine (cone_qWeight seedC seedD 0 seedZ (by norm_num [seedZ]))
    leafA leafB (by norm_num [leafA]) (by norm_num [leafA, leafB]) (by norm_num [leafB])

theorem local_weight1_cone : BernsteinCone localWeight1 := by
  exact cone_comp_affine (cone_qWeight seedC seedD 1 seedZ (by norm_num [seedZ]))
    leafA leafB (by norm_num [leafA]) (by norm_num [leafA, leafB]) (by norm_num [leafB])

theorem leaf_delta0 : GrowthTree lam localWeight0 localCore := by
  exact GrowthTree.leaf (lam := lam) (w := localWeight0) (f := localCore)
    local_weight0_cone local_core_cone local_gap_cone

theorem leaf_delta1 : GrowthTree lam localWeight1 localCore := by
  exact GrowthTree.leaf (lam := lam) (w := localWeight1) (f := localCore)
    local_weight1_cone local_core_cone local_gap_cone

end Math.B699.GrowthTreeRow00Candidate.QLeaf012

#print axioms Math.B699.GrowthTreeRow00Candidate.QLeaf012.actual_gap_eq
#print axioms Math.B699.GrowthTreeRow00Candidate.QLeaf012.leafMap_eq_path
#print axioms Math.B699.GrowthTreeRow00Candidate.QLeaf012.gapExpansion_cone
#print axioms Math.B699.GrowthTreeRow00Candidate.QLeaf012.local_gap_cone
#print axioms Math.B699.GrowthTreeRow00Candidate.QLeaf012.local_core_cone
#print axioms Math.B699.GrowthTreeRow00Candidate.QLeaf012.local_weight0_cone
#print axioms Math.B699.GrowthTreeRow00Candidate.QLeaf012.local_weight1_cone
#print axioms Math.B699.GrowthTreeRow00Candidate.QLeaf012.leaf_delta0
#print axioms Math.B699.GrowthTreeRow00Candidate.QLeaf012.leaf_delta1

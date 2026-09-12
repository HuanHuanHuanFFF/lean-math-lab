import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Growth.Row00CandidateShared
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

def gapCoeff0 : ℚ := (350364030973138727963167881 : ℚ) / 39614081257132168796771975168
def gapCoeff1 : ℚ := (1123456764910294446971666093 : ℚ) / 39614081257132168796771975168
def gapCoeff2 : ℚ := (657787997993347384368807597 : ℚ) / 19807040628566084398385987584
def gapCoeff3 : ℚ := (334871818695910261047541421 : ℚ) / 19807040628566084398385987584
def gapCoeff4 : ℚ := (136778294132001975982735021 : ℚ) / 39614081257132168796771975168
def gapCoeff5 : ℚ := (9480874124740792940727433 : ℚ) / 39614081257132168796771975168

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

def gapCoeff0 : ℚ := (9480874124740792940727433 : ℚ) / 39614081257132168796771975168
def gapCoeff1 : ℚ := (36232630185166713293749933 : ℚ) / 39614081257132168796771975168
def gapCoeff2 : ℚ := (26759633513123372411764397 : ℚ) / 19807040628566084398385987584
def gapCoeff3 : ℚ := (18953929330859257361448621 : ℚ) / 19807040628566084398385987584
def gapCoeff4 : ℚ := (12784512377091339339284141 : ℚ) / 39614081257132168796771975168
def gapCoeff5 : ℚ := (1644163550680191454121097 : ℚ) / 39614081257132168796771975168

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

def gapCoeff0 : ℚ := (1644163550680191454121097 : ℚ) / 39614081257132168796771975168
def gapCoeff1 : ℚ := (5938970441555766236266157 : ℚ) / 39614081257132168796771975168
def gapCoeff2 : ℚ := (4058553712229959190298285 : ℚ) / 19807040628566084398385987584
def gapCoeff3 : ℚ := (2575746953121203498368685 : ℚ) / 19807040628566084398385987584
def gapCoeff4 : ℚ := (1486757074606189509197485 : ℚ) / 39614081257132168796771975168
def gapCoeff5 : ℚ := (157563666619580559887497 : ℚ) / 39614081257132168796771975168

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

def gapCoeff0 : ℚ := (157563666619580559887497 : ℚ) / 39614081257132168796771975168
def gapCoeff1 : ℚ := (613083647720831121997485 : ℚ) / 39614081257132168796771975168
def gapCoeff2 : ℚ := (462727158406679899520685 : ℚ) / 19807040628566084398385987584
def gapCoeff3 : ℚ := (336690025411902031642285 : ℚ) / 19807040628566084398385987584
def gapCoeff4 : ℚ := (234913515813404696231597 : ℚ) / 39614081257132168796771975168
def gapCoeff5 : ℚ := (31467800667209337113737 : ℚ) / 39614081257132168796771975168

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

def gapCoeff0 : ℚ := (31467800667209337113737 : ℚ) / 39614081257132168796771975168
def gapCoeff1 : ℚ := (118551747097367680237229 : ℚ) / 39614081257132168796771975168
def gapCoeff2 : ℚ := (85814990138973506092717 : ℚ) / 19807040628566084398385987584
def gapCoeff3 : ℚ := (59121404176471512170157 : ℚ) / 19807040628566084398385987584
def gapCoeff4 : ℚ := (38463667590966023405229 : ℚ) / 39614081257132168796771975168
def gapCoeff5 : ℚ := (4766893084733526477961 : ℚ) / 39614081257132168796771975168

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

def gapCoeff0 : ℚ := (4766893084733526477961 : ℚ) / 39614081257132168796771975168
def gapCoeff1 : ℚ := (16519864340018436882093 : ℚ) / 39614081257132168796771975168
def gapCoeff2 : ℚ := (10712396860921015811757 : ℚ) / 19807040628566084398385987584
def gapCoeff3 : ℚ := (6411148616526693252781 : ℚ) / 19807040628566084398385987584
def gapCoeff4 : ℚ := (3615205653243435007661 : ℚ) / 39614081257132168796771975168
def gapCoeff5 : ℚ := (464730886713477794953 : ℚ) / 39614081257132168796771975168

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

def gapCoeff0 : ℚ := (464730886713477794953 : ℚ) / 39614081257132168796771975168
def gapCoeff1 : ℚ := (1032103213891342941869 : ℚ) / 39614081257132168796771975168
def gapCoeff2 : ℚ := (1244943737822509121197 : ℚ) / 19807040628566084398385987584
def gapCoeff3 : ℚ := (2961262467857035411117 : ℚ) / 19807040628566084398385987584
def gapCoeff4 : ℚ := (6180146282579251805869 : ℚ) / 39614081257132168796771975168
def gapCoeff5 : ℚ := (2180136495298642152585 : ℚ) / 39614081257132168796771975168

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

def gapCoeff0 : ℚ := (2180136495298642152585 : ℚ) / 39614081257132168796771975168
def gapCoeff1 : ℚ := (48664972027804882419373 : ℚ) / 39614081257132168796771975168
def gapCoeff2 : ℚ := (182535013847388078063277 : ℚ) / 19807040628566084398385987584
def gapCoeff3 : ℚ := (412043502721317655920301 : ℚ) / 19807040628566084398385987584
def gapCoeff4 : ℚ := (736724837042851683614381 : ℚ) / 39614081257132168796771975168
def gapCoeff5 : ℚ := (231223022658469239164041 : ℚ) / 39614081257132168796771975168

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

def gapCoeff0 : ℚ := (231223022658469239164041 : ℚ) / 39614081257132168796771975168
def gapCoeff1 : ℚ := (4511237323288302293466797 : ℚ) / 39614081257132168796771975168
def gapCoeff2 : ℚ := (13927731816673729399865005 : ℚ) / 19807040628566084398385987584
def gapCoeff3 : ℚ := (29168079991390917268455085 : ℚ) / 19807040628566084398385987584
def gapCoeff4 : ℚ := (50001718610135428692557485 : ℚ) / 39614081257132168796771975168
def gapCoeff5 : ℚ := (15240971783640575652367497 : ℚ) / 39614081257132168796771975168

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

def gapCoeff0 : ℚ := (15240971783640575652367497 : ℚ) / 39614081257132168796771975168
def gapCoeff1 : ℚ := (128611139534337777400397485 : ℚ) / 39614081257132168796771975168
def gapCoeff2 : ℚ := (202495426907764429119667885 : ℚ) / 19807040628566084398385987584
def gapCoeff3 : ℚ := (296067411000847750136970925 : ℚ) / 19807040628566084398385987584
def gapCoeff4 : ℚ := (407645173497553485911146157 : ℚ) / 39614081257132168796771975168
def gapCoeff5 : ℚ := (107129879914909026169883785 : ℚ) / 39614081257132168796771975168

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

def gapCoeff0 : ℚ := (107129879914909026169883785 : ℚ) / 39614081257132168796771975168
def gapCoeff1 : ℚ := (1559683208190478290355601069 : ℚ) / 39614081257132168796771975168
def gapCoeff2 : ℚ := (3635010685944709636364025517 : ℚ) / 19807040628566084398385987584
def gapCoeff3 : ℚ := (5953022643288948305374068397 : ℚ) / 19807040628566084398385987584
def gapCoeff4 : ℚ := (8125373796764883126473309869 : ℚ) / 39614081257132168796771975168
def gapCoeff5 : ℚ := (1998862816861612792000777353 : ℚ) / 39614081257132168796771975168

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

def gapCoeff0 : ℚ := (1998862816861612792000777353 : ℚ) / 39614081257132168796771975168
def gapCoeff1 : ℚ := (13732194659394425627065040557 : ℚ) / 39614081257132168796771975168
def gapCoeff2 : ℚ := (16256431770749771343851536045 : ℚ) / 19807040628566084398385987584
def gapCoeff3 : ℚ := (16305024921858499993100467885 : ℚ) / 19807040628566084398385987584
def gapCoeff4 : ℚ := (16305497158506786957621837485 : ℚ) / 39614081257132168796771975168
def gapCoeff5 : ℚ := (3261099431701357391524367497 : ℚ) / 39614081257132168796771975168

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

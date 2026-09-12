import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Growth.Affine
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Growth.Partition
import Mathlib.Algebra.Polynomial.Roots
import Mathlib.Tactic.NormNum
import Mathlib.Tactic.Ring
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Growth.I11FiveSevenShared

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace Math.B699.I11FiveSevenGrowth.QLeaf008


open Polynomial Math.B699.PadeMoment Math.B699.PadeGrowthPartition Math.B699.GrowthLeaf
open Math.B699.I11FiveSevenGrowth.Shared

local instance : Infinite ℚ :=
  Infinite.of_injective (fun n : ℕ => (n : ℚ)) Nat.cast_injective

def seedC : ℕ := 11
def seedD : ℕ := 7
def seedZ : ℚ := (1 : ℚ) / 50
def leafA : ℚ := (1 : ℚ) / 4
def leafB : ℚ := (1 : ℚ) / 2
def lam : ℚ := (5962730782212565018186393 : ℚ) / 79228162514264337593543950336

noncomputable def seedCore : ℚ[X] := qSeedCore
noncomputable def seedWeight0 : ℚ[X] := qSeedWeight0
noncomputable def seedWeight1 : ℚ[X] := qSeedWeight1
noncomputable def leafMap : ℚ[X] := affine leafA leafB
noncomputable def localCore : ℚ[X] := seedCore.comp leafMap
noncomputable def localWeight0 : ℚ[X] := seedWeight0.comp leafMap
noncomputable def localWeight1 : ℚ[X] := seedWeight1.comp leafMap

def gapCoeff0 : ℚ := (1134036481876120780271805441721921 : ℚ) / 483570327845851669882470400000000000000
def gapCoeff1 : ℚ := (4173964568065169120824500883521141 : ℚ) / 48357032784585166988247040000000000000
def gapCoeff2 : ℚ := (626842954979790708342612221846420697 : ℚ) / 483570327845851669882470400000000000000
def gapCoeff3 : ℚ := (323725454962002113710441582618935027 : ℚ) / 30223145490365729367654400000000000000
def gapCoeff4 : ℚ := (54661800479294531764034636121471681 : ℚ) / 967140655691703339764940800000000000
def gapCoeff5 : ℚ := (12539425482146231830112754691651332591 : ℚ) / 60446290980731458735308800000000000000
def gapCoeff6 : ℚ := (13502108486617746160327593840273635757 : ℚ) / 24178516392292583494123520000000000000
def gapCoeff7 : ℚ := (34481683520513869764142341341177239301 : ℚ) / 30223145490365729367654400000000000000
def gapCoeff8 : ℚ := (437377871443519696761923199703885888823 : ℚ) / 241785163922925834941235200000000000000
def gapCoeff9 : ℚ := (54573992311198483714463283328160113471 : ℚ) / 24178516392292583494123520000000000000
def gapCoeff10 : ℚ := (107967632655175822150492870196904712459 : ℚ) / 48357032784585166988247040000000000000
def gapCoeff11 : ℚ := (10600103512336539980736661250938252033 : ℚ) / 6044629098073145873530880000000000000
def gapCoeff12 : ℚ := (26329511337948717495076008766270716333 : ℚ) / 24178516392292583494123520000000000000
def gapCoeff13 : ℚ := (6392049933690224248505024802808645731 : ℚ) / 12089258196146291747061760000000000000
def gapCoeff14 : ℚ := (4756771444148274845016789576242232537 : ℚ) / 24178516392292583494123520000000000000
def gapCoeff15 : ℚ := (1638814070731031558676564829799382771 : ℚ) / 30223145490365729367654400000000000000
def gapCoeff16 : ℚ := (201937208481921322400290615887231681 : ℚ) / 19342813113834066795298816000000000000
def gapCoeff17 : ℚ := (303320065569556788389523574849108041 : ℚ) / 241785163922925834941235200000000000000
def gapCoeff18 : ℚ := (34274669443676417114381656283366977 : ℚ) / 483570327845851669882470400000000000000

noncomputable def gapExpansion : ℚ[X] :=
  Polynomial.C gapCoeff0 * bernsteinMonomial 0 18 +
  Polynomial.C gapCoeff1 * bernsteinMonomial 1 17 +
  Polynomial.C gapCoeff2 * bernsteinMonomial 2 16 +
  Polynomial.C gapCoeff3 * bernsteinMonomial 3 15 +
  Polynomial.C gapCoeff4 * bernsteinMonomial 4 14 +
  Polynomial.C gapCoeff5 * bernsteinMonomial 5 13 +
  Polynomial.C gapCoeff6 * bernsteinMonomial 6 12 +
  Polynomial.C gapCoeff7 * bernsteinMonomial 7 11 +
  Polynomial.C gapCoeff8 * bernsteinMonomial 8 10 +
  Polynomial.C gapCoeff9 * bernsteinMonomial 9 9 +
  Polynomial.C gapCoeff10 * bernsteinMonomial 10 8 +
  Polynomial.C gapCoeff11 * bernsteinMonomial 11 7 +
  Polynomial.C gapCoeff12 * bernsteinMonomial 12 6 +
  Polynomial.C gapCoeff13 * bernsteinMonomial 13 5 +
  Polynomial.C gapCoeff14 * bernsteinMonomial 14 4 +
  Polynomial.C gapCoeff15 * bernsteinMonomial 15 3 +
  Polynomial.C gapCoeff16 * bernsteinMonomial 16 2 +
  Polynomial.C gapCoeff17 * bernsteinMonomial 17 1 +
  Polynomial.C gapCoeff18 * bernsteinMonomial 18 0

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
    Math.B699.GrowthLeaf.qCore, Math.B699.GrowthLeaf.qFactor, seedC, seedD, seedZ, leafMap, affine, leafA, leafB, gapExpansion,
    gapCoeff0, gapCoeff1, gapCoeff2, gapCoeff3, gapCoeff4, gapCoeff5, gapCoeff6, gapCoeff7, gapCoeff8, gapCoeff9, gapCoeff10, gapCoeff11, gapCoeff12, gapCoeff13, gapCoeff14, gapCoeff15, gapCoeff16, gapCoeff17, gapCoeff18,
    bernsteinMonomial, Polynomial.eval_comp, Polynomial.eval_add, Polynomial.eval_sub,
    Polynomial.eval_mul, Polynomial.eval_pow, Polynomial.eval_C, Polynomial.eval_X] <;> ring

theorem leafMap_eq_path : leafMap = (halfLeft).comp halfRight := by
  apply Polynomial.funext
  intro x
  norm_num [leafMap, affine, leafA, leafB, halfLeft, halfRight,
    Polynomial.eval_comp, Polynomial.eval_add, Polynomial.eval_sub,
    Polynomial.eval_mul, Polynomial.eval_C, Polynomial.eval_X] <;> ring

theorem gapExpansion_cone : BernsteinCone gapExpansion := by
  have h0 : BernsteinCone (Polynomial.C gapCoeff0 * bernsteinMonomial 0 18) :=
    BernsteinCone.scale gapCoeff0 (by norm_num [gapCoeff0]) (BernsteinCone.basis 0 18)
  have h1 : BernsteinCone (Polynomial.C gapCoeff1 * bernsteinMonomial 1 17) :=
    BernsteinCone.scale gapCoeff1 (by norm_num [gapCoeff1]) (BernsteinCone.basis 1 17)
  have h2 : BernsteinCone (Polynomial.C gapCoeff2 * bernsteinMonomial 2 16) :=
    BernsteinCone.scale gapCoeff2 (by norm_num [gapCoeff2]) (BernsteinCone.basis 2 16)
  have h3 : BernsteinCone (Polynomial.C gapCoeff3 * bernsteinMonomial 3 15) :=
    BernsteinCone.scale gapCoeff3 (by norm_num [gapCoeff3]) (BernsteinCone.basis 3 15)
  have h4 : BernsteinCone (Polynomial.C gapCoeff4 * bernsteinMonomial 4 14) :=
    BernsteinCone.scale gapCoeff4 (by norm_num [gapCoeff4]) (BernsteinCone.basis 4 14)
  have h5 : BernsteinCone (Polynomial.C gapCoeff5 * bernsteinMonomial 5 13) :=
    BernsteinCone.scale gapCoeff5 (by norm_num [gapCoeff5]) (BernsteinCone.basis 5 13)
  have h6 : BernsteinCone (Polynomial.C gapCoeff6 * bernsteinMonomial 6 12) :=
    BernsteinCone.scale gapCoeff6 (by norm_num [gapCoeff6]) (BernsteinCone.basis 6 12)
  have h7 : BernsteinCone (Polynomial.C gapCoeff7 * bernsteinMonomial 7 11) :=
    BernsteinCone.scale gapCoeff7 (by norm_num [gapCoeff7]) (BernsteinCone.basis 7 11)
  have h8 : BernsteinCone (Polynomial.C gapCoeff8 * bernsteinMonomial 8 10) :=
    BernsteinCone.scale gapCoeff8 (by norm_num [gapCoeff8]) (BernsteinCone.basis 8 10)
  have h9 : BernsteinCone (Polynomial.C gapCoeff9 * bernsteinMonomial 9 9) :=
    BernsteinCone.scale gapCoeff9 (by norm_num [gapCoeff9]) (BernsteinCone.basis 9 9)
  have h10 : BernsteinCone (Polynomial.C gapCoeff10 * bernsteinMonomial 10 8) :=
    BernsteinCone.scale gapCoeff10 (by norm_num [gapCoeff10]) (BernsteinCone.basis 10 8)
  have h11 : BernsteinCone (Polynomial.C gapCoeff11 * bernsteinMonomial 11 7) :=
    BernsteinCone.scale gapCoeff11 (by norm_num [gapCoeff11]) (BernsteinCone.basis 11 7)
  have h12 : BernsteinCone (Polynomial.C gapCoeff12 * bernsteinMonomial 12 6) :=
    BernsteinCone.scale gapCoeff12 (by norm_num [gapCoeff12]) (BernsteinCone.basis 12 6)
  have h13 : BernsteinCone (Polynomial.C gapCoeff13 * bernsteinMonomial 13 5) :=
    BernsteinCone.scale gapCoeff13 (by norm_num [gapCoeff13]) (BernsteinCone.basis 13 5)
  have h14 : BernsteinCone (Polynomial.C gapCoeff14 * bernsteinMonomial 14 4) :=
    BernsteinCone.scale gapCoeff14 (by norm_num [gapCoeff14]) (BernsteinCone.basis 14 4)
  have h15 : BernsteinCone (Polynomial.C gapCoeff15 * bernsteinMonomial 15 3) :=
    BernsteinCone.scale gapCoeff15 (by norm_num [gapCoeff15]) (BernsteinCone.basis 15 3)
  have h16 : BernsteinCone (Polynomial.C gapCoeff16 * bernsteinMonomial 16 2) :=
    BernsteinCone.scale gapCoeff16 (by norm_num [gapCoeff16]) (BernsteinCone.basis 16 2)
  have h17 : BernsteinCone (Polynomial.C gapCoeff17 * bernsteinMonomial 17 1) :=
    BernsteinCone.scale gapCoeff17 (by norm_num [gapCoeff17]) (BernsteinCone.basis 17 1)
  have h18 : BernsteinCone (Polynomial.C gapCoeff18 * bernsteinMonomial 18 0) :=
    BernsteinCone.scale gapCoeff18 (by norm_num [gapCoeff18]) (BernsteinCone.basis 18 0)
  exact BernsteinCone.add (BernsteinCone.add (BernsteinCone.add (BernsteinCone.add (BernsteinCone.add (BernsteinCone.add (BernsteinCone.add (BernsteinCone.add (BernsteinCone.add (BernsteinCone.add (BernsteinCone.add (BernsteinCone.add (BernsteinCone.add (BernsteinCone.add (BernsteinCone.add (BernsteinCone.add (BernsteinCone.add (BernsteinCone.add (h0) h1) h2) h3) h4) h5) h6) h7) h8) h9) h10) h11) h12) h13) h14) h15) h16) h17) h18

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

end Math.B699.I11FiveSevenGrowth.QLeaf008

#print axioms Math.B699.I11FiveSevenGrowth.QLeaf008.actual_gap_eq
#print axioms Math.B699.I11FiveSevenGrowth.QLeaf008.leafMap_eq_path
#print axioms Math.B699.I11FiveSevenGrowth.QLeaf008.gapExpansion_cone
#print axioms Math.B699.I11FiveSevenGrowth.QLeaf008.local_gap_cone
#print axioms Math.B699.I11FiveSevenGrowth.QLeaf008.local_core_cone
#print axioms Math.B699.I11FiveSevenGrowth.QLeaf008.local_weight0_cone
#print axioms Math.B699.I11FiveSevenGrowth.QLeaf008.local_weight1_cone
#print axioms Math.B699.I11FiveSevenGrowth.QLeaf008.leaf_delta0
#print axioms Math.B699.I11FiveSevenGrowth.QLeaf008.leaf_delta1

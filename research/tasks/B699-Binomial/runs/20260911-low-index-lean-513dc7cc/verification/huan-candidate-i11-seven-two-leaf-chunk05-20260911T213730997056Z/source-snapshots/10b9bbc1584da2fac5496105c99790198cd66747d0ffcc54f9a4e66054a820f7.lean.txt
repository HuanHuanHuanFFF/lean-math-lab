import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Growth.Affine
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Growth.Partition
import Mathlib.Algebra.Polynomial.Roots
import Mathlib.Tactic.NormNum
import Mathlib.Tactic.Ring
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Growth.I11SevenTwoShared

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace Math.B699.I11SevenTwoGrowth.ELeaf002


open Polynomial Math.B699.PadeMoment Math.B699.PadeGrowthPartition Math.B699.GrowthLeaf
open Math.B699.I11SevenTwoGrowth.Shared

local instance : Infinite ℚ :=
  Infinite.of_injective (fun n : ℕ => (n : ℚ)) Nat.cast_injective

def seedC : ℕ := 9
def seedD : ℕ := 5
def seedZ : ℚ := (1 : ℚ) / 49
def leafA : ℚ := (3 : ℚ) / 8
def leafB : ℚ := (7 : ℚ) / 16
def lam : ℚ := (18567076935738840000672813 : ℚ) / 19807040628566084398385987584

noncomputable def seedCore : ℚ[X] := eSeedCore
noncomputable def seedWeight0 : ℚ[X] := eSeedWeight0
noncomputable def seedWeight1 : ℚ[X] := eSeedWeight1
noncomputable def leafMap : ℚ[X] := affine leafA leafB
noncomputable def localCore : ℚ[X] := seedCore.comp leafMap
noncomputable def localWeight0 : ℚ[X] := seedWeight0.comp leafMap
noncomputable def localWeight1 : ℚ[X] := seedWeight1.comp leafMap

def gapCoeff0 : ℚ := (28725999346408621155937346655213 : ℚ) / 114183647622598391905899939610230784
def gapCoeff1 : ℚ := (188231721148018288572541189786491 : ℚ) / 57091823811299195952949969805115392
def gapCoeff2 : ℚ := (2283137609199577629327932992984383 : ℚ) / 114183647622598391905899939610230784
def gapCoeff3 : ℚ := (2122814710232072058117776944600383 : ℚ) / 28545911905649597976474984902557696
def gapCoeff4 : ℚ := (21630525230653128012763852686617013 : ℚ) / 114183647622598391905899939610230784
def gapCoeff5 : ℚ := (19957171966730644193174215215147445 : ℚ) / 57091823811299195952949969805115392
def gapCoeff6 : ℚ := (7857761065255157326692207229232169 : ℚ) / 16311949660371198843699991372890112
def gapCoeff7 : ℚ := (146651015048106211346561661918585 : ℚ) / 291284815363771407923214131658752
def gapCoeff8 : ℚ := (19064278638289448308469950240383 : ℚ) / 47556704549187168640524756189184
def gapCoeff9 : ℚ := (821699432005856462833318546755 : ℚ) / 3396907467799083474323196870656
def gapCoeff10 : ℚ := (105636315580681776704222347749 : ℚ) / 970544990799738135520913391616
def gapCoeff11 : ℚ := (1226855679367709618004186105 : ℚ) / 34662321099990647697175478272
def gapCoeff12 : ℚ := (1089683672441031677529969657 : ℚ) / 138649284399962590788701913088
def gapCoeff13 : ℚ := (10557042827152587673759035 : ℚ) / 9903520314283042199192993792
def gapCoeff14 : ℚ := (1318934196219818410423341 : ℚ) / 19807040628566084398385987584

noncomputable def gapExpansion : ℚ[X] :=
  Polynomial.C gapCoeff0 * bernsteinMonomial 0 14 +
  Polynomial.C gapCoeff1 * bernsteinMonomial 1 13 +
  Polynomial.C gapCoeff2 * bernsteinMonomial 2 12 +
  Polynomial.C gapCoeff3 * bernsteinMonomial 3 11 +
  Polynomial.C gapCoeff4 * bernsteinMonomial 4 10 +
  Polynomial.C gapCoeff5 * bernsteinMonomial 5 9 +
  Polynomial.C gapCoeff6 * bernsteinMonomial 6 8 +
  Polynomial.C gapCoeff7 * bernsteinMonomial 7 7 +
  Polynomial.C gapCoeff8 * bernsteinMonomial 8 6 +
  Polynomial.C gapCoeff9 * bernsteinMonomial 9 5 +
  Polynomial.C gapCoeff10 * bernsteinMonomial 10 4 +
  Polynomial.C gapCoeff11 * bernsteinMonomial 11 3 +
  Polynomial.C gapCoeff12 * bernsteinMonomial 12 2 +
  Polynomial.C gapCoeff13 * bernsteinMonomial 13 1 +
  Polynomial.C gapCoeff14 * bernsteinMonomial 14 0

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
  norm_num [lam, localCore, seedCore, eSeedCore, eSeedC, eSeedD, eSeedZ,
    Math.B699.GrowthLeaf.eCore, Math.B699.GrowthLeaf.eFactor, seedC, seedD, seedZ, leafMap, affine, leafA, leafB, gapExpansion,
    gapCoeff0, gapCoeff1, gapCoeff2, gapCoeff3, gapCoeff4, gapCoeff5, gapCoeff6, gapCoeff7, gapCoeff8, gapCoeff9, gapCoeff10, gapCoeff11, gapCoeff12, gapCoeff13, gapCoeff14,
    bernsteinMonomial, Polynomial.eval_comp, Polynomial.eval_add, Polynomial.eval_sub,
    Polynomial.eval_mul, Polynomial.eval_pow, Polynomial.eval_C, Polynomial.eval_X] <;> ring

theorem leafMap_eq_path : leafMap = (((halfLeft).comp halfRight).comp halfRight).comp halfLeft := by
  apply Polynomial.funext
  intro x
  norm_num [leafMap, affine, leafA, leafB, halfLeft, halfRight,
    Polynomial.eval_comp, Polynomial.eval_add, Polynomial.eval_sub,
    Polynomial.eval_mul, Polynomial.eval_C, Polynomial.eval_X] <;> ring

theorem gapExpansion_cone : BernsteinCone gapExpansion := by
  have h0 : BernsteinCone (Polynomial.C gapCoeff0 * bernsteinMonomial 0 14) :=
    BernsteinCone.scale gapCoeff0 (by norm_num [gapCoeff0]) (BernsteinCone.basis 0 14)
  have h1 : BernsteinCone (Polynomial.C gapCoeff1 * bernsteinMonomial 1 13) :=
    BernsteinCone.scale gapCoeff1 (by norm_num [gapCoeff1]) (BernsteinCone.basis 1 13)
  have h2 : BernsteinCone (Polynomial.C gapCoeff2 * bernsteinMonomial 2 12) :=
    BernsteinCone.scale gapCoeff2 (by norm_num [gapCoeff2]) (BernsteinCone.basis 2 12)
  have h3 : BernsteinCone (Polynomial.C gapCoeff3 * bernsteinMonomial 3 11) :=
    BernsteinCone.scale gapCoeff3 (by norm_num [gapCoeff3]) (BernsteinCone.basis 3 11)
  have h4 : BernsteinCone (Polynomial.C gapCoeff4 * bernsteinMonomial 4 10) :=
    BernsteinCone.scale gapCoeff4 (by norm_num [gapCoeff4]) (BernsteinCone.basis 4 10)
  have h5 : BernsteinCone (Polynomial.C gapCoeff5 * bernsteinMonomial 5 9) :=
    BernsteinCone.scale gapCoeff5 (by norm_num [gapCoeff5]) (BernsteinCone.basis 5 9)
  have h6 : BernsteinCone (Polynomial.C gapCoeff6 * bernsteinMonomial 6 8) :=
    BernsteinCone.scale gapCoeff6 (by norm_num [gapCoeff6]) (BernsteinCone.basis 6 8)
  have h7 : BernsteinCone (Polynomial.C gapCoeff7 * bernsteinMonomial 7 7) :=
    BernsteinCone.scale gapCoeff7 (by norm_num [gapCoeff7]) (BernsteinCone.basis 7 7)
  have h8 : BernsteinCone (Polynomial.C gapCoeff8 * bernsteinMonomial 8 6) :=
    BernsteinCone.scale gapCoeff8 (by norm_num [gapCoeff8]) (BernsteinCone.basis 8 6)
  have h9 : BernsteinCone (Polynomial.C gapCoeff9 * bernsteinMonomial 9 5) :=
    BernsteinCone.scale gapCoeff9 (by norm_num [gapCoeff9]) (BernsteinCone.basis 9 5)
  have h10 : BernsteinCone (Polynomial.C gapCoeff10 * bernsteinMonomial 10 4) :=
    BernsteinCone.scale gapCoeff10 (by norm_num [gapCoeff10]) (BernsteinCone.basis 10 4)
  have h11 : BernsteinCone (Polynomial.C gapCoeff11 * bernsteinMonomial 11 3) :=
    BernsteinCone.scale gapCoeff11 (by norm_num [gapCoeff11]) (BernsteinCone.basis 11 3)
  have h12 : BernsteinCone (Polynomial.C gapCoeff12 * bernsteinMonomial 12 2) :=
    BernsteinCone.scale gapCoeff12 (by norm_num [gapCoeff12]) (BernsteinCone.basis 12 2)
  have h13 : BernsteinCone (Polynomial.C gapCoeff13 * bernsteinMonomial 13 1) :=
    BernsteinCone.scale gapCoeff13 (by norm_num [gapCoeff13]) (BernsteinCone.basis 13 1)
  have h14 : BernsteinCone (Polynomial.C gapCoeff14 * bernsteinMonomial 14 0) :=
    BernsteinCone.scale gapCoeff14 (by norm_num [gapCoeff14]) (BernsteinCone.basis 14 0)
  exact BernsteinCone.add (BernsteinCone.add (BernsteinCone.add (BernsteinCone.add (BernsteinCone.add (BernsteinCone.add (BernsteinCone.add (BernsteinCone.add (BernsteinCone.add (BernsteinCone.add (BernsteinCone.add (BernsteinCone.add (BernsteinCone.add (BernsteinCone.add (h0) h1) h2) h3) h4) h5) h6) h7) h8) h9) h10) h11) h12) h13) h14

theorem local_gap_cone : BernsteinCone (Polynomial.C lam - localCore) := by
  rw [actual_gap_eq]
  exact gapExpansion_cone

theorem local_core_cone : BernsteinCone localCore := by
  exact cone_comp_affine (cone_eCore seedC seedD seedZ (by norm_num [seedZ]))
    leafA leafB (by norm_num [leafA]) (by norm_num [leafA, leafB]) (by norm_num [leafB])

theorem local_weight0_cone : BernsteinCone localWeight0 := by
  exact cone_comp_affine (cone_eWeight seedC seedD 0 seedZ (by norm_num [seedZ]))
    leafA leafB (by norm_num [leafA]) (by norm_num [leafA, leafB]) (by norm_num [leafB])

theorem local_weight1_cone : BernsteinCone localWeight1 := by
  exact cone_comp_affine (cone_eWeight seedC seedD 1 seedZ (by norm_num [seedZ]))
    leafA leafB (by norm_num [leafA]) (by norm_num [leafA, leafB]) (by norm_num [leafB])

theorem leaf_delta0 : GrowthTree lam localWeight0 localCore := by
  exact GrowthTree.leaf (lam := lam) (w := localWeight0) (f := localCore)
    local_weight0_cone local_core_cone local_gap_cone

theorem leaf_delta1 : GrowthTree lam localWeight1 localCore := by
  exact GrowthTree.leaf (lam := lam) (w := localWeight1) (f := localCore)
    local_weight1_cone local_core_cone local_gap_cone

end Math.B699.I11SevenTwoGrowth.ELeaf002

#print axioms Math.B699.I11SevenTwoGrowth.ELeaf002.actual_gap_eq
#print axioms Math.B699.I11SevenTwoGrowth.ELeaf002.leafMap_eq_path
#print axioms Math.B699.I11SevenTwoGrowth.ELeaf002.gapExpansion_cone
#print axioms Math.B699.I11SevenTwoGrowth.ELeaf002.local_gap_cone
#print axioms Math.B699.I11SevenTwoGrowth.ELeaf002.local_core_cone
#print axioms Math.B699.I11SevenTwoGrowth.ELeaf002.local_weight0_cone
#print axioms Math.B699.I11SevenTwoGrowth.ELeaf002.local_weight1_cone
#print axioms Math.B699.I11SevenTwoGrowth.ELeaf002.leaf_delta0
#print axioms Math.B699.I11SevenTwoGrowth.ELeaf002.leaf_delta1
namespace Math.B699.I11SevenTwoGrowth.ELeaf003


open Polynomial Math.B699.PadeMoment Math.B699.PadeGrowthPartition Math.B699.GrowthLeaf
open Math.B699.I11SevenTwoGrowth.Shared

local instance : Infinite ℚ :=
  Infinite.of_injective (fun n : ℕ => (n : ℚ)) Nat.cast_injective

def seedC : ℕ := 9
def seedD : ℕ := 5
def seedZ : ℚ := (1 : ℚ) / 49
def leafA : ℚ := (7 : ℚ) / 16
def leafB : ℚ := (15 : ℚ) / 32
def lam : ℚ := (18567076935738840000672813 : ℚ) / 19807040628566084398385987584

noncomputable def seedCore : ℚ[X] := eSeedCore
noncomputable def seedWeight0 : ℚ[X] := eSeedWeight0
noncomputable def seedWeight1 : ℚ[X] := eSeedWeight1
noncomputable def leafMap : ℚ[X] := affine leafA leafB
noncomputable def localCore : ℚ[X] := seedCore.comp leafMap
noncomputable def localWeight0 : ℚ[X] := seedWeight0.comp leafMap
noncomputable def localWeight1 : ℚ[X] := seedWeight1.comp leafMap

def gapCoeff0 : ℚ := (1318934196219818410423341 : ℚ) / 19807040628566084398385987584
def gapCoeff1 : ℚ := (8570287646731799472565563 : ℚ) / 9903520314283042199192993792
def gapCoeff2 : ℚ := (721747008935984438653637625 : ℚ) / 138649284399962590788701913088
def gapCoeff3 : ℚ := (665749048384040550776329209 : ℚ) / 34662321099990647697175478272
def gapCoeff4 : ℚ := (47119096923206243589749162469 : ℚ) / 970544990799738135520913391616
def gapCoeff5 : ℚ := (302024009233746918737345957187 : ℚ) / 3396907467799083474323196870656
def gapCoeff6 : ℚ := (5783955718985172803753216235135 : ℚ) / 47556704549187168640524756189184
def gapCoeff7 : ℚ := (36758370266991238783300295449977 : ℚ) / 291284815363771407923214131658752
def gapCoeff8 : ℚ := (1627377354833449278695099099604009 : ℚ) / 16311949660371198843699991372890112
def gapCoeff9 : ℚ := (3412851488736419237792734848346549 : ℚ) / 57091823811299195952949969805115392
def gapCoeff10 : ℚ := (3049843641838663220626643784165813 : ℚ) / 114183647622598391905899939610230784
def gapCoeff11 : ℚ := (246218084544190424439444680152383 : ℚ) / 28545911905649597976474984902557696
def gapCoeff12 : ℚ := (217155524597026947342853942744383 : ℚ) / 114183647622598391905899939610230784
def gapCoeff13 : ℚ := (14622078088879549671948959386491 : ℚ) / 57091823811299195952949969805115392
def gapCoeff14 : ℚ := (1813487051783669381039580255213 : ℚ) / 114183647622598391905899939610230784

noncomputable def gapExpansion : ℚ[X] :=
  Polynomial.C gapCoeff0 * bernsteinMonomial 0 14 +
  Polynomial.C gapCoeff1 * bernsteinMonomial 1 13 +
  Polynomial.C gapCoeff2 * bernsteinMonomial 2 12 +
  Polynomial.C gapCoeff3 * bernsteinMonomial 3 11 +
  Polynomial.C gapCoeff4 * bernsteinMonomial 4 10 +
  Polynomial.C gapCoeff5 * bernsteinMonomial 5 9 +
  Polynomial.C gapCoeff6 * bernsteinMonomial 6 8 +
  Polynomial.C gapCoeff7 * bernsteinMonomial 7 7 +
  Polynomial.C gapCoeff8 * bernsteinMonomial 8 6 +
  Polynomial.C gapCoeff9 * bernsteinMonomial 9 5 +
  Polynomial.C gapCoeff10 * bernsteinMonomial 10 4 +
  Polynomial.C gapCoeff11 * bernsteinMonomial 11 3 +
  Polynomial.C gapCoeff12 * bernsteinMonomial 12 2 +
  Polynomial.C gapCoeff13 * bernsteinMonomial 13 1 +
  Polynomial.C gapCoeff14 * bernsteinMonomial 14 0

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
  norm_num [lam, localCore, seedCore, eSeedCore, eSeedC, eSeedD, eSeedZ,
    Math.B699.GrowthLeaf.eCore, Math.B699.GrowthLeaf.eFactor, seedC, seedD, seedZ, leafMap, affine, leafA, leafB, gapExpansion,
    gapCoeff0, gapCoeff1, gapCoeff2, gapCoeff3, gapCoeff4, gapCoeff5, gapCoeff6, gapCoeff7, gapCoeff8, gapCoeff9, gapCoeff10, gapCoeff11, gapCoeff12, gapCoeff13, gapCoeff14,
    bernsteinMonomial, Polynomial.eval_comp, Polynomial.eval_add, Polynomial.eval_sub,
    Polynomial.eval_mul, Polynomial.eval_pow, Polynomial.eval_C, Polynomial.eval_X] <;> ring

theorem leafMap_eq_path : leafMap = ((((halfLeft).comp halfRight).comp halfRight).comp halfRight).comp halfLeft := by
  apply Polynomial.funext
  intro x
  norm_num [leafMap, affine, leafA, leafB, halfLeft, halfRight,
    Polynomial.eval_comp, Polynomial.eval_add, Polynomial.eval_sub,
    Polynomial.eval_mul, Polynomial.eval_C, Polynomial.eval_X] <;> ring

theorem gapExpansion_cone : BernsteinCone gapExpansion := by
  have h0 : BernsteinCone (Polynomial.C gapCoeff0 * bernsteinMonomial 0 14) :=
    BernsteinCone.scale gapCoeff0 (by norm_num [gapCoeff0]) (BernsteinCone.basis 0 14)
  have h1 : BernsteinCone (Polynomial.C gapCoeff1 * bernsteinMonomial 1 13) :=
    BernsteinCone.scale gapCoeff1 (by norm_num [gapCoeff1]) (BernsteinCone.basis 1 13)
  have h2 : BernsteinCone (Polynomial.C gapCoeff2 * bernsteinMonomial 2 12) :=
    BernsteinCone.scale gapCoeff2 (by norm_num [gapCoeff2]) (BernsteinCone.basis 2 12)
  have h3 : BernsteinCone (Polynomial.C gapCoeff3 * bernsteinMonomial 3 11) :=
    BernsteinCone.scale gapCoeff3 (by norm_num [gapCoeff3]) (BernsteinCone.basis 3 11)
  have h4 : BernsteinCone (Polynomial.C gapCoeff4 * bernsteinMonomial 4 10) :=
    BernsteinCone.scale gapCoeff4 (by norm_num [gapCoeff4]) (BernsteinCone.basis 4 10)
  have h5 : BernsteinCone (Polynomial.C gapCoeff5 * bernsteinMonomial 5 9) :=
    BernsteinCone.scale gapCoeff5 (by norm_num [gapCoeff5]) (BernsteinCone.basis 5 9)
  have h6 : BernsteinCone (Polynomial.C gapCoeff6 * bernsteinMonomial 6 8) :=
    BernsteinCone.scale gapCoeff6 (by norm_num [gapCoeff6]) (BernsteinCone.basis 6 8)
  have h7 : BernsteinCone (Polynomial.C gapCoeff7 * bernsteinMonomial 7 7) :=
    BernsteinCone.scale gapCoeff7 (by norm_num [gapCoeff7]) (BernsteinCone.basis 7 7)
  have h8 : BernsteinCone (Polynomial.C gapCoeff8 * bernsteinMonomial 8 6) :=
    BernsteinCone.scale gapCoeff8 (by norm_num [gapCoeff8]) (BernsteinCone.basis 8 6)
  have h9 : BernsteinCone (Polynomial.C gapCoeff9 * bernsteinMonomial 9 5) :=
    BernsteinCone.scale gapCoeff9 (by norm_num [gapCoeff9]) (BernsteinCone.basis 9 5)
  have h10 : BernsteinCone (Polynomial.C gapCoeff10 * bernsteinMonomial 10 4) :=
    BernsteinCone.scale gapCoeff10 (by norm_num [gapCoeff10]) (BernsteinCone.basis 10 4)
  have h11 : BernsteinCone (Polynomial.C gapCoeff11 * bernsteinMonomial 11 3) :=
    BernsteinCone.scale gapCoeff11 (by norm_num [gapCoeff11]) (BernsteinCone.basis 11 3)
  have h12 : BernsteinCone (Polynomial.C gapCoeff12 * bernsteinMonomial 12 2) :=
    BernsteinCone.scale gapCoeff12 (by norm_num [gapCoeff12]) (BernsteinCone.basis 12 2)
  have h13 : BernsteinCone (Polynomial.C gapCoeff13 * bernsteinMonomial 13 1) :=
    BernsteinCone.scale gapCoeff13 (by norm_num [gapCoeff13]) (BernsteinCone.basis 13 1)
  have h14 : BernsteinCone (Polynomial.C gapCoeff14 * bernsteinMonomial 14 0) :=
    BernsteinCone.scale gapCoeff14 (by norm_num [gapCoeff14]) (BernsteinCone.basis 14 0)
  exact BernsteinCone.add (BernsteinCone.add (BernsteinCone.add (BernsteinCone.add (BernsteinCone.add (BernsteinCone.add (BernsteinCone.add (BernsteinCone.add (BernsteinCone.add (BernsteinCone.add (BernsteinCone.add (BernsteinCone.add (BernsteinCone.add (BernsteinCone.add (h0) h1) h2) h3) h4) h5) h6) h7) h8) h9) h10) h11) h12) h13) h14

theorem local_gap_cone : BernsteinCone (Polynomial.C lam - localCore) := by
  rw [actual_gap_eq]
  exact gapExpansion_cone

theorem local_core_cone : BernsteinCone localCore := by
  exact cone_comp_affine (cone_eCore seedC seedD seedZ (by norm_num [seedZ]))
    leafA leafB (by norm_num [leafA]) (by norm_num [leafA, leafB]) (by norm_num [leafB])

theorem local_weight0_cone : BernsteinCone localWeight0 := by
  exact cone_comp_affine (cone_eWeight seedC seedD 0 seedZ (by norm_num [seedZ]))
    leafA leafB (by norm_num [leafA]) (by norm_num [leafA, leafB]) (by norm_num [leafB])

theorem local_weight1_cone : BernsteinCone localWeight1 := by
  exact cone_comp_affine (cone_eWeight seedC seedD 1 seedZ (by norm_num [seedZ]))
    leafA leafB (by norm_num [leafA]) (by norm_num [leafA, leafB]) (by norm_num [leafB])

theorem leaf_delta0 : GrowthTree lam localWeight0 localCore := by
  exact GrowthTree.leaf (lam := lam) (w := localWeight0) (f := localCore)
    local_weight0_cone local_core_cone local_gap_cone

theorem leaf_delta1 : GrowthTree lam localWeight1 localCore := by
  exact GrowthTree.leaf (lam := lam) (w := localWeight1) (f := localCore)
    local_weight1_cone local_core_cone local_gap_cone

end Math.B699.I11SevenTwoGrowth.ELeaf003

#print axioms Math.B699.I11SevenTwoGrowth.ELeaf003.actual_gap_eq
#print axioms Math.B699.I11SevenTwoGrowth.ELeaf003.leafMap_eq_path
#print axioms Math.B699.I11SevenTwoGrowth.ELeaf003.gapExpansion_cone
#print axioms Math.B699.I11SevenTwoGrowth.ELeaf003.local_gap_cone
#print axioms Math.B699.I11SevenTwoGrowth.ELeaf003.local_core_cone
#print axioms Math.B699.I11SevenTwoGrowth.ELeaf003.local_weight0_cone
#print axioms Math.B699.I11SevenTwoGrowth.ELeaf003.local_weight1_cone
#print axioms Math.B699.I11SevenTwoGrowth.ELeaf003.leaf_delta0
#print axioms Math.B699.I11SevenTwoGrowth.ELeaf003.leaf_delta1

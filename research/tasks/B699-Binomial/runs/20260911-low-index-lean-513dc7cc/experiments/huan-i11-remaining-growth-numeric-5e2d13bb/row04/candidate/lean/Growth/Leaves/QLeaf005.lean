import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Growth.Affine
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Growth.Partition
import Mathlib.Algebra.Polynomial.Roots
import Mathlib.Tactic.NormNum
import Mathlib.Tactic.Ring
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Growth.I11FiveSevenShared

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace Math.B699.I11FiveSevenGrowth.QLeaf005


open Polynomial Math.B699.PadeMoment Math.B699.PadeGrowthPartition Math.B699.GrowthLeaf
open Math.B699.I11FiveSevenGrowth.Shared

local instance : Infinite ℚ :=
  Infinite.of_injective (fun n : ℕ => (n : ℚ)) Nat.cast_injective

def seedC : ℕ := 11
def seedD : ℕ := 7
def seedZ : ℚ := (1 : ℚ) / 50
def leafA : ℚ := (115 : ℚ) / 512
def leafB : ℚ := (29 : ℚ) / 128
def lam : ℚ := (5962730782212565018186393 : ℚ) / 79228162514264337593543950336

noncomputable def seedCore : ℚ[X] := qSeedCore
noncomputable def seedWeight0 : ℚ[X] := qSeedWeight0
noncomputable def seedWeight1 : ℚ[X] := qSeedWeight1
noncomputable def leafMap : ℚ[X] := affine leafA leafB
noncomputable def localCore : ℚ[X] := seedCore.comp leafMap
noncomputable def localWeight0 : ℚ[X] := seedWeight0.comp leafMap
noncomputable def localWeight1 : ℚ[X] := seedWeight1.comp leafMap

def gapCoeff0 : ℚ := (78371884119069520242570839804542767835029619 : ℚ) / 93536104789177786765035829293842113257979682750464000
def gapCoeff1 : ℚ := (1012346109341278544156562771091194474668951001 : ℚ) / 58460065493236116728147393308651320786237301719040000
def gapCoeff2 : ℚ := (5285692866335228745256336355429853775239235719 : ℚ) / 29230032746618058364073696654325660393118650859520000
def gapCoeff3 : ℚ := (2790202930988032761296397274885461615097444239 : ℚ) / 2283596308329535809693257551119192218212394598400000
def gapCoeff4 : ℚ := (66675919173370126209450747431997500444183483211 : ℚ) / 11417981541647679048466287755595961091061972992000000
def gapCoeff5 : ℚ := (738243480156800824756373862242798619133392975663 : ℚ) / 35681192317648997026457149236237378409568665600000000
def gapCoeff6 : ℚ := (4995423762664859867062686311387456668868221182603 : ℚ) / 89202980794122492566142873090593446023921664000000000
def gapCoeff7 : ℚ := (658912452761831654567592330355778442725477653241 : ℚ) / 5575186299632655785383929568162090376495104000000000
def gapCoeff8 : ℚ := (10993080489745230973274007875937293295807049424401 : ℚ) / 55751862996326557853839295681620903764951040000000000
def gapCoeff9 : ℚ := (9137670403112682173203445598924160266422260971983 : ℚ) / 34844914372704098658649559801013064853094400000000000
def gapCoeff10 : ℚ := (121526195839939297470053203424154932611094324554733 : ℚ) / 435561429658801233233119497512663310663680000000000000
def gapCoeff11 : ℚ := (16143656743331582511839475555194253397145321914573 : ℚ) / 68056473384187692692674921486353642291200000000000000
def gapCoeff12 : ℚ := (10898473885230761153266166270779408885134010522983 : ℚ) / 68056473384187692692674921486353642291200000000000000
def gapCoeff13 : ℚ := (721132940614330002012798722844257944452518956839 : ℚ) / 8507059173023461586584365185794205286400000000000000
def gapCoeff14 : ℚ := (29300533325580476285485628552808762860966232207 : ℚ) / 850705917302346158658436518579420528640000000000000
def gapCoeff15 : ℚ := (551546643379478982922220337228242508612673263 : ℚ) / 53169119831396634916152282411213783040000000000000
def gapCoeff16 : ℚ := (2320708651847581037471380121718918343319785071 : ℚ) / 1063382396627932698323045648224275660800000000000000
def gapCoeff17 : ℚ := (38066127504360765308567799399615957683864337 : ℚ) / 132922799578491587290380706028034457600000000000000
def gapCoeff18 : ℚ := (1173060064585064734208645695779494758672679 : ℚ) / 66461399789245793645190353014017228800000000000000

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

theorem leafMap_eq_path : leafMap = ((((((((halfLeft).comp halfLeft).comp halfRight).comp halfRight).comp halfRight).comp halfLeft).comp halfLeft).comp halfRight).comp halfRight := by
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

end Math.B699.I11FiveSevenGrowth.QLeaf005

#print axioms Math.B699.I11FiveSevenGrowth.QLeaf005.actual_gap_eq
#print axioms Math.B699.I11FiveSevenGrowth.QLeaf005.leafMap_eq_path
#print axioms Math.B699.I11FiveSevenGrowth.QLeaf005.gapExpansion_cone
#print axioms Math.B699.I11FiveSevenGrowth.QLeaf005.local_gap_cone
#print axioms Math.B699.I11FiveSevenGrowth.QLeaf005.local_core_cone
#print axioms Math.B699.I11FiveSevenGrowth.QLeaf005.local_weight0_cone
#print axioms Math.B699.I11FiveSevenGrowth.QLeaf005.local_weight1_cone
#print axioms Math.B699.I11FiveSevenGrowth.QLeaf005.leaf_delta0
#print axioms Math.B699.I11FiveSevenGrowth.QLeaf005.leaf_delta1

import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Growth.Affine
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Growth.Partition
import Mathlib.Algebra.Polynomial.Roots
import Mathlib.Tactic.NormNum
import Mathlib.Tactic.Ring
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Growth.I11SevenTwoShared

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace Math.B699.I11SevenTwoGrowth.QLeaf000


open Polynomial Math.B699.PadeMoment Math.B699.PadeGrowthPartition Math.B699.GrowthLeaf
open Math.B699.I11SevenTwoGrowth.Shared

local instance : Infinite ℚ :=
  Infinite.of_injective (fun n : ℕ => (n : ℚ)) Nat.cast_injective

def seedC : ℕ := 9
def seedD : ℕ := 5
def seedZ : ℚ := (1 : ℚ) / 49
def leafA : ℚ := (0 : ℚ)
def leafB : ℚ := (1 : ℚ) / 4
def lam : ℚ := (19015678853391498507418691 : ℚ) / 79228162514264337593543950336

noncomputable def seedCore : ℚ[X] := qSeedCore
noncomputable def seedWeight0 : ℚ[X] := qSeedWeight0
noncomputable def seedWeight1 : ℚ[X] := qSeedWeight1
noncomputable def leafMap : ℚ[X] := affine leafA leafB
noncomputable def localCore : ℚ[X] := seedCore.comp leafMap
noncomputable def localWeight0 : ℚ[X] := seedWeight0.comp leafMap
noncomputable def localWeight1 : ℚ[X] := seedWeight1.comp leafMap

def gapCoeff0 : ℚ := (19015678853391498507418691 : ℚ) / 79228162514264337593543950336
def gapCoeff1 : ℚ := (133109751973740489551930837 : ℚ) / 39614081257132168796771975168
def gapCoeff2 : ℚ := (1730426775658626364175100881 : ℚ) / 79228162514264337593543950336
def gapCoeff3 : ℚ := (1730426775658626364175100881 : ℚ) / 19807040628566084398385987584
def gapCoeff4 : ℚ := (18725209522423544937201328635 : ℚ) / 79228162514264337593543950336
def gapCoeff5 : ℚ := (875638733394189113244247867659 : ℚ) / 1941089981599476271041826783232
def gapCoeff6 : ℚ := (118169710392922976298084368275793 : ℚ) / 190226818196748674562099024756736
def gapCoeff7 : ℚ := (726979247180643197335335734374711 : ℚ) / 1165139261455085631692856526635008
def gapCoeff8 : ℚ := (209027097941829953800877952890024113 : ℚ) / 456734590490393567623599758440923136
def gapCoeff9 : ℚ := (2718158067105926099060548194467158859 : ℚ) / 11189997467014642406778194081802616832
def gapCoeff10 : ℚ := (2042207474845120528300803317455231819 : ℚ) / 22379994934029284813556388163605233664
def gapCoeff11 : ℚ := (130309246017007253121784068653291969 : ℚ) / 5594998733507321203389097040901308416
def gapCoeff12 : ℚ := (84129390440815070990705565822720449 : ℚ) / 22379994934029284813556388163605233664
def gapCoeff13 : ℚ := (3763073969399335297124246749454213 : ℚ) / 11189997467014642406778194081802616832
def gapCoeff14 : ℚ := (278682840884341960113661799639315 : ℚ) / 22379994934029284813556388163605233664

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
  norm_num [lam, localCore, seedCore, qSeedCore, qSeedC, qSeedD, qSeedZ,
    Math.B699.GrowthLeaf.qCore, Math.B699.GrowthLeaf.qFactor, seedC, seedD, seedZ, leafMap, affine, leafA, leafB, gapExpansion,
    gapCoeff0, gapCoeff1, gapCoeff2, gapCoeff3, gapCoeff4, gapCoeff5, gapCoeff6, gapCoeff7, gapCoeff8, gapCoeff9, gapCoeff10, gapCoeff11, gapCoeff12, gapCoeff13, gapCoeff14,
    bernsteinMonomial, Polynomial.eval_comp, Polynomial.eval_add, Polynomial.eval_sub,
    Polynomial.eval_mul, Polynomial.eval_pow, Polynomial.eval_C, Polynomial.eval_X] <;> ring

theorem leafMap_eq_path : leafMap = (halfLeft).comp halfLeft := by
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

end Math.B699.I11SevenTwoGrowth.QLeaf000

#print axioms Math.B699.I11SevenTwoGrowth.QLeaf000.actual_gap_eq
#print axioms Math.B699.I11SevenTwoGrowth.QLeaf000.leafMap_eq_path
#print axioms Math.B699.I11SevenTwoGrowth.QLeaf000.gapExpansion_cone
#print axioms Math.B699.I11SevenTwoGrowth.QLeaf000.local_gap_cone
#print axioms Math.B699.I11SevenTwoGrowth.QLeaf000.local_core_cone
#print axioms Math.B699.I11SevenTwoGrowth.QLeaf000.local_weight0_cone
#print axioms Math.B699.I11SevenTwoGrowth.QLeaf000.local_weight1_cone
#print axioms Math.B699.I11SevenTwoGrowth.QLeaf000.leaf_delta0
#print axioms Math.B699.I11SevenTwoGrowth.QLeaf000.leaf_delta1
namespace Math.B699.I11SevenTwoGrowth.QLeaf001


open Polynomial Math.B699.PadeMoment Math.B699.PadeGrowthPartition Math.B699.GrowthLeaf
open Math.B699.I11SevenTwoGrowth.Shared

local instance : Infinite ℚ :=
  Infinite.of_injective (fun n : ℕ => (n : ℚ)) Nat.cast_injective

def seedC : ℕ := 9
def seedD : ℕ := 5
def seedZ : ℚ := (1 : ℚ) / 49
def leafA : ℚ := (1 : ℚ) / 4
def leafB : ℚ := (9 : ℚ) / 32
def lam : ℚ := (19015678853391498507418691 : ℚ) / 79228162514264337593543950336

noncomputable def seedCore : ℚ[X] := qSeedCore
noncomputable def seedWeight0 : ℚ[X] := qSeedWeight0
noncomputable def seedWeight1 : ℚ[X] := qSeedWeight1
noncomputable def leafMap : ℚ[X] := affine leafA leafB
noncomputable def localCore : ℚ[X] := seedCore.comp leafMap
noncomputable def localWeight0 : ℚ[X] := seedWeight0.comp leafMap
noncomputable def localWeight1 : ℚ[X] := seedWeight1.comp leafMap

def gapCoeff0 : ℚ := (278682840884341960113661799639315 : ℚ) / 22379994934029284813556388163605233664
def gapCoeff1 : ℚ := (1724243125789276023754555828477829 : ℚ) / 11189997467014642406778194081802616832
def gapCoeff2 : ℚ := (2807458262856819641654984266946039 : ℚ) / 3197142133432754973365198309086461952
def gapCoeff3 : ℚ := (17072606656208712406234337604114881 : ℚ) / 5594998733507321203389097040901308416
def gapCoeff4 : ℚ := (161451498085455898153608805165669195 : ℚ) / 22379994934029284813556388163605233664
def gapCoeff5 : ℚ := (137141353949904648556195535435701067 : ℚ) / 11189997467014642406778194081802616832
def gapCoeff6 : ℚ := (344621725127062015472035039965401569 : ℚ) / 22379994934029284813556388163605233664
def gapCoeff7 : ℚ := (40565126292195067891334747502531799 : ℚ) / 2797499366753660601694548520450654208
def gapCoeff8 : ℚ := (229426527498551290768181576858128865 : ℚ) / 22379994934029284813556388163605233664
def gapCoeff9 : ℚ := (1231465586297919718307201404801083 : ℚ) / 228367295245196783811799879220461568
def gapCoeff10 : ℚ := (46245476707801484335737366092028747 : ℚ) / 22379994934029284813556388163605233664
def gapCoeff11 : ℚ := (3107138008513575142309504574921153 : ℚ) / 5594998733507321203389097040901308416
def gapCoeff12 : ℚ := (2193678056417877008085063340235201 : ℚ) / 22379994934029284813556388163605233664
def gapCoeff13 : ℚ := (112506332851310069233154168987525 : ℚ) / 11189997467014642406778194081802616832
def gapCoeff14 : ℚ := (10027114565649810879569348339987 : ℚ) / 22379994934029284813556388163605233664

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
  norm_num [lam, localCore, seedCore, qSeedCore, qSeedC, qSeedD, qSeedZ,
    Math.B699.GrowthLeaf.qCore, Math.B699.GrowthLeaf.qFactor, seedC, seedD, seedZ, leafMap, affine, leafA, leafB, gapExpansion,
    gapCoeff0, gapCoeff1, gapCoeff2, gapCoeff3, gapCoeff4, gapCoeff5, gapCoeff6, gapCoeff7, gapCoeff8, gapCoeff9, gapCoeff10, gapCoeff11, gapCoeff12, gapCoeff13, gapCoeff14,
    bernsteinMonomial, Polynomial.eval_comp, Polynomial.eval_add, Polynomial.eval_sub,
    Polynomial.eval_mul, Polynomial.eval_pow, Polynomial.eval_C, Polynomial.eval_X] <;> ring

theorem leafMap_eq_path : leafMap = ((((halfLeft).comp halfRight).comp halfLeft).comp halfLeft).comp halfLeft := by
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

end Math.B699.I11SevenTwoGrowth.QLeaf001

#print axioms Math.B699.I11SevenTwoGrowth.QLeaf001.actual_gap_eq
#print axioms Math.B699.I11SevenTwoGrowth.QLeaf001.leafMap_eq_path
#print axioms Math.B699.I11SevenTwoGrowth.QLeaf001.gapExpansion_cone
#print axioms Math.B699.I11SevenTwoGrowth.QLeaf001.local_gap_cone
#print axioms Math.B699.I11SevenTwoGrowth.QLeaf001.local_core_cone
#print axioms Math.B699.I11SevenTwoGrowth.QLeaf001.local_weight0_cone
#print axioms Math.B699.I11SevenTwoGrowth.QLeaf001.local_weight1_cone
#print axioms Math.B699.I11SevenTwoGrowth.QLeaf001.leaf_delta0
#print axioms Math.B699.I11SevenTwoGrowth.QLeaf001.leaf_delta1
namespace Math.B699.I11SevenTwoGrowth.QLeaf002


open Polynomial Math.B699.PadeMoment Math.B699.PadeGrowthPartition Math.B699.GrowthLeaf
open Math.B699.I11SevenTwoGrowth.Shared

local instance : Infinite ℚ :=
  Infinite.of_injective (fun n : ℕ => (n : ℚ)) Nat.cast_injective

def seedC : ℕ := 9
def seedD : ℕ := 5
def seedZ : ℚ := (1 : ℚ) / 49
def leafA : ℚ := (9 : ℚ) / 32
def leafB : ℚ := (37 : ℚ) / 128
def lam : ℚ := (19015678853391498507418691 : ℚ) / 79228162514264337593543950336

noncomputable def seedCore : ℚ[X] := qSeedCore
noncomputable def seedWeight0 : ℚ[X] := qSeedWeight0
noncomputable def seedWeight1 : ℚ[X] := qSeedWeight1
noncomputable def leafMap : ℚ[X] := affine leafA leafB
noncomputable def localCore : ℚ[X] := seedCore.comp leafMap
noncomputable def localWeight0 : ℚ[X] := seedWeight0.comp leafMap
noncomputable def localWeight1 : ℚ[X] := seedWeight1.comp leafMap

def gapCoeff0 : ℚ := (10027114565649810879569348339987 : ℚ) / 22379994934029284813556388163605233664
def gapCoeff1 : ℚ := (59610669236608327887943255728005 : ℚ) / 11189997467014642406778194081802616832
def gapCoeff2 : ℚ := (648721276412555484924705552832961 : ℚ) / 22379994934029284813556388163605233664
def gapCoeff3 : ℚ := (76256219848200583106568009225719 : ℚ) / 799285533358188743341299577271615488
def gapCoeff4 : ℚ := (675923358923161271053600080130461 : ℚ) / 3197142133432754973365198309086461952
def gapCoeff5 : ℚ := (530697421044090922307751554183581 : ℚ) / 1598571066716377486682599154543230976
def gapCoeff6 : ℚ := (1209308348824166288264839339300055 : ℚ) / 3197142133432754973365198309086461952
def gapCoeff7 : ℚ := (879301089241404869314511238452439 : ℚ) / 2797499366753660601694548520450654208
def gapCoeff8 : ℚ := (4213646489301564275239889133949409 : ℚ) / 22379994934029284813556388163605233664
def gapCoeff9 : ℚ := (879967404414472729926140139772747 : ℚ) / 11189997467014642406778194081802616832
def gapCoeff10 : ℚ := (68236967770762083435327254557085 : ℚ) / 3197142133432754973365198309086461952
def gapCoeff11 : ℚ := (366076046120480753807253036689 : ℚ) / 114183647622598391905899939610230784
def gapCoeff12 : ℚ := (10235814563492695560123242151 : ℚ) / 65247798641484795374799965491560448
def gapCoeff13 : ℚ := (3636003821172006950442149 : ℚ) / 4660557045820342526771426106540032
def gapCoeff14 : ℚ := (5044530765677411949023925 : ℚ) / 1331587727377240721934693173297152

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
  norm_num [lam, localCore, seedCore, qSeedCore, qSeedC, qSeedD, qSeedZ,
    Math.B699.GrowthLeaf.qCore, Math.B699.GrowthLeaf.qFactor, seedC, seedD, seedZ, leafMap, affine, leafA, leafB, gapExpansion,
    gapCoeff0, gapCoeff1, gapCoeff2, gapCoeff3, gapCoeff4, gapCoeff5, gapCoeff6, gapCoeff7, gapCoeff8, gapCoeff9, gapCoeff10, gapCoeff11, gapCoeff12, gapCoeff13, gapCoeff14,
    bernsteinMonomial, Polynomial.eval_comp, Polynomial.eval_add, Polynomial.eval_sub,
    Polynomial.eval_mul, Polynomial.eval_pow, Polynomial.eval_C, Polynomial.eval_X] <;> ring

theorem leafMap_eq_path : leafMap = ((((((halfLeft).comp halfRight).comp halfLeft).comp halfLeft).comp halfRight).comp halfLeft).comp halfLeft := by
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

end Math.B699.I11SevenTwoGrowth.QLeaf002

#print axioms Math.B699.I11SevenTwoGrowth.QLeaf002.actual_gap_eq
#print axioms Math.B699.I11SevenTwoGrowth.QLeaf002.leafMap_eq_path
#print axioms Math.B699.I11SevenTwoGrowth.QLeaf002.gapExpansion_cone
#print axioms Math.B699.I11SevenTwoGrowth.QLeaf002.local_gap_cone
#print axioms Math.B699.I11SevenTwoGrowth.QLeaf002.local_core_cone
#print axioms Math.B699.I11SevenTwoGrowth.QLeaf002.local_weight0_cone
#print axioms Math.B699.I11SevenTwoGrowth.QLeaf002.local_weight1_cone
#print axioms Math.B699.I11SevenTwoGrowth.QLeaf002.leaf_delta0
#print axioms Math.B699.I11SevenTwoGrowth.QLeaf002.leaf_delta1
namespace Math.B699.I11SevenTwoGrowth.QLeaf003


open Polynomial Math.B699.PadeMoment Math.B699.PadeGrowthPartition Math.B699.GrowthLeaf
open Math.B699.I11SevenTwoGrowth.Shared

local instance : Infinite ℚ :=
  Infinite.of_injective (fun n : ℕ => (n : ℚ)) Nat.cast_injective

def seedC : ℕ := 9
def seedD : ℕ := 5
def seedZ : ℚ := (1 : ℚ) / 49
def leafA : ℚ := (37 : ℚ) / 128
def leafB : ℚ := (19 : ℚ) / 64
def lam : ℚ := (19015678853391498507418691 : ℚ) / 79228162514264337593543950336

noncomputable def seedCore : ℚ[X] := qSeedCore
noncomputable def seedWeight0 : ℚ[X] := qSeedWeight0
noncomputable def seedWeight1 : ℚ[X] := qSeedWeight1
noncomputable def leafMap : ℚ[X] := affine leafA leafB
noncomputable def localCore : ℚ[X] := seedCore.comp leafMap
noncomputable def localWeight0 : ℚ[X] := seedWeight0.comp leafMap
noncomputable def localWeight1 : ℚ[X] := seedWeight1.comp leafMap

def gapCoeff0 : ℚ := (5044530765677411949023925 : ℚ) / 1331587727377240721934693173297152
def gapCoeff1 : ℚ := (490728011215214364053902501 : ℚ) / 4660557045820342526771426106540032
def gapCoeff2 : ℚ := (98886559909208404552953026215 : ℚ) / 65247798641484795374799965491560448
def gapCoeff3 : ℚ := (1295674062649886111907813514897 : ℚ) / 114183647622598391905899939610230784
def gapCoeff4 : ℚ := (163422149896455865141758867403165 : ℚ) / 3197142133432754973365198309086461952
def gapCoeff5 : ℚ := (1709510120462338548215054200576843 : ℚ) / 11189997467014642406778194081802616832
def gapCoeff6 : ℚ := (7184029424312703726808426137309665 : ℚ) / 22379994934029284813556388163605233664
def gapCoeff7 : ℚ := (1371038205777186505285457737536727 : ℚ) / 2797499366753660601694548520450654208
def gapCoeff8 : ℚ := (1766732296266799528136674166297815 : ℚ) / 3197142133432754973365198309086461952
def gapCoeff9 : ℚ := (737736372903042092319720226288029 : ℚ) / 1598571066716377486682599154543230976
def gapCoeff10 : ℚ := (903434111598595419262290491470237 : ℚ) / 3197142133432754973365198309086461952
def gapCoeff11 : ℚ := (98722496334696429262644535563767 : ℚ) / 799285533358188743341299577271615488
def gapCoeff12 : ℚ := (817866530211014300130528831314369 : ℚ) / 22379994934029284813556388163605233664
def gapCoeff13 : ℚ := (73484805577482469544990553153413 : ℚ) / 11189997467014642406778194081802616832
def gapCoeff14 : ℚ := (12124476166345589195690018679059 : ℚ) / 22379994934029284813556388163605233664

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
  norm_num [lam, localCore, seedCore, qSeedCore, qSeedC, qSeedD, qSeedZ,
    Math.B699.GrowthLeaf.qCore, Math.B699.GrowthLeaf.qFactor, seedC, seedD, seedZ, leafMap, affine, leafA, leafB, gapExpansion,
    gapCoeff0, gapCoeff1, gapCoeff2, gapCoeff3, gapCoeff4, gapCoeff5, gapCoeff6, gapCoeff7, gapCoeff8, gapCoeff9, gapCoeff10, gapCoeff11, gapCoeff12, gapCoeff13, gapCoeff14,
    bernsteinMonomial, Polynomial.eval_comp, Polynomial.eval_add, Polynomial.eval_sub,
    Polynomial.eval_mul, Polynomial.eval_pow, Polynomial.eval_C, Polynomial.eval_X] <;> ring

theorem leafMap_eq_path : leafMap = ((((((halfLeft).comp halfRight).comp halfLeft).comp halfLeft).comp halfRight).comp halfLeft).comp halfRight := by
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

end Math.B699.I11SevenTwoGrowth.QLeaf003

#print axioms Math.B699.I11SevenTwoGrowth.QLeaf003.actual_gap_eq
#print axioms Math.B699.I11SevenTwoGrowth.QLeaf003.leafMap_eq_path
#print axioms Math.B699.I11SevenTwoGrowth.QLeaf003.gapExpansion_cone
#print axioms Math.B699.I11SevenTwoGrowth.QLeaf003.local_gap_cone
#print axioms Math.B699.I11SevenTwoGrowth.QLeaf003.local_core_cone
#print axioms Math.B699.I11SevenTwoGrowth.QLeaf003.local_weight0_cone
#print axioms Math.B699.I11SevenTwoGrowth.QLeaf003.local_weight1_cone
#print axioms Math.B699.I11SevenTwoGrowth.QLeaf003.leaf_delta0
#print axioms Math.B699.I11SevenTwoGrowth.QLeaf003.leaf_delta1
namespace Math.B699.I11SevenTwoGrowth.QLeaf004


open Polynomial Math.B699.PadeMoment Math.B699.PadeGrowthPartition Math.B699.GrowthLeaf
open Math.B699.I11SevenTwoGrowth.Shared

local instance : Infinite ℚ :=
  Infinite.of_injective (fun n : ℕ => (n : ℚ)) Nat.cast_injective

def seedC : ℕ := 9
def seedD : ℕ := 5
def seedZ : ℚ := (1 : ℚ) / 49
def leafA : ℚ := (19 : ℚ) / 64
def leafB : ℚ := (5 : ℚ) / 16
def lam : ℚ := (19015678853391498507418691 : ℚ) / 79228162514264337593543950336

noncomputable def seedCore : ℚ[X] := qSeedCore
noncomputable def seedWeight0 : ℚ[X] := qSeedWeight0
noncomputable def seedWeight1 : ℚ[X] := qSeedWeight1
noncomputable def leafMap : ℚ[X] := affine leafA leafB
noncomputable def localCore : ℚ[X] := seedCore.comp leafMap
noncomputable def localWeight0 : ℚ[X] := seedWeight0.comp leafMap
noncomputable def localWeight1 : ℚ[X] := seedWeight1.comp leafMap

def gapCoeff0 : ℚ := (12124476166345589195690018679059 : ℚ) / 22379994934029284813556388163605233664
def gapCoeff1 : ℚ := (107644388338292434019509285953413 : ℚ) / 11189997467014642406778194081802616832
def gapCoeff2 : ℚ := (1737782430993829502773714331474369 : ℚ) / 22379994934029284813556388163605233664
def gapCoeff3 : ℚ := (2118239718171933799217951516498369 : ℚ) / 5594998733507321203389097040901308416
def gapCoeff4 : ℚ := (27944780740524857228118830074403659 : ℚ) / 22379994934029284813556388163605233664
def gapCoeff5 : ℚ := (33044468157244428241671601131461451 : ℚ) / 11189997467014642406778194081802616832
def gapCoeff6 : ℚ := (115788057870651365464852485762503137 : ℚ) / 22379994934029284813556388163605233664
def gapCoeff7 : ℚ := (2730345772892494208941686630363313 : ℚ) / 399642766679094371670649788635807744
def gapCoeff8 : ℚ := (153118389295614375987020366998983137 : ℚ) / 22379994934029284813556388163605233664
def gapCoeff9 : ℚ := (57923475231449542244558848022911819 : ℚ) / 11189997467014642406778194081802616832
def gapCoeff10 : ℚ := (65243596245601759734677548357753675 : ℚ) / 22379994934029284813556388163605233664
def gapCoeff11 : ℚ := (6635967654755790972133952856627649 : ℚ) / 5594998733507321203389097040901308416
def gapCoeff12 : ℚ := (7379576921418212849115641679288769 : ℚ) / 22379994934029284813556388163605233664
def gapCoeff13 : ℚ := (627820567730483012485194396737413 : ℚ) / 11189997467014642406778194081802616832
def gapCoeff14 : ℚ := (98701482245320295857053566839059 : ℚ) / 22379994934029284813556388163605233664

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
  norm_num [lam, localCore, seedCore, qSeedCore, qSeedC, qSeedD, qSeedZ,
    Math.B699.GrowthLeaf.qCore, Math.B699.GrowthLeaf.qFactor, seedC, seedD, seedZ, leafMap, affine, leafA, leafB, gapExpansion,
    gapCoeff0, gapCoeff1, gapCoeff2, gapCoeff3, gapCoeff4, gapCoeff5, gapCoeff6, gapCoeff7, gapCoeff8, gapCoeff9, gapCoeff10, gapCoeff11, gapCoeff12, gapCoeff13, gapCoeff14,
    bernsteinMonomial, Polynomial.eval_comp, Polynomial.eval_add, Polynomial.eval_sub,
    Polynomial.eval_mul, Polynomial.eval_pow, Polynomial.eval_C, Polynomial.eval_X] <;> ring

theorem leafMap_eq_path : leafMap = (((((halfLeft).comp halfRight).comp halfLeft).comp halfLeft).comp halfRight).comp halfRight := by
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

end Math.B699.I11SevenTwoGrowth.QLeaf004

#print axioms Math.B699.I11SevenTwoGrowth.QLeaf004.actual_gap_eq
#print axioms Math.B699.I11SevenTwoGrowth.QLeaf004.leafMap_eq_path
#print axioms Math.B699.I11SevenTwoGrowth.QLeaf004.gapExpansion_cone
#print axioms Math.B699.I11SevenTwoGrowth.QLeaf004.local_gap_cone
#print axioms Math.B699.I11SevenTwoGrowth.QLeaf004.local_core_cone
#print axioms Math.B699.I11SevenTwoGrowth.QLeaf004.local_weight0_cone
#print axioms Math.B699.I11SevenTwoGrowth.QLeaf004.local_weight1_cone
#print axioms Math.B699.I11SevenTwoGrowth.QLeaf004.leaf_delta0
#print axioms Math.B699.I11SevenTwoGrowth.QLeaf004.leaf_delta1
namespace Math.B699.I11SevenTwoGrowth.QLeaf005


open Polynomial Math.B699.PadeMoment Math.B699.PadeGrowthPartition Math.B699.GrowthLeaf
open Math.B699.I11SevenTwoGrowth.Shared

local instance : Infinite ℚ :=
  Infinite.of_injective (fun n : ℕ => (n : ℚ)) Nat.cast_injective

def seedC : ℕ := 9
def seedD : ℕ := 5
def seedZ : ℚ := (1 : ℚ) / 49
def leafA : ℚ := (5 : ℚ) / 16
def leafB : ℚ := (3 : ℚ) / 8
def lam : ℚ := (19015678853391498507418691 : ℚ) / 79228162514264337593543950336

noncomputable def seedCore : ℚ[X] := qSeedCore
noncomputable def seedWeight0 : ℚ[X] := qSeedWeight0
noncomputable def seedWeight1 : ℚ[X] := qSeedWeight1
noncomputable def leafMap : ℚ[X] := affine leafA leafB
noncomputable def localCore : ℚ[X] := seedCore.comp leafMap
noncomputable def localWeight0 : ℚ[X] := seedWeight0.comp leafMap
noncomputable def localWeight1 : ℚ[X] := seedWeight1.comp leafMap

def gapCoeff0 : ℚ := (98701482245320295857053566839059 : ℚ) / 22379994934029284813556388163605233664
def gapCoeff1 : ℚ := (943269607664278305056097252417413 : ℚ) / 11189997467014642406778194081802616832
def gapCoeff2 : ℚ := (2307486804420558881192292160574967 : ℚ) / 3197142133432754973365198309086461952
def gapCoeff3 : ℚ := (20625677627635078252907195723520449 : ℚ) / 5594998733507321203389097040901308416
def gapCoeff4 : ℚ := (282199244163701345887876778277313355 : ℚ) / 22379994934029284813556388163605233664
def gapCoeff5 : ℚ := (343302140238712413934220391530470219 : ℚ) / 11189997467014642406778194081802616832
def gapCoeff6 : ℚ := (1229553368678075083136762454968160737 : ℚ) / 22379994934029284813556388163605233664
def gapCoeff7 : ℚ := (206354572228639491061234424321791191 : ℚ) / 2797499366753660601694548520450654208
def gapCoeff8 : ℚ := (1673608371042525257756841986354631137 : ℚ) / 22379994934029284813556388163605233664
def gapCoeff9 : ℚ := (91229993735378534084350134855004573 : ℚ) / 1598571066716377486682599154543230976
def gapCoeff10 : ℚ := (723344524365272762699866798384061259 : ℚ) / 22379994934029284813556388163605233664
def gapCoeff11 : ℚ := (73791031348496004118076364007250369 : ℚ) / 5594998733507321203389097040901308416
def gapCoeff12 : ℚ := (82119106899230726676231535044434369 : ℚ) / 22379994934029284813556388163605233664
def gapCoeff13 : ℚ := (6977654362403110764310127653953413 : ℚ) / 11189997467014642406778194081802616832
def gapCoeff14 : ℚ := (1093730184504652380176483157879059 : ℚ) / 22379994934029284813556388163605233664

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
  norm_num [lam, localCore, seedCore, qSeedCore, qSeedC, qSeedD, qSeedZ,
    Math.B699.GrowthLeaf.qCore, Math.B699.GrowthLeaf.qFactor, seedC, seedD, seedZ, leafMap, affine, leafA, leafB, gapExpansion,
    gapCoeff0, gapCoeff1, gapCoeff2, gapCoeff3, gapCoeff4, gapCoeff5, gapCoeff6, gapCoeff7, gapCoeff8, gapCoeff9, gapCoeff10, gapCoeff11, gapCoeff12, gapCoeff13, gapCoeff14,
    bernsteinMonomial, Polynomial.eval_comp, Polynomial.eval_add, Polynomial.eval_sub,
    Polynomial.eval_mul, Polynomial.eval_pow, Polynomial.eval_C, Polynomial.eval_X] <;> ring

theorem leafMap_eq_path : leafMap = (((halfLeft).comp halfRight).comp halfLeft).comp halfRight := by
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

end Math.B699.I11SevenTwoGrowth.QLeaf005

#print axioms Math.B699.I11SevenTwoGrowth.QLeaf005.actual_gap_eq
#print axioms Math.B699.I11SevenTwoGrowth.QLeaf005.leafMap_eq_path
#print axioms Math.B699.I11SevenTwoGrowth.QLeaf005.gapExpansion_cone
#print axioms Math.B699.I11SevenTwoGrowth.QLeaf005.local_gap_cone
#print axioms Math.B699.I11SevenTwoGrowth.QLeaf005.local_core_cone
#print axioms Math.B699.I11SevenTwoGrowth.QLeaf005.local_weight0_cone
#print axioms Math.B699.I11SevenTwoGrowth.QLeaf005.local_weight1_cone
#print axioms Math.B699.I11SevenTwoGrowth.QLeaf005.leaf_delta0
#print axioms Math.B699.I11SevenTwoGrowth.QLeaf005.leaf_delta1
namespace Math.B699.I11SevenTwoGrowth.QLeaf006


open Polynomial Math.B699.PadeMoment Math.B699.PadeGrowthPartition Math.B699.GrowthLeaf
open Math.B699.I11SevenTwoGrowth.Shared

local instance : Infinite ℚ :=
  Infinite.of_injective (fun n : ℕ => (n : ℚ)) Nat.cast_injective

def seedC : ℕ := 9
def seedD : ℕ := 5
def seedZ : ℚ := (1 : ℚ) / 49
def leafA : ℚ := (3 : ℚ) / 8
def leafB : ℚ := (1 : ℚ) / 2
def lam : ℚ := (19015678853391498507418691 : ℚ) / 79228162514264337593543950336

noncomputable def seedCore : ℚ[X] := qSeedCore
noncomputable def seedWeight0 : ℚ[X] := qSeedWeight0
noncomputable def seedWeight1 : ℚ[X] := qSeedWeight1
noncomputable def leafMap : ℚ[X] := affine leafA leafB
noncomputable def localCore : ℚ[X] := seedCore.comp leafMap
noncomputable def localWeight0 : ℚ[X] := seedWeight0.comp leafMap
noncomputable def localWeight1 : ℚ[X] := seedWeight1.comp leafMap

def gapCoeff0 : ℚ := (1093730184504652380176483157879059 : ℚ) / 22379994934029284813556388163605233664
def gapCoeff1 : ℚ := (9013025149791478455085891007553413 : ℚ) / 11189997467014642406778194081802616832
def gapCoeff2 : ℚ := (135727368171347926837085932463954369 : ℚ) / 22379994934029284813556388163605233664
def gapCoeff3 : ℚ := (154941298505285268947633855375186369 : ℚ) / 5594998733507321203389097040901308416
def gapCoeff4 : ℚ := (274304346045603540901937656677659037 : ℚ) / 3197142133432754973365198309086461952
def gapCoeff5 : ℚ := (2137695406026190792765641409663179595 : ℚ) / 11189997467014642406778194081802616832
def gapCoeff6 : ℚ := (7063874483525343805282751449655726561 : ℚ) / 22379994934029284813556388163605233664
def gapCoeff7 : ℚ := (1100889457025923801940268971710600407 : ℚ) / 2797499366753660601694548520450654208
def gapCoeff8 : ℚ := (8334428704293943531137165950427124193 : ℚ) / 22379994934029284813556388163605233664
def gapCoeff9 : ℚ := (2981207614171502535238366970849893195 : ℚ) / 11189997467014642406778194081802616832
def gapCoeff10 : ℚ := (3176602122269954472242507596837002059 : ℚ) / 22379994934029284813556388163605233664
def gapCoeff11 : ℚ := (43678831203062410018906103439627767 : ℚ) / 799285533358188743341299577271615488
def gapCoeff12 : ℚ := (321856123270755405337276926240594369 : ℚ) / 22379994934029284813556388163605233664
def gapCoeff13 : ℚ := (25926520387456823279307049612353413 : ℚ) / 11189997467014642406778194081802616832
def gapCoeff14 : ℚ := (3860301344497511566983503087479059 : ℚ) / 22379994934029284813556388163605233664

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
  norm_num [lam, localCore, seedCore, qSeedCore, qSeedC, qSeedD, qSeedZ,
    Math.B699.GrowthLeaf.qCore, Math.B699.GrowthLeaf.qFactor, seedC, seedD, seedZ, leafMap, affine, leafA, leafB, gapExpansion,
    gapCoeff0, gapCoeff1, gapCoeff2, gapCoeff3, gapCoeff4, gapCoeff5, gapCoeff6, gapCoeff7, gapCoeff8, gapCoeff9, gapCoeff10, gapCoeff11, gapCoeff12, gapCoeff13, gapCoeff14,
    bernsteinMonomial, Polynomial.eval_comp, Polynomial.eval_add, Polynomial.eval_sub,
    Polynomial.eval_mul, Polynomial.eval_pow, Polynomial.eval_C, Polynomial.eval_X] <;> ring

theorem leafMap_eq_path : leafMap = ((halfLeft).comp halfRight).comp halfRight := by
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

end Math.B699.I11SevenTwoGrowth.QLeaf006

#print axioms Math.B699.I11SevenTwoGrowth.QLeaf006.actual_gap_eq
#print axioms Math.B699.I11SevenTwoGrowth.QLeaf006.leafMap_eq_path
#print axioms Math.B699.I11SevenTwoGrowth.QLeaf006.gapExpansion_cone
#print axioms Math.B699.I11SevenTwoGrowth.QLeaf006.local_gap_cone
#print axioms Math.B699.I11SevenTwoGrowth.QLeaf006.local_core_cone
#print axioms Math.B699.I11SevenTwoGrowth.QLeaf006.local_weight0_cone
#print axioms Math.B699.I11SevenTwoGrowth.QLeaf006.local_weight1_cone
#print axioms Math.B699.I11SevenTwoGrowth.QLeaf006.leaf_delta0
#print axioms Math.B699.I11SevenTwoGrowth.QLeaf006.leaf_delta1
namespace Math.B699.I11SevenTwoGrowth.QLeaf007


open Polynomial Math.B699.PadeMoment Math.B699.PadeGrowthPartition Math.B699.GrowthLeaf
open Math.B699.I11SevenTwoGrowth.Shared

local instance : Infinite ℚ :=
  Infinite.of_injective (fun n : ℕ => (n : ℚ)) Nat.cast_injective

def seedC : ℕ := 9
def seedD : ℕ := 5
def seedZ : ℚ := (1 : ℚ) / 49
def leafA : ℚ := (1 : ℚ) / 2
def leafB : ℚ := (1 : ℚ)
def lam : ℚ := (19015678853391498507418691 : ℚ) / 79228162514264337593543950336

noncomputable def seedCore : ℚ[X] := qSeedCore
noncomputable def seedWeight0 : ℚ[X] := qSeedWeight0
noncomputable def seedWeight1 : ℚ[X] := qSeedWeight1
noncomputable def leafMap : ℚ[X] := affine leafA leafB
noncomputable def localCore : ℚ[X] := seedCore.comp leafMap
noncomputable def localWeight0 : ℚ[X] := seedWeight0.comp leafMap
noncomputable def localWeight1 : ℚ[X] := seedWeight1.comp leafMap

def gapCoeff0 : ℚ := (3860301344497511566983503087479059 : ℚ) / 22379994934029284813556388163605233664
def gapCoeff1 : ℚ := (31404465507585611727194409612353413 : ℚ) / 11189997467014642406778194081802616832
def gapCoeff2 : ℚ := (450092929586377195044234545440594369 : ℚ) / 22379994934029284813556388163605233664
def gapCoeff3 : ℚ := (67835926940988696802340298383627767 : ℚ) / 799285533358188743341299577271615488
def gapCoeff4 : ℚ := (763198873403447221006453214751617437 : ℚ) / 3197142133432754973365198309086461952
def gapCoeff5 : ℚ := (767716240942402269354941479225782685 : ℚ) / 1598571066716377486682599154543230976
def gapCoeff6 : ℚ := (2304295994667961130437000873600472279 : ℚ) / 3197142133432754973365198309086461952
def gapCoeff7 : ℚ := (2304353735440986003697145390364480727 : ℚ) / 2797499366753660601694548520450654208
def gapCoeff8 : ℚ := (16130489918467671521718178107322061281 : ℚ) / 22379994934029284813556388163605233664
def gapCoeff9 : ℚ := (5376830076396873794116209035667413835 : ℚ) / 11189997467014642406778194081802616832
def gapCoeff10 : ℚ := (19034694532244890005926109691 : ℚ) / 79228162514264337593543950336
def gapCoeff11 : ℚ := (1730426775658626364175100881 : ℚ) / 19807040628566084398385987584
def gapCoeff12 : ℚ := (1730426775658626364175100881 : ℚ) / 79228162514264337593543950336
def gapCoeff13 : ℚ := (133109751973740489551930837 : ℚ) / 39614081257132168796771975168
def gapCoeff14 : ℚ := (19015678853391498507418691 : ℚ) / 79228162514264337593543950336

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
  norm_num [lam, localCore, seedCore, qSeedCore, qSeedC, qSeedD, qSeedZ,
    Math.B699.GrowthLeaf.qCore, Math.B699.GrowthLeaf.qFactor, seedC, seedD, seedZ, leafMap, affine, leafA, leafB, gapExpansion,
    gapCoeff0, gapCoeff1, gapCoeff2, gapCoeff3, gapCoeff4, gapCoeff5, gapCoeff6, gapCoeff7, gapCoeff8, gapCoeff9, gapCoeff10, gapCoeff11, gapCoeff12, gapCoeff13, gapCoeff14,
    bernsteinMonomial, Polynomial.eval_comp, Polynomial.eval_add, Polynomial.eval_sub,
    Polynomial.eval_mul, Polynomial.eval_pow, Polynomial.eval_C, Polynomial.eval_X] <;> ring

theorem leafMap_eq_path : leafMap = halfRight := by
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

end Math.B699.I11SevenTwoGrowth.QLeaf007

#print axioms Math.B699.I11SevenTwoGrowth.QLeaf007.actual_gap_eq
#print axioms Math.B699.I11SevenTwoGrowth.QLeaf007.leafMap_eq_path
#print axioms Math.B699.I11SevenTwoGrowth.QLeaf007.gapExpansion_cone
#print axioms Math.B699.I11SevenTwoGrowth.QLeaf007.local_gap_cone
#print axioms Math.B699.I11SevenTwoGrowth.QLeaf007.local_core_cone
#print axioms Math.B699.I11SevenTwoGrowth.QLeaf007.local_weight0_cone
#print axioms Math.B699.I11SevenTwoGrowth.QLeaf007.local_weight1_cone
#print axioms Math.B699.I11SevenTwoGrowth.QLeaf007.leaf_delta0
#print axioms Math.B699.I11SevenTwoGrowth.QLeaf007.leaf_delta1
namespace Math.B699.I11SevenTwoGrowth.ELeaf000


open Polynomial Math.B699.PadeMoment Math.B699.PadeGrowthPartition Math.B699.GrowthLeaf
open Math.B699.I11SevenTwoGrowth.Shared

local instance : Infinite ℚ :=
  Infinite.of_injective (fun n : ℕ => (n : ℚ)) Nat.cast_injective

def seedC : ℕ := 9
def seedD : ℕ := 5
def seedZ : ℚ := (1 : ℚ) / 49
def leafA : ℚ := (0 : ℚ)
def leafB : ℚ := (1 : ℚ) / 4
def lam : ℚ := (18567076935738840000672813 : ℚ) / 19807040628566084398385987584

noncomputable def seedCore : ℚ[X] := eSeedCore
noncomputable def seedWeight0 : ℚ[X] := eSeedWeight0
noncomputable def seedWeight1 : ℚ[X] := eSeedWeight1
noncomputable def leafMap : ℚ[X] := affine leafA leafB
noncomputable def localCore : ℚ[X] := seedCore.comp leafMap
noncomputable def localWeight0 : ℚ[X] := seedWeight0.comp leafMap
noncomputable def localWeight1 : ℚ[X] := seedWeight1.comp leafMap

def gapCoeff0 : ℚ := (18567076935738840000672813 : ℚ) / 19807040628566084398385987584
def gapCoeff1 : ℚ := (129969538550171880004709691 : ℚ) / 9903520314283042199192993792
def gapCoeff2 : ℚ := (1689604001152234440061225983 : ℚ) / 19807040628566084398385987584
def gapCoeff3 : ℚ := (1689604001152234440061225983 : ℚ) / 4951760157141521099596496896
def gapCoeff4 : ℚ := (18585644012674578840673485813 : ℚ) / 19807040628566084398385987584
def gapCoeff5 : ℚ := (18575972606117661807275836405 : ℚ) / 9903520314283042199192993792
def gapCoeff6 : ℚ := (2724763579396298436780282987951 : ℚ) / 970544990799738135520913391616
def gapCoeff7 : ℚ := (18970861391730807905749201610697 : ℚ) / 5944588068648396080065594523648
def gapCoeff8 : ℚ := (6439560371425529817730989065702991 : ℚ) / 2330278522910171263385713053270016
def gapCoeff9 : ℚ := (103377559204069845290708919591233973 : ℚ) / 57091823811299195952949969805115392
def gapCoeff10 : ℚ := (100739843819597052069640934337931701 : ℚ) / 114183647622598391905899939610230784
def gapCoeff11 : ℚ := (8835095284408830011950222445057343 : ℚ) / 28545911905649597976474984902557696
def gapCoeff12 : ℚ := (8427296704247701187768316748043583 : ℚ) / 114183647622598391905899939610230784
def gapCoeff13 : ℚ := (610714153754053764325970296474491 : ℚ) / 57091823811299195952949969805115392
def gapCoeff14 : ℚ := (81110165346823481053675709535213 : ℚ) / 114183647622598391905899939610230784

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

theorem leafMap_eq_path : leafMap = (halfLeft).comp halfLeft := by
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

end Math.B699.I11SevenTwoGrowth.ELeaf000

#print axioms Math.B699.I11SevenTwoGrowth.ELeaf000.actual_gap_eq
#print axioms Math.B699.I11SevenTwoGrowth.ELeaf000.leafMap_eq_path
#print axioms Math.B699.I11SevenTwoGrowth.ELeaf000.gapExpansion_cone
#print axioms Math.B699.I11SevenTwoGrowth.ELeaf000.local_gap_cone
#print axioms Math.B699.I11SevenTwoGrowth.ELeaf000.local_core_cone
#print axioms Math.B699.I11SevenTwoGrowth.ELeaf000.local_weight0_cone
#print axioms Math.B699.I11SevenTwoGrowth.ELeaf000.local_weight1_cone
#print axioms Math.B699.I11SevenTwoGrowth.ELeaf000.leaf_delta0
#print axioms Math.B699.I11SevenTwoGrowth.ELeaf000.leaf_delta1
namespace Math.B699.I11SevenTwoGrowth.ELeaf001


open Polynomial Math.B699.PadeMoment Math.B699.PadeGrowthPartition Math.B699.GrowthLeaf
open Math.B699.I11SevenTwoGrowth.Shared

local instance : Infinite ℚ :=
  Infinite.of_injective (fun n : ℕ => (n : ℚ)) Nat.cast_injective

def seedC : ℕ := 9
def seedD : ℕ := 5
def seedZ : ℚ := (1 : ℚ) / 49
def leafA : ℚ := (1 : ℚ) / 4
def leafB : ℚ := (3 : ℚ) / 8
def lam : ℚ := (18567076935738840000672813 : ℚ) / 19807040628566084398385987584

noncomputable def seedCore : ℚ[X] := eSeedCore
noncomputable def seedWeight0 : ℚ[X] := eSeedWeight0
noncomputable def seedWeight1 : ℚ[X] := eSeedWeight1
noncomputable def leafMap : ℚ[X] := affine leafA leafB
noncomputable def localCore : ℚ[X] := seedCore.comp leafMap
noncomputable def localWeight0 : ℚ[X] := seedWeight0.comp leafMap
noncomputable def localWeight1 : ℚ[X] := seedWeight1.comp leafMap

def gapCoeff0 : ℚ := (81110165346823481053675709535213 : ℚ) / 114183647622598391905899939610230784
def gapCoeff1 : ℚ := (546299659264619668900609801882491 : ℚ) / 57091823811299195952949969805115392
def gapCoeff2 : ℚ := (6805204532619984638325759933093183 : ℚ) / 114183647622598391905899939610230784
def gapCoeff3 : ℚ := (6492197917911612793553784069100863 : ℚ) / 28545911905649597976474984902557696
def gapCoeff4 : ℚ := (67809089656809645443086666625051061 : ℚ) / 114183647622598391905899939610230784
def gapCoeff5 : ℚ := (64063022279130531018617390959815093 : ℚ) / 57091823811299195952949969805115392
def gapCoeff6 : ℚ := (180600931616976767398584746966367519 : ℚ) / 114183647622598391905899939610230784
def gapCoeff7 : ℚ := (3443768558888759769044742462705231 : ℚ) / 2038993707546399855462498921611264
def gapCoeff8 : ℚ := (156709483056794202249037720822070559 : ℚ) / 114183647622598391905899939610230784
def gapCoeff9 : ℚ := (48196843117855515481022312807524789 : ℚ) / 57091823811299195952949969805115392
def gapCoeff10 : ℚ := (44162379329746916630921714844953013 : ℚ) / 114183647622598391905899939610230784
def gapCoeff11 : ℚ := (3651548397545361793077517692376383 : ℚ) / 28545911905649597976474984902557696
def gapCoeff12 : ℚ := (3294995402416118226707993275864383 : ℚ) / 114183647622598391905899939610230784
def gapCoeff13 : ℚ := (226782543978544467129601900186491 : ℚ) / 57091823811299195952949969805115392
def gapCoeff14 : ℚ := (28725999346408621155937346655213 : ℚ) / 114183647622598391905899939610230784

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

theorem leafMap_eq_path : leafMap = ((halfLeft).comp halfRight).comp halfLeft := by
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

end Math.B699.I11SevenTwoGrowth.ELeaf001

#print axioms Math.B699.I11SevenTwoGrowth.ELeaf001.actual_gap_eq
#print axioms Math.B699.I11SevenTwoGrowth.ELeaf001.leafMap_eq_path
#print axioms Math.B699.I11SevenTwoGrowth.ELeaf001.gapExpansion_cone
#print axioms Math.B699.I11SevenTwoGrowth.ELeaf001.local_gap_cone
#print axioms Math.B699.I11SevenTwoGrowth.ELeaf001.local_core_cone
#print axioms Math.B699.I11SevenTwoGrowth.ELeaf001.local_weight0_cone
#print axioms Math.B699.I11SevenTwoGrowth.ELeaf001.local_weight1_cone
#print axioms Math.B699.I11SevenTwoGrowth.ELeaf001.leaf_delta0
#print axioms Math.B699.I11SevenTwoGrowth.ELeaf001.leaf_delta1
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
namespace Math.B699.I11SevenTwoGrowth.ELeaf004


open Polynomial Math.B699.PadeMoment Math.B699.PadeGrowthPartition Math.B699.GrowthLeaf
open Math.B699.I11SevenTwoGrowth.Shared

local instance : Infinite ℚ :=
  Infinite.of_injective (fun n : ℕ => (n : ℚ)) Nat.cast_injective

def seedC : ℕ := 9
def seedD : ℕ := 5
def seedZ : ℚ := (1 : ℚ) / 49
def leafA : ℚ := (15 : ℚ) / 32
def leafB : ℚ := (31 : ℚ) / 64
def lam : ℚ := (18567076935738840000672813 : ℚ) / 19807040628566084398385987584

noncomputable def seedCore : ℚ[X] := eSeedCore
noncomputable def seedWeight0 : ℚ[X] := eSeedWeight0
noncomputable def seedWeight1 : ℚ[X] := eSeedWeight1
noncomputable def leafMap : ℚ[X] := affine leafA leafB
noncomputable def localCore : ℚ[X] := seedCore.comp leafMap
noncomputable def localWeight0 : ℚ[X] := seedWeight0.comp leafMap
noncomputable def localWeight1 : ℚ[X] := seedWeight1.comp leafMap

def gapCoeff0 : ℚ := (1813487051783669381039580255213 : ℚ) / 114183647622598391905899939610230784
def gapCoeff1 : ℚ := (11730574999288753664941112986491 : ℚ) / 57091823811299195952949969805115392
def gapCoeff2 : ℚ := (140469832268811824000562834904383 : ℚ) / 114183647622598391905899939610230784
def gapCoeff3 : ℚ := (128946239233100729500800593368383 : ℚ) / 28545911905649597976474984902557696
def gapCoeff4 : ℚ := (1297212983353466616672854118885813 : ℚ) / 114183647622598391905899939610230784
def gapCoeff5 : ℚ := (1181599559775656702691235489507765 : ℚ) / 57091823811299195952949969805115392
def gapCoeff6 : ℚ := (3214757178462898969134217870032159 : ℚ) / 114183647622598391905899939610230784
def gapCoeff7 : ℚ := (59215583207981198181654380744271 : ℚ) / 2038993707546399855462498921611264
def gapCoeff8 : ℚ := (2605264026089981126870212339612959 : ℚ) / 114183647622598391905899939610230784
def gapCoeff9 : ℚ := (775300561557453828825015736232373 : ℚ) / 57091823811299195952949969805115392
def gapCoeff10 : ℚ := (687838903481116407423310176201141 : ℚ) / 114183647622598391905899939610230784
def gapCoeff11 : ℚ := (55095340877020435627346387170623 : ℚ) / 28545911905649597976474984902557696
def gapCoeff12 : ℚ := (48176497720220989988651290379583 : ℚ) / 114183647622598391905899939610230784
def gapCoeff13 : ℚ := (3213478633096002641322242458491 : ℚ) / 57091823811299195952949969805115392
def gapCoeff14 : ℚ := (394421590142730859414195935213 : ℚ) / 114183647622598391905899939610230784

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

theorem leafMap_eq_path : leafMap = (((((halfLeft).comp halfRight).comp halfRight).comp halfRight).comp halfRight).comp halfLeft := by
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

end Math.B699.I11SevenTwoGrowth.ELeaf004

#print axioms Math.B699.I11SevenTwoGrowth.ELeaf004.actual_gap_eq
#print axioms Math.B699.I11SevenTwoGrowth.ELeaf004.leafMap_eq_path
#print axioms Math.B699.I11SevenTwoGrowth.ELeaf004.gapExpansion_cone
#print axioms Math.B699.I11SevenTwoGrowth.ELeaf004.local_gap_cone
#print axioms Math.B699.I11SevenTwoGrowth.ELeaf004.local_core_cone
#print axioms Math.B699.I11SevenTwoGrowth.ELeaf004.local_weight0_cone
#print axioms Math.B699.I11SevenTwoGrowth.ELeaf004.local_weight1_cone
#print axioms Math.B699.I11SevenTwoGrowth.ELeaf004.leaf_delta0
#print axioms Math.B699.I11SevenTwoGrowth.ELeaf004.leaf_delta1
namespace Math.B699.I11SevenTwoGrowth.ELeaf005


open Polynomial Math.B699.PadeMoment Math.B699.PadeGrowthPartition Math.B699.GrowthLeaf
open Math.B699.I11SevenTwoGrowth.Shared

local instance : Infinite ℚ :=
  Infinite.of_injective (fun n : ℕ => (n : ℚ)) Nat.cast_injective

def seedC : ℕ := 9
def seedD : ℕ := 5
def seedZ : ℚ := (1 : ℚ) / 49
def leafA : ℚ := (31 : ℚ) / 64
def leafB : ℚ := (63 : ℚ) / 128
def lam : ℚ := (18567076935738840000672813 : ℚ) / 19807040628566084398385987584

noncomputable def seedCore : ℚ[X] := eSeedCore
noncomputable def seedWeight0 : ℚ[X] := eSeedWeight0
noncomputable def seedWeight1 : ℚ[X] := eSeedWeight1
noncomputable def leafMap : ℚ[X] := affine leafA leafB
noncomputable def localCore : ℚ[X] := seedCore.comp leafMap
noncomputable def localWeight0 : ℚ[X] := seedWeight0.comp leafMap
noncomputable def localWeight1 : ℚ[X] := seedWeight1.comp leafMap

def gapCoeff0 : ℚ := (394421590142730859414195935213 : ℚ) / 114183647622598391905899939610230784
def gapCoeff1 : ℚ := (2534687379950672703187936090491 : ℚ) / 57091823811299195952949969805115392
def gapCoeff2 : ℚ := (30139111666407339456435712389183 : ℚ) / 114183647622598391905899939610230784
def gapCoeff3 : ℚ := (27456998171120158593385942016703 : ℚ) / 28545911905649597976474984902557696
def gapCoeff4 : ℚ := (273951655897111436090885103076341 : ℚ) / 114183647622598391905899939610230784
def gapCoeff5 : ℚ := (247305298962459085689238622523093 : ℚ) / 57091823811299195952949969805115392
def gapCoeff6 : ℚ := (95180952118831848038587838689017 : ℚ) / 16311949660371198843699991372890112
def gapCoeff7 : ℚ := (1734431541597115262254265851233 : ℚ) / 291284815363771407923214131658752
def gapCoeff8 : ℚ := (219845279222375820942373297899 : ℚ) / 47556704549187168640524756189184
def gapCoeff9 : ℚ := (9224024132856707942590954657 : ℚ) / 3396907467799083474323196870656
def gapCoeff10 : ℚ := (576035793122042151685064031 : ℚ) / 485272495399869067760456695808
def gapCoeff11 : ℚ := (25938007742487298268203887 : ℚ) / 69324642199981295394350956544
def gapCoeff12 : ℚ := (44537555816035653589295649 : ℚ) / 554597137599850363154807652352
def gapCoeff13 : ℚ := (831488602189430812311903 : ℚ) / 79228162514264337593543950336
def gapCoeff14 : ℚ := (199445839158802813455633 : ℚ) / 316912650057057350374175801344

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

theorem leafMap_eq_path : leafMap = ((((((halfLeft).comp halfRight).comp halfRight).comp halfRight).comp halfRight).comp halfRight).comp halfLeft := by
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

end Math.B699.I11SevenTwoGrowth.ELeaf005

#print axioms Math.B699.I11SevenTwoGrowth.ELeaf005.actual_gap_eq
#print axioms Math.B699.I11SevenTwoGrowth.ELeaf005.leafMap_eq_path
#print axioms Math.B699.I11SevenTwoGrowth.ELeaf005.gapExpansion_cone
#print axioms Math.B699.I11SevenTwoGrowth.ELeaf005.local_gap_cone
#print axioms Math.B699.I11SevenTwoGrowth.ELeaf005.local_core_cone
#print axioms Math.B699.I11SevenTwoGrowth.ELeaf005.local_weight0_cone
#print axioms Math.B699.I11SevenTwoGrowth.ELeaf005.local_weight1_cone
#print axioms Math.B699.I11SevenTwoGrowth.ELeaf005.leaf_delta0
#print axioms Math.B699.I11SevenTwoGrowth.ELeaf005.leaf_delta1
namespace Math.B699.I11SevenTwoGrowth.ELeaf006


open Polynomial Math.B699.PadeMoment Math.B699.PadeGrowthPartition Math.B699.GrowthLeaf
open Math.B699.I11SevenTwoGrowth.Shared

local instance : Infinite ℚ :=
  Infinite.of_injective (fun n : ℕ => (n : ℚ)) Nat.cast_injective

def seedC : ℕ := 9
def seedD : ℕ := 5
def seedZ : ℚ := (1 : ℚ) / 49
def leafA : ℚ := (63 : ℚ) / 128
def leafB : ℚ := (127 : ℚ) / 256
def lam : ℚ := (18567076935738840000672813 : ℚ) / 19807040628566084398385987584

noncomputable def seedCore : ℚ[X] := eSeedCore
noncomputable def seedWeight0 : ℚ[X] := eSeedWeight0
noncomputable def seedWeight1 : ℚ[X] := eSeedWeight1
noncomputable def leafMap : ℚ[X] := affine leafA leafB
noncomputable def localCore : ℚ[X] := seedCore.comp leafMap
noncomputable def localWeight0 : ℚ[X] := seedWeight0.comp leafMap
noncomputable def localWeight1 : ℚ[X] := seedWeight1.comp leafMap

def gapCoeff0 : ℚ := (199445839158802813455633 : ℚ) / 316912650057057350374175801344
def gapCoeff1 : ℚ := (2525385417955997457944487 : ℚ) / 316912650057057350374175801344
def gapCoeff2 : ℚ := (413587665570700696853728509 : ℚ) / 8873554201597605810476922437632
def gapCoeff3 : ℚ := (740181943970771719991752893 : ℚ) / 4436777100798802905238461218816
def gapCoeff4 : ℚ := (101372179359724077920724001497 : ℚ) / 248459517644732962693353828253696
def gapCoeff5 : ℚ := (1253526281466253562868757570415 : ℚ) / 1739216623513130738853476797775872
def gapCoeff6 : ℚ := (46148802382122008209455977946267 : ℚ) / 48698065458367660687897350337724416
def gapCoeff7 : ℚ := (561525887474034433465437506509245 : ℚ) / 596551301865003843426742541637124096
def gapCoeff8 : ℚ := (47373406966621018019523544386689709 : ℚ) / 66813745808880430463795164663357898752
def gapCoeff9 : ℚ := (188289864290675763296736923075051625 : ℚ) / 467696220662163013246566152643505291264
def gapCoeff10 : ℚ := (316893308395176746609872776877463529 : ℚ) / 1870784882648652052986264610574021165056
def gapCoeff11 : ℚ := (47835086987426750607119855355634395 : ℚ) / 935392441324326026493132305287010582528
def gapCoeff12 : ℚ := (78246950537873097505700577843779931 : ℚ) / 7483139530594608211945058442296084660224
def gapCoeff13 : ℚ := (9686826572567916305417656949587335 : ℚ) / 7483139530594608211945058442296084660224
def gapCoeff14 : ℚ := (2190001295412504182559956534624769 : ℚ) / 29932558122378432847780233769184338640896

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

theorem leafMap_eq_path : leafMap = (((((((halfLeft).comp halfRight).comp halfRight).comp halfRight).comp halfRight).comp halfRight).comp halfRight).comp halfLeft := by
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

end Math.B699.I11SevenTwoGrowth.ELeaf006

#print axioms Math.B699.I11SevenTwoGrowth.ELeaf006.actual_gap_eq
#print axioms Math.B699.I11SevenTwoGrowth.ELeaf006.leafMap_eq_path
#print axioms Math.B699.I11SevenTwoGrowth.ELeaf006.gapExpansion_cone
#print axioms Math.B699.I11SevenTwoGrowth.ELeaf006.local_gap_cone
#print axioms Math.B699.I11SevenTwoGrowth.ELeaf006.local_core_cone
#print axioms Math.B699.I11SevenTwoGrowth.ELeaf006.local_weight0_cone
#print axioms Math.B699.I11SevenTwoGrowth.ELeaf006.local_weight1_cone
#print axioms Math.B699.I11SevenTwoGrowth.ELeaf006.leaf_delta0
#print axioms Math.B699.I11SevenTwoGrowth.ELeaf006.leaf_delta1
namespace Math.B699.I11SevenTwoGrowth.ELeaf007


open Polynomial Math.B699.PadeMoment Math.B699.PadeGrowthPartition Math.B699.GrowthLeaf
open Math.B699.I11SevenTwoGrowth.Shared

local instance : Infinite ℚ :=
  Infinite.of_injective (fun n : ℕ => (n : ℚ)) Nat.cast_injective

def seedC : ℕ := 9
def seedD : ℕ := 5
def seedZ : ℚ := (1 : ℚ) / 49
def leafA : ℚ := (127 : ℚ) / 256
def leafB : ℚ := (1 : ℚ) / 2
def lam : ℚ := (18567076935738840000672813 : ℚ) / 19807040628566084398385987584

noncomputable def seedCore : ℚ[X] := eSeedCore
noncomputable def seedWeight0 : ℚ[X] := eSeedWeight0
noncomputable def seedWeight1 : ℚ[X] := eSeedWeight1
noncomputable def leafMap : ℚ[X] := affine leafA leafB
noncomputable def localCore : ℚ[X] := seedCore.comp leafMap
noncomputable def localWeight0 : ℚ[X] := seedWeight0.comp leafMap
noncomputable def localWeight1 : ℚ[X] := seedWeight1.comp leafMap

def gapCoeff0 : ℚ := (2190001295412504182559956534624769 : ℚ) / 29932558122378432847780233769184338640896
def gapCoeff1 : ℚ := (44087363244684476347672178068641 : ℚ) / 58462027582770376655820769080438161408
def gapCoeff2 : ℚ := (895632586971440924169836139975 : ℚ) / 260991194565939181499199861966241792
def gapCoeff3 : ℚ := (256642034258474322865274102559 : ℚ) / 28545911905649597976474984902557696
def gapCoeff4 : ℚ := (1695233987249311237576537775541 : ℚ) / 114183647622598391905899939610230784
def gapCoeff5 : ℚ := (926753607930011836596460841397 : ℚ) / 57091823811299195952949969805115392
def gapCoeff6 : ℚ := (1552872606591391343959262215455 : ℚ) / 114183647622598391905899939610230784
def gapCoeff7 : ℚ := (200504890644419217746734965801 : ℚ) / 14272955952824798988237492451278848
def gapCoeff8 : ℚ := (2332230666797671556474712472863 : ℚ) / 114183647622598391905899939610230784
def gapCoeff9 : ℚ := (206615947538129349397928943971 : ℚ) / 8155974830185599421849995686445056
def gapCoeff10 : ℚ := (2474535986807582151003613030837 : ℚ) / 114183647622598391905899939610230784
def gapCoeff11 : ℚ := (351096937039904098570711274815 : ℚ) / 28545911905649597976474984902557696
def gapCoeff12 : ℚ := (509898330070503210446576358719 : ℚ) / 114183647622598391905899939610230784
def gapCoeff13 : ℚ := (53950748297598243677920332667 : ℚ) / 57091823811299195952949969805115392
def gapCoeff14 : ℚ := (10170093405382656357485515757 : ℚ) / 114183647622598391905899939610230784

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

theorem leafMap_eq_path : leafMap = (((((((halfLeft).comp halfRight).comp halfRight).comp halfRight).comp halfRight).comp halfRight).comp halfRight).comp halfRight := by
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

end Math.B699.I11SevenTwoGrowth.ELeaf007

#print axioms Math.B699.I11SevenTwoGrowth.ELeaf007.actual_gap_eq
#print axioms Math.B699.I11SevenTwoGrowth.ELeaf007.leafMap_eq_path
#print axioms Math.B699.I11SevenTwoGrowth.ELeaf007.gapExpansion_cone
#print axioms Math.B699.I11SevenTwoGrowth.ELeaf007.local_gap_cone
#print axioms Math.B699.I11SevenTwoGrowth.ELeaf007.local_core_cone
#print axioms Math.B699.I11SevenTwoGrowth.ELeaf007.local_weight0_cone
#print axioms Math.B699.I11SevenTwoGrowth.ELeaf007.local_weight1_cone
#print axioms Math.B699.I11SevenTwoGrowth.ELeaf007.leaf_delta0
#print axioms Math.B699.I11SevenTwoGrowth.ELeaf007.leaf_delta1
namespace Math.B699.I11SevenTwoGrowth.ELeaf008


open Polynomial Math.B699.PadeMoment Math.B699.PadeGrowthPartition Math.B699.GrowthLeaf
open Math.B699.I11SevenTwoGrowth.Shared

local instance : Infinite ℚ :=
  Infinite.of_injective (fun n : ℕ => (n : ℚ)) Nat.cast_injective

def seedC : ℕ := 9
def seedD : ℕ := 5
def seedZ : ℚ := (1 : ℚ) / 49
def leafA : ℚ := (1 : ℚ) / 2
def leafB : ℚ := (1 : ℚ)
def lam : ℚ := (18567076935738840000672813 : ℚ) / 19807040628566084398385987584

noncomputable def seedCore : ℚ[X] := eSeedCore
noncomputable def seedWeight0 : ℚ[X] := eSeedWeight0
noncomputable def seedWeight1 : ℚ[X] := eSeedWeight1
noncomputable def leafMap : ℚ[X] := affine leafA leafB
noncomputable def localCore : ℚ[X] := seedCore.comp leafMap
noncomputable def localWeight0 : ℚ[X] := seedWeight0.comp leafMap
noncomputable def localWeight1 : ℚ[X] := seedWeight1.comp leafMap

def gapCoeff0 : ℚ := (10170093405382656357485515757 : ℚ) / 114183647622598391905899939610230784
def gapCoeff1 : ℚ := (2277898562967963500035618147195 : ℚ) / 57091823811299195952949969805115392
def gapCoeff2 : ℚ := (593358303403150794588771765130559 : ℚ) / 114183647622598391905899939610230784
def gapCoeff3 : ℚ := (240949384606652917049807752463113 : ℚ) / 4077987415092799710924997843222528
def gapCoeff4 : ℚ := (5039089722159145959152469357306211 : ℚ) / 16311949660371198843699991372890112
def gapCoeff5 : ℚ := (7787153742886271686586108718555491 : ℚ) / 8155974830185599421849995686445056
def gapCoeff6 : ℚ := (31463463826755696398863466351125545 : ℚ) / 16311949660371198843699991372890112
def gapCoeff7 : ℚ := (38225542931506743338782546143831081 : ℚ) / 14272955952824798988237492451278848
def gapCoeff8 : ℚ := (299933333992261416594101955514449183 : ℚ) / 114183647622598391905899939610230784
def gapCoeff9 : ℚ := (105499664012014639470953624334100917 : ℚ) / 57091823811299195952949969805115392
def gapCoeff10 : ℚ := (18585644012674578840673485813 : ℚ) / 19807040628566084398385987584
def gapCoeff11 : ℚ := (1689604001152234440061225983 : ℚ) / 4951760157141521099596496896
def gapCoeff12 : ℚ := (1689604001152234440061225983 : ℚ) / 19807040628566084398385987584
def gapCoeff13 : ℚ := (129969538550171880004709691 : ℚ) / 9903520314283042199192993792
def gapCoeff14 : ℚ := (18567076935738840000672813 : ℚ) / 19807040628566084398385987584

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

theorem leafMap_eq_path : leafMap = halfRight := by
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

end Math.B699.I11SevenTwoGrowth.ELeaf008

#print axioms Math.B699.I11SevenTwoGrowth.ELeaf008.actual_gap_eq
#print axioms Math.B699.I11SevenTwoGrowth.ELeaf008.leafMap_eq_path
#print axioms Math.B699.I11SevenTwoGrowth.ELeaf008.gapExpansion_cone
#print axioms Math.B699.I11SevenTwoGrowth.ELeaf008.local_gap_cone
#print axioms Math.B699.I11SevenTwoGrowth.ELeaf008.local_core_cone
#print axioms Math.B699.I11SevenTwoGrowth.ELeaf008.local_weight0_cone
#print axioms Math.B699.I11SevenTwoGrowth.ELeaf008.local_weight1_cone
#print axioms Math.B699.I11SevenTwoGrowth.ELeaf008.leaf_delta0
#print axioms Math.B699.I11SevenTwoGrowth.ELeaf008.leaf_delta1

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

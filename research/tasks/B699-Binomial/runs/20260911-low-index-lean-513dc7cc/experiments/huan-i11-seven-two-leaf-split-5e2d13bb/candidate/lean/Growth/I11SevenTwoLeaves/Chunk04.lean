import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Growth.Affine
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Growth.Partition
import Mathlib.Algebra.Polynomial.Roots
import Mathlib.Tactic.NormNum
import Mathlib.Tactic.Ring
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Growth.I11SevenTwoShared

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

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

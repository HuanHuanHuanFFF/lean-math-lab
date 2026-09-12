import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Growth.Affine
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Growth.Partition
import Mathlib.Algebra.Polynomial.Roots
import Mathlib.Tactic.NormNum
import Mathlib.Tactic.Ring
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Growth.I11SevenTwoShared

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

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

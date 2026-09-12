import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Growth.Affine
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Growth.Partition
import Mathlib.Algebra.Polynomial.Roots
import Mathlib.Tactic.NormNum
import Mathlib.Tactic.Ring
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Growth.I11FiveThreeShared

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace Math.B699.I11FiveThreeGrowth.QLeaf000


open Polynomial Math.B699.PadeMoment Math.B699.PadeGrowthPartition Math.B699.GrowthLeaf
open Math.B699.I11FiveThreeGrowth.Shared

local instance : Infinite ℚ :=
  Infinite.of_injective (fun n : ℕ => (n : ℚ)) Nat.cast_injective

def seedC : ℕ := 5
def seedD : ℕ := 3
def seedZ : ℚ := (1 : ℚ) / 4375
def leafA : ℚ := (0 : ℚ)
def leafB : ℚ := (1 : ℚ) / 4
def lam : ℚ := (440758604932333255282947863 : ℚ) / 39614081257132168796771975168

noncomputable def seedCore : ℚ[X] := qSeedCore
noncomputable def seedWeight0 : ℚ[X] := qSeedWeight0
noncomputable def seedWeight1 : ℚ[X] := qSeedWeight1
noncomputable def leafMap : ℚ[X] := affine leafA leafB
noncomputable def localCore : ℚ[X] := seedCore.comp leafMap
noncomputable def localWeight0 : ℚ[X] := seedWeight0.comp leafMap
noncomputable def localWeight1 : ℚ[X] := seedWeight1.comp leafMap

def gapCoeff0 : ℚ := (440758604932333255282947863 : ℚ) / 39614081257132168796771975168
def gapCoeff1 : ℚ := (440758604932333255282947863 : ℚ) / 4951760157141521099596496896
def gapCoeff2 : ℚ := (2466340214883642649531072929 : ℚ) / 9903520314283042199192993792
def gapCoeff3 : ℚ := (7405014031437608893719607678583 : ℚ) / 21663950687494154810734673920000
def gapCoeff4 : ℚ := (95332490922442741043362132547017333 : ℚ) / 379119137031147709187856793600000000
def gapCoeff5 : ℚ := (39670430644486954847846329106088029671 : ℚ) / 414661556127817806924218368000000000000
def gapCoeff6 : ℚ := (12324286812067408656091649600528543207 : ℚ) / 829323112255635613848436736000000000000
def gapCoeff7 : ℚ := (1775676005611106181597671095003937 : ℚ) / 414661556127817806924218368000000000000
def gapCoeff8 : ℚ := (369731348118972293105074115177249 : ℚ) / 3317292449022542455393746944000000000000

noncomputable def gapExpansion : ℚ[X] :=
  Polynomial.C gapCoeff0 * bernsteinMonomial 0 8 +
  Polynomial.C gapCoeff1 * bernsteinMonomial 1 7 +
  Polynomial.C gapCoeff2 * bernsteinMonomial 2 6 +
  Polynomial.C gapCoeff3 * bernsteinMonomial 3 5 +
  Polynomial.C gapCoeff4 * bernsteinMonomial 4 4 +
  Polynomial.C gapCoeff5 * bernsteinMonomial 5 3 +
  Polynomial.C gapCoeff6 * bernsteinMonomial 6 2 +
  Polynomial.C gapCoeff7 * bernsteinMonomial 7 1 +
  Polynomial.C gapCoeff8 * bernsteinMonomial 8 0

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
    gapCoeff0, gapCoeff1, gapCoeff2, gapCoeff3, gapCoeff4, gapCoeff5, gapCoeff6, gapCoeff7, gapCoeff8,
    bernsteinMonomial, Polynomial.eval_comp, Polynomial.eval_add, Polynomial.eval_sub,
    Polynomial.eval_mul, Polynomial.eval_pow, Polynomial.eval_C, Polynomial.eval_X] <;> ring

theorem leafMap_eq_path : leafMap = (halfLeft).comp halfLeft := by
  apply Polynomial.funext
  intro x
  norm_num [leafMap, affine, leafA, leafB, halfLeft, halfRight,
    Polynomial.eval_comp, Polynomial.eval_add, Polynomial.eval_sub,
    Polynomial.eval_mul, Polynomial.eval_C, Polynomial.eval_X] <;> ring

theorem gapExpansion_cone : BernsteinCone gapExpansion := by
  have h0 : BernsteinCone (Polynomial.C gapCoeff0 * bernsteinMonomial 0 8) :=
    BernsteinCone.scale gapCoeff0 (by norm_num [gapCoeff0]) (BernsteinCone.basis 0 8)
  have h1 : BernsteinCone (Polynomial.C gapCoeff1 * bernsteinMonomial 1 7) :=
    BernsteinCone.scale gapCoeff1 (by norm_num [gapCoeff1]) (BernsteinCone.basis 1 7)
  have h2 : BernsteinCone (Polynomial.C gapCoeff2 * bernsteinMonomial 2 6) :=
    BernsteinCone.scale gapCoeff2 (by norm_num [gapCoeff2]) (BernsteinCone.basis 2 6)
  have h3 : BernsteinCone (Polynomial.C gapCoeff3 * bernsteinMonomial 3 5) :=
    BernsteinCone.scale gapCoeff3 (by norm_num [gapCoeff3]) (BernsteinCone.basis 3 5)
  have h4 : BernsteinCone (Polynomial.C gapCoeff4 * bernsteinMonomial 4 4) :=
    BernsteinCone.scale gapCoeff4 (by norm_num [gapCoeff4]) (BernsteinCone.basis 4 4)
  have h5 : BernsteinCone (Polynomial.C gapCoeff5 * bernsteinMonomial 5 3) :=
    BernsteinCone.scale gapCoeff5 (by norm_num [gapCoeff5]) (BernsteinCone.basis 5 3)
  have h6 : BernsteinCone (Polynomial.C gapCoeff6 * bernsteinMonomial 6 2) :=
    BernsteinCone.scale gapCoeff6 (by norm_num [gapCoeff6]) (BernsteinCone.basis 6 2)
  have h7 : BernsteinCone (Polynomial.C gapCoeff7 * bernsteinMonomial 7 1) :=
    BernsteinCone.scale gapCoeff7 (by norm_num [gapCoeff7]) (BernsteinCone.basis 7 1)
  have h8 : BernsteinCone (Polynomial.C gapCoeff8 * bernsteinMonomial 8 0) :=
    BernsteinCone.scale gapCoeff8 (by norm_num [gapCoeff8]) (BernsteinCone.basis 8 0)
  exact BernsteinCone.add (BernsteinCone.add (BernsteinCone.add (BernsteinCone.add (BernsteinCone.add (BernsteinCone.add (BernsteinCone.add (BernsteinCone.add (h0) h1) h2) h3) h4) h5) h6) h7) h8

theorem local_gap_cone : BernsteinCone (Polynomial.C lam - localCore) := by
  rw [actual_gap_eq]
  exact gapExpansion_cone

theorem local_core_cone : BernsteinCone localCore := by
  exact Math.B699.GrowthLeaf.cone_qCore seedC seedD seedZ (by norm_num [seedZ])
    |> fun h => cone_comp_affine h leafA leafB (by norm_num [leafA]) (by norm_num [leafA, leafB]) (by norm_num [leafB])

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

end Math.B699.I11FiveThreeGrowth.QLeaf000

#print axioms Math.B699.I11FiveThreeGrowth.QLeaf000.actual_gap_eq
#print axioms Math.B699.I11FiveThreeGrowth.QLeaf000.leafMap_eq_path
#print axioms Math.B699.I11FiveThreeGrowth.QLeaf000.gapExpansion_cone
#print axioms Math.B699.I11FiveThreeGrowth.QLeaf000.local_gap_cone
#print axioms Math.B699.I11FiveThreeGrowth.QLeaf000.local_core_cone
#print axioms Math.B699.I11FiveThreeGrowth.QLeaf000.local_weight0_cone
#print axioms Math.B699.I11FiveThreeGrowth.QLeaf000.local_weight1_cone
#print axioms Math.B699.I11FiveThreeGrowth.QLeaf000.leaf_delta0
#print axioms Math.B699.I11FiveThreeGrowth.QLeaf000.leaf_delta1
namespace Math.B699.I11FiveThreeGrowth.QLeaf001


open Polynomial Math.B699.PadeMoment Math.B699.PadeGrowthPartition Math.B699.GrowthLeaf
open Math.B699.I11FiveThreeGrowth.Shared

local instance : Infinite ℚ :=
  Infinite.of_injective (fun n : ℕ => (n : ℚ)) Nat.cast_injective

def seedC : ℕ := 5
def seedD : ℕ := 3
def seedZ : ℚ := (1 : ℚ) / 4375
def leafA : ℚ := (1 : ℚ) / 4
def leafB : ℚ := (5 : ℚ) / 16
def lam : ℚ := (440758604932333255282947863 : ℚ) / 39614081257132168796771975168

noncomputable def seedCore : ℚ[X] := qSeedCore
noncomputable def seedWeight0 : ℚ[X] := qSeedWeight0
noncomputable def seedWeight1 : ℚ[X] := qSeedWeight1
noncomputable def leafMap : ℚ[X] := affine leafA leafB
noncomputable def localCore : ℚ[X] := seedCore.comp leafMap
noncomputable def localWeight0 : ℚ[X] := seedWeight0.comp leafMap
noncomputable def localWeight1 : ℚ[X] := seedWeight1.comp leafMap

def gapCoeff0 : ℚ := (369731348118972293105074115177249 : ℚ) / 3317292449022542455393746944000000000000
def gapCoeff1 : ℚ := (18245183745938820981924870220577 : ℚ) / 414661556127817806924218368000000000000
def gapCoeff2 : ℚ := (766543279849715710917075037127142887 : ℚ) / 829323112255635613848436736000000000000
def gapCoeff3 : ℚ := (322734724471389386171108431758355233 : ℚ) / 59237365161116829560602624000000000000
def gapCoeff4 : ℚ := (885978943051477525012894979966834171 : ℚ) / 66345848980450849107874938880000000000
def gapCoeff5 : ℚ := (57817636381350243413549991788656947 : ℚ) / 3317292449022542455393746944000000000
def gapCoeff6 : ℚ := (16955820989485714047345776246518231 : ℚ) / 1326916979609016982157498777600000000
def gapCoeff7 : ℚ := (132442286437313101182334730034009 : ℚ) / 26538339592180339643149975552000000
def gapCoeff8 : ℚ := (861174230082936699880083337791677 : ℚ) / 1061533583687213585725999022080000000

noncomputable def gapExpansion : ℚ[X] :=
  Polynomial.C gapCoeff0 * bernsteinMonomial 0 8 +
  Polynomial.C gapCoeff1 * bernsteinMonomial 1 7 +
  Polynomial.C gapCoeff2 * bernsteinMonomial 2 6 +
  Polynomial.C gapCoeff3 * bernsteinMonomial 3 5 +
  Polynomial.C gapCoeff4 * bernsteinMonomial 4 4 +
  Polynomial.C gapCoeff5 * bernsteinMonomial 5 3 +
  Polynomial.C gapCoeff6 * bernsteinMonomial 6 2 +
  Polynomial.C gapCoeff7 * bernsteinMonomial 7 1 +
  Polynomial.C gapCoeff8 * bernsteinMonomial 8 0

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
    gapCoeff0, gapCoeff1, gapCoeff2, gapCoeff3, gapCoeff4, gapCoeff5, gapCoeff6, gapCoeff7, gapCoeff8,
    bernsteinMonomial, Polynomial.eval_comp, Polynomial.eval_add, Polynomial.eval_sub,
    Polynomial.eval_mul, Polynomial.eval_pow, Polynomial.eval_C, Polynomial.eval_X] <;> ring

theorem leafMap_eq_path : leafMap = (((halfLeft).comp halfRight).comp halfLeft).comp halfLeft := by
  apply Polynomial.funext
  intro x
  norm_num [leafMap, affine, leafA, leafB, halfLeft, halfRight,
    Polynomial.eval_comp, Polynomial.eval_add, Polynomial.eval_sub,
    Polynomial.eval_mul, Polynomial.eval_C, Polynomial.eval_X] <;> ring

theorem gapExpansion_cone : BernsteinCone gapExpansion := by
  have h0 : BernsteinCone (Polynomial.C gapCoeff0 * bernsteinMonomial 0 8) :=
    BernsteinCone.scale gapCoeff0 (by norm_num [gapCoeff0]) (BernsteinCone.basis 0 8)
  have h1 : BernsteinCone (Polynomial.C gapCoeff1 * bernsteinMonomial 1 7) :=
    BernsteinCone.scale gapCoeff1 (by norm_num [gapCoeff1]) (BernsteinCone.basis 1 7)
  have h2 : BernsteinCone (Polynomial.C gapCoeff2 * bernsteinMonomial 2 6) :=
    BernsteinCone.scale gapCoeff2 (by norm_num [gapCoeff2]) (BernsteinCone.basis 2 6)
  have h3 : BernsteinCone (Polynomial.C gapCoeff3 * bernsteinMonomial 3 5) :=
    BernsteinCone.scale gapCoeff3 (by norm_num [gapCoeff3]) (BernsteinCone.basis 3 5)
  have h4 : BernsteinCone (Polynomial.C gapCoeff4 * bernsteinMonomial 4 4) :=
    BernsteinCone.scale gapCoeff4 (by norm_num [gapCoeff4]) (BernsteinCone.basis 4 4)
  have h5 : BernsteinCone (Polynomial.C gapCoeff5 * bernsteinMonomial 5 3) :=
    BernsteinCone.scale gapCoeff5 (by norm_num [gapCoeff5]) (BernsteinCone.basis 5 3)
  have h6 : BernsteinCone (Polynomial.C gapCoeff6 * bernsteinMonomial 6 2) :=
    BernsteinCone.scale gapCoeff6 (by norm_num [gapCoeff6]) (BernsteinCone.basis 6 2)
  have h7 : BernsteinCone (Polynomial.C gapCoeff7 * bernsteinMonomial 7 1) :=
    BernsteinCone.scale gapCoeff7 (by norm_num [gapCoeff7]) (BernsteinCone.basis 7 1)
  have h8 : BernsteinCone (Polynomial.C gapCoeff8 * bernsteinMonomial 8 0) :=
    BernsteinCone.scale gapCoeff8 (by norm_num [gapCoeff8]) (BernsteinCone.basis 8 0)
  exact BernsteinCone.add (BernsteinCone.add (BernsteinCone.add (BernsteinCone.add (BernsteinCone.add (BernsteinCone.add (BernsteinCone.add (BernsteinCone.add (h0) h1) h2) h3) h4) h5) h6) h7) h8

theorem local_gap_cone : BernsteinCone (Polynomial.C lam - localCore) := by
  rw [actual_gap_eq]
  exact gapExpansion_cone

theorem local_core_cone : BernsteinCone localCore := by
  exact Math.B699.GrowthLeaf.cone_qCore seedC seedD seedZ (by norm_num [seedZ])
    |> fun h => cone_comp_affine h leafA leafB (by norm_num [leafA]) (by norm_num [leafA, leafB]) (by norm_num [leafB])

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

end Math.B699.I11FiveThreeGrowth.QLeaf001

#print axioms Math.B699.I11FiveThreeGrowth.QLeaf001.actual_gap_eq
#print axioms Math.B699.I11FiveThreeGrowth.QLeaf001.leafMap_eq_path
#print axioms Math.B699.I11FiveThreeGrowth.QLeaf001.gapExpansion_cone
#print axioms Math.B699.I11FiveThreeGrowth.QLeaf001.local_gap_cone
#print axioms Math.B699.I11FiveThreeGrowth.QLeaf001.local_core_cone
#print axioms Math.B699.I11FiveThreeGrowth.QLeaf001.local_weight0_cone
#print axioms Math.B699.I11FiveThreeGrowth.QLeaf001.local_weight1_cone
#print axioms Math.B699.I11FiveThreeGrowth.QLeaf001.leaf_delta0
#print axioms Math.B699.I11FiveThreeGrowth.QLeaf001.leaf_delta1
namespace Math.B699.I11FiveThreeGrowth.QLeaf002


open Polynomial Math.B699.PadeMoment Math.B699.PadeGrowthPartition Math.B699.GrowthLeaf
open Math.B699.I11FiveThreeGrowth.Shared

local instance : Infinite ℚ :=
  Infinite.of_injective (fun n : ℕ => (n : ℚ)) Nat.cast_injective

def seedC : ℕ := 5
def seedD : ℕ := 3
def seedZ : ℚ := (1 : ℚ) / 4375
def leafA : ℚ := (5 : ℚ) / 16
def leafB : ℚ := (3 : ℚ) / 8
def lam : ℚ := (440758604932333255282947863 : ℚ) / 39614081257132168796771975168

noncomputable def seedCore : ℚ[X] := qSeedCore
noncomputable def seedWeight0 : ℚ[X] := qSeedWeight0
noncomputable def seedWeight1 : ℚ[X] := qSeedWeight1
noncomputable def leafMap : ℚ[X] := affine leafA leafB
noncomputable def localCore : ℚ[X] := seedCore.comp leafMap
noncomputable def localWeight0 : ℚ[X] := seedWeight0.comp leafMap
noncomputable def localWeight1 : ℚ[X] := seedWeight1.comp leafMap

def gapCoeff0 : ℚ := (861174230082936699880083337791677 : ℚ) / 1061533583687213585725999022080000000
def gapCoeff1 : ℚ := (1060137027979307893848493025413309 : ℚ) / 132691697960901698215749877760000000
def gapCoeff2 : ℚ := (44810612694977681202923132513546711 : ℚ) / 1326916979609016982157498777600000000
def gapCoeff3 : ℚ := (265856907827544995424425303158143283 : ℚ) / 3317292449022542455393746944000000000
def gapCoeff4 : ℚ := (7762510234924969148311747983401227771 : ℚ) / 66345848980450849107874938880000000000
def gapCoeff5 : ℚ := (44694626380374690417615292015255186919 : ℚ) / 414661556127817806924218368000000000000
def gapCoeff6 : ℚ := (10165367413616951722073280831646012923 : ℚ) / 165864622451127122769687347200000000000
def gapCoeff7 : ℚ := (6665895997418663206657908292392857 : ℚ) / 338499229492096168917729280000000000
def gapCoeff8 : ℚ := (72740506782795277279403626488339061 : ℚ) / 26538339592180339643149975552000000000

noncomputable def gapExpansion : ℚ[X] :=
  Polynomial.C gapCoeff0 * bernsteinMonomial 0 8 +
  Polynomial.C gapCoeff1 * bernsteinMonomial 1 7 +
  Polynomial.C gapCoeff2 * bernsteinMonomial 2 6 +
  Polynomial.C gapCoeff3 * bernsteinMonomial 3 5 +
  Polynomial.C gapCoeff4 * bernsteinMonomial 4 4 +
  Polynomial.C gapCoeff5 * bernsteinMonomial 5 3 +
  Polynomial.C gapCoeff6 * bernsteinMonomial 6 2 +
  Polynomial.C gapCoeff7 * bernsteinMonomial 7 1 +
  Polynomial.C gapCoeff8 * bernsteinMonomial 8 0

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
    gapCoeff0, gapCoeff1, gapCoeff2, gapCoeff3, gapCoeff4, gapCoeff5, gapCoeff6, gapCoeff7, gapCoeff8,
    bernsteinMonomial, Polynomial.eval_comp, Polynomial.eval_add, Polynomial.eval_sub,
    Polynomial.eval_mul, Polynomial.eval_pow, Polynomial.eval_C, Polynomial.eval_X] <;> ring

theorem leafMap_eq_path : leafMap = (((halfLeft).comp halfRight).comp halfLeft).comp halfRight := by
  apply Polynomial.funext
  intro x
  norm_num [leafMap, affine, leafA, leafB, halfLeft, halfRight,
    Polynomial.eval_comp, Polynomial.eval_add, Polynomial.eval_sub,
    Polynomial.eval_mul, Polynomial.eval_C, Polynomial.eval_X] <;> ring

theorem gapExpansion_cone : BernsteinCone gapExpansion := by
  have h0 : BernsteinCone (Polynomial.C gapCoeff0 * bernsteinMonomial 0 8) :=
    BernsteinCone.scale gapCoeff0 (by norm_num [gapCoeff0]) (BernsteinCone.basis 0 8)
  have h1 : BernsteinCone (Polynomial.C gapCoeff1 * bernsteinMonomial 1 7) :=
    BernsteinCone.scale gapCoeff1 (by norm_num [gapCoeff1]) (BernsteinCone.basis 1 7)
  have h2 : BernsteinCone (Polynomial.C gapCoeff2 * bernsteinMonomial 2 6) :=
    BernsteinCone.scale gapCoeff2 (by norm_num [gapCoeff2]) (BernsteinCone.basis 2 6)
  have h3 : BernsteinCone (Polynomial.C gapCoeff3 * bernsteinMonomial 3 5) :=
    BernsteinCone.scale gapCoeff3 (by norm_num [gapCoeff3]) (BernsteinCone.basis 3 5)
  have h4 : BernsteinCone (Polynomial.C gapCoeff4 * bernsteinMonomial 4 4) :=
    BernsteinCone.scale gapCoeff4 (by norm_num [gapCoeff4]) (BernsteinCone.basis 4 4)
  have h5 : BernsteinCone (Polynomial.C gapCoeff5 * bernsteinMonomial 5 3) :=
    BernsteinCone.scale gapCoeff5 (by norm_num [gapCoeff5]) (BernsteinCone.basis 5 3)
  have h6 : BernsteinCone (Polynomial.C gapCoeff6 * bernsteinMonomial 6 2) :=
    BernsteinCone.scale gapCoeff6 (by norm_num [gapCoeff6]) (BernsteinCone.basis 6 2)
  have h7 : BernsteinCone (Polynomial.C gapCoeff7 * bernsteinMonomial 7 1) :=
    BernsteinCone.scale gapCoeff7 (by norm_num [gapCoeff7]) (BernsteinCone.basis 7 1)
  have h8 : BernsteinCone (Polynomial.C gapCoeff8 * bernsteinMonomial 8 0) :=
    BernsteinCone.scale gapCoeff8 (by norm_num [gapCoeff8]) (BernsteinCone.basis 8 0)
  exact BernsteinCone.add (BernsteinCone.add (BernsteinCone.add (BernsteinCone.add (BernsteinCone.add (BernsteinCone.add (BernsteinCone.add (BernsteinCone.add (h0) h1) h2) h3) h4) h5) h6) h7) h8

theorem local_gap_cone : BernsteinCone (Polynomial.C lam - localCore) := by
  rw [actual_gap_eq]
  exact gapExpansion_cone

theorem local_core_cone : BernsteinCone localCore := by
  exact Math.B699.GrowthLeaf.cone_qCore seedC seedD seedZ (by norm_num [seedZ])
    |> fun h => cone_comp_affine h leafA leafB (by norm_num [leafA]) (by norm_num [leafA, leafB]) (by norm_num [leafB])

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

end Math.B699.I11FiveThreeGrowth.QLeaf002

#print axioms Math.B699.I11FiveThreeGrowth.QLeaf002.actual_gap_eq
#print axioms Math.B699.I11FiveThreeGrowth.QLeaf002.leafMap_eq_path
#print axioms Math.B699.I11FiveThreeGrowth.QLeaf002.gapExpansion_cone
#print axioms Math.B699.I11FiveThreeGrowth.QLeaf002.local_gap_cone
#print axioms Math.B699.I11FiveThreeGrowth.QLeaf002.local_core_cone
#print axioms Math.B699.I11FiveThreeGrowth.QLeaf002.local_weight0_cone
#print axioms Math.B699.I11FiveThreeGrowth.QLeaf002.local_weight1_cone
#print axioms Math.B699.I11FiveThreeGrowth.QLeaf002.leaf_delta0
#print axioms Math.B699.I11FiveThreeGrowth.QLeaf002.leaf_delta1
namespace Math.B699.I11FiveThreeGrowth.QLeaf003


open Polynomial Math.B699.PadeMoment Math.B699.PadeGrowthPartition Math.B699.GrowthLeaf
open Math.B699.I11FiveThreeGrowth.Shared

local instance : Infinite ℚ :=
  Infinite.of_injective (fun n : ℕ => (n : ℚ)) Nat.cast_injective

def seedC : ℕ := 5
def seedD : ℕ := 3
def seedZ : ℚ := (1 : ℚ) / 4375
def leafA : ℚ := (3 : ℚ) / 8
def leafB : ℚ := (1 : ℚ) / 2
def lam : ℚ := (440758604932333255282947863 : ℚ) / 39614081257132168796771975168

noncomputable def seedCore : ℚ[X] := qSeedCore
noncomputable def seedWeight0 : ℚ[X] := qSeedWeight0
noncomputable def seedWeight1 : ℚ[X] := qSeedWeight1
noncomputable def leafMap : ℚ[X] := affine leafA leafB
noncomputable def localCore : ℚ[X] := seedCore.comp leafMap
noncomputable def localWeight0 : ℚ[X] := seedWeight0.comp leafMap
noncomputable def localWeight1 : ℚ[X] := seedWeight1.comp leafMap

def gapCoeff0 : ℚ := (72740506782795277279403626488339061 : ℚ) / 26538339592180339643149975552000000000
def gapCoeff1 : ℚ := (437849793994900164938579384670585929 : ℚ) / 16586462245112712276968734720000000000
def gapCoeff2 : ℚ := (18043628210494279810334082388273075707 : ℚ) / 165864622451127122769687347200000000000
def gapCoeff3 : ℚ := (104060454546880214515234454568738713063 : ℚ) / 414661556127817806924218368000000000000
def gapCoeff4 : ℚ := (117824344796102397418969391576275447271 : ℚ) / 331729244902254245539374694400000000000
def gapCoeff5 : ℚ := (3749737739506030247946633358544049517 : ℚ) / 11847473032223365912120524800000000000
def gapCoeff6 : ℚ := (28820197299977646537686632887625127419 : ℚ) / 165864622451127122769687347200000000000
def gapCoeff7 : ℚ := (4464368112200004398535843787596993901 : ℚ) / 82932311225563561384843673600000000000
def gapCoeff8 : ℚ := (23942167614913024364697160554187320097 : ℚ) / 3317292449022542455393746944000000000000

noncomputable def gapExpansion : ℚ[X] :=
  Polynomial.C gapCoeff0 * bernsteinMonomial 0 8 +
  Polynomial.C gapCoeff1 * bernsteinMonomial 1 7 +
  Polynomial.C gapCoeff2 * bernsteinMonomial 2 6 +
  Polynomial.C gapCoeff3 * bernsteinMonomial 3 5 +
  Polynomial.C gapCoeff4 * bernsteinMonomial 4 4 +
  Polynomial.C gapCoeff5 * bernsteinMonomial 5 3 +
  Polynomial.C gapCoeff6 * bernsteinMonomial 6 2 +
  Polynomial.C gapCoeff7 * bernsteinMonomial 7 1 +
  Polynomial.C gapCoeff8 * bernsteinMonomial 8 0

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
    gapCoeff0, gapCoeff1, gapCoeff2, gapCoeff3, gapCoeff4, gapCoeff5, gapCoeff6, gapCoeff7, gapCoeff8,
    bernsteinMonomial, Polynomial.eval_comp, Polynomial.eval_add, Polynomial.eval_sub,
    Polynomial.eval_mul, Polynomial.eval_pow, Polynomial.eval_C, Polynomial.eval_X] <;> ring

theorem leafMap_eq_path : leafMap = ((halfLeft).comp halfRight).comp halfRight := by
  apply Polynomial.funext
  intro x
  norm_num [leafMap, affine, leafA, leafB, halfLeft, halfRight,
    Polynomial.eval_comp, Polynomial.eval_add, Polynomial.eval_sub,
    Polynomial.eval_mul, Polynomial.eval_C, Polynomial.eval_X] <;> ring

theorem gapExpansion_cone : BernsteinCone gapExpansion := by
  have h0 : BernsteinCone (Polynomial.C gapCoeff0 * bernsteinMonomial 0 8) :=
    BernsteinCone.scale gapCoeff0 (by norm_num [gapCoeff0]) (BernsteinCone.basis 0 8)
  have h1 : BernsteinCone (Polynomial.C gapCoeff1 * bernsteinMonomial 1 7) :=
    BernsteinCone.scale gapCoeff1 (by norm_num [gapCoeff1]) (BernsteinCone.basis 1 7)
  have h2 : BernsteinCone (Polynomial.C gapCoeff2 * bernsteinMonomial 2 6) :=
    BernsteinCone.scale gapCoeff2 (by norm_num [gapCoeff2]) (BernsteinCone.basis 2 6)
  have h3 : BernsteinCone (Polynomial.C gapCoeff3 * bernsteinMonomial 3 5) :=
    BernsteinCone.scale gapCoeff3 (by norm_num [gapCoeff3]) (BernsteinCone.basis 3 5)
  have h4 : BernsteinCone (Polynomial.C gapCoeff4 * bernsteinMonomial 4 4) :=
    BernsteinCone.scale gapCoeff4 (by norm_num [gapCoeff4]) (BernsteinCone.basis 4 4)
  have h5 : BernsteinCone (Polynomial.C gapCoeff5 * bernsteinMonomial 5 3) :=
    BernsteinCone.scale gapCoeff5 (by norm_num [gapCoeff5]) (BernsteinCone.basis 5 3)
  have h6 : BernsteinCone (Polynomial.C gapCoeff6 * bernsteinMonomial 6 2) :=
    BernsteinCone.scale gapCoeff6 (by norm_num [gapCoeff6]) (BernsteinCone.basis 6 2)
  have h7 : BernsteinCone (Polynomial.C gapCoeff7 * bernsteinMonomial 7 1) :=
    BernsteinCone.scale gapCoeff7 (by norm_num [gapCoeff7]) (BernsteinCone.basis 7 1)
  have h8 : BernsteinCone (Polynomial.C gapCoeff8 * bernsteinMonomial 8 0) :=
    BernsteinCone.scale gapCoeff8 (by norm_num [gapCoeff8]) (BernsteinCone.basis 8 0)
  exact BernsteinCone.add (BernsteinCone.add (BernsteinCone.add (BernsteinCone.add (BernsteinCone.add (BernsteinCone.add (BernsteinCone.add (BernsteinCone.add (h0) h1) h2) h3) h4) h5) h6) h7) h8

theorem local_gap_cone : BernsteinCone (Polynomial.C lam - localCore) := by
  rw [actual_gap_eq]
  exact gapExpansion_cone

theorem local_core_cone : BernsteinCone localCore := by
  exact Math.B699.GrowthLeaf.cone_qCore seedC seedD seedZ (by norm_num [seedZ])
    |> fun h => cone_comp_affine h leafA leafB (by norm_num [leafA]) (by norm_num [leafA, leafB]) (by norm_num [leafB])

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

end Math.B699.I11FiveThreeGrowth.QLeaf003

#print axioms Math.B699.I11FiveThreeGrowth.QLeaf003.actual_gap_eq
#print axioms Math.B699.I11FiveThreeGrowth.QLeaf003.leafMap_eq_path
#print axioms Math.B699.I11FiveThreeGrowth.QLeaf003.gapExpansion_cone
#print axioms Math.B699.I11FiveThreeGrowth.QLeaf003.local_gap_cone
#print axioms Math.B699.I11FiveThreeGrowth.QLeaf003.local_core_cone
#print axioms Math.B699.I11FiveThreeGrowth.QLeaf003.local_weight0_cone
#print axioms Math.B699.I11FiveThreeGrowth.QLeaf003.local_weight1_cone
#print axioms Math.B699.I11FiveThreeGrowth.QLeaf003.leaf_delta0
#print axioms Math.B699.I11FiveThreeGrowth.QLeaf003.leaf_delta1
namespace Math.B699.I11FiveThreeGrowth.QLeaf004


open Polynomial Math.B699.PadeMoment Math.B699.PadeGrowthPartition Math.B699.GrowthLeaf
open Math.B699.I11FiveThreeGrowth.Shared

local instance : Infinite ℚ :=
  Infinite.of_injective (fun n : ℕ => (n : ℚ)) Nat.cast_injective

def seedC : ℕ := 5
def seedD : ℕ := 3
def seedZ : ℚ := (1 : ℚ) / 4375
def leafA : ℚ := (1 : ℚ) / 2
def leafB : ℚ := (1 : ℚ)
def lam : ℚ := (440758604932333255282947863 : ℚ) / 39614081257132168796771975168

noncomputable def seedCore : ℚ[X] := qSeedCore
noncomputable def seedWeight0 : ℚ[X] := qSeedWeight0
noncomputable def seedWeight1 : ℚ[X] := qSeedWeight1
noncomputable def leafMap : ℚ[X] := affine leafA leafB
noncomputable def localCore : ℚ[X] := seedCore.comp leafMap
noncomputable def localWeight0 : ℚ[X] := seedWeight0.comp leafMap
noncomputable def localWeight1 : ℚ[X] := seedWeight1.comp leafMap

def gapCoeff0 : ℚ := (23942167614913024364697160554187320097 : ℚ) / 3317292449022542455393746944000000000000
def gapCoeff1 : ℚ := (6084695166113006770553785403799344493 : ℚ) / 82932311225563561384843673600000000000
def gapCoeff2 : ℚ := (49075951905596965777350485071399949819 : ℚ) / 165864622451127122769687347200000000000
def gapCoeff3 : ℚ := (51671141685703644861431291431390221819 : ℚ) / 82932311225563561384843673600000000000
def gapCoeff4 : ℚ := (258364598907990781527596725034577522151 : ℚ) / 331729244902254245539374694400000000000
def gapCoeff5 : ℚ := (258364602158202354671362636782228172263 : ℚ) / 414661556127817806924218368000000000000
def gapCoeff6 : ℚ := (3085310234526332786980635041 : ℚ) / 9903520314283042199192993792
def gapCoeff7 : ℚ := (440758604932333255282947863 : ℚ) / 4951760157141521099596496896
def gapCoeff8 : ℚ := (440758604932333255282947863 : ℚ) / 39614081257132168796771975168

noncomputable def gapExpansion : ℚ[X] :=
  Polynomial.C gapCoeff0 * bernsteinMonomial 0 8 +
  Polynomial.C gapCoeff1 * bernsteinMonomial 1 7 +
  Polynomial.C gapCoeff2 * bernsteinMonomial 2 6 +
  Polynomial.C gapCoeff3 * bernsteinMonomial 3 5 +
  Polynomial.C gapCoeff4 * bernsteinMonomial 4 4 +
  Polynomial.C gapCoeff5 * bernsteinMonomial 5 3 +
  Polynomial.C gapCoeff6 * bernsteinMonomial 6 2 +
  Polynomial.C gapCoeff7 * bernsteinMonomial 7 1 +
  Polynomial.C gapCoeff8 * bernsteinMonomial 8 0

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
    gapCoeff0, gapCoeff1, gapCoeff2, gapCoeff3, gapCoeff4, gapCoeff5, gapCoeff6, gapCoeff7, gapCoeff8,
    bernsteinMonomial, Polynomial.eval_comp, Polynomial.eval_add, Polynomial.eval_sub,
    Polynomial.eval_mul, Polynomial.eval_pow, Polynomial.eval_C, Polynomial.eval_X] <;> ring

theorem leafMap_eq_path : leafMap = halfRight := by
  apply Polynomial.funext
  intro x
  norm_num [leafMap, affine, leafA, leafB, halfLeft, halfRight,
    Polynomial.eval_comp, Polynomial.eval_add, Polynomial.eval_sub,
    Polynomial.eval_mul, Polynomial.eval_C, Polynomial.eval_X] <;> ring

theorem gapExpansion_cone : BernsteinCone gapExpansion := by
  have h0 : BernsteinCone (Polynomial.C gapCoeff0 * bernsteinMonomial 0 8) :=
    BernsteinCone.scale gapCoeff0 (by norm_num [gapCoeff0]) (BernsteinCone.basis 0 8)
  have h1 : BernsteinCone (Polynomial.C gapCoeff1 * bernsteinMonomial 1 7) :=
    BernsteinCone.scale gapCoeff1 (by norm_num [gapCoeff1]) (BernsteinCone.basis 1 7)
  have h2 : BernsteinCone (Polynomial.C gapCoeff2 * bernsteinMonomial 2 6) :=
    BernsteinCone.scale gapCoeff2 (by norm_num [gapCoeff2]) (BernsteinCone.basis 2 6)
  have h3 : BernsteinCone (Polynomial.C gapCoeff3 * bernsteinMonomial 3 5) :=
    BernsteinCone.scale gapCoeff3 (by norm_num [gapCoeff3]) (BernsteinCone.basis 3 5)
  have h4 : BernsteinCone (Polynomial.C gapCoeff4 * bernsteinMonomial 4 4) :=
    BernsteinCone.scale gapCoeff4 (by norm_num [gapCoeff4]) (BernsteinCone.basis 4 4)
  have h5 : BernsteinCone (Polynomial.C gapCoeff5 * bernsteinMonomial 5 3) :=
    BernsteinCone.scale gapCoeff5 (by norm_num [gapCoeff5]) (BernsteinCone.basis 5 3)
  have h6 : BernsteinCone (Polynomial.C gapCoeff6 * bernsteinMonomial 6 2) :=
    BernsteinCone.scale gapCoeff6 (by norm_num [gapCoeff6]) (BernsteinCone.basis 6 2)
  have h7 : BernsteinCone (Polynomial.C gapCoeff7 * bernsteinMonomial 7 1) :=
    BernsteinCone.scale gapCoeff7 (by norm_num [gapCoeff7]) (BernsteinCone.basis 7 1)
  have h8 : BernsteinCone (Polynomial.C gapCoeff8 * bernsteinMonomial 8 0) :=
    BernsteinCone.scale gapCoeff8 (by norm_num [gapCoeff8]) (BernsteinCone.basis 8 0)
  exact BernsteinCone.add (BernsteinCone.add (BernsteinCone.add (BernsteinCone.add (BernsteinCone.add (BernsteinCone.add (BernsteinCone.add (BernsteinCone.add (h0) h1) h2) h3) h4) h5) h6) h7) h8

theorem local_gap_cone : BernsteinCone (Polynomial.C lam - localCore) := by
  rw [actual_gap_eq]
  exact gapExpansion_cone

theorem local_core_cone : BernsteinCone localCore := by
  exact Math.B699.GrowthLeaf.cone_qCore seedC seedD seedZ (by norm_num [seedZ])
    |> fun h => cone_comp_affine h leafA leafB (by norm_num [leafA]) (by norm_num [leafA, leafB]) (by norm_num [leafB])

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

end Math.B699.I11FiveThreeGrowth.QLeaf004

#print axioms Math.B699.I11FiveThreeGrowth.QLeaf004.actual_gap_eq
#print axioms Math.B699.I11FiveThreeGrowth.QLeaf004.leafMap_eq_path
#print axioms Math.B699.I11FiveThreeGrowth.QLeaf004.gapExpansion_cone
#print axioms Math.B699.I11FiveThreeGrowth.QLeaf004.local_gap_cone
#print axioms Math.B699.I11FiveThreeGrowth.QLeaf004.local_core_cone
#print axioms Math.B699.I11FiveThreeGrowth.QLeaf004.local_weight0_cone
#print axioms Math.B699.I11FiveThreeGrowth.QLeaf004.local_weight1_cone
#print axioms Math.B699.I11FiveThreeGrowth.QLeaf004.leaf_delta0
#print axioms Math.B699.I11FiveThreeGrowth.QLeaf004.leaf_delta1
namespace Math.B699.I11FiveThreeGrowth.ELeaf000


open Polynomial Math.B699.PadeMoment Math.B699.PadeGrowthPartition Math.B699.GrowthLeaf
open Math.B699.I11FiveThreeGrowth.Shared

local instance : Infinite ℚ :=
  Infinite.of_injective (fun n : ℕ => (n : ℚ)) Nat.cast_injective

def seedC : ℕ := 5
def seedD : ℕ := 3
def seedZ : ℚ := (1 : ℚ) / 4375
def leafA : ℚ := (0 : ℚ)
def leafB : ℚ := (1 : ℚ) / 4
def lam : ℚ := (618834739845914957406423393 : ℚ) / 39614081257132168796771975168

noncomputable def seedCore : ℚ[X] := eSeedCore
noncomputable def seedWeight0 : ℚ[X] := eSeedWeight0
noncomputable def seedWeight1 : ℚ[X] := eSeedWeight1
noncomputable def leafMap : ℚ[X] := affine leafA leafB
noncomputable def localCore : ℚ[X] := seedCore.comp leafMap
noncomputable def localWeight0 : ℚ[X] := seedWeight0.comp leafMap
noncomputable def localWeight1 : ℚ[X] := seedWeight1.comp leafMap

def gapCoeff0 : ℚ := (618834739845914957406423393 : ℚ) / 39614081257132168796771975168
def gapCoeff1 : ℚ := (618834739845914957406423393 : ℚ) / 4951760157141521099596496896
def gapCoeff2 : ℚ := (4331843178921404701844963751 : ℚ) / 9903520314283042199192993792
def gapCoeff3 : ℚ := (4254471926466068434663768487 : ℚ) / 4951760157141521099596496896
def gapCoeff4 : ℚ := (89004737380045003653791546683653 : ℚ) / 86655802749976619242938695680000
def gapCoeff5 : ℚ := (72270521850566552937396449907739671 : ℚ) / 94779784257786927296964198400000000
def gapCoeff6 : ℚ := (65005471542566555809389598110813207 : ℚ) / 189559568515573854593928396800000000
def gapCoeff7 : ℚ := (8096626181007147273754846444973937 : ℚ) / 94779784257786927296964198400000000
def gapCoeff8 : ℚ := (6847302208023252834919031166267249 : ℚ) / 758238274062295418375713587200000000

noncomputable def gapExpansion : ℚ[X] :=
  Polynomial.C gapCoeff0 * bernsteinMonomial 0 8 +
  Polynomial.C gapCoeff1 * bernsteinMonomial 1 7 +
  Polynomial.C gapCoeff2 * bernsteinMonomial 2 6 +
  Polynomial.C gapCoeff3 * bernsteinMonomial 3 5 +
  Polynomial.C gapCoeff4 * bernsteinMonomial 4 4 +
  Polynomial.C gapCoeff5 * bernsteinMonomial 5 3 +
  Polynomial.C gapCoeff6 * bernsteinMonomial 6 2 +
  Polynomial.C gapCoeff7 * bernsteinMonomial 7 1 +
  Polynomial.C gapCoeff8 * bernsteinMonomial 8 0

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
    gapCoeff0, gapCoeff1, gapCoeff2, gapCoeff3, gapCoeff4, gapCoeff5, gapCoeff6, gapCoeff7, gapCoeff8,
    bernsteinMonomial, Polynomial.eval_comp, Polynomial.eval_add, Polynomial.eval_sub,
    Polynomial.eval_mul, Polynomial.eval_pow, Polynomial.eval_C, Polynomial.eval_X] <;> ring

theorem leafMap_eq_path : leafMap = (halfLeft).comp halfLeft := by
  apply Polynomial.funext
  intro x
  norm_num [leafMap, affine, leafA, leafB, halfLeft, halfRight,
    Polynomial.eval_comp, Polynomial.eval_add, Polynomial.eval_sub,
    Polynomial.eval_mul, Polynomial.eval_C, Polynomial.eval_X] <;> ring

theorem gapExpansion_cone : BernsteinCone gapExpansion := by
  have h0 : BernsteinCone (Polynomial.C gapCoeff0 * bernsteinMonomial 0 8) :=
    BernsteinCone.scale gapCoeff0 (by norm_num [gapCoeff0]) (BernsteinCone.basis 0 8)
  have h1 : BernsteinCone (Polynomial.C gapCoeff1 * bernsteinMonomial 1 7) :=
    BernsteinCone.scale gapCoeff1 (by norm_num [gapCoeff1]) (BernsteinCone.basis 1 7)
  have h2 : BernsteinCone (Polynomial.C gapCoeff2 * bernsteinMonomial 2 6) :=
    BernsteinCone.scale gapCoeff2 (by norm_num [gapCoeff2]) (BernsteinCone.basis 2 6)
  have h3 : BernsteinCone (Polynomial.C gapCoeff3 * bernsteinMonomial 3 5) :=
    BernsteinCone.scale gapCoeff3 (by norm_num [gapCoeff3]) (BernsteinCone.basis 3 5)
  have h4 : BernsteinCone (Polynomial.C gapCoeff4 * bernsteinMonomial 4 4) :=
    BernsteinCone.scale gapCoeff4 (by norm_num [gapCoeff4]) (BernsteinCone.basis 4 4)
  have h5 : BernsteinCone (Polynomial.C gapCoeff5 * bernsteinMonomial 5 3) :=
    BernsteinCone.scale gapCoeff5 (by norm_num [gapCoeff5]) (BernsteinCone.basis 5 3)
  have h6 : BernsteinCone (Polynomial.C gapCoeff6 * bernsteinMonomial 6 2) :=
    BernsteinCone.scale gapCoeff6 (by norm_num [gapCoeff6]) (BernsteinCone.basis 6 2)
  have h7 : BernsteinCone (Polynomial.C gapCoeff7 * bernsteinMonomial 7 1) :=
    BernsteinCone.scale gapCoeff7 (by norm_num [gapCoeff7]) (BernsteinCone.basis 7 1)
  have h8 : BernsteinCone (Polynomial.C gapCoeff8 * bernsteinMonomial 8 0) :=
    BernsteinCone.scale gapCoeff8 (by norm_num [gapCoeff8]) (BernsteinCone.basis 8 0)
  exact BernsteinCone.add (BernsteinCone.add (BernsteinCone.add (BernsteinCone.add (BernsteinCone.add (BernsteinCone.add (BernsteinCone.add (BernsteinCone.add (h0) h1) h2) h3) h4) h5) h6) h7) h8

theorem local_gap_cone : BernsteinCone (Polynomial.C lam - localCore) := by
  rw [actual_gap_eq]
  exact gapExpansion_cone

theorem local_core_cone : BernsteinCone localCore := by
  exact Math.B699.GrowthLeaf.cone_eCore seedC seedD seedZ (by norm_num [seedZ])
    |> fun h => cone_comp_affine h leafA leafB (by norm_num [leafA]) (by norm_num [leafA, leafB]) (by norm_num [leafB])

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

end Math.B699.I11FiveThreeGrowth.ELeaf000

#print axioms Math.B699.I11FiveThreeGrowth.ELeaf000.actual_gap_eq
#print axioms Math.B699.I11FiveThreeGrowth.ELeaf000.leafMap_eq_path
#print axioms Math.B699.I11FiveThreeGrowth.ELeaf000.gapExpansion_cone
#print axioms Math.B699.I11FiveThreeGrowth.ELeaf000.local_gap_cone
#print axioms Math.B699.I11FiveThreeGrowth.ELeaf000.local_core_cone
#print axioms Math.B699.I11FiveThreeGrowth.ELeaf000.local_weight0_cone
#print axioms Math.B699.I11FiveThreeGrowth.ELeaf000.local_weight1_cone
#print axioms Math.B699.I11FiveThreeGrowth.ELeaf000.leaf_delta0
#print axioms Math.B699.I11FiveThreeGrowth.ELeaf000.leaf_delta1
namespace Math.B699.I11FiveThreeGrowth.ELeaf001


open Polynomial Math.B699.PadeMoment Math.B699.PadeGrowthPartition Math.B699.GrowthLeaf
open Math.B699.I11FiveThreeGrowth.Shared

local instance : Infinite ℚ :=
  Infinite.of_injective (fun n : ℕ => (n : ℚ)) Nat.cast_injective

def seedC : ℕ := 5
def seedD : ℕ := 3
def seedZ : ℚ := (1 : ℚ) / 4375
def leafA : ℚ := (1 : ℚ) / 4
def leafB : ℚ := (3 : ℚ) / 8
def lam : ℚ := (618834739845914957406423393 : ℚ) / 39614081257132168796771975168

noncomputable def seedCore : ℚ[X] := eSeedCore
noncomputable def seedWeight0 : ℚ[X] := eSeedWeight0
noncomputable def seedWeight1 : ℚ[X] := eSeedWeight1
noncomputable def leafMap : ℚ[X] := affine leafA leafB
noncomputable def localCore : ℚ[X] := seedCore.comp leafMap
noncomputable def localWeight0 : ℚ[X] := seedWeight0.comp leafMap
noncomputable def localWeight1 : ℚ[X] := seedWeight1.comp leafMap

def gapCoeff0 : ℚ := (6847302208023252834919031166267249 : ℚ) / 758238274062295418375713587200000000
def gapCoeff1 : ℚ := (1244528044306261123100224705382781 : ℚ) / 18955956851557385459392839680000000
def gapCoeff2 : ℚ := (7816360552286564945579250544837227 : ℚ) / 37911913703114770918785679360000000
def gapCoeff3 : ℚ := (6916412278464410010178521135350379 : ℚ) / 18955956851557385459392839680000000
def gapCoeff4 : ℚ := (4306243798277819420497993404575601 : ℚ) / 10831975343747077405367336960000000
def gapCoeff5 : ℚ := (25850315907182716784236599908404247 : ℚ) / 94779784257786927296964198400000000
def gapCoeff6 : ℚ := (4356196084516364971747681885258347 : ℚ) / 37911913703114770918785679360000000
def gapCoeff7 : ℚ := (102899504003479085331965699814681 : ℚ) / 3791191370311477091878567936000000
def gapCoeff8 : ℚ := (16676321163660377906879916749061 : ℚ) / 6065906192498363347005708697600000

noncomputable def gapExpansion : ℚ[X] :=
  Polynomial.C gapCoeff0 * bernsteinMonomial 0 8 +
  Polynomial.C gapCoeff1 * bernsteinMonomial 1 7 +
  Polynomial.C gapCoeff2 * bernsteinMonomial 2 6 +
  Polynomial.C gapCoeff3 * bernsteinMonomial 3 5 +
  Polynomial.C gapCoeff4 * bernsteinMonomial 4 4 +
  Polynomial.C gapCoeff5 * bernsteinMonomial 5 3 +
  Polynomial.C gapCoeff6 * bernsteinMonomial 6 2 +
  Polynomial.C gapCoeff7 * bernsteinMonomial 7 1 +
  Polynomial.C gapCoeff8 * bernsteinMonomial 8 0

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
    gapCoeff0, gapCoeff1, gapCoeff2, gapCoeff3, gapCoeff4, gapCoeff5, gapCoeff6, gapCoeff7, gapCoeff8,
    bernsteinMonomial, Polynomial.eval_comp, Polynomial.eval_add, Polynomial.eval_sub,
    Polynomial.eval_mul, Polynomial.eval_pow, Polynomial.eval_C, Polynomial.eval_X] <;> ring

theorem leafMap_eq_path : leafMap = ((halfLeft).comp halfRight).comp halfLeft := by
  apply Polynomial.funext
  intro x
  norm_num [leafMap, affine, leafA, leafB, halfLeft, halfRight,
    Polynomial.eval_comp, Polynomial.eval_add, Polynomial.eval_sub,
    Polynomial.eval_mul, Polynomial.eval_C, Polynomial.eval_X] <;> ring

theorem gapExpansion_cone : BernsteinCone gapExpansion := by
  have h0 : BernsteinCone (Polynomial.C gapCoeff0 * bernsteinMonomial 0 8) :=
    BernsteinCone.scale gapCoeff0 (by norm_num [gapCoeff0]) (BernsteinCone.basis 0 8)
  have h1 : BernsteinCone (Polynomial.C gapCoeff1 * bernsteinMonomial 1 7) :=
    BernsteinCone.scale gapCoeff1 (by norm_num [gapCoeff1]) (BernsteinCone.basis 1 7)
  have h2 : BernsteinCone (Polynomial.C gapCoeff2 * bernsteinMonomial 2 6) :=
    BernsteinCone.scale gapCoeff2 (by norm_num [gapCoeff2]) (BernsteinCone.basis 2 6)
  have h3 : BernsteinCone (Polynomial.C gapCoeff3 * bernsteinMonomial 3 5) :=
    BernsteinCone.scale gapCoeff3 (by norm_num [gapCoeff3]) (BernsteinCone.basis 3 5)
  have h4 : BernsteinCone (Polynomial.C gapCoeff4 * bernsteinMonomial 4 4) :=
    BernsteinCone.scale gapCoeff4 (by norm_num [gapCoeff4]) (BernsteinCone.basis 4 4)
  have h5 : BernsteinCone (Polynomial.C gapCoeff5 * bernsteinMonomial 5 3) :=
    BernsteinCone.scale gapCoeff5 (by norm_num [gapCoeff5]) (BernsteinCone.basis 5 3)
  have h6 : BernsteinCone (Polynomial.C gapCoeff6 * bernsteinMonomial 6 2) :=
    BernsteinCone.scale gapCoeff6 (by norm_num [gapCoeff6]) (BernsteinCone.basis 6 2)
  have h7 : BernsteinCone (Polynomial.C gapCoeff7 * bernsteinMonomial 7 1) :=
    BernsteinCone.scale gapCoeff7 (by norm_num [gapCoeff7]) (BernsteinCone.basis 7 1)
  have h8 : BernsteinCone (Polynomial.C gapCoeff8 * bernsteinMonomial 8 0) :=
    BernsteinCone.scale gapCoeff8 (by norm_num [gapCoeff8]) (BernsteinCone.basis 8 0)
  exact BernsteinCone.add (BernsteinCone.add (BernsteinCone.add (BernsteinCone.add (BernsteinCone.add (BernsteinCone.add (BernsteinCone.add (BernsteinCone.add (h0) h1) h2) h3) h4) h5) h6) h7) h8

theorem local_gap_cone : BernsteinCone (Polynomial.C lam - localCore) := by
  rw [actual_gap_eq]
  exact gapExpansion_cone

theorem local_core_cone : BernsteinCone localCore := by
  exact Math.B699.GrowthLeaf.cone_eCore seedC seedD seedZ (by norm_num [seedZ])
    |> fun h => cone_comp_affine h leafA leafB (by norm_num [leafA]) (by norm_num [leafA, leafB]) (by norm_num [leafB])

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

end Math.B699.I11FiveThreeGrowth.ELeaf001

#print axioms Math.B699.I11FiveThreeGrowth.ELeaf001.actual_gap_eq
#print axioms Math.B699.I11FiveThreeGrowth.ELeaf001.leafMap_eq_path
#print axioms Math.B699.I11FiveThreeGrowth.ELeaf001.gapExpansion_cone
#print axioms Math.B699.I11FiveThreeGrowth.ELeaf001.local_gap_cone
#print axioms Math.B699.I11FiveThreeGrowth.ELeaf001.local_core_cone
#print axioms Math.B699.I11FiveThreeGrowth.ELeaf001.local_weight0_cone
#print axioms Math.B699.I11FiveThreeGrowth.ELeaf001.local_weight1_cone
#print axioms Math.B699.I11FiveThreeGrowth.ELeaf001.leaf_delta0
#print axioms Math.B699.I11FiveThreeGrowth.ELeaf001.leaf_delta1
namespace Math.B699.I11FiveThreeGrowth.ELeaf002


open Polynomial Math.B699.PadeMoment Math.B699.PadeGrowthPartition Math.B699.GrowthLeaf
open Math.B699.I11FiveThreeGrowth.Shared

local instance : Infinite ℚ :=
  Infinite.of_injective (fun n : ℕ => (n : ℚ)) Nat.cast_injective

def seedC : ℕ := 5
def seedD : ℕ := 3
def seedZ : ℚ := (1 : ℚ) / 4375
def leafA : ℚ := (3 : ℚ) / 8
def leafB : ℚ := (1 : ℚ) / 2
def lam : ℚ := (618834739845914957406423393 : ℚ) / 39614081257132168796771975168

noncomputable def seedCore : ℚ[X] := eSeedCore
noncomputable def seedWeight0 : ℚ[X] := eSeedWeight0
noncomputable def seedWeight1 : ℚ[X] := eSeedWeight1
noncomputable def leafMap : ℚ[X] := affine leafA leafB
noncomputable def localCore : ℚ[X] := seedCore.comp leafMap
noncomputable def localWeight0 : ℚ[X] := seedWeight0.comp leafMap
noncomputable def localWeight1 : ℚ[X] := seedWeight1.comp leafMap

def gapCoeff0 : ℚ := (16676321163660377906879916749061 : ℚ) / 6065906192498363347005708697600000
def gapCoeff1 : ℚ := (63863707633124693736833467675929 : ℚ) / 3791191370311477091878567936000000
def gapCoeff2 : ℚ := (1623690338591557560088425635545707 : ℚ) / 37911913703114770918785679360000000
def gapCoeff3 : ℚ := (5480856366624798519225304281943063 : ℚ) / 94779784257786927296964198400000000
def gapCoeff4 : ℚ := (3315983344209211116625896320437271 : ℚ) / 75823827406229541837571358720000000
def gapCoeff5 : ℚ := (47563958289886098819816056539517 : ℚ) / 2707993835936769351341834240000000
def gapCoeff6 : ℚ := (110973649747911395386463132877419 : ℚ) / 37911913703114770918785679360000000
def gapCoeff7 : ℚ := (6776819463092208081878763901 : ℚ) / 18955956851557385459392839680000000
def gapCoeff8 : ℚ := (118499233281928165605428490097 : ℚ) / 758238274062295418375713587200000000

noncomputable def gapExpansion : ℚ[X] :=
  Polynomial.C gapCoeff0 * bernsteinMonomial 0 8 +
  Polynomial.C gapCoeff1 * bernsteinMonomial 1 7 +
  Polynomial.C gapCoeff2 * bernsteinMonomial 2 6 +
  Polynomial.C gapCoeff3 * bernsteinMonomial 3 5 +
  Polynomial.C gapCoeff4 * bernsteinMonomial 4 4 +
  Polynomial.C gapCoeff5 * bernsteinMonomial 5 3 +
  Polynomial.C gapCoeff6 * bernsteinMonomial 6 2 +
  Polynomial.C gapCoeff7 * bernsteinMonomial 7 1 +
  Polynomial.C gapCoeff8 * bernsteinMonomial 8 0

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
    gapCoeff0, gapCoeff1, gapCoeff2, gapCoeff3, gapCoeff4, gapCoeff5, gapCoeff6, gapCoeff7, gapCoeff8,
    bernsteinMonomial, Polynomial.eval_comp, Polynomial.eval_add, Polynomial.eval_sub,
    Polynomial.eval_mul, Polynomial.eval_pow, Polynomial.eval_C, Polynomial.eval_X] <;> ring

theorem leafMap_eq_path : leafMap = ((halfLeft).comp halfRight).comp halfRight := by
  apply Polynomial.funext
  intro x
  norm_num [leafMap, affine, leafA, leafB, halfLeft, halfRight,
    Polynomial.eval_comp, Polynomial.eval_add, Polynomial.eval_sub,
    Polynomial.eval_mul, Polynomial.eval_C, Polynomial.eval_X] <;> ring

theorem gapExpansion_cone : BernsteinCone gapExpansion := by
  have h0 : BernsteinCone (Polynomial.C gapCoeff0 * bernsteinMonomial 0 8) :=
    BernsteinCone.scale gapCoeff0 (by norm_num [gapCoeff0]) (BernsteinCone.basis 0 8)
  have h1 : BernsteinCone (Polynomial.C gapCoeff1 * bernsteinMonomial 1 7) :=
    BernsteinCone.scale gapCoeff1 (by norm_num [gapCoeff1]) (BernsteinCone.basis 1 7)
  have h2 : BernsteinCone (Polynomial.C gapCoeff2 * bernsteinMonomial 2 6) :=
    BernsteinCone.scale gapCoeff2 (by norm_num [gapCoeff2]) (BernsteinCone.basis 2 6)
  have h3 : BernsteinCone (Polynomial.C gapCoeff3 * bernsteinMonomial 3 5) :=
    BernsteinCone.scale gapCoeff3 (by norm_num [gapCoeff3]) (BernsteinCone.basis 3 5)
  have h4 : BernsteinCone (Polynomial.C gapCoeff4 * bernsteinMonomial 4 4) :=
    BernsteinCone.scale gapCoeff4 (by norm_num [gapCoeff4]) (BernsteinCone.basis 4 4)
  have h5 : BernsteinCone (Polynomial.C gapCoeff5 * bernsteinMonomial 5 3) :=
    BernsteinCone.scale gapCoeff5 (by norm_num [gapCoeff5]) (BernsteinCone.basis 5 3)
  have h6 : BernsteinCone (Polynomial.C gapCoeff6 * bernsteinMonomial 6 2) :=
    BernsteinCone.scale gapCoeff6 (by norm_num [gapCoeff6]) (BernsteinCone.basis 6 2)
  have h7 : BernsteinCone (Polynomial.C gapCoeff7 * bernsteinMonomial 7 1) :=
    BernsteinCone.scale gapCoeff7 (by norm_num [gapCoeff7]) (BernsteinCone.basis 7 1)
  have h8 : BernsteinCone (Polynomial.C gapCoeff8 * bernsteinMonomial 8 0) :=
    BernsteinCone.scale gapCoeff8 (by norm_num [gapCoeff8]) (BernsteinCone.basis 8 0)
  exact BernsteinCone.add (BernsteinCone.add (BernsteinCone.add (BernsteinCone.add (BernsteinCone.add (BernsteinCone.add (BernsteinCone.add (BernsteinCone.add (h0) h1) h2) h3) h4) h5) h6) h7) h8

theorem local_gap_cone : BernsteinCone (Polynomial.C lam - localCore) := by
  rw [actual_gap_eq]
  exact gapExpansion_cone

theorem local_core_cone : BernsteinCone localCore := by
  exact Math.B699.GrowthLeaf.cone_eCore seedC seedD seedZ (by norm_num [seedZ])
    |> fun h => cone_comp_affine h leafA leafB (by norm_num [leafA]) (by norm_num [leafA, leafB]) (by norm_num [leafB])

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

end Math.B699.I11FiveThreeGrowth.ELeaf002

#print axioms Math.B699.I11FiveThreeGrowth.ELeaf002.actual_gap_eq
#print axioms Math.B699.I11FiveThreeGrowth.ELeaf002.leafMap_eq_path
#print axioms Math.B699.I11FiveThreeGrowth.ELeaf002.gapExpansion_cone
#print axioms Math.B699.I11FiveThreeGrowth.ELeaf002.local_gap_cone
#print axioms Math.B699.I11FiveThreeGrowth.ELeaf002.local_core_cone
#print axioms Math.B699.I11FiveThreeGrowth.ELeaf002.local_weight0_cone
#print axioms Math.B699.I11FiveThreeGrowth.ELeaf002.local_weight1_cone
#print axioms Math.B699.I11FiveThreeGrowth.ELeaf002.leaf_delta0
#print axioms Math.B699.I11FiveThreeGrowth.ELeaf002.leaf_delta1
namespace Math.B699.I11FiveThreeGrowth.ELeaf003


open Polynomial Math.B699.PadeMoment Math.B699.PadeGrowthPartition Math.B699.GrowthLeaf
open Math.B699.I11FiveThreeGrowth.Shared

local instance : Infinite ℚ :=
  Infinite.of_injective (fun n : ℕ => (n : ℚ)) Nat.cast_injective

def seedC : ℕ := 5
def seedD : ℕ := 3
def seedZ : ℚ := (1 : ℚ) / 4375
def leafA : ℚ := (1 : ℚ) / 2
def leafB : ℚ := (1 : ℚ)
def lam : ℚ := (618834739845914957406423393 : ℚ) / 39614081257132168796771975168

noncomputable def seedCore : ℚ[X] := eSeedCore
noncomputable def seedWeight0 : ℚ[X] := eSeedWeight0
noncomputable def seedWeight1 : ℚ[X] := eSeedWeight1
noncomputable def leafMap : ℚ[X] := affine leafA leafB
noncomputable def localCore : ℚ[X] := seedCore.comp leafMap
noncomputable def localWeight0 : ℚ[X] := seedWeight0.comp leafMap
noncomputable def localWeight1 : ℚ[X] := seedWeight1.comp leafMap

def gapCoeff0 : ℚ := (118499233281928165605428490097 : ℚ) / 758238274062295418375713587200000000
def gapCoeff1 : ℚ := (91391955429559333277913434493 : ℚ) / 18955956851557385459392839680000000
def gapCoeff2 : ℚ := (1777828359681783993716674069299819 : ℚ) / 37911913703114770918785679360000000
def gapCoeff3 : ℚ := (5331528670581606413482563142451819 : ℚ) / 18955956851557385459392839680000000
def gapCoeff4 : ℚ := (49754258488789544524819955761712151 : ℚ) / 75823827406229541837571358720000000
def gapCoeff5 : ℚ := (71072128183020999855143280715402263 : ℚ) / 94779784257786927296964198400000000
def gapCoeff6 : ℚ := (4331843178921404701844963751 : ℚ) / 9903520314283042199192993792
def gapCoeff7 : ℚ := (618834739845914957406423393 : ℚ) / 4951760157141521099596496896
def gapCoeff8 : ℚ := (618834739845914957406423393 : ℚ) / 39614081257132168796771975168

noncomputable def gapExpansion : ℚ[X] :=
  Polynomial.C gapCoeff0 * bernsteinMonomial 0 8 +
  Polynomial.C gapCoeff1 * bernsteinMonomial 1 7 +
  Polynomial.C gapCoeff2 * bernsteinMonomial 2 6 +
  Polynomial.C gapCoeff3 * bernsteinMonomial 3 5 +
  Polynomial.C gapCoeff4 * bernsteinMonomial 4 4 +
  Polynomial.C gapCoeff5 * bernsteinMonomial 5 3 +
  Polynomial.C gapCoeff6 * bernsteinMonomial 6 2 +
  Polynomial.C gapCoeff7 * bernsteinMonomial 7 1 +
  Polynomial.C gapCoeff8 * bernsteinMonomial 8 0

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
    gapCoeff0, gapCoeff1, gapCoeff2, gapCoeff3, gapCoeff4, gapCoeff5, gapCoeff6, gapCoeff7, gapCoeff8,
    bernsteinMonomial, Polynomial.eval_comp, Polynomial.eval_add, Polynomial.eval_sub,
    Polynomial.eval_mul, Polynomial.eval_pow, Polynomial.eval_C, Polynomial.eval_X] <;> ring

theorem leafMap_eq_path : leafMap = halfRight := by
  apply Polynomial.funext
  intro x
  norm_num [leafMap, affine, leafA, leafB, halfLeft, halfRight,
    Polynomial.eval_comp, Polynomial.eval_add, Polynomial.eval_sub,
    Polynomial.eval_mul, Polynomial.eval_C, Polynomial.eval_X] <;> ring

theorem gapExpansion_cone : BernsteinCone gapExpansion := by
  have h0 : BernsteinCone (Polynomial.C gapCoeff0 * bernsteinMonomial 0 8) :=
    BernsteinCone.scale gapCoeff0 (by norm_num [gapCoeff0]) (BernsteinCone.basis 0 8)
  have h1 : BernsteinCone (Polynomial.C gapCoeff1 * bernsteinMonomial 1 7) :=
    BernsteinCone.scale gapCoeff1 (by norm_num [gapCoeff1]) (BernsteinCone.basis 1 7)
  have h2 : BernsteinCone (Polynomial.C gapCoeff2 * bernsteinMonomial 2 6) :=
    BernsteinCone.scale gapCoeff2 (by norm_num [gapCoeff2]) (BernsteinCone.basis 2 6)
  have h3 : BernsteinCone (Polynomial.C gapCoeff3 * bernsteinMonomial 3 5) :=
    BernsteinCone.scale gapCoeff3 (by norm_num [gapCoeff3]) (BernsteinCone.basis 3 5)
  have h4 : BernsteinCone (Polynomial.C gapCoeff4 * bernsteinMonomial 4 4) :=
    BernsteinCone.scale gapCoeff4 (by norm_num [gapCoeff4]) (BernsteinCone.basis 4 4)
  have h5 : BernsteinCone (Polynomial.C gapCoeff5 * bernsteinMonomial 5 3) :=
    BernsteinCone.scale gapCoeff5 (by norm_num [gapCoeff5]) (BernsteinCone.basis 5 3)
  have h6 : BernsteinCone (Polynomial.C gapCoeff6 * bernsteinMonomial 6 2) :=
    BernsteinCone.scale gapCoeff6 (by norm_num [gapCoeff6]) (BernsteinCone.basis 6 2)
  have h7 : BernsteinCone (Polynomial.C gapCoeff7 * bernsteinMonomial 7 1) :=
    BernsteinCone.scale gapCoeff7 (by norm_num [gapCoeff7]) (BernsteinCone.basis 7 1)
  have h8 : BernsteinCone (Polynomial.C gapCoeff8 * bernsteinMonomial 8 0) :=
    BernsteinCone.scale gapCoeff8 (by norm_num [gapCoeff8]) (BernsteinCone.basis 8 0)
  exact BernsteinCone.add (BernsteinCone.add (BernsteinCone.add (BernsteinCone.add (BernsteinCone.add (BernsteinCone.add (BernsteinCone.add (BernsteinCone.add (h0) h1) h2) h3) h4) h5) h6) h7) h8

theorem local_gap_cone : BernsteinCone (Polynomial.C lam - localCore) := by
  rw [actual_gap_eq]
  exact gapExpansion_cone

theorem local_core_cone : BernsteinCone localCore := by
  exact Math.B699.GrowthLeaf.cone_eCore seedC seedD seedZ (by norm_num [seedZ])
    |> fun h => cone_comp_affine h leafA leafB (by norm_num [leafA]) (by norm_num [leafA, leafB]) (by norm_num [leafB])

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

end Math.B699.I11FiveThreeGrowth.ELeaf003

#print axioms Math.B699.I11FiveThreeGrowth.ELeaf003.actual_gap_eq
#print axioms Math.B699.I11FiveThreeGrowth.ELeaf003.leafMap_eq_path
#print axioms Math.B699.I11FiveThreeGrowth.ELeaf003.gapExpansion_cone
#print axioms Math.B699.I11FiveThreeGrowth.ELeaf003.local_gap_cone
#print axioms Math.B699.I11FiveThreeGrowth.ELeaf003.local_core_cone
#print axioms Math.B699.I11FiveThreeGrowth.ELeaf003.local_weight0_cone
#print axioms Math.B699.I11FiveThreeGrowth.ELeaf003.local_weight1_cone
#print axioms Math.B699.I11FiveThreeGrowth.ELeaf003.leaf_delta0
#print axioms Math.B699.I11FiveThreeGrowth.ELeaf003.leaf_delta1

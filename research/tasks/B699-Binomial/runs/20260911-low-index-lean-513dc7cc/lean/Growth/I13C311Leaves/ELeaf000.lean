import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Growth.Affine
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Growth.Partition
import Mathlib.Algebra.Polynomial.Roots
import Mathlib.Tactic.NormNum
import Mathlib.Tactic.Ring
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Growth.I13C311Shared

set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxHeartbeats 2000000
set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace Math.B699.I13C311Growth.ELeaf000


open Polynomial Math.B699.PadeMoment Math.B699.PadeGrowthPartition Math.B699.GrowthLeaf
open Math.B699.I13C311Growth.Shared

local instance : Infinite ℚ :=
  Infinite.of_injective (fun n : ℕ => (n : ℚ)) Nat.cast_injective

def seedC : ℕ := 7
def seedD : ℕ := 5
def seedZ : ℚ := (1 : ℚ) / 243
def leafA : ℚ := (0 : ℚ)
def leafB : ℚ := (1 : ℚ) / 2
def lam : ℚ := (973 : ℚ) / 1000000

noncomputable def seedCore : ℚ[X] := eSeedCore
noncomputable def seedWeight0 : ℚ[X] := eSeedWeight0
noncomputable def seedWeight1 : ℚ[X] := eSeedWeight1
noncomputable def leafMap : ℚ[X] := affine leafA leafB
noncomputable def localCore : ℚ[X] := seedCore.comp leafMap
noncomputable def localWeight0 : ℚ[X] := seedWeight0.comp leafMap
noncomputable def localWeight1 : ℚ[X] := seedWeight1.comp leafMap

def gapCoeff0 : ℚ := (973 : ℚ) / 1000000
def gapCoeff1 : ℚ := (2919 : ℚ) / 250000
def gapCoeff2 : ℚ := (32109 : ℚ) / 500000
def gapCoeff3 : ℚ := (10703 : ℚ) / 50000
def gapCoeff4 : ℚ := (96327 : ℚ) / 200000
def gapCoeff5 : ℚ := (369683 : ℚ) / 500000
def gapCoeff6 : ℚ := (184329011 : ℚ) / 243000000
def gapCoeff7 : ℚ := (59691567743 : ℚ) / 118098000000
def gapCoeff8 : ℚ := (9865442717 : ℚ) / 47239200000
def gapCoeff9 : ℚ := (4584686929 : ℚ) / 94478400000
def gapCoeff10 : ℚ := (4580748287 : ℚ) / 944784000000
def gapCoeff11 : ℚ := (2674093 : ℚ) / 1889568000000
def gapCoeff12 : ℚ := (1708703 : ℚ) / 3779136000000

noncomputable def gapExpansion : ℚ[X] :=
  Polynomial.C gapCoeff0 * bernsteinMonomial 0 12 +
  Polynomial.C gapCoeff1 * bernsteinMonomial 1 11 +
  Polynomial.C gapCoeff2 * bernsteinMonomial 2 10 +
  Polynomial.C gapCoeff3 * bernsteinMonomial 3 9 +
  Polynomial.C gapCoeff4 * bernsteinMonomial 4 8 +
  Polynomial.C gapCoeff5 * bernsteinMonomial 5 7 +
  Polynomial.C gapCoeff6 * bernsteinMonomial 6 6 +
  Polynomial.C gapCoeff7 * bernsteinMonomial 7 5 +
  Polynomial.C gapCoeff8 * bernsteinMonomial 8 4 +
  Polynomial.C gapCoeff9 * bernsteinMonomial 9 3 +
  Polynomial.C gapCoeff10 * bernsteinMonomial 10 2 +
  Polynomial.C gapCoeff11 * bernsteinMonomial 11 1 +
  Polynomial.C gapCoeff12 * bernsteinMonomial 12 0

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
    gapCoeff0, gapCoeff1, gapCoeff2, gapCoeff3, gapCoeff4, gapCoeff5, gapCoeff6, gapCoeff7, gapCoeff8, gapCoeff9, gapCoeff10, gapCoeff11, gapCoeff12,
    bernsteinMonomial, Polynomial.eval_comp, Polynomial.eval_add, Polynomial.eval_sub,
    Polynomial.eval_mul, Polynomial.eval_pow, Polynomial.eval_C, Polynomial.eval_X] <;> ring

theorem leafMap_eq_path : leafMap = halfLeft := by
  apply Polynomial.funext
  intro x
  norm_num [leafMap, affine, leafA, leafB, halfLeft, halfRight,
    Polynomial.eval_comp, Polynomial.eval_add, Polynomial.eval_sub,
    Polynomial.eval_mul, Polynomial.eval_C, Polynomial.eval_X] <;> ring

theorem gapExpansion_cone : BernsteinCone gapExpansion := by
  have h0 : BernsteinCone (Polynomial.C gapCoeff0 * bernsteinMonomial 0 12) :=
    BernsteinCone.scale gapCoeff0 (by norm_num [gapCoeff0]) (BernsteinCone.basis 0 12)
  have h1 : BernsteinCone (Polynomial.C gapCoeff1 * bernsteinMonomial 1 11) :=
    BernsteinCone.scale gapCoeff1 (by norm_num [gapCoeff1]) (BernsteinCone.basis 1 11)
  have h2 : BernsteinCone (Polynomial.C gapCoeff2 * bernsteinMonomial 2 10) :=
    BernsteinCone.scale gapCoeff2 (by norm_num [gapCoeff2]) (BernsteinCone.basis 2 10)
  have h3 : BernsteinCone (Polynomial.C gapCoeff3 * bernsteinMonomial 3 9) :=
    BernsteinCone.scale gapCoeff3 (by norm_num [gapCoeff3]) (BernsteinCone.basis 3 9)
  have h4 : BernsteinCone (Polynomial.C gapCoeff4 * bernsteinMonomial 4 8) :=
    BernsteinCone.scale gapCoeff4 (by norm_num [gapCoeff4]) (BernsteinCone.basis 4 8)
  have h5 : BernsteinCone (Polynomial.C gapCoeff5 * bernsteinMonomial 5 7) :=
    BernsteinCone.scale gapCoeff5 (by norm_num [gapCoeff5]) (BernsteinCone.basis 5 7)
  have h6 : BernsteinCone (Polynomial.C gapCoeff6 * bernsteinMonomial 6 6) :=
    BernsteinCone.scale gapCoeff6 (by norm_num [gapCoeff6]) (BernsteinCone.basis 6 6)
  have h7 : BernsteinCone (Polynomial.C gapCoeff7 * bernsteinMonomial 7 5) :=
    BernsteinCone.scale gapCoeff7 (by norm_num [gapCoeff7]) (BernsteinCone.basis 7 5)
  have h8 : BernsteinCone (Polynomial.C gapCoeff8 * bernsteinMonomial 8 4) :=
    BernsteinCone.scale gapCoeff8 (by norm_num [gapCoeff8]) (BernsteinCone.basis 8 4)
  have h9 : BernsteinCone (Polynomial.C gapCoeff9 * bernsteinMonomial 9 3) :=
    BernsteinCone.scale gapCoeff9 (by norm_num [gapCoeff9]) (BernsteinCone.basis 9 3)
  have h10 : BernsteinCone (Polynomial.C gapCoeff10 * bernsteinMonomial 10 2) :=
    BernsteinCone.scale gapCoeff10 (by norm_num [gapCoeff10]) (BernsteinCone.basis 10 2)
  have h11 : BernsteinCone (Polynomial.C gapCoeff11 * bernsteinMonomial 11 1) :=
    BernsteinCone.scale gapCoeff11 (by norm_num [gapCoeff11]) (BernsteinCone.basis 11 1)
  have h12 : BernsteinCone (Polynomial.C gapCoeff12 * bernsteinMonomial 12 0) :=
    BernsteinCone.scale gapCoeff12 (by norm_num [gapCoeff12]) (BernsteinCone.basis 12 0)
  exact BernsteinCone.add (BernsteinCone.add (BernsteinCone.add (BernsteinCone.add (BernsteinCone.add (BernsteinCone.add (BernsteinCone.add (BernsteinCone.add (BernsteinCone.add (BernsteinCone.add (BernsteinCone.add (BernsteinCone.add (h0) h1) h2) h3) h4) h5) h6) h7) h8) h9) h10) h11) h12

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

end Math.B699.I13C311Growth.ELeaf000

#print axioms Math.B699.I13C311Growth.ELeaf000.actual_gap_eq
#print axioms Math.B699.I13C311Growth.ELeaf000.leafMap_eq_path
#print axioms Math.B699.I13C311Growth.ELeaf000.gapExpansion_cone
#print axioms Math.B699.I13C311Growth.ELeaf000.local_gap_cone
#print axioms Math.B699.I13C311Growth.ELeaf000.local_core_cone
#print axioms Math.B699.I13C311Growth.ELeaf000.local_weight0_cone
#print axioms Math.B699.I13C311Growth.ELeaf000.local_weight1_cone
#print axioms Math.B699.I13C311Growth.ELeaf000.leaf_delta0
#print axioms Math.B699.I13C311Growth.ELeaf000.leaf_delta1

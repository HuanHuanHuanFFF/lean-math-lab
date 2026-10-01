import research.tasks.«B699-Binomial».runs.«20261001-lean-nonr7-01a0f779».continuations.«20261002-onehour».critical.HeightGroups.Group012
import Mathlib.Algebra.Polynomial.Roots
import Mathlib.Tactic.NormNum
import Mathlib.Tactic.Ring
set_option Elab.async false
/- Frozen member 52 research\tasks\B699-Binomial\runs\20260911-low-index-lean-513dc7cc\lean\TwoFiveGap33\Rate.lean b7053b071246bcb7fe1e329a06ff04f37e4a682accd45ec8155a62287a51ad2b -/
section HeightMember052


/-!
Complete candidate proof text; not compiled by this worker.
The accepted 32nd-power certificate supplies a strict 66 budget at the unchanged
selector index. No new large integer decision or analytic premise is introduced.
-/
set_option autoImplicit false
set_option relaxedAutoImplicit false
namespace Math.B699.TwoFiveGap33
open Math.B699.I11TwoFiveScaled Math.B699.I11TwoFiveFinalConsumers

theorem rateRational_pow224_ge_128 : (128 : ℚ) ≤ rateRational ^ 224 := by
  calc
    (128 : ℚ) = (2 : ℚ) ^ 7 := by norm_num
    _ ≤ (rateRational ^ 32) ^ 7 :=
      pow_le_pow_left₀ (by norm_num : (0 : ℚ) ≤ 2)
        rateRational_thirtytwo_ge_two 7
    _ = rateRational ^ 224 := by rw [← pow_mul]

theorem actual_rate_pow329_gt_66 : (66 : ℚ) < qRate qBase ^ 329 := by
  rw [actual_rate_eq_rational]
  exact lt_of_lt_of_le (by norm_num : (66 : ℚ) < 128)
    (rateRational_pow224_ge_128.trans
      (pow_le_pow_right₀ rateRational_ge_one (by decide : 224 ≤ 329)))

theorem actual_rate_gt_66 (m : ℕ) (hm : 329 ≤ m) :
    (66 : ℚ) < qRate qBase ^ m := by
  exact lt_of_lt_of_le actual_rate_pow329_gt_66
    (pow_le_pow_right₀ fixed_qRate_ge_one hm)

end Math.B699.TwoFiveGap33

end HeightMember052
/- Frozen member 53 research\tasks\B699-Binomial\runs\20260911-low-index-lean-513dc7cc\lean\TwoFiveGap33\Gap.lean 315a4671830b8fe6d009accf8b9eb22d63244a6f8d50a7acaee36b4d07b1f247 -/
section HeightMember053


/-!
Complete candidate proof text; not compiled by this worker.
Same actual rows, qContent/G, and 128/125 extraction as the accepted 2–5 edge.
The integer budget is exposed explicitly; the Q/E sum below specializes it to 33.
-/
set_option autoImplicit false
set_option relaxedAutoImplicit false
namespace Math.B699.TwoFiveGap33
open Math.B699.I11TwoFiveScaled Math.B699.PadeActualRows

theorem actual_integer_gap_budget (m e f A C : ℕ) (D : ℤ)
    (hm : 1 ≤ m) (he : 35 * m ≤ e) (hf : 15 * m ≤ f) (hC : 1 ≤ C)
    (hgap : |(2 : ℤ) ^ e * (A : ℤ) - (5 : ℤ) ^ f * (C : ℤ)| ≤ D) :
    ∃ row : Bool, (128 : ℤ) ^ (5 * m) ≤
      D * |qRow m row| +
        |rowError m row| * |(5 : ℤ) ^ (f - 15 * m) * (C : ℤ)| := by
  have hp : (128 : ℕ) ^ (5 * m) = (2 : ℕ) ^ (35 * m) := by
    calc
      _ = ((2 : ℕ) ^ 7) ^ (5 * m) := by norm_num
      _ = (2 : ℕ) ^ (35 * m) := by rw [← Nat.pow_mul]; congr 1 <;> ring
  have hq : (125 : ℕ) ^ (5 * m) = (5 : ℕ) ^ (15 * m) := by
    calc
      _ = ((5 : ℕ) ^ 3) ^ (5 * m) := by norm_num
      _ = (5 : ℕ) ^ (15 * m) := by rw [← Nat.pow_mul]; congr 1 <;> ring
  have hPnat : (128 : ℕ) ^ (5 * m) * (2 ^ (e - 35 * m) * A) = 2 ^ e * A := by
    rw [hp]
    exact Math.B699.I11ActualPadeEdge.extract_prime_factor 2 e (35 * m) A he
  have hQnat : (125 : ℕ) ^ (5 * m) * (5 ^ (f - 15 * m) * C) = 5 ^ f * C := by
    rw [hq]
    exact Math.B699.I11ActualPadeEdge.extract_prime_factor 5 f (15 * m) C hf
  have hPint : (128 : ℤ) ^ (5 * m) * ((2 : ℤ) ^ (e - 35 * m) * (A : ℤ)) =
      (2 : ℤ) ^ e * (A : ℤ) := by exact_mod_cast hPnat
  have hQint : (125 : ℤ) ^ (5 * m) * ((5 : ℤ) ^ (f - 15 * m) * (C : ℤ)) =
      (5 : ℤ) ^ f * (C : ℤ) := by exact_mod_cast hQnat
  have hgap' : |(128 : ℤ) ^ (5 * m) * ((2 : ℤ) ^ (e - 35 * m) * (A : ℤ)) -
      (125 : ℤ) ^ (5 * m) * ((5 : ℤ) ^ (f - 15 * m) * (C : ℤ))| ≤ D := by
    rw [hPint, hQint]
    exact hgap
  have hV : (5 : ℤ) ^ (f - 15 * m) * (C : ℤ) ≠ 0 := by
    apply mul_ne_zero (pow_ne_zero _ (by decide : (5 : ℤ) ≠ 0))
    exact_mod_cast (by omega : C ≠ 0)
  obtain ⟨row, _hne, hlower⟩ := actual_bft_integer_gap
    (4 * m) (m - 1) (by omega) 3 128
    (r := (128 : ℤ) ^ (5 * m)) (s := (125 : ℤ) ^ (5 * m))
    (a := 1) (b := 1)
    (U := (2 : ℤ) ^ (e - 35 * m) * (A : ℤ))
    (V := (5 : ℤ) ^ (f - 15 * m) * (C : ℤ)) (D := D)
    (by decide) (by decide) (pow_nonneg (by decide) _)
    (by decide) (by decide) hV hgap'
  exact ⟨row, by simpa only [qRow, rowError, one_mul, mul_one] using hlower⟩

theorem actual_q_gap33_twice_lt (m : ℕ) (hm : 141 ≤ m) (row : Bool)
    (BQ : ℚ) (hBQ : 0 < BQ) (hQ : |qEval m row| ≤ BQ ^ m)
    (hA : (66 : ℚ) < qRate BQ ^ m) :
    2 * (33 * |(qRow m row : ℚ)|) < (128 : ℚ) ^ (5 * m) := by
  have hden : 0 < qDenominator BQ := by unfold qDenominator; positivity
  have hnum : (66 : ℚ) * qDenominator BQ ^ m < qNumerator ^ m := by
    calc
      _ < qRate BQ ^ m * qDenominator BQ ^ m :=
        mul_lt_mul_of_pos_right hA (pow_pos hden m)
      _ = qNumerator ^ m :=
        Math.B699.I11ScaledBounds.ratio_pow_mul qNumerator (qDenominator BQ)
          (ne_of_gt hden) m
  have hsmall : (66 : ℚ) * ((128 : ℚ) ^ 4 * BQ) ^ m <
      (128 : ℚ) ^ (5 * m) * contentBase ^ m := by
    calc
      _ < qNumerator ^ m := hnum
      _ = (128 : ℚ) ^ (5 * m) * contentBase ^ m := by
        simp only [qNumerator, mul_pow, ← pow_mul]
  have h := Math.B699.I11ScaledBounds.weighted_bound_lt
    (contentBase ^ m) ((128 : ℚ) ^ (5 * m)) 66 |(qRow m row : ℚ)|
    (((128 : ℚ) ^ 4 * BQ) ^ m) (pow_pos contentBase_pos m) (by norm_num)
    (actual_q_content_bound m hm row BQ hBQ.le hQ) hsmall
  nlinarith only [h]

theorem actual_integer_gap33_sum_lt (m : ℕ) (hm : 141 ≤ m) (row : Bool)
    (BQ BE : ℚ) (hBQ : 0 < BQ) (hBE : 0 < BE)
    (hQ : |qEval m row| ≤ BQ ^ m) (hE : |eEval m row| ≤ BE ^ m)
    (hA : (66 : ℚ) < qRate BQ ^ m)
    (V Nq : ℕ) (hNV : (125 : ℚ) ^ (5 * m) * (V : ℚ) = (Nq : ℚ))
    (hNsmall : 2 * (Nq : ℚ) < wRate BE ^ m) :
    33 * |qRow m row| + |rowError m row| * (V : ℤ) < (128 : ℤ) ^ (5 * m) := by
  have h := Math.B699.I11ScaledBounds.sum_lt_of_twice_lt
    (33 * |(qRow m row : ℚ)|) (|(rowError m row : ℚ)| * (V : ℚ))
    ((128 : ℚ) ^ (5 * m))
    (actual_q_gap33_twice_lt m hm row BQ hBQ hQ hA)
    (actual_e_gap_twice_lt m hm row BE hBE hE V Nq hNV hNsmall)
  exact_mod_cast h

end Math.B699.TwoFiveGap33

end HeightMember053
/- Frozen member 54 research\tasks\B699-Binomial\runs\20260911-low-index-lean-513dc7cc\lean\Growth\I11TwoFiveShared.lean 8895518407974316e5971d65240364a29a037112abe9199a86c3b916ac9fdc39 -/
section HeightMember054






set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace Math.B699.I11TwoFiveGrowth.Shared


open Polynomial Math.B699.PadeMoment Math.B699.PadeGrowthPartition Math.B699.GrowthLeaf

def qSeedC : ℕ := 5
def qSeedD : ℕ := 4
def qSeedZ : ℚ := (3 : ℚ) / 128
def qLam : ℚ := (3471657440109699659204039683 : ℚ) / 79228162514264337593543950336
noncomputable def qSeedCore : ℚ[X] := Math.B699.GrowthLeaf.qCore qSeedC qSeedD qSeedZ
noncomputable def qSeedWeight0 : ℚ[X] := Math.B699.GrowthLeaf.qWeight qSeedC qSeedD 0 qSeedZ
noncomputable def qSeedWeight1 : ℚ[X] := Math.B699.GrowthLeaf.qWeight qSeedC qSeedD 1 qSeedZ

def eSeedC : ℕ := 5
def eSeedD : ℕ := 4
def eSeedZ : ℚ := (3 : ℚ) / 128
def eLam : ℚ := (305863978762465520211566521 : ℚ) / 79228162514264337593543950336
noncomputable def eSeedCore : ℚ[X] := Math.B699.GrowthLeaf.eCore eSeedC eSeedD eSeedZ
noncomputable def eSeedWeight0 : ℚ[X] := Math.B699.GrowthLeaf.eWeight eSeedC eSeedD 0 eSeedZ
noncomputable def eSeedWeight1 : ℚ[X] := Math.B699.GrowthLeaf.eWeight eSeedC eSeedD 1 eSeedZ

end Math.B699.I11TwoFiveGrowth.Shared



end HeightMember054
/- Frozen member 55 research\tasks\B699-Binomial\runs\20260911-low-index-lean-513dc7cc\lean\Growth\I11TwoFiveLeaves.lean 9328176b3e651a8d4b4ff1877bba760917e7e4a0c5f33b98fee6bcb7acb347a1 -/
section HeightMember055







set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace Math.B699.I11TwoFiveGrowth.QLeaf000


open Polynomial Math.B699.PadeMoment Math.B699.PadeGrowthPartition Math.B699.GrowthLeaf
open Math.B699.I11TwoFiveGrowth.Shared

local instance : Infinite ℚ :=
  Infinite.of_injective (fun n : ℕ => (n : ℚ)) Nat.cast_injective

def seedC : ℕ := 5
def seedD : ℕ := 4
def seedZ : ℚ := (3 : ℚ) / 128
def leafA : ℚ := (0 : ℚ)
def leafB : ℚ := (1 : ℚ) / 16
def lam : ℚ := (3471657440109699659204039683 : ℚ) / 79228162514264337593543950336

noncomputable def seedCore : ℚ[X] := qSeedCore
noncomputable def seedWeight0 : ℚ[X] := qSeedWeight0
noncomputable def seedWeight1 : ℚ[X] := qSeedWeight1
noncomputable def leafMap : ℚ[X] := affine leafA leafB
noncomputable def localCore : ℚ[X] := seedCore.comp leafMap
noncomputable def localWeight0 : ℚ[X] := seedWeight0.comp leafMap
noncomputable def localWeight1 : ℚ[X] := seedWeight1.comp leafMap

def gapCoeff0 : ℚ := (3471657440109699659204039683 : ℚ) / 79228162514264337593543950336
def gapCoeff1 : ℚ := (26293156803845775833239860251 : ℚ) / 79228162514264337593543950336
def gapCoeff2 : ℚ := (21953113111429257096044688411 : ℚ) / 19807040628566084398385987584
def gapCoeff3 : ℚ := (42392258195880831931882546239 : ℚ) / 19807040628566084398385987584
def gapCoeff4 : ℚ := (104202991260268635555277728957 : ℚ) / 39614081257132168796771975168
def gapCoeff5 : ℚ := (84416536396148447231838416061 : ℚ) / 39614081257132168796771975168
def gapCoeff6 : ℚ := (22503772836613671059812131903 : ℚ) / 19807040628566084398385987584
def gapCoeff7 : ℚ := (7600985434230358557183390747 : ℚ) / 19807040628566084398385987584
def gapCoeff8 : ℚ := (5892355187708056186663941147 : ℚ) / 79228162514264337593543950336
def gapCoeff9 : ℚ := (498334822890731326670279683 : ℚ) / 79228162514264337593543950336

noncomputable def gapExpansion : ℚ[X] :=
  Polynomial.C gapCoeff0 * bernsteinMonomial 0 9 +
  Polynomial.C gapCoeff1 * bernsteinMonomial 1 8 +
  Polynomial.C gapCoeff2 * bernsteinMonomial 2 7 +
  Polynomial.C gapCoeff3 * bernsteinMonomial 3 6 +
  Polynomial.C gapCoeff4 * bernsteinMonomial 4 5 +
  Polynomial.C gapCoeff5 * bernsteinMonomial 5 4 +
  Polynomial.C gapCoeff6 * bernsteinMonomial 6 3 +
  Polynomial.C gapCoeff7 * bernsteinMonomial 7 2 +
  Polynomial.C gapCoeff8 * bernsteinMonomial 8 1 +
  Polynomial.C gapCoeff9 * bernsteinMonomial 9 0

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
    gapCoeff0, gapCoeff1, gapCoeff2, gapCoeff3, gapCoeff4, gapCoeff5, gapCoeff6, gapCoeff7, gapCoeff8, gapCoeff9,
    bernsteinMonomial, Polynomial.eval_comp, Polynomial.eval_add, Polynomial.eval_sub,
    Polynomial.eval_mul, Polynomial.eval_pow, Polynomial.eval_C, Polynomial.eval_X] <;> ring

theorem leafMap_eq_path : leafMap = (((halfLeft).comp halfLeft).comp halfLeft).comp halfLeft := by
  apply Polynomial.funext
  intro x
  norm_num [leafMap, affine, leafA, leafB, halfLeft, halfRight,
    Polynomial.eval_comp, Polynomial.eval_add, Polynomial.eval_sub,
    Polynomial.eval_mul, Polynomial.eval_C, Polynomial.eval_X] <;> ring

theorem gapExpansion_cone : BernsteinCone gapExpansion := by
  have h0 : BernsteinCone (Polynomial.C gapCoeff0 * bernsteinMonomial 0 9) :=
    BernsteinCone.scale gapCoeff0 (by norm_num [gapCoeff0]) (BernsteinCone.basis 0 9)
  have h1 : BernsteinCone (Polynomial.C gapCoeff1 * bernsteinMonomial 1 8) :=
    BernsteinCone.scale gapCoeff1 (by norm_num [gapCoeff1]) (BernsteinCone.basis 1 8)
  have h2 : BernsteinCone (Polynomial.C gapCoeff2 * bernsteinMonomial 2 7) :=
    BernsteinCone.scale gapCoeff2 (by norm_num [gapCoeff2]) (BernsteinCone.basis 2 7)
  have h3 : BernsteinCone (Polynomial.C gapCoeff3 * bernsteinMonomial 3 6) :=
    BernsteinCone.scale gapCoeff3 (by norm_num [gapCoeff3]) (BernsteinCone.basis 3 6)
  have h4 : BernsteinCone (Polynomial.C gapCoeff4 * bernsteinMonomial 4 5) :=
    BernsteinCone.scale gapCoeff4 (by norm_num [gapCoeff4]) (BernsteinCone.basis 4 5)
  have h5 : BernsteinCone (Polynomial.C gapCoeff5 * bernsteinMonomial 5 4) :=
    BernsteinCone.scale gapCoeff5 (by norm_num [gapCoeff5]) (BernsteinCone.basis 5 4)
  have h6 : BernsteinCone (Polynomial.C gapCoeff6 * bernsteinMonomial 6 3) :=
    BernsteinCone.scale gapCoeff6 (by norm_num [gapCoeff6]) (BernsteinCone.basis 6 3)
  have h7 : BernsteinCone (Polynomial.C gapCoeff7 * bernsteinMonomial 7 2) :=
    BernsteinCone.scale gapCoeff7 (by norm_num [gapCoeff7]) (BernsteinCone.basis 7 2)
  have h8 : BernsteinCone (Polynomial.C gapCoeff8 * bernsteinMonomial 8 1) :=
    BernsteinCone.scale gapCoeff8 (by norm_num [gapCoeff8]) (BernsteinCone.basis 8 1)
  have h9 : BernsteinCone (Polynomial.C gapCoeff9 * bernsteinMonomial 9 0) :=
    BernsteinCone.scale gapCoeff9 (by norm_num [gapCoeff9]) (BernsteinCone.basis 9 0)
  exact BernsteinCone.add (BernsteinCone.add (BernsteinCone.add (BernsteinCone.add (BernsteinCone.add (BernsteinCone.add (BernsteinCone.add (BernsteinCone.add (BernsteinCone.add (h0) h1) h2) h3) h4) h5) h6) h7) h8) h9

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

end Math.B699.I11TwoFiveGrowth.QLeaf000

#print axioms Math.B699.I11TwoFiveGrowth.QLeaf000.actual_gap_eq
#print axioms Math.B699.I11TwoFiveGrowth.QLeaf000.leafMap_eq_path
#print axioms Math.B699.I11TwoFiveGrowth.QLeaf000.gapExpansion_cone
#print axioms Math.B699.I11TwoFiveGrowth.QLeaf000.local_gap_cone
#print axioms Math.B699.I11TwoFiveGrowth.QLeaf000.local_core_cone
#print axioms Math.B699.I11TwoFiveGrowth.QLeaf000.local_weight0_cone
#print axioms Math.B699.I11TwoFiveGrowth.QLeaf000.local_weight1_cone
#print axioms Math.B699.I11TwoFiveGrowth.QLeaf000.leaf_delta0
#print axioms Math.B699.I11TwoFiveGrowth.QLeaf000.leaf_delta1
namespace Math.B699.I11TwoFiveGrowth.QLeaf001


open Polynomial Math.B699.PadeMoment Math.B699.PadeGrowthPartition Math.B699.GrowthLeaf
open Math.B699.I11TwoFiveGrowth.Shared

local instance : Infinite ℚ :=
  Infinite.of_injective (fun n : ℕ => (n : ℚ)) Nat.cast_injective

def seedC : ℕ := 5
def seedD : ℕ := 4
def seedZ : ℚ := (3 : ℚ) / 128
def leafA : ℚ := (1 : ℚ) / 16
def leafB : ℚ := (3 : ℚ) / 32
def lam : ℚ := (3471657440109699659204039683 : ℚ) / 79228162514264337593543950336

noncomputable def seedCore : ℚ[X] := qSeedCore
noncomputable def seedWeight0 : ℚ[X] := qSeedWeight0
noncomputable def seedWeight1 : ℚ[X] := qSeedWeight1
noncomputable def leafMap : ℚ[X] := affine leafA leafB
noncomputable def localCore : ℚ[X] := seedCore.comp leafMap
noncomputable def localWeight0 : ℚ[X] := seedWeight0.comp leafMap
noncomputable def localWeight1 : ℚ[X] := seedWeight1.comp leafMap

def gapCoeff0 : ℚ := (498334822890731326670279683 : ℚ) / 79228162514264337593543950336
def gapCoeff1 : ℚ := (3781342515170844816716805147 : ℚ) / 79228162514264337593543950336
def gapCoeff2 : ℚ := (3152993740532814724373099547 : ℚ) / 19807040628566084398385987584
def gapCoeff3 : ℚ := (6056798629457622637907420223 : ℚ) / 19807040628566084398385987584
def gapCoeff4 : ℚ := (14739705482577706660901317821 : ℚ) / 39614081257132168796771975168
def gapCoeff5 : ℚ := (11752178311672223457895935165 : ℚ) / 39614081257132168796771975168
def gapCoeff6 : ℚ := (3060785590375500223654536255 : ℚ) / 19807040628566084398385987584
def gapCoeff7 : ℚ := (1000854145158193816693060635 : ℚ) / 19807040628566084398385987584
def gapCoeff8 : ℚ := (742846832268291980877575195 : ℚ) / 79228162514264337593543950336
def gapCoeff9 : ℚ := (59399706967090870550434819 : ℚ) / 79228162514264337593543950336

noncomputable def gapExpansion : ℚ[X] :=
  Polynomial.C gapCoeff0 * bernsteinMonomial 0 9 +
  Polynomial.C gapCoeff1 * bernsteinMonomial 1 8 +
  Polynomial.C gapCoeff2 * bernsteinMonomial 2 7 +
  Polynomial.C gapCoeff3 * bernsteinMonomial 3 6 +
  Polynomial.C gapCoeff4 * bernsteinMonomial 4 5 +
  Polynomial.C gapCoeff5 * bernsteinMonomial 5 4 +
  Polynomial.C gapCoeff6 * bernsteinMonomial 6 3 +
  Polynomial.C gapCoeff7 * bernsteinMonomial 7 2 +
  Polynomial.C gapCoeff8 * bernsteinMonomial 8 1 +
  Polynomial.C gapCoeff9 * bernsteinMonomial 9 0

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
    gapCoeff0, gapCoeff1, gapCoeff2, gapCoeff3, gapCoeff4, gapCoeff5, gapCoeff6, gapCoeff7, gapCoeff8, gapCoeff9,
    bernsteinMonomial, Polynomial.eval_comp, Polynomial.eval_add, Polynomial.eval_sub,
    Polynomial.eval_mul, Polynomial.eval_pow, Polynomial.eval_C, Polynomial.eval_X] <;> ring

theorem leafMap_eq_path : leafMap = ((((halfLeft).comp halfLeft).comp halfLeft).comp halfRight).comp halfLeft := by
  apply Polynomial.funext
  intro x
  norm_num [leafMap, affine, leafA, leafB, halfLeft, halfRight,
    Polynomial.eval_comp, Polynomial.eval_add, Polynomial.eval_sub,
    Polynomial.eval_mul, Polynomial.eval_C, Polynomial.eval_X] <;> ring

theorem gapExpansion_cone : BernsteinCone gapExpansion := by
  have h0 : BernsteinCone (Polynomial.C gapCoeff0 * bernsteinMonomial 0 9) :=
    BernsteinCone.scale gapCoeff0 (by norm_num [gapCoeff0]) (BernsteinCone.basis 0 9)
  have h1 : BernsteinCone (Polynomial.C gapCoeff1 * bernsteinMonomial 1 8) :=
    BernsteinCone.scale gapCoeff1 (by norm_num [gapCoeff1]) (BernsteinCone.basis 1 8)
  have h2 : BernsteinCone (Polynomial.C gapCoeff2 * bernsteinMonomial 2 7) :=
    BernsteinCone.scale gapCoeff2 (by norm_num [gapCoeff2]) (BernsteinCone.basis 2 7)
  have h3 : BernsteinCone (Polynomial.C gapCoeff3 * bernsteinMonomial 3 6) :=
    BernsteinCone.scale gapCoeff3 (by norm_num [gapCoeff3]) (BernsteinCone.basis 3 6)
  have h4 : BernsteinCone (Polynomial.C gapCoeff4 * bernsteinMonomial 4 5) :=
    BernsteinCone.scale gapCoeff4 (by norm_num [gapCoeff4]) (BernsteinCone.basis 4 5)
  have h5 : BernsteinCone (Polynomial.C gapCoeff5 * bernsteinMonomial 5 4) :=
    BernsteinCone.scale gapCoeff5 (by norm_num [gapCoeff5]) (BernsteinCone.basis 5 4)
  have h6 : BernsteinCone (Polynomial.C gapCoeff6 * bernsteinMonomial 6 3) :=
    BernsteinCone.scale gapCoeff6 (by norm_num [gapCoeff6]) (BernsteinCone.basis 6 3)
  have h7 : BernsteinCone (Polynomial.C gapCoeff7 * bernsteinMonomial 7 2) :=
    BernsteinCone.scale gapCoeff7 (by norm_num [gapCoeff7]) (BernsteinCone.basis 7 2)
  have h8 : BernsteinCone (Polynomial.C gapCoeff8 * bernsteinMonomial 8 1) :=
    BernsteinCone.scale gapCoeff8 (by norm_num [gapCoeff8]) (BernsteinCone.basis 8 1)
  have h9 : BernsteinCone (Polynomial.C gapCoeff9 * bernsteinMonomial 9 0) :=
    BernsteinCone.scale gapCoeff9 (by norm_num [gapCoeff9]) (BernsteinCone.basis 9 0)
  exact BernsteinCone.add (BernsteinCone.add (BernsteinCone.add (BernsteinCone.add (BernsteinCone.add (BernsteinCone.add (BernsteinCone.add (BernsteinCone.add (BernsteinCone.add (h0) h1) h2) h3) h4) h5) h6) h7) h8) h9

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

end Math.B699.I11TwoFiveGrowth.QLeaf001

#print axioms Math.B699.I11TwoFiveGrowth.QLeaf001.actual_gap_eq
#print axioms Math.B699.I11TwoFiveGrowth.QLeaf001.leafMap_eq_path
#print axioms Math.B699.I11TwoFiveGrowth.QLeaf001.gapExpansion_cone
#print axioms Math.B699.I11TwoFiveGrowth.QLeaf001.local_gap_cone
#print axioms Math.B699.I11TwoFiveGrowth.QLeaf001.local_core_cone
#print axioms Math.B699.I11TwoFiveGrowth.QLeaf001.local_weight0_cone
#print axioms Math.B699.I11TwoFiveGrowth.QLeaf001.local_weight1_cone
#print axioms Math.B699.I11TwoFiveGrowth.QLeaf001.leaf_delta0
#print axioms Math.B699.I11TwoFiveGrowth.QLeaf001.leaf_delta1
namespace Math.B699.I11TwoFiveGrowth.QLeaf002


open Polynomial Math.B699.PadeMoment Math.B699.PadeGrowthPartition Math.B699.GrowthLeaf
open Math.B699.I11TwoFiveGrowth.Shared

local instance : Infinite ℚ :=
  Infinite.of_injective (fun n : ℕ => (n : ℚ)) Nat.cast_injective

def seedC : ℕ := 5
def seedD : ℕ := 4
def seedZ : ℚ := (3 : ℚ) / 128
def leafA : ℚ := (3 : ℚ) / 32
def leafB : ℚ := (7 : ℚ) / 64
def lam : ℚ := (3471657440109699659204039683 : ℚ) / 79228162514264337593543950336

noncomputable def seedCore : ℚ[X] := qSeedCore
noncomputable def seedWeight0 : ℚ[X] := qSeedWeight0
noncomputable def seedWeight1 : ℚ[X] := qSeedWeight1
noncomputable def leafMap : ℚ[X] := affine leafA leafB
noncomputable def localCore : ℚ[X] := seedCore.comp leafMap
noncomputable def localWeight0 : ℚ[X] := seedWeight0.comp leafMap
noncomputable def localWeight1 : ℚ[X] := seedWeight1.comp leafMap

def gapCoeff0 : ℚ := (59399706967090870550434819 : ℚ) / 79228162514264337593543950336
def gapCoeff1 : ℚ := (430472627921580761992082459 : ℚ) / 79228162514264337593543950336
def gapCoeff2 : ℚ := (338787353970700611503207451 : ℚ) / 19807040628566084398385987584
def gapCoeff3 : ℚ := (604679359423087341713630271 : ℚ) / 19807040628566084398385987584
def gapCoeff4 : ℚ := (1338203961636715811983223997 : ℚ) / 39614081257132168796771975168
def gapCoeff5 : ℚ := (941391831834164682480577725 : ℚ) / 39614081257132168796771975168
def gapCoeff6 : ℚ := (207016610350243845942027327 : ℚ) / 19807040628566084398385987584
def gapCoeff7 : ℚ := (53527152929092011396707355 : ℚ) / 19807040628566084398385987584
def gapCoeff8 : ℚ := (28555313181133195901776923 : ℚ) / 79228162514264337593543950336
def gapCoeff9 : ℚ := (1496459706801980805010435 : ℚ) / 79228162514264337593543950336

noncomputable def gapExpansion : ℚ[X] :=
  Polynomial.C gapCoeff0 * bernsteinMonomial 0 9 +
  Polynomial.C gapCoeff1 * bernsteinMonomial 1 8 +
  Polynomial.C gapCoeff2 * bernsteinMonomial 2 7 +
  Polynomial.C gapCoeff3 * bernsteinMonomial 3 6 +
  Polynomial.C gapCoeff4 * bernsteinMonomial 4 5 +
  Polynomial.C gapCoeff5 * bernsteinMonomial 5 4 +
  Polynomial.C gapCoeff6 * bernsteinMonomial 6 3 +
  Polynomial.C gapCoeff7 * bernsteinMonomial 7 2 +
  Polynomial.C gapCoeff8 * bernsteinMonomial 8 1 +
  Polynomial.C gapCoeff9 * bernsteinMonomial 9 0

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
    gapCoeff0, gapCoeff1, gapCoeff2, gapCoeff3, gapCoeff4, gapCoeff5, gapCoeff6, gapCoeff7, gapCoeff8, gapCoeff9,
    bernsteinMonomial, Polynomial.eval_comp, Polynomial.eval_add, Polynomial.eval_sub,
    Polynomial.eval_mul, Polynomial.eval_pow, Polynomial.eval_C, Polynomial.eval_X] <;> ring

theorem leafMap_eq_path : leafMap = (((((halfLeft).comp halfLeft).comp halfLeft).comp halfRight).comp halfRight).comp halfLeft := by
  apply Polynomial.funext
  intro x
  norm_num [leafMap, affine, leafA, leafB, halfLeft, halfRight,
    Polynomial.eval_comp, Polynomial.eval_add, Polynomial.eval_sub,
    Polynomial.eval_mul, Polynomial.eval_C, Polynomial.eval_X] <;> ring

theorem gapExpansion_cone : BernsteinCone gapExpansion := by
  have h0 : BernsteinCone (Polynomial.C gapCoeff0 * bernsteinMonomial 0 9) :=
    BernsteinCone.scale gapCoeff0 (by norm_num [gapCoeff0]) (BernsteinCone.basis 0 9)
  have h1 : BernsteinCone (Polynomial.C gapCoeff1 * bernsteinMonomial 1 8) :=
    BernsteinCone.scale gapCoeff1 (by norm_num [gapCoeff1]) (BernsteinCone.basis 1 8)
  have h2 : BernsteinCone (Polynomial.C gapCoeff2 * bernsteinMonomial 2 7) :=
    BernsteinCone.scale gapCoeff2 (by norm_num [gapCoeff2]) (BernsteinCone.basis 2 7)
  have h3 : BernsteinCone (Polynomial.C gapCoeff3 * bernsteinMonomial 3 6) :=
    BernsteinCone.scale gapCoeff3 (by norm_num [gapCoeff3]) (BernsteinCone.basis 3 6)
  have h4 : BernsteinCone (Polynomial.C gapCoeff4 * bernsteinMonomial 4 5) :=
    BernsteinCone.scale gapCoeff4 (by norm_num [gapCoeff4]) (BernsteinCone.basis 4 5)
  have h5 : BernsteinCone (Polynomial.C gapCoeff5 * bernsteinMonomial 5 4) :=
    BernsteinCone.scale gapCoeff5 (by norm_num [gapCoeff5]) (BernsteinCone.basis 5 4)
  have h6 : BernsteinCone (Polynomial.C gapCoeff6 * bernsteinMonomial 6 3) :=
    BernsteinCone.scale gapCoeff6 (by norm_num [gapCoeff6]) (BernsteinCone.basis 6 3)
  have h7 : BernsteinCone (Polynomial.C gapCoeff7 * bernsteinMonomial 7 2) :=
    BernsteinCone.scale gapCoeff7 (by norm_num [gapCoeff7]) (BernsteinCone.basis 7 2)
  have h8 : BernsteinCone (Polynomial.C gapCoeff8 * bernsteinMonomial 8 1) :=
    BernsteinCone.scale gapCoeff8 (by norm_num [gapCoeff8]) (BernsteinCone.basis 8 1)
  have h9 : BernsteinCone (Polynomial.C gapCoeff9 * bernsteinMonomial 9 0) :=
    BernsteinCone.scale gapCoeff9 (by norm_num [gapCoeff9]) (BernsteinCone.basis 9 0)
  exact BernsteinCone.add (BernsteinCone.add (BernsteinCone.add (BernsteinCone.add (BernsteinCone.add (BernsteinCone.add (BernsteinCone.add (BernsteinCone.add (BernsteinCone.add (h0) h1) h2) h3) h4) h5) h6) h7) h8) h9

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

end Math.B699.I11TwoFiveGrowth.QLeaf002

#print axioms Math.B699.I11TwoFiveGrowth.QLeaf002.actual_gap_eq
#print axioms Math.B699.I11TwoFiveGrowth.QLeaf002.leafMap_eq_path
#print axioms Math.B699.I11TwoFiveGrowth.QLeaf002.gapExpansion_cone
#print axioms Math.B699.I11TwoFiveGrowth.QLeaf002.local_gap_cone
#print axioms Math.B699.I11TwoFiveGrowth.QLeaf002.local_core_cone
#print axioms Math.B699.I11TwoFiveGrowth.QLeaf002.local_weight0_cone
#print axioms Math.B699.I11TwoFiveGrowth.QLeaf002.local_weight1_cone
#print axioms Math.B699.I11TwoFiveGrowth.QLeaf002.leaf_delta0
#print axioms Math.B699.I11TwoFiveGrowth.QLeaf002.leaf_delta1
namespace Math.B699.I11TwoFiveGrowth.QLeaf003


open Polynomial Math.B699.PadeMoment Math.B699.PadeGrowthPartition Math.B699.GrowthLeaf
open Math.B699.I11TwoFiveGrowth.Shared

local instance : Infinite ℚ :=
  Infinite.of_injective (fun n : ℕ => (n : ℚ)) Nat.cast_injective

def seedC : ℕ := 5
def seedD : ℕ := 4
def seedZ : ℚ := (3 : ℚ) / 128
def leafA : ℚ := (7 : ℚ) / 64
def leafB : ℚ := (57 : ℚ) / 512
def lam : ℚ := (3471657440109699659204039683 : ℚ) / 79228162514264337593543950336

noncomputable def seedCore : ℚ[X] := qSeedCore
noncomputable def seedWeight0 : ℚ[X] := qSeedWeight0
noncomputable def seedWeight1 : ℚ[X] := qSeedWeight1
noncomputable def leafMap : ℚ[X] := affine leafA leafB
noncomputable def localCore : ℚ[X] := seedCore.comp leafMap
noncomputable def localWeight0 : ℚ[X] := seedWeight0.comp leafMap
noncomputable def localWeight1 : ℚ[X] := seedWeight1.comp leafMap

def gapCoeff0 : ℚ := (1496459706801980805010435 : ℚ) / 79228162514264337593543950336
def gapCoeff1 : ℚ := (11582240383728406163008539 : ℚ) / 79228162514264337593543950336
def gapCoeff2 : ℚ := (9850791280114663937770779 : ℚ) / 19807040628566084398385987584
def gapCoeff3 : ℚ := (19303970902171005741499551 : ℚ) / 19807040628566084398385987584
def gapCoeff4 : ℚ := (47940201199741017878588313 : ℚ) / 39614081257132168796771975168
def gapCoeff5 : ℚ := (78071633193341822320483587 : ℚ) / 79228162514264337593543950336
def gapCoeff6 : ℚ := (166368991415014134279113133 : ℚ) / 316912650057057350374175801344
def gapCoeff7 : ℚ := (446368015868070880297457391 : ℚ) / 2535301200456458802993406410752
def gapCoeff8 : ℚ := (2732758757328803339472947153 : ℚ) / 81129638414606681695789005144064
def gapCoeff9 : ℚ := (1820484590130372079098547511 : ℚ) / 649037107316853453566312041152512

noncomputable def gapExpansion : ℚ[X] :=
  Polynomial.C gapCoeff0 * bernsteinMonomial 0 9 +
  Polynomial.C gapCoeff1 * bernsteinMonomial 1 8 +
  Polynomial.C gapCoeff2 * bernsteinMonomial 2 7 +
  Polynomial.C gapCoeff3 * bernsteinMonomial 3 6 +
  Polynomial.C gapCoeff4 * bernsteinMonomial 4 5 +
  Polynomial.C gapCoeff5 * bernsteinMonomial 5 4 +
  Polynomial.C gapCoeff6 * bernsteinMonomial 6 3 +
  Polynomial.C gapCoeff7 * bernsteinMonomial 7 2 +
  Polynomial.C gapCoeff8 * bernsteinMonomial 8 1 +
  Polynomial.C gapCoeff9 * bernsteinMonomial 9 0

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
    gapCoeff0, gapCoeff1, gapCoeff2, gapCoeff3, gapCoeff4, gapCoeff5, gapCoeff6, gapCoeff7, gapCoeff8, gapCoeff9,
    bernsteinMonomial, Polynomial.eval_comp, Polynomial.eval_add, Polynomial.eval_sub,
    Polynomial.eval_mul, Polynomial.eval_pow, Polynomial.eval_C, Polynomial.eval_X] <;> ring

theorem leafMap_eq_path : leafMap = ((((((((halfLeft).comp halfLeft).comp halfLeft).comp halfRight).comp halfRight).comp halfRight).comp halfLeft).comp halfLeft).comp halfLeft := by
  apply Polynomial.funext
  intro x
  norm_num [leafMap, affine, leafA, leafB, halfLeft, halfRight,
    Polynomial.eval_comp, Polynomial.eval_add, Polynomial.eval_sub,
    Polynomial.eval_mul, Polynomial.eval_C, Polynomial.eval_X] <;> ring

theorem gapExpansion_cone : BernsteinCone gapExpansion := by
  have h0 : BernsteinCone (Polynomial.C gapCoeff0 * bernsteinMonomial 0 9) :=
    BernsteinCone.scale gapCoeff0 (by norm_num [gapCoeff0]) (BernsteinCone.basis 0 9)
  have h1 : BernsteinCone (Polynomial.C gapCoeff1 * bernsteinMonomial 1 8) :=
    BernsteinCone.scale gapCoeff1 (by norm_num [gapCoeff1]) (BernsteinCone.basis 1 8)
  have h2 : BernsteinCone (Polynomial.C gapCoeff2 * bernsteinMonomial 2 7) :=
    BernsteinCone.scale gapCoeff2 (by norm_num [gapCoeff2]) (BernsteinCone.basis 2 7)
  have h3 : BernsteinCone (Polynomial.C gapCoeff3 * bernsteinMonomial 3 6) :=
    BernsteinCone.scale gapCoeff3 (by norm_num [gapCoeff3]) (BernsteinCone.basis 3 6)
  have h4 : BernsteinCone (Polynomial.C gapCoeff4 * bernsteinMonomial 4 5) :=
    BernsteinCone.scale gapCoeff4 (by norm_num [gapCoeff4]) (BernsteinCone.basis 4 5)
  have h5 : BernsteinCone (Polynomial.C gapCoeff5 * bernsteinMonomial 5 4) :=
    BernsteinCone.scale gapCoeff5 (by norm_num [gapCoeff5]) (BernsteinCone.basis 5 4)
  have h6 : BernsteinCone (Polynomial.C gapCoeff6 * bernsteinMonomial 6 3) :=
    BernsteinCone.scale gapCoeff6 (by norm_num [gapCoeff6]) (BernsteinCone.basis 6 3)
  have h7 : BernsteinCone (Polynomial.C gapCoeff7 * bernsteinMonomial 7 2) :=
    BernsteinCone.scale gapCoeff7 (by norm_num [gapCoeff7]) (BernsteinCone.basis 7 2)
  have h8 : BernsteinCone (Polynomial.C gapCoeff8 * bernsteinMonomial 8 1) :=
    BernsteinCone.scale gapCoeff8 (by norm_num [gapCoeff8]) (BernsteinCone.basis 8 1)
  have h9 : BernsteinCone (Polynomial.C gapCoeff9 * bernsteinMonomial 9 0) :=
    BernsteinCone.scale gapCoeff9 (by norm_num [gapCoeff9]) (BernsteinCone.basis 9 0)
  exact BernsteinCone.add (BernsteinCone.add (BernsteinCone.add (BernsteinCone.add (BernsteinCone.add (BernsteinCone.add (BernsteinCone.add (BernsteinCone.add (BernsteinCone.add (h0) h1) h2) h3) h4) h5) h6) h7) h8) h9

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

end Math.B699.I11TwoFiveGrowth.QLeaf003

#print axioms Math.B699.I11TwoFiveGrowth.QLeaf003.actual_gap_eq
#print axioms Math.B699.I11TwoFiveGrowth.QLeaf003.leafMap_eq_path
#print axioms Math.B699.I11TwoFiveGrowth.QLeaf003.gapExpansion_cone
#print axioms Math.B699.I11TwoFiveGrowth.QLeaf003.local_gap_cone
#print axioms Math.B699.I11TwoFiveGrowth.QLeaf003.local_core_cone
#print axioms Math.B699.I11TwoFiveGrowth.QLeaf003.local_weight0_cone
#print axioms Math.B699.I11TwoFiveGrowth.QLeaf003.local_weight1_cone
#print axioms Math.B699.I11TwoFiveGrowth.QLeaf003.leaf_delta0
#print axioms Math.B699.I11TwoFiveGrowth.QLeaf003.leaf_delta1
namespace Math.B699.I11TwoFiveGrowth.QLeaf004


open Polynomial Math.B699.PadeMoment Math.B699.PadeGrowthPartition Math.B699.GrowthLeaf
open Math.B699.I11TwoFiveGrowth.Shared

local instance : Infinite ℚ :=
  Infinite.of_injective (fun n : ℕ => (n : ℚ)) Nat.cast_injective

def seedC : ℕ := 5
def seedD : ℕ := 4
def seedZ : ℚ := (3 : ℚ) / 128
def leafA : ℚ := (57 : ℚ) / 512
def leafB : ℚ := (29 : ℚ) / 256
def lam : ℚ := (3471657440109699659204039683 : ℚ) / 79228162514264337593543950336

noncomputable def seedCore : ℚ[X] := qSeedCore
noncomputable def seedWeight0 : ℚ[X] := qSeedWeight0
noncomputable def seedWeight1 : ℚ[X] := qSeedWeight1
noncomputable def leafMap : ℚ[X] := affine leafA leafB
noncomputable def localCore : ℚ[X] := seedCore.comp leafMap
noncomputable def localWeight0 : ℚ[X] := seedWeight0.comp leafMap
noncomputable def localWeight1 : ℚ[X] := seedWeight1.comp leafMap

def gapCoeff0 : ℚ := (1820484590130372079098547511 : ℚ) / 649037107316853453566312041152512
def gapCoeff1 : ℚ := (5453326281858135353995138987 : ℚ) / 324518553658426726783156020576256
def gapCoeff2 : ℚ := (1664179506432056080862668631 : ℚ) / 40564819207303340847894502572032
def gapCoeff3 : ℚ := (1058533514194354155278964727 : ℚ) / 20282409603651670423947251286016
def gapCoeff4 : ℚ := (795807711495749909814690937 : ℚ) / 20282409603651670423947251286016
def gapCoeff5 : ℚ := (267016387937053567551337565 : ℚ) / 10141204801825835211973625643008
def gapCoeff6 : ℚ := (66681605914447891189503515 : ℚ) / 2535301200456458802993406410752
def gapCoeff7 : ℚ := (28427829807860630823147715 : ℚ) / 1267650600228229401496703205376
def gapCoeff8 : ℚ := (25956152566412374405820015 : ℚ) / 2535301200456458802993406410752
def gapCoeff9 : ℚ := (2352826024366834956007139 : ℚ) / 1267650600228229401496703205376

noncomputable def gapExpansion : ℚ[X] :=
  Polynomial.C gapCoeff0 * bernsteinMonomial 0 9 +
  Polynomial.C gapCoeff1 * bernsteinMonomial 1 8 +
  Polynomial.C gapCoeff2 * bernsteinMonomial 2 7 +
  Polynomial.C gapCoeff3 * bernsteinMonomial 3 6 +
  Polynomial.C gapCoeff4 * bernsteinMonomial 4 5 +
  Polynomial.C gapCoeff5 * bernsteinMonomial 5 4 +
  Polynomial.C gapCoeff6 * bernsteinMonomial 6 3 +
  Polynomial.C gapCoeff7 * bernsteinMonomial 7 2 +
  Polynomial.C gapCoeff8 * bernsteinMonomial 8 1 +
  Polynomial.C gapCoeff9 * bernsteinMonomial 9 0

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
    gapCoeff0, gapCoeff1, gapCoeff2, gapCoeff3, gapCoeff4, gapCoeff5, gapCoeff6, gapCoeff7, gapCoeff8, gapCoeff9,
    bernsteinMonomial, Polynomial.eval_comp, Polynomial.eval_add, Polynomial.eval_sub,
    Polynomial.eval_mul, Polynomial.eval_pow, Polynomial.eval_C, Polynomial.eval_X] <;> ring

theorem leafMap_eq_path : leafMap = ((((((((halfLeft).comp halfLeft).comp halfLeft).comp halfRight).comp halfRight).comp halfRight).comp halfLeft).comp halfLeft).comp halfRight := by
  apply Polynomial.funext
  intro x
  norm_num [leafMap, affine, leafA, leafB, halfLeft, halfRight,
    Polynomial.eval_comp, Polynomial.eval_add, Polynomial.eval_sub,
    Polynomial.eval_mul, Polynomial.eval_C, Polynomial.eval_X] <;> ring

theorem gapExpansion_cone : BernsteinCone gapExpansion := by
  have h0 : BernsteinCone (Polynomial.C gapCoeff0 * bernsteinMonomial 0 9) :=
    BernsteinCone.scale gapCoeff0 (by norm_num [gapCoeff0]) (BernsteinCone.basis 0 9)
  have h1 : BernsteinCone (Polynomial.C gapCoeff1 * bernsteinMonomial 1 8) :=
    BernsteinCone.scale gapCoeff1 (by norm_num [gapCoeff1]) (BernsteinCone.basis 1 8)
  have h2 : BernsteinCone (Polynomial.C gapCoeff2 * bernsteinMonomial 2 7) :=
    BernsteinCone.scale gapCoeff2 (by norm_num [gapCoeff2]) (BernsteinCone.basis 2 7)
  have h3 : BernsteinCone (Polynomial.C gapCoeff3 * bernsteinMonomial 3 6) :=
    BernsteinCone.scale gapCoeff3 (by norm_num [gapCoeff3]) (BernsteinCone.basis 3 6)
  have h4 : BernsteinCone (Polynomial.C gapCoeff4 * bernsteinMonomial 4 5) :=
    BernsteinCone.scale gapCoeff4 (by norm_num [gapCoeff4]) (BernsteinCone.basis 4 5)
  have h5 : BernsteinCone (Polynomial.C gapCoeff5 * bernsteinMonomial 5 4) :=
    BernsteinCone.scale gapCoeff5 (by norm_num [gapCoeff5]) (BernsteinCone.basis 5 4)
  have h6 : BernsteinCone (Polynomial.C gapCoeff6 * bernsteinMonomial 6 3) :=
    BernsteinCone.scale gapCoeff6 (by norm_num [gapCoeff6]) (BernsteinCone.basis 6 3)
  have h7 : BernsteinCone (Polynomial.C gapCoeff7 * bernsteinMonomial 7 2) :=
    BernsteinCone.scale gapCoeff7 (by norm_num [gapCoeff7]) (BernsteinCone.basis 7 2)
  have h8 : BernsteinCone (Polynomial.C gapCoeff8 * bernsteinMonomial 8 1) :=
    BernsteinCone.scale gapCoeff8 (by norm_num [gapCoeff8]) (BernsteinCone.basis 8 1)
  have h9 : BernsteinCone (Polynomial.C gapCoeff9 * bernsteinMonomial 9 0) :=
    BernsteinCone.scale gapCoeff9 (by norm_num [gapCoeff9]) (BernsteinCone.basis 9 0)
  exact BernsteinCone.add (BernsteinCone.add (BernsteinCone.add (BernsteinCone.add (BernsteinCone.add (BernsteinCone.add (BernsteinCone.add (BernsteinCone.add (BernsteinCone.add (h0) h1) h2) h3) h4) h5) h6) h7) h8) h9

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

end Math.B699.I11TwoFiveGrowth.QLeaf004

#print axioms Math.B699.I11TwoFiveGrowth.QLeaf004.actual_gap_eq
#print axioms Math.B699.I11TwoFiveGrowth.QLeaf004.leafMap_eq_path
#print axioms Math.B699.I11TwoFiveGrowth.QLeaf004.gapExpansion_cone
#print axioms Math.B699.I11TwoFiveGrowth.QLeaf004.local_gap_cone
#print axioms Math.B699.I11TwoFiveGrowth.QLeaf004.local_core_cone
#print axioms Math.B699.I11TwoFiveGrowth.QLeaf004.local_weight0_cone
#print axioms Math.B699.I11TwoFiveGrowth.QLeaf004.local_weight1_cone
#print axioms Math.B699.I11TwoFiveGrowth.QLeaf004.leaf_delta0
#print axioms Math.B699.I11TwoFiveGrowth.QLeaf004.leaf_delta1
namespace Math.B699.I11TwoFiveGrowth.QLeaf005


open Polynomial Math.B699.PadeMoment Math.B699.PadeGrowthPartition Math.B699.GrowthLeaf
open Math.B699.I11TwoFiveGrowth.Shared

local instance : Infinite ℚ :=
  Infinite.of_injective (fun n : ℕ => (n : ℚ)) Nat.cast_injective

def seedC : ℕ := 5
def seedD : ℕ := 4
def seedZ : ℚ := (3 : ℚ) / 128
def leafA : ℚ := (29 : ℚ) / 256
def leafB : ℚ := (15 : ℚ) / 128
def lam : ℚ := (3471657440109699659204039683 : ℚ) / 79228162514264337593543950336

noncomputable def seedCore : ℚ[X] := qSeedCore
noncomputable def seedWeight0 : ℚ[X] := qSeedWeight0
noncomputable def seedWeight1 : ℚ[X] := qSeedWeight1
noncomputable def leafMap : ℚ[X] := affine leafA leafB
noncomputable def localCore : ℚ[X] := seedCore.comp leafMap
noncomputable def localWeight0 : ℚ[X] := seedWeight0.comp leafMap
noncomputable def localWeight1 : ℚ[X] := seedWeight1.comp leafMap

def gapCoeff0 : ℚ := (2352826024366834956007139 : ℚ) / 1267650600228229401496703205376
def gapCoeff1 : ℚ := (18785075045746084703186369 : ℚ) / 633825300114114700748351602688
def gapCoeff2 : ℚ := (15817455595775003956201471 : ℚ) / 79228162514264337593543950336
def gapCoeff3 : ℚ := (28639695522830148573248171 : ℚ) / 39614081257132168796771975168
def gapCoeff4 : ℚ := (31119315766389114549485821 : ℚ) / 19807040628566084398385987584
def gapCoeff5 : ℚ := (85482745548031883690759579 : ℚ) / 39614081257132168796771975168
def gapCoeff6 : ℚ := (37552349372954436900405211 : ℚ) / 19807040628566084398385987584
def gapCoeff7 : ℚ := (20532418568924532034183075 : ℚ) / 19807040628566084398385987584
def gapCoeff8 : ℚ := (25522572642992314873418443 : ℚ) / 79228162514264337593543950336
def gapCoeff9 : ℚ := (3451049624523998546029603 : ℚ) / 79228162514264337593543950336

noncomputable def gapExpansion : ℚ[X] :=
  Polynomial.C gapCoeff0 * bernsteinMonomial 0 9 +
  Polynomial.C gapCoeff1 * bernsteinMonomial 1 8 +
  Polynomial.C gapCoeff2 * bernsteinMonomial 2 7 +
  Polynomial.C gapCoeff3 * bernsteinMonomial 3 6 +
  Polynomial.C gapCoeff4 * bernsteinMonomial 4 5 +
  Polynomial.C gapCoeff5 * bernsteinMonomial 5 4 +
  Polynomial.C gapCoeff6 * bernsteinMonomial 6 3 +
  Polynomial.C gapCoeff7 * bernsteinMonomial 7 2 +
  Polynomial.C gapCoeff8 * bernsteinMonomial 8 1 +
  Polynomial.C gapCoeff9 * bernsteinMonomial 9 0

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
    gapCoeff0, gapCoeff1, gapCoeff2, gapCoeff3, gapCoeff4, gapCoeff5, gapCoeff6, gapCoeff7, gapCoeff8, gapCoeff9,
    bernsteinMonomial, Polynomial.eval_comp, Polynomial.eval_add, Polynomial.eval_sub,
    Polynomial.eval_mul, Polynomial.eval_pow, Polynomial.eval_C, Polynomial.eval_X] <;> ring

theorem leafMap_eq_path : leafMap = (((((((halfLeft).comp halfLeft).comp halfLeft).comp halfRight).comp halfRight).comp halfRight).comp halfLeft).comp halfRight := by
  apply Polynomial.funext
  intro x
  norm_num [leafMap, affine, leafA, leafB, halfLeft, halfRight,
    Polynomial.eval_comp, Polynomial.eval_add, Polynomial.eval_sub,
    Polynomial.eval_mul, Polynomial.eval_C, Polynomial.eval_X] <;> ring

theorem gapExpansion_cone : BernsteinCone gapExpansion := by
  have h0 : BernsteinCone (Polynomial.C gapCoeff0 * bernsteinMonomial 0 9) :=
    BernsteinCone.scale gapCoeff0 (by norm_num [gapCoeff0]) (BernsteinCone.basis 0 9)
  have h1 : BernsteinCone (Polynomial.C gapCoeff1 * bernsteinMonomial 1 8) :=
    BernsteinCone.scale gapCoeff1 (by norm_num [gapCoeff1]) (BernsteinCone.basis 1 8)
  have h2 : BernsteinCone (Polynomial.C gapCoeff2 * bernsteinMonomial 2 7) :=
    BernsteinCone.scale gapCoeff2 (by norm_num [gapCoeff2]) (BernsteinCone.basis 2 7)
  have h3 : BernsteinCone (Polynomial.C gapCoeff3 * bernsteinMonomial 3 6) :=
    BernsteinCone.scale gapCoeff3 (by norm_num [gapCoeff3]) (BernsteinCone.basis 3 6)
  have h4 : BernsteinCone (Polynomial.C gapCoeff4 * bernsteinMonomial 4 5) :=
    BernsteinCone.scale gapCoeff4 (by norm_num [gapCoeff4]) (BernsteinCone.basis 4 5)
  have h5 : BernsteinCone (Polynomial.C gapCoeff5 * bernsteinMonomial 5 4) :=
    BernsteinCone.scale gapCoeff5 (by norm_num [gapCoeff5]) (BernsteinCone.basis 5 4)
  have h6 : BernsteinCone (Polynomial.C gapCoeff6 * bernsteinMonomial 6 3) :=
    BernsteinCone.scale gapCoeff6 (by norm_num [gapCoeff6]) (BernsteinCone.basis 6 3)
  have h7 : BernsteinCone (Polynomial.C gapCoeff7 * bernsteinMonomial 7 2) :=
    BernsteinCone.scale gapCoeff7 (by norm_num [gapCoeff7]) (BernsteinCone.basis 7 2)
  have h8 : BernsteinCone (Polynomial.C gapCoeff8 * bernsteinMonomial 8 1) :=
    BernsteinCone.scale gapCoeff8 (by norm_num [gapCoeff8]) (BernsteinCone.basis 8 1)
  have h9 : BernsteinCone (Polynomial.C gapCoeff9 * bernsteinMonomial 9 0) :=
    BernsteinCone.scale gapCoeff9 (by norm_num [gapCoeff9]) (BernsteinCone.basis 9 0)
  exact BernsteinCone.add (BernsteinCone.add (BernsteinCone.add (BernsteinCone.add (BernsteinCone.add (BernsteinCone.add (BernsteinCone.add (BernsteinCone.add (BernsteinCone.add (h0) h1) h2) h3) h4) h5) h6) h7) h8) h9

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

end Math.B699.I11TwoFiveGrowth.QLeaf005

#print axioms Math.B699.I11TwoFiveGrowth.QLeaf005.actual_gap_eq
#print axioms Math.B699.I11TwoFiveGrowth.QLeaf005.leafMap_eq_path
#print axioms Math.B699.I11TwoFiveGrowth.QLeaf005.gapExpansion_cone
#print axioms Math.B699.I11TwoFiveGrowth.QLeaf005.local_gap_cone
#print axioms Math.B699.I11TwoFiveGrowth.QLeaf005.local_core_cone
#print axioms Math.B699.I11TwoFiveGrowth.QLeaf005.local_weight0_cone
#print axioms Math.B699.I11TwoFiveGrowth.QLeaf005.local_weight1_cone
#print axioms Math.B699.I11TwoFiveGrowth.QLeaf005.leaf_delta0
#print axioms Math.B699.I11TwoFiveGrowth.QLeaf005.leaf_delta1
namespace Math.B699.I11TwoFiveGrowth.QLeaf006


open Polynomial Math.B699.PadeMoment Math.B699.PadeGrowthPartition Math.B699.GrowthLeaf
open Math.B699.I11TwoFiveGrowth.Shared

local instance : Infinite ℚ :=
  Infinite.of_injective (fun n : ℕ => (n : ℚ)) Nat.cast_injective

def seedC : ℕ := 5
def seedD : ℕ := 4
def seedZ : ℚ := (3 : ℚ) / 128
def leafA : ℚ := (15 : ℚ) / 128
def leafB : ℚ := (1 : ℚ) / 8
def lam : ℚ := (3471657440109699659204039683 : ℚ) / 79228162514264337593543950336

noncomputable def seedCore : ℚ[X] := qSeedCore
noncomputable def seedWeight0 : ℚ[X] := qSeedWeight0
noncomputable def seedWeight1 : ℚ[X] := qSeedWeight1
noncomputable def leafMap : ℚ[X] := affine leafA leafB
noncomputable def localCore : ℚ[X] := seedCore.comp leafMap
noncomputable def localWeight0 : ℚ[X] := seedWeight0.comp leafMap
noncomputable def localWeight1 : ℚ[X] := seedWeight1.comp leafMap

def gapCoeff0 : ℚ := (3451049624523998546029603 : ℚ) / 79228162514264337593543950336
def gapCoeff1 : ℚ := (42133194576163330995962395 : ℚ) / 79228162514264337593543950336
def gapCoeff2 : ℚ := (55393822146234231884108827 : ℚ) / 19807040628566084398385987584
def gapCoeff3 : ℚ := (165205348894100697216197695 : ℚ) / 19807040628566084398385987584
def gapCoeff4 : ℚ := (618240583313109239200640189 : ℚ) / 39614081257132168796771975168
def gapCoeff5 : ℚ := (755364274038095637048618173 : ℚ) / 39614081257132168796771975168
def gapCoeff6 : ℚ := (302241516379310225001948223 : ℚ) / 19807040628566084398385987584
def gapCoeff7 : ℚ := (153151759835480486224540699 : ℚ) / 19807040628566084398385987584
def gapCoeff8 : ℚ := (178731704658249836955120667 : ℚ) / 79228162514264337593543950336
def gapCoeff9 : ℚ := (22915097440490794778006531 : ℚ) / 79228162514264337593543950336

noncomputable def gapExpansion : ℚ[X] :=
  Polynomial.C gapCoeff0 * bernsteinMonomial 0 9 +
  Polynomial.C gapCoeff1 * bernsteinMonomial 1 8 +
  Polynomial.C gapCoeff2 * bernsteinMonomial 2 7 +
  Polynomial.C gapCoeff3 * bernsteinMonomial 3 6 +
  Polynomial.C gapCoeff4 * bernsteinMonomial 4 5 +
  Polynomial.C gapCoeff5 * bernsteinMonomial 5 4 +
  Polynomial.C gapCoeff6 * bernsteinMonomial 6 3 +
  Polynomial.C gapCoeff7 * bernsteinMonomial 7 2 +
  Polynomial.C gapCoeff8 * bernsteinMonomial 8 1 +
  Polynomial.C gapCoeff9 * bernsteinMonomial 9 0

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
    gapCoeff0, gapCoeff1, gapCoeff2, gapCoeff3, gapCoeff4, gapCoeff5, gapCoeff6, gapCoeff7, gapCoeff8, gapCoeff9,
    bernsteinMonomial, Polynomial.eval_comp, Polynomial.eval_add, Polynomial.eval_sub,
    Polynomial.eval_mul, Polynomial.eval_pow, Polynomial.eval_C, Polynomial.eval_X] <;> ring

theorem leafMap_eq_path : leafMap = ((((((halfLeft).comp halfLeft).comp halfLeft).comp halfRight).comp halfRight).comp halfRight).comp halfRight := by
  apply Polynomial.funext
  intro x
  norm_num [leafMap, affine, leafA, leafB, halfLeft, halfRight,
    Polynomial.eval_comp, Polynomial.eval_add, Polynomial.eval_sub,
    Polynomial.eval_mul, Polynomial.eval_C, Polynomial.eval_X] <;> ring

theorem gapExpansion_cone : BernsteinCone gapExpansion := by
  have h0 : BernsteinCone (Polynomial.C gapCoeff0 * bernsteinMonomial 0 9) :=
    BernsteinCone.scale gapCoeff0 (by norm_num [gapCoeff0]) (BernsteinCone.basis 0 9)
  have h1 : BernsteinCone (Polynomial.C gapCoeff1 * bernsteinMonomial 1 8) :=
    BernsteinCone.scale gapCoeff1 (by norm_num [gapCoeff1]) (BernsteinCone.basis 1 8)
  have h2 : BernsteinCone (Polynomial.C gapCoeff2 * bernsteinMonomial 2 7) :=
    BernsteinCone.scale gapCoeff2 (by norm_num [gapCoeff2]) (BernsteinCone.basis 2 7)
  have h3 : BernsteinCone (Polynomial.C gapCoeff3 * bernsteinMonomial 3 6) :=
    BernsteinCone.scale gapCoeff3 (by norm_num [gapCoeff3]) (BernsteinCone.basis 3 6)
  have h4 : BernsteinCone (Polynomial.C gapCoeff4 * bernsteinMonomial 4 5) :=
    BernsteinCone.scale gapCoeff4 (by norm_num [gapCoeff4]) (BernsteinCone.basis 4 5)
  have h5 : BernsteinCone (Polynomial.C gapCoeff5 * bernsteinMonomial 5 4) :=
    BernsteinCone.scale gapCoeff5 (by norm_num [gapCoeff5]) (BernsteinCone.basis 5 4)
  have h6 : BernsteinCone (Polynomial.C gapCoeff6 * bernsteinMonomial 6 3) :=
    BernsteinCone.scale gapCoeff6 (by norm_num [gapCoeff6]) (BernsteinCone.basis 6 3)
  have h7 : BernsteinCone (Polynomial.C gapCoeff7 * bernsteinMonomial 7 2) :=
    BernsteinCone.scale gapCoeff7 (by norm_num [gapCoeff7]) (BernsteinCone.basis 7 2)
  have h8 : BernsteinCone (Polynomial.C gapCoeff8 * bernsteinMonomial 8 1) :=
    BernsteinCone.scale gapCoeff8 (by norm_num [gapCoeff8]) (BernsteinCone.basis 8 1)
  have h9 : BernsteinCone (Polynomial.C gapCoeff9 * bernsteinMonomial 9 0) :=
    BernsteinCone.scale gapCoeff9 (by norm_num [gapCoeff9]) (BernsteinCone.basis 9 0)
  exact BernsteinCone.add (BernsteinCone.add (BernsteinCone.add (BernsteinCone.add (BernsteinCone.add (BernsteinCone.add (BernsteinCone.add (BernsteinCone.add (BernsteinCone.add (h0) h1) h2) h3) h4) h5) h6) h7) h8) h9

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

end Math.B699.I11TwoFiveGrowth.QLeaf006

#print axioms Math.B699.I11TwoFiveGrowth.QLeaf006.actual_gap_eq
#print axioms Math.B699.I11TwoFiveGrowth.QLeaf006.leafMap_eq_path
#print axioms Math.B699.I11TwoFiveGrowth.QLeaf006.gapExpansion_cone
#print axioms Math.B699.I11TwoFiveGrowth.QLeaf006.local_gap_cone
#print axioms Math.B699.I11TwoFiveGrowth.QLeaf006.local_core_cone
#print axioms Math.B699.I11TwoFiveGrowth.QLeaf006.local_weight0_cone
#print axioms Math.B699.I11TwoFiveGrowth.QLeaf006.local_weight1_cone
#print axioms Math.B699.I11TwoFiveGrowth.QLeaf006.leaf_delta0
#print axioms Math.B699.I11TwoFiveGrowth.QLeaf006.leaf_delta1
namespace Math.B699.I11TwoFiveGrowth.QLeaf007


open Polynomial Math.B699.PadeMoment Math.B699.PadeGrowthPartition Math.B699.GrowthLeaf
open Math.B699.I11TwoFiveGrowth.Shared

local instance : Infinite ℚ :=
  Infinite.of_injective (fun n : ℕ => (n : ℚ)) Nat.cast_injective

def seedC : ℕ := 5
def seedD : ℕ := 4
def seedZ : ℚ := (3 : ℚ) / 128
def leafA : ℚ := (1 : ℚ) / 8
def leafB : ℚ := (1 : ℚ) / 4
def lam : ℚ := (3471657440109699659204039683 : ℚ) / 79228162514264337593543950336

noncomputable def seedCore : ℚ[X] := qSeedCore
noncomputable def seedWeight0 : ℚ[X] := qSeedWeight0
noncomputable def seedWeight1 : ℚ[X] := qSeedWeight1
noncomputable def leafMap : ℚ[X] := affine leafA leafB
noncomputable def localCore : ℚ[X] := seedCore.comp leafMap
noncomputable def localWeight0 : ℚ[X] := seedWeight0.comp leafMap
noncomputable def localWeight1 : ℚ[X] := seedWeight1.comp leafMap

def gapCoeff0 : ℚ := (22915097440490794778006531 : ℚ) / 79228162514264337593543950336
def gapCoeff1 : ℚ := (646302633863094209753068571 : ℚ) / 79228162514264337593543950336
def gapCoeff2 : ℚ := (1578971626511650387491763227 : ℚ) / 19807040628566084398385987584
def gapCoeff3 : ℚ := (6665492387948897804350006335 : ℚ) / 19807040628566084398385987584
def gapCoeff4 : ℚ := (30544673030895037607085763773 : ℚ) / 39614081257132168796771975168
def gapCoeff5 : ℚ := (42067402286902413927337847997 : ℚ) / 39614081257132168796771975168
def gapCoeff6 : ℚ := (18026796224219538643865969727 : ℚ) / 19807040628566084398385987584
def gapCoeff7 : ℚ := (9459501135841323999868695579 : ℚ) / 19807040628566084398385987584
def gapCoeff8 : ℚ := (11171769284969757016056345627 : ℚ) / 79228162514264337593543950336
def gapCoeff9 : ℚ := (1426020007425357869133239299 : ℚ) / 79228162514264337593543950336

noncomputable def gapExpansion : ℚ[X] :=
  Polynomial.C gapCoeff0 * bernsteinMonomial 0 9 +
  Polynomial.C gapCoeff1 * bernsteinMonomial 1 8 +
  Polynomial.C gapCoeff2 * bernsteinMonomial 2 7 +
  Polynomial.C gapCoeff3 * bernsteinMonomial 3 6 +
  Polynomial.C gapCoeff4 * bernsteinMonomial 4 5 +
  Polynomial.C gapCoeff5 * bernsteinMonomial 5 4 +
  Polynomial.C gapCoeff6 * bernsteinMonomial 6 3 +
  Polynomial.C gapCoeff7 * bernsteinMonomial 7 2 +
  Polynomial.C gapCoeff8 * bernsteinMonomial 8 1 +
  Polynomial.C gapCoeff9 * bernsteinMonomial 9 0

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
    gapCoeff0, gapCoeff1, gapCoeff2, gapCoeff3, gapCoeff4, gapCoeff5, gapCoeff6, gapCoeff7, gapCoeff8, gapCoeff9,
    bernsteinMonomial, Polynomial.eval_comp, Polynomial.eval_add, Polynomial.eval_sub,
    Polynomial.eval_mul, Polynomial.eval_pow, Polynomial.eval_C, Polynomial.eval_X] <;> ring

theorem leafMap_eq_path : leafMap = ((halfLeft).comp halfLeft).comp halfRight := by
  apply Polynomial.funext
  intro x
  norm_num [leafMap, affine, leafA, leafB, halfLeft, halfRight,
    Polynomial.eval_comp, Polynomial.eval_add, Polynomial.eval_sub,
    Polynomial.eval_mul, Polynomial.eval_C, Polynomial.eval_X] <;> ring

theorem gapExpansion_cone : BernsteinCone gapExpansion := by
  have h0 : BernsteinCone (Polynomial.C gapCoeff0 * bernsteinMonomial 0 9) :=
    BernsteinCone.scale gapCoeff0 (by norm_num [gapCoeff0]) (BernsteinCone.basis 0 9)
  have h1 : BernsteinCone (Polynomial.C gapCoeff1 * bernsteinMonomial 1 8) :=
    BernsteinCone.scale gapCoeff1 (by norm_num [gapCoeff1]) (BernsteinCone.basis 1 8)
  have h2 : BernsteinCone (Polynomial.C gapCoeff2 * bernsteinMonomial 2 7) :=
    BernsteinCone.scale gapCoeff2 (by norm_num [gapCoeff2]) (BernsteinCone.basis 2 7)
  have h3 : BernsteinCone (Polynomial.C gapCoeff3 * bernsteinMonomial 3 6) :=
    BernsteinCone.scale gapCoeff3 (by norm_num [gapCoeff3]) (BernsteinCone.basis 3 6)
  have h4 : BernsteinCone (Polynomial.C gapCoeff4 * bernsteinMonomial 4 5) :=
    BernsteinCone.scale gapCoeff4 (by norm_num [gapCoeff4]) (BernsteinCone.basis 4 5)
  have h5 : BernsteinCone (Polynomial.C gapCoeff5 * bernsteinMonomial 5 4) :=
    BernsteinCone.scale gapCoeff5 (by norm_num [gapCoeff5]) (BernsteinCone.basis 5 4)
  have h6 : BernsteinCone (Polynomial.C gapCoeff6 * bernsteinMonomial 6 3) :=
    BernsteinCone.scale gapCoeff6 (by norm_num [gapCoeff6]) (BernsteinCone.basis 6 3)
  have h7 : BernsteinCone (Polynomial.C gapCoeff7 * bernsteinMonomial 7 2) :=
    BernsteinCone.scale gapCoeff7 (by norm_num [gapCoeff7]) (BernsteinCone.basis 7 2)
  have h8 : BernsteinCone (Polynomial.C gapCoeff8 * bernsteinMonomial 8 1) :=
    BernsteinCone.scale gapCoeff8 (by norm_num [gapCoeff8]) (BernsteinCone.basis 8 1)
  have h9 : BernsteinCone (Polynomial.C gapCoeff9 * bernsteinMonomial 9 0) :=
    BernsteinCone.scale gapCoeff9 (by norm_num [gapCoeff9]) (BernsteinCone.basis 9 0)
  exact BernsteinCone.add (BernsteinCone.add (BernsteinCone.add (BernsteinCone.add (BernsteinCone.add (BernsteinCone.add (BernsteinCone.add (BernsteinCone.add (BernsteinCone.add (h0) h1) h2) h3) h4) h5) h6) h7) h8) h9

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

end Math.B699.I11TwoFiveGrowth.QLeaf007

#print axioms Math.B699.I11TwoFiveGrowth.QLeaf007.actual_gap_eq
#print axioms Math.B699.I11TwoFiveGrowth.QLeaf007.leafMap_eq_path
#print axioms Math.B699.I11TwoFiveGrowth.QLeaf007.gapExpansion_cone
#print axioms Math.B699.I11TwoFiveGrowth.QLeaf007.local_gap_cone
#print axioms Math.B699.I11TwoFiveGrowth.QLeaf007.local_core_cone
#print axioms Math.B699.I11TwoFiveGrowth.QLeaf007.local_weight0_cone
#print axioms Math.B699.I11TwoFiveGrowth.QLeaf007.local_weight1_cone
#print axioms Math.B699.I11TwoFiveGrowth.QLeaf007.leaf_delta0
#print axioms Math.B699.I11TwoFiveGrowth.QLeaf007.leaf_delta1
namespace Math.B699.I11TwoFiveGrowth.QLeaf008


open Polynomial Math.B699.PadeMoment Math.B699.PadeGrowthPartition Math.B699.GrowthLeaf
open Math.B699.I11TwoFiveGrowth.Shared

local instance : Infinite ℚ :=
  Infinite.of_injective (fun n : ℕ => (n : ℚ)) Nat.cast_injective

def seedC : ℕ := 5
def seedD : ℕ := 4
def seedZ : ℚ := (3 : ℚ) / 128
def leafA : ℚ := (1 : ℚ) / 4
def leafB : ℚ := (1 : ℚ) / 2
def lam : ℚ := (3471657440109699659204039683 : ℚ) / 79228162514264337593543950336

noncomputable def seedCore : ℚ[X] := qSeedCore
noncomputable def seedWeight0 : ℚ[X] := qSeedWeight0
noncomputable def seedWeight1 : ℚ[X] := qSeedWeight1
noncomputable def leafMap : ℚ[X] := affine leafA leafB
noncomputable def localCore : ℚ[X] := seedCore.comp leafMap
noncomputable def localWeight0 : ℚ[X] := seedWeight0.comp leafMap
noncomputable def localWeight1 : ℚ[X] := seedWeight1.comp leafMap

def gapCoeff0 : ℚ := (1426020007425357869133239299 : ℚ) / 79228162514264337593543950336
def gapCoeff1 : ℚ := (16159001630545148434484769819 : ℚ) / 79228162514264337593543950336
def gapCoeff2 : ℚ := (19284393725182199206591018011 : ℚ) / 19807040628566084398385987584
def gapCoeff3 : ℚ := (51294139920903434613489804351 : ℚ) / 19807040628566084398385987584
def gapCoeff4 : ℚ := (169391780424621979115199556797 : ℚ) / 39614081257132168796771975168
def gapCoeff5 : ℚ := (181704202410425444912463768765 : ℚ) / 39614081257132168796771975168
def gapCoeff6 : ℚ := (63749208019404364924587746367 : ℚ) / 19807040628566084398385987584
def gapCoeff7 : ℚ := (28359057412144175455383794715 : ℚ) / 19807040628566084398385987584
def gapCoeff8 : ℚ := (29138372620574590784617788443 : ℚ) / 79228162514264337593543950336
def gapCoeff9 : ℚ := (3301889794096740873958495235 : ℚ) / 79228162514264337593543950336

noncomputable def gapExpansion : ℚ[X] :=
  Polynomial.C gapCoeff0 * bernsteinMonomial 0 9 +
  Polynomial.C gapCoeff1 * bernsteinMonomial 1 8 +
  Polynomial.C gapCoeff2 * bernsteinMonomial 2 7 +
  Polynomial.C gapCoeff3 * bernsteinMonomial 3 6 +
  Polynomial.C gapCoeff4 * bernsteinMonomial 4 5 +
  Polynomial.C gapCoeff5 * bernsteinMonomial 5 4 +
  Polynomial.C gapCoeff6 * bernsteinMonomial 6 3 +
  Polynomial.C gapCoeff7 * bernsteinMonomial 7 2 +
  Polynomial.C gapCoeff8 * bernsteinMonomial 8 1 +
  Polynomial.C gapCoeff9 * bernsteinMonomial 9 0

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
    gapCoeff0, gapCoeff1, gapCoeff2, gapCoeff3, gapCoeff4, gapCoeff5, gapCoeff6, gapCoeff7, gapCoeff8, gapCoeff9,
    bernsteinMonomial, Polynomial.eval_comp, Polynomial.eval_add, Polynomial.eval_sub,
    Polynomial.eval_mul, Polynomial.eval_pow, Polynomial.eval_C, Polynomial.eval_X] <;> ring

theorem leafMap_eq_path : leafMap = (halfLeft).comp halfRight := by
  apply Polynomial.funext
  intro x
  norm_num [leafMap, affine, leafA, leafB, halfLeft, halfRight,
    Polynomial.eval_comp, Polynomial.eval_add, Polynomial.eval_sub,
    Polynomial.eval_mul, Polynomial.eval_C, Polynomial.eval_X] <;> ring

theorem gapExpansion_cone : BernsteinCone gapExpansion := by
  have h0 : BernsteinCone (Polynomial.C gapCoeff0 * bernsteinMonomial 0 9) :=
    BernsteinCone.scale gapCoeff0 (by norm_num [gapCoeff0]) (BernsteinCone.basis 0 9)
  have h1 : BernsteinCone (Polynomial.C gapCoeff1 * bernsteinMonomial 1 8) :=
    BernsteinCone.scale gapCoeff1 (by norm_num [gapCoeff1]) (BernsteinCone.basis 1 8)
  have h2 : BernsteinCone (Polynomial.C gapCoeff2 * bernsteinMonomial 2 7) :=
    BernsteinCone.scale gapCoeff2 (by norm_num [gapCoeff2]) (BernsteinCone.basis 2 7)
  have h3 : BernsteinCone (Polynomial.C gapCoeff3 * bernsteinMonomial 3 6) :=
    BernsteinCone.scale gapCoeff3 (by norm_num [gapCoeff3]) (BernsteinCone.basis 3 6)
  have h4 : BernsteinCone (Polynomial.C gapCoeff4 * bernsteinMonomial 4 5) :=
    BernsteinCone.scale gapCoeff4 (by norm_num [gapCoeff4]) (BernsteinCone.basis 4 5)
  have h5 : BernsteinCone (Polynomial.C gapCoeff5 * bernsteinMonomial 5 4) :=
    BernsteinCone.scale gapCoeff5 (by norm_num [gapCoeff5]) (BernsteinCone.basis 5 4)
  have h6 : BernsteinCone (Polynomial.C gapCoeff6 * bernsteinMonomial 6 3) :=
    BernsteinCone.scale gapCoeff6 (by norm_num [gapCoeff6]) (BernsteinCone.basis 6 3)
  have h7 : BernsteinCone (Polynomial.C gapCoeff7 * bernsteinMonomial 7 2) :=
    BernsteinCone.scale gapCoeff7 (by norm_num [gapCoeff7]) (BernsteinCone.basis 7 2)
  have h8 : BernsteinCone (Polynomial.C gapCoeff8 * bernsteinMonomial 8 1) :=
    BernsteinCone.scale gapCoeff8 (by norm_num [gapCoeff8]) (BernsteinCone.basis 8 1)
  have h9 : BernsteinCone (Polynomial.C gapCoeff9 * bernsteinMonomial 9 0) :=
    BernsteinCone.scale gapCoeff9 (by norm_num [gapCoeff9]) (BernsteinCone.basis 9 0)
  exact BernsteinCone.add (BernsteinCone.add (BernsteinCone.add (BernsteinCone.add (BernsteinCone.add (BernsteinCone.add (BernsteinCone.add (BernsteinCone.add (BernsteinCone.add (h0) h1) h2) h3) h4) h5) h6) h7) h8) h9

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

end Math.B699.I11TwoFiveGrowth.QLeaf008

#print axioms Math.B699.I11TwoFiveGrowth.QLeaf008.actual_gap_eq
#print axioms Math.B699.I11TwoFiveGrowth.QLeaf008.leafMap_eq_path
#print axioms Math.B699.I11TwoFiveGrowth.QLeaf008.gapExpansion_cone
#print axioms Math.B699.I11TwoFiveGrowth.QLeaf008.local_gap_cone
#print axioms Math.B699.I11TwoFiveGrowth.QLeaf008.local_core_cone
#print axioms Math.B699.I11TwoFiveGrowth.QLeaf008.local_weight0_cone
#print axioms Math.B699.I11TwoFiveGrowth.QLeaf008.local_weight1_cone
#print axioms Math.B699.I11TwoFiveGrowth.QLeaf008.leaf_delta0
#print axioms Math.B699.I11TwoFiveGrowth.QLeaf008.leaf_delta1
namespace Math.B699.I11TwoFiveGrowth.QLeaf009


open Polynomial Math.B699.PadeMoment Math.B699.PadeGrowthPartition Math.B699.GrowthLeaf
open Math.B699.I11TwoFiveGrowth.Shared

local instance : Infinite ℚ :=
  Infinite.of_injective (fun n : ℕ => (n : ℚ)) Nat.cast_injective

def seedC : ℕ := 5
def seedD : ℕ := 4
def seedZ : ℚ := (3 : ℚ) / 128
def leafA : ℚ := (1 : ℚ) / 2
def leafB : ℚ := (1 : ℚ)
def lam : ℚ := (3471657440109699659204039683 : ℚ) / 79228162514264337593543950336

noncomputable def seedCore : ℚ[X] := qSeedCore
noncomputable def seedWeight0 : ℚ[X] := qSeedWeight0
noncomputable def seedWeight1 : ℚ[X] := qSeedWeight1
noncomputable def leafMap : ℚ[X] := affine leafA leafB
noncomputable def localCore : ℚ[X] := seedCore.comp leafMap
noncomputable def localWeight0 : ℚ[X] := seedWeight0.comp leafMap
noncomputable def localWeight1 : ℚ[X] := seedWeight1.comp leafMap

def gapCoeff0 : ℚ := (3301889794096740873958495235 : ℚ) / 79228162514264337593543950336
def gapCoeff1 : ℚ := (30874279199462822027643794459 : ℚ) / 79228162514264337593543950336
def gapCoeff2 : ℚ := (31228831523517623196759831579 : ℚ) / 19807040628566084398385987584
def gapCoeff3 : ℚ := (72903721525329455528162239551 : ℚ) / 19807040628566084398385987584
def gapCoeff4 : ℚ := (218714353107230722326552014013 : ℚ) / 39614081257132168796771975168
def gapCoeff5 : ℚ := (218714417979817943544617659581 : ℚ) / 39614081257132168796771975168
def gapCoeff6 : ℚ := (72904806242303692843284833343 : ℚ) / 19807040628566084398385987584
def gapCoeff7 : ℚ := (31244916960987296932836357147 : ℚ) / 19807040628566084398385987584
def gapCoeff8 : ℚ := (31244916960987296932836357147 : ℚ) / 79228162514264337593543950336
def gapCoeff9 : ℚ := (3471657440109699659204039683 : ℚ) / 79228162514264337593543950336

noncomputable def gapExpansion : ℚ[X] :=
  Polynomial.C gapCoeff0 * bernsteinMonomial 0 9 +
  Polynomial.C gapCoeff1 * bernsteinMonomial 1 8 +
  Polynomial.C gapCoeff2 * bernsteinMonomial 2 7 +
  Polynomial.C gapCoeff3 * bernsteinMonomial 3 6 +
  Polynomial.C gapCoeff4 * bernsteinMonomial 4 5 +
  Polynomial.C gapCoeff5 * bernsteinMonomial 5 4 +
  Polynomial.C gapCoeff6 * bernsteinMonomial 6 3 +
  Polynomial.C gapCoeff7 * bernsteinMonomial 7 2 +
  Polynomial.C gapCoeff8 * bernsteinMonomial 8 1 +
  Polynomial.C gapCoeff9 * bernsteinMonomial 9 0

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
    gapCoeff0, gapCoeff1, gapCoeff2, gapCoeff3, gapCoeff4, gapCoeff5, gapCoeff6, gapCoeff7, gapCoeff8, gapCoeff9,
    bernsteinMonomial, Polynomial.eval_comp, Polynomial.eval_add, Polynomial.eval_sub,
    Polynomial.eval_mul, Polynomial.eval_pow, Polynomial.eval_C, Polynomial.eval_X] <;> ring

theorem leafMap_eq_path : leafMap = halfRight := by
  apply Polynomial.funext
  intro x
  norm_num [leafMap, affine, leafA, leafB, halfLeft, halfRight,
    Polynomial.eval_comp, Polynomial.eval_add, Polynomial.eval_sub,
    Polynomial.eval_mul, Polynomial.eval_C, Polynomial.eval_X] <;> ring

theorem gapExpansion_cone : BernsteinCone gapExpansion := by
  have h0 : BernsteinCone (Polynomial.C gapCoeff0 * bernsteinMonomial 0 9) :=
    BernsteinCone.scale gapCoeff0 (by norm_num [gapCoeff0]) (BernsteinCone.basis 0 9)
  have h1 : BernsteinCone (Polynomial.C gapCoeff1 * bernsteinMonomial 1 8) :=
    BernsteinCone.scale gapCoeff1 (by norm_num [gapCoeff1]) (BernsteinCone.basis 1 8)
  have h2 : BernsteinCone (Polynomial.C gapCoeff2 * bernsteinMonomial 2 7) :=
    BernsteinCone.scale gapCoeff2 (by norm_num [gapCoeff2]) (BernsteinCone.basis 2 7)
  have h3 : BernsteinCone (Polynomial.C gapCoeff3 * bernsteinMonomial 3 6) :=
    BernsteinCone.scale gapCoeff3 (by norm_num [gapCoeff3]) (BernsteinCone.basis 3 6)
  have h4 : BernsteinCone (Polynomial.C gapCoeff4 * bernsteinMonomial 4 5) :=
    BernsteinCone.scale gapCoeff4 (by norm_num [gapCoeff4]) (BernsteinCone.basis 4 5)
  have h5 : BernsteinCone (Polynomial.C gapCoeff5 * bernsteinMonomial 5 4) :=
    BernsteinCone.scale gapCoeff5 (by norm_num [gapCoeff5]) (BernsteinCone.basis 5 4)
  have h6 : BernsteinCone (Polynomial.C gapCoeff6 * bernsteinMonomial 6 3) :=
    BernsteinCone.scale gapCoeff6 (by norm_num [gapCoeff6]) (BernsteinCone.basis 6 3)
  have h7 : BernsteinCone (Polynomial.C gapCoeff7 * bernsteinMonomial 7 2) :=
    BernsteinCone.scale gapCoeff7 (by norm_num [gapCoeff7]) (BernsteinCone.basis 7 2)
  have h8 : BernsteinCone (Polynomial.C gapCoeff8 * bernsteinMonomial 8 1) :=
    BernsteinCone.scale gapCoeff8 (by norm_num [gapCoeff8]) (BernsteinCone.basis 8 1)
  have h9 : BernsteinCone (Polynomial.C gapCoeff9 * bernsteinMonomial 9 0) :=
    BernsteinCone.scale gapCoeff9 (by norm_num [gapCoeff9]) (BernsteinCone.basis 9 0)
  exact BernsteinCone.add (BernsteinCone.add (BernsteinCone.add (BernsteinCone.add (BernsteinCone.add (BernsteinCone.add (BernsteinCone.add (BernsteinCone.add (BernsteinCone.add (h0) h1) h2) h3) h4) h5) h6) h7) h8) h9

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

end Math.B699.I11TwoFiveGrowth.QLeaf009

#print axioms Math.B699.I11TwoFiveGrowth.QLeaf009.actual_gap_eq
#print axioms Math.B699.I11TwoFiveGrowth.QLeaf009.leafMap_eq_path
#print axioms Math.B699.I11TwoFiveGrowth.QLeaf009.gapExpansion_cone
#print axioms Math.B699.I11TwoFiveGrowth.QLeaf009.local_gap_cone
#print axioms Math.B699.I11TwoFiveGrowth.QLeaf009.local_core_cone
#print axioms Math.B699.I11TwoFiveGrowth.QLeaf009.local_weight0_cone
#print axioms Math.B699.I11TwoFiveGrowth.QLeaf009.local_weight1_cone
#print axioms Math.B699.I11TwoFiveGrowth.QLeaf009.leaf_delta0
#print axioms Math.B699.I11TwoFiveGrowth.QLeaf009.leaf_delta1
namespace Math.B699.I11TwoFiveGrowth.ELeaf000


open Polynomial Math.B699.PadeMoment Math.B699.PadeGrowthPartition Math.B699.GrowthLeaf
open Math.B699.I11TwoFiveGrowth.Shared

local instance : Infinite ℚ :=
  Infinite.of_injective (fun n : ℕ => (n : ℚ)) Nat.cast_injective

def seedC : ℕ := 5
def seedD : ℕ := 4
def seedZ : ℚ := (3 : ℚ) / 128
def leafA : ℚ := (0 : ℚ)
def leafB : ℚ := (1 : ℚ) / 4
def lam : ℚ := (305863978762465520211566521 : ℚ) / 79228162514264337593543950336

noncomputable def seedCore : ℚ[X] := eSeedCore
noncomputable def seedWeight0 : ℚ[X] := eSeedWeight0
noncomputable def seedWeight1 : ℚ[X] := eSeedWeight1
noncomputable def leafMap : ℚ[X] := affine leafA leafB
noncomputable def localCore : ℚ[X] := seedCore.comp leafMap
noncomputable def localWeight0 : ℚ[X] := seedWeight0.comp leafMap
noncomputable def localWeight1 : ℚ[X] := seedWeight1.comp leafMap

def gapCoeff0 : ℚ := (305863978762465520211566521 : ℚ) / 79228162514264337593543950336
def gapCoeff1 : ℚ := (2752775808862189681904098689 : ℚ) / 79228162514264337593543950336
def gapCoeff2 : ℚ := (2752775808862189681904098689 : ℚ) / 19807040628566084398385987584
def gapCoeff3 : ℚ := (6423143554011775924442896941 : ℚ) / 19807040628566084398385987584
def gapCoeff4 : ℚ := (19114688157124655238966300295 : ℚ) / 39614081257132168796771975168
def gapCoeff5 : ℚ := (18651367336757348607760158343 : ℚ) / 39614081257132168796771975168
def gapCoeff6 : ℚ := (5931261861156073678984321581 : ℚ) / 19807040628566084398385987584
def gapCoeff7 : ℚ := (2362613890047499594348535169 : ℚ) / 19807040628566084398385987584
def gapCoeff8 : ℚ := (2135656956880784445378305409 : ℚ) / 79228162514264337593543950336
def gapCoeff9 : ℚ := (208514754901349218953830329 : ℚ) / 79228162514264337593543950336

noncomputable def gapExpansion : ℚ[X] :=
  Polynomial.C gapCoeff0 * bernsteinMonomial 0 9 +
  Polynomial.C gapCoeff1 * bernsteinMonomial 1 8 +
  Polynomial.C gapCoeff2 * bernsteinMonomial 2 7 +
  Polynomial.C gapCoeff3 * bernsteinMonomial 3 6 +
  Polynomial.C gapCoeff4 * bernsteinMonomial 4 5 +
  Polynomial.C gapCoeff5 * bernsteinMonomial 5 4 +
  Polynomial.C gapCoeff6 * bernsteinMonomial 6 3 +
  Polynomial.C gapCoeff7 * bernsteinMonomial 7 2 +
  Polynomial.C gapCoeff8 * bernsteinMonomial 8 1 +
  Polynomial.C gapCoeff9 * bernsteinMonomial 9 0

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
    gapCoeff0, gapCoeff1, gapCoeff2, gapCoeff3, gapCoeff4, gapCoeff5, gapCoeff6, gapCoeff7, gapCoeff8, gapCoeff9,
    bernsteinMonomial, Polynomial.eval_comp, Polynomial.eval_add, Polynomial.eval_sub,
    Polynomial.eval_mul, Polynomial.eval_pow, Polynomial.eval_C, Polynomial.eval_X] <;> ring

theorem leafMap_eq_path : leafMap = (halfLeft).comp halfLeft := by
  apply Polynomial.funext
  intro x
  norm_num [leafMap, affine, leafA, leafB, halfLeft, halfRight,
    Polynomial.eval_comp, Polynomial.eval_add, Polynomial.eval_sub,
    Polynomial.eval_mul, Polynomial.eval_C, Polynomial.eval_X] <;> ring

theorem gapExpansion_cone : BernsteinCone gapExpansion := by
  have h0 : BernsteinCone (Polynomial.C gapCoeff0 * bernsteinMonomial 0 9) :=
    BernsteinCone.scale gapCoeff0 (by norm_num [gapCoeff0]) (BernsteinCone.basis 0 9)
  have h1 : BernsteinCone (Polynomial.C gapCoeff1 * bernsteinMonomial 1 8) :=
    BernsteinCone.scale gapCoeff1 (by norm_num [gapCoeff1]) (BernsteinCone.basis 1 8)
  have h2 : BernsteinCone (Polynomial.C gapCoeff2 * bernsteinMonomial 2 7) :=
    BernsteinCone.scale gapCoeff2 (by norm_num [gapCoeff2]) (BernsteinCone.basis 2 7)
  have h3 : BernsteinCone (Polynomial.C gapCoeff3 * bernsteinMonomial 3 6) :=
    BernsteinCone.scale gapCoeff3 (by norm_num [gapCoeff3]) (BernsteinCone.basis 3 6)
  have h4 : BernsteinCone (Polynomial.C gapCoeff4 * bernsteinMonomial 4 5) :=
    BernsteinCone.scale gapCoeff4 (by norm_num [gapCoeff4]) (BernsteinCone.basis 4 5)
  have h5 : BernsteinCone (Polynomial.C gapCoeff5 * bernsteinMonomial 5 4) :=
    BernsteinCone.scale gapCoeff5 (by norm_num [gapCoeff5]) (BernsteinCone.basis 5 4)
  have h6 : BernsteinCone (Polynomial.C gapCoeff6 * bernsteinMonomial 6 3) :=
    BernsteinCone.scale gapCoeff6 (by norm_num [gapCoeff6]) (BernsteinCone.basis 6 3)
  have h7 : BernsteinCone (Polynomial.C gapCoeff7 * bernsteinMonomial 7 2) :=
    BernsteinCone.scale gapCoeff7 (by norm_num [gapCoeff7]) (BernsteinCone.basis 7 2)
  have h8 : BernsteinCone (Polynomial.C gapCoeff8 * bernsteinMonomial 8 1) :=
    BernsteinCone.scale gapCoeff8 (by norm_num [gapCoeff8]) (BernsteinCone.basis 8 1)
  have h9 : BernsteinCone (Polynomial.C gapCoeff9 * bernsteinMonomial 9 0) :=
    BernsteinCone.scale gapCoeff9 (by norm_num [gapCoeff9]) (BernsteinCone.basis 9 0)
  exact BernsteinCone.add (BernsteinCone.add (BernsteinCone.add (BernsteinCone.add (BernsteinCone.add (BernsteinCone.add (BernsteinCone.add (BernsteinCone.add (BernsteinCone.add (h0) h1) h2) h3) h4) h5) h6) h7) h8) h9

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

end Math.B699.I11TwoFiveGrowth.ELeaf000

#print axioms Math.B699.I11TwoFiveGrowth.ELeaf000.actual_gap_eq
#print axioms Math.B699.I11TwoFiveGrowth.ELeaf000.leafMap_eq_path
#print axioms Math.B699.I11TwoFiveGrowth.ELeaf000.gapExpansion_cone
#print axioms Math.B699.I11TwoFiveGrowth.ELeaf000.local_gap_cone
#print axioms Math.B699.I11TwoFiveGrowth.ELeaf000.local_core_cone
#print axioms Math.B699.I11TwoFiveGrowth.ELeaf000.local_weight0_cone
#print axioms Math.B699.I11TwoFiveGrowth.ELeaf000.local_weight1_cone
#print axioms Math.B699.I11TwoFiveGrowth.ELeaf000.leaf_delta0
#print axioms Math.B699.I11TwoFiveGrowth.ELeaf000.leaf_delta1
namespace Math.B699.I11TwoFiveGrowth.ELeaf001


open Polynomial Math.B699.PadeMoment Math.B699.PadeGrowthPartition Math.B699.GrowthLeaf
open Math.B699.I11TwoFiveGrowth.Shared

local instance : Infinite ℚ :=
  Infinite.of_injective (fun n : ℕ => (n : ℚ)) Nat.cast_injective

def seedC : ℕ := 5
def seedD : ℕ := 4
def seedZ : ℚ := (3 : ℚ) / 128
def leafA : ℚ := (1 : ℚ) / 4
def leafB : ℚ := (3 : ℚ) / 8
def lam : ℚ := (305863978762465520211566521 : ℚ) / 79228162514264337593543950336

noncomputable def seedCore : ℚ[X] := eSeedCore
noncomputable def seedWeight0 : ℚ[X] := eSeedWeight0
noncomputable def seedWeight1 : ℚ[X] := eSeedWeight1
noncomputable def leafMap : ℚ[X] := affine leafA leafB
noncomputable def localCore : ℚ[X] := seedCore.comp leafMap
noncomputable def localWeight0 : ℚ[X] := seedWeight0.comp leafMap
noncomputable def localWeight1 : ℚ[X] := seedWeight1.comp leafMap

def gapCoeff0 : ℚ := (208514754901349218953830329 : ℚ) / 79228162514264337593543950336
def gapCoeff1 : ℚ := (1747120712727822233187556737 : ℚ) / 79228162514264337593543950336
def gapCoeff2 : ℚ := (1609591823943019914334739841 : ℚ) / 19807040628566084398385987584
def gapCoeff3 : ℚ := (3420638446927125611290434093 : ℚ) / 19807040628566084398385987584
def gapCoeff4 : ℚ := (9230507852050347902716759687 : ℚ) / 39614081257132168796771975168
def gapCoeff5 : ℚ := (8191258799987537630846668423 : ℚ) / 39614081257132168796771975168
def gapCoeff6 : ℚ := (2387858335969571952400144941 : ℚ) / 19807040628566084398385987584
def gapCoeff7 : ℚ := (880996216917927547898338689 : ℚ) / 19807040628566084398385987584
def gapCoeff8 : ℚ := (745741230604975294908898689 : ℚ) / 79228162514264337593543950336
def gapCoeff9 : ℚ := (68895375009335709881966521 : ℚ) / 79228162514264337593543950336

noncomputable def gapExpansion : ℚ[X] :=
  Polynomial.C gapCoeff0 * bernsteinMonomial 0 9 +
  Polynomial.C gapCoeff1 * bernsteinMonomial 1 8 +
  Polynomial.C gapCoeff2 * bernsteinMonomial 2 7 +
  Polynomial.C gapCoeff3 * bernsteinMonomial 3 6 +
  Polynomial.C gapCoeff4 * bernsteinMonomial 4 5 +
  Polynomial.C gapCoeff5 * bernsteinMonomial 5 4 +
  Polynomial.C gapCoeff6 * bernsteinMonomial 6 3 +
  Polynomial.C gapCoeff7 * bernsteinMonomial 7 2 +
  Polynomial.C gapCoeff8 * bernsteinMonomial 8 1 +
  Polynomial.C gapCoeff9 * bernsteinMonomial 9 0

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
    gapCoeff0, gapCoeff1, gapCoeff2, gapCoeff3, gapCoeff4, gapCoeff5, gapCoeff6, gapCoeff7, gapCoeff8, gapCoeff9,
    bernsteinMonomial, Polynomial.eval_comp, Polynomial.eval_add, Polynomial.eval_sub,
    Polynomial.eval_mul, Polynomial.eval_pow, Polynomial.eval_C, Polynomial.eval_X] <;> ring

theorem leafMap_eq_path : leafMap = ((halfLeft).comp halfRight).comp halfLeft := by
  apply Polynomial.funext
  intro x
  norm_num [leafMap, affine, leafA, leafB, halfLeft, halfRight,
    Polynomial.eval_comp, Polynomial.eval_add, Polynomial.eval_sub,
    Polynomial.eval_mul, Polynomial.eval_C, Polynomial.eval_X] <;> ring

theorem gapExpansion_cone : BernsteinCone gapExpansion := by
  have h0 : BernsteinCone (Polynomial.C gapCoeff0 * bernsteinMonomial 0 9) :=
    BernsteinCone.scale gapCoeff0 (by norm_num [gapCoeff0]) (BernsteinCone.basis 0 9)
  have h1 : BernsteinCone (Polynomial.C gapCoeff1 * bernsteinMonomial 1 8) :=
    BernsteinCone.scale gapCoeff1 (by norm_num [gapCoeff1]) (BernsteinCone.basis 1 8)
  have h2 : BernsteinCone (Polynomial.C gapCoeff2 * bernsteinMonomial 2 7) :=
    BernsteinCone.scale gapCoeff2 (by norm_num [gapCoeff2]) (BernsteinCone.basis 2 7)
  have h3 : BernsteinCone (Polynomial.C gapCoeff3 * bernsteinMonomial 3 6) :=
    BernsteinCone.scale gapCoeff3 (by norm_num [gapCoeff3]) (BernsteinCone.basis 3 6)
  have h4 : BernsteinCone (Polynomial.C gapCoeff4 * bernsteinMonomial 4 5) :=
    BernsteinCone.scale gapCoeff4 (by norm_num [gapCoeff4]) (BernsteinCone.basis 4 5)
  have h5 : BernsteinCone (Polynomial.C gapCoeff5 * bernsteinMonomial 5 4) :=
    BernsteinCone.scale gapCoeff5 (by norm_num [gapCoeff5]) (BernsteinCone.basis 5 4)
  have h6 : BernsteinCone (Polynomial.C gapCoeff6 * bernsteinMonomial 6 3) :=
    BernsteinCone.scale gapCoeff6 (by norm_num [gapCoeff6]) (BernsteinCone.basis 6 3)
  have h7 : BernsteinCone (Polynomial.C gapCoeff7 * bernsteinMonomial 7 2) :=
    BernsteinCone.scale gapCoeff7 (by norm_num [gapCoeff7]) (BernsteinCone.basis 7 2)
  have h8 : BernsteinCone (Polynomial.C gapCoeff8 * bernsteinMonomial 8 1) :=
    BernsteinCone.scale gapCoeff8 (by norm_num [gapCoeff8]) (BernsteinCone.basis 8 1)
  have h9 : BernsteinCone (Polynomial.C gapCoeff9 * bernsteinMonomial 9 0) :=
    BernsteinCone.scale gapCoeff9 (by norm_num [gapCoeff9]) (BernsteinCone.basis 9 0)
  exact BernsteinCone.add (BernsteinCone.add (BernsteinCone.add (BernsteinCone.add (BernsteinCone.add (BernsteinCone.add (BernsteinCone.add (BernsteinCone.add (BernsteinCone.add (h0) h1) h2) h3) h4) h5) h6) h7) h8) h9

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

end Math.B699.I11TwoFiveGrowth.ELeaf001

#print axioms Math.B699.I11TwoFiveGrowth.ELeaf001.actual_gap_eq
#print axioms Math.B699.I11TwoFiveGrowth.ELeaf001.leafMap_eq_path
#print axioms Math.B699.I11TwoFiveGrowth.ELeaf001.gapExpansion_cone
#print axioms Math.B699.I11TwoFiveGrowth.ELeaf001.local_gap_cone
#print axioms Math.B699.I11TwoFiveGrowth.ELeaf001.local_core_cone
#print axioms Math.B699.I11TwoFiveGrowth.ELeaf001.local_weight0_cone
#print axioms Math.B699.I11TwoFiveGrowth.ELeaf001.local_weight1_cone
#print axioms Math.B699.I11TwoFiveGrowth.ELeaf001.leaf_delta0
#print axioms Math.B699.I11TwoFiveGrowth.ELeaf001.leaf_delta1
namespace Math.B699.I11TwoFiveGrowth.ELeaf002


open Polynomial Math.B699.PadeMoment Math.B699.PadeGrowthPartition Math.B699.GrowthLeaf
open Math.B699.I11TwoFiveGrowth.Shared

local instance : Infinite ℚ :=
  Infinite.of_injective (fun n : ℕ => (n : ℚ)) Nat.cast_injective

def seedC : ℕ := 5
def seedD : ℕ := 4
def seedZ : ℚ := (3 : ℚ) / 128
def leafA : ℚ := (3 : ℚ) / 8
def leafB : ℚ := (7 : ℚ) / 16
def lam : ℚ := (305863978762465520211566521 : ℚ) / 79228162514264337593543950336

noncomputable def seedCore : ℚ[X] := eSeedCore
noncomputable def seedWeight0 : ℚ[X] := eSeedWeight0
noncomputable def seedWeight1 : ℚ[X] := eSeedWeight1
noncomputable def leafMap : ℚ[X] := affine leafA leafB
noncomputable def localCore : ℚ[X] := seedCore.comp leafMap
noncomputable def localWeight0 : ℚ[X] := seedWeight0.comp leafMap
noncomputable def localWeight1 : ℚ[X] := seedWeight1.comp leafMap

def gapCoeff0 : ℚ := (68895375009335709881966521 : ℚ) / 79228162514264337593543950336
def gapCoeff1 : ℚ := (557216947323544435952098689 : ℚ) / 79228162514264337593543950336
def gapCoeff2 : ℚ := (496768552261067069721058689 : ℚ) / 19807040628566084398385987584
def gapCoeff3 : ℚ := (1024380290185851309659920941 : ℚ) / 19807040628566084398385987584
def gapCoeff4 : ℚ := (2689853564708647814160076423 : ℚ) / 39614081257132168796771975168
def gapCoeff5 : ℚ := (2329449395739899264253185671 : ℚ) / 39614081257132168796771975168
def gapCoeff6 : ℚ := (664572505822100076277406253 : ℚ) / 19807040628566084398385987584
def gapCoeff7 : ℚ := (240612214469371092374297985 : ℚ) / 19807040628566084398385987584
def gapCoeff8 : ℚ := (200371850660411323065998721 : ℚ) / 79228162514264337593543950336
def gapCoeff9 : ℚ := (18252830022500270430855097 : ℚ) / 79228162514264337593543950336

noncomputable def gapExpansion : ℚ[X] :=
  Polynomial.C gapCoeff0 * bernsteinMonomial 0 9 +
  Polynomial.C gapCoeff1 * bernsteinMonomial 1 8 +
  Polynomial.C gapCoeff2 * bernsteinMonomial 2 7 +
  Polynomial.C gapCoeff3 * bernsteinMonomial 3 6 +
  Polynomial.C gapCoeff4 * bernsteinMonomial 4 5 +
  Polynomial.C gapCoeff5 * bernsteinMonomial 5 4 +
  Polynomial.C gapCoeff6 * bernsteinMonomial 6 3 +
  Polynomial.C gapCoeff7 * bernsteinMonomial 7 2 +
  Polynomial.C gapCoeff8 * bernsteinMonomial 8 1 +
  Polynomial.C gapCoeff9 * bernsteinMonomial 9 0

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
    gapCoeff0, gapCoeff1, gapCoeff2, gapCoeff3, gapCoeff4, gapCoeff5, gapCoeff6, gapCoeff7, gapCoeff8, gapCoeff9,
    bernsteinMonomial, Polynomial.eval_comp, Polynomial.eval_add, Polynomial.eval_sub,
    Polynomial.eval_mul, Polynomial.eval_pow, Polynomial.eval_C, Polynomial.eval_X] <;> ring

theorem leafMap_eq_path : leafMap = (((halfLeft).comp halfRight).comp halfRight).comp halfLeft := by
  apply Polynomial.funext
  intro x
  norm_num [leafMap, affine, leafA, leafB, halfLeft, halfRight,
    Polynomial.eval_comp, Polynomial.eval_add, Polynomial.eval_sub,
    Polynomial.eval_mul, Polynomial.eval_C, Polynomial.eval_X] <;> ring

theorem gapExpansion_cone : BernsteinCone gapExpansion := by
  have h0 : BernsteinCone (Polynomial.C gapCoeff0 * bernsteinMonomial 0 9) :=
    BernsteinCone.scale gapCoeff0 (by norm_num [gapCoeff0]) (BernsteinCone.basis 0 9)
  have h1 : BernsteinCone (Polynomial.C gapCoeff1 * bernsteinMonomial 1 8) :=
    BernsteinCone.scale gapCoeff1 (by norm_num [gapCoeff1]) (BernsteinCone.basis 1 8)
  have h2 : BernsteinCone (Polynomial.C gapCoeff2 * bernsteinMonomial 2 7) :=
    BernsteinCone.scale gapCoeff2 (by norm_num [gapCoeff2]) (BernsteinCone.basis 2 7)
  have h3 : BernsteinCone (Polynomial.C gapCoeff3 * bernsteinMonomial 3 6) :=
    BernsteinCone.scale gapCoeff3 (by norm_num [gapCoeff3]) (BernsteinCone.basis 3 6)
  have h4 : BernsteinCone (Polynomial.C gapCoeff4 * bernsteinMonomial 4 5) :=
    BernsteinCone.scale gapCoeff4 (by norm_num [gapCoeff4]) (BernsteinCone.basis 4 5)
  have h5 : BernsteinCone (Polynomial.C gapCoeff5 * bernsteinMonomial 5 4) :=
    BernsteinCone.scale gapCoeff5 (by norm_num [gapCoeff5]) (BernsteinCone.basis 5 4)
  have h6 : BernsteinCone (Polynomial.C gapCoeff6 * bernsteinMonomial 6 3) :=
    BernsteinCone.scale gapCoeff6 (by norm_num [gapCoeff6]) (BernsteinCone.basis 6 3)
  have h7 : BernsteinCone (Polynomial.C gapCoeff7 * bernsteinMonomial 7 2) :=
    BernsteinCone.scale gapCoeff7 (by norm_num [gapCoeff7]) (BernsteinCone.basis 7 2)
  have h8 : BernsteinCone (Polynomial.C gapCoeff8 * bernsteinMonomial 8 1) :=
    BernsteinCone.scale gapCoeff8 (by norm_num [gapCoeff8]) (BernsteinCone.basis 8 1)
  have h9 : BernsteinCone (Polynomial.C gapCoeff9 * bernsteinMonomial 9 0) :=
    BernsteinCone.scale gapCoeff9 (by norm_num [gapCoeff9]) (BernsteinCone.basis 9 0)
  exact BernsteinCone.add (BernsteinCone.add (BernsteinCone.add (BernsteinCone.add (BernsteinCone.add (BernsteinCone.add (BernsteinCone.add (BernsteinCone.add (BernsteinCone.add (h0) h1) h2) h3) h4) h5) h6) h7) h8) h9

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

end Math.B699.I11TwoFiveGrowth.ELeaf002

#print axioms Math.B699.I11TwoFiveGrowth.ELeaf002.actual_gap_eq
#print axioms Math.B699.I11TwoFiveGrowth.ELeaf002.leafMap_eq_path
#print axioms Math.B699.I11TwoFiveGrowth.ELeaf002.gapExpansion_cone
#print axioms Math.B699.I11TwoFiveGrowth.ELeaf002.local_gap_cone
#print axioms Math.B699.I11TwoFiveGrowth.ELeaf002.local_core_cone
#print axioms Math.B699.I11TwoFiveGrowth.ELeaf002.local_weight0_cone
#print axioms Math.B699.I11TwoFiveGrowth.ELeaf002.local_weight1_cone
#print axioms Math.B699.I11TwoFiveGrowth.ELeaf002.leaf_delta0
#print axioms Math.B699.I11TwoFiveGrowth.ELeaf002.leaf_delta1
namespace Math.B699.I11TwoFiveGrowth.ELeaf003


open Polynomial Math.B699.PadeMoment Math.B699.PadeGrowthPartition Math.B699.GrowthLeaf
open Math.B699.I11TwoFiveGrowth.Shared

local instance : Infinite ℚ :=
  Infinite.of_injective (fun n : ℕ => (n : ℚ)) Nat.cast_injective

def seedC : ℕ := 5
def seedD : ℕ := 4
def seedZ : ℚ := (3 : ℚ) / 128
def leafA : ℚ := (7 : ℚ) / 16
def leafB : ℚ := (15 : ℚ) / 32
def lam : ℚ := (305863978762465520211566521 : ℚ) / 79228162514264337593543950336

noncomputable def seedCore : ℚ[X] := eSeedCore
noncomputable def seedWeight0 : ℚ[X] := eSeedWeight0
noncomputable def seedWeight1 : ℚ[X] := eSeedWeight1
noncomputable def leafMap : ℚ[X] := affine leafA leafB
noncomputable def localCore : ℚ[X] := seedCore.comp leafMap
noncomputable def localWeight0 : ℚ[X] := seedWeight0.comp leafMap
noncomputable def localWeight1 : ℚ[X] := seedWeight1.comp leafMap

def gapCoeff0 : ℚ := (18252830022500270430855097 : ℚ) / 79228162514264337593543950336
def gapCoeff1 : ℚ := (146227279973547989283544449 : ℚ) / 79228162514264337593543950336
def gapCoeff2 : ℚ := (129215085582356264719392129 : ℚ) / 19807040628566084398385987584
def gapCoeff3 : ℚ := (264276503648304105589971501 : ℚ) / 19807040628566084398385987584
def gapCoeff4 : ℚ := (688708047569655575406857863 : ℚ) / 39614081257132168796771975168
def gapCoeff5 : ℚ := (592274198085147633625484935 : ℚ) / 39614081257132168796771975168
def gapCoeff6 : ℚ := (167882741479683686919707181 : ℚ) / 19807040628566084398385987584
def gapCoeff7 : ℚ := (60419621197714354709372289 : ℚ) / 19807040628566084398385987584
def gapCoeff8 : ℚ := (50033641577177364826594689 : ℚ) / 79228162514264337593543950336
def gapCoeff9 : ℚ := (4533699459284271453806521 : ℚ) / 79228162514264337593543950336

noncomputable def gapExpansion : ℚ[X] :=
  Polynomial.C gapCoeff0 * bernsteinMonomial 0 9 +
  Polynomial.C gapCoeff1 * bernsteinMonomial 1 8 +
  Polynomial.C gapCoeff2 * bernsteinMonomial 2 7 +
  Polynomial.C gapCoeff3 * bernsteinMonomial 3 6 +
  Polynomial.C gapCoeff4 * bernsteinMonomial 4 5 +
  Polynomial.C gapCoeff5 * bernsteinMonomial 5 4 +
  Polynomial.C gapCoeff6 * bernsteinMonomial 6 3 +
  Polynomial.C gapCoeff7 * bernsteinMonomial 7 2 +
  Polynomial.C gapCoeff8 * bernsteinMonomial 8 1 +
  Polynomial.C gapCoeff9 * bernsteinMonomial 9 0

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
    gapCoeff0, gapCoeff1, gapCoeff2, gapCoeff3, gapCoeff4, gapCoeff5, gapCoeff6, gapCoeff7, gapCoeff8, gapCoeff9,
    bernsteinMonomial, Polynomial.eval_comp, Polynomial.eval_add, Polynomial.eval_sub,
    Polynomial.eval_mul, Polynomial.eval_pow, Polynomial.eval_C, Polynomial.eval_X] <;> ring

theorem leafMap_eq_path : leafMap = ((((halfLeft).comp halfRight).comp halfRight).comp halfRight).comp halfLeft := by
  apply Polynomial.funext
  intro x
  norm_num [leafMap, affine, leafA, leafB, halfLeft, halfRight,
    Polynomial.eval_comp, Polynomial.eval_add, Polynomial.eval_sub,
    Polynomial.eval_mul, Polynomial.eval_C, Polynomial.eval_X] <;> ring

theorem gapExpansion_cone : BernsteinCone gapExpansion := by
  have h0 : BernsteinCone (Polynomial.C gapCoeff0 * bernsteinMonomial 0 9) :=
    BernsteinCone.scale gapCoeff0 (by norm_num [gapCoeff0]) (BernsteinCone.basis 0 9)
  have h1 : BernsteinCone (Polynomial.C gapCoeff1 * bernsteinMonomial 1 8) :=
    BernsteinCone.scale gapCoeff1 (by norm_num [gapCoeff1]) (BernsteinCone.basis 1 8)
  have h2 : BernsteinCone (Polynomial.C gapCoeff2 * bernsteinMonomial 2 7) :=
    BernsteinCone.scale gapCoeff2 (by norm_num [gapCoeff2]) (BernsteinCone.basis 2 7)
  have h3 : BernsteinCone (Polynomial.C gapCoeff3 * bernsteinMonomial 3 6) :=
    BernsteinCone.scale gapCoeff3 (by norm_num [gapCoeff3]) (BernsteinCone.basis 3 6)
  have h4 : BernsteinCone (Polynomial.C gapCoeff4 * bernsteinMonomial 4 5) :=
    BernsteinCone.scale gapCoeff4 (by norm_num [gapCoeff4]) (BernsteinCone.basis 4 5)
  have h5 : BernsteinCone (Polynomial.C gapCoeff5 * bernsteinMonomial 5 4) :=
    BernsteinCone.scale gapCoeff5 (by norm_num [gapCoeff5]) (BernsteinCone.basis 5 4)
  have h6 : BernsteinCone (Polynomial.C gapCoeff6 * bernsteinMonomial 6 3) :=
    BernsteinCone.scale gapCoeff6 (by norm_num [gapCoeff6]) (BernsteinCone.basis 6 3)
  have h7 : BernsteinCone (Polynomial.C gapCoeff7 * bernsteinMonomial 7 2) :=
    BernsteinCone.scale gapCoeff7 (by norm_num [gapCoeff7]) (BernsteinCone.basis 7 2)
  have h8 : BernsteinCone (Polynomial.C gapCoeff8 * bernsteinMonomial 8 1) :=
    BernsteinCone.scale gapCoeff8 (by norm_num [gapCoeff8]) (BernsteinCone.basis 8 1)
  have h9 : BernsteinCone (Polynomial.C gapCoeff9 * bernsteinMonomial 9 0) :=
    BernsteinCone.scale gapCoeff9 (by norm_num [gapCoeff9]) (BernsteinCone.basis 9 0)
  exact BernsteinCone.add (BernsteinCone.add (BernsteinCone.add (BernsteinCone.add (BernsteinCone.add (BernsteinCone.add (BernsteinCone.add (BernsteinCone.add (BernsteinCone.add (h0) h1) h2) h3) h4) h5) h6) h7) h8) h9

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

end Math.B699.I11TwoFiveGrowth.ELeaf003

#print axioms Math.B699.I11TwoFiveGrowth.ELeaf003.actual_gap_eq
#print axioms Math.B699.I11TwoFiveGrowth.ELeaf003.leafMap_eq_path
#print axioms Math.B699.I11TwoFiveGrowth.ELeaf003.gapExpansion_cone
#print axioms Math.B699.I11TwoFiveGrowth.ELeaf003.local_gap_cone
#print axioms Math.B699.I11TwoFiveGrowth.ELeaf003.local_core_cone
#print axioms Math.B699.I11TwoFiveGrowth.ELeaf003.local_weight0_cone
#print axioms Math.B699.I11TwoFiveGrowth.ELeaf003.local_weight1_cone
#print axioms Math.B699.I11TwoFiveGrowth.ELeaf003.leaf_delta0
#print axioms Math.B699.I11TwoFiveGrowth.ELeaf003.leaf_delta1
namespace Math.B699.I11TwoFiveGrowth.ELeaf004


open Polynomial Math.B699.PadeMoment Math.B699.PadeGrowthPartition Math.B699.GrowthLeaf
open Math.B699.I11TwoFiveGrowth.Shared

local instance : Infinite ℚ :=
  Infinite.of_injective (fun n : ℕ => (n : ℚ)) Nat.cast_injective

def seedC : ℕ := 5
def seedD : ℕ := 4
def seedZ : ℚ := (3 : ℚ) / 128
def leafA : ℚ := (15 : ℚ) / 32
def leafB : ℚ := (31 : ℚ) / 64
def lam : ℚ := (305863978762465520211566521 : ℚ) / 79228162514264337593543950336

noncomputable def seedCore : ℚ[X] := eSeedCore
noncomputable def seedWeight0 : ℚ[X] := eSeedWeight0
noncomputable def seedWeight1 : ℚ[X] := eSeedWeight1
noncomputable def leafMap : ℚ[X] := affine leafA leafB
noncomputable def localCore : ℚ[X] := seedCore.comp leafMap
noncomputable def localWeight0 : ℚ[X] := seedWeight0.comp leafMap
noncomputable def localWeight1 : ℚ[X] := seedWeight1.comp leafMap

def gapCoeff0 : ℚ := (4533699459284271453806521 : ℚ) / 79228162514264337593543950336
def gapCoeff1 : ℚ := (36188121911748982213090689 : ℚ) / 79228162514264337593543950336
def gapCoeff2 : ℚ := (31861856984169038377033089 : ℚ) / 19807040628566084398385987584
def gapCoeff3 : ℚ := (64927184715540711526242861 : ℚ) / 19807040628566084398385987584
def gapCoeff4 : ℚ := (168571726620881900282990215 : ℚ) / 39614081257132168796771975168
def gapCoeff5 : ℚ := (144411873086193008259255943 : ℚ) / 39614081257132168796771975168
def gapCoeff6 : ℚ := (40769831330914615265204781 : ℚ) / 19807040628566084398385987584
def gapCoeff7 : ℚ := (14610175525339886552259969 : ℚ) / 19807040628566084398385987584
def gapCoeff8 : ℚ := (12043264488866157305437569 : ℚ) / 79228162514264337593543950336
def gapCoeff9 : ℚ := (1085861402591555927777209 : ℚ) / 79228162514264337593543950336

noncomputable def gapExpansion : ℚ[X] :=
  Polynomial.C gapCoeff0 * bernsteinMonomial 0 9 +
  Polynomial.C gapCoeff1 * bernsteinMonomial 1 8 +
  Polynomial.C gapCoeff2 * bernsteinMonomial 2 7 +
  Polynomial.C gapCoeff3 * bernsteinMonomial 3 6 +
  Polynomial.C gapCoeff4 * bernsteinMonomial 4 5 +
  Polynomial.C gapCoeff5 * bernsteinMonomial 5 4 +
  Polynomial.C gapCoeff6 * bernsteinMonomial 6 3 +
  Polynomial.C gapCoeff7 * bernsteinMonomial 7 2 +
  Polynomial.C gapCoeff8 * bernsteinMonomial 8 1 +
  Polynomial.C gapCoeff9 * bernsteinMonomial 9 0

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
    gapCoeff0, gapCoeff1, gapCoeff2, gapCoeff3, gapCoeff4, gapCoeff5, gapCoeff6, gapCoeff7, gapCoeff8, gapCoeff9,
    bernsteinMonomial, Polynomial.eval_comp, Polynomial.eval_add, Polynomial.eval_sub,
    Polynomial.eval_mul, Polynomial.eval_pow, Polynomial.eval_C, Polynomial.eval_X] <;> ring

theorem leafMap_eq_path : leafMap = (((((halfLeft).comp halfRight).comp halfRight).comp halfRight).comp halfRight).comp halfLeft := by
  apply Polynomial.funext
  intro x
  norm_num [leafMap, affine, leafA, leafB, halfLeft, halfRight,
    Polynomial.eval_comp, Polynomial.eval_add, Polynomial.eval_sub,
    Polynomial.eval_mul, Polynomial.eval_C, Polynomial.eval_X] <;> ring

theorem gapExpansion_cone : BernsteinCone gapExpansion := by
  have h0 : BernsteinCone (Polynomial.C gapCoeff0 * bernsteinMonomial 0 9) :=
    BernsteinCone.scale gapCoeff0 (by norm_num [gapCoeff0]) (BernsteinCone.basis 0 9)
  have h1 : BernsteinCone (Polynomial.C gapCoeff1 * bernsteinMonomial 1 8) :=
    BernsteinCone.scale gapCoeff1 (by norm_num [gapCoeff1]) (BernsteinCone.basis 1 8)
  have h2 : BernsteinCone (Polynomial.C gapCoeff2 * bernsteinMonomial 2 7) :=
    BernsteinCone.scale gapCoeff2 (by norm_num [gapCoeff2]) (BernsteinCone.basis 2 7)
  have h3 : BernsteinCone (Polynomial.C gapCoeff3 * bernsteinMonomial 3 6) :=
    BernsteinCone.scale gapCoeff3 (by norm_num [gapCoeff3]) (BernsteinCone.basis 3 6)
  have h4 : BernsteinCone (Polynomial.C gapCoeff4 * bernsteinMonomial 4 5) :=
    BernsteinCone.scale gapCoeff4 (by norm_num [gapCoeff4]) (BernsteinCone.basis 4 5)
  have h5 : BernsteinCone (Polynomial.C gapCoeff5 * bernsteinMonomial 5 4) :=
    BernsteinCone.scale gapCoeff5 (by norm_num [gapCoeff5]) (BernsteinCone.basis 5 4)
  have h6 : BernsteinCone (Polynomial.C gapCoeff6 * bernsteinMonomial 6 3) :=
    BernsteinCone.scale gapCoeff6 (by norm_num [gapCoeff6]) (BernsteinCone.basis 6 3)
  have h7 : BernsteinCone (Polynomial.C gapCoeff7 * bernsteinMonomial 7 2) :=
    BernsteinCone.scale gapCoeff7 (by norm_num [gapCoeff7]) (BernsteinCone.basis 7 2)
  have h8 : BernsteinCone (Polynomial.C gapCoeff8 * bernsteinMonomial 8 1) :=
    BernsteinCone.scale gapCoeff8 (by norm_num [gapCoeff8]) (BernsteinCone.basis 8 1)
  have h9 : BernsteinCone (Polynomial.C gapCoeff9 * bernsteinMonomial 9 0) :=
    BernsteinCone.scale gapCoeff9 (by norm_num [gapCoeff9]) (BernsteinCone.basis 9 0)
  exact BernsteinCone.add (BernsteinCone.add (BernsteinCone.add (BernsteinCone.add (BernsteinCone.add (BernsteinCone.add (BernsteinCone.add (BernsteinCone.add (BernsteinCone.add (h0) h1) h2) h3) h4) h5) h6) h7) h8) h9

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

end Math.B699.I11TwoFiveGrowth.ELeaf004

#print axioms Math.B699.I11TwoFiveGrowth.ELeaf004.actual_gap_eq
#print axioms Math.B699.I11TwoFiveGrowth.ELeaf004.leafMap_eq_path
#print axioms Math.B699.I11TwoFiveGrowth.ELeaf004.gapExpansion_cone
#print axioms Math.B699.I11TwoFiveGrowth.ELeaf004.local_gap_cone
#print axioms Math.B699.I11TwoFiveGrowth.ELeaf004.local_core_cone
#print axioms Math.B699.I11TwoFiveGrowth.ELeaf004.local_weight0_cone
#print axioms Math.B699.I11TwoFiveGrowth.ELeaf004.local_weight1_cone
#print axioms Math.B699.I11TwoFiveGrowth.ELeaf004.leaf_delta0
#print axioms Math.B699.I11TwoFiveGrowth.ELeaf004.leaf_delta1
namespace Math.B699.I11TwoFiveGrowth.ELeaf005


open Polynomial Math.B699.PadeMoment Math.B699.PadeGrowthPartition Math.B699.GrowthLeaf
open Math.B699.I11TwoFiveGrowth.Shared

local instance : Infinite ℚ :=
  Infinite.of_injective (fun n : ℕ => (n : ℚ)) Nat.cast_injective

def seedC : ℕ := 5
def seedD : ℕ := 4
def seedZ : ℚ := (3 : ℚ) / 128
def leafA : ℚ := (31 : ℚ) / 64
def leafB : ℚ := (63 : ℚ) / 128
def lam : ℚ := (305863978762465520211566521 : ℚ) / 79228162514264337593543950336

noncomputable def seedCore : ℚ[X] := eSeedCore
noncomputable def seedWeight0 : ℚ[X] := eSeedWeight0
noncomputable def seedWeight1 : ℚ[X] := eSeedWeight1
noncomputable def leafMap : ℚ[X] := affine leafA leafB
noncomputable def localCore : ℚ[X] := seedCore.comp leafMap
noncomputable def localWeight0 : ℚ[X] := seedWeight0.comp leafMap
noncomputable def localWeight1 : ℚ[X] := seedWeight1.comp leafMap

def gapCoeff0 : ℚ := (1085861402591555927777209 : ℚ) / 79228162514264337593543950336
def gapCoeff1 : ℚ := (8637496690552926372273537 : ℚ) / 79228162514264337593543950336
def gapCoeff2 : ℚ := (7576340550514743217397121 : ℚ) / 19807040628566084398385987584
def gapCoeff3 : ℚ := (15375200896508412892420653 : ℚ) / 19807040628566084398385987584
def gapCoeff4 : ℚ := (39736692349602434500152967 : ℚ) / 39614081257132168796771975168
def gapCoeff5 : ℚ := (33868157486125825724927623 : ℚ) / 39614081257132168796771975168
def gapCoeff6 : ℚ := (9506816104141927487248941 : ℚ) / 19807040628566084398385987584
def gapCoeff7 : ℚ := (3384851504700939831778689 : ℚ) / 19807040628566084398385987584
def gapCoeff8 : ℚ := (2769862183774066313698689 : ℚ) / 79228162514264337593543950336
def gapCoeff9 : ℚ := (247713636555185542766521 : ℚ) / 79228162514264337593543950336

noncomputable def gapExpansion : ℚ[X] :=
  Polynomial.C gapCoeff0 * bernsteinMonomial 0 9 +
  Polynomial.C gapCoeff1 * bernsteinMonomial 1 8 +
  Polynomial.C gapCoeff2 * bernsteinMonomial 2 7 +
  Polynomial.C gapCoeff3 * bernsteinMonomial 3 6 +
  Polynomial.C gapCoeff4 * bernsteinMonomial 4 5 +
  Polynomial.C gapCoeff5 * bernsteinMonomial 5 4 +
  Polynomial.C gapCoeff6 * bernsteinMonomial 6 3 +
  Polynomial.C gapCoeff7 * bernsteinMonomial 7 2 +
  Polynomial.C gapCoeff8 * bernsteinMonomial 8 1 +
  Polynomial.C gapCoeff9 * bernsteinMonomial 9 0

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
    gapCoeff0, gapCoeff1, gapCoeff2, gapCoeff3, gapCoeff4, gapCoeff5, gapCoeff6, gapCoeff7, gapCoeff8, gapCoeff9,
    bernsteinMonomial, Polynomial.eval_comp, Polynomial.eval_add, Polynomial.eval_sub,
    Polynomial.eval_mul, Polynomial.eval_pow, Polynomial.eval_C, Polynomial.eval_X] <;> ring

theorem leafMap_eq_path : leafMap = ((((((halfLeft).comp halfRight).comp halfRight).comp halfRight).comp halfRight).comp halfRight).comp halfLeft := by
  apply Polynomial.funext
  intro x
  norm_num [leafMap, affine, leafA, leafB, halfLeft, halfRight,
    Polynomial.eval_comp, Polynomial.eval_add, Polynomial.eval_sub,
    Polynomial.eval_mul, Polynomial.eval_C, Polynomial.eval_X] <;> ring

theorem gapExpansion_cone : BernsteinCone gapExpansion := by
  have h0 : BernsteinCone (Polynomial.C gapCoeff0 * bernsteinMonomial 0 9) :=
    BernsteinCone.scale gapCoeff0 (by norm_num [gapCoeff0]) (BernsteinCone.basis 0 9)
  have h1 : BernsteinCone (Polynomial.C gapCoeff1 * bernsteinMonomial 1 8) :=
    BernsteinCone.scale gapCoeff1 (by norm_num [gapCoeff1]) (BernsteinCone.basis 1 8)
  have h2 : BernsteinCone (Polynomial.C gapCoeff2 * bernsteinMonomial 2 7) :=
    BernsteinCone.scale gapCoeff2 (by norm_num [gapCoeff2]) (BernsteinCone.basis 2 7)
  have h3 : BernsteinCone (Polynomial.C gapCoeff3 * bernsteinMonomial 3 6) :=
    BernsteinCone.scale gapCoeff3 (by norm_num [gapCoeff3]) (BernsteinCone.basis 3 6)
  have h4 : BernsteinCone (Polynomial.C gapCoeff4 * bernsteinMonomial 4 5) :=
    BernsteinCone.scale gapCoeff4 (by norm_num [gapCoeff4]) (BernsteinCone.basis 4 5)
  have h5 : BernsteinCone (Polynomial.C gapCoeff5 * bernsteinMonomial 5 4) :=
    BernsteinCone.scale gapCoeff5 (by norm_num [gapCoeff5]) (BernsteinCone.basis 5 4)
  have h6 : BernsteinCone (Polynomial.C gapCoeff6 * bernsteinMonomial 6 3) :=
    BernsteinCone.scale gapCoeff6 (by norm_num [gapCoeff6]) (BernsteinCone.basis 6 3)
  have h7 : BernsteinCone (Polynomial.C gapCoeff7 * bernsteinMonomial 7 2) :=
    BernsteinCone.scale gapCoeff7 (by norm_num [gapCoeff7]) (BernsteinCone.basis 7 2)
  have h8 : BernsteinCone (Polynomial.C gapCoeff8 * bernsteinMonomial 8 1) :=
    BernsteinCone.scale gapCoeff8 (by norm_num [gapCoeff8]) (BernsteinCone.basis 8 1)
  have h9 : BernsteinCone (Polynomial.C gapCoeff9 * bernsteinMonomial 9 0) :=
    BernsteinCone.scale gapCoeff9 (by norm_num [gapCoeff9]) (BernsteinCone.basis 9 0)
  exact BernsteinCone.add (BernsteinCone.add (BernsteinCone.add (BernsteinCone.add (BernsteinCone.add (BernsteinCone.add (BernsteinCone.add (BernsteinCone.add (BernsteinCone.add (h0) h1) h2) h3) h4) h5) h6) h7) h8) h9

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

end Math.B699.I11TwoFiveGrowth.ELeaf005

#print axioms Math.B699.I11TwoFiveGrowth.ELeaf005.actual_gap_eq
#print axioms Math.B699.I11TwoFiveGrowth.ELeaf005.leafMap_eq_path
#print axioms Math.B699.I11TwoFiveGrowth.ELeaf005.gapExpansion_cone
#print axioms Math.B699.I11TwoFiveGrowth.ELeaf005.local_gap_cone
#print axioms Math.B699.I11TwoFiveGrowth.ELeaf005.local_core_cone
#print axioms Math.B699.I11TwoFiveGrowth.ELeaf005.local_weight0_cone
#print axioms Math.B699.I11TwoFiveGrowth.ELeaf005.local_weight1_cone
#print axioms Math.B699.I11TwoFiveGrowth.ELeaf005.leaf_delta0
#print axioms Math.B699.I11TwoFiveGrowth.ELeaf005.leaf_delta1
namespace Math.B699.I11TwoFiveGrowth.ELeaf006


open Polynomial Math.B699.PadeMoment Math.B699.PadeGrowthPartition Math.B699.GrowthLeaf
open Math.B699.I11TwoFiveGrowth.Shared

local instance : Infinite ℚ :=
  Infinite.of_injective (fun n : ℕ => (n : ℚ)) Nat.cast_injective

def seedC : ℕ := 5
def seedD : ℕ := 4
def seedZ : ℚ := (3 : ℚ) / 128
def leafA : ℚ := (63 : ℚ) / 128
def leafB : ℚ := (127 : ℚ) / 256
def lam : ℚ := (305863978762465520211566521 : ℚ) / 79228162514264337593543950336

noncomputable def seedCore : ℚ[X] := eSeedCore
noncomputable def seedWeight0 : ℚ[X] := eSeedWeight0
noncomputable def seedWeight1 : ℚ[X] := eSeedWeight1
noncomputable def leafMap : ℚ[X] := affine leafA leafB
noncomputable def localCore : ℚ[X] := seedCore.comp leafMap
noncomputable def localWeight0 : ℚ[X] := seedWeight0.comp leafMap
noncomputable def localWeight1 : ℚ[X] := seedWeight1.comp leafMap

def gapCoeff0 : ℚ := (247713636555185542766521 : ℚ) / 79228162514264337593543950336
def gapCoeff1 : ℚ := (1959203001607971670498689 : ℚ) / 79228162514264337593543950336
def gapCoeff2 : ℚ := (1707620740756642728418689 : ℚ) / 19807040628566084398385987584
def gapCoeff3 : ℚ := (3440922480450229245712941 : ℚ) / 19807040628566084398385987584
def gapCoeff4 : ℚ := (8822720182618086511103623 : ℚ) / 39614081257132168796771975168
def gapCoeff5 : ℚ := (7453232397893696461098631 : ℚ) / 39614081257132168796771975168
def gapCoeff6 : ℚ := (2071443220141272164080173 : ℚ) / 19807040628566084398385987584
def gapCoeff7 : ℚ := (729433446710097017216385 : ℚ) / 19807040628566084398385987584
def gapCoeff8 : ℚ := (589766362440821475286401 : ℚ) / 79228162514264337593543950336
def gapCoeff9 : ℚ := (52084701787169966235577 : ℚ) / 79228162514264337593543950336

noncomputable def gapExpansion : ℚ[X] :=
  Polynomial.C gapCoeff0 * bernsteinMonomial 0 9 +
  Polynomial.C gapCoeff1 * bernsteinMonomial 1 8 +
  Polynomial.C gapCoeff2 * bernsteinMonomial 2 7 +
  Polynomial.C gapCoeff3 * bernsteinMonomial 3 6 +
  Polynomial.C gapCoeff4 * bernsteinMonomial 4 5 +
  Polynomial.C gapCoeff5 * bernsteinMonomial 5 4 +
  Polynomial.C gapCoeff6 * bernsteinMonomial 6 3 +
  Polynomial.C gapCoeff7 * bernsteinMonomial 7 2 +
  Polynomial.C gapCoeff8 * bernsteinMonomial 8 1 +
  Polynomial.C gapCoeff9 * bernsteinMonomial 9 0

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
    gapCoeff0, gapCoeff1, gapCoeff2, gapCoeff3, gapCoeff4, gapCoeff5, gapCoeff6, gapCoeff7, gapCoeff8, gapCoeff9,
    bernsteinMonomial, Polynomial.eval_comp, Polynomial.eval_add, Polynomial.eval_sub,
    Polynomial.eval_mul, Polynomial.eval_pow, Polynomial.eval_C, Polynomial.eval_X] <;> ring

theorem leafMap_eq_path : leafMap = (((((((halfLeft).comp halfRight).comp halfRight).comp halfRight).comp halfRight).comp halfRight).comp halfRight).comp halfLeft := by
  apply Polynomial.funext
  intro x
  norm_num [leafMap, affine, leafA, leafB, halfLeft, halfRight,
    Polynomial.eval_comp, Polynomial.eval_add, Polynomial.eval_sub,
    Polynomial.eval_mul, Polynomial.eval_C, Polynomial.eval_X] <;> ring

theorem gapExpansion_cone : BernsteinCone gapExpansion := by
  have h0 : BernsteinCone (Polynomial.C gapCoeff0 * bernsteinMonomial 0 9) :=
    BernsteinCone.scale gapCoeff0 (by norm_num [gapCoeff0]) (BernsteinCone.basis 0 9)
  have h1 : BernsteinCone (Polynomial.C gapCoeff1 * bernsteinMonomial 1 8) :=
    BernsteinCone.scale gapCoeff1 (by norm_num [gapCoeff1]) (BernsteinCone.basis 1 8)
  have h2 : BernsteinCone (Polynomial.C gapCoeff2 * bernsteinMonomial 2 7) :=
    BernsteinCone.scale gapCoeff2 (by norm_num [gapCoeff2]) (BernsteinCone.basis 2 7)
  have h3 : BernsteinCone (Polynomial.C gapCoeff3 * bernsteinMonomial 3 6) :=
    BernsteinCone.scale gapCoeff3 (by norm_num [gapCoeff3]) (BernsteinCone.basis 3 6)
  have h4 : BernsteinCone (Polynomial.C gapCoeff4 * bernsteinMonomial 4 5) :=
    BernsteinCone.scale gapCoeff4 (by norm_num [gapCoeff4]) (BernsteinCone.basis 4 5)
  have h5 : BernsteinCone (Polynomial.C gapCoeff5 * bernsteinMonomial 5 4) :=
    BernsteinCone.scale gapCoeff5 (by norm_num [gapCoeff5]) (BernsteinCone.basis 5 4)
  have h6 : BernsteinCone (Polynomial.C gapCoeff6 * bernsteinMonomial 6 3) :=
    BernsteinCone.scale gapCoeff6 (by norm_num [gapCoeff6]) (BernsteinCone.basis 6 3)
  have h7 : BernsteinCone (Polynomial.C gapCoeff7 * bernsteinMonomial 7 2) :=
    BernsteinCone.scale gapCoeff7 (by norm_num [gapCoeff7]) (BernsteinCone.basis 7 2)
  have h8 : BernsteinCone (Polynomial.C gapCoeff8 * bernsteinMonomial 8 1) :=
    BernsteinCone.scale gapCoeff8 (by norm_num [gapCoeff8]) (BernsteinCone.basis 8 1)
  have h9 : BernsteinCone (Polynomial.C gapCoeff9 * bernsteinMonomial 9 0) :=
    BernsteinCone.scale gapCoeff9 (by norm_num [gapCoeff9]) (BernsteinCone.basis 9 0)
  exact BernsteinCone.add (BernsteinCone.add (BernsteinCone.add (BernsteinCone.add (BernsteinCone.add (BernsteinCone.add (BernsteinCone.add (BernsteinCone.add (BernsteinCone.add (h0) h1) h2) h3) h4) h5) h6) h7) h8) h9

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

end Math.B699.I11TwoFiveGrowth.ELeaf006

#print axioms Math.B699.I11TwoFiveGrowth.ELeaf006.actual_gap_eq
#print axioms Math.B699.I11TwoFiveGrowth.ELeaf006.leafMap_eq_path
#print axioms Math.B699.I11TwoFiveGrowth.ELeaf006.gapExpansion_cone
#print axioms Math.B699.I11TwoFiveGrowth.ELeaf006.local_gap_cone
#print axioms Math.B699.I11TwoFiveGrowth.ELeaf006.local_core_cone
#print axioms Math.B699.I11TwoFiveGrowth.ELeaf006.local_weight0_cone
#print axioms Math.B699.I11TwoFiveGrowth.ELeaf006.local_weight1_cone
#print axioms Math.B699.I11TwoFiveGrowth.ELeaf006.leaf_delta0
#print axioms Math.B699.I11TwoFiveGrowth.ELeaf006.leaf_delta1
namespace Math.B699.I11TwoFiveGrowth.ELeaf007


open Polynomial Math.B699.PadeMoment Math.B699.PadeGrowthPartition Math.B699.GrowthLeaf
open Math.B699.I11TwoFiveGrowth.Shared

local instance : Infinite ℚ :=
  Infinite.of_injective (fun n : ℕ => (n : ℚ)) Nat.cast_injective

def seedC : ℕ := 5
def seedD : ℕ := 4
def seedZ : ℚ := (3 : ℚ) / 128
def leafA : ℚ := (127 : ℚ) / 256
def leafB : ℚ := (1 : ℚ) / 2
def lam : ℚ := (305863978762465520211566521 : ℚ) / 79228162514264337593543950336

noncomputable def seedCore : ℚ[X] := eSeedCore
noncomputable def seedWeight0 : ℚ[X] := eSeedWeight0
noncomputable def seedWeight1 : ℚ[X] := eSeedWeight1
noncomputable def leafMap : ℚ[X] := affine leafA leafB
noncomputable def localCore : ℚ[X] := seedCore.comp leafMap
noncomputable def localWeight0 : ℚ[X] := seedWeight0.comp leafMap
noncomputable def localWeight1 : ℚ[X] := seedWeight1.comp leafMap

def gapCoeff0 : ℚ := (52084701787169966235577 : ℚ) / 79228162514264337593543950336
def gapCoeff1 : ℚ := (347758269728237916953985 : ℚ) / 79228162514264337593543950336
def gapCoeff2 : ℚ := (245417261284929900551553 : ℚ) / 19807040628566084398385987584
def gapCoeff3 : ℚ := (377396785701639096506925 : ℚ) / 19807040628566084398385987584
def gapCoeff4 : ℚ := (677128376522778916834951 : ℚ) / 39614081257132168796771975168
def gapCoeff5 : ℚ := (352743373095173821976199 : ℚ) / 39614081257132168796771975168
def gapCoeff6 : ℚ := (53013471371009503926829 : ℚ) / 19807040628566084398385987584
def gapCoeff7 : ℚ := (13717306887209421806977 : ℚ) / 19807040628566084398385987584
def gapCoeff8 : ℚ := (23383400781833226853761 : ℚ) / 79228162514264337593543950336
def gapCoeff9 : ℚ := (5746399964339010903993 : ℚ) / 79228162514264337593543950336

noncomputable def gapExpansion : ℚ[X] :=
  Polynomial.C gapCoeff0 * bernsteinMonomial 0 9 +
  Polynomial.C gapCoeff1 * bernsteinMonomial 1 8 +
  Polynomial.C gapCoeff2 * bernsteinMonomial 2 7 +
  Polynomial.C gapCoeff3 * bernsteinMonomial 3 6 +
  Polynomial.C gapCoeff4 * bernsteinMonomial 4 5 +
  Polynomial.C gapCoeff5 * bernsteinMonomial 5 4 +
  Polynomial.C gapCoeff6 * bernsteinMonomial 6 3 +
  Polynomial.C gapCoeff7 * bernsteinMonomial 7 2 +
  Polynomial.C gapCoeff8 * bernsteinMonomial 8 1 +
  Polynomial.C gapCoeff9 * bernsteinMonomial 9 0

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
    gapCoeff0, gapCoeff1, gapCoeff2, gapCoeff3, gapCoeff4, gapCoeff5, gapCoeff6, gapCoeff7, gapCoeff8, gapCoeff9,
    bernsteinMonomial, Polynomial.eval_comp, Polynomial.eval_add, Polynomial.eval_sub,
    Polynomial.eval_mul, Polynomial.eval_pow, Polynomial.eval_C, Polynomial.eval_X] <;> ring

theorem leafMap_eq_path : leafMap = (((((((halfLeft).comp halfRight).comp halfRight).comp halfRight).comp halfRight).comp halfRight).comp halfRight).comp halfRight := by
  apply Polynomial.funext
  intro x
  norm_num [leafMap, affine, leafA, leafB, halfLeft, halfRight,
    Polynomial.eval_comp, Polynomial.eval_add, Polynomial.eval_sub,
    Polynomial.eval_mul, Polynomial.eval_C, Polynomial.eval_X] <;> ring

theorem gapExpansion_cone : BernsteinCone gapExpansion := by
  have h0 : BernsteinCone (Polynomial.C gapCoeff0 * bernsteinMonomial 0 9) :=
    BernsteinCone.scale gapCoeff0 (by norm_num [gapCoeff0]) (BernsteinCone.basis 0 9)
  have h1 : BernsteinCone (Polynomial.C gapCoeff1 * bernsteinMonomial 1 8) :=
    BernsteinCone.scale gapCoeff1 (by norm_num [gapCoeff1]) (BernsteinCone.basis 1 8)
  have h2 : BernsteinCone (Polynomial.C gapCoeff2 * bernsteinMonomial 2 7) :=
    BernsteinCone.scale gapCoeff2 (by norm_num [gapCoeff2]) (BernsteinCone.basis 2 7)
  have h3 : BernsteinCone (Polynomial.C gapCoeff3 * bernsteinMonomial 3 6) :=
    BernsteinCone.scale gapCoeff3 (by norm_num [gapCoeff3]) (BernsteinCone.basis 3 6)
  have h4 : BernsteinCone (Polynomial.C gapCoeff4 * bernsteinMonomial 4 5) :=
    BernsteinCone.scale gapCoeff4 (by norm_num [gapCoeff4]) (BernsteinCone.basis 4 5)
  have h5 : BernsteinCone (Polynomial.C gapCoeff5 * bernsteinMonomial 5 4) :=
    BernsteinCone.scale gapCoeff5 (by norm_num [gapCoeff5]) (BernsteinCone.basis 5 4)
  have h6 : BernsteinCone (Polynomial.C gapCoeff6 * bernsteinMonomial 6 3) :=
    BernsteinCone.scale gapCoeff6 (by norm_num [gapCoeff6]) (BernsteinCone.basis 6 3)
  have h7 : BernsteinCone (Polynomial.C gapCoeff7 * bernsteinMonomial 7 2) :=
    BernsteinCone.scale gapCoeff7 (by norm_num [gapCoeff7]) (BernsteinCone.basis 7 2)
  have h8 : BernsteinCone (Polynomial.C gapCoeff8 * bernsteinMonomial 8 1) :=
    BernsteinCone.scale gapCoeff8 (by norm_num [gapCoeff8]) (BernsteinCone.basis 8 1)
  have h9 : BernsteinCone (Polynomial.C gapCoeff9 * bernsteinMonomial 9 0) :=
    BernsteinCone.scale gapCoeff9 (by norm_num [gapCoeff9]) (BernsteinCone.basis 9 0)
  exact BernsteinCone.add (BernsteinCone.add (BernsteinCone.add (BernsteinCone.add (BernsteinCone.add (BernsteinCone.add (BernsteinCone.add (BernsteinCone.add (BernsteinCone.add (h0) h1) h2) h3) h4) h5) h6) h7) h8) h9

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

end Math.B699.I11TwoFiveGrowth.ELeaf007

#print axioms Math.B699.I11TwoFiveGrowth.ELeaf007.actual_gap_eq
#print axioms Math.B699.I11TwoFiveGrowth.ELeaf007.leafMap_eq_path
#print axioms Math.B699.I11TwoFiveGrowth.ELeaf007.gapExpansion_cone
#print axioms Math.B699.I11TwoFiveGrowth.ELeaf007.local_gap_cone
#print axioms Math.B699.I11TwoFiveGrowth.ELeaf007.local_core_cone
#print axioms Math.B699.I11TwoFiveGrowth.ELeaf007.local_weight0_cone
#print axioms Math.B699.I11TwoFiveGrowth.ELeaf007.local_weight1_cone
#print axioms Math.B699.I11TwoFiveGrowth.ELeaf007.leaf_delta0
#print axioms Math.B699.I11TwoFiveGrowth.ELeaf007.leaf_delta1
namespace Math.B699.I11TwoFiveGrowth.ELeaf008


open Polynomial Math.B699.PadeMoment Math.B699.PadeGrowthPartition Math.B699.GrowthLeaf
open Math.B699.I11TwoFiveGrowth.Shared

local instance : Infinite ℚ :=
  Infinite.of_injective (fun n : ℕ => (n : ℚ)) Nat.cast_injective

def seedC : ℕ := 5
def seedD : ℕ := 4
def seedZ : ℚ := (3 : ℚ) / 128
def leafA : ℚ := (1 : ℚ) / 2
def leafB : ℚ := (1 : ℚ)
def lam : ℚ := (305863978762465520211566521 : ℚ) / 79228162514264337593543950336

noncomputable def seedCore : ℚ[X] := eSeedCore
noncomputable def seedWeight0 : ℚ[X] := eSeedWeight0
noncomputable def seedWeight1 : ℚ[X] := eSeedWeight1
noncomputable def leafMap : ℚ[X] := affine leafA leafB
noncomputable def localCore : ℚ[X] := seedCore.comp leafMap
noncomputable def localWeight0 : ℚ[X] := seedWeight0.comp leafMap
noncomputable def localWeight1 : ℚ[X] := seedWeight1.comp leafMap

def gapCoeff0 : ℚ := (5746399964339010903993 : ℚ) / 79228162514264337593543950336
def gapCoeff1 : ℚ := (3678495058522938622254465 : ℚ) / 79228162514264337593543950336
def gapCoeff2 : ℚ := (313163504879868007347035521 : ℚ) / 19807040628566084398385987584
def gapCoeff3 : ℚ := (2162888965689822712778332717 : ℚ) / 19807040628566084398385987584
def gapCoeff4 : ℚ := (11986861524676801624898686599 : ℚ) / 39614081257132168796771975168
def gapCoeff5 : ℚ := (16851579022806069423916338823 : ℚ) / 39614081257132168796771975168
def gapCoeff6 : ℚ := (6423143554011775924442896941 : ℚ) / 19807040628566084398385987584
def gapCoeff7 : ℚ := (2752775808862189681904098689 : ℚ) / 19807040628566084398385987584
def gapCoeff8 : ℚ := (2752775808862189681904098689 : ℚ) / 79228162514264337593543950336
def gapCoeff9 : ℚ := (305863978762465520211566521 : ℚ) / 79228162514264337593543950336

noncomputable def gapExpansion : ℚ[X] :=
  Polynomial.C gapCoeff0 * bernsteinMonomial 0 9 +
  Polynomial.C gapCoeff1 * bernsteinMonomial 1 8 +
  Polynomial.C gapCoeff2 * bernsteinMonomial 2 7 +
  Polynomial.C gapCoeff3 * bernsteinMonomial 3 6 +
  Polynomial.C gapCoeff4 * bernsteinMonomial 4 5 +
  Polynomial.C gapCoeff5 * bernsteinMonomial 5 4 +
  Polynomial.C gapCoeff6 * bernsteinMonomial 6 3 +
  Polynomial.C gapCoeff7 * bernsteinMonomial 7 2 +
  Polynomial.C gapCoeff8 * bernsteinMonomial 8 1 +
  Polynomial.C gapCoeff9 * bernsteinMonomial 9 0

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
    gapCoeff0, gapCoeff1, gapCoeff2, gapCoeff3, gapCoeff4, gapCoeff5, gapCoeff6, gapCoeff7, gapCoeff8, gapCoeff9,
    bernsteinMonomial, Polynomial.eval_comp, Polynomial.eval_add, Polynomial.eval_sub,
    Polynomial.eval_mul, Polynomial.eval_pow, Polynomial.eval_C, Polynomial.eval_X] <;> ring

theorem leafMap_eq_path : leafMap = halfRight := by
  apply Polynomial.funext
  intro x
  norm_num [leafMap, affine, leafA, leafB, halfLeft, halfRight,
    Polynomial.eval_comp, Polynomial.eval_add, Polynomial.eval_sub,
    Polynomial.eval_mul, Polynomial.eval_C, Polynomial.eval_X] <;> ring

theorem gapExpansion_cone : BernsteinCone gapExpansion := by
  have h0 : BernsteinCone (Polynomial.C gapCoeff0 * bernsteinMonomial 0 9) :=
    BernsteinCone.scale gapCoeff0 (by norm_num [gapCoeff0]) (BernsteinCone.basis 0 9)
  have h1 : BernsteinCone (Polynomial.C gapCoeff1 * bernsteinMonomial 1 8) :=
    BernsteinCone.scale gapCoeff1 (by norm_num [gapCoeff1]) (BernsteinCone.basis 1 8)
  have h2 : BernsteinCone (Polynomial.C gapCoeff2 * bernsteinMonomial 2 7) :=
    BernsteinCone.scale gapCoeff2 (by norm_num [gapCoeff2]) (BernsteinCone.basis 2 7)
  have h3 : BernsteinCone (Polynomial.C gapCoeff3 * bernsteinMonomial 3 6) :=
    BernsteinCone.scale gapCoeff3 (by norm_num [gapCoeff3]) (BernsteinCone.basis 3 6)
  have h4 : BernsteinCone (Polynomial.C gapCoeff4 * bernsteinMonomial 4 5) :=
    BernsteinCone.scale gapCoeff4 (by norm_num [gapCoeff4]) (BernsteinCone.basis 4 5)
  have h5 : BernsteinCone (Polynomial.C gapCoeff5 * bernsteinMonomial 5 4) :=
    BernsteinCone.scale gapCoeff5 (by norm_num [gapCoeff5]) (BernsteinCone.basis 5 4)
  have h6 : BernsteinCone (Polynomial.C gapCoeff6 * bernsteinMonomial 6 3) :=
    BernsteinCone.scale gapCoeff6 (by norm_num [gapCoeff6]) (BernsteinCone.basis 6 3)
  have h7 : BernsteinCone (Polynomial.C gapCoeff7 * bernsteinMonomial 7 2) :=
    BernsteinCone.scale gapCoeff7 (by norm_num [gapCoeff7]) (BernsteinCone.basis 7 2)
  have h8 : BernsteinCone (Polynomial.C gapCoeff8 * bernsteinMonomial 8 1) :=
    BernsteinCone.scale gapCoeff8 (by norm_num [gapCoeff8]) (BernsteinCone.basis 8 1)
  have h9 : BernsteinCone (Polynomial.C gapCoeff9 * bernsteinMonomial 9 0) :=
    BernsteinCone.scale gapCoeff9 (by norm_num [gapCoeff9]) (BernsteinCone.basis 9 0)
  exact BernsteinCone.add (BernsteinCone.add (BernsteinCone.add (BernsteinCone.add (BernsteinCone.add (BernsteinCone.add (BernsteinCone.add (BernsteinCone.add (BernsteinCone.add (h0) h1) h2) h3) h4) h5) h6) h7) h8) h9

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

end Math.B699.I11TwoFiveGrowth.ELeaf008

#print axioms Math.B699.I11TwoFiveGrowth.ELeaf008.actual_gap_eq
#print axioms Math.B699.I11TwoFiveGrowth.ELeaf008.leafMap_eq_path
#print axioms Math.B699.I11TwoFiveGrowth.ELeaf008.gapExpansion_cone
#print axioms Math.B699.I11TwoFiveGrowth.ELeaf008.local_gap_cone
#print axioms Math.B699.I11TwoFiveGrowth.ELeaf008.local_core_cone
#print axioms Math.B699.I11TwoFiveGrowth.ELeaf008.local_weight0_cone
#print axioms Math.B699.I11TwoFiveGrowth.ELeaf008.local_weight1_cone
#print axioms Math.B699.I11TwoFiveGrowth.ELeaf008.leaf_delta0
#print axioms Math.B699.I11TwoFiveGrowth.ELeaf008.leaf_delta1

end HeightMember055

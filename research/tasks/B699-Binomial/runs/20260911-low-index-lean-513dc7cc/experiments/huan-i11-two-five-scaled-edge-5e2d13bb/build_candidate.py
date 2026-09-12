from pathlib import Path
import json,re,hashlib
from datetime import datetime,timezone
HERE=Path(__file__).resolve().parent
RUN=HERE.parents[1]
RP='research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc»'
EP=RP+'.experiments.«huan-i11-two-five-scaled-edge-5e2d13bb»'
NS='Math.B699.I11TwoFiveScaled'
files={}
files['Parameters.lean']='''import __RP__.lean.I11Edge.Capacity

/-! UNCOMPILED. Fixed original two-five selector and shared extraction index. -/
set_option autoImplicit false
set_option relaxedAutoImplicit false
namespace __NS__
open Math.B699.DiscretePadeSelector

def twoFiveZ : ℕ := 115572769905797
def twoFiveY0 : ℕ := 2 ^ 15359
def twoFiveM : ℕ := 329

theorem twoFiveZ_gt_one : 1 < twoFiveZ := by decide

def twoFiveIndex (Y : ℕ) : ℕ := leastExponent twoFiveZ Y twoFiveZ_gt_one

theorem index_ge_M (Y : ℕ) (hY : twoFiveY0 ≤ Y)
    (hprevious : twoFiveZ ^ (twoFiveM - 1) ≤ 4 * twoFiveY0) :
    twoFiveM ≤ twoFiveIndex Y := by
  exact leastExponent_lower_bound twoFiveZ twoFiveY0 Y twoFiveM
    twoFiveZ_gt_one hY (by decide) hprevious

theorem index_ge_m0 (Y : ℕ) (hY : twoFiveY0 ≤ Y)
    (hprevious : twoFiveZ ^ (twoFiveM - 1) ≤ 4 * twoFiveY0) :
    141 ≤ twoFiveIndex Y := by
  have h := index_ge_M Y hY hprevious
  dsimp only [twoFiveM] at h
  omega

theorem extract_same_index (Y e f A C : ℕ)
    (hY : twoFiveY0 ≤ Y)
    (hprevious : twoFiveZ ^ (twoFiveM - 1) ≤ 4 * twoFiveY0)
    (hrateP : 2 ^ 35000 ≤ twoFiveZ ^ 752)
    (hbaseP : (2 ^ 35000) ^ twoFiveM ≤ twoFiveY0 ^ 752)
    (hlookP : 4 ^ 752 * (2 ^ 35000) ^ (twoFiveM + 1) ≤ twoFiveZ ^ (752 * twoFiveM))
    (hrateQ : 5 ^ 15000 ≤ twoFiveZ ^ 748)
    (hbaseQ : (5 ^ 15000) ^ twoFiveM ≤ twoFiveY0 ^ 748)
    (hlookQ : 4 ^ 748 * (5 ^ 15000) ^ (twoFiveM + 1) ≤ twoFiveZ ^ (748 * twoFiveM))
    (hwindowP : Y ≤ 2 ^ e * A) (hwindowQ : Y ≤ 5 ^ f * C)
    (hsmallP : A ^ 1000 < Y ^ 248) (hsmallQ : C ^ 1000 < Y ^ 252) :
    35 * twoFiveIndex Y < e ∧ 15 * twoFiveIndex Y < f := by
  have hY0 : 0 < twoFiveY0 := Nat.pow_pos (by decide : 0 < (2 : ℕ))
  have hM : 0 < twoFiveM := by decide
  constructor
  · have hP := Math.B699.I11ActualPadeEdge.least_capacity_forces_exponent
      2 35 1000 248 twoFiveZ twoFiveM twoFiveY0 Y e A
      (by decide) (by decide) twoFiveZ_gt_one hY0 hY hM
    simp only [show 35 * 1000 = 35000 by decide,
      show 1000 - 248 = 752 by decide] at hP
    exact hP hprevious hrateP hbaseP hlookP hwindowP hsmallP
  · have hQ := Math.B699.I11ActualPadeEdge.least_capacity_forces_exponent
      5 15 1000 252 twoFiveZ twoFiveM twoFiveY0 Y f C
      (by decide) (by decide) twoFiveZ_gt_one hY0 hY hM
    simp only [show 15 * 1000 = 15000 by decide,
      show 1000 - 252 = 748 by decide] at hQ
    exact hQ hprevious hrateQ hbaseQ hlookQ hwindowQ hsmallQ

end __NS__
'''
files['ActualRows.lean']='''import __EP__.Parameters
import __RP__.lean.I11TwoFive.Prefix
import __RP__.lean.I11DivisorTwoFive.Threshold
import __RP__.lean.I11Scaled.RatBounds

/-!
UNCOMPILED. Actual source rows, each row's own gcd, and the D=3 remainder.
Prefix and four-track G have complete proof text but separate acceptance states.
-/
set_option autoImplicit false
set_option relaxedAutoImplicit false
namespace __NS__

open Math.B699.PadeActualRows Math.B699.PadeConstruction Math.B699.PadeContent
open Math.B699.I11TwoFivePrefix Math.B699.PadeGrowthNormalization

def contentBase : ℚ := (602791 / 500000 : ℚ) ^ 4
noncomputable def qEval (m : ℕ) (row : Bool) : ℚ :=
  actualQ 5 4 (rowDelta row) m (3 / 128)
noncomputable def eEval (m : ℕ) (row : Bool) : ℚ :=
  actualE 5 4 (rowDelta row) m (3 / 128)
noncomputable def content (m : ℕ) (row : Bool) : ℚ :=
  (qContent (4 * m - rowDelta row) (m + rowDelta row - 1)
    (4 * m - rowDelta row) : ℚ)
def qRow (m : ℕ) (row : Bool) : ℤ := actualQRow (4 * m) (m - 1) 3 128 row
def rowError (m : ℕ) (row : Bool) : ℤ :=
  (128 : ℤ) ^ (5 * m) * actualPRow (4 * m) (m - 1) 3 128 row -
    (125 : ℤ) ^ (5 * m) * qRow m row

theorem contentBase_pos : 0 < contentBase := by norm_num [contentBase]

theorem content_lower (m : ℕ) (hm : 141 ≤ m) (row : Bool) :
    contentBase ^ m ≤ content m row := by
  have h := Math.B699.I11DivisorTwoFive.qContent_two_five_lower
    (rowDelta row) m (rowDelta_cases row) hm
  simpa only [contentBase, content, ← pow_mul] using le_of_lt h

theorem q_content_identity (m : ℕ) (hm : 1 ≤ m) (row : Bool) :
    content m row * (qRow m row : ℚ) =
      (128 : ℚ) ^ (4 * m - rowDelta row) * qEval m row := by
  simpa only [content, qRow, qEval] using
    Math.B699.I11TwoFivePrefix.actual_q_content_identity m hm row

theorem e_content_identity (m : ℕ) (hm : 1 ≤ m) (row : Bool) :
    content m row * (rowError m row : ℚ) =
      (128 : ℚ) ^ (m + rowDelta row - 1) *
        (3 : ℚ) ^ (2 * (4 * m - rowDelta row) + 1) * eEval m row := by
  simpa only [content, rowError, qRow, eEval] using
    Math.B699.I11TwoFivePrefix.actual_remainder m hm row

theorem actual_q_content_bound (m : ℕ) (hm : 141 ≤ m) (row : Bool)
    (BQ : ℚ) (hBQ : 0 ≤ BQ) (hQ : |qEval m row| ≤ BQ ^ m) :
    contentBase ^ m * |(qRow m row : ℚ)| ≤ ((128 : ℚ) ^ 4 * BQ) ^ m := by
  have h := Math.B699.I11ScaledBounds.normalized_abs_bound
    (content m row) (contentBase ^ m) ((128 : ℚ) ^ (4 * m - rowDelta row))
    (qRow m row) (qEval m row) (BQ ^ m)
    (le_of_lt (pow_pos contentBase_pos m)) (content_lower m hm row)
    (pow_nonneg (by norm_num) _) (q_content_identity m (by omega) row) hQ
  calc
    _ ≤ (128 : ℚ) ^ (4 * m - rowDelta row) * BQ ^ m := h
    _ ≤ (128 : ℚ) ^ (4 * m) * BQ ^ m :=
      mul_le_mul_of_nonneg_right
        (pow_le_pow_right₀ (by norm_num : (1 : ℚ) ≤ 128) (Nat.sub_le _ _))
        (pow_nonneg hBQ m)
    _ = ((128 : ℚ) ^ 4 * BQ) ^ m := by rw [mul_pow, ← pow_mul]

theorem actual_e_content_bound (m : ℕ) (hm : 141 ≤ m) (row : Bool)
    (BE : ℚ) (hBE : 0 ≤ BE) (hE : |eEval m row| ≤ BE ^ m) :
    contentBase ^ m * |(rowError m row : ℚ)| ≤ ((128 : ℚ) * 3 ^ 8 * BE) ^ m := by
  have h := Math.B699.I11ScaledBounds.normalized_abs_bound
    (content m row) (contentBase ^ m)
    ((128 : ℚ) ^ (m + rowDelta row - 1) *
      (3 : ℚ) ^ (2 * (4 * m - rowDelta row) + 1))
    (rowError m row) (eEval m row) (BE ^ m)
    (le_of_lt (pow_pos contentBase_pos m)) (content_lower m hm row)
    (by positivity) (e_content_identity m (by omega) row) hE
  calc
    _ ≤ ((128 : ℚ) ^ (m + rowDelta row - 1) *
          (3 : ℚ) ^ (2 * (4 * m - rowDelta row) + 1)) * BE ^ m := h
    _ ≤ ((128 : ℚ) * 3 ^ 8) ^ m * BE ^ m :=
      mul_le_mul_of_nonneg_right
        (Math.B699.I11TwoFivePrefix.error_scale_le m (by omega) row) (pow_nonneg hBE m)
    _ = ((128 : ℚ) * 3 ^ 8 * BE) ^ m := by rw [mul_pow]

/-- The actual nonzero-row theorem supplies the integer lower bound. -/
theorem actual_integer_gap (m e f A C : ℕ)
    (hm : 1 ≤ m) (he : 35 * m ≤ e) (hf : 15 * m ≤ f) (hC : 1 ≤ C)
    (hgap : |(2 : ℤ) ^ e * (A : ℤ) - (5 : ℤ) ^ f * (C : ℤ)| ≤ 24) :
    ∃ row : Bool, (128 : ℤ) ^ (5 * m) ≤
      24 * |qRow m row| +
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
      (125 : ℤ) ^ (5 * m) * ((5 : ℤ) ^ (f - 15 * m) * (C : ℤ))| ≤ 24 := by
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
    (V := (5 : ℤ) ^ (f - 15 * m) * (C : ℤ)) (D := 24)
    (by decide) (by decide) (pow_nonneg (by decide) _)
    (by decide) (by decide) hV hgap'
  exact ⟨row, by simpa only [qRow, rowError, one_mul, mul_one] using hlower⟩

end __NS__
'''
def write_files():
 for name,text in files.items():
  text=text.replace('__RP__',RP).replace('__EP__',EP).replace('__NS__',NS)
  (HERE/name).write_text(text,encoding='utf-8')
write_files()
print(json.dumps({'status':'first_two_layers_generated_uncompiled','files':list(files),'worker_lean_invocations':0}))

# Reuse the parameter-free growth proof pattern, substituting only the fixed c,d,z and F instance.
growth=(RUN/'lean/I11Scaled/GrowthInputs.lean').read_text(encoding='utf-8')
growth=growth.replace('import '+RP+'.lean.I11Scaled.ActualBounds','import __EP__.ActualRows')
growth=growth.replace('Factorial5D3','Factorial5D4').replace('5 3','5 4').replace('(1 / 4375)','(3 / 128)')
growth=growth.replace('factorial_strict_k_5_3','factorial_strict_k_5_4')
growth=growth.replace('delta ≤ 3','delta ≤ 4').replace('129','141').replace('(5,3)','(5,4)')
growth=growth.replace('Math.B699.I11ScaledBounds','__NS__').replace('Math.B699.I11ActualPadeEdge','Math.B699.I11TwoFivePrefix')
growth=re.sub(r'def qLambda : ℚ := .+', 'def qLambda : ℚ := 3471657440109699659204039683 / 79228162514264337593543950336',growth)
growth=re.sub(r'def eLambda : ℚ := .+', 'def eLambda : ℚ := 305863978762465520211566521 / 79228162514264337593543950336',growth)
growth='\n'.join(l for l in growth.splitlines() if not l.startswith('#print axioms'))+'\n'
files['GrowthInputs.lean']=growth

files['ScaledGap.lean']='''import __EP__.ActualRows
import Mathlib.Algebra.Order.Ring.Cast

/-! UNCOMPILED. Both strict gap terms follow from actual Q/E and actual G.
The E denominator retains 128*3^8. Positive cancellation uses Rat lemmas. -/
set_option autoImplicit false
set_option relaxedAutoImplicit false
namespace __NS__

def qNumerator : ℚ := (128 : ℚ) ^ 5 * contentBase
def qDenominator (BQ : ℚ) : ℚ := (128 : ℚ) ^ 4 * BQ
def qRate (BQ : ℚ) : ℚ := qNumerator / qDenominator BQ
def wNumerator : ℚ := ((128 : ℚ) * 125) ^ 5 * contentBase
def wDenominator (BE : ℚ) : ℚ := (128 : ℚ) * 3 ^ 8 * BE
def wRate (BE : ℚ) : ℚ := wNumerator / wDenominator BE

theorem qRate_eq_seed (BQ : ℚ) :
    qRate BQ = (128 : ℚ) * contentBase / BQ := by
  by_cases hBQ : BQ = 0
  · simp [qRate, qNumerator, qDenominator, hBQ]
  · unfold qRate qNumerator qDenominator
    field_simp [hBQ]
    <;> norm_num
    <;> ring

theorem actual_q_gap_twice_lt (m : ℕ) (hm : 141 ≤ m) (row : Bool)
    (BQ : ℚ) (hBQ : 0 < BQ) (hQ : |qEval m row| ≤ BQ ^ m)
    (hA : (48 : ℚ) < qRate BQ ^ m) :
    2 * (24 * |(qRow m row : ℚ)|) < (128 : ℚ) ^ (5 * m) := by
  have hden : 0 < qDenominator BQ := by unfold qDenominator; positivity
  have hnum : (48 : ℚ) * qDenominator BQ ^ m < qNumerator ^ m := by
    calc
      _ < qRate BQ ^ m * qDenominator BQ ^ m :=
        mul_lt_mul_of_pos_right hA (pow_pos hden m)
      _ = qNumerator ^ m :=
        Math.B699.I11ScaledBounds.ratio_pow_mul qNumerator (qDenominator BQ)
          (ne_of_gt hden) m
  have hsmall : (48 : ℚ) * ((128 : ℚ) ^ 4 * BQ) ^ m <
      (128 : ℚ) ^ (5 * m) * contentBase ^ m := by
    calc
      _ < qNumerator ^ m := hnum
      _ = (128 : ℚ) ^ (5 * m) * contentBase ^ m := by
        simp only [qNumerator, mul_pow, ← pow_mul]
  have h := Math.B699.I11ScaledBounds.weighted_bound_lt
    (contentBase ^ m) ((128 : ℚ) ^ (5 * m)) 48 |(qRow m row : ℚ)|
    (((128 : ℚ) ^ 4 * BQ) ^ m) (pow_pos contentBase_pos m) (by norm_num)
    (actual_q_content_bound m hm row BQ hBQ.le hQ) hsmall
  nlinarith only [h]

theorem actual_e_gap_twice_lt (m : ℕ) (hm : 141 ≤ m) (row : Bool)
    (BE : ℚ) (hBE : 0 < BE) (hE : |eEval m row| ≤ BE ^ m)
    (V Nq : ℕ) (hNV : (125 : ℚ) ^ (5 * m) * (V : ℚ) = (Nq : ℚ))
    (hNsmall : 2 * (Nq : ℚ) < wRate BE ^ m) :
    2 * (|(rowError m row : ℚ)| * (V : ℚ)) < (128 : ℚ) ^ (5 * m) := by
  have hden : 0 < wDenominator BE := by unfold wDenominator; positivity
  have hsmall : (2 * (V : ℚ)) * wDenominator BE ^ m <
      (128 : ℚ) ^ (5 * m) * contentBase ^ m := by
    apply (Rat.mul_lt_mul_right
      (pow_pos (by norm_num : (0 : ℚ) < 125) (5 * m))).mp
    calc
      (2 * (V : ℚ)) * wDenominator BE ^ m * (125 : ℚ) ^ (5 * m) =
          (2 * (Nq : ℚ)) * wDenominator BE ^ m := by rw [← hNV]; ring
      _ < wRate BE ^ m * wDenominator BE ^ m :=
        mul_lt_mul_of_pos_right hNsmall (pow_pos hden m)
      _ = wNumerator ^ m :=
        Math.B699.I11ScaledBounds.ratio_pow_mul wNumerator (wDenominator BE)
          (ne_of_gt hden) m
      _ = ((128 : ℚ) ^ (5 * m) * contentBase ^ m) * (125 : ℚ) ^ (5 * m) := by
        simp only [wNumerator, mul_pow, ← pow_mul]
        ring
  have h := Math.B699.I11ScaledBounds.weighted_bound_lt
    (contentBase ^ m) ((128 : ℚ) ^ (5 * m)) (2 * (V : ℚ))
    |(rowError m row : ℚ)| (wDenominator BE ^ m)
    (pow_pos contentBase_pos m) (by positivity)
    (actual_e_content_bound m hm row BE hBE.le hE) hsmall
  nlinarith only [h]

theorem actual_integer_gap_sum_lt (m : ℕ) (hm : 141 ≤ m) (row : Bool)
    (BQ BE : ℚ) (hBQ : 0 < BQ) (hBE : 0 < BE)
    (hQ : |qEval m row| ≤ BQ ^ m) (hE : |eEval m row| ≤ BE ^ m)
    (hA : (48 : ℚ) < qRate BQ ^ m)
    (V Nq : ℕ) (hNV : (125 : ℚ) ^ (5 * m) * (V : ℚ) = (Nq : ℚ))
    (hNsmall : 2 * (Nq : ℚ) < wRate BE ^ m) :
    24 * |qRow m row| + |rowError m row| * (V : ℤ) < (128 : ℤ) ^ (5 * m) := by
  have h := Math.B699.I11ScaledBounds.sum_lt_of_twice_lt
    (24 * |(qRow m row : ℚ)|) (|(rowError m row : ℚ)| * (V : ℚ))
    ((128 : ℚ) ^ (5 * m))
    (actual_q_gap_twice_lt m hm row BQ hBQ hQ hA)
    (actual_e_gap_twice_lt m hm row BE hBE hE V Nq hNV hNsmall)
  exact_mod_cast h

end __NS__
'''
files['SelectedEdge.lean']='''import __EP__.ScaledGap

/-! UNCOMPILED. Actual two-five cofactor edge, conditional on raw growth and
explicit numeric data. No actual Hom, G, determinant, or desired edge is assumed. -/
set_option autoImplicit false
set_option relaxedAutoImplicit false
namespace __NS__
open Math.B699.DiscretePadeSelector

theorem edge_of_actual_growth
    (BQ BE : ℚ) (hBQ : 0 < BQ) (hBE : 0 < BE)
    (hQ : ∀ m : ℕ, 141 ≤ m → ∀ row : Bool, |qEval m row| ≤ BQ ^ m)
    (hE : ∀ m : ℕ, 141 ≤ m → ∀ row : Bool, |eEval m row| ≤ BE ^ m)
    (hAone : 1 ≤ qRate BQ) (hAbase : (48 : ℚ) < qRate BQ ^ 329)
    (hW : (twoFiveZ : ℚ) ≤ wRate BE)
    (hprevious : twoFiveZ ^ (twoFiveM - 1) ≤ 4 * twoFiveY0)
    (hrateP : 2 ^ 35000 ≤ twoFiveZ ^ 752)
    (hbaseP : (2 ^ 35000) ^ twoFiveM ≤ twoFiveY0 ^ 752)
    (hlookP : 4 ^ 752 * (2 ^ 35000) ^ (twoFiveM + 1) ≤ twoFiveZ ^ (752 * twoFiveM))
    (hrateQ : 5 ^ 15000 ≤ twoFiveZ ^ 748)
    (hbaseQ : (5 ^ 15000) ^ twoFiveM ≤ twoFiveY0 ^ 748)
    (hlookQ : 4 ^ 748 * (5 ^ 15000) ^ (twoFiveM + 1) ≤ twoFiveZ ^ (748 * twoFiveM))
    (Y e f A C : ℕ) (hY : twoFiveY0 ≤ Y) (hC : 1 ≤ C)
    (hwindowP : Y ≤ 2 ^ e * A) (hwindowQ : Y ≤ 5 ^ f * C)
    (hupperQ : 5 ^ f * C ≤ 2 * Y)
    (hgap : |(2 : ℤ) ^ e * (A : ℤ) - (5 : ℤ) ^ f * (C : ℤ)| ≤ 24) :
    Y ^ 248 ≤ A ^ 1000 ∨ Y ^ 252 ≤ C ^ 1000 := by
  by_cases hP : Y ^ 248 ≤ A ^ 1000
  · exact Or.inl hP
  by_cases hQcofactor : Y ^ 252 ≤ C ^ 1000
  · exact Or.inr hQcofactor
  exfalso
  have hsmallP : A ^ 1000 < Y ^ 248 := Nat.lt_of_not_ge hP
  have hsmallQ : C ^ 1000 < Y ^ 252 := Nat.lt_of_not_ge hQcofactor
  let m := twoFiveIndex Y
  obtain ⟨he, hf⟩ := extract_same_index Y e f A C hY hprevious
    hrateP hbaseP hlookP hrateQ hbaseQ hlookQ hwindowP hwindowQ hsmallP hsmallQ
  change 35 * m < e at he
  change 15 * m < f at hf
  have hm : 141 ≤ m := index_ge_m0 Y hY hprevious
  have hmM : 329 ≤ m := index_ge_M Y hY hprevious
  have hAm : (48 : ℚ) < qRate BQ ^ m :=
    lt_of_lt_of_le hAbase (pow_le_pow_right₀ hAone hmM)
  have hthreshold : (4 : ℚ) * (Y : ℚ) < (twoFiveZ : ℚ) ^ m := by
    have h := leastExponent_threshold twoFiveZ Y twoFiveZ_gt_one
    change 4 * Y < twoFiveZ ^ m at h
    exact_mod_cast h
  have hWm : (4 : ℚ) * (Y : ℚ) < wRate BE ^ m :=
    lt_of_lt_of_le hthreshold (pow_le_pow_left₀ (Nat.cast_nonneg twoFiveZ) hW m)
  let V : ℕ := 5 ^ (f - 15 * m) * C
  let Nq : ℕ := 5 ^ f * C
  have hNVnat : (125 : ℕ) ^ (5 * m) * V = Nq := by
    have hpow : (125 : ℕ) ^ (5 * m) = (5 : ℕ) ^ (15 * m) := by
      calc
        _ = ((5 : ℕ) ^ 3) ^ (5 * m) := by norm_num
        _ = (5 : ℕ) ^ (15 * m) := by rw [← Nat.pow_mul]; congr 1 <;> ring
    dsimp only [V, Nq]
    rw [hpow]
    exact Math.B699.I11ActualPadeEdge.extract_prime_factor 5 f (15 * m) C (Nat.le_of_lt hf)
  have hNV : (125 : ℚ) ^ (5 * m) * (V : ℚ) = (Nq : ℚ) := by exact_mod_cast hNVnat
  have hNsmall : 2 * (Nq : ℚ) < wRate BE ^ m := by
    have hN : (Nq : ℚ) ≤ 2 * (Y : ℚ) := by exact_mod_cast hupperQ
    linarith
  obtain ⟨row, hlower⟩ := actual_integer_gap m e f A C
    (by omega) (Nat.le_of_lt he) (Nat.le_of_lt hf) hC hgap
  have hVcast : (5 : ℤ) ^ (f - 15 * m) * (C : ℤ) = (V : ℤ) := by
    dsimp only [V]
    simp only [Nat.cast_mul, Nat.cast_pow, Nat.cast_ofNat]
  have hVabs : |(5 : ℤ) ^ (f - 15 * m) * (C : ℤ)| = (V : ℤ) := by
    rw [hVcast, abs_of_nonneg (Int.natCast_nonneg V)]
  have hlow : (128 : ℤ) ^ (5 * m) ≤
      24 * |qRow m row| + |rowError m row| * (V : ℤ) := by
    simpa only [hVabs] using hlower
  have hstrict := actual_integer_gap_sum_lt m hm row BQ BE hBQ hBE
    (hQ m hm row) (hE m hm row) hAm V Nq hNV hNsmall
  exact (not_lt_of_ge hlow) hstrict

end __NS__
'''
small=(RUN/'lean/I11Scaled/SmallCertificates.lean').read_text(encoding='utf-8')
small=small.replace('import '+RP+'.lean.I11Scaled.GrowthInputs','import __EP__.GrowthInputs')
small=small.replace('import '+RP+'.lean.I11Scaled.ScaledGap','import __EP__.ScaledGap')
small=small.replace('Math.B699.I11ScaledBounds','__NS__').replace('Math.B699.I11ActualPadeEdge','Math.B699.I11TwoFivePrefix')
small=small.replace('5 3','5 4').replace('(1 / 4375)','(3 / 128)').replace('fiveThreeZ','twoFiveZ').replace('213','329')
small='\n'.join(l for l in small.splitlines() if not l.startswith('#print axioms'))+'\n'
files['SmallCertificates.lean']=small
files['FixedEdge.lean']='''import __EP__.SelectedEdge
import __EP__.SmallCertificates

/-!
UNCOMPILED. Final fixed two-five cofactor edge.
Remaining special data: four actual GrowthTrees and eight explicit finite numeric
certificates. All actual rows, Hom identities, G and scaling bounds are constructed.
-/
set_option autoImplicit false
set_option relaxedAutoImplicit false
namespace __NS__
open Math.B699.I11TwoFivePrefix Math.B699.PadeGrowthPartition Math.B699.GrowthLeaf

theorem two_five_edge_of_fixed_certificates
    (qt : ∀ row : Bool, GrowthTree qLambda (qWeight 5 4 (rowDelta row) (3 / 128))
      (qCore 5 4 (3 / 128)))
    (et : ∀ row : Bool, GrowthTree eLambda (eWeight 5 4 (rowDelta row) (3 / 128))
      (eCore 5 4 (3 / 128)))
    (hAbase : (48 : ℚ) < qRate qBase ^ 329)
    (hprevious : twoFiveZ ^ (twoFiveM - 1) ≤ 4 * twoFiveY0)
    (hrateP : 2 ^ 35000 ≤ twoFiveZ ^ 752)
    (hbaseP : (2 ^ 35000) ^ twoFiveM ≤ twoFiveY0 ^ 752)
    (hlookP : 4 ^ 752 * (2 ^ 35000) ^ (twoFiveM + 1) ≤ twoFiveZ ^ (752 * twoFiveM))
    (hrateQ : 5 ^ 15000 ≤ twoFiveZ ^ 748)
    (hbaseQ : (5 ^ 15000) ^ twoFiveM ≤ twoFiveY0 ^ 748)
    (hlookQ : 4 ^ 748 * (5 ^ 15000) ^ (twoFiveM + 1) ≤ twoFiveZ ^ (748 * twoFiveM))
    (Y e f A C : ℕ) (hY : twoFiveY0 ≤ Y) (hC : 1 ≤ C)
    (hwindowP : Y ≤ 2 ^ e * A) (hwindowQ : Y ≤ 5 ^ f * C)
    (hupperQ : 5 ^ f * C ≤ 2 * Y)
    (hgap : |(2 : ℤ) ^ e * (A : ℤ) - (5 : ℤ) ^ f * (C : ℤ)| ≤ 24) :
    Y ^ 248 ≤ A ^ 1000 ∨ Y ^ 252 ≤ C ^ 1000 := by
  obtain ⟨hQ, hE⟩ := standard_bounds_from_fixed_trees qt et
    fixed_initial_q_cap fixed_initial_e_cap
  exact edge_of_actual_growth qBase eBase
    fixed_bases_pos.2.2.1 fixed_bases_pos.2.2.2 hQ hE
    fixed_qRate_ge_one hAbase fixed_wRate_ge_Z
    hprevious hrateP hbaseP hlookP hrateQ hbaseQ hlookQ
    Y e f A C hY hC hwindowP hwindowQ hupperQ hgap

end __NS__
'''
# Preserve the combined D=3 power as a base when merging equal powers.
files['ActualRows.lean']=files['ActualRows.lean'].replace(
 '_ = ((128 : ℚ) * 3 ^ 8 * BE) ^ m := by rw [mul_pow]',
 '_ = ((128 : ℚ) * 3 ^ 8 * BE) ^ m := by rw [← mul_pow]')
write_files()
order=['Parameters','ActualRows','GrowthInputs','ScaledGap','SmallCertificates','SelectedEdge','FixedEdge']
all_roots=[];layers=[]
for name in order:
 text=(HERE/(name+'.lean')).read_text(encoding='utf-8')
 assert not re.search(r'\b(sorry|admit)\b|^\s*axiom\s',text,re.M),name
 roots=[NS+'.'+x for x in re.findall(r'^theorem (\w+)',text,re.M)]
 all_roots.extend(roots)
 audit='import '+EP+'.'+name+'\n\n'+'\n'.join('#print axioms '+x for x in roots)+'\n'
 (HERE/(name+'Audit.lean')).write_text(audit,encoding='utf-8')
 layers.append({'module':name+'.lean','audit':name+'Audit.lean','roots':roots})
definitions=[NS+'.'+x for x in ['twoFiveIndex','content','qRow','rowError','qLambda','eLambda','qRate','wRate']]
(HERE/'Audit.lean').write_text('import '+EP+'.FixedEdge\n\n'+'\n'.join('#print axioms '+x for x in all_roots+definitions)+'\n',encoding='utf-8')
(HERE/'expected-axioms.json').write_text(json.dumps({'allowed_axioms':['propext','Classical.choice','Quot.sound'],'candidate_public_theorems':all_roots,'expected_print_roots':all_roots+definitions,'status':'uncompiled candidates; no real Lean audit'},ensure_ascii=False,indent=2)+'\n',encoding='utf-8')
(HERE/'AUDIT_PLAN.json').write_text(json.dumps({'utc':datetime.now(timezone.utc).isoformat(),'layers':layers,'full_root':'Audit.lean','candidate_public_theorems':len(all_roots),'all_print_roots':len(all_roots+definitions),'not_assumed_accepted':['lean/I11TwoFive/Prefix.lean','lean/I11DivisorTwoFive/Threshold.lean'],'worker_lean_invocations':0},ensure_ascii=False,indent=2)+'\n',encoding='utf-8')
print(json.dumps({'status':'complete_actual_two_five_edge_candidate_generated_uncompiled','implementation_modules':order,'public_theorems':len(all_roots),'full_audit_roots':len(all_roots+definitions),'worker_lean_invocations':0}))

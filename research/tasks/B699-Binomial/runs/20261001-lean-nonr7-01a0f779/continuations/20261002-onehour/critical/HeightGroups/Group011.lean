import research.tasks.«B699-Binomial».runs.«20261001-lean-nonr7-01a0f779».continuations.«20261002-onehour».critical.HeightGroups.Group010
import Mathlib.Algebra.Order.Ring.Cast
set_option Elab.async false
/- Frozen member 44 research\tasks\B699-Binomial\runs\20260911-low-index-lean-513dc7cc\lean\I11TwoFiveEdge\ActualRows.lean 13c9d5d127c8f85434421742002feedb66e7f954533841fc740b0d9e7b5e931c -/
section HeightMember044





/-!
UNCOMPILED. Actual source rows, each row's own gcd, and the D=3 remainder.
Prefix and four-track G have complete proof text but separate acceptance states.
-/
set_option autoImplicit false
set_option relaxedAutoImplicit false
namespace Math.B699.I11TwoFiveScaled

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
    _ = ((128 : ℚ) * 3 ^ 8 * BE) ^ m := by rw [← mul_pow]

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

end Math.B699.I11TwoFiveScaled

end HeightMember044
/- Frozen member 45 research\tasks\B699-Binomial\runs\20260911-low-index-lean-513dc7cc\lean\I11TwoFiveEdge\ScaledGap.lean 838752980c018e7e88cd32978901b87716e718aaf9ffcdb3122aeafd599fce75 -/
section HeightMember045



/-! UNCOMPILED. Both strict gap terms follow from actual Q/E and actual G.
The E denominator retains 128*3^8. Positive cancellation uses Rat lemmas. -/
set_option autoImplicit false
set_option relaxedAutoImplicit false
namespace Math.B699.I11TwoFiveScaled

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

end Math.B699.I11TwoFiveScaled

end HeightMember045
/- Frozen member 46 research\tasks\B699-Binomial\runs\20260911-low-index-lean-513dc7cc\lean\I11TwoFiveEdge\SelectedEdge.lean 6c1befc16cc9b77d838e9355b65f8c157f8b9fbe6fa4fabe971a29aea619529a -/
section HeightMember046


/-! UNCOMPILED. Actual two-five cofactor edge, conditional on raw growth and
explicit numeric data. No actual Hom, G, determinant, or desired edge is assumed. -/
set_option autoImplicit false
set_option relaxedAutoImplicit false
namespace Math.B699.I11TwoFiveScaled
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

end Math.B699.I11TwoFiveScaled

end HeightMember046
/- Frozen member 47 research\tasks\B699-Binomial\runs\20260911-low-index-lean-513dc7cc\lean\Factorial\Factorial5D4.lean 42eba13fd4af7ba709685fbfc2877797e8de98cbca0aeba97bf9ca2d7a0771da -/
section HeightMember047


/-!
# Additional actual BFT factorial prefactor: (c,d)=(5,4)

UNCOMPILED CANDIDATE. The imported common module is accepted under the source
hashes in INPUT_SOURCES.json; this file has not been compiled or axiom-audited.
The complete actual factorial proof follows accepted Factorial3D2.lean, with
an independently computed positive-coefficient certificate for this fixed pair.
No recurrence, factorial bound, or HeightValid hypothesis is assumed.

Source: BFT author manuscript 2007-02-26, (3.1)--(3.3) and page-10 substitution;
PDF SHA256 0df18ee8d108f658812ac05d1f8947b3dcc28b70d17f268acd7c871e7e7c392c.
Only the factorial prefactor is covered. No G/theta, integral maximum, or
B699 original-index claim is made.
-/

namespace Math.B699.ElementaryFactorialBound

/-- Exact numerator after cancellation of positive endpoint factors. -/
def numerator_5_4 (m : ℚ) : ℚ :=
  (9 * m + 1) * (9 * m + 2) * (9 * m + 3) * (9 * m + 4) * (9 * m + 5) * (9 * m + 6) * (9 * m + 7) * (9 * m + 8)

def denominator_5_4 (m : ℚ) : ℚ :=
  (4 * m + 1) * (4 * m + 2) * (4 * m + 3) * (4 * m + 1) * (4 * m + 2) * (4 * m + 3)

def ratio_5_4 (m : ℚ) : ℚ :=
  9 * numerator_5_4 m /
    (1 * 4 ^ 2 * m * (m + 1) * denominator_5_4 m)

/-- All coefficients of the residual in x=m-1 are strictly positive.
The literal integer identity is a proof obligation for ring, not an input axiom. -/
theorem certificate_5_4 (x : ℚ) (hx : 0 ≤ x) :
    9 * 65536 * (x + 3) * numerator_5_4 (x + 1) ≤
      387420489 * 1 * 4 ^ 2 * (x + 2) ^ 3 * denominator_5_4 (x + 1) := by
  apply sub_nonneg.mp
  calc
    0 ≤ 5184 * (87290032200 + x * (402300498380 + x * (791641303398 + x * (862210695105 + x * (561361285764 + x * (218489584356 + x * (47072918016 + x * 4330889856))))))) := by positivity
    _ = 387420489 * 1 * 4 ^ 2 * (x + 2) ^ 3 * denominator_5_4 (x + 1) -
        9 * 65536 * (x + 3) * numerator_5_4 (x + 1) := by
      unfold numerator_5_4 denominator_5_4
      ring

theorem ratio_bound_5_4 (m : ℚ) (hm : 1 ≤ m) :
    ratio_5_4 m ≤ beta 5 4 * (m + 1) ^ 2 / (m * (m + 2)) := by
  have hmpos : 0 < m := lt_of_lt_of_le (by norm_num) hm
  have hcert := certificate_5_4 (m - 1) (sub_nonneg.mpr hm)
  have hs₁ : m - 1 + 1 = m := by ring
  have hs₂ : m - 1 + 2 = m + 1 := by ring
  have hs₃ : m - 1 + 3 = m + 2 := by ring
  simp only [hs₁, hs₂, hs₃] at hcert
  have hW : 0 < denominator_5_4 m := by
    unfold denominator_5_4
    positivity
  have hbeta : beta 5 4 = (387420489 : ℚ) / 65536 := by norm_num [beta]
  rw [hbeta]
  exact ratio_le_of_certificate (by norm_num) (by norm_num) (by norm_num)
    hmpos hW hcert

/-- The actual factorial recurrence for all k, with m=k+1.
All subtracted natural-number indices are nonnegative on this domain. -/
theorem factorial_step_zero_5_4 (k : ℕ) :
    factorialTerm 5 4 0 (k + 2) =
      factorialTerm 5 4 0 (k + 1) * ratio_5_4 ((k : ℚ) + 1) := by
  change (((9 * (k + 2)).factorial : ℕ) : ℚ) /
      (((((4 * (k + 2)).factorial : ℕ) : ℚ) ^ 2) *
        (((1 * (k + 2) - 1).factorial : ℕ) : ℚ)) =
    (((9 * (k + 1)).factorial : ℕ) : ℚ) /
      (((((4 * (k + 1)).factorial : ℕ) : ℚ) ^ 2) *
        (((1 * (k + 1) - 1).factorial : ℕ) : ℚ)) * ratio_5_4 ((k : ℚ) + 1)
  have ha : 9 * (k + 2) = 9 * (k + 1) + 9 := by omega
  have hd : 4 * (k + 2) = 4 * (k + 1) + 4 := by omega
  have hb : 1 * (k + 2) - 1 = (1 * (k + 1) - 1) + 1 := by omega
  have hp : (1 * (k + 1) - 1) + 1 = 1 * (k + 1) := by omega
  rw [ha, hd, hb, factorial_add_cast (9 * (k + 1)) 9,
    factorial_add_cast (4 * (k + 1)) 4,
    factorial_add_cast (1 * (k + 1) - 1) 1, hp]
  simp only [Nat.ascFactorial_succ, Nat.ascFactorial_zero,
    Nat.cast_mul, Nat.cast_add, Nat.cast_one, Nat.cast_ofNat]
  unfold ratio_5_4 numerator_5_4 denominator_5_4
  field_simp
  <;> ring

theorem factorial_step_bound_zero_5_4 (m : ℕ) (hm : 1 ≤ m) :
    factorialTerm 5 4 0 (m + 1) ≤ factorialTerm 5 4 0 m *
      (beta 5 4 * ((m : ℚ) + 1) ^ 2 / ((m : ℚ) * (m + 2))) := by
  obtain ⟨k, rfl⟩ : ∃ k, m = k + 1 := Nat.exists_eq_add_of_le' hm
  rw [factorial_step_zero_5_4]
  have hk : 0 ≤ (k : ℚ) := Nat.cast_nonneg k
  have hratio := ratio_bound_5_4 ((k : ℚ) + 1) (by linarith)
  have hmul := mul_le_mul_of_nonneg_left hratio (factorialTerm_pos 5 4 0 (k + 1)).le
  simpa only [Nat.cast_add, Nat.cast_one] using hmul

theorem factorial_step_bound_5_4 (delta m : ℕ)
    (hdelta : delta = 0 ∨ delta = 1) (hm : 1 ≤ m) :
    factorialTerm 5 4 delta (m + 1) ≤ factorialTerm 5 4 delta m *
      (beta 5 4 * ((m : ℚ) + 1) ^ 2 / ((m : ℚ) * (m + 2))) := by
  rcases hdelta with rfl | rfl
  · exact factorial_step_bound_zero_5_4 m hm
  · rw [factorial_delta_one_eq 5 4 (m + 1) (by norm_num) (by norm_num) (by omega),
      factorial_delta_one_eq 5 4 m (by norm_num) (by norm_num) (by omega)]
    have hmul := mul_le_mul_of_nonneg_left (factorial_step_bound_zero_5_4 m hm)
      (show (0 : ℚ) ≤ (4 : ℚ) ^ 2 / ((9 : ℚ) * (1 : ℚ)) by norm_num)
    convert hmul using 1 <;> norm_num [mul_assoc] <;> rfl

/-- The requested precise telescoping bound for the actual factorial term. -/
theorem factorial_telescoping_5_4 (delta m : ℕ)
    (hdelta : delta = 0 ∨ delta = 1) (hm : 1 ≤ m) :
    factorialTerm 5 4 delta m ≤
      (2 * factorialTerm 5 4 delta 1 / beta 5 4) *
        beta 5 4 ^ m * (m : ℚ) / ((m : ℚ) + 1) := by
  exact telescoping_bound_from_step (by norm_num [beta])
    (fun n hn => factorial_step_bound_5_4 delta n hdelta hn) hm

/-- A convenient single rational constant for both deltas: F_m < beta^m/2.
The exact K=2*F_1/beta constants were independently checked to be <1/2. -/
theorem factorial_uniform_5_4 (delta m : ℕ)
    (hdelta : delta = 0 ∨ delta = 1) (hm : 1 ≤ m) :
    factorialTerm 5 4 delta m < (1 / 2 : ℚ) * beta 5 4 ^ m := by
  have hbeta : 0 < beta 5 4 := by norm_num [beta]
  have hK : 2 * factorialTerm 5 4 delta 1 / beta 5 4 < (1 / 2 : ℚ) := by
    rcases hdelta with rfl | rfl <;> norm_num [factorialTerm, beta, Nat.factorial]
  have hbound := strict_bound_from_step hbeta (factorialTerm_pos 5 4 delta 1)
    (fun n hn => factorial_step_bound_5_4 delta n hdelta hn) hm
  exact lt_of_lt_of_le hbound (mul_le_mul_of_nonneg_right hK.le (pow_pos hbeta m).le)

/-- Both actual initial constants are recorded separately.
There is no assumption that the delta=1 constant is smaller. -/
theorem factorial_initial_constants_5_4 :
    2 * factorialTerm 5 4 0 1 / beta 5 4 = (9175040 : ℚ) / 43046721 ∧
    2 * factorialTerm 5 4 1 1 / beta 5 4 = (146800640 : ℚ) / 387420489 := by
  norm_num [factorialTerm, beta, Nat.factorial]

/-- Tight K_delta bound for the downstream Q/E growth constants. -/
theorem factorial_strict_k_5_4 (delta m : ℕ)
    (hdelta : delta = 0 ∨ delta = 1) (hm : 1 ≤ m) :
    factorialTerm 5 4 delta m <
      (2 * factorialTerm 5 4 delta 1 / beta 5 4) * beta 5 4 ^ m := by
  exact strict_bound_from_step (by norm_num [beta]) (factorialTerm_pos 5 4 delta 1)
    (fun n hn => factorial_step_bound_5_4 delta n hdelta hn) hm

/-- The middle envelope itself is strictly below beta^m/2. -/
theorem factorial_envelope_lt_half_5_4 (delta m : ℕ)
    (hdelta : delta = 0 ∨ delta = 1) (hm : 1 ≤ m) :
    (2 * factorialTerm 5 4 delta 1 / beta 5 4) *
        beta 5 4 ^ m * (m : ℚ) / ((m : ℚ) + 1) < (1 / 2 : ℚ) * beta 5 4 ^ m := by
  have hbeta : 0 < beta 5 4 := by norm_num [beta]
  have hK : 2 * factorialTerm 5 4 delta 1 / beta 5 4 < (1 / 2 : ℚ) := by
    rcases hdelta with rfl | rfl <;> norm_num [factorialTerm, beta, Nat.factorial]
  have hF : 0 < factorialTerm 5 4 delta 1 := factorialTerm_pos 5 4 delta 1
  have hmQ : 0 < (m : ℚ) := Nat.cast_pos.mpr (by omega)
  have hpos : 0 < (2 * factorialTerm 5 4 delta 1 / beta 5 4) * beta 5 4 ^ m := by
    positivity
  calc
    _ < (2 * factorialTerm 5 4 delta 1 / beta 5 4) * beta 5 4 ^ m := by
      apply (div_lt_iff₀ (show 0 < (m : ℚ) + 1 by positivity)).2
      nlinarith
    _ < (1 / 2 : ℚ) * beta 5 4 ^ m := mul_lt_mul_of_pos_right hK (pow_pos hbeta m)

/-- The requested complete strengthened bound for every m>=1 and both deltas. -/
theorem factorial_full_bound_5_4 (delta m : ℕ)
    (hdelta : delta = 0 ∨ delta = 1) (hm : 1 ≤ m) :
    factorialTerm 5 4 delta m ≤
        (2 * factorialTerm 5 4 delta 1 / beta 5 4) *
          beta 5 4 ^ m * (m : ℚ) / ((m : ℚ) + 1) ∧
      (2 * factorialTerm 5 4 delta 1 / beta 5 4) *
        beta 5 4 ^ m * (m : ℚ) / ((m : ℚ) + 1) < (1 / 2 : ℚ) * beta 5 4 ^ m := by
  exact ⟨factorial_telescoping_5_4 delta m hdelta hm,
    factorial_envelope_lt_half_5_4 delta m hdelta hm⟩

#print axioms Math.B699.ElementaryFactorialBound.certificate_5_4
#print axioms Math.B699.ElementaryFactorialBound.ratio_bound_5_4
#print axioms Math.B699.ElementaryFactorialBound.factorial_step_zero_5_4
#print axioms Math.B699.ElementaryFactorialBound.factorial_step_bound_zero_5_4
#print axioms Math.B699.ElementaryFactorialBound.factorial_step_bound_5_4
#print axioms Math.B699.ElementaryFactorialBound.factorial_telescoping_5_4
#print axioms Math.B699.ElementaryFactorialBound.factorial_uniform_5_4
#print axioms Math.B699.ElementaryFactorialBound.factorial_initial_constants_5_4
#print axioms Math.B699.ElementaryFactorialBound.factorial_strict_k_5_4
#print axioms Math.B699.ElementaryFactorialBound.factorial_envelope_lt_half_5_4
#print axioms Math.B699.ElementaryFactorialBound.factorial_full_bound_5_4

end Math.B699.ElementaryFactorialBound

end HeightMember047

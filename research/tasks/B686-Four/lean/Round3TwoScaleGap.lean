import Mathlib.Tactic.Ring
import Mathlib.Tactic.NormNum

/-!
Round 3 of B686 / Four: a signed-remainder square-gap criterion.

This is a value-level criterion for the polynomial-part/low-degree-remainder
argument. It does not assert that every even k has no solution: the explicit
threshold and its finite remainder are separate obligations.

No original conjecture or source placeholder is imported.
-/

namespace B686Round3TwoScaleGap

theorem intervals_of_small_signed_remainder (a w e : ℤ)
    (ha : 1 ≤ a) (hid : a ^ 2 = w + e)
    (helo : -a < 3 * e) (hehi : 3 * e < a) :
    (3 * a - 1) ^ 2 < 9 * w ∧ 9 * w < (3 * a + 1) ^ 2 := by
  have hw : w = a ^ 2 - e := by omega
  have hlo : 9 * w - (3 * a - 1) ^ 2 = 6 * a - 1 - 9 * e := by
    rw [hw]
    ring
  have hhi : (3 * a + 1) ^ 2 - 9 * w = 6 * a + 1 + 9 * e := by
    rw [hw]
    ring
  constructor <;> omega

theorem doubling_of_square_intervals (an am wn wm : ℤ)
    (han : 1 ≤ an) (ham : 1 ≤ am)
    (hnlo : (3 * an - 1) ^ 2 < 9 * wn)
    (hnhi : 9 * wn < (3 * an + 1) ^ 2)
    (hmlo : (3 * am - 1) ^ 2 < 9 * wm)
    (hmhi : 9 * wm < (3 * am + 1) ^ 2)
    (heq : wm = 4 * wn) : am = 2 * an := by
  by_contra hne
  have hcases : am ≤ 2 * an - 1 ∨ 2 * an + 1 ≤ am := by omega
  rcases hcases with hleft | hright
  · have hle : 3 * am + 1 ≤ 2 * (3 * an - 1) := by omega
    have hs := pow_le_pow_left₀ (by omega : 0 ≤ 3 * am + 1) hle 2
    have hr : (2 * (3 * an - 1)) ^ 2 = 4 * (3 * an - 1) ^ 2 := by ring
    omega
  · have hle : 2 * (3 * an + 1) ≤ 3 * am - 1 := by omega
    have hs := pow_le_pow_left₀ (by omega : 0 ≤ 2 * (3 * an + 1)) hle 2
    have hr : (2 * (3 * an + 1)) ^ 2 = 4 * (3 * an + 1) ^ 2 := by ring
    omega

theorem simultaneous_scaling_of_small_remainders (an am wn wm en em : ℤ)
    (han : 1 ≤ an) (ham : 1 ≤ am)
    (hin : an ^ 2 = wn + en) (him : am ^ 2 = wm + em)
    (hnlo : -an < 3 * en) (hnhi : 3 * en < an)
    (hmlo : -am < 3 * em) (hmhi : 3 * em < am)
    (heq : wm = 4 * wn) : am = 2 * an ∧ em = 4 * en := by
  obtain ⟨hnl, hnh⟩ := intervals_of_small_signed_remainder an wn en han hin hnlo hnhi
  obtain ⟨hml, hmh⟩ := intervals_of_small_signed_remainder am wm em ham him hmlo hmhi
  have hd := doubling_of_square_intervals an am wn wm han ham hnl hnh hml hmh heq
  refine ⟨hd, ?_⟩
  have hs : am ^ 2 = 4 * an ^ 2 := by rw [hd]; ring
  omega

/-- Leading terms with relative error at most 1/8 cannot scale by 2 and 4
simultaneously when the second leading term grows no faster than the first. -/
theorem dominant_terms_incompatible
    (an am en em xn xm yn ym : ℤ)
    (hxn : 0 < xn) (hyn : 0 < yn)
    (hanhi : 8 * an ≤ 9 * xn) (hamlo : 7 * xm ≤ 8 * am)
    (henlo : 7 * yn ≤ 8 * en) (hemhi : 8 * em ≤ 9 * ym)
    (hdegree : ym * xn ≤ xm * yn)
    (hdouble : am = 2 * an) (hquad : em = 4 * en) : False := by
  have hroot : 7 * xm ≤ 18 * xn := by omega
  have hrem : 28 * yn ≤ 9 * ym := by omega
  have hroot' : 7 * (xm * yn) ≤ 18 * (xn * yn) := by
    have h := mul_le_mul_of_nonneg_right hroot (le_of_lt hyn)
    calc
      7 * (xm * yn) = (7 * xm) * yn := by ring
      _ ≤ (18 * xn) * yn := h
      _ = 18 * (xn * yn) := by ring
  have hrem' : 28 * (xn * yn) ≤ 9 * (xm * yn) := by
    calc
      28 * (xn * yn) = (28 * yn) * xn := by ring
      _ ≤ (9 * ym) * xn := mul_le_mul_of_nonneg_right hrem (le_of_lt hxn)
      _ = 9 * (ym * xn) := by ring
      _ ≤ 9 * (xm * yn) := mul_le_mul_of_nonneg_left hdegree (by decide)
  have hp : 0 < xn * yn := mul_pos hxn hyn
  omega

theorem power_growth (n m : ℤ) (d r : ℕ)
    (hn : 0 ≤ n) (hnm : n ≤ m) (hdr : d ≤ r) :
    m ^ d * n ^ r ≤ m ^ r * n ^ d := by
  obtain ⟨e, rfl⟩ := Nat.exists_eq_add_of_le hdr
  have hm : 0 ≤ m := le_trans hn hnm
  have hpow : n ^ e ≤ m ^ e := pow_le_pow_left₀ hn hnm e
  have hfactor : 0 ≤ m ^ d * n ^ d :=
    mul_nonneg (pow_nonneg hm d) (pow_nonneg hn d)
  calc
    m ^ d * n ^ (d + e) = (m ^ d * n ^ d) * n ^ e := by rw [pow_add]; ring
    _ ≤ (m ^ d * n ^ d) * m ^ e := mul_le_mul_of_nonneg_left hpow hfactor
    _ = m ^ (d + e) * n ^ d := by rw [pow_add]; ring

theorem not_four_of_two_scales
    (an am wn wm en em xn xm yn ym : ℤ)
    (han : 1 ≤ an) (ham : 1 ≤ am)
    (hin : an ^ 2 = wn + en) (him : am ^ 2 = wm + em)
    (hnlo : -an < 3 * en) (hnhi : 3 * en < an)
    (hmlo : -am < 3 * em) (hmhi : 3 * em < am)
    (hxn : 0 < xn) (hyn : 0 < yn)
    (hanhi : 8 * an ≤ 9 * xn) (hamlo : 7 * xm ≤ 8 * am)
    (henlo : 7 * yn ≤ 8 * |en|) (hemhi : 8 * |em| ≤ 9 * ym)
    (hdegree : ym * xn ≤ xm * yn) : wm ≠ 4 * wn := by
  intro heq
  obtain ⟨hd, hq⟩ := simultaneous_scaling_of_small_remainders an am wn wm en em
    han ham hin him hnlo hnhi hmlo hmhi heq
  have hqa : |em| = 4 * |en| := by
    rw [hq]
    by_cases h : 0 ≤ en
    · rw [abs_of_nonneg h, abs_of_nonneg (by omega : 0 ≤ 4 * en)]
    · rw [abs_of_neg (by omega : en < 0), abs_of_neg (by omega : 4 * en < 0)]
      ring
  exact dominant_terms_incompatible an am |en| |em| xn xm yn ym hxn hyn
    hanhi hamlo henlo hemhi hdegree hd hqa

/-- info: 'B686Round3TwoScaleGap.intervals_of_small_signed_remainder' depends on axioms: [propext, Quot.sound] -/
#guard_msgs in
#print axioms intervals_of_small_signed_remainder
/-- info: 'B686Round3TwoScaleGap.doubling_of_square_intervals' depends on axioms: [propext, Classical.choice, Quot.sound] -/
#guard_msgs in
#print axioms doubling_of_square_intervals
/-- info: 'B686Round3TwoScaleGap.simultaneous_scaling_of_small_remainders' depends on axioms: [propext,
 Classical.choice,
 Quot.sound] -/
#guard_msgs in
#print axioms simultaneous_scaling_of_small_remainders
/-- info: 'B686Round3TwoScaleGap.dominant_terms_incompatible' depends on axioms: [propext, Classical.choice, Quot.sound] -/
#guard_msgs in
#print axioms dominant_terms_incompatible
/-- info: 'B686Round3TwoScaleGap.power_growth' depends on axioms: [propext, Classical.choice, Quot.sound] -/
#guard_msgs in
#print axioms power_growth
/-- info: 'B686Round3TwoScaleGap.not_four_of_two_scales' depends on axioms: [propext, Classical.choice, Quot.sound] -/
#guard_msgs in
#print axioms not_four_of_two_scales

end B686Round3TwoScaleGap

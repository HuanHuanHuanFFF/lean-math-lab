import research.tasks.«B699-Binomial».runs.«20261001-lean-nonr7-01a0f779».critical.PilotConsumers
import research.tasks.«B699-Binomial».runs.«20261001-lean-nonr7-01a0f779».continuations.«20261002-onehour».critical.Denominator
import research.tasks.«B699-Binomial».runs.«20261001-lean-nonr7-01a0f779».continuations.«20261002-onehour».critical.Resonance

set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option Elab.async false

namespace Math.B699.CriticalWindowLog
open Math.B699.CriticalM64Windows Math.B699.ZeroBoundaryWindowLog
open Math.B699.ZeroBoundaryLogSeparation

/-- Uniform terminal height conversion used by every nonresonant certificate.
It is a conditional certificate consumer, not a full 55-pair coverage assertion. -/
theorem actual_nonresonant_certificate_height {n i p q a b A B : ℕ}
    {d : NonresonantData} (hn : 4096 < n) (hi34 : i ≤ 34)
    (hdata : M64PairData n i p q a b A B)
    (hx : fullExponent n i p ≤ 15359)
    (hc : nonresonantCheck M0 (1 / 100) d = true)
    (ha : (d.approx.alphaLower : ℝ) ≤ Real.log p / Real.log q ∧
      Real.log p / Real.log q ≤ (d.approx.alphaUpper : ℝ))
    (hb : (d.betaLower : ℝ) ≤ (Real.log A - Real.log B) / Real.log q ∧
      (Real.log A - Real.log B) / Real.log q ≤ (d.betaUpper : ℝ)) :
    (n : ℤ) < 25600 * d.approx.v := by
  have hchecker : approximationCheck d.approx = true ∧ 0 < (1 / 100 : ℚ) ∧
      d.betaLower ≤ d.betaUpper ∧
      (d.lowerInteger : ℚ) + d.gap ≤ (d.approx.v : ℚ) * d.betaLower ∧
      (d.approx.v : ℚ) * d.betaUpper ≤ (d.lowerInteger : ℚ) + 1 - d.gap ∧
      (M0 : ℚ) * d.approx.error + 1 / 100 ≤ d.gap := of_decide_eq_true hc
  have hv := (approximationCheck_sound hchecker.1 ha).1
  obtain ⟨hp, _, hq, _, _, hP, hQ, hab, _, _, _⟩ := hdata
  obtain ⟨haOffset, hA, _, _, _, hfirst⟩ := hP
  obtain ⟨hbOffset, hB, _, _, _, hsecond⟩ := hQ
  have hlocal := (actual_linear_form_bounds hn (haOffset.trans_le hi34)
    (hbOffset.trans_le hi34) hab hA hB hp hq hfirst hsecond).2.2
  have hsep := nonresonantCheck_sound hc ha hb
    (fullExponent n i p : ℤ) (fullExponent n i q : ℤ) (fullExponent_fits_pilot hx)
  have hsepR : (1 : ℝ) / 100 ≤ (d.approx.v : ℝ) *
      |((fullExponent n i p : ℤ) : ℝ) * (Real.log p / Real.log q) -
        ((fullExponent n i q : ℤ) : ℝ) + (Real.log A - Real.log B) / Real.log q| := by
    simpa only [Rat.cast_div, Rat.cast_one, Rat.cast_ofNat] using hsep
  have hl := half_lt_log_prime hq
  have hscaled := scaled_separation hv hl (by norm_num : (0 : ℝ) < 1 / 100) hsepR
  have hqne : Real.log (q : ℝ) ≠ 0 := ne_of_gt (by linarith [hl])
  have hform := normalized_form_eq (lp := Real.log p) (lq := Real.log q)
    (lb := Real.log A - Real.log B) (fullExponent n i p : ℤ)
    (fullExponent n i q : ℤ) hqne
  rw [hform] at hscaled
  simp only [Int.cast_natCast] at hscaled
  have hquot : ((1 : ℝ) / 100) / (2 * (d.approx.v : ℝ)) < 128 / (n : ℝ) :=
    hscaled.trans hlocal
  have hnpos : (0 : ℝ) < (n : ℝ) := by exact_mod_cast (show 0 < n by omega)
  have hcross := (div_lt_div_iff₀ (mul_pos (by norm_num : (0 : ℝ) < 2) hv) hnpos).mp hquot
  have hbound : (n : ℝ) < 25600 * (d.approx.v : ℝ) := by nlinarith
  exact_mod_cast hbound

/-- The uniform resonant branch includes signed absorption and excludes the zero
pair using the actual different windows. Finite table coverage is still separate. -/
theorem actual_resonant_certificate_height {n i p q a b A B : ℕ}
    {d : Approximation} {r s : ℤ} (hn : 4096 < n) (hi34 : i ≤ 34)
    (hdata : M64PairData n i p q a b A B)
    (hx : fullExponent n i p ≤ 15359) (hy : fullExponent n i q ≤ 15359)
    (hidentity : resonanceIdentityCheck A B p q r s = true)
    (hc : resonantCheck M0 d = true)
    (ha : (d.alphaLower : ℝ) ≤ Real.log p / Real.log q ∧
      Real.log p / Real.log q ≤ (d.alphaUpper : ℝ)) :
    (n : ℤ) < 512 * d.v := by
  have hchecker : approximationCheck d = true ∧ Int.gcd d.u d.v = 1 ∧
      (M0 : ℤ) < d.v ∧ (M0 : ℚ) * d.error < 1 / 2 := of_decide_eq_true hc
  have hv := (approximationCheck_sound hchecker.1 ha).1
  obtain ⟨hp, _, hq, _, _, hP, hQ, hab, _, _, _⟩ := hdata
  obtain ⟨haOffset, hA, _, _, _, hfirst⟩ := hP
  obtain ⟨hbOffset, hB, _, _, _, hsecond⟩ := hQ
  have hbounds := actual_linear_form_bounds hn (haOffset.trans_le hi34)
    (hbOffset.trans_le hi34) hab hA hB hp hq hfirst hsecond
  have hshift := resonance_shifted_linear_form hidentity
    (fullExponent n i p) (fullExponent n i q)
  have hbudget := resonance_full_shift_fits_old_budget hidentity hx hy
  have hxy : ¬ ((fullExponent n i p : ℤ) + r = 0 ∧
      (fullExponent n i q : ℤ) - s = 0) := by
    rintro ⟨hx0, hy0⟩
    have hzero : linearForm A B p q (fullExponent n i p) (fullExponent n i q) = 0 := by
      rw [hshift, hx0, hy0]
      norm_num
    have hnonzero : linearForm A B p q (fullExponent n i p) (fullExponent n i q) ≠ 0 :=
      abs_pos.mp (by simpa only [linearForm] using hbounds.1)
    exact hnonzero hzero
  have hsep := resonantCheck_sound hc ha ((fullExponent n i p : ℤ) + r)
    ((fullExponent n i q : ℤ) - s) hbudget.1 hxy
  have hl := half_lt_log_prime hq
  have hscaled := scaled_separation hv hl (by norm_num : (0 : ℝ) < 1 / 2) hsep.le
  have hqne : Real.log (q : ℝ) ≠ 0 := ne_of_gt (by linarith [hl])
  have hform := normalized_form_eq (lp := Real.log p) (lq := Real.log q) (lb := 0)
    ((fullExponent n i p : ℤ) + r) ((fullExponent n i q : ℤ) - s) hqne
  simp only [zero_div, add_zero, zero_add] at hform
  rw [hform, ← hshift] at hscaled
  unfold linearForm at hscaled
  have hquot : ((1 : ℝ) / 2) / (2 * (d.v : ℝ)) < 128 / (n : ℝ) :=
    hscaled.trans hbounds.2.2
  have hnpos : (0 : ℝ) < (n : ℝ) := by exact_mod_cast (show 0 < n by omega)
  have hcross := (div_lt_div_iff₀ (mul_pos (by norm_num : (0 : ℝ) < 2) hv) hnpos).mp hquot
  have hbound : (n : ℝ) < 512 * (d.v : ℝ) := by nlinarith
  exact_mod_cast hbound

end Math.B699.CriticalWindowLog

#print axioms Math.B699.CriticalWindowLog.actual_nonresonant_certificate_height
#print axioms Math.B699.CriticalWindowLog.actual_resonant_certificate_height

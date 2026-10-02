import research.tasks.«B699-Binomial».runs.«20261001-lean-nonr7-01a0f779».critical.WindowConsumers
import research.tasks.«B699-Binomial».runs.«20261001-lean-nonr7-01a0f779».critical.ZeroBoundaryLogSeparation.Pilots

set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option Elab.async false

namespace Math.B699.CriticalWindowLog
open Math.B699.CriticalM64Windows Math.B699.ZeroBoundaryWindowLog
open Math.B699.ZeroBoundaryLogSeparation

theorem fullExponent_fits_pilot {n i p : ℕ} (hx : fullExponent n i p ≤ 15359) :
    |(fullExponent n i p : ℤ)| ≤ (M0 : ℤ) := by
  have hM : 15359 ≤ M0 := by norm_num [M0]
  have h : fullExponent n i p ≤ M0 := hx.trans hM
  exact_mod_cast h

/-- This fixed old certificate position bounds an actual complete-window pair.
It does not assert that every possible coefficient ratio equals five. -/
theorem actual_pair23_ratio_five_small_n {n i a b : ℕ}
    (hn : 4096 < n) (hi34 : i ≤ 34)
    (hdata : M64PairData n i 2 3 a b 5 1)
    (hx : fullExponent n i 2 ≤ 15359) :
    n < 25600 * 9881527843552324 := by
  obtain ⟨hp, _, hq, _, _, hP, hQ, hab, _, _, _⟩ := hdata
  obtain ⟨ha, hA, _, _, _, hfirst⟩ := hP
  obtain ⟨hb, hB, _, _, _, hsecond⟩ := hQ
  have hlocal := (actual_linear_form_bounds hn (ha.trans_le hi34) (hb.trans_le hi34)
    hab hA hB hp hq hfirst hsecond).2.2
  have hseparation := pilot_five_linear_form
    (fullExponent n i 2 : ℤ) (fullExponent n i 3 : ℤ) (fullExponent_fits_pilot hx)
  simp only [Nat.cast_ofNat, Nat.cast_one, Real.log_one, sub_zero,
    Int.cast_natCast] at hlocal hseparation
  have hqbound : (1 : ℝ) / (200 * 9881527843552324) < 128 / (n : ℝ) :=
    hseparation.trans hlocal
  have hnpos : (0 : ℝ) < (n : ℝ) := by exact_mod_cast (show 0 < n by omega)
  have hcross := (div_lt_div_iff₀ (by norm_num : (0 : ℝ) < 200 * 9881527843552324)
    hnpos).mp hqbound
  norm_num at hcross
  exact_mod_cast hcross

/-- The resonant A=B=1 position retains the zero-pair exclusion derived from
the actual different offsets, rather than adding it as a premise. -/
theorem actual_pair23_ratio_one_small_n {n i a b : ℕ}
    (hn : 4096 < n) (hi34 : i ≤ 34)
    (hdata : M64PairData n i 2 3 a b 1 1)
    (hx : fullExponent n i 2 ≤ 15359) :
    n < 512 * 9881527843552324 := by
  obtain ⟨hp, _, hq, _, _, hP, hQ, hab, _, _, _⟩ := hdata
  obtain ⟨ha, hA, _, _, _, hfirst⟩ := hP
  obtain ⟨hb, hB, _, _, _, hsecond⟩ := hQ
  have hbounds := actual_linear_form_bounds hn (ha.trans_le hi34) (hb.trans_le hi34)
    hab hA hB hp hq hfirst hsecond
  simp only [Real.log_one, sub_self, zero_add] at hbounds
  have hxy : ¬ ((fullExponent n i 2 : ℤ) = 0 ∧ (fullExponent n i 3 : ℤ) = 0) := by
    rintro ⟨hx0, hy0⟩
    have hxN : fullExponent n i 2 = 0 := by exact_mod_cast hx0
    have hyN : fullExponent n i 3 = 0 := by exact_mod_cast hy0
    simp [hxN, hyN] at hbounds
  have hseparation := pilot_one_linear_form
    (fullExponent n i 2 : ℤ) (fullExponent n i 3 : ℤ) (fullExponent_fits_pilot hx) hxy
  simp only [Int.cast_natCast] at hseparation
  have hqbound : (1 : ℝ) / (4 * 9881527843552324) < 128 / (n : ℝ) :=
    hseparation.trans hbounds.2.2
  have hnpos : (0 : ℝ) < (n : ℝ) := by exact_mod_cast (show 0 < n by omega)
  have hcross := (div_lt_div_iff₀ (by norm_num : (0 : ℝ) < 4 * 9881527843552324)
    hnpos).mp hqbound
  norm_num at hcross
  exact_mod_cast hcross

end Math.B699.CriticalWindowLog

#print axioms Math.B699.CriticalWindowLog.fullExponent_fits_pilot
#print axioms Math.B699.CriticalWindowLog.actual_pair23_ratio_five_small_n
#print axioms Math.B699.CriticalWindowLog.actual_pair23_ratio_one_small_n

import Mathlib.Tactic.FieldSimp
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».experiments.«huan-zero-log-separation-5e2d13bb».lean.ZeroBoundaryLogSeparation.Basic

set_option autoImplicit false
set_option relaxedAutoImplicit false

namespace Math.B699.ZeroBoundaryLogSeparation

/-- Four cross-products certify a quotient box even when either endpoint is negative.
There is no trust in a floating-point division or the sign of the numerator. -/
def quotientBoxCheck (nlo nhi dlo dhi qlo qhi : ℚ) : Bool :=
  decide (0 < dlo ∧ qlo * dlo ≤ nlo ∧ qlo * dhi ≤ nlo ∧
    nhi ≤ qhi * dlo ∧ nhi ≤ qhi * dhi)

theorem quotientBoxCheck_sound {nlo nhi dlo dhi qlo qhi : ℚ} {a b : ℝ}
    (hc : quotientBoxCheck nlo nhi dlo dhi qlo qhi = true)
    (ha : (nlo : ℝ) ≤ a ∧ a ≤ (nhi : ℝ))
    (hb : (dlo : ℝ) ≤ b ∧ b ≤ (dhi : ℝ)) :
    (qlo : ℝ) ≤ a / b ∧ a / b ≤ (qhi : ℝ) := by
  have hp : 0 < dlo ∧ qlo * dlo ≤ nlo ∧ qlo * dhi ≤ nlo ∧
      nhi ≤ qhi * dlo ∧ nhi ≤ qhi * dhi := of_decide_eq_true hc
  rcases hp with ⟨hd, hlL, hlH, hhL, hhH⟩
  have hdR : 0 < (dlo : ℝ) := by exact_mod_cast hd
  have hbpos : 0 < b := hdR.trans_le hb.1
  have hlLR : (qlo : ℝ) * (dlo : ℝ) ≤ (nlo : ℝ) := by exact_mod_cast hlL
  have hlHR : (qlo : ℝ) * (dhi : ℝ) ≤ (nlo : ℝ) := by exact_mod_cast hlH
  have hhLR : (nhi : ℝ) ≤ (qhi : ℝ) * (dlo : ℝ) := by exact_mod_cast hhL
  have hhHR : (nhi : ℝ) ≤ (qhi : ℝ) * (dhi : ℝ) := by exact_mod_cast hhH
  constructor
  · apply (le_div_iff₀ hbpos).mpr
    have hl : (qlo : ℝ) * b ≤ (nlo : ℝ) := by
      by_cases hq : 0 ≤ (qlo : ℝ)
      · exact (mul_le_mul_of_nonneg_left hb.2 hq).trans hlHR
      · exact (mul_le_mul_of_nonpos_left hb.1 (le_of_not_ge hq)).trans hlLR
    exact hl.trans ha.1
  · apply (div_le_iff₀ hbpos).mpr
    have hh : (nhi : ℝ) ≤ (qhi : ℝ) * b := by
      by_cases hq : 0 ≤ (qhi : ℝ)
      · exact hhLR.trans (mul_le_mul_of_nonneg_left hb.1 hq)
      · exact hhHR.trans (mul_le_mul_of_nonpos_left hb.2 (le_of_not_ge hq))
    exact ha.2.trans hh

/-- Strict log(q) > 1/2 preserves a strict final endpoint from a weak distance bound. -/
theorem scaled_separation {v l epsilon z : ℝ}
    (hv : 0 < v) (hl : 1 / 2 < l) (he : 0 < epsilon)
    (hsep : epsilon ≤ v * |z|) :
    epsilon / (2 * v) < |l * z| := by
  have hlpos : 0 < l := by linarith
  have hzpos : 0 < |z| := by
    by_contra hz
    have hz0 : |z| = 0 := le_antisymm (le_of_not_gt hz) (abs_nonneg _)
    rw [hz0, mul_zero] at hsep
    linarith
  have hmul := mul_lt_mul_of_pos_left (mul_lt_mul_of_pos_right hl hzpos) hv
  rw [abs_mul, abs_of_pos hlpos]
  apply (div_lt_iff₀ (mul_pos (by norm_num : (0 : ℝ) < 2) hv)).mpr
  nlinarith

theorem normalized_form_eq {lp lq lb : ℝ} (x y : ℤ) (hq : lq ≠ 0) :
    lq * ((x : ℝ) * (lp / lq) - y + lb / lq) =
      lb + (x : ℝ) * lp - (y : ℝ) * lq := by
  field_simp [hq]
  <;> ring

/-- The X = 0, Y != 0 branch forces the original local-height parameter below 256.
The separate window/log bridge must supply the stated local upper bound. -/
theorem zero_first_coordinate_small_n {n : ℕ} {l alpha : ℝ} {y : ℤ}
    (hn : 0 < n) (hl : 1 / 2 < l) (hy : y ≠ 0)
    (hlocal : |l * ((0 : ℝ) * alpha - (y : ℝ))| < 128 / (n : ℝ)) :
    n < 256 := by
  have hnR : (0 : ℝ) < (n : ℝ) := by exact_mod_cast hn
  have hlpos : 0 < l := by linarith
  have hnorm := zero_first_coordinate_separation alpha hy
  have hlarge : l ≤ |l * ((0 : ℝ) * alpha - (y : ℝ))| := by
    rw [abs_mul, abs_of_pos hlpos]
    simpa using mul_le_mul_of_nonneg_left hnorm hlpos.le
  have hhalf : (1 : ℝ) / 2 < 128 / (n : ℝ) := (hl.trans_le hlarge).trans hlocal
  have hprod : (1 : ℝ) / 2 * (n : ℝ) < 128 := (lt_div_iff₀ hnR).mp hhalf
  have hnlt : (n : ℝ) < 256 := by nlinarith
  exact_mod_cast hnlt
end Math.B699.ZeroBoundaryLogSeparation

#check (Math.B699.ZeroBoundaryLogSeparation.quotientBoxCheck_sound :
  ∀ {nlo nhi dlo dhi qlo qhi : ℚ} {a b : ℝ},
    Math.B699.ZeroBoundaryLogSeparation.quotientBoxCheck nlo nhi dlo dhi qlo qhi = true →
    ((nlo : ℝ) ≤ a ∧ a ≤ (nhi : ℝ)) →
    ((dlo : ℝ) ≤ b ∧ b ≤ (dhi : ℝ)) →
    (qlo : ℝ) ≤ a / b ∧ a / b ≤ (qhi : ℝ))
#check (Math.B699.ZeroBoundaryLogSeparation.scaled_separation :
  ∀ {v l epsilon z : ℝ}, 0 < v → 1 / 2 < l → 0 < epsilon →
    epsilon ≤ v * |z| → epsilon / (2 * v) < |l * z|)
#check (Math.B699.ZeroBoundaryLogSeparation.normalized_form_eq :
  ∀ {lp lq lb : ℝ} (x y : ℤ), lq ≠ 0 →
    lq * ((x : ℝ) * (lp / lq) - y + lb / lq) =
      lb + (x : ℝ) * lp - (y : ℝ) * lq)
#print axioms Math.B699.ZeroBoundaryLogSeparation.quotientBoxCheck_sound
#print axioms Math.B699.ZeroBoundaryLogSeparation.scaled_separation
#print axioms Math.B699.ZeroBoundaryLogSeparation.normalized_form_eq
#check (Math.B699.ZeroBoundaryLogSeparation.zero_first_coordinate_small_n :
  ∀ {n : ℕ} {l alpha : ℝ} {y : ℤ}, 0 < n → 1 / 2 < l → y ≠ 0 →
    |l * ((0 : ℝ) * alpha - (y : ℝ))| < 128 / (n : ℝ) → n < 256)
#print axioms Math.B699.ZeroBoundaryLogSeparation.zero_first_coordinate_small_n
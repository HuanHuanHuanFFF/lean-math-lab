import research.tasks.«B699-Binomial».runs.«20261001-lean-nonr7-01a0f779».critical.WindowLog.Actual
import research.tasks.«B699-Binomial».runs.«20261001-lean-nonr7-01a0f779».critical.ZeroBoundaryLogSeparation.Basic

set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option Elab.async false

namespace Math.B699.ZeroBoundaryLogSeparation
open Math.B699.ZeroBoundaryWindowLog

/-- The frozen certificate's resonance classification is certified by a rational
identity, including both signs of both shifts. No logarithm is computed here. -/
def resonanceIdentityCheck (A B p q : ℕ) (r s : ℤ) : Bool :=
  decide (1 ≤ A ∧ 1 ≤ B ∧ 2 ≤ p ∧ 2 ≤ q ∧ |r| ≤ 6 ∧ |s| ≤ 6 ∧
    (A : ℚ) / (B : ℚ) = (p : ℚ) ^ r * (q : ℚ) ^ s)

theorem resonanceIdentityCheck_sound {A B p q : ℕ} {r s : ℤ}
    (hc : resonanceIdentityCheck A B p q r s = true) :
    |r| ≤ 6 ∧ |s| ≤ 6 ∧
      Real.log (A : ℝ) - Real.log (B : ℝ) =
        (r : ℝ) * Real.log (p : ℝ) + (s : ℝ) * Real.log (q : ℝ) := by
  have h : 1 ≤ A ∧ 1 ≤ B ∧ 2 ≤ p ∧ 2 ≤ q ∧ |r| ≤ 6 ∧ |s| ≤ 6 ∧
      (A : ℚ) / (B : ℚ) = (p : ℚ) ^ r * (q : ℚ) ^ s := of_decide_eq_true hc
  obtain ⟨hA, hB, hp, hq, hr, hs, hidentity⟩ := h
  have hAR : (A : ℝ) ≠ 0 := by exact_mod_cast (show A ≠ 0 by omega)
  have hBR : (B : ℝ) ≠ 0 := by exact_mod_cast (show B ≠ 0 by omega)
  have hpR : (p : ℝ) ≠ 0 := by exact_mod_cast (show p ≠ 0 by omega)
  have hqR : (q : ℝ) ≠ 0 := by exact_mod_cast (show q ≠ 0 by omega)
  have hidentityR : (A : ℝ) / (B : ℝ) = (p : ℝ) ^ r * (q : ℝ) ^ s := by
    exact_mod_cast hidentity
  refine ⟨hr, hs, ?_⟩
  rw [← Real.log_div hAR hBR, hidentityR,
    Real.log_mul (zpow_ne_zero r hpR) (zpow_ne_zero s hqR), Real.log_zpow, Real.log_zpow]

theorem resonance_shifted_linear_form {A B p q : ℕ} {r s : ℤ}
    (hc : resonanceIdentityCheck A B p q r s = true) (x y : ℕ) :
    linearForm A B p q x y =
      (((x : ℤ) + r : ℤ) : ℝ) * Real.log (p : ℝ) -
        (((y : ℤ) - s : ℤ) : ℝ) * Real.log (q : ℝ) := by
  have hlog := (resonanceIdentityCheck_sound hc).2.2
  unfold linearForm
  rw [hlog]
  push_cast
  ring

theorem resonance_full_shift_fits_old_budget {A B p q x y : ℕ} {r s : ℤ}
    (hc : resonanceIdentityCheck A B p q r s = true)
    (hx : x ≤ 15359) (hy : y ≤ 15359) :
    |(x : ℤ) + r| ≤ ((2 ^ 53 : ℕ) : ℤ) ∧
      |(y : ℤ) - s| ≤ ((2 ^ 53 : ℕ) : ℤ) := by
  have hr := (resonanceIdentityCheck_sound hc).1
  have hs := (resonanceIdentityCheck_sound hc).2.1
  have hxZ : |(x : ℤ)| ≤ 15359 := by exact_mod_cast hx
  have hyZ : |(y : ℤ)| ≤ 15359 := by exact_mod_cast hy
  have hneg : |(-s : ℤ)| ≤ 6 := by simpa only [abs_neg] using hs
  exact ⟨new_height_shift_fits_old_budget hxZ hr,
    by simpa only [sub_eq_add_neg] using new_height_shift_fits_old_budget hyZ hneg⟩

end Math.B699.ZeroBoundaryLogSeparation

#print axioms Math.B699.ZeroBoundaryLogSeparation.resonanceIdentityCheck
#print axioms Math.B699.ZeroBoundaryLogSeparation.resonanceIdentityCheck_sound
#print axioms Math.B699.ZeroBoundaryLogSeparation.resonance_shifted_linear_form
#print axioms Math.B699.ZeroBoundaryLogSeparation.resonance_full_shift_fits_old_budget

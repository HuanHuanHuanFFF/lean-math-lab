module
public import research.tasks.«B699-Binomial».runs.«20261001-lean-nonr7-01a0f779».continuations.«20261005-psi-eightymin».supply.EtaWeight
public import Mathlib.MeasureTheory.Group.Integral
set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option Elab.async false
@[expose] public section
namespace B699EtaLambda20261005
open MeasureTheory B699EtaKernel20261005 B699EtaWeight20261005

noncomputable def reflectedTilt (s : ℝ) : ℝ := Real.exp (s / 2) * eta s

theorem reflected_eq (s : ℝ) : reflectedTilt s = tiltedEta (-s) := by
  simp only [reflectedTilt, tilted_eq, neg_neg, eta_even]

theorem reflected_integrable : Integrable reflectedTilt := by
  have h := tilted_integrable.comp_neg
  exact h.congr (Filter.Eventually.of_forall (fun s => (reflected_eq s).symm))

theorem reflected_integral : (∫ s, reflectedTilt s) = normalizer := by
  calc
    _ = ∫ s : ℝ, tiltedEta (-s) :=
      integral_congr_ae (Filter.Eventually.of_forall reflected_eq)
    _ = ∫ s, tiltedEta s := integral_neg_eq_self _ _

theorem cosh_tilt_eq (s : ℝ) :
    Real.cosh (s / 2) * eta s = (tiltedEta s + reflectedTilt s) / 2 := by
  rw [Real.cosh_eq, tilted_eq]
  have hn : -(s / 2) = -s / 2 := by ring
  rw [hn]
  dsimp [reflectedTilt]
  ring

theorem cosh_tilt_integrable : Integrable (fun s : ℝ => Real.cosh (s / 2) * eta s) := by
  have h := (tilted_integrable.add reflected_integrable).div_const 2
  exact h.congr (Filter.Eventually.of_forall (fun s => (cosh_tilt_eq s).symm))

theorem normalizer_eq_cosh_integral :
    normalizer = ∫ s : ℝ, Real.cosh (s / 2) * eta s := by
  symm
  calc
    _ = ∫ s : ℝ, (tiltedEta s + reflectedTilt s) / 2 :=
      integral_congr_ae (Filter.Eventually.of_forall cosh_tilt_eq)
    _ = ((∫ s, tiltedEta s) + ∫ s, reflectedTilt s) / 2 := by
      rw [integral_div, integral_add tilted_integrable reflected_integrable]
    _ = normalizer := by
      rw [reflected_integral]
      change (normalizer + normalizer) / 2 = normalizer
      ring

theorem normalizer_ge_eta_mass : (∫ s, eta s) ≤ normalizer := by
  rw [normalizer_eq_cosh_integral]
  apply integral_mono eta_integrable cosh_tilt_integrable
  intro s
  simpa only [one_mul] using
    mul_le_mul_of_nonneg_right (Real.one_le_cosh (s / 2)) (eta_nonneg s)

end B699EtaLambda20261005
#print axioms B699EtaLambda20261005.reflected_eq
#print axioms B699EtaLambda20261005.reflected_integrable
#print axioms B699EtaLambda20261005.reflected_integral
#print axioms B699EtaLambda20261005.cosh_tilt_eq
#print axioms B699EtaLambda20261005.cosh_tilt_integrable
#print axioms B699EtaLambda20261005.normalizer_eq_cosh_integral
#print axioms B699EtaLambda20261005.normalizer_ge_eta_mass

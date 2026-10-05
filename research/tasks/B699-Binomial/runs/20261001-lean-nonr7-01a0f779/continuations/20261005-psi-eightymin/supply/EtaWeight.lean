module
public import research.tasks.«B699-Binomial».runs.«20261001-lean-nonr7-01a0f779».continuations.«20261005-psi-eightymin».supply.EtaKernel
public import research.tasks.«B699-Binomial».runs.«20261001-lean-nonr7-01a0f779».continuations.«20261005-gap-bridge-halfhour».supply.PsiSmoothing
public import Mathlib.MeasureTheory.Measure.Lebesgue.Basic
set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option Elab.async false
@[expose] public section
namespace B699EtaWeight20261005
open MeasureTheory B699EtaKernel20261005

noncomputable def tiltedRaw (s : ℝ) : ℝ := Real.exp (-s / 2) * rawEta s
noncomputable def tiltedEta : ℝ → ℝ := (Set.Ioo (-epsilon) epsilon).indicator tiltedRaw
/-- The real integral expression for the paper's lambda; Fourier identity is not assumed. -/
noncomputable def normalizer : ℝ := ∫ s, tiltedEta s
noncomputable def weight (s : ℝ) : ℝ := tiltedEta s / normalizer

theorem tilted_eq (s : ℝ) : tiltedEta s = Real.exp (-s / 2) * eta s := by
  by_cases hs : s ∈ Set.Ioo (-epsilon) epsilon
  · simp only [tiltedEta, eta, Set.indicator_of_mem hs, tiltedRaw]
  · simp only [tiltedEta, eta, Set.indicator_of_notMem hs, mul_zero]

theorem tilted_nonneg (s : ℝ) : 0 ≤ tiltedEta s := by
  rw [tilted_eq]
  exact mul_nonneg (Real.exp_pos _).le (eta_nonneg s)

theorem tilted_integrable : Integrable tiltedEta := by
  have hraw : ContinuousOn tiltedRaw (Set.Icc (-epsilon) epsilon) := by
    have hexp : Continuous (fun s : ℝ => Real.exp (-s / 2)) :=
      Real.continuous_exp.comp (continuous_id.neg.div_const 2)
    exact hexp.continuousOn.mul raw_eta_continuousOn
  have hclosed : IntegrableOn tiltedRaw (Set.Icc (-epsilon) epsilon) := hraw.integrableOn_Icc
  exact (hclosed.mono_set Set.Ioo_subset_Icc_self).integrable_indicator measurableSet_Ioo

theorem tilted_support : Function.support tiltedEta = Set.Ioo (-epsilon) epsilon := by
  ext s
  change tiltedEta s ≠ 0 ↔ s ∈ Set.Ioo (-epsilon) epsilon
  by_cases hs : s ∈ Set.Ioo (-epsilon) epsilon
  · have hp : 0 < tiltedEta s := by
      rw [tilted_eq]
      exact mul_pos (Real.exp_pos _) ((eta_pos_iff s).mpr hs)
    exact iff_of_true (ne_of_gt hp) hs
  · simp only [tiltedEta, Set.indicator_of_notMem hs, ne_eq, not_true_eq_false, hs]

theorem normalizer_pos : 0 < normalizer := by
  apply (integral_pos_iff_support_of_nonneg tilted_nonneg tilted_integrable).mpr
  rw [tilted_support, Real.volume_Ioo]
  exact ENNReal.ofReal_pos.mpr (by linarith [epsilon_pos])

theorem normalizer_eq_setIntegral :
    normalizer = ∫ s in Set.Icc (-epsilon) epsilon, Real.exp (-s / 2) * eta s := by
  have hs : (∫ s in Set.Icc (-epsilon) epsilon, tiltedEta s) = ∫ s, tiltedEta s :=
    setIntegral_eq_integral_of_forall_compl_eq_zero (by
      intro s hs
      have ho : s ∉ Set.Ioo (-epsilon) epsilon := fun hi => hs (Set.Ioo_subset_Icc_self hi)
      simp only [tiltedEta, Set.indicator_of_notMem ho])
  change (∫ s, tiltedEta s) = _
  rw [← hs]
  exact integral_congr_ae (Filter.Eventually.of_forall tilted_eq)

theorem weight_nonneg (s : ℝ) : 0 ≤ weight s :=
  div_nonneg (tilted_nonneg s) normalizer_pos.le

theorem weight_integrable : IntegrableOn weight (Set.Icc (-epsilon) epsilon) := by
  exact tilted_integrable.integrableOn.div_const normalizer

theorem weight_mass_one : (∫ s in Set.Icc (-epsilon) epsilon, weight s) = 1 := by
  change (∫ s in Set.Icc (-epsilon) epsilon, tiltedEta s / normalizer) = 1
  rw [integral_div]
  have hmass : (∫ s in Set.Icc (-epsilon) epsilon, tiltedEta s) = normalizer := by
    rw [normalizer_eq_setIntegral]
    exact integral_congr_ae (Filter.Eventually.of_forall tilted_eq)
  rw [hmass, div_self (ne_of_gt normalizer_pos)]

/-- All standard kernel assumptions have been discharged for the actual R2 eta. -/
theorem actual_psi_smoothed_bounds {v : ℝ} (hv : 0 ≤ v) :
    Chebyshev.psi (v * Real.exp (-epsilon)) ≤
        B699PsiSmoothing20261005.smoothedPsi epsilon weight v ∧
      B699PsiSmoothing20261005.smoothedPsi epsilon weight v ≤
        Chebyshev.psi (v * Real.exp epsilon) :=
  B699PsiSmoothing20261005.smoothed_psi_bounds hv weight_integrable
    (fun s _ => weight_nonneg s) weight_mass_one

theorem actual_inward_difference {x : ℝ} (hx : 0 ≤ x) :
    B699PsiSmoothing20261005.smoothedPsi epsilon weight
        (((1 + 1 / 4095 : ℝ) * x) * Real.exp (-epsilon)) -
      B699PsiSmoothing20261005.smoothedPsi epsilon weight (x * Real.exp epsilon) ≤
      Chebyshev.psi (x + x / 4095) - Chebyshev.psi x :=
  B699PsiSmoothing20261005.inward_smoothing_difference hx weight_integrable
    (fun s _ => weight_nonneg s) weight_mass_one

end B699EtaWeight20261005
#print axioms B699EtaWeight20261005.tilted_eq
#print axioms B699EtaWeight20261005.tilted_nonneg
#print axioms B699EtaWeight20261005.tilted_integrable
#print axioms B699EtaWeight20261005.tilted_support
#print axioms B699EtaWeight20261005.normalizer_pos
#print axioms B699EtaWeight20261005.normalizer_eq_setIntegral
#print axioms B699EtaWeight20261005.weight_nonneg
#print axioms B699EtaWeight20261005.weight_integrable
#print axioms B699EtaWeight20261005.weight_mass_one
#print axioms B699EtaWeight20261005.actual_psi_smoothed_bounds
#print axioms B699EtaWeight20261005.actual_inward_difference

import research.tasks.«B699-Binomial».runs.«20261001-lean-nonr7-01a0f779».continuations.«20261005-psi-eightymin».supply.EtaWeight

set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option Elab.async false

namespace B699PsiEightyVerify20261005
open MeasureTheory

-- Independent paper formulas: exact c=18, eps=1/16384, strict open support.
private noncomputable def paperRawEta (s : ℝ) : ℝ :=
  (18 : ℝ) / (2 * (1 / 16384 : ℝ) * Real.sinh 18) *
    (∑' n : Nat, ((81 : ℝ) ^ n * (1 - s ^ 2 / (1 / 16384 : ℝ) ^ 2) ^ n) /
      (n.factorial : ℝ) ^ 2)
private noncomputable def paperEta : ℝ → ℝ :=
  (Set.Ioo (-(1 / 16384 : ℝ)) (1 / 16384)).indicator paperRawEta
private noncomputable def paperTilt (s : ℝ) : ℝ := Real.exp (-s / 2) * paperEta s
private noncomputable def paperDirectTilt : ℝ → ℝ :=
  (Set.Ioo (-(1 / 16384 : ℝ)) (1 / 16384)).indicator (fun s => Real.exp (-s / 2) * paperRawEta s)
private noncomputable def paperLambda : ℝ := ∫ s, paperTilt s
private noncomputable def paperWeight (s : ℝ) : ℝ := paperTilt s / paperLambda

private theorem raw_eta_eq_paper : B699EtaKernel20261005.rawEta = paperRawEta := by
  funext s
  simp only [B699EtaKernel20261005.rawEta, B699EtaKernel20261005.kernelScale,
    B699EtaKernel20261005.epsilon, B699EtaKernel20261005.radialQ,
    B699EtaSeries20261005.kernelSeries, B699EtaSeries20261005.seriesTerm, paperRawEta, mul_pow]

private theorem eta_eq_paper : B699EtaKernel20261005.eta = paperEta := by
  simp only [B699EtaKernel20261005.eta, B699EtaKernel20261005.epsilon, raw_eta_eq_paper, paperEta]

private theorem tilt_eq_paper : B699EtaWeight20261005.tiltedEta = paperTilt := by
  funext s
  rw [B699EtaWeight20261005.tilted_eq, eta_eq_paper]
  rfl

private theorem direct_tilt_eq_paper : B699EtaWeight20261005.tiltedEta = paperDirectTilt := by
  have hfun : B699EtaWeight20261005.tiltedRaw = fun s => Real.exp (-s / 2) * paperRawEta s := by
    funext s
    simp only [B699EtaWeight20261005.tiltedRaw, raw_eta_eq_paper]
  simp only [B699EtaWeight20261005.tiltedEta, B699EtaKernel20261005.epsilon, hfun, paperDirectTilt]

private theorem lambda_eq_paper : B699EtaWeight20261005.normalizer = paperLambda := by
  simp only [B699EtaWeight20261005.normalizer, tilt_eq_paper, paperLambda]

private theorem weight_eq_paper : B699EtaWeight20261005.weight = paperWeight := by
  funext s
  simp only [B699EtaWeight20261005.weight, tilt_eq_paper, lambda_eq_paper, paperWeight]

theorem tilted_eq_literal (s : ℝ) : paperDirectTilt s = Real.exp (-s / 2) * paperEta s := by
  rw [← direct_tilt_eq_paper, ← eta_eq_paper]
  exact B699EtaWeight20261005.tilted_eq s

theorem tilted_nonneg_literal (s : ℝ) : 0 ≤ paperTilt s := by
  rw [← tilt_eq_paper]
  exact B699EtaWeight20261005.tilted_nonneg s

theorem tilted_integrable_literal : Integrable paperTilt := by
  rw [← tilt_eq_paper]
  exact B699EtaWeight20261005.tilted_integrable

theorem tilted_support_literal : Function.support paperTilt = Set.Ioo (-(1 / 16384 : ℝ)) (1 / 16384) := by
  rw [← tilt_eq_paper]
  simpa only [B699EtaKernel20261005.epsilon] using B699EtaWeight20261005.tilted_support

theorem normalizer_pos_literal : 0 < paperLambda := by
  rw [← lambda_eq_paper]
  exact B699EtaWeight20261005.normalizer_pos

theorem normalizer_eq_setIntegral_literal :
    paperLambda = ∫ s in Set.Icc (-(1 / 16384 : ℝ)) (1 / 16384), Real.exp (-s / 2) * paperEta s := by
  simpa only [lambda_eq_paper, eta_eq_paper, B699EtaKernel20261005.epsilon] using
    B699EtaWeight20261005.normalizer_eq_setIntegral

theorem weight_nonneg_literal (s : ℝ) : 0 ≤ paperWeight s := by
  rw [← weight_eq_paper]
  exact B699EtaWeight20261005.weight_nonneg s

theorem weight_integrable_literal :
    IntegrableOn paperWeight (Set.Icc (-(1 / 16384 : ℝ)) (1 / 16384)) := by
  rw [← weight_eq_paper]
  simpa only [B699EtaKernel20261005.epsilon] using B699EtaWeight20261005.weight_integrable

theorem weight_mass_one_literal :
    (∫ s in Set.Icc (-(1 / 16384 : ℝ)) (1 / 16384), paperWeight s) = 1 := by
  rw [← weight_eq_paper]
  simpa only [B699EtaKernel20261005.epsilon] using B699EtaWeight20261005.weight_mass_one

theorem actual_psi_smoothed_bounds_literal {v : ℝ} (hv : 0 ≤ v) :
    (∑ n ∈ Finset.Ioc 0 ⌊v * Real.exp (-(1 / 16384 : ℝ))⌋₊, ArithmeticFunction.vonMangoldt n) ≤
      (∫ s in Set.Icc (-(1 / 16384 : ℝ)) (1 / 16384), paperWeight s *
        (∑ n ∈ Finset.Ioc 0 ⌊v * Real.exp s⌋₊, ArithmeticFunction.vonMangoldt n)) ∧
    (∫ s in Set.Icc (-(1 / 16384 : ℝ)) (1 / 16384), paperWeight s *
      (∑ n ∈ Finset.Ioc 0 ⌊v * Real.exp s⌋₊, ArithmeticFunction.vonMangoldt n)) ≤
      (∑ n ∈ Finset.Ioc 0 ⌊v * Real.exp (1 / 16384 : ℝ)⌋₊, ArithmeticFunction.vonMangoldt n) := by
  simpa only [B699PsiSmoothing20261005.smoothedPsi, B699EtaKernel20261005.epsilon,
    weight_eq_paper, Chebyshev.psi] using B699EtaWeight20261005.actual_psi_smoothed_bounds hv

theorem actual_inward_difference_literal {x : ℝ} (hx : 0 ≤ x) :
    (∫ s in Set.Icc (-(1 / 16384 : ℝ)) (1 / 16384), paperWeight s *
      (∑ n ∈ Finset.Ioc 0 ⌊(((4096 : ℝ) / 4095 * x) * Real.exp (-(1 / 16384 : ℝ))) * Real.exp s⌋₊,
        ArithmeticFunction.vonMangoldt n)) -
    (∫ s in Set.Icc (-(1 / 16384 : ℝ)) (1 / 16384), paperWeight s *
      (∑ n ∈ Finset.Ioc 0 ⌊(x * Real.exp (1 / 16384 : ℝ)) * Real.exp s⌋₊,
        ArithmeticFunction.vonMangoldt n)) ≤
    (∑ n ∈ Finset.Ioc 0 ⌊x + x / 4095⌋₊, ArithmeticFunction.vonMangoldt n) -
      (∑ n ∈ Finset.Ioc 0 ⌊x⌋₊, ArithmeticFunction.vonMangoldt n) := by
  rw [show (4096 : ℝ) / 4095 = 1 + 1 / 4095 by norm_num]
  simpa only [B699PsiSmoothing20261005.smoothedPsi, B699EtaKernel20261005.epsilon,
    weight_eq_paper, Chebyshev.psi] using B699EtaWeight20261005.actual_inward_difference hx

end B699PsiEightyVerify20261005

#print axioms B699PsiEightyVerify20261005.tilted_eq_literal
#print axioms B699PsiEightyVerify20261005.tilted_nonneg_literal
#print axioms B699PsiEightyVerify20261005.tilted_integrable_literal
#print axioms B699PsiEightyVerify20261005.tilted_support_literal
#print axioms B699PsiEightyVerify20261005.normalizer_pos_literal
#print axioms B699PsiEightyVerify20261005.normalizer_eq_setIntegral_literal
#print axioms B699PsiEightyVerify20261005.weight_nonneg_literal
#print axioms B699PsiEightyVerify20261005.weight_integrable_literal
#print axioms B699PsiEightyVerify20261005.weight_mass_one_literal
#print axioms B699PsiEightyVerify20261005.actual_psi_smoothed_bounds_literal
#print axioms B699PsiEightyVerify20261005.actual_inward_difference_literal

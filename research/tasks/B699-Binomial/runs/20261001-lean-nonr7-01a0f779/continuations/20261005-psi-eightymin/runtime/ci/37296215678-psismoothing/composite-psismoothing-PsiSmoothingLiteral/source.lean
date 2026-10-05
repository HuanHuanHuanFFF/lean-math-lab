import research.tasks.«B699-Binomial».runs.«20261001-lean-nonr7-01a0f779».continuations.«20261005-gap-bridge-halfhour».supply.PsiSmoothing

set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option Elab.async false

namespace B699GapBridgeVerify20261005
open MeasureTheory

theorem psi_exp_bounds_literal {ε v s : ℝ} (hv : 0 ≤ v) (hs : s ∈ Set.Icc (-ε) ε) :
    (∑ n ∈ Finset.Ioc 0 ⌊v * Real.exp (-ε)⌋₊, ArithmeticFunction.vonMangoldt n) ≤
      (∑ n ∈ Finset.Ioc 0 ⌊v * Real.exp s⌋₊, ArithmeticFunction.vonMangoldt n) ∧
    (∑ n ∈ Finset.Ioc 0 ⌊v * Real.exp s⌋₊, ArithmeticFunction.vonMangoldt n) ≤
      (∑ n ∈ Finset.Ioc 0 ⌊v * Real.exp ε⌋₊, ArithmeticFunction.vonMangoldt n) := by
  simpa only [Chebyshev.psi] using B699PsiSmoothing20261005.psi_exp_bounds hv hs

theorem weighted_psi_integrable_literal {ε v : ℝ} {w : ℝ → ℝ} (hv : 0 ≤ v)
    (hw : IntegrableOn w (Set.Icc (-ε) ε)) :
    IntegrableOn (fun s => w s *
      (∑ n ∈ Finset.Ioc 0 ⌊v * Real.exp s⌋₊, ArithmeticFunction.vonMangoldt n))
      (Set.Icc (-ε) ε) := by
  simpa only [Chebyshev.psi] using B699PsiSmoothing20261005.weighted_psi_integrable hv hw

theorem smoothed_psi_bounds_literal {ε v : ℝ} {w : ℝ → ℝ} (hv : 0 ≤ v)
    (hw : IntegrableOn w (Set.Icc (-ε) ε))
    (hw0 : ∀ s ∈ Set.Icc (-ε) ε, 0 ≤ w s)
    (hmass : (∫ s in Set.Icc (-ε) ε, w s) = 1) :
    (∑ n ∈ Finset.Ioc 0 ⌊v * Real.exp (-ε)⌋₊, ArithmeticFunction.vonMangoldt n) ≤
      (∫ s in Set.Icc (-ε) ε, w s *
        (∑ n ∈ Finset.Ioc 0 ⌊v * Real.exp s⌋₊, ArithmeticFunction.vonMangoldt n)) ∧
    (∫ s in Set.Icc (-ε) ε, w s *
      (∑ n ∈ Finset.Ioc 0 ⌊v * Real.exp s⌋₊, ArithmeticFunction.vonMangoldt n)) ≤
      (∑ n ∈ Finset.Ioc 0 ⌊v * Real.exp ε⌋₊, ArithmeticFunction.vonMangoldt n) := by
  simpa only [B699PsiSmoothing20261005.smoothedPsi, Chebyshev.psi] using
    B699PsiSmoothing20261005.smoothed_psi_bounds hv hw hw0 hmass

theorem inward_smoothing_difference_literal {ε x : ℝ} {w : ℝ → ℝ} (hx : 0 ≤ x)
    (hw : IntegrableOn w (Set.Icc (-ε) ε))
    (hw0 : ∀ s ∈ Set.Icc (-ε) ε, 0 ≤ w s)
    (hmass : (∫ s in Set.Icc (-ε) ε, w s) = 1) :
    (∫ s in Set.Icc (-ε) ε, w s *
      (∑ n ∈ Finset.Ioc 0 ⌊(((4096 : ℝ) / 4095 * x) * Real.exp (-ε)) * Real.exp s⌋₊,
        ArithmeticFunction.vonMangoldt n)) -
    (∫ s in Set.Icc (-ε) ε, w s *
      (∑ n ∈ Finset.Ioc 0 ⌊(x * Real.exp ε) * Real.exp s⌋₊,
        ArithmeticFunction.vonMangoldt n)) ≤
    (∑ n ∈ Finset.Ioc 0 ⌊x + x / 4095⌋₊, ArithmeticFunction.vonMangoldt n) -
      (∑ n ∈ Finset.Ioc 0 ⌊x⌋₊, ArithmeticFunction.vonMangoldt n) := by
  rw [show (4096 : ℝ) / 4095 = 1 + 1 / 4095 by norm_num]
  simpa only [B699PsiSmoothing20261005.smoothedPsi, Chebyshev.psi] using
    B699PsiSmoothing20261005.inward_smoothing_difference hx hw hw0 hmass

end B699GapBridgeVerify20261005

#print axioms B699GapBridgeVerify20261005.psi_exp_bounds_literal
#print axioms B699GapBridgeVerify20261005.weighted_psi_integrable_literal
#print axioms B699GapBridgeVerify20261005.smoothed_psi_bounds_literal
#print axioms B699GapBridgeVerify20261005.inward_smoothing_difference_literal

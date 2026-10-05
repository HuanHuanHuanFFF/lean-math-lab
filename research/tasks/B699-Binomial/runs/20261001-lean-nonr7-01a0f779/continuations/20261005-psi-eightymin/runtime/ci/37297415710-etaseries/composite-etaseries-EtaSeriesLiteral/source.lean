import research.tasks.«B699-Binomial».runs.«20261001-lean-nonr7-01a0f779».continuations.«20261005-psi-eightymin».supply.EtaSeries

set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option Elab.async false

namespace B699PsiEightyVerify20261005

theorem term_nonneg_literal {q : ℝ} (hq : 0 ≤ q) (n : Nat) :
    0 ≤ q ^ n / (n.factorial : ℝ) ^ 2 := by
  simpa only [B699EtaSeries20261005.seriesTerm] using B699EtaSeries20261005.term_nonneg hq n

theorem term_majorant_literal {q : ℝ} (hq : q ∈ Set.Icc (0 : ℝ) 81) (n : Nat) :
    ‖q ^ n / (n.factorial : ℝ) ^ 2‖ ≤ (81 : ℝ) ^ n / (n.factorial : ℝ) := by
  simpa only [B699EtaSeries20261005.seriesTerm] using B699EtaSeries20261005.term_majorant hq n

theorem series_summable_literal {q : ℝ} (hq : q ∈ Set.Icc (0 : ℝ) 81) :
    Summable (fun n : Nat => q ^ n / (n.factorial : ℝ) ^ 2) := by
  simpa only [B699EtaSeries20261005.seriesTerm] using B699EtaSeries20261005.series_summable hq

theorem series_ge_one_literal {q : ℝ} (hq : q ∈ Set.Icc (0 : ℝ) 81) :
    1 ≤ ∑' n : Nat, q ^ n / (n.factorial : ℝ) ^ 2 := by
  simpa only [B699EtaSeries20261005.kernelSeries, B699EtaSeries20261005.seriesTerm] using
    B699EtaSeries20261005.series_ge_one hq

theorem series_continuousOn_literal :
    ContinuousOn (fun q : ℝ => ∑' n : Nat, q ^ n / (n.factorial : ℝ) ^ 2)
      (Set.Icc (0 : ℝ) 81) := by
  simpa only [B699EtaSeries20261005.kernelSeries, B699EtaSeries20261005.seriesTerm] using
    B699EtaSeries20261005.series_continuousOn

end B699PsiEightyVerify20261005

#print axioms B699PsiEightyVerify20261005.term_nonneg_literal
#print axioms B699PsiEightyVerify20261005.term_majorant_literal
#print axioms B699PsiEightyVerify20261005.series_summable_literal
#print axioms B699PsiEightyVerify20261005.series_ge_one_literal
#print axioms B699PsiEightyVerify20261005.series_continuousOn_literal

import research.tasks.«B699-Binomial».runs.«20261001-lean-nonr7-01a0f779».continuations.«20261005-psi-eightymin».supply.EtaIntegralSeries
set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option Elab.async false
namespace B699PsiEightyVerify20261005
open MeasureTheory
theorem hasSum_kernel_integrals_literal :
    HasSum (fun n : Nat => ∫ s in Set.Icc (-(1 / 16384 : ℝ)) (1 / 16384),
      ((81 : ℝ) ^ n * (1 - s ^ 2 / (1 / 16384 : ℝ) ^ 2) ^ n) / (n.factorial : ℝ) ^ 2)
      (∫ s in Set.Icc (-(1 / 16384 : ℝ)) (1 / 16384),
        ∑' n : Nat, ((81 : ℝ) ^ n * (1 - s ^ 2 / (1 / 16384 : ℝ) ^ 2) ^ n) /
          (n.factorial : ℝ) ^ 2) := by
  simpa only [B699EtaKernel20261005.epsilon, B699EtaKernel20261005.radialQ,
    B699EtaSeries20261005.seriesTerm, B699EtaSeries20261005.kernelSeries, mul_pow] using
    B699EtaIntegralSeries20261005.hasSum_kernel_integrals
end B699PsiEightyVerify20261005
#print axioms B699PsiEightyVerify20261005.hasSum_kernel_integrals_literal

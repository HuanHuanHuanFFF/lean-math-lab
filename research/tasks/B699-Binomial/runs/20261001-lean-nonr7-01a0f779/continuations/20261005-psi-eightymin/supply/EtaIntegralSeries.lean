module
public import research.tasks.«B699-Binomial».runs.«20261001-lean-nonr7-01a0f779».continuations.«20261005-psi-eightymin».supply.EtaKernel
public import Mathlib.MeasureTheory.Integral.DominatedConvergence
set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option Elab.async false
@[expose] public section
namespace B699EtaIntegralSeries20261005
open MeasureTheory B699EtaKernel20261005 B699EtaSeries20261005

theorem hasSum_kernel_integrals :
    HasSum (fun n : Nat => ∫ s in Set.Icc (-epsilon) epsilon, seriesTerm n (radialQ s))
      (∫ s in Set.Icc (-epsilon) epsilon, kernelSeries (radialQ s)) := by
  have hq : Continuous radialQ :=
    continuous_const.mul (continuous_const.sub ((continuous_id.pow 2).div_const (epsilon ^ 2)))
  apply hasSum_integral_of_dominated_convergence
    (fun (n : Nat) (_s : ℝ) => (81 : ℝ) ^ n / (n.factorial : ℝ))
  · intro n
    exact ((hq.pow n).div_const ((n.factorial : ℝ) ^ 2)).measurable.aestronglyMeasurable
  · intro n
    filter_upwards [ae_restrict_mem measurableSet_Icc] with s hs
    exact term_majorant (radial_range hs) n
  · exact Filter.Eventually.of_forall (fun _s => Real.summable_pow_div_factorial 81)
  · exact integrable_const _
  · filter_upwards [ae_restrict_mem measurableSet_Icc] with s hs
    exact (series_summable (radial_range hs)).hasSum

end B699EtaIntegralSeries20261005
#print axioms B699EtaIntegralSeries20261005.hasSum_kernel_integrals

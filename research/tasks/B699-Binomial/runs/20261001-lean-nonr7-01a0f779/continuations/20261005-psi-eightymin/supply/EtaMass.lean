module
public import research.tasks.«B699-Binomial».runs.«20261001-lean-nonr7-01a0f779».continuations.«20261005-psi-eightymin».supply.EtaMomentReduction
public import research.tasks.«B699-Binomial».runs.«20261001-lean-nonr7-01a0f779».continuations.«20261005-psi-eightymin».supply.EtaIntegralSeries
public import research.tasks.«B699-Binomial».runs.«20261001-lean-nonr7-01a0f779».continuations.«20261005-psi-eightymin».supply.EtaLambda
public import Mathlib.Analysis.SpecialFunctions.Trigonometric.Series
public import Mathlib.Tactic.FieldSimp
set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option Elab.async false
@[expose] public section
namespace B699EtaMass20261005
open MeasureTheory B699EtaKernel20261005 B699EtaSeries20261005

theorem shape_term_integral (n : Nat) :
    (∫ s in Set.Icc (-epsilon) epsilon, seriesTerm n (radialQ s)) =
      2 * epsilon * (324 : ℝ) ^ n / ((2 * n + 1).factorial : ℝ) := by
  have he : epsilon ≠ 0 := ne_of_gt epsilon_pos
  have hf : ((n.factorial : ℝ) ^ 2) ≠ 0 := by positivity
  have hodd : ((2 * n + 1).factorial : ℝ) ≠ 0 := by positivity
  have hp (s : ℝ) : seriesTerm n (radialQ s) =
      ((81 : ℝ) ^ n / (n.factorial : ℝ) ^ 2) * (1 - (s / epsilon) ^ 2) ^ n := by
    simp only [seriesTerm, radialQ, mul_pow, div_pow]
    ring
  have hscale := intervalIntegral.integral_comp_div
    (f := fun u : ℝ => (1 - u ^ 2) ^ n) (a := -epsilon) (b := epsilon) (c := epsilon) he
  simp only [neg_div, div_self he, smul_eq_mul] at hscale
  calc
    _ = ∫ s : ℝ in (-epsilon)..epsilon, seriesTerm n (radialQ s) := by
      rw [intervalIntegral.integral_of_le (by linarith [epsilon_pos]), integral_Icc_eq_integral_Ioc]
    _ = ((81 : ℝ) ^ n / (n.factorial : ℝ) ^ 2) *
        (∫ s : ℝ in (-epsilon)..epsilon, (1 - (s / epsilon) ^ 2) ^ n) := by
      calc
        _ = ∫ s : ℝ in (-epsilon)..epsilon,
            ((81 : ℝ) ^ n / (n.factorial : ℝ) ^ 2) * (1 - (s / epsilon) ^ 2) ^ n :=
          intervalIntegral.integral_congr (fun s _ => hp s)
        _ = _ := intervalIntegral.integral_const_mul _ _
    _ = ((81 : ℝ) ^ n / (n.factorial : ℝ) ^ 2) *
        (epsilon * (2 * (4 : ℝ) ^ n * (n.factorial : ℝ) ^ 2 /
          ((2 * n + 1).factorial : ℝ))) := by
      rw [hscale, B699EtaMoments20261005.symmetric_integer_moment n]
    _ = _ := by
      have hpow : (81 : ℝ) ^ n * (4 : ℝ) ^ n = (324 : ℝ) ^ n := by rw [← mul_pow]; norm_num
      rw [← hpow]
      field_simp [hf, hodd]
      <;> ring

theorem normalized_sinh_hasSum :
    HasSum (fun n : Nat => (324 : ℝ) ^ n / ((2 * n + 1).factorial : ℝ)) (Real.sinh 18 / 18) := by
  have h := (Real.hasSum_sinh 18).div_const 18
  have heq (n : Nat) :
      ((18 : ℝ) ^ (2 * n + 1) / ((2 * n + 1).factorial : ℝ)) / 18 =
        (324 : ℝ) ^ n / ((2 * n + 1).factorial : ℝ) := by
    rw [pow_succ, pow_mul]
    norm_num only at *
    ring
  simpa only [heq] using h

theorem eta_mass_one : (∫ s : ℝ, eta s) = 1 := by
  change (∫ s : ℝ, (Set.Ioo (-epsilon) epsilon).indicator rawEta s) = 1
  have hshape : (∫ s in Set.Icc (-epsilon) epsilon, kernelSeries (radialQ s)) =
      2 * epsilon * (Real.sinh 18 / 18) := by
    have hi := B699EtaIntegralSeries20261005.hasSum_kernel_integrals.tsum_eq
    have hs := normalized_sinh_hasSum.mul_left (2 * epsilon)
    have hi' : (∑' n : Nat, (2 * epsilon) *
        ((324 : ℝ) ^ n / ((2 * n + 1).factorial : ℝ))) =
        ∫ s in Set.Icc (-epsilon) epsilon, kernelSeries (radialQ s) := by
      simpa only [shape_term_integral, mul_div_assoc] using hi
    exact hi'.symm.trans hs.tsum_eq
  have he : epsilon ≠ 0 := ne_of_gt epsilon_pos
  have hh : Real.sinh 18 ≠ 0 := ne_of_gt (Real.sinh_pos_iff.mpr (by norm_num : (0 : ℝ) < 18))
  calc
    _ = ∫ s in Set.Ioo (-epsilon) epsilon, rawEta s := integral_indicator measurableSet_Ioo
    _ = ∫ s in Set.Icc (-epsilon) epsilon, rawEta s := integral_Icc_eq_integral_Ioo.symm
    _ = kernelScale * (∫ s in Set.Icc (-epsilon) epsilon, kernelSeries (radialQ s)) :=
      integral_const_mul _ _
    _ = 1 := by
      rw [hshape]
      dsimp [kernelScale]
      field_simp [he, hh]
      <;> ring

theorem normalizer_ge_one : (1 : ℝ) ≤ B699EtaWeight20261005.normalizer := by
  rw [← eta_mass_one]
  exact B699EtaLambda20261005.normalizer_ge_eta_mass

end B699EtaMass20261005
#print axioms B699EtaMass20261005.shape_term_integral
#print axioms B699EtaMass20261005.normalized_sinh_hasSum
#print axioms B699EtaMass20261005.eta_mass_one
#print axioms B699EtaMass20261005.normalizer_ge_one

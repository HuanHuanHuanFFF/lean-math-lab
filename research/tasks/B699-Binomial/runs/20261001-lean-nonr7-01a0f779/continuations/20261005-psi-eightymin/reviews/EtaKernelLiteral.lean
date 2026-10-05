import research.tasks.«B699-Binomial».runs.«20261001-lean-nonr7-01a0f779».continuations.«20261005-psi-eightymin».supply.EtaKernel

set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option Elab.async false

namespace B699PsiEightyVerify20261005
open MeasureTheory

private theorem raw_eta_paper_eq : B699EtaKernel20261005.rawEta = fun s : ℝ =>
    (18 : ℝ) / (2 * (1 / 16384 : ℝ) * Real.sinh 18) *
      (∑' n : Nat, ((81 : ℝ) ^ n * (1 - s ^ 2 / (1 / 16384 : ℝ) ^ 2) ^ n) /
        (n.factorial : ℝ) ^ 2) := by
  funext s
  simp only [B699EtaKernel20261005.rawEta, B699EtaKernel20261005.kernelScale,
    B699EtaKernel20261005.epsilon, B699EtaKernel20261005.radialQ,
    B699EtaSeries20261005.kernelSeries, B699EtaSeries20261005.seriesTerm, mul_pow]

private theorem eta_paper_eq : B699EtaKernel20261005.eta =
    (Set.Ioo (-(1 / 16384 : ℝ)) (1 / 16384)).indicator (fun t : ℝ =>
      (18 : ℝ) / (2 * (1 / 16384 : ℝ) * Real.sinh 18) *
        (∑' n : Nat, ((81 : ℝ) ^ n * (1 - t ^ 2 / (1 / 16384 : ℝ) ^ 2) ^ n) /
          (n.factorial : ℝ) ^ 2)) := by
  simp only [B699EtaKernel20261005.eta, B699EtaKernel20261005.epsilon, raw_eta_paper_eq]

theorem epsilon_pos_literal : 0 < (1 / 16384 : ℝ) := by
  simpa only [B699EtaKernel20261005.epsilon] using B699EtaKernel20261005.epsilon_pos

theorem scale_pos_literal : 0 < (18 : ℝ) / (2 * (1 / 16384 : ℝ) * Real.sinh 18) := by
  simpa only [B699EtaKernel20261005.kernelScale, B699EtaKernel20261005.epsilon] using
    B699EtaKernel20261005.scale_pos

theorem radial_range_literal {s : ℝ}
    (hs : s ∈ Set.Icc (-(1 / 16384 : ℝ)) (1 / 16384)) :
    81 * (1 - s ^ 2 / (1 / 16384 : ℝ) ^ 2) ∈ Set.Icc (0 : ℝ) 81 := by
  simpa only [B699EtaKernel20261005.radialQ, B699EtaKernel20261005.epsilon] using
    B699EtaKernel20261005.radial_range (by simpa only [B699EtaKernel20261005.epsilon] using hs)

-- The original positive-series terms are written as 81^n * (1-s^2/eps^2)^n / (n!)^2.
-- mul_pow is the exact termwise identification with the producer's radial q^n.
theorem raw_eta_continuousOn_literal :
    ContinuousOn (fun s : ℝ =>
      (18 : ℝ) / (2 * (1 / 16384 : ℝ) * Real.sinh 18) *
        (∑' n : Nat, ((81 : ℝ) ^ n * (1 - s ^ 2 / (1 / 16384 : ℝ) ^ 2) ^ n) /
          (n.factorial : ℝ) ^ 2)) (Set.Icc (-(1 / 16384 : ℝ)) (1 / 16384)) := by
  rw [← raw_eta_paper_eq]
  simpa only [B699EtaKernel20261005.epsilon] using B699EtaKernel20261005.raw_eta_continuousOn

theorem raw_eta_ge_scale_literal {s : ℝ}
    (hs : s ∈ Set.Icc (-(1 / 16384 : ℝ)) (1 / 16384)) :
    (18 : ℝ) / (2 * (1 / 16384 : ℝ) * Real.sinh 18) ≤
      (18 : ℝ) / (2 * (1 / 16384 : ℝ) * Real.sinh 18) *
        (∑' n : Nat, ((81 : ℝ) ^ n * (1 - s ^ 2 / (1 / 16384 : ℝ) ^ 2) ^ n) /
          (n.factorial : ℝ) ^ 2) := by
  simpa only [B699EtaKernel20261005.rawEta, B699EtaKernel20261005.kernelScale,
    B699EtaKernel20261005.epsilon, B699EtaKernel20261005.radialQ,
    B699EtaSeries20261005.kernelSeries, B699EtaSeries20261005.seriesTerm, mul_pow] using
    B699EtaKernel20261005.raw_eta_ge_scale (by simpa only [B699EtaKernel20261005.epsilon] using hs)

theorem eta_nonneg_literal (s : ℝ) :
    0 ≤ (Set.Ioo (-(1 / 16384 : ℝ)) (1 / 16384)).indicator (fun t : ℝ =>
      (18 : ℝ) / (2 * (1 / 16384 : ℝ) * Real.sinh 18) *
        (∑' n : Nat, ((81 : ℝ) ^ n * (1 - t ^ 2 / (1 / 16384 : ℝ) ^ 2) ^ n) /
          (n.factorial : ℝ) ^ 2)) s := by
  rw [← eta_paper_eq]
  exact B699EtaKernel20261005.eta_nonneg s

theorem eta_pos_iff_literal (s : ℝ) :
    (0 < (Set.Ioo (-(1 / 16384 : ℝ)) (1 / 16384)).indicator (fun t : ℝ =>
      (18 : ℝ) / (2 * (1 / 16384 : ℝ) * Real.sinh 18) *
        (∑' n : Nat, ((81 : ℝ) ^ n * (1 - t ^ 2 / (1 / 16384 : ℝ) ^ 2) ^ n) /
          (n.factorial : ℝ) ^ 2)) s) ↔
      s ∈ Set.Ioo (-(1 / 16384 : ℝ)) (1 / 16384) := by
  rw [← eta_paper_eq]
  simpa only [B699EtaKernel20261005.epsilon] using B699EtaKernel20261005.eta_pos_iff s

theorem eta_even_literal (s : ℝ) :
    (Set.Ioo (-(1 / 16384 : ℝ)) (1 / 16384)).indicator (fun t : ℝ =>
      (18 : ℝ) / (2 * (1 / 16384 : ℝ) * Real.sinh 18) *
        (∑' n : Nat, ((81 : ℝ) ^ n * (1 - t ^ 2 / (1 / 16384 : ℝ) ^ 2) ^ n) /
          (n.factorial : ℝ) ^ 2)) (-s) =
    (Set.Ioo (-(1 / 16384 : ℝ)) (1 / 16384)).indicator (fun t : ℝ =>
      (18 : ℝ) / (2 * (1 / 16384 : ℝ) * Real.sinh 18) *
        (∑' n : Nat, ((81 : ℝ) ^ n * (1 - t ^ 2 / (1 / 16384 : ℝ) ^ 2) ^ n) /
          (n.factorial : ℝ) ^ 2)) s := by
  rw [← eta_paper_eq]
  exact B699EtaKernel20261005.eta_even s

theorem eta_integrable_literal :
    Integrable ((Set.Ioo (-(1 / 16384 : ℝ)) (1 / 16384)).indicator (fun t : ℝ =>
      (18 : ℝ) / (2 * (1 / 16384 : ℝ) * Real.sinh 18) *
        (∑' n : Nat, ((81 : ℝ) ^ n * (1 - t ^ 2 / (1 / 16384 : ℝ) ^ 2) ^ n) /
          (n.factorial : ℝ) ^ 2))) := by
  rw [← eta_paper_eq]
  exact B699EtaKernel20261005.eta_integrable

end B699PsiEightyVerify20261005

#print axioms B699PsiEightyVerify20261005.epsilon_pos_literal
#print axioms B699PsiEightyVerify20261005.scale_pos_literal
#print axioms B699PsiEightyVerify20261005.radial_range_literal
#print axioms B699PsiEightyVerify20261005.raw_eta_continuousOn_literal
#print axioms B699PsiEightyVerify20261005.raw_eta_ge_scale_literal
#print axioms B699PsiEightyVerify20261005.eta_nonneg_literal
#print axioms B699PsiEightyVerify20261005.eta_pos_iff_literal
#print axioms B699PsiEightyVerify20261005.eta_even_literal
#print axioms B699PsiEightyVerify20261005.eta_integrable_literal

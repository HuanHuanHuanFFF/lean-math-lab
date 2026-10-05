module
public import research.tasks.«B699-Binomial».runs.«20261001-lean-nonr7-01a0f779».continuations.«20261005-psi-eightymin».supply.EtaSeries
public import Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp
public import Mathlib.MeasureTheory.Function.LocallyIntegrable
public import Mathlib.MeasureTheory.Integral.Bochner.Set
public import Mathlib.Tactic.Ring
set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option Elab.async false
@[expose] public section
namespace B699EtaKernel20261005
open MeasureTheory

noncomputable def epsilon : ℝ := 1 / 16384
noncomputable def kernelScale : ℝ := 18 / (2 * epsilon * Real.sinh 18)
noncomputable def radialQ (s : ℝ) : ℝ := 81 * (1 - s ^ 2 / epsilon ^ 2)
noncomputable def rawEta (s : ℝ) : ℝ :=
  kernelScale * B699EtaSeries20261005.kernelSeries (radialQ s)
/-- Exact R2 open support; the values at both support endpoints are zero. -/
noncomputable def eta : ℝ → ℝ := (Set.Ioo (-epsilon) epsilon).indicator rawEta

theorem epsilon_pos : 0 < epsilon := by norm_num [epsilon]

theorem scale_pos : 0 < kernelScale := by
  dsimp [kernelScale]
  exact div_pos (by norm_num)
    (mul_pos (mul_pos (by norm_num) epsilon_pos) (Real.sinh_pos_iff.mpr (by norm_num)))

theorem radial_range {s : ℝ} (hs : s ∈ Set.Icc (-epsilon) epsilon) :
    radialQ s ∈ Set.Icc (0 : ℝ) 81 := by
  have he2 : 0 < epsilon ^ 2 := sq_pos_of_pos epsilon_pos
  have hprod : 0 ≤ (epsilon - s) * (s + epsilon) :=
    mul_nonneg (sub_nonneg.mpr hs.2) (by linarith [hs.1])
  have hsq : s ^ 2 ≤ epsilon ^ 2 := by nlinarith only [hprod]
  have hd0 : 0 ≤ s ^ 2 / epsilon ^ 2 := div_nonneg (sq_nonneg s) he2.le
  have hd1 : s ^ 2 / epsilon ^ 2 ≤ 1 := (div_le_iff₀ he2).mpr (by simpa using hsq)
  dsimp [radialQ]
  constructor <;> linarith

theorem raw_eta_continuousOn : ContinuousOn rawEta (Set.Icc (-epsilon) epsilon) := by
  have hq : Continuous radialQ :=
    continuous_const.mul (continuous_const.sub ((continuous_id.pow 2).div_const (epsilon ^ 2)))
  exact continuous_const.continuousOn.mul
    (B699EtaSeries20261005.series_continuousOn.comp hq.continuousOn (fun s hs => radial_range hs))

theorem raw_eta_ge_scale {s : ℝ} (hs : s ∈ Set.Icc (-epsilon) epsilon) :
    kernelScale ≤ rawEta s := by
  have h := mul_le_mul_of_nonneg_left
    (B699EtaSeries20261005.series_ge_one (radial_range hs)) scale_pos.le
  simpa only [mul_one] using h

theorem eta_nonneg (s : ℝ) : 0 ≤ eta s := by
  by_cases hs : s ∈ Set.Ioo (-epsilon) epsilon
  · rw [eta, Set.indicator_of_mem hs]
    exact scale_pos.le.trans (raw_eta_ge_scale ⟨hs.1.le, hs.2.le⟩)
  · simp only [eta, Set.indicator_of_notMem hs, le_refl]

theorem eta_pos_iff (s : ℝ) : 0 < eta s ↔ s ∈ Set.Ioo (-epsilon) epsilon := by
  by_cases hs : s ∈ Set.Ioo (-epsilon) epsilon
  · rw [eta, Set.indicator_of_mem hs]
    exact iff_of_true (scale_pos.trans_le (raw_eta_ge_scale ⟨hs.1.le, hs.2.le⟩)) hs
  · simp only [eta, Set.indicator_of_notMem hs, lt_self_iff_false, hs]

theorem eta_even (s : ℝ) : eta (-s) = eta s := by
  have heq : radialQ (-s) = radialQ s := by simp [radialQ]
  by_cases hs : s ∈ Set.Ioo (-epsilon) epsilon
  · have hn : -s ∈ Set.Ioo (-epsilon) epsilon := by constructor <;> linarith [hs.1, hs.2]
    simp only [eta, Set.indicator_of_mem hs, Set.indicator_of_mem hn, rawEta, heq]
  · have hn : -s ∉ Set.Ioo (-epsilon) epsilon := by
      intro hn
      exact hs ⟨by linarith [hn.2], by linarith [hn.1]⟩
    simp only [eta, Set.indicator_of_notMem hs, Set.indicator_of_notMem hn]

theorem eta_integrable : Integrable eta := by
  have hclosed : IntegrableOn rawEta (Set.Icc (-epsilon) epsilon) :=
    raw_eta_continuousOn.integrableOn_Icc
  have hopen : IntegrableOn rawEta (Set.Ioo (-epsilon) epsilon) :=
    hclosed.mono_set Set.Ioo_subset_Icc_self
  exact hopen.integrable_indicator measurableSet_Ioo

end B699EtaKernel20261005
#print axioms B699EtaKernel20261005.epsilon_pos
#print axioms B699EtaKernel20261005.scale_pos
#print axioms B699EtaKernel20261005.radial_range
#print axioms B699EtaKernel20261005.raw_eta_continuousOn
#print axioms B699EtaKernel20261005.raw_eta_ge_scale
#print axioms B699EtaKernel20261005.eta_nonneg
#print axioms B699EtaKernel20261005.eta_pos_iff
#print axioms B699EtaKernel20261005.eta_even
#print axioms B699EtaKernel20261005.eta_integrable

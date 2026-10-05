module
public import Mathlib.NumberTheory.Chebyshev
public import Mathlib.MeasureTheory.Constructions.BorelSpace.Order
public import Mathlib.MeasureTheory.Integral.Bochner.Basic
public import Mathlib.Tactic.Linarith
public import Mathlib.Tactic.NormNum
public import Mathlib.Tactic.Ring
set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option Elab.async false
@[expose] public section
namespace B699PsiSmoothing20261005
open MeasureTheory

/-- Actual compactly weighted Chebyshev-psi; no free surrogate function. -/
noncomputable def smoothedPsi (ε : ℝ) (w : ℝ → ℝ) (v : ℝ) : ℝ :=
  ∫ s in Set.Icc (-ε) ε, w s * Chebyshev.psi (v * Real.exp s)

theorem psi_exp_bounds {ε v s : ℝ} (hv : 0 ≤ v) (hs : s ∈ Set.Icc (-ε) ε) :
    Chebyshev.psi (v * Real.exp (-ε)) ≤ Chebyshev.psi (v * Real.exp s) ∧
      Chebyshev.psi (v * Real.exp s) ≤ Chebyshev.psi (v * Real.exp ε) := by
  exact ⟨Chebyshev.psi_mono (mul_le_mul_of_nonneg_left (Real.exp_le_exp.mpr hs.1) hv),
    Chebyshev.psi_mono (mul_le_mul_of_nonneg_left (Real.exp_le_exp.mpr hs.2) hv)⟩

/-- Integrability of the weight automatically gives integrability of weighted actual psi. -/
theorem weighted_psi_integrable {ε v : ℝ} {w : ℝ → ℝ} (hv : 0 ≤ v)
    (hw : IntegrableOn w (Set.Icc (-ε) ε)) :
    IntegrableOn (fun s => w s * Chebyshev.psi (v * Real.exp s)) (Set.Icc (-ε) ε) := by
  have hψ : Measurable (fun s : ℝ => Chebyshev.psi (v * Real.exp s)) :=
    Chebyshev.psi_mono.measurable.comp (measurable_const.mul Real.continuous_exp.measurable)
  have hbound : ∀ᵐ s ∂volume.restrict (Set.Icc (-ε) ε),
      ‖Chebyshev.psi (v * Real.exp s)‖ ≤ Chebyshev.psi (v * Real.exp ε) := by
    filter_upwards [ae_restrict_mem measurableSet_Icc] with s hs
    rw [Real.norm_eq_abs, abs_of_nonneg (Chebyshev.psi_nonneg _)]
    exact (psi_exp_bounds hv hs).2
  have hw' : Integrable w (volume.restrict (Set.Icc (-ε) ε)) := hw
  exact hw'.mul_bdd hψ.aestronglyMeasurable hbound

theorem smoothed_psi_bounds {ε v : ℝ} {w : ℝ → ℝ} (hv : 0 ≤ v)
    (hw : IntegrableOn w (Set.Icc (-ε) ε))
    (hw0 : ∀ s ∈ Set.Icc (-ε) ε, 0 ≤ w s)
    (hmass : (∫ s in Set.Icc (-ε) ε, w s) = 1) :
    Chebyshev.psi (v * Real.exp (-ε)) ≤ smoothedPsi ε w v ∧
      smoothedPsi ε w v ≤ Chebyshev.psi (v * Real.exp ε) := by
  have hw' : Integrable w (volume.restrict (Set.Icc (-ε) ε)) := hw
  have hprod := weighted_psi_integrable hv hw
  have hlo : (fun s => w s * Chebyshev.psi (v * Real.exp (-ε))) ≤ᵐ[
      volume.restrict (Set.Icc (-ε) ε)] (fun s => w s * Chebyshev.psi (v * Real.exp s)) := by
    filter_upwards [ae_restrict_mem measurableSet_Icc] with s hs
    exact mul_le_mul_of_nonneg_left (psi_exp_bounds hv hs).1 (hw0 s hs)
  have hhi : (fun s => w s * Chebyshev.psi (v * Real.exp s)) ≤ᵐ[
      volume.restrict (Set.Icc (-ε) ε)] (fun s => w s * Chebyshev.psi (v * Real.exp ε)) := by
    filter_upwards [ae_restrict_mem measurableSet_Icc] with s hs
    exact mul_le_mul_of_nonneg_left (psi_exp_bounds hv hs).2 (hw0 s hs)
  have hl := integral_mono_ae (hw'.mul_const (Chebyshev.psi (v * Real.exp (-ε)))) hprod hlo
  have hu := integral_mono_ae hprod (hw'.mul_const (Chebyshev.psi (v * Real.exp ε))) hhi
  rw [integral_mul_const, hmass, one_mul] at hl hu
  exact ⟨hl, hu⟩

/-- RD2 inward smoothing step (3.5), with kernel regularity but no psi budget assumed. -/
theorem inward_smoothing_difference {ε x : ℝ} {w : ℝ → ℝ} (hx : 0 ≤ x)
    (hw : IntegrableOn w (Set.Icc (-ε) ε))
    (hw0 : ∀ s ∈ Set.Icc (-ε) ε, 0 ≤ w s)
    (hmass : (∫ s in Set.Icc (-ε) ε, w s) = 1) :
    smoothedPsi ε w (((1 + 1 / 4095 : ℝ) * x) * Real.exp (-ε)) -
        smoothedPsi ε w (x * Real.exp ε) ≤
      Chebyshev.psi (x + x / 4095) - Chebyshev.psi x := by
  have hu := (smoothed_psi_bounds (mul_nonneg hx (Real.exp_pos ε).le) hw hw0 hmass).1
  have hv := (smoothed_psi_bounds
    (mul_nonneg (mul_nonneg (by norm_num : (0 : ℝ) ≤ 1 + 1 / 4095) hx)
      (Real.exp_pos (-ε)).le) hw hw0 hmass).2
  have heqlo : (x * Real.exp ε) * Real.exp (-ε) = x := by
    rw [mul_assoc, ← Real.exp_add, add_neg_cancel, Real.exp_zero, mul_one]
  have heqhi : (((1 + 1 / 4095 : ℝ) * x) * Real.exp (-ε)) * Real.exp ε =
      x + x / 4095 := by
    rw [mul_assoc, ← Real.exp_add, neg_add_cancel, Real.exp_zero, mul_one]
    ring
  rw [heqlo] at hu
  rw [heqhi] at hv
  linarith only [hu, hv]

end B699PsiSmoothing20261005
#print axioms B699PsiSmoothing20261005.psi_exp_bounds
#print axioms B699PsiSmoothing20261005.weighted_psi_integrable
#print axioms B699PsiSmoothing20261005.smoothed_psi_bounds
#print axioms B699PsiSmoothing20261005.inward_smoothing_difference

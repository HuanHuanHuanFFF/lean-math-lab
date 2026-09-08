import research.tasks.«B686-Four».runs.«20260908-reflected-sum-9bad0b9».main.SmoothTestFunction
import research.tasks.«B686-Four».runs.«20260908-reflected-sum-9bad0b9».main.WeightedGeometry
import research.tasks.«B686-Four».round8.continuation.SizeBounds

/-! An original B686/Four solution forces a large sampling discrepancy for one
explicit fixed smooth periodic test function. No analytic sampling estimate is
assumed here. The MRSTT estimate remains the external input in the paper height
argument, not a project axiom or a hidden hypothesis of this obstruction. -/

namespace B686Round9

open MeasureTheory intervalIntegral

noncomputable def originalDistance (n m : ℕ) : ℝ := (m-n : ℕ)
noncomputable def distanceScale (k n m : ℕ) : ℝ := originalDistance n m / k
noncomputable def phaseSlope (n m : ℕ) : ℝ := n / originalDistance n m

theorem original_parameters (k n m : ℕ) (hk : 802 ≤ k) (hsep : n+k ≤ m)
    (heq : blockProduct k m = 4*blockProduct k n) :
    1 ≤ distanceScale k n m ∧ 400 ≤ phaseSlope n m := by
  have hk2 : 2 ≤ k := by omega
  have hs := B686Size.size_bounds_nat k n m hk2 hsep heq
  have hd : 0 < originalDistance n m := by
    unfold originalDistance
    exact_mod_cast (show 0 < m-n by omega)
  have hkR : (802 : ℝ) ≤ k := by exact_mod_cast hk
  have hk0 : (0 : ℝ) < k := by linarith
  have hdk : (k : ℝ) ≤ originalDistance n m := by
    unfold originalDistance
    exact_mod_cast (show k ≤ m-n by omega)
  have hmd : (m : ℝ) = (n : ℝ)+originalDistance n m := by
    have hnat : m = n+(m-n) := by omega
    unfold originalDistance
    exact_mod_cast hnat
  have hsize : (k : ℝ)*originalDistance n m < 2*(m : ℝ) := by
    unfold originalDistance
    exact_mod_cast hs.1
  constructor
  · unfold distanceScale
    exact (one_le_div hk0).mpr hdk
  · unfold phaseSlope
    apply (le_div_iff₀ hd).mpr
    nlinarith [mul_le_mul_of_nonneg_right hkR hd.le]

noncomputable def samplingIntegral (k n m : ℕ) : ℝ :=
  ∫ t in 2*(k : ℝ)..4*k, mismatchTest ((n : ℝ)/t) ((m : ℝ)/t) / Real.log t

noncomputable def samplingDiscrepancy (k n m : ℕ) : ℝ :=
  |primeSampleSum k n m mismatchTest - samplingIntegral k n m|

theorem original_sampling_integral_lower (k n m : ℕ)
    (hk : 802 ≤ k) (hsep : n+k ≤ m)
    (heq : blockProduct k m = 4*blockProduct k n) :
    (k : ℝ)/(160*Real.log (4*k)) ≤ samplingIntegral k n m := by
  obtain ⟨hD, hL⟩ := original_parameters k n m hk hsep heq
  have hk2 : (2 : ℝ) ≤ k := by exact_mod_cast (show 2 ≤ k by omega)
  have hk0 : (k : ℝ) ≠ 0 := ne_of_gt (by linarith)
  have hd : 0 < originalDistance n m := by
    unfold originalDistance
    exact_mod_cast (show 0 < m-n by omega)
  have hmd : (m : ℝ) = (n : ℝ)+originalDistance n m := by
    unfold originalDistance
    exact_mod_cast (show m = n+(m-n) by omega)
  have hdk : distanceScale k n m * k = originalDistance n m := by
    unfold distanceScale
    exact div_mul_cancel₀ _ hk0
  have hl : phaseSlope n m * (distanceScale k n m * k) = (n : ℝ) := by
    rw [hdk]
    exact div_mul_cancel₀ _ hd.ne'
  have hu : (phaseSlope n m+1)*(distanceScale k n m*k) = (m : ℝ) := by
    rw [add_mul, hl, one_mul, hdk, hmd]
  have h := sampling_integral_lower mismatchTest mismatchTest_nonneg mismatchTest_plateaus
    (mismatchTest_contDiff 0).continuous (distanceScale k n m) (phaseSlope n m) k hD hL hk2
  rw [hl, hu] at h
  exact h

/-- Unconditional in Lean: any original solution of sufficiently large length
forces this discrepancy. No claim is made that the analytic height theorem itself
has been formalized. -/
theorem original_sampling_discrepancy_lower (k n m : ℕ)
    (hk : 802 ≤ k) (hsep : n+k ≤ m)
    (heq : blockProduct k m = 4*blockProduct k n) :
    (k : ℝ)/(160*Real.log (4*k)) ≤ samplingDiscrepancy k n m := by
  have hl := original_sampling_integral_lower k n m hk hsep heq
  have hz := primeSampleSum_eq_zero k n m mismatchTest (by omega) heq mismatchTest_support
  have hk2 : (2 : ℝ) ≤ k := by exact_mod_cast (show 2 ≤ k by omega)
  have hlog0 : 0 < Real.log (4*(k : ℝ)) := Real.log_pos (by linarith)
  have hi0 : 0 ≤ samplingIntegral k n m := le_trans (by positivity) hl
  unfold samplingDiscrepancy
  rw [hz, zero_sub, abs_neg, abs_of_nonneg hi0]
  exact hl

/-- info: 'B686Round9.original_parameters' depends on axioms: [propext, Classical.choice, Quot.sound] -/
#guard_msgs in
#print axioms original_parameters
/-- info: 'B686Round9.original_sampling_integral_lower' depends on axioms: [propext, Classical.choice, Quot.sound] -/
#guard_msgs in
#print axioms original_sampling_integral_lower
/-- info: 'B686Round9.original_sampling_discrepancy_lower' depends on axioms: [propext, Classical.choice, Quot.sound] -/
#guard_msgs in
#print axioms original_sampling_discrepancy_lower

end B686Round9

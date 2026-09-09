import research.tasks.«B686-Four».runs.«20260908-formalization-92c221».lean.quarter.CutIntegrals

/-! Strict decrease in the external parameter, using a mixed positive kernel
instead of differentiating under the integral sign. -/

namespace B686QuarterRunge

open Finset intervalIntegral

noncomputable section

def mixedCutIntegrand (r : ℕ) (z w u : ℝ) : ℝ :=
  cutIntegrand r 1 z u / (w - u ^ 2)

theorem mixedCutIntegrand_nonneg (r : ℕ) (z w u : ℝ) (hu : 0 ≤ u)
    (hz : u ^ 2 < z) (hw : u ^ 2 < w) : 0 ≤ mixedCutIntegrand r z w u :=
  div_nonneg (cutIntegrand_nonneg r 1 z u hu hz) (by linarith)

theorem mixedCutIntegrand_pos (r : ℕ) (z w u : ℝ) (hu : 0 < u)
    (hz : u ^ 2 < z) (hw : u ^ 2 < w) (hn : realRadicand r u ≠ 0) :
    0 < mixedCutIntegrand r z w u :=
  div_pos (cutIntegrand_pos r 1 z u hu hz hn) (by linarith)

theorem mixedCutIntegrand_shift_four_strict (r : ℕ) (z w u : ℝ)
    (hu : 0 < u) (hub : u + 2 < 2 * r - 1)
    (hz : (u + 4) ^ 2 < z) (hw : (u + 4) ^ 2 < w)
    (hn : realRadicand r u ≠ 0) :
    mixedCutIntegrand r z w u < mixedCutIntegrand r z w (u + 4) := by
  have hs := cutIntegrand_shift_four_strict r 1 z u hu hub hz hn
  have hp := cutIntegrand_pos r 1 z u hu (by nlinarith) hn
  unfold mixedCutIntegrand
  calc
    _ ≤ cutIntegrand r 1 z u / (w - (u + 4) ^ 2) :=
      div_le_div_of_nonneg_left hp.le (by linarith) (by nlinarith)
    _ < _ := (div_lt_div_iff_of_pos_right (by linarith)).mpr hs

theorem mixedCutIntegrand_continuousOn (r : ℕ) (z w a b : ℝ)
    (ha : 0 ≤ a) (hz : b ^ 2 < z) (hw : b ^ 2 < w) :
    ContinuousOn (mixedCutIntegrand r z w) (Set.Icc a b) := by
  apply (cutIntegrand_continuousOn r 1 z a b ha hz).div
  · fun_prop
  · intro u hu
    have : u ^ 2 ≤ b ^ 2 := by nlinarith [hu.1, hu.2]
    linarith

def mixedCutIntegral (s j : ℕ) (z w : ℝ) : ℝ :=
  ∫ u in (4 * (j : ℝ) + 1)..(4 * (j : ℝ) + 3), mixedCutIntegrand (2 * s) z w u

theorem mixedCutIntegral_pos (s j : ℕ) (hj : j < s) (z w : ℝ)
    (hz : (4 * (s : ℝ)) ^ 2 < z) (hw : (4 * (s : ℝ)) ^ 2 < w) :
    0 < mixedCutIntegral s j z w := by
  have hend := cut_endpoint_bound s j hj
  have hbz : (4 * (j : ℝ) + 3) ^ 2 < z := by
    nlinarith [Nat.cast_nonneg (α := ℝ) j, Nat.cast_nonneg (α := ℝ) s]
  have hbw : (4 * (j : ℝ) + 3) ^ 2 < w := by
    nlinarith [Nat.cast_nonneg (α := ℝ) j, Nat.cast_nonneg (α := ℝ) s]
  apply intervalIntegral.integral_pos (by linarith)
    (mixedCutIntegrand_continuousOn (2 * s) z w _ _ (by positivity) hbz hbw)
  · intro u hu
    apply mixedCutIntegrand_nonneg
    · linarith [hu.1, Nat.cast_nonneg (α := ℝ) j]
    · nlinarith [hu.1, hu.2, Nat.cast_nonneg (α := ℝ) j]
    · nlinarith [hu.1, hu.2, Nat.cast_nonneg (α := ℝ) j]
  · refine ⟨4 * (j : ℝ) + 2, ⟨by linarith, by linarith⟩, ?_⟩
    apply mixedCutIntegrand_pos
    · positivity
    · nlinarith [Nat.cast_nonneg (α := ℝ) j]
    · nlinarith [Nat.cast_nonneg (α := ℝ) j]
    · exact realRadicand_ne_zero_between (2 * s) j _ (by linarith) (by linarith)

theorem mixedCutIntegral_shift (s j : ℕ) (z w : ℝ) :
    mixedCutIntegral s (j + 1) z w =
      ∫ u in (4 * (j : ℝ) + 1)..(4 * (j : ℝ) + 3),
        mixedCutIntegrand (2 * s) z w (u + 4) := by
  rw [intervalIntegral.integral_comp_add_right]
  unfold mixedCutIntegral
  congr 1 <;> push_cast <;> ring

theorem mixedCutIntegral_strict_step (s j : ℕ) (hj : j + 1 < s) (z w : ℝ)
    (hz : (4 * (s : ℝ)) ^ 2 < z) (hw : (4 * (s : ℝ)) ^ 2 < w) :
    mixedCutIntegral s j z w < mixedCutIntegral s (j + 1) z w := by
  have hend := cut_endpoint_bound s (j + 1) hj
  push_cast at hend
  have hbz : (4 * (j : ℝ) + 3 + 4) ^ 2 < z := by
    nlinarith [Nat.cast_nonneg (α := ℝ) j, Nat.cast_nonneg (α := ℝ) s]
  have hbw : (4 * (j : ℝ) + 3 + 4) ^ 2 < w := by
    nlinarith [Nat.cast_nonneg (α := ℝ) j, Nat.cast_nonneg (α := ℝ) s]
  have hbz0 : (4 * (j : ℝ) + 3) ^ 2 < z := by nlinarith [Nat.cast_nonneg (α := ℝ) j]
  have hbw0 : (4 * (j : ℝ) + 3) ^ 2 < w := by nlinarith [Nat.cast_nonneg (α := ℝ) j]
  have hfc := mixedCutIntegrand_continuousOn (2 * s) z w
    (4 * (j : ℝ) + 1) (4 * (j : ℝ) + 3) (by positivity) hbz0 hbw0
  have hgc : ContinuousOn (fun u => mixedCutIntegrand (2 * s) z w (u + 4))
      (Set.Icc (4 * (j : ℝ) + 1) (4 * (j : ℝ) + 3)) := by
    apply (mixedCutIntegrand_continuousOn (2 * s) z w
      (4 * (j : ℝ) + 1 + 4) (4 * (j : ℝ) + 3 + 4) (by positivity) hbz hbw).comp
      (continuous_id.add continuous_const).continuousOn
    intro u hu
    change u + 4 ∈ Set.Icc (4 * (j : ℝ) + 1 + 4) (4 * (j : ℝ) + 3 + 4)
    exact ⟨by linarith [hu.1], by linarith [hu.2]⟩
  have hpoint (u : ℝ) (hlo : 4 * (j : ℝ) + 1 < u) (hhi : u ≤ 4 * (j : ℝ) + 3)
      (hne : realRadicand (2 * s) u ≠ 0) :
      mixedCutIntegrand (2 * s) z w u < mixedCutIntegrand (2 * s) z w (u + 4) := by
    apply mixedCutIntegrand_shift_four_strict
    · linarith [Nat.cast_nonneg (α := ℝ) j]
    · push_cast; linarith
    · nlinarith [Nat.cast_nonneg (α := ℝ) j]
    · nlinarith [Nat.cast_nonneg (α := ℝ) j]
    · exact hne
  rw [mixedCutIntegral_shift]
  apply intervalIntegral.integral_lt_integral_of_continuousOn_of_le_of_exists_lt
    (by linarith) hfc hgc
  · intro u hu
    by_cases hne : realRadicand (2 * s) u ≠ 0
    · exact (hpoint u hu.1 hu.2 hne).le
    · have hh := mixedCutIntegrand_nonneg (2 * s) z w (u + 4)
        (by linarith [hu.1, Nat.cast_nonneg (α := ℝ) j])
        (by nlinarith [hu.1, hu.2, Nat.cast_nonneg (α := ℝ) j])
        (by nlinarith [hu.1, hu.2, Nat.cast_nonneg (α := ℝ) j])
      simpa [mixedCutIntegrand, cutIntegrand, not_ne_iff.mp hne] using hh
  · refine ⟨4 * (j : ℝ) + 2, ⟨by linarith, by linarith⟩, ?_⟩
    exact hpoint _ (by linarith) (by linarith)
      (realRadicand_ne_zero_between (2 * s) j _ (by linarith) (by linarith))

theorem alternating_mixedCutIntegral_pos (s : ℕ) (hs : 1 ≤ s) (z w : ℝ)
    (hz : (4 * (s : ℝ)) ^ 2 < z) (hw : (4 * (s : ℝ)) ^ 2 < w) :
    0 < alternatingFromRight (fun j => mixedCutIntegral s j z w) s :=
  alternatingFromRight_pos _ s hs
    (fun j hj => mixedCutIntegral_pos s j hj z w hz hw)
    (fun j hj => mixedCutIntegral_strict_step s j hj z w hz hw)

theorem cutIntegrand_difference (r : ℕ) (z w u : ℝ)
    (hz : u ^ 2 < z) (hw : u ^ 2 < w) :
    cutIntegrand r 1 z u - cutIntegrand r 1 w u =
      (w - z) * mixedCutIntegrand r z w u := by
  unfold mixedCutIntegrand cutIntegrand
  simp only [pow_one]
  have hzn : z - u ^ 2 ≠ 0 := by linarith
  have hwn : w - u ^ 2 ≠ 0 := by linarith
  field_simp
  ring

theorem cutIntegral_difference (s j : ℕ) (hj : j < s) (z w : ℝ)
    (hz : (4 * (s : ℝ)) ^ 2 < z) (hw : (4 * (s : ℝ)) ^ 2 < w) :
    cutIntegral s j 1 z - cutIntegral s j 1 w = (w - z) * mixedCutIntegral s j z w := by
  have hend := cut_endpoint_bound s j hj
  have hbz : (4 * (j : ℝ) + 3) ^ 2 < z := by
    nlinarith [Nat.cast_nonneg (α := ℝ) j, Nat.cast_nonneg (α := ℝ) s]
  have hbw : (4 * (j : ℝ) + 3) ^ 2 < w := by
    nlinarith [Nat.cast_nonneg (α := ℝ) j, Nat.cast_nonneg (α := ℝ) s]
  have hzi := (cutIntegrand_continuousOn (2 * s) 1 z _ _ (by positivity) hbz).intervalIntegrable_of_Icc
    (μ := MeasureTheory.volume)
    (by linarith : 4 * (j : ℝ) + 1 ≤ 4 * j + 3)
  have hwi := (cutIntegrand_continuousOn (2 * s) 1 w _ _ (by positivity) hbw).intervalIntegrable_of_Icc
    (μ := MeasureTheory.volume)
    (by linarith : 4 * (j : ℝ) + 1 ≤ 4 * j + 3)
  unfold cutIntegral mixedCutIntegral
  rw [← intervalIntegral.integral_sub hzi hwi, ← intervalIntegral.integral_const_mul]
  apply intervalIntegral.integral_congr_Ioo_of_le (by linarith)
  intro u hu
  apply cutIntegrand_difference
  · nlinarith [hu.1, hu.2, Nat.cast_nonneg (α := ℝ) j]
  · nlinarith [hu.1, hu.2, Nat.cast_nonneg (α := ℝ) j]

theorem alternating_cutIntegral_difference (s : ℕ) (z w : ℝ)
    (hz : (4 * (s : ℝ)) ^ 2 < z) (hw : (4 * (s : ℝ)) ^ 2 < w) :
    alternatingFromRight (fun j => cutIntegral s j 1 z) s -
      alternatingFromRight (fun j => cutIntegral s j 1 w) s =
        (w - z) * alternatingFromRight (fun j => mixedCutIntegral s j z w) s := by
  unfold alternatingFromRight
  rw [← sum_sub_distrib, mul_sum]
  apply sum_congr rfl
  intro j hj
  rw [← mul_sub, cutIntegral_difference s j (mem_range.mp hj) z w hz hw]
  ring

theorem alternating_cutIntegral_strictAnti (s : ℕ) (hs : 1 ≤ s) (z w : ℝ)
    (hz : (4 * (s : ℝ)) ^ 2 < z) (hzw : z < w) :
    alternatingFromRight (fun j => cutIntegral s j 1 w) s <
      alternatingFromRight (fun j => cutIntegral s j 1 z) s := by
  have hw := hz.trans hzw
  have hdiff := alternating_cutIntegral_difference s z w hz hw
  have hp := mul_pos (sub_pos.mpr hzw) (alternating_mixedCutIntegral_pos s hs z w hz hw)
  linarith

end

end B686QuarterRunge

import research.tasks.«B686-Four».runs.«20260908-formalization-92c221».lean.quarter.RealShift
import Mathlib.MeasureTheory.Integral.IntervalIntegral.IntegrationByParts

namespace B686QuarterRunge

open Finset intervalIntegral
open scoped Topology

noncomputable section

theorem realRadicand_continuous (r : ℕ) : Continuous (realRadicand r) := by
  unfold realRadicand
  fun_prop

theorem cutIntegrand_continuousOn (r p : ℕ) (z a b : ℝ)
    (ha : 0 ≤ a) (hb : b ^ 2 < z) :
    ContinuousOn (cutIntegrand r p z) (Set.Icc a b) := by
  unfold cutIntegrand
  apply ContinuousOn.div
  · exact ((continuous_const.mul continuous_id).mul
      (realRadicand_continuous r |>.abs.sqrt)).continuousOn
  · fun_prop
  · intro u hu
    apply pow_ne_zero
    have : u ^ 2 ≤ b ^ 2 := by nlinarith [hu.1, hu.2]
    linarith

theorem cutIntegrand_nonneg (r p : ℕ) (z u : ℝ) (hu : 0 ≤ u) (hz : u ^ 2 < z) :
    0 ≤ cutIntegrand r p z u := by
  unfold cutIntegrand
  positivity

def cutIntegral (s j p : ℕ) (z : ℝ) : ℝ :=
  ∫ u in (4 * (j : ℝ) + 1)..(4 * (j : ℝ) + 3), cutIntegrand (2 * s) p z u

theorem cut_endpoint_bound (s j : ℕ) (hj : j < s) :
    4 * (j : ℝ) + 3 < 4 * (s : ℝ) := by
  have hjs : (j : ℝ) + 1 ≤ s := by exact_mod_cast hj
  linarith

theorem cutIntegral_pos (s j p : ℕ) (hj : j < s) (z : ℝ)
    (hz : (4 * (s : ℝ)) ^ 2 < z) : 0 < cutIntegral s j p z := by
  have hend := cut_endpoint_bound s j hj
  have hb : (4 * (j : ℝ) + 3) ^ 2 < z := by
    nlinarith [Nat.cast_nonneg (α := ℝ) j, Nat.cast_nonneg (α := ℝ) s]
  apply intervalIntegral.integral_pos (by linarith)
    (cutIntegrand_continuousOn (2 * s) p z _ _ (by positivity) hb)
  · intro u hu
    apply cutIntegrand_nonneg
    · linarith [hu.1, Nat.cast_nonneg (α := ℝ) j]
    · nlinarith [hu.1, hu.2, Nat.cast_nonneg (α := ℝ) j]
  · refine ⟨4 * (j : ℝ) + 2, ⟨by linarith, by linarith⟩, ?_⟩
    apply cutIntegrand_pos
    · positivity
    · nlinarith [Nat.cast_nonneg (α := ℝ) j]
    · exact realRadicand_ne_zero_between (2 * s) j _ (by linarith) (by linarith)

theorem cutIntegral_shift (s j p : ℕ) (z : ℝ) :
    cutIntegral s (j + 1) p z =
      ∫ u in (4 * (j : ℝ) + 1)..(4 * (j : ℝ) + 3),
        cutIntegrand (2 * s) p z (u + 4) := by
  rw [intervalIntegral.integral_comp_add_right]
  unfold cutIntegral
  congr 1 <;> push_cast <;> ring

theorem cutIntegral_strict_step (s j p : ℕ) (hj : j + 1 < s) (z : ℝ)
    (hz : (4 * (s : ℝ)) ^ 2 < z) :
    cutIntegral s j p z < cutIntegral s (j + 1) p z := by
  have hend := cut_endpoint_bound s (j + 1) hj
  push_cast at hend
  have hb : (4 * (j : ℝ) + 3 + 4) ^ 2 < z := by
    nlinarith [Nat.cast_nonneg (α := ℝ) j, Nat.cast_nonneg (α := ℝ) s]
  have hb0 : (4 * (j : ℝ) + 3) ^ 2 < z := by
    nlinarith [Nat.cast_nonneg (α := ℝ) j]
  have hfc := cutIntegrand_continuousOn (2 * s) p z
    (4 * (j : ℝ) + 1) (4 * (j : ℝ) + 3) (by positivity) hb0
  have hgc : ContinuousOn (fun u => cutIntegrand (2 * s) p z (u + 4))
      (Set.Icc (4 * (j : ℝ) + 1) (4 * (j : ℝ) + 3)) := by
    apply (cutIntegrand_continuousOn (2 * s) p z
      (4 * (j : ℝ) + 1 + 4) (4 * (j : ℝ) + 3 + 4) (by positivity) hb).comp
      (continuous_id.add continuous_const).continuousOn
    intro u hu
    change u + 4 ∈ Set.Icc (4 * (j : ℝ) + 1 + 4) (4 * (j : ℝ) + 3 + 4)
    exact ⟨by linarith [hu.1], by linarith [hu.2]⟩
  have hpoint (u : ℝ) (hlo : 4 * (j : ℝ) + 1 < u) (hhi : u ≤ 4 * (j : ℝ) + 3)
      (hne : realRadicand (2 * s) u ≠ 0) :
      cutIntegrand (2 * s) p z u < cutIntegrand (2 * s) p z (u + 4) := by
    apply cutIntegrand_shift_four_strict
    · linarith [Nat.cast_nonneg (α := ℝ) j]
    · push_cast
      linarith
    · nlinarith [Nat.cast_nonneg (α := ℝ) j]
    · exact hne
  rw [cutIntegral_shift]
  apply intervalIntegral.integral_lt_integral_of_continuousOn_of_le_of_exists_lt
    (by linarith) hfc hgc
  · intro u hu
    by_cases hne : realRadicand (2 * s) u ≠ 0
    · exact (hpoint u hu.1 hu.2 hne).le
    · have hz' : (u + 4) ^ 2 < z := by
        nlinarith [hu.1, hu.2, Nat.cast_nonneg (α := ℝ) j]
      have hh := cutIntegrand_nonneg (2 * s) p z (u + 4)
        (by linarith [hu.1, Nat.cast_nonneg (α := ℝ) j]) hz'
      simpa [cutIntegrand, not_ne_iff.mp hne] using hh
  · refine ⟨4 * (j : ℝ) + 2, ⟨by linarith, by linarith⟩, ?_⟩
    exact hpoint _ (by linarith) (by linarith)
      (realRadicand_ne_zero_between (2 * s) j _ (by linarith) (by linarith))

def alternatingFromRight (f : ℕ → ℝ) (s : ℕ) : ℝ :=
  ∑ j ∈ range s, (-1) ^ (s - 1 - j) * f j

theorem alternatingFromRight_add_two (f : ℕ → ℝ) (s : ℕ) :
    alternatingFromRight f (s + 2) = alternatingFromRight f s + f (s + 1) - f s := by
  unfold alternatingFromRight
  rw [show s + 2 = (s + 1) + 1 by omega, sum_range_succ, sum_range_succ]
  have hh : (∑ j ∈ range s, (-1 : ℝ) ^ (s + 1 + 1 - 1 - j) * f j) =
      ∑ j ∈ range s, (-1 : ℝ) ^ (s - 1 - j) * f j := by
    apply sum_congr rfl
    intro j hj
    rw [show s + 1 + 1 - 1 - j = (s - 1 - j) + 2 by have := mem_range.mp hj; omega,
      pow_add]
    norm_num
  rw [hh]
  norm_num
  ring

theorem alternatingFromRight_pos (f : ℕ → ℝ) (s : ℕ) (hs : 1 ≤ s)
    (hpos : ∀ j < s, 0 < f j) (hstep : ∀ j, j + 1 < s → f j < f (j + 1)) :
    0 < alternatingFromRight f s := by
  induction s using Nat.strong_induction_on with
  | h s ih =>
    rcases s with _ | _ | s
    · omega
    · simpa [alternatingFromRight] using hpos 0 (by omega)
    · rw [alternatingFromRight_add_two]
      have hprev : 0 ≤ alternatingFromRight f s := by
        by_cases hs0 : s = 0
        · simp [hs0, alternatingFromRight]
        · exact (ih s (by omega) (by omega) (fun j hj => hpos j (by omega))
            (fun j hj => hstep j (by omega))).le
      have hlast := hstep s (by omega)
      linarith

theorem alternating_cutIntegral_pos (s p : ℕ) (hs : 1 ≤ s) (z : ℝ)
    (hz : (4 * (s : ℝ)) ^ 2 < z) :
    0 < alternatingFromRight (fun j => cutIntegral s j p z) s := by
  exact alternatingFromRight_pos _ s hs
    (fun j hj => cutIntegral_pos s j p hj z hz)
    (fun j hj => cutIntegral_strict_step s j p hj z hz)

end

end B686QuarterRunge

import research.tasks.«B686-Four».runs.«20260908-formalization-92c221».lean.quarter.AnalyticRemainder

/-! The directed real-axis jump of the actual quarter branches. -/

namespace B686QuarterRunge

open Finset Complex

noncomputable section

theorem rootLocations_strictMono : StrictMono rootLocations := by
  intro i j hij
  have hcast : (i : ℝ) < j := by exact_mod_cast hij
  dsimp [rootLocations]
  nlinarith [Nat.cast_nonneg (α := ℝ) i, Nat.cast_nonneg (α := ℝ) j]

theorem negative_indices_between (r h : ℕ) (t : ℝ)
    (ha : rootLocations h < t) (hb : t < rootLocations (h + 1)) :
    (range r).filter (fun i => t < rootLocations i) = Ico (h + 1) r := by
  ext i
  simp only [mem_filter, mem_range, mem_Ico]
  constructor
  · rintro ⟨hir, hti⟩
    refine ⟨?_, hir⟩
    by_contra hne
    have hih : i ≤ h := by omega
    have hi := rootLocations_strictMono.monotone hih
    linarith
  · rintro ⟨hhi, hir⟩
    exact ⟨hir, hb.trans_le (rootLocations_strictMono.monotone hhi)⟩

theorem upperProduct_on_band (s h : ℕ) (t : ℝ)
    (ha : rootLocations h < t) (hb : t < rootLocations (h + 1)) :
    upperProduct rootLocations (2 * s) (t : ℂ) =
      Complex.I ^ (2 * s - (h + 1)) * (rootDensity rootLocations (2 * s) t : ℂ) := by
  rw [upperProduct_real, negative_indices_between (2 * s) h t ha hb, Nat.card_Ico]

def boundaryJump (s : ℕ) (t : ℝ) : ℂ :=
  upperRemainder s (t : ℂ) - lowerRemainder s (t : ℂ)

theorem boundaryJump_eq (s : ℕ) (t : ℝ) :
    boundaryJump s t = upperProduct rootLocations (2 * s) (t : ℂ) -
      (starRingEnd ℂ) (upperProduct rootLocations (2 * s) (t : ℂ)) := by
  rw [boundaryJump, upperRemainder, lowerRemainder, lowerProduct_real_eq_conj]
  ring

theorem boundaryJump_on_cut (s j : ℕ) (hj : j < s) (t : ℝ)
    (ha : rootLocations (2 * j) < t) (hb : t < rootLocations (2 * j + 1)) :
    boundaryJump s t = 2 * Complex.I *
      (((-1 : ℝ) ^ (s - 1 - j) * rootDensity rootLocations (2 * s) t : ℝ) : ℂ) := by
  rw [boundaryJump_eq, upperProduct_on_band s (2 * j) t ha hb,
    show 2 * s - (2 * j + 1) = 2 * (s - 1 - j) + 1 by omega,
    pow_add, pow_mul, Complex.I_sq, pow_one]
  simp only [map_mul, map_pow, map_neg, map_one, Complex.conj_I,
    Complex.conj_ofReal, Complex.ofReal_mul, Complex.ofReal_pow, Complex.ofReal_neg,
    Complex.ofReal_one]
  ring

theorem boundaryJump_on_gap (s j : ℕ) (hj : j + 1 ≤ s) (t : ℝ)
    (ha : rootLocations (2 * j + 1) < t) (hb : t < rootLocations (2 * j + 1 + 1)) :
    boundaryJump s t = 0 := by
  rw [boundaryJump_eq, upperProduct_on_band s (2 * j + 1) t ha hb,
    show 2 * s - (2 * j + 1 + 1) = 2 * (s - (j + 1)) by omega,
    pow_mul, Complex.I_sq]
  simp

theorem boundaryJump_at_root (s i : ℕ) (hi : i < 2 * s) :
    boundaryJump s (rootLocations i) = 0 := by
  have hzero : rootDensity rootLocations (2 * s) (rootLocations i) = 0 := by
    unfold rootDensity
    have hp : (∏ j ∈ range (2 * s), (rootLocations i - rootLocations j)) = 0 := by
      apply prod_eq_zero (mem_range.mpr hi)
      ring
    rw [hp]
    simp
  rw [boundaryJump_eq, upperProduct_real, hzero]
  simp

theorem boundaryJump_left (s : ℕ) (t : ℝ) (ht : t < rootLocations 0) :
    boundaryJump s t = 0 := by
  have hfilter : (range (2 * s)).filter (fun i => t < rootLocations i) = range (2 * s) := by
    apply filter_eq_self.mpr
    intro i hi
    exact ht.trans_le (rootLocations_strictMono.monotone (Nat.zero_le i))
  rw [boundaryJump_eq, upperProduct_real, hfilter, card_range, pow_mul, Complex.I_sq]
  simp

theorem boundaryJump_right (s : ℕ) (t : ℝ) (ht : rootLocations (2 * s) ≤ t) :
    boundaryJump s t = 0 := by
  have hfilter : (range (2 * s)).filter (fun i => t < rootLocations i) = ∅ := by
    apply filter_eq_empty_iff.mpr
    intro i hi hti
    have hh := rootLocations_strictMono (mem_range.mp hi)
    linarith
  rw [boundaryJump_eq, upperProduct_real, hfilter]
  simp

theorem remainders_agree_outside (s : ℕ) (t : ℝ) (ht : rootLocations (2 * s) ≤ |t|) :
    upperRemainder s (t : ℂ) = lowerRemainder s (t : ℂ) := by
  apply sub_eq_zero.mp
  change boundaryJump s t = 0
  rcases le_abs.mp ht with ht | ht
  · exact boundaryJump_right s t ht
  · apply boundaryJump_left s t
    have hp : 0 < rootLocations (2 * s) := by unfold rootLocations; positivity
    have hzero : rootLocations 0 = 1 := by norm_num [rootLocations]
    rw [hzero]
    linarith

end

end B686QuarterRunge

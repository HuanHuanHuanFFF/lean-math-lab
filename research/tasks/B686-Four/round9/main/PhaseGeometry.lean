import research.tasks.«B686-Four».round9.main.GridGeometry

/-! Connect actual fractional-part rectangles to the two-frequency integral bound.
The test function's nonnegativity, plateaus, and interval integrability remain
explicit hypotheses; no smooth cutoff or analytic sampling theorem is assumed
to have been constructed by this file. -/

namespace B686Round9

open Set MeasureTheory intervalIntegral

def HasMismatchPlateaus (W : ℝ → ℝ → ℝ) : Prop :=
  (∀ u v, Int.fract u ∈ Icc (7/8 : ℝ) (15/16) →
    Int.fract v ∈ Icc (1/8 : ℝ) (7/16) → 1 ≤ W u v) ∧
  (∀ u v, Int.fract v ∈ Icc (7/8 : ℝ) (15/16) →
    Int.fract u ∈ Icc (1/8 : ℝ) (7/16) → 1 ≤ W u v)

theorem high_plus_quarter (u x : ℝ)
    (hu : Int.fract u ∈ Icc (7/8 : ℝ) (15/16))
    (hx : Int.fract x ∈ Icc (1/4 : ℝ) (1/2)) :
    Int.fract (u+x) ∈ Icc (1/8 : ℝ) (7/16) := by
  have heq : Int.fract (u+x) = Int.fract u + Int.fract x - 1 := by
    apply Int.fract_eq_iff.mpr
    refine ⟨by linarith [hu.1, hx.1], by linarith [hu.2, hx.2], ?_⟩
    refine ⟨⌊u⌋ + ⌊x⌋ + 1, ?_⟩
    push_cast
    linarith [Int.fract_add_floor u, Int.fract_add_floor x]
  rw [heq]
  constructor <;> linarith [hu.1, hu.2, hx.1, hx.2]

theorem high_minus_quarter (u x : ℝ)
    (hu : Int.fract u ∈ Icc (7/8 : ℝ) (15/16))
    (hx : Int.fract x ∈ Icc (1/2 : ℝ) (3/4)) :
    Int.fract (u-x) ∈ Icc (1/8 : ℝ) (7/16) := by
  have heq : Int.fract (u-x) = Int.fract u - Int.fract x := by
    apply Int.fract_eq_iff.mpr
    refine ⟨by linarith [hu.1, hx.2], by linarith [hu.2, hx.1], ?_⟩
    refine ⟨⌊u⌋ - ⌊x⌋, ?_⟩
    push_cast
    linarith [Int.fract_add_floor u, Int.fract_add_floor x]
  rw [heq]
  constructor <;> linarith [hu.1, hu.2, hx.1, hx.2]

theorem plateau_dominates_plus (W : ℝ → ℝ → ℝ)
    (hW0 : ∀ u v, 0 ≤ W u v) (hW : HasMismatchPlateaus W)
    (L x : ℝ) (hx : Int.fract x ∈ Icc (1/4 : ℝ) (1/2)) :
    windowIndicator (7/8) (15/16) (L*x) ≤ W (L*x) ((L+1)*x) := by
  unfold windowIndicator
  by_cases hu : Int.fract (L*x) ∈ Icc (7/8 : ℝ) (15/16)
  · rw [Set.indicator_of_mem hu]
    apply hW.1 _ _ hu
    have heq : (L+1)*x = L*x+x := by ring
    rw [heq]
    exact high_plus_quarter (L*x) x hu hx
  · rw [Set.indicator_of_notMem hu]
    exact hW0 _ _

theorem plateau_dominates_minus (W : ℝ → ℝ → ℝ)
    (hW0 : ∀ u v, 0 ≤ W u v) (hW : HasMismatchPlateaus W)
    (L x : ℝ) (hx : Int.fract x ∈ Icc (1/2 : ℝ) (3/4)) :
    windowIndicator (7/8) (15/16) ((L+1)*x) ≤ W (L*x) ((L+1)*x) := by
  unfold windowIndicator
  by_cases hu : Int.fract ((L+1)*x) ∈ Icc (7/8 : ℝ) (15/16)
  · rw [Set.indicator_of_mem hu]
    apply hW.2 _ _ hu
    have heq : L*x = (L+1)*x-x := by ring
    rw [heq]
    exact high_minus_quarter ((L+1)*x) x hu hx
  · rw [Set.indicator_of_notMem hu]
    exact hW0 _ _

/-- A real integral lower bound, uniform in every real D ≥ 1 and L ≥ 400. -/
theorem phase_integral_lower (W : ℝ → ℝ → ℝ)
    (hW0 : ∀ u v, 0 ≤ W u v) (hW : HasMismatchPlateaus W)
    (D L : ℝ) (hD : 1 ≤ D) (hL : 400 ≤ L)
    (hF : ∀ a b, IntervalIntegrable (fun x => W (L*x) ((L+1)*x)) volume a b) :
    D/640 ≤ ∫ x in D/4..D/2, W (L*x) ((L+1)*x) := by
  have h := two_frequency_integral_lower (fun x => W (L*x) ((L+1)*x))
    (D/4) L (by linarith) hL hF (fun x => hW0 _ _)
    (fun x hlo hhi => plateau_dominates_plus W hW0 hW L x ⟨hlo, hhi⟩)
    (fun x hlo hhi => plateau_dominates_minus W hW0 hW L x ⟨hlo, hhi⟩)
  have hq2 : 2*(D/4) = D/2 := by ring
  have hq160 : (D/4)/160 = D/640 := by ring
  rw [hq2, hq160] at h
  exact h

/-- info: 'B686Round9.high_plus_quarter' depends on axioms: [propext, Classical.choice, Quot.sound] -/
#guard_msgs in
#print axioms high_plus_quarter
/-- info: 'B686Round9.high_minus_quarter' depends on axioms: [propext, Classical.choice, Quot.sound] -/
#guard_msgs in
#print axioms high_minus_quarter
/-- info: 'B686Round9.phase_integral_lower' depends on axioms: [propext, Classical.choice, Quot.sound] -/
#guard_msgs in
#print axioms phase_integral_lower

end B686Round9

import research.tasks.«B686-Four».runs.«20260908-reflected-sum-9bad0b9».main.PeriodicSmooth
import research.tasks.«B686-Four».runs.«20260908-reflected-sum-9bad0b9».main.PhaseInterface
import research.tasks.«B686-Four».runs.«20260908-reflected-sum-9bad0b9».main.PhaseGeometry

/-! A single fixed C-infinity test function with both mismatch rectangles.
Uses mathlib's smooth transition; all parameters are explicit constants. -/

namespace B686Round9

open Set

noncomputable def highCutoffBase (x : ℝ) : ℝ :=
  Real.smoothTransition (32*x-27) * Real.smoothTransition (31-32*x)

noncomputable def lowCutoffBase (x : ℝ) : ℝ :=
  Real.smoothTransition (16*x-1) * Real.smoothTransition (15-32*x)

noncomputable def highCutoff : ℝ → ℝ := periodicLift highCutoffBase
noncomputable def lowCutoff : ℝ → ℝ := periodicLift lowCutoffBase

noncomputable def mismatchTest (u v : ℝ) : ℝ :=
  highCutoff u * lowCutoff v + lowCutoff u * highCutoff v

theorem highCutoffBase_contDiff (n : ℕ∞) : ContDiff ℝ n highCutoffBase := by
  unfold highCutoffBase
  exact (Real.smoothTransition.contDiff.comp
    ((contDiff_const.mul contDiff_id).sub contDiff_const)).mul
    (Real.smoothTransition.contDiff.comp
      (contDiff_const.sub (contDiff_const.mul contDiff_id)))

theorem lowCutoffBase_contDiff (n : ℕ∞) : ContDiff ℝ n lowCutoffBase := by
  unfold lowCutoffBase
  exact (Real.smoothTransition.contDiff.comp
    ((contDiff_const.mul contDiff_id).sub contDiff_const)).mul
    (Real.smoothTransition.contDiff.comp
      (contDiff_const.sub (contDiff_const.mul contDiff_id)))

theorem highCutoffBase_zero (x : ℝ) (hx : x ≤ 27/32 ∨ 31/32 ≤ x) :
    highCutoffBase x = 0 := by
  unfold highCutoffBase
  rcases hx with hx | hx
  · rw [Real.smoothTransition.zero_of_nonpos (by linarith), zero_mul]
  · rw [Real.smoothTransition.zero_of_nonpos (show 31-32*x ≤ 0 by linarith), mul_zero]

theorem lowCutoffBase_zero (x : ℝ) (hx : x ≤ 1/16 ∨ 15/32 ≤ x) :
    lowCutoffBase x = 0 := by
  unfold lowCutoffBase
  rcases hx with hx | hx
  · rw [Real.smoothTransition.zero_of_nonpos (by linarith), zero_mul]
  · rw [Real.smoothTransition.zero_of_nonpos (show 15-32*x ≤ 0 by linarith), mul_zero]

theorem highCutoff_contDiff (n : ℕ∞) : ContDiff ℝ n highCutoff :=
  periodicLift_contDiff highCutoffBase (27/32) (31/32) n
    (by norm_num) (by norm_num) (by norm_num) (highCutoffBase_contDiff n) highCutoffBase_zero

theorem lowCutoff_contDiff (n : ℕ∞) : ContDiff ℝ n lowCutoff :=
  periodicLift_contDiff lowCutoffBase (1/16) (15/32) n
    (by norm_num) (by norm_num) (by norm_num) (lowCutoffBase_contDiff n) lowCutoffBase_zero

theorem mismatchTest_contDiff (n : ℕ∞) :
    ContDiff ℝ n (fun z : ℝ × ℝ => mismatchTest z.1 z.2) := by
  exact ((highCutoff_contDiff n |>.comp contDiff_fst).mul
    (lowCutoff_contDiff n |>.comp contDiff_snd)).add
    ((lowCutoff_contDiff n |>.comp contDiff_fst).mul
      (highCutoff_contDiff n |>.comp contDiff_snd))

theorem highCutoff_nonneg (u : ℝ) : 0 ≤ highCutoff u :=
  mul_nonneg (Real.smoothTransition.nonneg _) (Real.smoothTransition.nonneg _)

theorem lowCutoff_nonneg (u : ℝ) : 0 ≤ lowCutoff u :=
  mul_nonneg (Real.smoothTransition.nonneg _) (Real.smoothTransition.nonneg _)

theorem mismatchTest_nonneg (u v : ℝ) : 0 ≤ mismatchTest u v :=
  add_nonneg (mul_nonneg (highCutoff_nonneg u) (lowCutoff_nonneg v))
    (mul_nonneg (lowCutoff_nonneg u) (highCutoff_nonneg v))

theorem highCutoff_le_one (u : ℝ) : highCutoff u ≤ 1 := by
  exact mul_le_one₀ (Real.smoothTransition.le_one _)
    (Real.smoothTransition.nonneg _) (Real.smoothTransition.le_one _)

theorem lowCutoff_le_one (u : ℝ) : lowCutoff u ≤ 1 := by
  exact mul_le_one₀ (Real.smoothTransition.le_one _)
    (Real.smoothTransition.nonneg _) (Real.smoothTransition.le_one _)

theorem highCutoff_one (u : ℝ) (hu : Int.fract u ∈ Icc (7/8 : ℝ) (15/16)) :
    highCutoff u = 1 := by
  unfold highCutoff periodicLift highCutoffBase
  rw [Real.smoothTransition.one_of_one_le (show 1 ≤ 32*Int.fract u-27 by linarith [hu.1]),
    Real.smoothTransition.one_of_one_le (show 1 ≤ 31-32*Int.fract u by linarith [hu.2]), one_mul]

theorem lowCutoff_one (u : ℝ) (hu : Int.fract u ∈ Icc (1/8 : ℝ) (7/16)) :
    lowCutoff u = 1 := by
  unfold lowCutoff periodicLift lowCutoffBase
  rw [Real.smoothTransition.one_of_one_le (show 1 ≤ 16*Int.fract u-1 by linarith [hu.1]),
    Real.smoothTransition.one_of_one_le (show 1 ≤ 15-32*Int.fract u by linarith [hu.2]), one_mul]

theorem mismatchTest_plateaus : HasMismatchPlateaus mismatchTest := by
  constructor
  · intro u v hu hv
    unfold mismatchTest
    rw [highCutoff_one u hu, lowCutoff_one v hv, one_mul]
    exact le_add_of_nonneg_right (mul_nonneg (lowCutoff_nonneg u) (highCutoff_nonneg v))
  · intro u v hv hu
    unfold mismatchTest
    rw [highCutoff_one v hv, lowCutoff_one u hu, one_mul]
    exact le_add_of_nonneg_left (mul_nonneg (highCutoff_nonneg u) (lowCutoff_nonneg v))

theorem highCutoff_support (u : ℝ) (hu : highCutoff u ≠ 0) : (3/4 : ℝ) < Int.fract u := by
  by_contra hn
  apply hu
  exact highCutoffBase_zero _ (Or.inl (by linarith))

theorem lowCutoff_support (u : ℝ) (hu : lowCutoff u ≠ 0) : Int.fract u < (1/2 : ℝ) := by
  by_contra hn
  apply hu
  exact lowCutoffBase_zero _ (Or.inr (by linarith))

theorem mismatchTest_le_one (u v : ℝ) : mismatchTest u v ≤ 1 := by
  by_cases hu : highCutoff u = 0
  · unfold mismatchTest
    rw [hu, zero_mul, zero_add]
    exact mul_le_one₀ (lowCutoff_le_one u) (highCutoff_nonneg v) (highCutoff_le_one v)
  · have hl : lowCutoff u = 0 := by
      exact lowCutoffBase_zero _ (Or.inr (by linarith [highCutoff_support u hu]))
    unfold mismatchTest
    rw [hl, zero_mul, add_zero]
    exact mul_le_one₀ (highCutoff_le_one u) (lowCutoff_nonneg v) (lowCutoff_le_one v)

theorem mismatchTest_support : HasMismatchSupport mismatchTest := by
  intro u v huv
  by_cases hfirst : highCutoff u * lowCutoff v = 0
  · have hsecond : lowCutoff u * highCutoff v ≠ 0 := by
      intro hzero
      apply huv
      exact show highCutoff u * lowCutoff v + lowCutoff u * highCutoff v = 0 by rw [hfirst, hzero, add_zero]
    exact Or.inr ⟨highCutoff_support v (mul_ne_zero_iff.mp hsecond).2,
      lowCutoff_support u (mul_ne_zero_iff.mp hsecond).1⟩
  · exact Or.inl ⟨highCutoff_support u (mul_ne_zero_iff.mp hfirst).1,
      lowCutoff_support v (mul_ne_zero_iff.mp hfirst).2⟩

theorem mismatchTest_periodic_left (v : ℝ) : Function.Periodic (fun u => mismatchTest u v) 1 := by
  intro u
  simp [mismatchTest, highCutoff, lowCutoff, periodicLift, Int.fract_add_one]

theorem mismatchTest_periodic_right (u : ℝ) : Function.Periodic (mismatchTest u) 1 := by
  intro v
  simp [mismatchTest, highCutoff, lowCutoff, periodicLift, Int.fract_add_one]

/-- info: 'B686Round9.mismatchTest_contDiff' depends on axioms: [propext, Classical.choice, Quot.sound] -/
#guard_msgs in
#print axioms mismatchTest_contDiff
/-- info: 'B686Round9.mismatchTest_plateaus' depends on axioms: [propext, Classical.choice, Quot.sound] -/
#guard_msgs in
#print axioms mismatchTest_plateaus
/-- info: 'B686Round9.mismatchTest_support' depends on axioms: [propext, Classical.choice, Quot.sound] -/
#guard_msgs in
#print axioms mismatchTest_support
/-- info: 'B686Round9.mismatchTest_le_one' depends on axioms: [propext, Classical.choice, Quot.sound] -/
#guard_msgs in
#print axioms mismatchTest_le_one
/-- info: 'B686Round9.mismatchTest_periodic_left' depends on axioms: [propext, Classical.choice, Quot.sound] -/
#guard_msgs in
#print axioms mismatchTest_periodic_left
/-- info: 'B686Round9.mismatchTest_periodic_right' depends on axioms: [propext, Classical.choice, Quot.sound] -/
#guard_msgs in
#print axioms mismatchTest_periodic_right

end B686Round9

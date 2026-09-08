import Mathlib.MeasureTheory.Integral.IntervalIntegral.Periodic
import Mathlib.MeasureTheory.Function.Floor
import research.tasks.«B686-Four».round9.main.StripePrimitive

/-! Connect the periodic stripe primitive to genuine Lebesgue integration. -/

namespace B686Round9

open Set MeasureTheory intervalIntegral

noncomputable def stripeIndicator (x : ℝ) : ℝ :=
  (Icc (1/4 : ℝ) (3/4)).indicator (fun _ => 1) (Int.fract x)

theorem stripeIndicator_periodic : Function.Periodic stripeIndicator 1 := by
  intro x
  simp [stripeIndicator, Int.fract_add_one]

theorem stripeIndicator_measurable : Measurable stripeIndicator := by
  exact (measurable_const.indicator measurableSet_Icc).comp measurable_fract

theorem stripeIndicator_bound (x : ℝ) : ‖stripeIndicator x‖ ≤ 1 := by
  unfold stripeIndicator
  by_cases hx : Int.fract x ∈ Icc (1/4 : ℝ) (3/4)
  · rw [Set.indicator_of_mem hx]
    norm_num
  · rw [Set.indicator_of_notMem hx]
    norm_num

theorem stripeIndicator_intervalIntegrable (a b : ℝ) :
    IntervalIntegrable stripeIndicator volume a b := by
  apply intervalIntegrable_iff.mpr
  apply Measure.integrableOn_of_bounded measure_Ioc_lt_top.ne
    stripeIndicator_measurable.aestronglyMeasurable
  exact Filter.Eventually.of_forall stripeIndicator_bound

theorem stripeIndicator_on_unit (x : ℝ) (hlo : 0 ≤ x) (hhi : x ≤ 1) :
    stripeIndicator x = (Icc (1/4 : ℝ) (3/4)).indicator (fun _ => 1) x := by
  by_cases hlt : x < 1
  · have hf : ⌊x⌋ = (0 : ℤ) := Int.floor_eq_iff.mpr (by simpa using And.intro hlo hlt)
    simp [stripeIndicator, Int.fract, hf]
  · have hx : x = 1 := by linarith
    subst x
    norm_num [stripeIndicator]

theorem stripeIndicator_integral_unit (r : ℝ) (hlo : 0 ≤ r) (hhi : r ≤ 1) :
    (∫ x in 0..r, stripeIndicator x) = stripeRamp r := by
  rw [integral_of_le hlo]
  have hfun : (∫ x in Ioc 0 r, stripeIndicator x) =
      ∫ x in Ioc 0 r, (Icc (1/4 : ℝ) (3/4)).indicator (fun _ => (1 : ℝ)) x := by
    apply setIntegral_congr_fun measurableSet_Ioc
    intro x hx
    exact stripeIndicator_on_unit x hx.1.le (hx.2.trans hhi)
  rw [hfun, setIntegral_indicator measurableSet_Icc]
  have hs : Ioc 0 r ∩ Icc (1/4 : ℝ) (3/4) = Icc (1/4 : ℝ) (min r (3/4)) := by
    ext x
    simp only [mem_inter_iff, mem_Ioc, mem_Icc, le_min_iff]
    constructor
    · rintro ⟨⟨_, hxr⟩, ⟨hxl, hxu⟩⟩
      exact ⟨hxl, hxr, hxu⟩
    · rintro ⟨hxl, hxr, hxu⟩
      exact ⟨⟨by linarith, hxr⟩, hxl, hxu⟩
  rw [hs, setIntegral_const]
  simp only [smul_eq_mul, mul_one, Real.volume_real_Icc]
  unfold stripeRamp
  by_cases hr : r ≤ 3/4
  · rw [min_eq_left hr, min_eq_left (show r-1/4 ≤ 1/2 by linarith), max_comm]
  · rw [min_eq_right (le_of_not_ge hr),
      min_eq_right (show (1/2 : ℝ) ≤ r-1/4 by linarith)]
    norm_num

theorem stripeIndicator_integral_zero (x : ℝ) :
    (∫ t in 0..x, stripeIndicator t) = stripePrimitive x := by
  have hperiod : (∫ t in Int.fract x..Int.fract x+1, stripeIndicator t) = (1/2 : ℝ) := by
    rw [stripeIndicator_periodic.intervalIntegral_add_eq (Int.fract x) 0, zero_add,
      stripeIndicator_integral_unit 1 (by norm_num) le_rfl,
      stripeRamp_high 1 (by norm_num)]
  have htail : (∫ t in Int.fract x..x, stripeIndicator t) = (⌊x⌋ : ℤ) • (1/2 : ℝ) := by
    calc
      _ = ∫ t in Int.fract x..Int.fract x + (⌊x⌋ : ℤ) • (1 : ℝ), stripeIndicator t := by
        have hx : Int.fract x + (⌊x⌋ : ℤ) • (1 : ℝ) = x := by
          simpa only [zsmul_eq_mul, mul_one] using Int.fract_add_floor x
        rw [hx]
      _ = (⌊x⌋ : ℤ) • (∫ t in Int.fract x..Int.fract x+1, stripeIndicator t) :=
        stripeIndicator_periodic.intervalIntegral_add_zsmul_eq ⌊x⌋ (Int.fract x)
          stripeIndicator_intervalIntegrable
      _ = _ := by rw [hperiod]
  rw [← integral_add_adjacent_intervals (stripeIndicator_intervalIntegrable 0 (Int.fract x))
      (stripeIndicator_intervalIntegrable (Int.fract x) x),
    stripeIndicator_integral_unit (Int.fract x) (Int.fract_nonneg x) (Int.fract_lt_one x).le,
    htail]
  simp only [stripePrimitive, zsmul_eq_mul]
  ring

theorem stripeIndicator_integral (a b : ℝ) :
    (∫ t in a..b, stripeIndicator t) = stripePrimitive b - stripePrimitive a := by
  have h := integral_add_adjacent_intervals (stripeIndicator_intervalIntegrable 0 a)
    (stripeIndicator_intervalIntegrable a b)
  rw [stripeIndicator_integral_zero a, stripeIndicator_integral_zero b] at h
  linarith

theorem stripeIndicator_dyadic_lower (q : ℝ) (hq : 1/4 ≤ q) :
    q/5 ≤ ∫ t in q..2*q, stripeIndicator t := by
  rw [stripeIndicator_integral]
  exact stripePrimitive_dyadic_lower q hq

/-- info: 'B686Round9.stripeIndicator_integral_unit' depends on axioms: [propext, Classical.choice, Quot.sound] -/
#guard_msgs in
#print axioms stripeIndicator_integral_unit
/-- info: 'B686Round9.stripeIndicator_integral_zero' depends on axioms: [propext, Classical.choice, Quot.sound] -/
#guard_msgs in
#print axioms stripeIndicator_integral_zero
/-- info: 'B686Round9.stripeIndicator_integral' depends on axioms: [propext, Classical.choice, Quot.sound] -/
#guard_msgs in
#print axioms stripeIndicator_integral
/-- info: 'B686Round9.stripeIndicator_dyadic_lower' depends on axioms: [propext, Classical.choice, Quot.sound] -/
#guard_msgs in
#print axioms stripeIndicator_dyadic_lower

end B686Round9

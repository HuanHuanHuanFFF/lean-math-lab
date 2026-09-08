import research.tasks.«B686-Four».runs.«20260908-reflected-sum-9bad0b9».main.StripeIntegral

/-!
An arbitrary fractional window and a deterministic discrepancy bound.
This generalizes the stripe integration mechanism for the high-phase
windows used in the two-frequency geometric argument.
-/

namespace B686Round9

open Set MeasureTheory intervalIntegral

noncomputable def windowRamp (a b r : ℝ) : ℝ := max 0 (min (r-a) (b-a))

noncomputable def windowPrimitive (a b x : ℝ) : ℝ :=
  (⌊x⌋ : ℝ)*(b-a) + windowRamp a b (Int.fract x)

noncomputable def windowIndicator (a b x : ℝ) : ℝ :=
  (Icc a b).indicator (fun _ => 1) (Int.fract x)

theorem windowIndicator_periodic (a b : ℝ) : Function.Periodic (windowIndicator a b) 1 := by
  intro x
  simp [windowIndicator, Int.fract_add_one]

theorem windowIndicator_measurable (a b : ℝ) : Measurable (windowIndicator a b) := by
  exact (measurable_const.indicator measurableSet_Icc).comp measurable_fract

theorem windowIndicator_bound (a b x : ℝ) : ‖windowIndicator a b x‖ ≤ 1 := by
  unfold windowIndicator
  by_cases hx : Int.fract x ∈ Icc a b
  · rw [Set.indicator_of_mem hx]
    norm_num
  · rw [Set.indicator_of_notMem hx]
    norm_num

theorem windowIndicator_intervalIntegrable (a b u v : ℝ) :
    IntervalIntegrable (windowIndicator a b) volume u v := by
  apply intervalIntegrable_iff.mpr
  apply Measure.integrableOn_of_bounded measure_Ioc_lt_top.ne
    (windowIndicator_measurable a b).aestronglyMeasurable
  exact Filter.Eventually.of_forall (windowIndicator_bound a b)

theorem windowIndicator_on_unit (a b x : ℝ) (ha : 0 < a) (hb : b < 1)
    (hlo : 0 ≤ x) (hhi : x ≤ 1) :
    windowIndicator a b x = (Icc a b).indicator (fun _ => 1) x := by
  by_cases hlt : x < 1
  · have hf : ⌊x⌋ = (0 : ℤ) := Int.floor_eq_iff.mpr (by simpa using And.intro hlo hlt)
    simp [windowIndicator, Int.fract, hf]
  · have hx : x = 1 := by linarith
    subst x
    have h0 : (0 : ℝ) ∉ Icc a b := by simp only [mem_Icc]; intro h; linarith
    have h1 : (1 : ℝ) ∉ Icc a b := by simp only [mem_Icc]; intro h; linarith
    simp [windowIndicator, h0, h1]

theorem windowIndicator_integral_unit (a b r : ℝ) (ha : 0 < a) (hb : b < 1)
    (hlo : 0 ≤ r) (hhi : r ≤ 1) :
    (∫ x in 0..r, windowIndicator a b x) = windowRamp a b r := by
  rw [integral_of_le hlo]
  have hfun : (∫ x in Ioc 0 r, windowIndicator a b x) =
      ∫ x in Ioc 0 r, (Icc a b).indicator (fun _ => (1 : ℝ)) x := by
    apply setIntegral_congr_fun measurableSet_Ioc
    intro x hx
    exact windowIndicator_on_unit a b x ha hb hx.1.le (hx.2.trans hhi)
  rw [hfun, setIntegral_indicator measurableSet_Icc]
  have hs : Ioc 0 r ∩ Icc a b = Icc a (min r b) := by
    ext x
    simp only [mem_inter_iff, mem_Ioc, mem_Icc, le_min_iff]
    constructor
    · rintro ⟨⟨_, hxr⟩, ⟨hxl, hxu⟩⟩
      exact ⟨hxl, hxr, hxu⟩
    · rintro ⟨hxl, hxr, hxu⟩
      exact ⟨⟨by linarith, hxr⟩, hxl, hxu⟩
  rw [hs, setIntegral_const]
  simp only [smul_eq_mul, mul_one, Real.volume_real_Icc]
  unfold windowRamp
  by_cases hr : r ≤ b
  · rw [min_eq_left hr, min_eq_left (show r-a ≤ b-a by linarith), max_comm]
  · rw [min_eq_right (le_of_not_ge hr),
      min_eq_right (show b-a ≤ r-a by linarith), max_comm]

theorem windowRamp_full (a b : ℝ) (hab : a ≤ b) (hb : b ≤ 1) :
    windowRamp a b 1 = b-a := by
  unfold windowRamp
  rw [min_eq_right (by linarith), max_eq_right (by linarith)]

theorem windowIndicator_integral_zero (a b x : ℝ)
    (ha : 0 < a) (hab : a ≤ b) (hb : b < 1) :
    (∫ t in 0..x, windowIndicator a b t) = windowPrimitive a b x := by
  have hperiod : (∫ t in Int.fract x..Int.fract x+1, windowIndicator a b t) = b-a := by
    rw [(windowIndicator_periodic a b).intervalIntegral_add_eq (Int.fract x) 0, zero_add,
      windowIndicator_integral_unit a b 1 ha hb (by norm_num) le_rfl,
      windowRamp_full a b hab hb.le]
  have htail : (∫ t in Int.fract x..x, windowIndicator a b t) = (⌊x⌋ : ℤ) • (b-a) := by
    calc
      _ = ∫ t in Int.fract x..Int.fract x + (⌊x⌋ : ℤ) • (1 : ℝ), windowIndicator a b t := by
        have hx : Int.fract x + (⌊x⌋ : ℤ) • (1 : ℝ) = x := by
          simpa only [zsmul_eq_mul, mul_one] using Int.fract_add_floor x
        rw [hx]
      _ = (⌊x⌋ : ℤ) • (∫ t in Int.fract x..Int.fract x+1, windowIndicator a b t) :=
        (windowIndicator_periodic a b).intervalIntegral_add_zsmul_eq ⌊x⌋ (Int.fract x)
          (windowIndicator_intervalIntegrable a b)
      _ = _ := by rw [hperiod]
  rw [← integral_add_adjacent_intervals (windowIndicator_intervalIntegrable a b 0 (Int.fract x))
      (windowIndicator_intervalIntegrable a b (Int.fract x) x),
    windowIndicator_integral_unit a b (Int.fract x) ha hb
      (Int.fract_nonneg x) (Int.fract_lt_one x).le, htail]
  simp only [windowPrimitive, zsmul_eq_mul]
  ring

theorem windowIndicator_integral (a b u v : ℝ)
    (ha : 0 < a) (hab : a ≤ b) (hb : b < 1) :
    (∫ t in u..v, windowIndicator a b t) = windowPrimitive a b v - windowPrimitive a b u := by
  have h := integral_add_adjacent_intervals (windowIndicator_intervalIntegrable a b 0 u)
    (windowIndicator_intervalIntegrable a b u v)
  rw [windowIndicator_integral_zero a b u ha hab hb,
    windowIndicator_integral_zero a b v ha hab hb] at h
  linarith

theorem windowPrimitive_error (a b x : ℝ) (hab : a ≤ b) :
    -(b-a) ≤ windowPrimitive a b x - (b-a)*x ∧
      windowPrimitive a b x - (b-a)*x ≤ b-a := by
  have hr0 := Int.fract_nonneg x
  have hr1 := (Int.fract_lt_one x).le
  have hx := Int.fract_add_floor x
  have hw0 : 0 ≤ windowRamp a b (Int.fract x) := le_max_left _ _
  have hw1 : windowRamp a b (Int.fract x) ≤ b-a :=
    max_le (by linarith) (min_le_right _ _)
  unfold windowPrimitive
  constructor <;> nlinarith

theorem windowIndicator_discrepancy (a b u v : ℝ)
    (ha : 0 < a) (hab : a ≤ b) (hb : b < 1) :
    (b-a)*(v-u)-2*(b-a) ≤ ∫ t in u..v, windowIndicator a b t := by
  rw [windowIndicator_integral a b u v ha hab hb]
  have h1 := windowPrimitive_error a b u hab
  have h2 := windowPrimitive_error a b v hab
  nlinarith

theorem high_window_scaled_lower (u v L : ℝ) (hL : 0 < L) :
    (v-u)/16-1/(8*L) ≤ ∫ x in u..v, windowIndicator (7/8) (15/16) (L*x) := by
  rw [integral_comp_mul_left _ hL.ne', smul_eq_mul]
  have h := windowIndicator_discrepancy (7/8) (15/16) (L*u) (L*v)
    (by norm_num) (by norm_num) (by norm_num)
  have hmul := mul_le_mul_of_nonneg_left h (inv_nonneg.mpr hL.le)
  have heq : (v-u)/16-1/(8*L) =
      L⁻¹ * ((15/16-7/8)*(L*v-L*u)-2*(15/16-7/8)) := by
    field_simp [hL.ne']
    ring
  rw [heq]
  exact hmul

/-- info: 'B686Round9.windowIndicator_integral' depends on axioms: [propext, Classical.choice, Quot.sound] -/
#guard_msgs in
#print axioms windowIndicator_integral
/-- info: 'B686Round9.windowPrimitive_error' depends on axioms: [propext, Classical.choice, Quot.sound] -/
#guard_msgs in
#print axioms windowPrimitive_error
/-- info: 'B686Round9.high_window_scaled_lower' depends on axioms: [propext, Classical.choice, Quot.sound] -/
#guard_msgs in
#print axioms high_window_scaled_lower

end B686Round9

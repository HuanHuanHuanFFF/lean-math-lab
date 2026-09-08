import Mathlib.Analysis.Complex.CauchyIntegral
import Mathlib.Analysis.SpecialFunctions.Integrals.Basic
import Mathlib.Tactic.FieldSimp
import Mathlib.Tactic.Ring
import Mathlib.Tactic.Positivity
import Mathlib.Tactic.NormNum
import Mathlib.Tactic.Linarith

/-! Rectangle kernels for the two-half-plane jump representation. This file
is owned by the primary task. A proved kernel is not itself the missing full
quarter-Runge consumer. -/
namespace B686QuarterCauchy
open Complex intervalIntegral
set_option maxHeartbeats 2400000

noncomputable def squareBoundary (f : ℂ→ℂ) (R : ℝ) : ℂ :=
  (∫x in -R..R,f ((x : ℂ)-R*I)) - (∫x in -R..R,f ((x : ℂ)+R*I)) +
  I*(∫y in -R..R,f ((R : ℂ)+y*I)) - I*(∫y in -R..R,f ((-R : ℂ)+y*I))

lemma integral_poisson_square (R : ℝ) (hR : 0<R) :
    (∫x in -R..R,R/(x^2+R^2))=Real.pi/2 := by
  have hid : (fun x : ℝ => R/(x^2+R^2))=
      fun x => R⁻¹*(1+(x/R)^2)⁻¹ := by
    funext x
    have hsq : x^2+R^2≠0 := ne_of_gt (by positivity)
    have hsq2 : 1+(x/R)^2≠0 := ne_of_gt (by positivity)
    field_simp
    <;> ring
  rw [hid,integral_const_mul,integral_comp_div (fun x : ℝ => (1+x^2)⁻¹) hR.ne']
  simp only [neg_div,div_self hR.ne',smul_eq_mul]
  rw [integral_inv_one_add_sq,Real.arctan_neg,Real.arctan_one]
  field_simp
  <;> ring

lemma horizontal_ne (R x : ℝ) (hR : R≠0) :
    (x : ℂ)-R*I≠0 ∧ (x : ℂ)+R*I≠0 := by
  constructor <;> intro h
  · have hi := congrArg Complex.im h
    simp at hi
    exact hR hi
  · have hi := congrArg Complex.im h
    simp at hi
    exact hR hi

lemma vertical_ne (R y : ℝ) (hR : R≠0) :
    (R : ℂ)+y*I≠0 ∧ (-R : ℂ)+y*I≠0 := by
  constructor <;> intro h
  · have hr := congrArg Complex.re h
    simp at hr
    exact hR hr
  · have hr := congrArg Complex.re h
    simp at hr
    exact hR hr

lemma inverse_vertical_right (R y : ℝ) (hR : R≠0) :
    I*((R : ℂ)+y*I)⁻¹=((y : ℂ)-R*I)⁻¹ := by
  have h1 := (vertical_ne R y hR).1
  have h2 := (horizontal_ne R y hR).1
  rw [←div_eq_mul_inv,←one_div]
  apply (div_eq_div_iff h1 h2).2
  ring_nf
  norm_num [I_sq,sub_eq_add_neg]

lemma inverse_vertical_left (R y : ℝ) (hR : R≠0) :
    I*((-R : ℂ)+y*I)⁻¹=((y : ℂ)+R*I)⁻¹ := by
  have h1 := (vertical_ne R y hR).2
  have h2 := (horizontal_ne R y hR).2
  rw [←div_eq_mul_inv,←one_div]
  apply (div_eq_div_iff h1 h2).2
  ring_nf
  norm_num [I_sq,sub_eq_add_neg]

lemma inverse_horizontal_difference (R x : ℝ) (hR : 0<R) :
    ((x : ℂ)-R*I)⁻¹-((x : ℂ)+R*I)⁻¹=
      (2*I)*(↑(R/(x^2+R^2)) : ℂ) := by
  have h1 := (horizontal_ne R x hR.ne').1
  have h2 := (horizontal_ne R x hR.ne').2
  have hsq : (x^2+R^2 : ℝ)≠0 := ne_of_gt (by positivity)
  have hsqC : ((x : ℂ)^2+(R : ℂ)^2)≠0 := by exact_mod_cast hsq
  push_cast
  field_simp [h1,h2,hsqC]
  <;> ring_nf
  <;> norm_num [I_sq]
  <;> ring

theorem square_boundary_inverse (R : ℝ) (hR : 0<R) :
    squareBoundary (fun z => z⁻¹) R=2*Real.pi*I := by
  have hc1 : Continuous (fun x : ℝ => ((x : ℂ)-R*I)⁻¹) :=
    (Complex.continuous_ofReal.sub continuous_const).inv₀ (fun x => (horizontal_ne R x hR.ne').1)
  have hc2 : Continuous (fun x : ℝ => ((x : ℂ)+R*I)⁻¹) :=
    (Complex.continuous_ofReal.add continuous_const).inv₀ (fun x => (horizontal_ne R x hR.ne').2)
  have hv1 : I*(∫y in -R..R,((R : ℂ)+y*I)⁻¹)=
      ∫y in -R..R,((y : ℂ)-R*I)⁻¹ := by
    rw [←integral_const_mul]
    apply integral_congr
    intro y hy
    exact inverse_vertical_right R y hR.ne'
  have hv2 : I*(∫y in -R..R,((-R : ℂ)+y*I)⁻¹)=
      ∫y in -R..R,((y : ℂ)+R*I)⁻¹ := by
    rw [←integral_const_mul]
    apply integral_congr
    intro y hy
    exact inverse_vertical_left R y hR.ne'
  unfold squareBoundary
  rw [hv1,hv2]
  have hd : (∫x in -R..R,((x : ℂ)-R*I)⁻¹)-
      (∫x in -R..R,((x : ℂ)+R*I)⁻¹)=Real.pi*I := by
    rw [←integral_sub (hc1.intervalIntegrable _ _) (hc2.intervalIntegrable _ _)]
    calc
      (∫x in -R..R,((x : ℂ)-R*I)⁻¹-((x : ℂ)+R*I)⁻¹) =
          ∫x in -R..R,(2*I)*(↑(R/(x^2+R^2)) : ℂ) :=
        integral_congr (fun x _ => inverse_horizontal_difference R x hR)
      _ = Real.pi*I := by
        rw [integral_const_mul,integral_ofReal,integral_poisson_square R hR]
        push_cast
        ring
  linear_combination 2*hd

/-- info: 'B686QuarterCauchy.square_boundary_inverse' depends on axioms: [propext, Classical.choice, Quot.sound] -/
#guard_msgs in
#print axioms square_boundary_inverse

noncomputable def upperBoundary (f : ℂ→ℂ) (R : ℝ) : ℂ :=
  (∫x in -R..R,f x) - (∫x in -R..R,f ((x : ℂ)+R*I)) +
  I*(∫y in 0..R,f ((R : ℂ)+y*I)) - I*(∫y in 0..R,f ((-R : ℂ)+y*I))

noncomputable def lowerBoundary (f : ℂ→ℂ) (R : ℝ) : ℂ :=
  (∫x in -R..R,f ((x : ℂ)-R*I)) - (∫x in -R..R,f x) +
  I*(∫y in -R..0,f ((R : ℂ)+y*I)) - I*(∫y in -R..0,f ((-R : ℂ)+y*I))

noncomputable def mixedBoundary (fu fl : ℂ→ℂ) (R : ℝ) : ℂ :=
  (∫x in -R..R,fl ((x : ℂ)-R*I)) - (∫x in -R..R,fu ((x : ℂ)+R*I)) +
  I*(∫y in -R..0,fl ((R : ℂ)+y*I)) + I*(∫y in 0..R,fu ((R : ℂ)+y*I)) -
  I*(∫y in -R..0,fl ((-R : ℂ)+y*I)) - I*(∫y in 0..R,fu ((-R : ℂ)+y*I))

lemma upper_boundary_zero (f : ℂ→ℂ) (z : ℂ) (R : ℝ) (hR : 0<R)
    (hc : ContinuousOn f {w : ℂ | 0≤w.im})
    (hd : ∀w : ℂ,0<w.im → w≠z → DifferentiableAt ℂ f w) :
    upperBoundary f R=0 := by
  have h := Complex.integral_boundary_rect_eq_zero_of_differentiable_on_off_countable
    f ⟨-R,0⟩ ⟨R,R⟩ {z} (Set.countable_singleton z) ?_ ?_
  · simpa [upperBoundary,smul_eq_mul] using h
  · apply hc.mono
    intro w hw
    have hh := hw.2
    have hh' : w.im∈Set.Icc 0 R := by simpa [Set.uIcc_of_le hR.le] using hh
    exact hh'.1
  · intro w hw
    apply hd w
    · have hh := hw.1.2.1
      simpa [min_eq_left hR.le] using hh
    · simpa using hw.2

lemma lower_boundary_zero (f : ℂ→ℂ) (z : ℂ) (R : ℝ) (hR : 0<R)
    (hc : ContinuousOn f {w : ℂ | w.im≤0})
    (hd : ∀w : ℂ,w.im<0 → w≠z → DifferentiableAt ℂ f w) :
    lowerBoundary f R=0 := by
  have h := Complex.integral_boundary_rect_eq_zero_of_differentiable_on_off_countable
    f ⟨-R,-R⟩ ⟨R,0⟩ {z} (Set.countable_singleton z) ?_ ?_
  · simpa [lowerBoundary,smul_eq_mul,sub_eq_add_neg] using h
  · apply hc.mono
    intro w hw
    have hh := hw.2
    have hn : -R≤0 := by linarith
    have hh' : w.im∈Set.Icc (-R) 0 := by simpa [Set.uIcc_of_le hn] using hh
    exact hh'.2
  · intro w hw
    apply hd w
    · have hh := hw.1.2.2
      have hn : -R≤0 := by linarith
      simpa [max_eq_right hn] using hh
    · simpa using hw.2

lemma real_ne_upper (x : ℝ) (z : ℂ) (hz : 0<z.im) : (x : ℂ)≠z := by
  intro h
  have hi := congrArg Complex.im h
  simp only [ofReal_im] at hi
  linarith

lemma halfplane_quotient_boundaries (fu fl : ℂ→ℂ) (z : ℂ) (hz : 0<z.im)
    (hu : ContinuousOn fu {w : ℂ | 0≤w.im})
    (hl : ContinuousOn fl {w : ℂ | w.im≤0})
    (hdu : ∀w : ℂ,0<w.im → DifferentiableAt ℂ fu w)
    (hdl : ∀w : ℂ,w.im<0 → DifferentiableAt ℂ fl w)
    (R : ℝ) (hR : 0<R) :
    (∫x in -R..R,(fu x-fl x)/((x : ℂ)-z)) +
      mixedBoundary (dslope fu z) (fun w => (fl w-fu z)/(w-z)) R=0 := by
  have hnu : {w : ℂ | 0≤w.im}∈nhds z :=
    Filter.mem_of_superset ((continuous_im.continuousAt).preimage_mem_nhds
      (Ioi_mem_nhds hz)) (fun w hw => show 0≤w.im from (show 0<w.im from hw).le)
  have huc : ContinuousOn (dslope fu z) {w : ℂ | 0≤w.im} :=
    (continuousOn_dslope hnu).2 ⟨hu,hdu z hz⟩
  have hnz : ∀w : ℂ,w.im≤0 → w-z≠0 := by
    intro w hw h
    have hh := sub_eq_zero.mp h
    subst w
    linarith
  have hlc : ContinuousOn (fun w => (fl w-fu z)/(w-z)) {w : ℂ | w.im≤0} :=
    (hl.sub continuousOn_const).div (continuousOn_id.sub continuousOn_const) hnz
  have hUZ := upper_boundary_zero (dslope fu z) z R hR huc
    (fun w hw hwz => (differentiableAt_dslope_of_ne hwz).2 (hdu w hw))
  have hLZ := lower_boundary_zero (fun w => (fl w-fu z)/(w-z)) z R hR hlc
    (fun w hw _ => ((hdl w hw).sub_const _).div (differentiableAt_id.sub_const _)
      (hnz w hw.le))
  have hcu : Continuous (fun x : ℝ => dslope fu z (x : ℂ)) :=
    huc.comp_continuous continuous_ofReal (by intro x; simp)
  have hcl : Continuous (fun x : ℝ => (fl (x : ℂ)-fu z)/((x : ℂ)-z)) :=
    hlc.comp_continuous continuous_ofReal (by intro x; simp)
  have haxis : (∫x in -R..R,(fu x-fl x)/((x : ℂ)-z))=
      (∫x in -R..R,dslope fu z (x : ℂ))-
      (∫x in -R..R,(fl x-fu z)/((x : ℂ)-z)) := by
    rw [←integral_sub (hcu.intervalIntegrable _ _) (hcl.intervalIntegrable _ _)]
    apply integral_congr
    intro x hx
    dsimp only
    rw [dslope_of_ne fu (real_ne_upper x z hz),slope_def_field]
    ring
  rw [haxis]
  unfold upperBoundary at hUZ
  unfold lowerBoundary at hLZ
  unfold mixedBoundary
  linear_combination hUZ+hLZ

lemma regularized_quotient_norm (F c z w : ℂ) (R B : ℝ)
    (hR : 0<R) (hz : 2*‖z‖≤R) (hw : R≤‖w‖) (hF : ‖F‖≤B) :
    ‖(F-c)/(w-z)+c/w‖≤2*B/R+2*‖c‖*‖z‖/R^2 := by
  have hw0 : w≠0 := norm_pos_iff.mp (hR.trans_le hw)
  have hdiff : R/2≤‖w-z‖ := by
    have hh := norm_sub_norm_le w z
    linarith
  have hdiff0 : w-z≠0 := norm_pos_iff.mp (lt_of_lt_of_le (by positivity) hdiff)
  have hid : (F-c)/(w-z)+c/w=F/(w-z)-c*z/(w*(w-z)) := by
    field_simp
    <;> ring
  rw [hid]
  have hnorm := norm_sub_le (F/(w-z)) (c*z/(w*(w-z)))
  simp only [norm_div,norm_mul] at hnorm
  have hB : 0≤B := (norm_nonneg F).trans hF
  have hfirst := div_le_div₀ hB hF (by positivity : 0<R/2) hdiff
  have hprod : R*(R/2)≤‖w‖*‖w-z‖ :=
    mul_le_mul hw hdiff (by positivity) (norm_nonneg w)
  have hsecond := div_le_div₀ (by positivity : 0≤‖c‖*‖z‖)
    (le_refl (‖c‖*‖z‖)) (by positivity : 0<R*(R/2)) hprod
  have hid1 : B/(R/2)=2*B/R := by field_simp
  have hid2 : ‖c‖*‖z‖/(R*(R/2))=2*‖c‖*‖z‖/R^2 := by field_simp
  rw [hid1] at hfirst
  rw [hid2] at hsecond
  exact hnorm.trans (add_le_add hfirst hsecond)

lemma norm_six_terms (a b c d e f : ℂ) :
    ‖a-b+c+d-e-f‖≤‖a‖+‖b‖+‖c‖+‖d‖+‖e‖+‖f‖ := by
  have h1 := norm_sub_le a b
  have h2 := norm_add_le (a-b) c
  have h3 := norm_add_le (a-b+c) d
  have h4 := norm_sub_le (a-b+c+d) e
  have h5 := norm_sub_le (a-b+c+d-e) f
  linarith

lemma mixed_boundary_norm (fu fl : ℂ→ℂ) (R B : ℝ) (hR : 0<R)
    (hu : ∀w : ℂ,0≤w.im → R≤‖w‖ → ‖fu w‖≤B)
    (hl : ∀w : ℂ,w.im≤0 → R≤‖w‖ → ‖fl w‖≤B) :
    ‖mixedBoundary fu fl R‖≤8*B*R := by
  have hnormh : ∀x : ℝ,R≤‖(x : ℂ)+R*I‖ ∧ R≤‖(x : ℂ)-R*I‖ := by
    intro x
    constructor
    · simpa [abs_of_pos hR] using abs_im_le_norm ((x : ℂ)+R*I)
    · simpa [abs_of_pos hR] using abs_im_le_norm ((x : ℂ)-R*I)
  have hnormv : ∀y : ℝ,R≤‖(R : ℂ)+y*I‖ ∧ R≤‖(-R : ℂ)+y*I‖ := by
    intro y
    constructor
    · simpa [abs_of_pos hR] using abs_re_le_norm ((R : ℂ)+y*I)
    · simpa [abs_of_pos hR] using abs_re_le_norm ((-R : ℂ)+y*I)
  have hb := norm_integral_le_of_norm_le_const (a := -R) (b := R)
    (f := fun x => fl ((x : ℂ)-R*I)) (C := B) (by
      intro x hx
      apply hl _ (by simpa using hR.le) (hnormh x).2)
  have ht := norm_integral_le_of_norm_le_const (a := -R) (b := R)
    (f := fun x => fu ((x : ℂ)+R*I)) (C := B) (by
      intro x hx
      apply hu _ (by simpa using hR.le) (hnormh x).1)
  have hvrU := norm_integral_le_of_norm_le_const (a := 0) (b := R)
    (f := fun y => fu ((R : ℂ)+y*I)) (C := B) (by
      intro y hy
      have hy' : y∈Set.Ioc 0 R := by simpa [Set.uIoc_of_le hR.le] using hy
      apply hu _ (by simpa using hy'.1.le) (hnormv y).1)
  have hvlU := norm_integral_le_of_norm_le_const (a := 0) (b := R)
    (f := fun y => fu ((-R : ℂ)+y*I)) (C := B) (by
      intro y hy
      have hy' : y∈Set.Ioc 0 R := by simpa [Set.uIoc_of_le hR.le] using hy
      apply hu _ (by simpa using hy'.1.le) (hnormv y).2)
  have hvrL := norm_integral_le_of_norm_le_const (a := -R) (b := 0)
    (f := fun y => fl ((R : ℂ)+y*I)) (C := B) (by
      intro y hy
      have hy' : y∈Set.Ioc (-R) 0 := by simpa [Set.uIoc_of_le (by linarith : -R≤0)] using hy
      apply hl _ (by simpa using hy'.2) (hnormv y).1)
  have hvlL := norm_integral_le_of_norm_le_const (a := -R) (b := 0)
    (f := fun y => fl ((-R : ℂ)+y*I)) (C := B) (by
      intro y hy
      have hy' : y∈Set.Ioc (-R) 0 := by simpa [Set.uIoc_of_le (by linarith : -R≤0)] using hy
      apply hl _ (by simpa using hy'.2) (hnormv y).2)
  have hn := norm_six_terms
    (∫x in -R..R,fl ((x : ℂ)-R*I)) (∫x in -R..R,fu ((x : ℂ)+R*I))
    (I*(∫y in -R..0,fl ((R : ℂ)+y*I))) (I*(∫y in 0..R,fu ((R : ℂ)+y*I)))
    (I*(∫y in -R..0,fl ((-R : ℂ)+y*I))) (I*(∫y in 0..R,fu ((-R : ℂ)+y*I)))
  simp only [norm_mul,norm_I,one_mul] at hn
  simp only [sub_neg_eq_add,zero_add,sub_zero,abs_of_pos hR,
    abs_of_pos (by positivity : 0<R+R)] at hb ht hvrU hvlU hvrL hvlL
  change ‖mixedBoundary fu fl R‖≤_ at hn
  linarith

lemma upper_edges_integrable (f : ℂ→ℂ) (R : ℝ) (hR : 0<R)
    (hc : ContinuousOn f {w : ℂ | 0≤w.im}) :
    IntervalIntegrable (fun x : ℝ => f ((x : ℂ)+R*I)) MeasureTheory.volume (-R) R ∧
    IntervalIntegrable (fun y : ℝ => f ((R : ℂ)+y*I)) MeasureTheory.volume 0 R ∧
    IntervalIntegrable (fun y : ℝ => f ((-R : ℂ)+y*I)) MeasureTheory.volume 0 R := by
  constructor
  · apply Continuous.intervalIntegrable
    apply hc.comp_continuous (continuous_ofReal.add continuous_const)
    intro x
    simpa using hR.le
  · constructor
    all_goals
      apply ContinuousOn.intervalIntegrable
      apply hc.comp (by fun_prop)
      intro y hy
      have hy' : y∈Set.Icc 0 R := by simpa [Set.uIcc_of_le hR.le] using hy
      simpa using hy'.1

lemma lower_edges_integrable (f : ℂ→ℂ) (R : ℝ) (hR : 0<R)
    (hc : ContinuousOn f {w : ℂ | w.im≤0}) :
    IntervalIntegrable (fun x : ℝ => f ((x : ℂ)-R*I)) MeasureTheory.volume (-R) R ∧
    IntervalIntegrable (fun y : ℝ => f ((R : ℂ)+y*I)) MeasureTheory.volume (-R) 0 ∧
    IntervalIntegrable (fun y : ℝ => f ((-R : ℂ)+y*I)) MeasureTheory.volume (-R) 0 := by
  constructor
  · apply Continuous.intervalIntegrable
    apply hc.comp_continuous (continuous_ofReal.sub continuous_const)
    intro x
    simpa using hR.le
  · constructor
    all_goals
      apply ContinuousOn.intervalIntegrable
      apply hc.comp (by fun_prop)
      intro y hy
      have hy' : y∈Set.Icc (-R) 0 := by simpa [Set.uIcc_of_le (by linarith : -R≤0)] using hy
      simpa using hy'.2

lemma inverse_edges_continuous (R : ℝ) (hR : 0<R) :
    Continuous (fun x : ℝ => ((x : ℂ)-R*I)⁻¹) ∧
    Continuous (fun x : ℝ => ((x : ℂ)+R*I)⁻¹) ∧
    Continuous (fun y : ℝ => ((R : ℂ)+y*I)⁻¹) ∧
    Continuous (fun y : ℝ => ((-R : ℂ)+y*I)⁻¹) := by
  refine ⟨?_,?_,?_,?_⟩
  · exact (continuous_ofReal.sub continuous_const).inv₀ (fun x => (horizontal_ne R x hR.ne').1)
  · exact (continuous_ofReal.add continuous_const).inv₀ (fun x => (horizontal_ne R x hR.ne').2)
  · exact (continuous_const.add (continuous_ofReal.mul continuous_const)).inv₀
      (fun y => (vertical_ne R y hR.ne').1)
  · exact (continuous_const.add (continuous_ofReal.mul continuous_const)).inv₀
      (fun y => (vertical_ne R y hR.ne').2)

lemma mixed_boundary_add_inverse (fu fl : ℂ→ℂ) (c : ℂ) (R : ℝ) (hR : 0<R)
    (hu : ContinuousOn fu {w : ℂ | 0≤w.im})
    (hl : ContinuousOn fl {w : ℂ | w.im≤0}) :
    mixedBoundary (fun w => fu w+c/w) (fun w => fl w+c/w) R=
      mixedBoundary fu fl R+c*(2*Real.pi*I) := by
  obtain ⟨ht,hrU,hlU⟩ := upper_edges_integrable fu R hR hu
  obtain ⟨hb,hrL,hlL⟩ := lower_edges_integrable fl R hR hl
  obtain ⟨hib,hit,hir,hil⟩ := inverse_edges_continuous R hR
  have hib' := (hib.const_mul c).intervalIntegrable (μ := MeasureTheory.volume) (-R) R
  have hit' := (hit.const_mul c).intervalIntegrable (μ := MeasureTheory.volume) (-R) R
  have hirU := (hir.const_mul c).intervalIntegrable (μ := MeasureTheory.volume) 0 R
  have hirL := (hir.const_mul c).intervalIntegrable (μ := MeasureTheory.volume) (-R) 0
  have hilU := (hil.const_mul c).intervalIntegrable (μ := MeasureTheory.volume) 0 R
  have hilL := (hil.const_mul c).intervalIntegrable (μ := MeasureTheory.volume) (-R) 0
  rw [←square_boundary_inverse R hR]
  unfold mixedBoundary squareBoundary
  simp only [div_eq_mul_inv]
  rw [integral_add hb hib',integral_add ht hit',integral_add hrL hirL,
    integral_add hrU hirU,integral_add hlL hilL,integral_add hlU hilU]
  simp only [integral_const_mul]
  rw [←integral_add_adjacent_intervals (hir.intervalIntegrable (-R) 0) (hir.intervalIntegrable 0 R),
    ←integral_add_adjacent_intervals (hil.intervalIntegrable (-R) 0) (hil.intervalIntegrable 0 R)]
  ring

lemma radius_bound_of_halfplane_tendsto (f : ℂ→ℂ) (S : Set ℂ)
    (hf : Filter.Tendsto f (Bornology.cobounded ℂ ⊓ Filter.principal S) (nhds 0))
    (ε : ℝ) (hε : 0<ε) :
    ∃R : ℝ,∀w : ℂ,R≤‖w‖ → w∈S → ‖f w‖≤ε := by
  have hh : ∀ᶠw in Bornology.cobounded ℂ ⊓ Filter.principal S,‖f w‖<ε := by
    simpa only [dist_zero_right] using (Metric.tendsto_nhds.mp hf ε hε)
  rw [Filter.eventually_inf_principal] at hh
  obtain ⟨R,_,hR⟩ := Filter.hasBasis_cobounded_norm.eventually_iff.mp hh
  exact ⟨R,fun w hw hS => (hR hw hS).le⟩

lemma jump_integral_stable (fu fl : ℂ→ℂ) (z : ℂ) (R₀ R : ℝ) (hR : R₀≤R)
    (hagree : ∀x : ℝ,R₀≤|x| → fu x=fl x) :
    (∫x in -R..R,(fu x-fl x)/((x : ℂ)-z))=
      ∫x in -R₀..R₀,(fu x-fl x)/((x : ℂ)-z) := by
  have hs : Function.support (fun x : ℝ => (fu x-fl x)/((x : ℂ)-z))⊆Set.Ioc (-R₀) R₀ := by
    intro x hx
    by_contra hn
    have hbig : R₀≤|x| := by
      simp only [Set.mem_Ioc,not_and_or,not_lt,not_le] at hn
      rcases hn with h | h
      · have := neg_le_abs x
        linarith
      · exact h.le.trans (le_abs_self x)
    have hz0 : (fu x-fl x)/((x : ℂ)-z)=0 := by rw [hagree x hbig]; simp
    exact hx hz0
  have hs' : Function.support (fun x : ℝ => (fu x-fl x)/((x : ℂ)-z))⊆Set.Ioc (-R) R :=
    hs.trans (by intro x hx; exact ⟨by linarith [hx.1],hx.2.trans hR⟩)
  rw [integral_eq_integral_of_support_subset hs',integral_eq_integral_of_support_subset hs]

theorem jump_representation_upper (fu fl : ℂ→ℂ) (R₀ : ℝ)
    (hu : ContinuousOn fu {w : ℂ | 0≤w.im})
    (hl : ContinuousOn fl {w : ℂ | w.im≤0})
    (hdu : ∀w : ℂ,0<w.im → DifferentiableAt ℂ fu w)
    (hdl : ∀w : ℂ,w.im<0 → DifferentiableAt ℂ fl w)
    (htu : Filter.Tendsto fu (Bornology.cobounded ℂ ⊓ Filter.principal {w : ℂ | 0≤w.im}) (nhds 0))
    (htl : Filter.Tendsto fl (Bornology.cobounded ℂ ⊓ Filter.principal {w : ℂ | w.im≤0}) (nhds 0))
    (hagree : ∀x : ℝ,R₀≤|x| → fu x=fl x)
    (z : ℂ) (hz : 0<z.im) :
    fu z=(2*Real.pi*I)⁻¹*(∫x in -R₀..R₀,(fu x-fl x)/((x : ℂ)-z)) := by
  let J : ℂ := ∫x in -R₀..R₀,(fu x-fl x)/((x : ℂ)-z)
  have hnu : {w : ℂ | 0≤w.im}∈nhds z :=
    Filter.mem_of_superset ((continuous_im.continuousAt).preimage_mem_nhds
      (Ioi_mem_nhds hz)) (fun w hw => show 0≤w.im from (show 0<w.im from hw).le)
  have huc : ContinuousOn (dslope fu z) {w : ℂ | 0≤w.im} :=
    (continuousOn_dslope hnu).2 ⟨hu,hdu z hz⟩
  have hnz : ∀w : ℂ,w.im≤0 → w-z≠0 := by
    intro w hw h
    have hh := sub_eq_zero.mp h
    subst w
    linarith
  have hlc : ContinuousOn (fun w => (fl w-fu z)/(w-z)) {w : ℂ | w.im≤0} :=
    (hl.sub continuousOn_const).div (continuousOn_id.sub continuousOn_const) hnz
  have heps : ∀ε : ℝ,0<ε → ‖J-fu z*(2*Real.pi*I)‖≤ε := by
    intro ε hε
    obtain ⟨Ru,hRu⟩ := radius_bound_of_halfplane_tendsto fu _ htu (ε/32) (by positivity)
    obtain ⟨Rl,hRl⟩ := radius_bound_of_halfplane_tendsto fl _ htl (ε/32) (by positivity)
    let R : ℝ := max (max (max 1 R₀) (max Ru Rl)) (max (2*‖z‖) (64*‖fu z‖*‖z‖/ε))
    have hleft : max (max 1 R₀) (max Ru Rl)≤R := le_max_left _ _
    have hright : max (2*‖z‖) (64*‖fu z‖*‖z‖/ε)≤R := le_max_right _ _
    have hR1 : 1≤R := (le_max_left _ _).trans ((le_max_left _ _).trans hleft)
    have hR0 : R₀≤R := (le_max_right _ _).trans ((le_max_left _ _).trans hleft)
    have hRuR : Ru≤R := (le_max_left _ _).trans ((le_max_right _ _).trans hleft)
    have hRlR : Rl≤R := (le_max_right _ _).trans ((le_max_right _ _).trans hleft)
    have hzR : 2*‖z‖≤R := (le_max_left _ _).trans hright
    have hbig : 64*‖fu z‖*‖z‖/ε≤R := (le_max_right _ _).trans hright
    have hR : 0<R := by linarith
    let B : ℝ := 2*(ε/32)/R+2*‖fu z‖*‖z‖/R^2
    have heU : ∀w : ℂ,0≤w.im → R≤‖w‖ → ‖dslope fu z w+fu z/w‖≤B := by
      intro w hw hnorm
      have hwz : w≠z := by intro hh; subst w; linarith [norm_nonneg z]
      rw [dslope_of_ne fu hwz,slope_def_field]
      exact regularized_quotient_norm (fu w) (fu z) z w R (ε/32) hR hzR hnorm
        (hRu w (hRuR.trans hnorm) hw)
    have heL : ∀w : ℂ,w.im≤0 → R≤‖w‖ → ‖(fl w-fu z)/(w-z)+fu z/w‖≤B := by
      intro w hw hnorm
      exact regularized_quotient_norm (fl w) (fu z) z w R (ε/32) hR hzR hnorm
        (hRl w (hRlR.trans hnorm) hw)
    have hnorm := mixed_boundary_norm (fun w => dslope fu z w+fu z/w)
      (fun w => (fl w-fu z)/(w-z)+fu z/w) R B hR heU heL
    have hbd := mixed_boundary_add_inverse (dslope fu z)
      (fun w => (fl w-fu z)/(w-z)) (fu z) R hR huc hlc
    rw [hbd] at hnorm
    have heq := halfplane_quotient_boundaries fu fl z hz hu hl hdu hdl R hR
    rw [jump_integral_stable fu fl z R₀ R hR0 hagree] at heq
    change J+mixedBoundary (dslope fu z) (fun w => (fl w-fu z)/(w-z)) R=0 at heq
    have hid : mixedBoundary (dslope fu z) (fun w => (fl w-fu z)/(w-z)) R+
        fu z*(2*Real.pi*I)=-(J-fu z*(2*Real.pi*I)) := by linear_combination heq
    rw [hid,norm_neg] at hnorm
    have hfrac : 16*‖fu z‖*‖z‖/R≤ε/4 := by
      apply (div_le_iff₀ hR).2
      have hh := (div_le_iff₀ hε).mp hbig
      nlinarith only [hh]
    have hBR : 8*B*R=ε/2+16*‖fu z‖*‖z‖/R := by
      dsimp [B]
      field_simp
      <;> ring
    rw [hBR] at hnorm
    linarith
  have hzero : ‖J-fu z*(2*Real.pi*I)‖≤0 :=
    le_of_forall_pos_le_add (fun ε hε => by simpa using heps ε hε)
  have heq : J=fu z*(2*Real.pi*I) := sub_eq_zero.mp (norm_eq_zero.mp (le_antisymm hzero (norm_nonneg _)))
  change fu z=(2*Real.pi*I)⁻¹*J
  rw [heq]
  have hne : (2*Real.pi*I : ℂ)≠0 := Complex.two_pi_I_ne_zero
  field_simp
  <;> ring

/-- info: 'B686QuarterCauchy.jump_representation_upper' depends on axioms: [propext, Classical.choice, Quot.sound] -/
#guard_msgs in
#print axioms jump_representation_upper

lemma jump_integral_vertical_continuous (fu fl : ℂ→ℂ) (R₀ z : ℝ) (hR₀ : 0≤R₀) (hz : R₀<z)
    (hu : ContinuousOn fu {w : ℂ | 0≤w.im})
    (hl : ContinuousOn fl {w : ℂ | w.im≤0}) :
    Continuous (fun t : ℝ => ∫x in -R₀..R₀,(fu x-fl x)/((x : ℂ)-((z : ℂ)+t*I))) := by
  let clamp : ℝ→ℝ := fun x => min (max x (-R₀)) R₀
  have hclamp : Continuous clamp := (continuous_id.max continuous_const).min continuous_const
  have huf : Continuous (fun x : ℝ => fu (x : ℂ)) :=
    hu.comp_continuous continuous_ofReal (by intro x; simp)
  have hlf : Continuous (fun x : ℝ => fl (x : ℂ)) :=
    hl.comp_continuous continuous_ofReal (by intro x; simp)
  have hne : ∀t x : ℝ,((clamp x : ℝ) : ℂ)-((z : ℂ)+t*I)≠0 := by
    intro t x hh
    have hr := congrArg Complex.re hh
    simp only [sub_re,ofReal_re,add_re,mul_re,ofReal_im,I_re,I_im,mul_zero,mul_one,
      zero_mul,sub_zero,add_zero,zero_re] at hr
    have hc : clamp x≤R₀ := min_le_right _ _
    linarith
  have hcont : Continuous (Function.uncurry (fun t x : ℝ =>
      (fu x-fl x)/(((clamp x : ℝ) : ℂ)-((z : ℂ)+t*I)))) := by
    apply ((huf.comp continuous_snd).sub (hlf.comp continuous_snd)).div
      (by fun_prop)
    rintro ⟨t,x⟩
    exact hne t x
  have hi := continuous_parametric_intervalIntegral_of_continuous' (μ := MeasureTheory.volume)
    hcont (-R₀) R₀
  apply hi.congr
  intro t
  apply integral_congr
  intro x hx
  have hx' : x∈Set.Icc (-R₀) R₀ := by
    simpa [Set.uIcc_of_le (by linarith : -R₀≤R₀)] using hx
  have hid : clamp x=x := by dsimp [clamp]; rw [max_eq_left hx'.1,min_eq_left hx'.2]
  dsimp only
  rw [hid]

/-- The actual real-point jump formula, outside the compact cut. No Cauchy
representation or boundary-limit certificate is supplied as a premise. -/
theorem jump_representation_real (fu fl : ℂ→ℂ) (R₀ : ℝ) (hR₀ : 0≤R₀)
    (hu : ContinuousOn fu {w : ℂ | 0≤w.im})
    (hl : ContinuousOn fl {w : ℂ | w.im≤0})
    (hdu : ∀w : ℂ,0<w.im → DifferentiableAt ℂ fu w)
    (hdl : ∀w : ℂ,w.im<0 → DifferentiableAt ℂ fl w)
    (htu : Filter.Tendsto fu (Bornology.cobounded ℂ ⊓ Filter.principal {w : ℂ | 0≤w.im}) (nhds 0))
    (htl : Filter.Tendsto fl (Bornology.cobounded ℂ ⊓ Filter.principal {w : ℂ | w.im≤0}) (nhds 0))
    (hagree : ∀x : ℝ,R₀≤|x| → fu x=fl x)
    (z : ℝ) (hz : R₀<z) :
    fu z=(2*Real.pi*I)⁻¹*(∫x in -R₀..R₀,(fu x-fl x)/((x : ℂ)-(z : ℂ))) := by
  have huc : ContinuousOn (fun t : ℝ => fu ((z : ℂ)+t*I)) (Set.Ici 0) := by
    apply hu.comp (by fun_prop)
    intro t ht
    simpa using ht
  have hleft : Filter.Tendsto (fun t : ℝ => fu ((z : ℂ)+t*I))
      (nhdsWithin 0 (Set.Ioi 0)) (nhds (fu (z : ℂ))) := by
    have hh := (huc 0 (by simp)).mono Set.Ioi_subset_Ici_self
    simpa only [ofReal_zero,zero_mul,add_zero] using hh.tendsto
  have hc := (jump_integral_vertical_continuous fu fl R₀ z hR₀ hz hu hl).const_mul
    (2*Real.pi*I : ℂ)⁻¹
  have hright : Filter.Tendsto (fun t : ℝ => (2*Real.pi*I : ℂ)⁻¹*
      (∫x in -R₀..R₀,(fu x-fl x)/((x : ℂ)-((z : ℂ)+t*I))))
      (nhdsWithin 0 (Set.Ioi 0))
      (nhds ((2*Real.pi*I : ℂ)⁻¹*(∫x in -R₀..R₀,(fu x-fl x)/((x : ℂ)-(z : ℂ))))) := by
    simpa only [ofReal_zero,zero_mul,add_zero] using
      (hc.continuousAt (x := 0)).tendsto.mono_left nhdsWithin_le_nhds
  apply tendsto_nhds_unique hleft
  apply hright.congr'
  filter_upwards [self_mem_nhdsWithin] with t ht
  exact (jump_representation_upper fu fl R₀ hu hl hdu hdl htu htl hagree
    ((z : ℂ)+t*I) (by simpa using ht)).symm

/-- info: 'B686QuarterCauchy.jump_representation_real' depends on axioms: [propext, Classical.choice, Quot.sound] -/
#guard_msgs in
#print axioms jump_representation_real
end B686QuarterCauchy

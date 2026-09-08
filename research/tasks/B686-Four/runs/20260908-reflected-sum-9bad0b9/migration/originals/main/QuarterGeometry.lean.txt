import research.tasks.«B686-Four».round9.main.WindowIntegral

/-! Deterministic local integration on quarter-period cells. -/

namespace B686Round9

open Set MeasureTheory intervalIntegral

theorem fract_in_quarter (j : ℕ) (x : ℝ)
    (hx : (j : ℝ)/4 < x ∧ x < ((j : ℝ)+1)/4) :
    (j%4 : ℕ)/4 < Int.fract x ∧ Int.fract x < ((j%4 : ℕ)+1)/4 := by
  have hj : (j%4 : ℕ) + (4 : ℝ)*(j/4 : ℕ) = j := by
    exact_mod_cast Nat.mod_add_div j 4
  have hr0 : (0 : ℝ) ≤ (j%4 : ℕ) := Nat.cast_nonneg _
  have hr3 : (j%4 : ℕ) ≤ (3 : ℝ) := by
    exact_mod_cast (show j%4 ≤ 3 by omega)
  have hf : ⌊x⌋ = ((j/4 : ℕ) : ℤ) := by
    apply Int.floor_eq_iff.mpr
    simp only [Int.cast_natCast]
    constructor <;> linarith
  rw [Int.fract, hf]
  simp only [Int.cast_natCast]
  constructor <;> linarith

noncomputable def quarterValue (j : ℕ) : ℝ := if j%4=1 ∨ j%4=2 then 1 else 0

theorem stripeIndicator_quarter (j : ℕ) (x : ℝ)
    (hx : (j : ℝ)/4 < x ∧ x < ((j : ℝ)+1)/4) :
    stripeIndicator x = quarterValue j := by
  have hf := fract_in_quarter j x hx
  have hc : j%4=0 ∨ j%4=1 ∨ j%4=2 ∨ j%4=3 := by omega
  unfold stripeIndicator
  rcases hc with h0 | h1 | h2 | h3
  · rw [h0] at hf
    norm_num at hf
    have hn : Int.fract x ∉ Icc (1/4 : ℝ) (3/4) := by
      simp only [mem_Icc]
      intro h
      linarith
    rw [Set.indicator_of_notMem hn]
    simp [quarterValue, h0]
  · rw [h1] at hf
    norm_num at hf
    have hm : Int.fract x ∈ Icc (1/4 : ℝ) (3/4) := by
      constructor <;> linarith
    rw [Set.indicator_of_mem hm]
    simp [quarterValue, h1]
  · rw [h2] at hf
    norm_num at hf
    have hm : Int.fract x ∈ Icc (1/4 : ℝ) (3/4) := by
      constructor <;> linarith
    rw [Set.indicator_of_mem hm]
    simp [quarterValue, h2]
  · rw [h3] at hf
    norm_num at hf
    have hn : Int.fract x ∉ Icc (1/4 : ℝ) (3/4) := by
      simp only [mem_Icc]
      intro h
      linarith
    rw [Set.indicator_of_notMem hn]
    simp [quarterValue, h3]

theorem stripeIntegral_quarter (j : ℕ) (u v : ℝ) (huv : u ≤ v)
    (hlo : (j : ℝ)/4 ≤ u) (hhi : v ≤ ((j : ℝ)+1)/4) :
    (∫ x in u..v, stripeIndicator x) = (v-u)*quarterValue j := by
  calc
    _ = ∫ _ in u..v, quarterValue j := by
      apply integral_congr_Ioo_of_le huv
      intro x hx
      exact stripeIndicator_quarter j x ⟨by linarith [hx.1], by linarith [hx.2]⟩
    _ = _ := by simp only [intervalIntegral.integral_const, smul_eq_mul]

theorem high_window_intervalIntegrable (u v L : ℝ) (hL : 0 < L) :
    IntervalIntegrable (fun x => windowIndicator (7/8) (15/16) (L*x)) volume u v := by
  simpa [hL.ne'] using
    (windowIndicator_intervalIntegrable (7/8) (15/16) (L*u) (L*v)).comp_mul_left (c := L)

/-- The two plateau assumptions keep the two frequencies distinct.
The error is charged once per cell, including cells with no stripe mass. -/
theorem quarter_integral_lower (F : ℝ → ℝ) (L : ℝ) (hL : 0 < L)
    (hF : ∀ a b, IntervalIntegrable F volume a b) (hF0 : ∀ x, 0 ≤ F x)
    (hp : ∀ x, (1/4 : ℝ) ≤ Int.fract x → Int.fract x ≤ (1/2 : ℝ) →
      windowIndicator (7/8) (15/16) (L*x) ≤ F x)
    (hm : ∀ x, (1/2 : ℝ) ≤ Int.fract x → Int.fract x ≤ (3/4 : ℝ) →
      windowIndicator (7/8) (15/16) ((L+1)*x) ≤ F x)
    (j : ℕ) (u v : ℝ) (huv : u ≤ v)
    (hlo : (j : ℝ)/4 ≤ u) (hhi : v ≤ ((j : ℝ)+1)/4) :
    (∫ x in u..v, stripeIndicator x)/16 - 1/(8*L) ≤ ∫ x in u..v, F x := by
  rw [stripeIntegral_quarter j u v huv hlo hhi]
  have hc : j%4=0 ∨ j%4=1 ∨ j%4=2 ∨ j%4=3 := by omega
  have he0 : 0 ≤ 1/(8*L) := by positivity
  rcases hc with h0 | h1 | h2 | h3
  · have hv : quarterValue j = 0 := by simp [quarterValue, h0]
    rw [hv]
    simp only [mul_zero, zero_div, zero_sub]
    have hi := integral_nonneg_of_forall (μ := volume) huv hF0
    linarith
  · have hi := high_window_scaled_lower u v L hL
    have hmono : (∫ x in u..v, windowIndicator (7/8) (15/16) (L*x)) ≤ ∫ x in u..v, F x := by
      apply integral_mono_on_of_le_Ioo huv (high_window_intervalIntegrable u v L hL) (hF u v)
      intro x hx
      have hf := fract_in_quarter j x ⟨by linarith [hx.1], by linarith [hx.2]⟩
      rw [h1] at hf
      norm_num at hf
      exact hp x (by linarith) (by linarith)
    simpa [quarterValue, h1] using hi.trans hmono
  · have hL1 : 0 < L+1 := by linarith
    have hi := high_window_scaled_lower u v (L+1) hL1
    have hmono : (∫ x in u..v, windowIndicator (7/8) (15/16) ((L+1)*x)) ≤ ∫ x in u..v, F x := by
      apply integral_mono_on_of_le_Ioo huv (high_window_intervalIntegrable u v (L+1) hL1) (hF u v)
      intro x hx
      have hf := fract_in_quarter j x ⟨by linarith [hx.1], by linarith [hx.2]⟩
      rw [h2] at hf
      norm_num at hf
      exact hm x (by linarith) (by linarith)
    have herr : 1/(8*(L+1)) ≤ 1/(8*L) :=
      one_div_le_one_div_of_le (by positivity) (by linarith)
    have hv : quarterValue j = 1 := by simp [quarterValue, h2]
    rw [hv]
    simp only [mul_one]
    linarith
  · have hv : quarterValue j = 0 := by simp [quarterValue, h3]
    rw [hv]
    simp only [mul_zero, zero_div, zero_sub]
    have hi := integral_nonneg_of_forall (μ := volume) huv hF0
    linarith

/-- info: 'B686Round9.stripeIndicator_quarter' depends on axioms: [propext, Classical.choice, Quot.sound] -/
#guard_msgs in
#print axioms stripeIndicator_quarter
/-- info: 'B686Round9.quarter_integral_lower' depends on axioms: [propext, Classical.choice, Quot.sound] -/
#guard_msgs in
#print axioms quarter_integral_lower

end B686Round9

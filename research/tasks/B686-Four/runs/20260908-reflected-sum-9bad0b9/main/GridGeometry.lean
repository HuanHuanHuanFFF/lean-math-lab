import research.tasks.«B686-Four».runs.«20260908-reflected-sum-9bad0b9».main.QuarterGeometry

/-! A clipped quarter-grid closes the all-distance geometric integral bound. -/

namespace B686Round9

open Set MeasureTheory intervalIntegral
open scoped BigOperators

noncomputable def gridPoint (q : ℝ) (j : ℕ) : ℝ := max q (min (2*q) ((j : ℝ)/4))

theorem gridPoint_mono (q : ℝ) {i j : ℕ} (hij : i ≤ j) : gridPoint q i ≤ gridPoint q j := by
  apply max_le_max_left
  apply min_le_min_left
  have h : (i : ℝ) ≤ j := by exact_mod_cast hij
  linarith

theorem gridPoint_active (q : ℝ) (j : ℕ) (hq : 0 ≤ q)
    (hlt : gridPoint q j < gridPoint q (j+1)) :
    (j : ℝ)/4 ≤ gridPoint q j ∧ gridPoint q (j+1) ≤ ((j : ℝ)+1)/4 := by
  have huq : q ≤ gridPoint q j := le_max_left _ _
  have hvr : gridPoint q (j+1) ≤ 2*q := max_le (by linarith) (min_le_left _ _)
  constructor
  · have hj : (j : ℝ)/4 ≤ 2*q := by
      by_contra hn
      have he : gridPoint q j = 2*q := by
        unfold gridPoint
        rw [min_eq_left (by linarith), max_eq_right (by linarith)]
      rw [he] at hlt
      linarith
    unfold gridPoint
    rw [min_eq_right hj]
    exact le_max_right _ _
  · have hj : q ≤ ((j : ℝ)+1)/4 := by
      by_contra hn
      have he : gridPoint q (j+1) = q := by
        unfold gridPoint
        push_cast
        rw [max_eq_left]
        have hm := min_le_right (2*q) (((j+1 : ℕ) : ℝ)/4)
        push_cast at hm
        linarith
      rw [he] at hlt
      linarith
    unfold gridPoint
    push_cast
    exact max_le hj (min_le_right _ _)

theorem gridPoint_start (q : ℝ) (hq : 0 ≤ q) : gridPoint q ⌊4*q⌋₊ = q := by
  have hf := Nat.floor_le (show 0 ≤ 4*q by linarith)
  unfold gridPoint
  rw [min_eq_right (by linarith), max_eq_left (by linarith)]

theorem gridPoint_end (q : ℝ) (hq : 0 ≤ q) : gridPoint q (⌊8*q⌋₊+1) = 2*q := by
  have hf := Nat.lt_floor_add_one (8*q)
  unfold gridPoint
  push_cast
  rw [min_eq_left (by linarith), max_eq_right (by linarith)]

theorem gridIndex_order (q : ℝ) (hq : 0 ≤ q) : ⌊4*q⌋₊ ≤ ⌊8*q⌋₊+1 := by
  have h := Nat.floor_mono (show 4*q ≤ 8*q by linarith)
  omega

theorem gridIndex_count (q : ℝ) (hq : 1/4 ≤ q) :
    ((⌊8*q⌋₊+1-⌊4*q⌋₊ : ℕ) : ℝ) ≤ 16*q := by
  have hq0 : 0 ≤ q := by linarith
  have hn := Nat.lt_floor_add_one (4*q)
  have hm := Nat.floor_le (show 0 ≤ 8*q by linarith)
  rw [Nat.cast_sub (gridIndex_order q hq0)]
  push_cast
  linarith

/-- A real integrand that dominates the appropriate high-phase window on
each stripe has positive integral on every allowed dyadic interval.
No equidistribution input is assumed here. -/
theorem two_frequency_integral_lower (F : ℝ → ℝ) (q L : ℝ)
    (hq : 1/4 ≤ q) (hL : 400 ≤ L)
    (hF : ∀ a b, IntervalIntegrable F volume a b) (hF0 : ∀ x, 0 ≤ F x)
    (hp : ∀ x, (1/4 : ℝ) ≤ Int.fract x → Int.fract x ≤ (1/2 : ℝ) →
      windowIndicator (7/8) (15/16) (L*x) ≤ F x)
    (hm : ∀ x, (1/2 : ℝ) ≤ Int.fract x → Int.fract x ≤ (3/4 : ℝ) →
      windowIndicator (7/8) (15/16) ((L+1)*x) ≤ F x) :
    q/160 ≤ ∫ x in q..2*q, F x := by
  have hq0 : 0 ≤ q := by linarith
  have hLp : 0 < L := by linarith
  let lo : ℕ := ⌊4*q⌋₊
  let hi : ℕ := ⌊8*q⌋₊+1
  have horder : lo ≤ hi := gridIndex_order q hq0
  have hcount : ((hi-lo : ℕ) : ℝ) ≤ 16*q := gridIndex_count q hq
  have hcell : ∀ j ∈ Finset.Ico lo hi,
      (∫ x in gridPoint q j..gridPoint q (j+1), stripeIndicator x)/16-1/(8*L) ≤
        ∫ x in gridPoint q j..gridPoint q (j+1), F x := by
    intro j _
    have huv := gridPoint_mono q (Nat.le_succ j)
    rcases huv.eq_or_lt with heq | hlt
    · rw [heq]
      simp only [integral_same, zero_div, zero_sub]
      have h : 0 ≤ 1/(8*L) := by positivity
      linarith
    · obtain ⟨hlo, hhi⟩ := gridPoint_active q j hq0 hlt
      exact quarter_integral_lower F L hLp hF hF0 hp hm j
        (gridPoint q j) (gridPoint q (j+1)) hlt.le hlo hhi
  have hs := Finset.sum_le_sum hcell
  simp only [Finset.sum_sub_distrib, Finset.sum_const,
    nsmul_eq_mul, Nat.card_Ico] at hs
  have hstripSum := sum_integral_adjacent_intervals_Ico (a := gridPoint q)
    (f := stripeIndicator) horder (fun j _ => stripeIndicator_intervalIntegrable _ _)
  have hFSum := sum_integral_adjacent_intervals_Ico (a := gridPoint q)
    (f := F) horder (fun j _ => hF _ _)
  rw [← Finset.sum_div, hstripSum, hFSum] at hs
  simp only [lo, hi, gridPoint_start q hq0, gridPoint_end q hq0] at hs
  have hcost : ((hi-lo : ℕ) : ℝ)/(8*L) ≤ q/160 := by
    apply (div_le_iff₀ (by positivity : (0 : ℝ) < 8*L)).mpr
    nlinarith [mul_nonneg hq0 (show 0 ≤ L-400 by linarith)]
  have hcost' : ((hi-lo : ℕ) : ℝ)*(1/(8*L)) ≤ q/160 := by
    simpa only [div_eq_mul_inv, one_mul] using hcost
  have hstripe := stripeIndicator_dyadic_lower q hq
  dsimp [lo, hi] at hcost'
  linarith

/-- info: 'B686Round9.gridPoint_active' depends on axioms: [propext, Classical.choice, Quot.sound] -/
#guard_msgs in
#print axioms gridPoint_active
/-- info: 'B686Round9.gridIndex_count' depends on axioms: [propext, Classical.choice, Quot.sound] -/
#guard_msgs in
#print axioms gridIndex_count
/-- info: 'B686Round9.two_frequency_integral_lower' depends on axioms: [propext, Classical.choice, Quot.sound] -/
#guard_msgs in
#print axioms two_frequency_integral_lower

end B686Round9

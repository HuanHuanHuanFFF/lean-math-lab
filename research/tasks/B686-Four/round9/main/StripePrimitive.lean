import Mathlib.Algebra.Order.Floor.Ring
import Mathlib.Algebra.Order.Archimedean.Real.Basic
import Mathlib.Tactic.Linarith
import Mathlib.Tactic.NormNum

/-!
Closed-form periodic stripe primitive. The central inequality is an
algebraic/floor certificate, not yet a theorem identifying a Lebesgue
integral or the measure of a stripe set with this primitive difference.
-/

namespace B686Round9

noncomputable def stripeRamp (r : ℝ) : ℝ := max 0 (min (r - 1/4) (1/2))

noncomputable def stripePrimitive (x : ℝ) : ℝ := (⌊x⌋ : ℝ)/2 + stripeRamp (Int.fract x)

theorem stripeRamp_low (r : ℝ) (hr : r ≤ 1/4) : stripeRamp r = 0 := by
  unfold stripeRamp
  rw [min_eq_left (by linarith), max_eq_left (by linarith)]

theorem stripeRamp_middle (r : ℝ) (hlo : 1/4 ≤ r) (hhi : r ≤ 3/4) :
    stripeRamp r = r - 1/4 := by
  unfold stripeRamp
  rw [min_eq_left (by linarith), max_eq_right (by linarith)]

theorem stripeRamp_high (r : ℝ) (hr : 3/4 ≤ r) : stripeRamp r = 1/2 := by
  unfold stripeRamp
  rw [min_eq_right (by linarith), max_eq_right (by norm_num)]

theorem stripeRamp_error (r : ℝ) (hlo : 0 ≤ r) (hhi : r ≤ 1) :
    -(1/8 : ℝ) ≤ stripeRamp r - r/2 ∧ stripeRamp r - r/2 ≤ 1/8 := by
  by_cases h1 : r ≤ 1/4
  · rw [stripeRamp_low r h1]
    constructor <;> linarith
  by_cases h2 : r ≤ 3/4
  · rw [stripeRamp_middle r (by linarith) h2]
    constructor <;> linarith
  · rw [stripeRamp_high r (by linarith)]
    constructor <;> linarith

theorem stripePrimitive_error (x : ℝ) :
    -(1/8 : ℝ) ≤ stripePrimitive x - x/2 ∧
      stripePrimitive x - x/2 ≤ 1/8 := by
  have h := stripeRamp_error (Int.fract x) (Int.fract_nonneg x) (Int.fract_lt_one x).le
  have hx := Int.fract_add_floor x
  unfold stripePrimitive
  constructor <;> linarith

theorem stripePrimitive_large (q : ℝ) (hq : 1 ≤ q) :
    q/5 ≤ stripePrimitive (2*q) - stripePrimitive q := by
  have h1 := stripePrimitive_error q
  have h2 := stripePrimitive_error (2*q)
  linarith

theorem stripePrimitive_unit (x : ℝ) (hlo : 0 ≤ x) (hhi : x < 1) :
    stripePrimitive x = stripeRamp x := by
  have hf : ⌊x⌋ = (0 : ℤ) := Int.floor_eq_iff.mpr (by simpa using And.intro hlo hhi)
  simp [stripePrimitive, Int.fract, hf]

theorem stripePrimitive_second_unit (x : ℝ) (hlo : 1 ≤ x) (hhi : x < 2) :
    stripePrimitive x = 1/2 + stripeRamp (x-1) := by
  have hf : ⌊x⌋ = (1 : ℤ) := Int.floor_eq_iff.mpr (by norm_num; exact ⟨hlo, hhi⟩)
  simp [stripePrimitive, Int.fract, hf]

theorem stripePrimitive_small (q : ℝ) (hlo : 1/4 ≤ q) (hhi : q < 1) :
    q/5 ≤ stripePrimitive (2*q) - stripePrimitive q := by
  rw [stripePrimitive_unit q (by linarith) hhi]
  by_cases hhalf : q < 1/2
  · rw [stripePrimitive_unit (2*q) (by linarith) (by linarith)]
    rw [stripeRamp_middle q hlo (by linarith)]
    by_cases h38 : q ≤ 3/8
    · rw [stripeRamp_middle (2*q) (by linarith) (by linarith)]
      linarith
    · rw [stripeRamp_high (2*q) (by linarith)]
      linarith
  · rw [stripePrimitive_second_unit (2*q) (by linarith) (by linarith)]
    by_cases h58 : q ≤ 5/8
    · rw [stripeRamp_low (2*q-1) (by linarith)]
      rw [stripeRamp_middle q hlo (by linarith)]
      linarith
    by_cases h34 : q ≤ 3/4
    · rw [stripeRamp_middle (2*q-1) (by linarith) (by linarith)]
      rw [stripeRamp_middle q hlo h34]
      linarith
    rw [stripeRamp_high q (by linarith)]
    by_cases h78 : q ≤ 7/8
    · rw [stripeRamp_middle (2*q-1) (by linarith) (by linarith)]
      linarith
    · rw [stripeRamp_high (2*q-1) (by linarith)]
      linarith

/-- The all-scale closed-form certificate. Measure identification is a
separate obligation and is deliberately absent from this theorem. -/
theorem stripePrimitive_dyadic_lower (q : ℝ) (hq : 1/4 ≤ q) :
    q/5 ≤ stripePrimitive (2*q) - stripePrimitive q := by
  by_cases h1 : 1 ≤ q
  · exact stripePrimitive_large q h1
  · exact stripePrimitive_small q hq (by linarith)

/-- info: 'B686Round9.stripePrimitive_large' depends on axioms: [propext, Classical.choice, Quot.sound] -/
#guard_msgs in
#print axioms stripePrimitive_large
/-- info: 'B686Round9.stripePrimitive_dyadic_lower' depends on axioms: [propext, Classical.choice, Quot.sound] -/
#guard_msgs in
#print axioms stripePrimitive_dyadic_lower

end B686Round9

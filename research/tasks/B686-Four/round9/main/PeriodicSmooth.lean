import Mathlib.Analysis.SpecialFunctions.SmoothTransition
import Mathlib.Topology.Algebra.Order.Floor
import Mathlib.Algebra.Ring.Periodic
import Mathlib.Tactic.Linarith

/-! Smooth periodic extension of a function vanishing near both unit endpoints.
The integer seams are proved locally constant; composition with fractional part
is not incorrectly assumed to preserve smoothness everywhere. -/

namespace B686Round9

open Set Filter
open scoped Topology

noncomputable def periodicLift (f : ℝ → ℝ) (x : ℝ) : ℝ := f (Int.fract x)

theorem periodicLift_periodic (f : ℝ → ℝ) : Function.Periodic (periodicLift f) 1 := by
  intro x
  simp [periodicLift, Int.fract_add_one]

theorem near_seam_zero (f : ℝ → ℝ) (a b z : ℝ)
    (ha : 0 < a) (hab : a ≤ b) (hb : b < 1)
    (hf : ∀ y, y ≤ a ∨ b ≤ y → f y = 0)
    (hz : b-1 < z ∧ z < a) : f (Int.fract z) = 0 := by
  by_cases hz0 : 0 ≤ z
  · have hfloor : ⌊z⌋ = (0 : ℤ) := Int.floor_eq_iff.mpr (by
      constructor <;> norm_num <;> linarith [hz.2])
    have hfract : Int.fract z = z := by simp [Int.fract, hfloor]
    rw [hfract]
    exact hf z (Or.inl hz.2.le)
  · have hfloor : ⌊z⌋ = (-1 : ℤ) := Int.floor_eq_iff.mpr (by
      constructor <;> norm_num <;> linarith [hz.1])
    have hfract : Int.fract z = z+1 := by simp [Int.fract, hfloor]
    rw [hfract]
    exact hf (z+1) (Or.inr (by linarith [hz.1]))

theorem periodicLift_contDiff (f : ℝ → ℝ) (a b : ℝ) (n : ℕ∞)
    (ha : 0 < a) (hab : a ≤ b) (hb : b < 1)
    (hf : ContDiff ℝ n f) (hz : ∀ y, y ≤ a ∨ b ≤ y → f y = 0) :
    ContDiff ℝ n (periodicLift f) := by
  rw [contDiff_iff_contDiffAt]
  intro x
  by_cases hx : Int.fract x = 0
  · have hxi : x = (⌊x⌋ : ℝ) := by linarith [Int.fract_add_floor x]
    apply (contDiffAt_const (c := (0 : ℝ))).congr_of_eventuallyEq
    filter_upwards [Ioo_mem_nhds (show x+b-1 < x by linarith)
      (show x < x+a by linarith)] with y hy
    have hshift : Int.fract (y-x) = Int.fract y := by
      rw [hxi, Int.fract_sub_intCast]
    dsimp [periodicLift]
    rw [← hshift]
    exact near_seam_zero f a b (y-x) ha hab hb hz ⟨by linarith [hy.1], by linarith [hy.2]⟩
  · have hleft : (⌊x⌋ : ℝ) < x := by
      have hpos := (Int.fract_nonneg x).lt_of_ne' hx
      linarith [Int.fract_add_floor x]
    have hright : x < (⌊x⌋ : ℝ)+1 := Int.lt_floor_add_one x
    have hg : ContDiffAt ℝ n (fun y : ℝ => f (y-(⌊x⌋ : ℝ))) x :=
      hf.contDiffAt.comp x (contDiffAt_id.sub contDiffAt_const)
    apply hg.congr_of_eventuallyEq
    filter_upwards [Ioo_mem_nhds hleft hright] with y hy
    have hfloor : ⌊y⌋ = ⌊x⌋ := Int.floor_eq_iff.mpr ⟨hy.1.le, hy.2⟩
    change f (y-(⌊y⌋ : ℝ)) = f (y-(⌊x⌋ : ℝ))
    rw [hfloor]

/-- info: 'B686Round9.periodicLift_contDiff' depends on axioms: [propext, Classical.choice, Quot.sound] -/
#guard_msgs in
#print axioms periodicLift_contDiff

end B686Round9

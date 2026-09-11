import research.tasks.«B699-Binomial».runs.«20260911-smooth-window-lean-894d6b50».lean.AxisPrimary
import research.tasks.«B699-Binomial».runs.«20260911-smooth-window-lean-894d6b50».lean.AxisThresholds

namespace B699.SmoothWindow

theorem two_axis_smallPart_upper {a b r : ℕ} (ha : 2 ≤ a) (hb : b ≤ 1) (hr : r ≤ 3) :
    4*smallPart23 ((2^a*3^b+r).choose 4) ≤ 3*a*(2^a*3^b+r) := by
  have hx : 4 ≤ 2^a := by simpa using Nat.pow_le_pow_right (by decide : 0 < 2) ha
  interval_cases b
  · simp only [pow_zero,mul_one]
    have hproj : ordProj[2] (2^a) = 2^a := by simpa using ordProj_smooth_two a 0
    have hA := window_primary_le_of_power (by decide : Nat.Prime 2) ha hr hx hproj
    have hB := three_part_two_axis_zero ha hr
    have hU := smallPart23_window_upper (by omega : 4 ≤ 2^a+r) hA hB
    calc
      4*smallPart23 ((2^a+r).choose 4) ≤ 2^a*(3*a) := hU
      _ = 3*a*(2^a) := by ring
      _ ≤ 3*a*(2^a+r) := Nat.mul_le_mul_left _ (Nat.le_add_right _ _)
  · simp only [pow_one]
    have hN : 4 ≤ 2^a*3 := by omega
    have hproj : ordProj[2] (2^a*3) = 2^a := by simpa using ordProj_smooth_two a 1
    have hA := window_primary_le_of_power (by decide : Nat.Prime 2) ha hr hN hproj
    have hB := three_part_two_axis_one ha hr
    have hU := smallPart23_window_upper (by omega : 4 ≤ 2^a*3+r) hA hB
    calc
      4*smallPart23 ((2^a*3+r).choose 4) ≤ 2^a*(9*a) := hU
      _ = 3*a*(2^a*3) := by ring
      _ ≤ 3*a*(2^a*3+r) := Nat.mul_le_mul_left _ (Nat.le_add_right _ _)

theorem three_axis_smallPart_upper {a b r : ℕ} (ha : a ≤ 1) (hb : 2 ≤ b) (hr : r ≤ 3) :
    smallPart23 ((2^a*3^b+r).choose 4) ≤ b*(2^a*3^b+r) := by
  have hx : 9 ≤ 3^b := by simpa using Nat.pow_le_pow_right (by decide : 0 < 3) hb
  interval_cases a
  · simp only [pow_zero,one_mul]
    have hproj : ordProj[3] (3^b) = 3^b := by simpa using ordProj_smooth_three 0 b
    have hB := window_primary_le_of_power (by decide : Nat.Prime 3) hb hr (by omega : 4 ≤ 3^b) hproj
    have hA := two_part_three_axis_zero hb hr
    have hU := smallPart23_window_upper (by omega : 4 ≤ 3^b+r) hA hB
    have hu : smallPart23 ((3^b+r).choose 4) ≤ b*3^b := by nlinarith only [hU]
    exact hu.trans (Nat.mul_le_mul_left b (Nat.le_add_right _ _))
  · simp only [pow_one]
    have hN : 4 ≤ 2*3^b := by omega
    have hproj : ordProj[3] (2*3^b) = 3^b := by simpa using ordProj_smooth_three 1 b
    have hB := window_primary_le_of_power (by decide : Nat.Prime 3) hb hr hN hproj
    have hA := two_part_three_axis_one hb hr
    have hU := smallPart23_window_upper (by omega : 4 ≤ 2*3^b+r) hA hB
    have hu : smallPart23 ((2*3^b+r).choose 4) ≤ b*(2*3^b) := by nlinarith only [hU]
    exact hu.trans (Nat.mul_le_mul_left b (Nat.le_add_right _ _))

theorem smooth_exponents_bounded_of_noCommon {a b r j : ℕ}
    (hr : r ≤ 3) (hj : 5 ≤ j) (hjhalf : j ≤ (2^a*3^b+r)/2)
    (hno : ¬ ∃ p : ℕ, p.Prime ∧ 5 ≤ p ∧ p ∣ (2^a*3^b+r).choose 4 ∧
      p ∣ (2^a*3^b+r).choose j) :
    a < 40 ∧ b < 24 ∧ min a b ≤ 1 := by
  have hmin : min a b ≤ 1 := by
    by_contra h
    have ha : 2 ≤ a := by omega
    have hb : 2 ≤ b := by omega
    exact hno (smooth_collision_impossible ha hb hr hj hjhalf)
  have hW := W_bound_of_noCommon hj hjhalf hno
  have htwo : 1 ≤ 2^a := Nat.one_le_pow _ _ (by decide)
  have hthree : 1 ≤ 3^b := Nat.one_le_pow _ _ (by decide)
  have ha : a < 40 := by
    by_cases ha2 : 2 ≤ a
    · have hb1 : b ≤ 1 := by omega
      have hu := two_axis_smallPart_upper ha2 hb1 hr
      apply two_axis_exponent_lt (U:=smallPart23 ((2^a*3^b+r).choose 4)) _ hu hW
      have hmul : 2^a ≤ 2^a*3^b := by simpa using Nat.mul_le_mul_left (2^a) hthree
      exact hmul.trans (Nat.le_add_right _ _)
    · omega
  have hb : b < 24 := by
    by_cases hb2 : 2 ≤ b
    · have ha1 : a ≤ 1 := by omega
      have hu := three_axis_smallPart_upper ha1 hb2 hr
      apply three_axis_exponent_lt (U:=smallPart23 ((2^a*3^b+r).choose 4)) _ hu hW
      have hmul : 3^b ≤ 2^a*3^b := by simpa using Nat.mul_le_mul_right (3^b) htwo
      exact hmul.trans (Nat.le_add_right _ _)
    · omega
  exact ⟨ha,hb,hmin⟩

end B699.SmoothWindow

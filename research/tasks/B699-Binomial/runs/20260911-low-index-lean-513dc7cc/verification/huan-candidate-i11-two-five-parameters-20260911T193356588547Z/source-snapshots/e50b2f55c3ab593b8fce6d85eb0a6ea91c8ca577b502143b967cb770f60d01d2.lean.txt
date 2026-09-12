import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11Edge.Capacity

/-! UNCOMPILED. Fixed original two-five selector and shared extraction index. -/
set_option autoImplicit false
set_option relaxedAutoImplicit false
namespace Math.B699.I11TwoFiveScaled
open Math.B699.DiscretePadeSelector

def twoFiveZ : ℕ := 115572769905797
def twoFiveY0 : ℕ := 2 ^ 15359
def twoFiveM : ℕ := 329

theorem twoFiveZ_gt_one : 1 < twoFiveZ := by decide

def twoFiveIndex (Y : ℕ) : ℕ := leastExponent twoFiveZ Y twoFiveZ_gt_one

theorem index_ge_M (Y : ℕ) (hY : twoFiveY0 ≤ Y)
    (hprevious : twoFiveZ ^ (twoFiveM - 1) ≤ 4 * twoFiveY0) :
    twoFiveM ≤ twoFiveIndex Y := by
  exact leastExponent_lower_bound twoFiveZ twoFiveY0 Y twoFiveM
    twoFiveZ_gt_one hY (by decide) hprevious

theorem index_ge_m0 (Y : ℕ) (hY : twoFiveY0 ≤ Y)
    (hprevious : twoFiveZ ^ (twoFiveM - 1) ≤ 4 * twoFiveY0) :
    141 ≤ twoFiveIndex Y := by
  have h := index_ge_M Y hY hprevious
  dsimp only [twoFiveM] at h
  omega

theorem extract_same_index (Y e f A C : ℕ)
    (hY : twoFiveY0 ≤ Y)
    (hprevious : twoFiveZ ^ (twoFiveM - 1) ≤ 4 * twoFiveY0)
    (hrateP : 2 ^ 35000 ≤ twoFiveZ ^ 752)
    (hbaseP : (2 ^ 35000) ^ twoFiveM ≤ twoFiveY0 ^ 752)
    (hlookP : 4 ^ 752 * (2 ^ 35000) ^ (twoFiveM + 1) ≤ twoFiveZ ^ (752 * twoFiveM))
    (hrateQ : 5 ^ 15000 ≤ twoFiveZ ^ 748)
    (hbaseQ : (5 ^ 15000) ^ twoFiveM ≤ twoFiveY0 ^ 748)
    (hlookQ : 4 ^ 748 * (5 ^ 15000) ^ (twoFiveM + 1) ≤ twoFiveZ ^ (748 * twoFiveM))
    (hwindowP : Y ≤ 2 ^ e * A) (hwindowQ : Y ≤ 5 ^ f * C)
    (hsmallP : A ^ 1000 < Y ^ 248) (hsmallQ : C ^ 1000 < Y ^ 252) :
    35 * twoFiveIndex Y < e ∧ 15 * twoFiveIndex Y < f := by
  have hY0 : 0 < twoFiveY0 := Nat.pow_pos (by decide : 0 < (2 : ℕ))
  have hM : 0 < twoFiveM := by decide
  constructor
  · have hP := Math.B699.I11ActualPadeEdge.least_capacity_forces_exponent
      2 35 1000 248 twoFiveZ twoFiveM twoFiveY0 Y e A
      (by decide) (by decide) twoFiveZ_gt_one hY0 hY hM
    simp only [show 35 * 1000 = 35000 by decide,
      show 1000 - 248 = 752 by decide] at hP
    exact hP hprevious hrateP hbaseP hlookP hwindowP hsmallP
  · have hQ := Math.B699.I11ActualPadeEdge.least_capacity_forces_exponent
      5 15 1000 252 twoFiveZ twoFiveM twoFiveY0 Y f C
      (by decide) (by decide) twoFiveZ_gt_one hY0 hY hM
    simp only [show 15 * 1000 = 15000 by decide,
      show 1000 - 252 = 748 by decide] at hQ
    exact hQ hprevious hrateQ hbaseQ hlookQ hwindowQ hsmallQ

end Math.B699.I11TwoFiveScaled

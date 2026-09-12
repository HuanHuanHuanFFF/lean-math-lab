import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11Edge.Capacity

/-! UNCOMPILED CANDIDATE. Fixed original row02, M162 and G threshold160. Same least exponent extracts 46m and 69m. -/
set_option autoImplicit false
set_option relaxedAutoImplicit false
namespace Math.B699.I11ThreeTwoScaled
open Math.B699.DiscretePadeSelector

def threeTwoZ : ℕ := 37002653975761602583641821923
def threeTwoY0 : ℕ := 2 ^ 15359
def threeTwoM : ℕ := 162

theorem threeTwoZ_gt_one : 1 < threeTwoZ := by decide

def threeTwoIndex (Y : ℕ) : ℕ := leastExponent threeTwoZ Y threeTwoZ_gt_one

theorem index_ge_M (Y : ℕ) (hY : threeTwoY0 ≤ Y)
    (hprevious : threeTwoZ ^ (threeTwoM - 1) ≤ 4 * threeTwoY0) :
    threeTwoM ≤ threeTwoIndex Y := by
  exact leastExponent_lower_bound threeTwoZ threeTwoY0 Y threeTwoM
    threeTwoZ_gt_one hY (by decide) hprevious

theorem index_ge_m0 (Y : ℕ) (hY : threeTwoY0 ≤ Y)
    (hprevious : threeTwoZ ^ (threeTwoM - 1) ≤ 4 * threeTwoY0) :
    160 ≤ threeTwoIndex Y := by
  have h := index_ge_M Y hY hprevious
  dsimp only [threeTwoM] at h
  omega

theorem extract_same_index (Y e f A C : ℕ)
    (hY : threeTwoY0 ≤ Y)
    (hprevious : threeTwoZ ^ (threeTwoM - 1) ≤ 4 * threeTwoY0)
    (hrateP : 3 ^ 46000 ≤ threeTwoZ ^ 774)
    (hbaseP : (3 ^ 46000) ^ threeTwoM ≤ threeTwoY0 ^ 774)
    (hlookP : 4 ^ 774 * (3 ^ 46000) ^ (threeTwoM + 1) ≤ threeTwoZ ^ (774 * threeTwoM))
    (hrateQ : 2 ^ 69000 ≤ threeTwoZ ^ 732)
    (hbaseQ : (2 ^ 69000) ^ threeTwoM ≤ threeTwoY0 ^ 732)
    (hlookQ : 4 ^ 732 * (2 ^ 69000) ^ (threeTwoM + 1) ≤ threeTwoZ ^ (732 * threeTwoM))
    (hwindowP : Y ≤ 3 ^ e * A) (hwindowQ : Y ≤ 2 ^ f * C)
    (hsmallP : A ^ 1000 < Y ^ 226) (hsmallQ : C ^ 1000 < Y ^ 268) :
    46 * threeTwoIndex Y < e ∧ 69 * threeTwoIndex Y < f := by
  have hY0 : 0 < threeTwoY0 := Nat.pow_pos (by decide : 0 < (2 : ℕ))
  have hM : 0 < threeTwoM := by decide
  constructor
  · have hP := Math.B699.I11ActualPadeEdge.least_capacity_forces_exponent
      3 46 1000 226 threeTwoZ threeTwoM threeTwoY0 Y e A
      (by decide) (by decide) threeTwoZ_gt_one hY0 hY hM
    simp only [show 46 * 1000 = 46000 by decide,
      show 1000 - 226 = 774 by decide] at hP
    exact hP hprevious hrateP hbaseP hlookP hwindowP hsmallP
  · have hQ := Math.B699.I11ActualPadeEdge.least_capacity_forces_exponent
      2 69 1000 268 threeTwoZ threeTwoM threeTwoY0 Y f C
      (by decide) (by decide) threeTwoZ_gt_one hY0 hY hM
    simp only [show 69 * 1000 = 69000 by decide,
      show 1000 - 268 = 732 by decide] at hQ
    exact hQ hprevious hrateQ hbaseQ hlookQ hwindowQ hsmallQ

end Math.B699.I11ThreeTwoScaled

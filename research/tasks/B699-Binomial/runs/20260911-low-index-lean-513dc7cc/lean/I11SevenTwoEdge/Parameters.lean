import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11Edge.Capacity

/-! UNCOMPILED CANDIDATE. Fixed original seven-two selector; M=285, G threshold=224, extraction 18m/36m. -/
set_option autoImplicit false
set_option relaxedAutoImplicit false
namespace Math.B699.I11SevenTwoScaled
open Math.B699.DiscretePadeSelector

def sevenTwoZ : ℕ := 17498099772305953
def sevenTwoY0 : ℕ := 2 ^ 15359
def sevenTwoM : ℕ := 285

theorem sevenTwoZ_gt_one : 1 < sevenTwoZ := by decide

def sevenTwoIndex (Y : ℕ) : ℕ := leastExponent sevenTwoZ Y sevenTwoZ_gt_one

theorem index_ge_M (Y : ℕ) (hY : sevenTwoY0 ≤ Y)
    (hprevious : sevenTwoZ ^ (sevenTwoM - 1) ≤ 4 * sevenTwoY0) :
    sevenTwoM ≤ sevenTwoIndex Y := by
  exact leastExponent_lower_bound sevenTwoZ sevenTwoY0 Y sevenTwoM
    sevenTwoZ_gt_one hY (by decide) hprevious

theorem index_ge_m0 (Y : ℕ) (hY : sevenTwoY0 ≤ Y)
    (hprevious : sevenTwoZ ^ (sevenTwoM - 1) ≤ 4 * sevenTwoY0) :
    224 ≤ sevenTwoIndex Y := by
  have h := index_ge_M Y hY hprevious
  dsimp only [sevenTwoM] at h
  omega

theorem extract_same_index (Y e f A C : ℕ)
    (hY : sevenTwoY0 ≤ Y)
    (hprevious : sevenTwoZ ^ (sevenTwoM - 1) ≤ 4 * sevenTwoY0)
    (hrateP : 7 ^ 18000 ≤ sevenTwoZ ^ 940)
    (hbaseP : (7 ^ 18000) ^ sevenTwoM ≤ sevenTwoY0 ^ 940)
    (hlookP : 4 ^ 940 * (7 ^ 18000) ^ (sevenTwoM + 1) ≤ sevenTwoZ ^ (940 * sevenTwoM))
    (hrateQ : 2 ^ 36000 ≤ sevenTwoZ ^ 670)
    (hbaseQ : (2 ^ 36000) ^ sevenTwoM ≤ sevenTwoY0 ^ 670)
    (hlookQ : 4 ^ 670 * (2 ^ 36000) ^ (sevenTwoM + 1) ≤ sevenTwoZ ^ (670 * sevenTwoM))
    (hwindowP : Y ≤ 7 ^ e * A) (hwindowQ : Y ≤ 2 ^ f * C)
    (hsmallP : A ^ 1000 < Y ^ 60) (hsmallQ : C ^ 1000 < Y ^ 330) :
    18 * sevenTwoIndex Y < e ∧ 36 * sevenTwoIndex Y < f := by
  have hY0 : 0 < sevenTwoY0 := Nat.pow_pos (by decide : 0 < (2 : ℕ))
  have hM : 0 < sevenTwoM := by decide
  constructor
  · have hP := Math.B699.I11ActualPadeEdge.least_capacity_forces_exponent
      7 18 1000 60 sevenTwoZ sevenTwoM sevenTwoY0 Y e A
      (by decide) (by decide) sevenTwoZ_gt_one hY0 hY hM
    simp only [show 18 * 1000 = 18000 by decide,
      show 1000 - 60 = 940 by decide] at hP
    exact hP hprevious hrateP hbaseP hlookP hwindowP hsmallP
  · have hQ := Math.B699.I11ActualPadeEdge.least_capacity_forces_exponent
      2 36 1000 330 sevenTwoZ sevenTwoM sevenTwoY0 Y f C
      (by decide) (by decide) sevenTwoZ_gt_one hY0 hY hM
    simp only [show 36 * 1000 = 36000 by decide,
      show 1000 - 330 = 670 by decide] at hQ
    exact hQ hprevious hrateQ hbaseQ hlookQ hwindowQ hsmallQ

end Math.B699.I11SevenTwoScaled

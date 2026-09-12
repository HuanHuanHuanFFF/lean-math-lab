import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11Edge.Capacity

/-! UNCOMPILED CANDIDATE. Fixed row04, M194/G threshold149, weights352/216. Same least m gives both 22m extractions. -/
set_option autoImplicit false
set_option relaxedAutoImplicit false
namespace Math.B699.I11FiveSevenScaled
open Math.B699.DiscretePadeSelector

def fiveSevenZ : ℕ := 719422706382292314227864
def fiveSevenY0 : ℕ := 2 ^ 15359
def fiveSevenM : ℕ := 194

theorem fiveSevenZ_gt_one : 1 < fiveSevenZ := by decide

def fiveSevenIndex (Y : ℕ) : ℕ := leastExponent fiveSevenZ Y fiveSevenZ_gt_one

theorem index_ge_M (Y : ℕ) (hY : fiveSevenY0 ≤ Y)
    (hprevious : fiveSevenZ ^ (fiveSevenM - 1) ≤ 4 * fiveSevenY0) :
    fiveSevenM ≤ fiveSevenIndex Y := by
  exact leastExponent_lower_bound fiveSevenZ fiveSevenY0 Y fiveSevenM
    fiveSevenZ_gt_one hY (by decide) hprevious

theorem index_ge_m0 (Y : ℕ) (hY : fiveSevenY0 ≤ Y)
    (hprevious : fiveSevenZ ^ (fiveSevenM - 1) ≤ 4 * fiveSevenY0) :
    149 ≤ fiveSevenIndex Y := by
  have h := index_ge_M Y hY hprevious
  dsimp only [fiveSevenM] at h
  omega

theorem extract_same_index (Y e f A C : ℕ)
    (hY : fiveSevenY0 ≤ Y)
    (hprevious : fiveSevenZ ^ (fiveSevenM - 1) ≤ 4 * fiveSevenY0)
    (hrateP : 5 ^ 22000 ≤ fiveSevenZ ^ 648)
    (hbaseP : (5 ^ 22000) ^ fiveSevenM ≤ fiveSevenY0 ^ 648)
    (hlookP : 4 ^ 648 * (5 ^ 22000) ^ (fiveSevenM + 1) ≤ fiveSevenZ ^ (648 * fiveSevenM))
    (hrateQ : 7 ^ 22000 ≤ fiveSevenZ ^ 784)
    (hbaseQ : (7 ^ 22000) ^ fiveSevenM ≤ fiveSevenY0 ^ 784)
    (hlookQ : 4 ^ 784 * (7 ^ 22000) ^ (fiveSevenM + 1) ≤ fiveSevenZ ^ (784 * fiveSevenM))
    (hwindowP : Y ≤ 5 ^ e * A) (hwindowQ : Y ≤ 7 ^ f * C)
    (hsmallP : A ^ 1000 < Y ^ 352) (hsmallQ : C ^ 1000 < Y ^ 216) :
    22 * fiveSevenIndex Y < e ∧ 22 * fiveSevenIndex Y < f := by
  have hY0 : 0 < fiveSevenY0 := Nat.pow_pos (by decide : 0 < (2 : ℕ))
  have hM : 0 < fiveSevenM := by decide
  constructor
  · have hP := Math.B699.I11ActualPadeEdge.least_capacity_forces_exponent
      5 22 1000 352 fiveSevenZ fiveSevenM fiveSevenY0 Y e A
      (by decide) (by decide) fiveSevenZ_gt_one hY0 hY hM
    simp only [show 22 * 1000 = 22000 by decide,
      show 1000 - 352 = 648 by decide] at hP
    exact hP hprevious hrateP hbaseP hlookP hwindowP hsmallP
  · have hQ := Math.B699.I11ActualPadeEdge.least_capacity_forces_exponent
      7 22 1000 216 fiveSevenZ fiveSevenM fiveSevenY0 Y f C
      (by decide) (by decide) fiveSevenZ_gt_one hY0 hY hM
    simp only [show 22 * 1000 = 22000 by decide,
      show 1000 - 216 = 784 by decide] at hQ
    exact hQ hprevious hrateQ hbaseQ hlookQ hwindowQ hsmallQ

end Math.B699.I11FiveSevenScaled

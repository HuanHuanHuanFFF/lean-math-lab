import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11FiveSevenEdge.GrowthInputs
import Mathlib.Algebra.Order.Field.Rat

/-! UNCOMPILED candidate. Fixed original i13 weights; no new seed or kernel. -/
set_option autoImplicit false
set_option relaxedAutoImplicit false
namespace Math.B699.I13FiveSevenEdge

abbrev qB : ℚ := Math.B699.I11FiveSevenScaled.qBase
abbrev eB : ℚ := Math.B699.I11FiveSevenScaled.eBase
def rateR : ℚ := Math.B699.I11DivisorFiveSeven.infiniteRate
def indexBase : ℕ := 800066819113475893826133
def minIndex : ℕ := 826
def heightY0 : ℕ := 2 ^ 65535
def squareTerm (m : ℕ) : ℚ := ((m : ℚ) + 1) ^ 2
def lowerG (m : ℕ) : ℚ := (16 / 3 : ℚ) * rateR ^ (m - 1) / squareTerm m
def qRatio : ℚ := ((50 : ℚ) ^ 7 * qB) / ((25 : ℚ) ^ 11 * rateR)
def eRatio : ℚ := (indexBase : ℚ) * ((50 : ℚ) ^ 4 * eB) /
  (((25 : ℚ) * 49) ^ 11 * rateR)

theorem rateR_pos : 0 < rateR := by
  norm_num [rateR, Math.B699.I11DivisorFiveSeven.infiniteRate]
theorem squareTerm_pos (m : ℕ) : 0 < squareTerm m := by
  unfold squareTerm
  positivity
theorem lowerG_pos (m : ℕ) : 0 < lowerG m := by
  exact div_pos (mul_pos (by norm_num) (pow_pos rateR_pos _)) (squareTerm_pos m)
theorem qB_pos : 0 < qB := Math.B699.I11FiveSevenScaled.fixed_bases_pos.2.2.1
theorem eB_pos : 0 < eB := Math.B699.I11FiveSevenScaled.fixed_bases_pos.2.2.2
theorem indexBase_gt_one : 1 < indexBase := by decide
theorem heightY0_pos : 0 < heightY0 := by
  unfold heightY0
  exact Nat.pow_pos (by decide)
theorem minIndex_pos : 0 < minIndex := by decide

theorem rate_power_split (m : ℕ) (hm : 1 ≤ m) :
    rateR ^ m = rateR ^ (m - 1) * rateR := by
  simpa only [Nat.sub_add_cancel hm] using pow_succ rateR (m - 1)

def selectedIndex (Y : ℕ) : ℕ :=
  Math.B699.DiscretePadeSelector.leastExponent indexBase Y indexBase_gt_one
end Math.B699.I13FiveSevenEdge

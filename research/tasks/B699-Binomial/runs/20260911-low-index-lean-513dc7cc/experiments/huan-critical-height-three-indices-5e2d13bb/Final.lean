import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».experiments.«huan-critical-height-three-indices-5e2d13bb».Structure
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».experiments.«huan-critical-height-three-indices-5e2d13bb».Windows
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».experiments.«huan-critical-height-three-indices-5e2d13bb».Constants

/-!
Complete uncompiled candidate: all mathematical special inputs are supplied.
These initial-height statements do not settle the remaining finite original cases.
-/
set_option autoImplicit false
set_option relaxedAutoImplicit false
namespace Math.B699.CriticalPadeHeight
open B699LowIndex B699LargePrimeStructure

theorem critical_noCommon_below_15360 {n i j r s t : ℕ}
    (hi : 6 ≤ i) (hi34 : i ≤ 34) (hij : i < j) (hjn : j ≤ n / 2) (hsi : s < i)
    (hlambda : 2 * s - r = i) (ht : t ≤ i)
    (hdegree : windowDegree i r s = (i - t) * i) (hcount : smallPrimeCount i = t)
    (hno : ¬ Common n i j) : n < (2 : ℕ) ^ 15360 := by
  by_contra hnot
  have hheight : (2 : ℕ) ^ 15360 ≤ n := Nat.le_of_not_gt hnot
  obtain ⟨hlarge0, hY⟩ := large_height_bounds hheight
  have hlarge : i * (i - 1) ≤ n := by
    calc
      i * (i - 1) ≤ 34 * (34 - 1) :=
        Nat.mul_le_mul hi34 (Nat.sub_le_sub_right hi34 1)
      _ ≤ n := hlarge0
  have hlower := critical_small_part_lower (by omega : 2 ≤ i) hij hjn hsi
    hlarge hlambda ht hdegree hno
  have hcapacity : (smallPrimePart n i) ^ 1000 * ((n + 1) / 2) ^ 10 ≤ n ^ (1000 * t) := by
    simpa only [hcount] using actual_small_part_capacity hi hi34 hheight
  have hbudget := critical_budget_bound (smallPrimePart_pos n i) hlower hcapacity
  exact height_budget_contradiction hi34 hY hbudget

theorem i28_parameters : 2 * 18 - 8 = (28 : ℕ) ∧
    windowDegree 28 8 18 = (28 - 9) * 28 ∧ smallPrimeCount 28 = 9 := by decide

theorem i31_parameters : 2 * 20 - 9 = (31 : ℕ) ∧
    windowDegree 31 9 20 = (31 - 10) * 31 ∧ smallPrimeCount 31 = 10 := by decide

theorem i34_parameters : 2 * 22 - 10 = (34 : ℕ) ∧
    windowDegree 34 10 22 = (34 - 11) * 34 ∧ smallPrimeCount 34 = 11 := by decide

theorem actual_i28_below_15360 {n j : ℕ}
    (hij : 28 < j) (hjn : j ≤ n / 2) (hno : ¬ Common n 28 j) : n < (2 : ℕ) ^ 15360 := by
  obtain ⟨hlambda, hdegree, hcount⟩ := i28_parameters
  exact critical_noCommon_below_15360 (r := 8) (s := 18) (t := 9)
    (by decide) (by decide) hij hjn (by decide) hlambda (by decide) hdegree hcount hno

theorem actual_i31_below_15360 {n j : ℕ}
    (hij : 31 < j) (hjn : j ≤ n / 2) (hno : ¬ Common n 31 j) : n < (2 : ℕ) ^ 15360 := by
  obtain ⟨hlambda, hdegree, hcount⟩ := i31_parameters
  exact critical_noCommon_below_15360 (r := 9) (s := 20) (t := 10)
    (by decide) (by decide) hij hjn (by decide) hlambda (by decide) hdegree hcount hno

theorem actual_i34_below_15360 {n j : ℕ}
    (hij : 34 < j) (hjn : j ≤ n / 2) (hno : ¬ Common n 34 j) : n < (2 : ℕ) ^ 15360 := by
  obtain ⟨hlambda, hdegree, hcount⟩ := i34_parameters
  exact critical_noCommon_below_15360 (r := 10) (s := 22) (t := 11)
    (by decide) (by decide) hij hjn (by decide) hlambda (by decide) hdegree hcount hno

end Math.B699.CriticalPadeHeight

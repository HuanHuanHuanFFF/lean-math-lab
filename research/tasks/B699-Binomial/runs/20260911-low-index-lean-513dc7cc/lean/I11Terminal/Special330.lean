import research.tasks.«B699-Binomial».runs.«20260909-large-prime-structure-cb4764f0».lean.GapBridge

/-! The two original terminal-certificate intervals for n=330. -/
set_option autoImplicit false
set_option relaxedAutoImplicit false

namespace B699LowIndex.I11Terminal330
open B699LargePrimeStructure

theorem common_330_first (j : ℕ) (hlo : 12 ≤ j) (hhi : j ≤ 162) :
    Common 330 11 j := by
  apply common_of_mod_certificate (p := 163) (ei := 1) (ej := 1)
    (by decide +kernel) (by decide) (by decide) (by omega) (by decide) (by decide)
    (by decide)
  change 4 < j % 163
  rw [Nat.mod_eq_of_lt (by omega : j < 163)]
  omega

theorem common_330_second (j : ℕ) (hlo : 163 ≤ j) (hhi : j ≤ 165) :
    Common 330 11 j := by
  apply common_of_mod_certificate (p := 109) (ei := 1) (ej := 1)
    (by decide +kernel) (by decide) (by decide) (by omega) (by decide) (by decide)
    (by decide)
  change 3 < j % 109
  rw [Nat.mod_eq_sub_mod (by omega : 109 ≤ j),
    Nat.mod_eq_of_lt (by omega : j - 109 < 109)]
  omega

/-- All 154 legal j are covered, with the original inclusive prime threshold. -/
theorem common_330 (j : ℕ) (hij : 11 < j) (hjn : j ≤ 330 / 2) :
    Common 330 11 j := by
  by_cases h : j ≤ 162
  · exact common_330_first j (by omega) h
  · exact common_330_second j (by omega) (by omega)

end B699LowIndex.I11Terminal330
#print axioms B699LowIndex.I11Terminal330.common_330_first
#print axioms B699LowIndex.I11Terminal330.common_330_second
#print axioms B699LowIndex.I11Terminal330.common_330
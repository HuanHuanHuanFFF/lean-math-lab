import research.tasks.«B686-Four».runs.«20260908-reflected-sum-9bad0b9».main.PrimeSynchronization

/-! Exact diagnostic examples. None is a solution of the multiplier-4 problem. -/

namespace B686Round9

def pseudoN : ℕ := 38125442235888000000000000000002519
def pseudoM : ℕ := 50306822631999612842144666925250079

theorem pseudo_separated : pseudoN + 5 ≤ pseudoM := by decide

theorem pseudo_not_solution : 4 * blockProduct 5 pseudoN < blockProduct 5 pseudoM := by
  decide

theorem pseudo_relative_error :
    10^10 * (blockProduct 5 pseudoM - 4 * blockProduct 5 pseudoN) <
      4 * blockProduct 5 pseudoN := by decide

/-- This includes exact valuations and unit precision, not merely a zero
congruence caused by both products having very large valuations. -/
theorem pseudo_two_adic :
    2^6 ∣ blockProduct 5 pseudoN ∧ ¬ 2^7 ∣ blockProduct 5 pseudoN ∧
    2^8 ∣ blockProduct 5 pseudoM ∧ ¬ 2^9 ∣ blockProduct 5 pseudoM ∧
    2^16 ∣ (blockProduct 5 pseudoM - 4 * blockProduct 5 pseudoN) ∧
      ¬ 2^17 ∣ (blockProduct 5 pseudoM - 4 * blockProduct 5 pseudoN) := by decide

theorem pseudo_three_adic :
    3^3 ∣ blockProduct 5 pseudoN ∧ ¬ 3^4 ∣ blockProduct 5 pseudoN ∧
    3^3 ∣ blockProduct 5 pseudoM ∧ ¬ 3^4 ∣ blockProduct 5 pseudoM ∧
    3^12 ∣ (blockProduct 5 pseudoM - 4 * blockProduct 5 pseudoN) ∧
      ¬ 3^13 ∣ (blockProduct 5 pseudoM - 4 * blockProduct 5 pseudoN) := by decide

theorem pseudo_five_adic :
    5 ∣ blockProduct 5 pseudoN ∧ ¬ 5^2 ∣ blockProduct 5 pseudoN ∧
    5 ∣ blockProduct 5 pseudoM ∧ ¬ 5^2 ∣ blockProduct 5 pseudoM ∧
    5^9 ∣ (blockProduct 5 pseudoM - 4 * blockProduct 5 pseudoN) ∧
      ¬ 5^10 ∣ (blockProduct 5 pseudoM - 4 * blockProduct 5 pseudoN) := by decide

theorem pseudo_seven_adic :
    7 ∣ blockProduct 5 pseudoN ∧ ¬ 7^2 ∣ blockProduct 5 pseudoN ∧
    7 ∣ blockProduct 5 pseudoM ∧ ¬ 7^2 ∣ blockProduct 5 pseudoM ∧
    7^9 ∣ (blockProduct 5 pseudoM - 4 * blockProduct 5 pseudoN) ∧
      ¬ 7^10 ∣ (blockProduct 5 pseudoM - 4 * blockProduct 5 pseudoN) := by decide

/-- A legal multiplier-2 comparison already has a four-cycle of odd-prime
transport: rows 84=4*3*7, 85=5*17 and columns 119=7*17, 120=8*3*5. -/
theorem multiplier_two_cycle :
    83+2 ≤ 118 ∧ blockProduct 2 118 = 2 * blockProduct 2 83 ∧
    84 = 4*3*7 ∧ 85 = 5*17 ∧ 119 = 7*17 ∧ 120 = 8*3*5 := by decide

/-- info: 'B686Round9.pseudo_separated' does not depend on any axioms -/
#guard_msgs in
#print axioms pseudo_separated
/-- info: 'B686Round9.pseudo_not_solution' depends on axioms: [propext, Classical.choice, Quot.sound] -/
#guard_msgs in
#print axioms pseudo_not_solution
/-- info: 'B686Round9.pseudo_relative_error' depends on axioms: [propext, Classical.choice, Quot.sound] -/
#guard_msgs in
#print axioms pseudo_relative_error
/-- info: 'B686Round9.pseudo_two_adic' depends on axioms: [propext, Classical.choice, Quot.sound] -/
#guard_msgs in
#print axioms pseudo_two_adic
/-- info: 'B686Round9.pseudo_three_adic' depends on axioms: [propext, Classical.choice, Quot.sound] -/
#guard_msgs in
#print axioms pseudo_three_adic
/-- info: 'B686Round9.pseudo_five_adic' depends on axioms: [propext, Classical.choice, Quot.sound] -/
#guard_msgs in
#print axioms pseudo_five_adic
/-- info: 'B686Round9.pseudo_seven_adic' depends on axioms: [propext, Classical.choice, Quot.sound] -/
#guard_msgs in
#print axioms pseudo_seven_adic
/-- info: 'B686Round9.multiplier_two_cycle' depends on axioms: [propext, Classical.choice, Quot.sound] -/
#guard_msgs in
#print axioms multiplier_two_cycle

end B686Round9

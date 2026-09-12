import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11EOne.Caps

/-! Stable public interface, backed by staged exact coefficient and rational proofs. -/
set_option autoImplicit false
set_option relaxedAutoImplicit false
namespace Math.B699.I11InitialCapComputation.ThreeTwo
open Math.B699.PadeGrowthNormalization

theorem actual_e_delta0 :
    actualE 23 15 0 1 (1 / 9) = (13515592997264 : ℚ) / 1594323 :=
  Math.B699.I11EOne.actual_e_delta0

theorem e_cap_delta0 :
    2 * |actualE 23 15 0 1 (1 / 9)| ≤ Math.B699.I11ThreeTwoScaled.eBase :=
  Math.B699.I11EOne.e_cap_delta0

theorem actual_e_delta1 :
    actualE 23 15 1 1 (1 / 9) = (117258057456010 : ℚ) / 4782969 :=
  Math.B699.I11EOne.actual_e_delta1

theorem e_cap_delta1 :
    2 * |actualE 23 15 1 1 (1 / 9)| ≤ Math.B699.I11ThreeTwoScaled.eBase :=
  Math.B699.I11EOne.e_cap_delta1

theorem fixed_initial_e_cap (row : Bool) :
    2 * |actualE 23 15 (Math.B699.I11ThreeTwoScaled.rowDelta row) 1 (1 / 9)| ≤
      Math.B699.I11ThreeTwoScaled.eBase :=
  Math.B699.I11EOne.fixed_initial_e_cap row

end Math.B699.I11InitialCapComputation.ThreeTwo

#print axioms Math.B699.I11InitialCapComputation.ThreeTwo.actual_e_delta0
#print axioms Math.B699.I11InitialCapComputation.ThreeTwo.e_cap_delta0
#print axioms Math.B699.I11InitialCapComputation.ThreeTwo.actual_e_delta1
#print axioms Math.B699.I11InitialCapComputation.ThreeTwo.e_cap_delta1
#print axioms Math.B699.I11InitialCapComputation.ThreeTwo.fixed_initial_e_cap

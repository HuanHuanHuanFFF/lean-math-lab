import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11InitialCapComputation.ThreeTwo

open Math.B699.PadeGrowthNormalization

#check (Math.B699.I11InitialCapComputation.ThreeTwo.actual_e_delta0 : actualE 23 15 0 1 (1 / 9) = (13515592997264 : ℚ) / 1594323)
#print axioms Math.B699.I11InitialCapComputation.ThreeTwo.actual_e_delta0

#check (Math.B699.I11InitialCapComputation.ThreeTwo.e_cap_delta0 : 2 * |actualE 23 15 0 1 (1 / 9)| ≤ Math.B699.I11ThreeTwoScaled.eBase)
#print axioms Math.B699.I11InitialCapComputation.ThreeTwo.e_cap_delta0

#check (Math.B699.I11InitialCapComputation.ThreeTwo.actual_e_delta1 : actualE 23 15 1 1 (1 / 9) = (117258057456010 : ℚ) / 4782969)
#print axioms Math.B699.I11InitialCapComputation.ThreeTwo.actual_e_delta1

#check (Math.B699.I11InitialCapComputation.ThreeTwo.e_cap_delta1 : 2 * |actualE 23 15 1 1 (1 / 9)| ≤ Math.B699.I11ThreeTwoScaled.eBase)
#print axioms Math.B699.I11InitialCapComputation.ThreeTwo.e_cap_delta1

#check (Math.B699.I11InitialCapComputation.ThreeTwo.fixed_initial_e_cap : ∀ row : Bool,
  2 * |actualE 23 15 (Math.B699.I11ThreeTwoScaled.rowDelta row) 1 (1 / 9)| ≤ Math.B699.I11ThreeTwoScaled.eBase)
#print axioms Math.B699.I11InitialCapComputation.ThreeTwo.fixed_initial_e_cap

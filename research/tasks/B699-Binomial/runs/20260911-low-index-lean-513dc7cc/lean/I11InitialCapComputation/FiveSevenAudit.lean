import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11InitialCapComputation.FiveSeven

open Math.B699.PadeGrowthNormalization

#check (Math.B699.I11InitialCapComputation.FiveSeven.actual_e_delta0 : actualE 11 7 0 1 (1 / 50) = (2474307 : ℚ) / 3125)
#print axioms Math.B699.I11InitialCapComputation.FiveSeven.actual_e_delta0

#check (Math.B699.I11InitialCapComputation.FiveSeven.e_cap_delta0 : 2 * |actualE 11 7 0 1 (1 / 50)| ≤ Math.B699.I11FiveSevenScaled.eBase)
#print axioms Math.B699.I11InitialCapComputation.FiveSeven.e_cap_delta0

#check (Math.B699.I11InitialCapComputation.FiveSeven.actual_e_delta1 : actualE 11 7 1 1 (1 / 50) = (1428944881 : ℚ) / 625000)
#print axioms Math.B699.I11InitialCapComputation.FiveSeven.actual_e_delta1

#check (Math.B699.I11InitialCapComputation.FiveSeven.e_cap_delta1 : 2 * |actualE 11 7 1 1 (1 / 50)| ≤ Math.B699.I11FiveSevenScaled.eBase)
#print axioms Math.B699.I11InitialCapComputation.FiveSeven.e_cap_delta1

#check (Math.B699.I11InitialCapComputation.FiveSeven.fixed_initial_e_cap : ∀ row : Bool,
  2 * |actualE 11 7 (Math.B699.I11FiveSevenScaled.rowDelta row) 1 (1 / 50)| ≤ Math.B699.I11FiveSevenScaled.eBase)
#print axioms Math.B699.I11InitialCapComputation.FiveSeven.fixed_initial_e_cap

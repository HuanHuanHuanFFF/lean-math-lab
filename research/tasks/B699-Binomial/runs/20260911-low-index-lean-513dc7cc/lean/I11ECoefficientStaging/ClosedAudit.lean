import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11ECoefficientStaging.ClosedEval

#check @Math.B699.I11ECoefficientStaging.closed_e_delta0
#print axioms Math.B699.I11ECoefficientStaging.closed_e_delta0

#check (Math.B699.I11ECoefficientStaging.closed_e_delta0 :
  (Math.B699.PadeConstruction.coefficientPolynomial 7
    (Math.B699.I11InitialCapComputation.fastECoefficient 15 7 15)).eval₂
      (Int.castRingHom ℚ) (1 / 9) = (13515592997264 : ℚ) / 1594323)

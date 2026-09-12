import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11InitialCapRevision.ClosedEval


open Math.B699.PadeConstruction Math.B699.I11InitialCapComputation

#check (Math.B699.I11InitialCapRevision.closed_e_delta0 :
  (coefficientPolynomial 7 (fastECoefficient 15 7 15)).eval₂
    (Int.castRingHom ℚ) (1 / 9) = (13515592997264 : ℚ) / 1594323)
#print axioms Math.B699.I11InitialCapRevision.closed_e_delta0

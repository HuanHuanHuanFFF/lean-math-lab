import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11InitialCapComputation.ChooseFast


open Math.B699.PadeConstruction Math.B699.PadeGrowthNormalization
open Math.B699.I11InitialCapComputation

#check (chooseFast : ℕ → ℕ → ℕ)
#check (choose_eq_fast : ∀ n k : ℕ, Nat.choose n k = chooseFast n k)
#check (fastECoefficient : ℕ → ℕ → ℕ → ℕ → ℤ)
#check (eCoefficient_eq_fast : ∀ A B C : ℕ,
  eCoefficient A B C = fastECoefficient A B C)
#check (actualE_eq_fast : ∀ c d delta m : ℕ, ∀ z : ℚ,
  actualE c d delta m z =
    (coefficientPolynomial ((c - d) * m + delta - 1)
      (fastECoefficient (d * m - delta) ((c - d) * m + delta - 1)
        (d * m - delta))).eval₂ (Int.castRingHom ℚ) z)

#print axioms Math.B699.I11InitialCapComputation.chooseFast
#print axioms Math.B699.I11InitialCapComputation.choose_eq_fast
#print axioms Math.B699.I11InitialCapComputation.fastECoefficient
#print axioms Math.B699.I11InitialCapComputation.eCoefficient_eq_fast
#print axioms Math.B699.I11InitialCapComputation.actualE_eq_fast

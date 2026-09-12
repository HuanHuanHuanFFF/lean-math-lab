import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11InitialCapComputation.ThreeTwo
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11InitialCapComputation.FiveSeven


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

import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Growth.Normalization
import Mathlib.Tactic.NormNum.NatFactorial

/-! UNCOMPILED CANDIDATE. Replace the whole coefficient function before
concrete finite-sum evaluation. The actual Nat binomial values are unchanged,
including the k>n zero branch. No original cap theorem is imported. -/
set_option autoImplicit false
set_option relaxedAutoImplicit false
namespace Math.B699.I11InitialCapComputation
open Math.B699.PadeConstruction Math.B699.PadeGrowthNormalization

def chooseFast (n k : ℕ) : ℕ :=
  if k ≤ n then n.factorial / (k.factorial * (n - k).factorial) else 0

theorem choose_eq_fast (n k : ℕ) : Nat.choose n k = chooseFast n k := by
  by_cases hk : k ≤ n
  · simpa only [chooseFast, if_pos hk] using
      (Nat.choose_eq_factorial_div_factorial hk)
  · simp only [chooseFast, if_neg hk]
    exact Nat.choose_eq_zero_of_lt (Nat.lt_of_not_ge hk)

def fastECoefficient (A B C r : ℕ) : ℤ :=
  (-1 : ℤ) ^ r * (chooseFast (A + r) r : ℤ) *
    (chooseFast (A + B + C + 1) (A + C + r + 1) : ℤ)

theorem eCoefficient_eq_fast (A B C : ℕ) :
    eCoefficient A B C = fastECoefficient A B C := by
  funext r
  simp only [eCoefficient, fastECoefficient, choose_eq_fast]

theorem actualE_eq_fast (c d delta m : ℕ) (z : ℚ) :
    actualE c d delta m z =
      (coefficientPolynomial ((c - d) * m + delta - 1)
        (fastECoefficient (d * m - delta) ((c - d) * m + delta - 1)
          (d * m - delta))).eval₂ (Int.castRingHom ℚ) z := by
  simp only [actualE, ePolynomial, eCoefficient_eq_fast]

end Math.B699.I11InitialCapComputation

#print axioms Math.B699.I11InitialCapComputation.chooseFast
#print axioms Math.B699.I11InitialCapComputation.choose_eq_fast
#print axioms Math.B699.I11InitialCapComputation.fastECoefficient
#print axioms Math.B699.I11InitialCapComputation.eCoefficient_eq_fast
#print axioms Math.B699.I11InitialCapComputation.actualE_eq_fast

import research.tasks.«B686-Four».runs.«20260908-formalization-92c221».lean.quarter.PairProduct

/-! The actual polynomial part in the squared coordinate.  The degree bound on
its squared error permits the analytic remainder estimate without a convergence
theorem for the formal series. -/

namespace B686QuarterRunge

open Finset Polynomial B686CenteredRunge

noncomputable section

def quarterPolynomial (s : ℕ) : ℤ[X] :=
  reflect s (PowerSeries.trunc (s + 1) (pairedSquareRoot s))

def squaredCoordinateRadicand (s : ℕ) : ℤ[X] :=
  ∏ i ∈ range (2 * s), (X - C (oddRoots i ^ 2))

def squaredError (s : ℕ) : ℤ[X] :=
  quarterPolynomial s ^ 2 - squaredCoordinateRadicand s

theorem quarterPolynomial_expand (s : ℕ) :
    expand ℤ 2 (quarterPolynomial s) = quarterRootPolynomial s := by
  exact (reflect_expand_two _ s).symm

theorem squaredCoordinateRadicand_expand (s : ℕ) :
    expand ℤ 2 (squaredCoordinateRadicand s) = radicand oddRoots (2 * s) := by
  simp [squaredCoordinateRadicand, radicand]

theorem quarterPolynomial_degree (s : ℕ) :
    (quarterPolynomial s).natDegree = s := by
  have h := quarterRootPolynomial_degree s
  rw [← quarterPolynomial_expand, natDegree_expand] at h
  omega

theorem quarterPolynomial_monic (s : ℕ) :
    (quarterPolynomial s).Monic := by
  rw [Monic, leadingCoeff, quarterPolynomial_degree]
  simp [quarterPolynomial, coeff_reflect, revAt_le le_rfl, PowerSeries.coeff_trunc]

theorem centered_error_eq (s : ℕ) :
    errorPolynomial oddRoots (2 * s) =
      C (2 ^ (4 * s)) * expand ℤ 2 (squaredError s) := by
  rw [errorPolynomial, centered_rootPolynomial_eq, ← quarterPolynomial_expand]
  simp only [squaredError, map_sub, map_pow, squaredCoordinateRadicand_expand]
  rw [mul_pow]
  rw [← pow_mul, show (2 * s) * 2 = 4 * s by omega,
    show 2 * (2 * s) = 4 * s by omega]
  ring

theorem squaredError_degree (s : ℕ) (hs : 1 ≤ s) :
    (squaredError s).natDegree < s := by
  have h := errorPolynomial_degree oddRoots (2 * s) (by omega)
  rw [centered_error_eq, natDegree_C_mul (by positivity : (2 : ℤ) ^ (4 * s) ≠ 0),
    natDegree_expand] at h
  omega

theorem squaredError_ne_zero (s : ℕ) (hs : 1 ≤ s) :
    squaredError s ≠ 0 := by
  intro hzero
  have h := errorPolynomial_odd_ne_zero (2 * s) (by omega)
  rw [centered_error_eq, hzero, map_zero, mul_zero] at h
  exact h rfl

end

end B686QuarterRunge

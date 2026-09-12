import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.PadeInteger
import Mathlib.Algebra.Polynomial.Coeff

/-!
# Exact adjacent-row constants and the polynomial elimination mechanism

The upper row is (t+1,v,t+1); the lower row is (t,v+1,t), for arbitrary
natural t,v. Thus the paper's u=t+1 is automatically at least one. The
source Lemma 3.2 orders the lower row first, so its determinant sign reverses.

The exact constant, its nonvanishing, the actual determinant degree bound,
and the generic algebraic elimination are implemented below. This file does
NOT prove that the actual coefficient polynomials satisfy the two Padé
remainder identities. The generic elimination theorem exposes those inputs
explicitly and must not be reported as an unconditional BFT determinant.
No Padé-validity type, height hypothesis, or new axiom is introduced.
-/

namespace Math.B699.PadeAdjacent

open Polynomial
open Math.B699.PadeConstruction

/-- Signed coefficient for the upper-first order, with u=t+1. -/
def adjacentConstant (t v : ℕ) : ℤ :=
  (-1 : ℤ) ^ (t + 2) * ((2 * t + v + 2).choose (2 * t + 1) : ℤ) *
    ((2 * t + 2).choose (t + 1) : ℤ)

noncomputable def adjacentPolynomial (t v : ℕ) : ℤ[X] :=
  pPolynomial (t + 1) v (t + 1) * qPolynomial t (v + 1) t -
    pPolynomial t (v + 1) t * qPolynomial (t + 1) v (t + 1)

/-- Source factor `-E_lower(0)*Q_upper(0)`, for the actual integer arrays. -/
theorem adjacentConstant_eq_source_coefficients (t v : ℕ) :
    adjacentConstant t v =
      -(ePolynomial t (v + 1) t).coeff 0 * (qPolynomial (t + 1) v (t + 1)).coeff 0 := by
  rw [ePolynomial_coeff_zero, qPolynomial_coeff_zero]
  have hN : t + (v + 1) + t + 1 = 2 * t + v + 2 := by omega
  have hlow : t + t + 1 = 2 * t + 1 := by omega
  have hhigh : t + 1 + (t + 1) = 2 * t + 2 := by omega
  rw [hN, hlow, hhigh]
  unfold adjacentConstant
  rw [show t + 2 = (t + 1) + 1 by omega, pow_succ]
  ring

theorem adjacentConstant_ne_zero (t v : ℕ) : adjacentConstant t v ≠ 0 := by
  have hleft : (2 * t + v + 2).choose (2 * t + 1) ≠ 0 :=
    Nat.ne_of_gt (Nat.choose_pos (show 2 * t + 1 ≤ 2 * t + v + 2 by omega))
  have hright : (2 * t + 2).choose (t + 1) ≠ 0 :=
    Nat.ne_of_gt (Nat.choose_pos (show t + 1 ≤ 2 * t + 2 by omega))
  exact mul_ne_zero
    (mul_ne_zero (pow_ne_zero _ (by norm_num)) (Nat.cast_ne_zero.mpr hleft))
    (Nat.cast_ne_zero.mpr hright)

theorem adjacentConstant_mul_power_ne_zero (t v : ℕ) {x : ℤ} (hx : x ≠ 0) :
    adjacentConstant t v * x ^ (2 * t + 1) ≠ 0 :=
  mul_ne_zero (adjacentConstant_ne_zero t v) (pow_ne_zero _ hx)

/-- This is an actual degree bound, independent of any approximation identity. -/
theorem adjacentPolynomial_natDegree_le (t v : ℕ) :
    (adjacentPolynomial t v).natDegree ≤ 2 * t + 1 := by
  have hp0 : (pPolynomial (t + 1) v (t + 1)).natDegree ≤ t + 1 :=
    coefficientPolynomial_natDegree_le _ _
  have hq0 : (qPolynomial (t + 1) v (t + 1)).natDegree ≤ t + 1 :=
    coefficientPolynomial_natDegree_le _ _
  have hp1 : (pPolynomial t (v + 1) t).natDegree ≤ t :=
    coefficientPolynomial_natDegree_le _ _
  have hq1 : (qPolynomial t (v + 1) t).natDegree ≤ t :=
    coefficientPolynomial_natDegree_le _ _
  unfold adjacentPolynomial
  apply (Polynomial.natDegree_sub_le _ _).trans
  apply max_le
  · exact Polynomial.natDegree_mul_le.trans (by omega)
  · exact Polynomial.natDegree_mul_le.trans (by omega)

/-- z=0 is genuinely excluded from the eventual nonvanishing result. -/
theorem adjacentPolynomial_coeff_zero (t v : ℕ) :
    (adjacentPolynomial t v).coeff 0 = 0 := by
  simp only [adjacentPolynomial, Polynomial.coeff_sub, Polynomial.mul_coeff_zero,
    pPolynomial_coeff_zero, qPolynomial_coeff_zero]
  ring

/-- A general polynomial with degree at most n and no smaller coefficients
is exactly its degree-n monomial. This is an algebraic tool, not a claim that
an actual Padé determinant already has the required vanishing. -/
theorem eq_monomial_of_degree_and_vanishing {p : ℤ[X]} {n : ℕ}
    (hdeg : p.natDegree ≤ n) (hvanish : ∀ k, k < n → p.coeff k = 0) :
    p = Polynomial.monomial n (p.coeff n) := by
  apply Polynomial.ext
  intro k
  by_cases hkn : k = n
  · subst k
    simp
  · rw [Polynomial.coeff_monomial, if_neg hkn.symm]
    by_cases hlt : k < n
    · exact hvanish k hlt
    · exact Polynomial.coeff_eq_zero_of_natDegree_lt (by omega)

/-- The elementary elimination behind Lemma 3.2. Both remainder identities
are explicitly required inputs; they are NOT established here for source P/Q.
For the actual rows, n=2t+1, W=(1-X)^(t+v+2), E0 is the upper E polynomial,
and E1 is the lower E polynomial. -/
theorem determinant_from_two_remainders
    (P0 Q0 P1 Q1 E0 E1 W : ℤ[X]) (n : ℕ)
    (h0 : P0 - W * Q0 = X ^ (n + 2) * E0)
    (h1 : P1 - W * Q1 = X ^ n * E1)
    (hdeg : (P0 * Q1 - P1 * Q0).natDegree ≤ n) :
    P0 * Q1 - P1 * Q0 = Polynomial.monomial n (-(E1.coeff 0) * Q0.coeff 0) := by
  have helim : P0 * Q1 - P1 * Q0 = X ^ n * (X ^ 2 * E0 * Q1 - E1 * Q0) := by
    calc
      P0 * Q1 - P1 * Q0 = (P0 - W * Q0) * Q1 - (P1 - W * Q1) * Q0 := by ring
      _ = X ^ (n + 2) * E0 * Q1 - X ^ n * E1 * Q0 := by rw [h0, h1]
      _ = X ^ n * (X ^ 2 * E0 * Q1 - E1 * Q0) := by rw [pow_add]; ring
  have hvanish : ∀ k, k < n → (P0 * Q1 - P1 * Q0).coeff k = 0 := by
    intro k hk
    rw [helim, Polynomial.coeff_X_pow_mul']
    exact if_neg (Nat.not_le.mpr hk)
  have htop : (P0 * Q1 - P1 * Q0).coeff n = -(E1.coeff 0) * Q0.coeff 0 := by
    rw [helim, Polynomial.coeff_X_pow_mul']
    simp [Polynomial.mul_coeff_zero]
  rw [eq_monomial_of_degree_and_vanishing hdeg hvanish, htop]

/-- Once the actual polynomial monomial equality is proved, evaluation at
nonzero z is nonzero. The concrete equality is an unresolved upstream input,
not a new definition containing the desired conclusion. -/
theorem adjacent_eval_ne_zero_of_polynomial_identity (t v : ℕ) {z : ℝ}
    (hz : z ≠ 0)
    (hpoly : adjacentPolynomial t v = Polynomial.monomial (2 * t + 1) (adjacentConstant t v)) :
    (adjacentPolynomial t v).eval₂ (Int.castRingHom ℝ) z ≠ 0 := by
  rw [hpoly, Polynomial.eval₂_monomial]
  change (adjacentConstant t v : ℝ) * z ^ (2 * t + 1) ≠ 0
  exact mul_ne_zero (Int.cast_ne_zero.mpr (adjacentConstant_ne_zero t v)) (pow_ne_zero _ hz)

example : adjacentConstant 0 0 = 4 := by decide
example : adjacentConstant 1 0 = -24 := by decide

#print axioms Math.B699.PadeAdjacent.adjacentConstant_eq_source_coefficients
#print axioms Math.B699.PadeAdjacent.adjacentConstant_ne_zero
#print axioms Math.B699.PadeAdjacent.adjacentConstant_mul_power_ne_zero
#print axioms Math.B699.PadeAdjacent.adjacentPolynomial_natDegree_le
#print axioms Math.B699.PadeAdjacent.adjacentPolynomial_coeff_zero
#print axioms Math.B699.PadeAdjacent.eq_monomial_of_degree_and_vanishing
#print axioms Math.B699.PadeAdjacent.determinant_from_two_remainders
#print axioms Math.B699.PadeAdjacent.adjacent_eval_ne_zero_of_polynomial_identity

end Math.B699.PadeAdjacent

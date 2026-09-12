import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.C2DirectDivisor.PDivisor
import Mathlib.Algebra.Polynomial.Coeff

/-! UNCOMPILED. Concrete integer quotients, polynomials and homogeneous values. -/
set_option autoImplicit false
set_option relaxedAutoImplicit false
namespace Math.B699.C2Direct
open scoped BigOperators

open Math.B699.PadeConstruction Polynomial

def qQuotient (x y z delta r : ℕ) : ℤ :=
  qCoefficient (x - delta) (z - 1 + delta) (y - delta) r / (c2 x y z : ℤ)
def pQuotient (x y z delta r : ℕ) : ℤ :=
  pCoefficient (x - delta) (z - 1 + delta) (y - delta) r / (c2 x y z : ℤ)
noncomputable def qQuotientPolynomial (x y z delta : ℕ) : ℤ[X] :=
  coefficientPolynomial (x - delta) (qQuotient x y z delta)
noncomputable def pQuotientPolynomial (x y z delta : ℕ) : ℤ[X] :=
  coefficientPolynomial (y - delta) (pQuotient x y z delta)
def qQuotientValue (x y z delta : ℕ) (a b : ℤ) : ℤ :=
  homogeneousValue (x - delta) (qQuotient x y z delta) a b
def pQuotientValue (x y z delta : ℕ) (a b : ℤ) : ℤ :=
  homogeneousValue (y - delta) (pQuotient x y z delta) a b

theorem c2_mul_qQuotient (x y z delta r : ℕ)
    (hx : 1 ≤ x) (hy : 1 ≤ y) (hz : 1 ≤ z)
    (hd : delta = 0 ∨ delta = 1) (hr : r ≤ x - delta) :
    (c2 x y z : ℤ) * qQuotient x y z delta r =
      qCoefficient (x - delta) (z - 1 + delta) (y - delta) r := by
  rw [qQuotient, mul_comm]
  exact Int.ediv_mul_cancel (c2_dvd_qCoefficient x y z delta r hx hy hz hd hr)

theorem c2_mul_pQuotient (x y z delta r : ℕ)
    (hx : 1 ≤ x) (hy : 1 ≤ y) (hz : 1 ≤ z)
    (hd : delta = 0 ∨ delta = 1) (hr : r ≤ y - delta) :
    (c2 x y z : ℤ) * pQuotient x y z delta r =
      pCoefficient (x - delta) (z - 1 + delta) (y - delta) r := by
  rw [pQuotient, mul_comm]
  exact Int.ediv_mul_cancel (c2_dvd_pCoefficient x y z delta r hx hy hz hd hr)

theorem c2_mul_qQuotientPolynomial (x y z delta : ℕ)
    (hx : 1 ≤ x) (hy : 1 ≤ y) (hz : 1 ≤ z)
    (hd : delta = 0 ∨ delta = 1) :
    Polynomial.C (c2 x y z : ℤ) * qQuotientPolynomial x y z delta =
      qPolynomial (x - delta) (z - 1 + delta) (y - delta) := by
  apply Polynomial.ext
  intro r
  simp only [Polynomial.coeff_C_mul, qQuotientPolynomial, qPolynomial, coefficientPolynomial_coeff]
  by_cases hr : r ≤ x - delta
  · simp only [if_pos hr]
    exact c2_mul_qQuotient x y z delta r hx hy hz hd hr
  · simp only [if_neg hr, mul_zero]

theorem c2_mul_pQuotientPolynomial (x y z delta : ℕ)
    (hx : 1 ≤ x) (hy : 1 ≤ y) (hz : 1 ≤ z)
    (hd : delta = 0 ∨ delta = 1) :
    Polynomial.C (c2 x y z : ℤ) * pQuotientPolynomial x y z delta =
      pPolynomial (x - delta) (z - 1 + delta) (y - delta) := by
  apply Polynomial.ext
  intro r
  simp only [Polynomial.coeff_C_mul, pQuotientPolynomial, pPolynomial, coefficientPolynomial_coeff]
  by_cases hr : r ≤ y - delta
  · simp only [if_pos hr]
    exact c2_mul_pQuotient x y z delta r hx hy hz hd hr
  · simp only [if_neg hr, mul_zero]

theorem c2_mul_qQuotientValue (x y z delta : ℕ) (a b : ℤ)
    (hx : 1 ≤ x) (hy : 1 ≤ y) (hz : 1 ≤ z)
    (hd : delta = 0 ∨ delta = 1) :
    (c2 x y z : ℤ) * qQuotientValue x y z delta a b =
      homogeneousValue (x - delta)
        (qCoefficient (x - delta) (z - 1 + delta) (y - delta)) a b := by
  simp only [qQuotientValue, homogeneousValue, Finset.mul_sum]
  apply Finset.sum_congr rfl
  intro r hr
  have h := c2_mul_qQuotient x y z delta r hx hy hz hd
    (Nat.lt_succ_iff.mp (Finset.mem_range.mp hr))
  rw [← mul_assoc, ← mul_assoc, h]

theorem c2_mul_pQuotientValue (x y z delta : ℕ) (a b : ℤ)
    (hx : 1 ≤ x) (hy : 1 ≤ y) (hz : 1 ≤ z)
    (hd : delta = 0 ∨ delta = 1) :
    (c2 x y z : ℤ) * pQuotientValue x y z delta a b =
      homogeneousValue (y - delta)
        (pCoefficient (x - delta) (z - 1 + delta) (y - delta)) a b := by
  simp only [pQuotientValue, homogeneousValue, Finset.mul_sum]
  apply Finset.sum_congr rfl
  intro r hr
  have h := c2_mul_pQuotient x y z delta r hx hy hz hd
    (Nat.lt_succ_iff.mp (Finset.mem_range.mp hr))
  rw [← mul_assoc, ← mul_assoc, h]
end Math.B699.C2Direct

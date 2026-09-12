import Mathlib.Algebra.GCDMonoid.Finset
import Mathlib.Algebra.Polynomial.BigOperators
import Mathlib.Algebra.Polynomial.Eval.Defs
import Mathlib.Data.Nat.Choose.Basic
import Mathlib.Data.Real.Basic
import Mathlib.Tactic.FieldSimp
import Mathlib.Tactic.NormNum
import Mathlib.Tactic.Ring

/-!
# Actual integer Padé coefficient arrays and homogeneous values

Source: BFT, February 26, 2007 author manuscript, Lemma 3.1, printed page 9;
source integrals are (3.1)--(3.3). The signed P coefficient below agrees with
the source integral and the previously adopted asymmetric Padé report 4.1.
The fixed PDF's extracted P sum is missing this parity factor; no visual
confirmation of its typesetting is claimed by this file.

All arrays and the content are computed from natural binomial coefficients.
No Padé identity, height validity, or content lower bound is an axiom/input.
This file alone does not identify these polynomials with the integrals.
Candidate only until exact-source compilation and axiom auditing.
-/

namespace Math.B699.PadeConstruction

open scoped BigOperators
open Polynomial

/-- A bounded list of explicit integer coefficients made into a polynomial. -/
def coefficientPolynomial (n : ℕ) (a : ℕ → ℤ) : ℤ[X] :=
  ∑ r ∈ Finset.range (n + 1), Polynomial.monomial r (a r)

theorem coefficientPolynomial_coeff (n r : ℕ) (a : ℕ → ℤ) :
    (coefficientPolynomial n a).coeff r = if r ≤ n then a r else 0 := by
  classical
  simp [coefficientPolynomial, Polynomial.finsetSum_coeff, Polynomial.coeff_monomial,
    Finset.sum_ite_eq', Nat.lt_succ_iff]

theorem coefficientPolynomial_natDegree_le (n : ℕ) (a : ℕ → ℤ) :
    (coefficientPolynomial n a).natDegree ≤ n := by
  classical
  apply Polynomial.natDegree_sum_le_of_forall_le
  intro r hr
  exact (Polynomial.natDegree_monomial_le (a r)).trans
    (Nat.lt_succ_iff.mp (Finset.mem_range.mp hr))

def pCoefficient (A B C r : ℕ) : ℤ :=
  (-1 : ℤ) ^ (C + r) * ((A + B + C + 1).choose r : ℤ) *
    ((A + C - r).choose A : ℤ)

def qMagnitude (A B C r : ℕ) : ℕ :=
  (A + C - r).choose C * (B + r).choose r

def qCoefficient (A B C r : ℕ) : ℤ :=
  (-1 : ℤ) ^ C * (qMagnitude A B C r : ℤ)

def eCoefficient (A B C r : ℕ) : ℤ :=
  (-1 : ℤ) ^ r * ((A + r).choose r : ℤ) *
    ((A + B + C + 1).choose (A + C + r + 1) : ℤ)

def pPolynomial (A B C : ℕ) : ℤ[X] :=
  coefficientPolynomial C (pCoefficient A B C)

def qPolynomial (A B C : ℕ) : ℤ[X] :=
  coefficientPolynomial A (qCoefficient A B C)

def ePolynomial (A B C : ℕ) : ℤ[X] :=
  coefficientPolynomial B (eCoefficient A B C)

/-- The exact source gcd, before the diagonal specialization. -/
def qContent (A B C : ℕ) : ℕ :=
  (Finset.range (A + 1)).gcd (qMagnitude A B C)

@[simp] theorem pPolynomial_coeff_zero (A B C : ℕ) :
    (pPolynomial A B C).coeff 0 = (-1 : ℤ) ^ C * ((A + C).choose A : ℤ) := by
  simp [pPolynomial, coefficientPolynomial_coeff, pCoefficient]

@[simp] theorem qPolynomial_coeff_zero (A B C : ℕ) :
    (qPolynomial A B C).coeff 0 = (-1 : ℤ) ^ C * ((A + C).choose C : ℤ) := by
  simp [qPolynomial, coefficientPolynomial_coeff, qCoefficient, qMagnitude]

@[simp] theorem ePolynomial_coeff_zero (A B C : ℕ) :
    (ePolynomial A B C).coeff 0 =
      ((A + B + C + 1).choose (A + C + 1) : ℤ) := by
  simp [ePolynomial, coefficientPolynomial_coeff, eCoefficient]

theorem qContent_dvd_qMagnitude (A B C r : ℕ) (hr : r ≤ A) :
    qContent A B C ∣ qMagnitude A B C r := by
  exact Finset.gcd_dvd (Finset.mem_range.mpr (Nat.lt_succ_iff.mpr hr))

theorem qContent_dvd_qCoefficient (A B C r : ℕ) (hr : r ≤ A) :
    (qContent A B C : ℤ) ∣ qCoefficient A B C r := by
  obtain ⟨k, hk⟩ := qContent_dvd_qMagnitude A B C r hr
  refine ⟨(-1 : ℤ) ^ C * (k : ℤ), ?_⟩
  simp only [qCoefficient, hk, Nat.cast_mul]
  ring

theorem qContent_pos (A B C : ℕ) : 0 < qContent A B C := by
  have hd := qContent_dvd_qMagnitude A B C 0 (Nat.zero_le A)
  have hp : 0 < qMagnitude A B C 0 := by
    simpa [qMagnitude] using (Nat.choose_pos (show C ≤ A + C by omega))
  apply Nat.pos_of_ne_zero
  intro hz
  rw [hz] at hd
  have hzero : qMagnitude A B C 0 = 0 := Nat.zero_dvd.mp hd
  omega

/-- Natural BFT parameters: u = d*m-delta and B = c*m-u-1.
No integer division occurs in the constructed values. -/
def bftContent (c d m delta : ℕ) : ℕ :=
  qContent (d * m - delta) (c * m - (d * m - delta) - 1) (d * m - delta)

/-- Integer homogeneous evaluation, valid even when the second input is zero. -/
def homogeneousValue (n : ℕ) (a : ℕ → ℤ) (x y : ℤ) : ℤ :=
  ∑ r ∈ Finset.range (n + 1), a r * x ^ r * y ^ (n - r)

/-- Identifies the constructed integer with the denominator-cleared real
polynomial value, for every nonzero denominator. -/
theorem homogeneousValue_cast_eq (n : ℕ) (a : ℕ → ℤ) (x y : ℤ) (hy : y ≠ 0) :
    (homogeneousValue n a x y : ℝ) =
      (y : ℝ) ^ n * (coefficientPolynomial n a).eval₂ (Int.castRingHom ℝ)
        ((x : ℝ) / (y : ℝ)) := by
  classical
  have hyr : (y : ℝ) ≠ 0 := Int.cast_ne_zero.mpr hy
  simp only [homogeneousValue, coefficientPolynomial, Int.cast_sum, Int.cast_mul,
    Int.cast_pow, Polynomial.eval₂_finsetSum, Polynomial.eval₂_monomial,
    Finset.mul_sum]
  apply Finset.sum_congr rfl
  intro r hr
  have hle : r ≤ n := Nat.lt_succ_iff.mp (Finset.mem_range.mp hr)
  have hpow : (y : ℝ) ^ n = (y : ℝ) ^ (n - r) * (y : ℝ) ^ r := by
    rw [← pow_add, Nat.sub_add_cancel hle]
  change (a r : ℝ) * (x : ℝ) ^ r * (y : ℝ) ^ (n - r) =
    (y : ℝ) ^ n * ((a r : ℝ) * ((x : ℝ) / (y : ℝ)) ^ r)
  rw [hpow, div_pow]
  field_simp
  <;> ring

/-- Explicit gcd-normalized Q coefficients, not an existential integrality input. -/
def qNormalizedCoefficient (A B C r : ℕ) : ℤ :=
  qCoefficient A B C r / (qContent A B C : ℤ)

def qNormalizedValue (A B C : ℕ) (x y : ℤ) : ℤ :=
  homogeneousValue A (qNormalizedCoefficient A B C) x y

theorem qContent_mul_normalizedCoefficient (A B C r : ℕ) (hr : r ≤ A) :
    (qContent A B C : ℤ) * qNormalizedCoefficient A B C r = qCoefficient A B C r := by
  rw [qNormalizedCoefficient, mul_comm]
  exact Int.ediv_mul_cancel (qContent_dvd_qCoefficient A B C r hr)

theorem qContent_mul_normalizedValue (A B C : ℕ) (x y : ℤ) :
    (qContent A B C : ℤ) * qNormalizedValue A B C x y =
      homogeneousValue A (qCoefficient A B C) x y := by
  classical
  simp only [qNormalizedValue, homogeneousValue, Finset.mul_sum]
  apply Finset.sum_congr rfl
  intro r hr
  rw [← mul_assoc, ← mul_assoc, qContent_mul_normalizedCoefficient A B C r
    (Nat.lt_succ_iff.mp (Finset.mem_range.mp hr))]

/-- The Q value required by BFT Section 7 is now an actual integer; its
relation to the binomial coefficient polynomial is unconditional. -/
theorem qNormalizedValue_cast_eq (A B C : ℕ) (x y : ℤ) (hy : y ≠ 0) :
    (qNormalizedValue A B C x y : ℝ) =
      (y : ℝ) ^ A / (qContent A B C : ℝ) *
        (qPolynomial A B C).eval₂ (Int.castRingHom ℝ) ((x : ℝ) / (y : ℝ)) := by
  have hg : (qContent A B C : ℝ) ≠ 0 :=
    Nat.cast_ne_zero.mpr (Nat.ne_of_gt (qContent_pos A B C))
  have hmul := congrArg (fun k : ℤ => (k : ℝ)) (qContent_mul_normalizedValue A B C x y)
  simp only [Int.cast_mul, Int.cast_natCast] at hmul
  rw [homogeneousValue_cast_eq A (qCoefficient A B C) x y hy] at hmul
  dsimp [qPolynomial]
  apply (mul_left_cancel₀ hg)
  calc
    (qContent A B C : ℝ) * (qNormalizedValue A B C x y : ℝ) =
      (y : ℝ) ^ A * (coefficientPolynomial A (qCoefficient A B C)).eval₂
        (Int.castRingHom ℝ) ((x : ℝ) / (y : ℝ)) := hmul
    _ = (qContent A B C : ℝ) * ((y : ℝ) ^ A / (qContent A B C : ℝ) *
        (coefficientPolynomial A (qCoefficient A B C)).eval₂
          (Int.castRingHom ℝ) ((x : ℝ) / (y : ℝ))) := by
      field_simp
      <;> ring

-- Positive source parameters and odd parity: the original integral has P(0)=-2.
example : pCoefficient 1 1 1 0 = -2 := by decide
example : qCoefficient 1 1 1 0 = -2 := by decide
example : eCoefficient 1 1 1 0 = 4 := by decide
example : qContent 1 1 1 = 2 := by decide

#print axioms Math.B699.PadeConstruction.coefficientPolynomial_coeff
#print axioms Math.B699.PadeConstruction.coefficientPolynomial_natDegree_le
#print axioms Math.B699.PadeConstruction.qContent_pos
#print axioms Math.B699.PadeConstruction.qContent_dvd_qCoefficient
#print axioms Math.B699.PadeConstruction.homogeneousValue_cast_eq
#print axioms Math.B699.PadeConstruction.qContent_mul_normalizedValue
#print axioms Math.B699.PadeConstruction.qNormalizedValue_cast_eq

end Math.B699.PadeConstruction

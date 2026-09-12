import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».experiments.«huan-pade-construction-5e2d13bb».PContentTransform
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».experiments.«huan-pade-construction-5e2d13bb».AdjacentDeterminantData
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.IntegerBridge

/-!
# Actual normalized integer rows and their determinant

PContentTransform is an explicitly pending candidate dependency; its pNormalizedValue
is an actual sum of integer quotients. qNormalizedValue is the already integrated
integer construction. This file proves the exact content-scaling identity for these
actual values, for all integer x,y, including y=0.

The later nonvanishing/gap corollaries require an explicit equality for the RAW
integer determinant. That equality is the still-unproved source obligation listed
in ADJACENT_DETERMINANT.md. These corollaries are algebraic consumers and must not be
reported as an unconditional BFT determinant or an original B699 conclusion.
-/

namespace Math.B699.PadeAdjacent

open Math.B699.PadeConstruction
open Math.B699.PadeContent

/-- Raw homogeneous determinant: upper row (t+1,v), lower row (t,v+1). -/
def rawAdjacentDeterminant (t v : ℕ) (x y : ℤ) : ℤ :=
  homogeneousValue (t + 1) (pCoefficient (t + 1) v (t + 1)) x y *
      homogeneousValue t (qCoefficient t (v + 1) t) x y -
    homogeneousValue t (pCoefficient t (v + 1) t) x y *
      homogeneousValue (t + 1) (qCoefficient (t + 1) v (t + 1)) x y

/-- Both rows are actual gcd-normalized integers, not existential witnesses. -/
def normalizedAdjacentDeterminant (t v : ℕ) (x y : ℤ) : ℤ :=
  pNormalizedValue (t + 1) v x y * qNormalizedValue t (v + 1) t x y -
    pNormalizedValue t (v + 1) x y * qNormalizedValue (t + 1) v (t + 1) x y

/-- Multiplying back the two actual contents recovers the raw determinant.
This result does not assume a Padé, height, or determinant identity. -/
theorem content_product_mul_normalizedAdjacentDeterminant (t v : ℕ) (x y : ℤ) :
    (qContent (t + 1) v (t + 1) : ℤ) * (qContent t (v + 1) t : ℤ) *
        normalizedAdjacentDeterminant t v x y = rawAdjacentDeterminant t v x y := by
  unfold normalizedAdjacentDeterminant rawAdjacentDeterminant
  calc
    (qContent (t + 1) v (t + 1) : ℤ) * (qContent t (v + 1) t : ℤ) *
        (pNormalizedValue (t + 1) v x y * qNormalizedValue t (v + 1) t x y -
          pNormalizedValue t (v + 1) x y * qNormalizedValue (t + 1) v (t + 1) x y) =
      ((qContent (t + 1) v (t + 1) : ℤ) * pNormalizedValue (t + 1) v x y) *
          ((qContent t (v + 1) t : ℤ) * qNormalizedValue t (v + 1) t x y) -
        ((qContent t (v + 1) t : ℤ) * pNormalizedValue t (v + 1) x y) *
          ((qContent (t + 1) v (t + 1) : ℤ) * qNormalizedValue (t + 1) v (t + 1) x y) := by ring
    _ = homogeneousValue (t + 1) (pCoefficient (t + 1) v (t + 1)) x y *
          homogeneousValue t (qCoefficient t (v + 1) t) x y -
        homogeneousValue t (pCoefficient t (v + 1) t) x y *
          homogeneousValue (t + 1) (qCoefficient (t + 1) v (t + 1)) x y := by
      rw [qContent_mul_pNormalizedValue, qContent_mul_normalizedValue,
        qContent_mul_pNormalizedValue, qContent_mul_normalizedValue]

/-- Exact preservation of nonvanishing through the actual integer content
normalization. No restriction on the denominator input y is needed. -/
theorem raw_det_ne_zero_iff_normalized_det_ne_zero (t v : ℕ) (x y : ℤ) :
    rawAdjacentDeterminant t v x y ≠ 0 ↔ normalizedAdjacentDeterminant t v x y ≠ 0 := by
  have hg0 : (qContent (t + 1) v (t + 1) : ℤ) ≠ 0 :=
    Nat.cast_ne_zero.mpr (Nat.ne_of_gt (qContent_pos (t + 1) v (t + 1)))
  have hg1 : (qContent t (v + 1) t : ℤ) ≠ 0 :=
    Nat.cast_ne_zero.mpr (Nat.ne_of_gt (qContent_pos t (v + 1) t))
  rw [← content_product_mul_normalizedAdjacentDeterminant]
  simp only [mul_ne_zero_iff, hg0, hg1, true_and]

/-- A consumer of the specifically identified raw-determinant obligation.
It is conditional until that equality is proved for the source arrays. -/
theorem normalized_det_ne_zero_of_raw_formula (t v : ℕ) {x y : ℤ}
    (hx : x ≠ 0)
    (hraw : rawAdjacentDeterminant t v x y = adjacentConstant t v * x ^ (2 * t + 1)) :
    normalizedAdjacentDeterminant t v x y ≠ 0 := by
  apply (raw_det_ne_zero_iff_normalized_det_ne_zero t v x y).1
  rw [hraw]
  exact adjacentConstant_mul_power_ne_zero t v hx

def actualPRow (t v : ℕ) (x y : ℤ) (upper : Bool) : ℤ :=
  if upper then pNormalizedValue (t + 1) v x y else pNormalizedValue t (v + 1) x y

def actualQRow (t v : ℕ) (x y : ℤ) (upper : Bool) : ℤ :=
  if upper then qNormalizedValue (t + 1) v (t + 1) x y else qNormalizedValue t (v + 1) t x y

/-- The existing Section 7 bridge applied to the actual normalized row functions.
The analytic source determinant is still represented by the explicit hraw input;
no unconditional BFT or B699 conclusion is claimed by this auxiliary consumer. -/
theorem bft_integer_gap_of_raw_determinant (t v : ℕ) (x y : ℤ)
    {r s a b U V D : ℤ}
    (hx : x ≠ 0)
    (hraw : rawAdjacentDeterminant t v x y = adjacentConstant t v * x ^ (2 * t + 1))
    (hr : 0 ≤ r) (ha : a ≠ 0) (hb : 0 < b) (hV : V ≠ 0)
    (hgap : |r * U - s * V| ≤ D) :
    ∃ row : Bool,
      b * actualQRow t v x y row * U - a * actualPRow t v x y row * V ≠ 0 ∧
      r ≤ b * D * |actualQRow t v x y row| +
        |r * a * actualPRow t v x y row - s * b * actualQRow t v x y row| * |V| := by
  have hn := normalized_det_ne_zero_of_raw_formula t v hx hraw
  have hdet : actualPRow t v x y true * actualQRow t v x y false -
      actualPRow t v x y false * actualQRow t v x y true ≠ 0 := by
    simpa [actualPRow, actualQRow, normalizedAdjacentDeterminant] using hn
  obtain ⟨row, _, hcross, hbound⟩ :=
    Math.B699.IntegerApproximationBridge.bft_7_4_of_two_rows
      (actualPRow t v x y) (actualQRow t v x y) true false hr ha hb hV hdet hgap
  exact ⟨row, hcross, hbound⟩

#print axioms Math.B699.PadeAdjacent.content_product_mul_normalizedAdjacentDeterminant
#print axioms Math.B699.PadeAdjacent.raw_det_ne_zero_iff_normalized_det_ne_zero
#print axioms Math.B699.PadeAdjacent.normalized_det_ne_zero_of_raw_formula
#print axioms Math.B699.PadeAdjacent.bft_integer_gap_of_raw_determinant

end Math.B699.PadeAdjacent

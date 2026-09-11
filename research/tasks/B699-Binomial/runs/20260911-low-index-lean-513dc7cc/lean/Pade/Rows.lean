import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Pade.RawHom
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Pade.Content
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.IntegerBridge

/-!
# Actual normalized rows with no hraw hypothesis

This module calls the actual P/Q content-normalization lemmas and the actual
source homogeneous determinant directly. It does not import the old conditional
adjacent-determinant consumers. PContentTransform is a complete but still pending
candidate dependency. The final Section 7 theorem has no Padé identity, recurrence,
six-ratio, or raw-determinant hypothesis. Analytic growth/height inputs are separate.
-/

namespace Math.B699.PadeActualRows

open Math.B699.PadeConstruction
open Math.B699.PadeContent
open Math.B699.PadeActualRecurrence

def normalizedDeterminant (u v : ℕ) (x y : ℤ) : ℤ :=
  pNormalizedValue u v x y * qNormalizedValue (u - 1) (v + 1) (u - 1) x y -
    pNormalizedValue (u - 1) (v + 1) x y * qNormalizedValue u v u x y

/-- The actual content scaling, established without a determinant hypothesis. -/
theorem content_product_mul_normalizedDeterminant (u v : ℕ) (x y : ℤ) :
    (qContent u v u : ℤ) * (qContent (u - 1) (v + 1) (u - 1) : ℤ) *
      normalizedDeterminant u v x y = rawHomogeneousDeterminant u v x y := by
  unfold normalizedDeterminant rawHomogeneousDeterminant
  calc
    (qContent u v u : ℤ) * (qContent (u - 1) (v + 1) (u - 1) : ℤ) *
        (pNormalizedValue u v x y * qNormalizedValue (u - 1) (v + 1) (u - 1) x y -
          pNormalizedValue (u - 1) (v + 1) x y * qNormalizedValue u v u x y) =
      ((qContent u v u : ℤ) * pNormalizedValue u v x y) *
          ((qContent (u - 1) (v + 1) (u - 1) : ℤ) * qNormalizedValue (u - 1) (v + 1) (u - 1) x y) -
        ((qContent (u - 1) (v + 1) (u - 1) : ℤ) * pNormalizedValue (u - 1) (v + 1) x y) *
          ((qContent u v u : ℤ) * qNormalizedValue u v u x y) := by ring
    _ = homogeneousValue u (pCoefficient u v u) x y *
          homogeneousValue (u - 1) (qCoefficient (u - 1) (v + 1) (u - 1)) x y -
        homogeneousValue (u - 1) (pCoefficient (u - 1) (v + 1) (u - 1)) x y *
          homogeneousValue u (qCoefficient u v u) x y := by
      rw [qContent_mul_pNormalizedValue, qContent_mul_normalizedValue,
        qContent_mul_pNormalizedValue, qContent_mul_normalizedValue]

/-- The concrete gcd-normalized rows have nonzero determinant for every
u>=1,v and nonzero numerator/denominator. No hraw input remains. -/
theorem actual_normalized_rows_det_ne_zero (u v : ℕ) (hu : 1 ≤ u) {x y : ℤ}
    (hx : x ≠ 0) (hy : y ≠ 0) : normalizedDeterminant u v x y ≠ 0 := by
  have hraw := rawHomogeneousDeterminant_ne_zero u v hu hx hy
  intro hz
  have hs := content_product_mul_normalizedDeterminant u v x y
  rw [hz, mul_zero] at hs
  exact hraw hs.symm

def actualPRow (u v : ℕ) (x y : ℤ) (upper : Bool) : ℤ :=
  if upper then pNormalizedValue u v x y else pNormalizedValue (u - 1) (v + 1) x y

def actualQRow (u v : ℕ) (x y : ℤ) (upper : Bool) : ℤ :=
  if upper then qNormalizedValue u v u x y else qNormalizedValue (u - 1) (v + 1) (u - 1) x y

/-- BFT (7.4) for the actual constructed adjacent row pair. Only ordinary
integer/scaling/gap conditions remain; the source determinant is proved upstream. -/
theorem actual_bft_integer_gap (u v : ℕ) (hu : 1 ≤ u) (x y : ℤ)
    {r s a b U V D : ℤ}
    (hx : x ≠ 0) (hy : y ≠ 0)
    (hr : 0 ≤ r) (ha : a ≠ 0) (hb : 0 < b) (hV : V ≠ 0)
    (hgap : |r * U - s * V| ≤ D) :
    ∃ row : Bool,
      b * actualQRow u v x y row * U - a * actualPRow u v x y row * V ≠ 0 ∧
      r ≤ b * D * |actualQRow u v x y row| +
        |r * a * actualPRow u v x y row - s * b * actualQRow u v x y row| * |V| := by
  have hn := actual_normalized_rows_det_ne_zero u v hu hx hy
  have hd : actualPRow u v x y true * actualQRow u v x y false -
      actualPRow u v x y false * actualQRow u v x y true ≠ 0 := by
    simpa [actualPRow, actualQRow, normalizedDeterminant] using hn
  obtain ⟨row, _, hc, hbnd⟩ :=
    Math.B699.IntegerApproximationBridge.bft_7_4_of_two_rows
      (actualPRow u v x y) (actualQRow u v x y) true false hr ha hb hV hd hgap
  exact ⟨row, hc, hbnd⟩

#print axioms Math.B699.PadeActualRows.content_product_mul_normalizedDeterminant
#print axioms Math.B699.PadeActualRows.actual_normalized_rows_det_ne_zero
#print axioms Math.B699.PadeActualRows.actual_bft_integer_gap

end Math.B699.PadeActualRows

import Mathlib.Algebra.Ring.Defs
import Mathlib.Tactic.Ring

/-!
# Algebra for a pure-coefficient proof of the adjacent determinant

The first two identities are the denominator-cleared arithmetic remaining after
substituting the six explicit source-coefficient ratios. The ratios themselves
are not proved in this file. The last theorem propagates a determinant from
three actual rows once their shared linear recurrences have been established.
It does not assert those recurrences for BFT coefficients.
-/

namespace Math.B699.PadeAdjacentRecurrence

variable {R : Type*} [CommRing R]

/-- Scalar identity behind the actual Q-coefficient recurrence. -/
theorem q_ratio_ring_identity (u v r : R) :
    (2 * u - r) * (2 * u - r - 1) * (v + 1) =
      (2 * u - 1) * (2 * (u - r) * (v + r + 1) - r * (2 * u - r - 1)) +
        (2 * u + v) * r * (r - 1) := by ring

/-- Scalar identity behind the actual P-coefficient recurrence. -/
theorem p_ratio_ring_identity (u v r : R) :
    (2 * u + v + 1) * (2 * u - r) * (2 * u - r - 1) =
      (2 * u - 1) *
        (2 * (u - r) * (2 * u + v + 1 - r) + r * (2 * u - r - 1)) +
          (v + 2) * r * (r - 1) := by ring

/-- Elimination for any two sequences satisfying the same three-term
recurrence. The coefficient of the middle row cancels exactly. -/
theorem scaled_cross_recurrence
    (P0 Q0 P1 Q1 P2 Q2 N A B : R)
    (hP : N * P0 = A * P1 + B * P2)
    (hQ : N * Q0 = A * Q1 + B * Q2) :
    N * (P0 * Q1 - P1 * Q0) = -B * (P1 * Q2 - P2 * Q1) := by
  calc
    N * (P0 * Q1 - P1 * Q0) = (N * P0) * Q1 - P1 * (N * Q0) := by ring
    _ = (A * P1 + B * P2) * Q1 - P1 * (A * Q1 + B * Q2) := by rw [hP, hQ]
    _ = -B * (P1 * Q2 - P2 * Q1) := by ring

#print axioms Math.B699.PadeAdjacentRecurrence.q_ratio_ring_identity
#print axioms Math.B699.PadeAdjacentRecurrence.p_ratio_ring_identity
#print axioms Math.B699.PadeAdjacentRecurrence.scaled_cross_recurrence

end Math.B699.PadeAdjacentRecurrence

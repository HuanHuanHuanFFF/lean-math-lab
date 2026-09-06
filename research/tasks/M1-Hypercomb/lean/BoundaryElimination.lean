import Mathlib.Tactic.Ring
import Mathlib.Tactic.NormNum

/-! Exact elimination on the 120-degree ray. No root-continuity or determinant
theorem is assumed; the following is a directly kernel-checked ring identity. -/
set_option maxRecDepth 100000
set_option maxHeartbeats 4000000
namespace M1Boundary
variable {K : Type*} [CommRing K]

def core (c1 c2 c3 c4 : K) : K :=
  c1 ^ 3 * c3 ^ 3 + c1 ^ 2 * c2 ^ 3 * c4 - c1 ^ 2 * c2 ^ 2 * c3 ^ 2 -
  3 * c1 ^ 2 * c3 ^ 2 * c4 - c1 * c2 ^ 2 * c3 * c4 + 3 * c1 * c3 * c4 ^ 2 -
  c2 ^ 4 * c4 + c2 ^ 3 * c3 ^ 2 + 2 * c2 ^ 2 * c4 ^ 2 - c4 ^ 3

def imagPart (c1 c2 c4 u : K) : K := c1 - 2 * c2 * u + 8 * c4 * u ^ 3
def realPart (c1 c2 c3 c4 u : K) : K :=
  1 - c1 * u - 2 * c2 * u ^ 2 + 8 * c3 * u ^ 3 - 8 * c4 * u ^ 4

def bezoutI (c1 c2 c3 c4 u : K) : K :=
  (- 4 * c1 * c2 * c3 * c4 ^ 2 - 4 * c2 ^ 3 * c4 ^ 2 + 4 * c2 ^ 2 * c3 ^ 2 * c4 + 4 * c2 * c4 ^ 3) * u ^ 3 +
  (- 2 * c1 * c2 ^ 2 * c4 ^ 2 + 6 * c1 * c2 * c3 ^ 2 * c4 + 4 * c2 ^ 3 * c3 * c4 - 4 * c2 ^ 2 * c3 ^ 3 - 6 * c2 * c3 * c4 ^ 2) * u ^ 2 +
  (c1 ^ 2 * c3 ^ 2 * c4 + c1 * c2 ^ 2 * c3 * c4 - 2 * c1 * c2 * c3 ^ 3 - 2 * c1 * c3 * c4 ^ 2 - c2 ^ 4 * c4 + c2 ^ 3 * c3 ^ 2 + 2 * c2 * c3 ^ 2 * c4 + c4 ^ 3) * u +
  (- c1 ^ 2 * c3 ^ 3 - c1 * c2 ^ 3 * c4 + c1 * c2 ^ 2 * c3 ^ 2 + 2 * c1 * c3 ^ 2 * c4 - c3 * c4 ^ 2)

def bezoutR (c1 c2 c3 c4 u : K) : K :=
  (- 4 * c1 * c2 * c3 * c4 ^ 2 - 4 * c2 ^ 3 * c4 ^ 2 + 4 * c2 ^ 2 * c3 ^ 2 * c4 + 4 * c2 * c4 ^ 3) * u ^ 2 +
  (- 2 * c1 * c2 ^ 2 * c4 ^ 2 + 2 * c1 * c2 * c3 ^ 2 * c4 - 2 * c2 * c3 * c4 ^ 2) * u +
  (c1 ^ 2 * c3 ^ 2 * c4 + c1 * c2 ^ 2 * c3 * c4 - 2 * c1 * c3 * c4 ^ 2 + c2 ^ 4 * c4 - c2 ^ 3 * c3 ^ 2 - 2 * c2 ^ 2 * c4 ^ 2 + c4 ^ 3)

theorem bezout_identity (c1 c2 c3 c4 u : K) :
    -1 * core c1 c2 c3 c4 =
      bezoutI c1 c2 c3 c4 u * imagPart c1 c2 c4 u +
      bezoutR c1 c2 c3 c4 u * realPart c1 c2 c3 c4 u := by
  unfold core bezoutI bezoutR imagPart realPart
  ring

theorem common_zero_obstruction (c1 c2 c3 c4 u : K)
    (hi : imagPart c1 c2 c4 u = 0) (hr : realPart c1 c2 c3 c4 u = 0) :
    (1 : K) * core c1 c2 c3 c4 = 0 := by
  have hh := bezout_identity c1 c2 c3 c4 u
  rw [hi, hr, mul_zero, mul_zero, add_zero] at hh
  have ht : -(1 * core c1 c2 c3 c4) = 0 := by simpa only [neg_mul] using hh
  exact neg_eq_zero.mp ht

/-- info: 'M1Boundary.bezout_identity' depends on axioms: [propext, Quot.sound] -/
#guard_msgs in
#print axioms bezout_identity
/-- info: 'M1Boundary.common_zero_obstruction' depends on axioms: [propext, Quot.sound] -/
#guard_msgs in
#print axioms common_zero_obstruction
end M1Boundary

import Mathlib.Tactic.Ring
import Mathlib.Tactic.NormNum
import Mathlib.Tactic.Positivity.Basic

/- Exact sign certificate only: root continuity and the graph reduction are not formalized here. -/
set_option maxRecDepth 100000
set_option maxHeartbeats 4000000
namespace M1Sector
variable {K : Type*} [CommRing K] [LinearOrder K] [IsStrictOrderedRing K]

def h (a e : K) : K :=
  3 * a ^ 2 + 4 * a * e + 3 * a + e ^ 2 + 2 * e + 1

def j (a e : K) : K :=
  18 * a ^ 3 + 27 * a ^ 2 * e + 33 * a ^ 2 + 14 * a * e ^ 2 + 31 * a * e + 21 * a + 2 * e ^ 3 + 8 * e ^ 2 + 10 * e + 4

def f2 (a e : K) : K :=
  270 * a ^ 6 + 1080 * a ^ 5 * e + 1080 * a ^ 5 + 1476 * a ^ 4 * e ^ 2 + 3456 * a ^ 4 * e + 1800 * a ^ 4 + 980 * a ^ 3 * e ^ 3 + 3744 * a ^ 3 * e ^ 2 + 4428 * a ^ 3 * e + 1584 * a ^ 3 + 340 * a ^ 2 * e ^ 4 + 1864 * a ^ 2 * e ^ 3 + 3580 * a ^ 2 * e ^ 2 + 2808 * a ^ 2 * e + 774 * a ^ 2 + 56 * a * e ^ 5 + 438 * a * e ^ 4 + 1196 * a * e ^ 3 + 1500 * a * e ^ 2 + 884 * a * e + 198 * a + 3 * e ^ 6 + 38 * e ^ 5 + 143 * e ^ 4 + 252 * e ^ 3 + 233 * e ^ 2 + 110 * e + 21

def f3Inner (a e : K) : K :=
  90 * a ^ 3 * e + 18 * a ^ 3 + 96 * a ^ 2 * e ^ 2 + 180 * a ^ 2 * e + 36 * a ^ 2 + 36 * a * e ^ 3 + 128 * a * e ^ 2 + 110 * a * e + 26 * a + 5 * e ^ 4 + 24 * e ^ 3 + 38 * e ^ 2 + 24 * e + 5

def lower2 (q e : K) : K :=
  3 * e ^ 6 + 56 * e ^ 5 * q + 94 * e ^ 5 + 340 * e ^ 4 * q ^ 2 + 1118 * e ^ 4 * q + 921 * e ^ 4 + 980 * e ^ 3 * q ^ 3 + 4804 * e ^ 3 * q ^ 2 + 7864 * e ^ 3 * q + 4292 * e ^ 3 + 1476 * e ^ 2 * q ^ 4 + 9648 * e ^ 2 * q ^ 3 + 23668 * e ^ 2 * q ^ 2 + 25796 * e ^ 2 * q + 10533 * e ^ 2 + 1080 * e * q ^ 5 + 8856 * e * q ^ 4 + 29052 * e * q ^ 3 + 47596 * e * q ^ 2 + 38880 * e * q + 12638 * e + 270 * q ^ 6 + 2700 * q ^ 5 + 11106 * q ^ 4 + 23864 * q ^ 3 + 27928 * q ^ 2 + 16558 * q + 3743

def g4 (a e : K) : K := (a + 1) ^ 2 * (9 * a ^ 2 + 12 * a + 2 * e + 2)
def g5 (a : K) : K := (a + 1) ^ 3

def certificate (a e s : K) : K :=
  9 * (h a e) ^ 4 + 6 * (h a e) ^ 2 * j a e * s + f2 a e * s ^ 2 +
    (a + 1) * f3Inner a e * s ^ 3 + (a + 1) ^ 2 * e ^ 2 * s ^ 4 -
    g4 a e * s ^ 4 - g5 a * s ^ 5

omit [LinearOrder K] [IsStrictOrderedRing K] in
theorem decomposition (q e s : K) :
    certificate (q + 1) e s =
      9 * (h (q + 1) e) ^ 4 + 6 * (h (q + 1) e) ^ 2 * j (q + 1) e * s +
      lower2 q e * s ^ 2 + (q + 2) * f3Inner (q + 1) e * s ^ 3 +
      (q + 2) ^ 2 * e ^ 2 * s ^ 4 +
      g4 (q + 1) e * (16 * s ^ 2 - s ^ 4) +
      g5 (q + 1) * (64 * s ^ 2 - s ^ 5) := by
  unfold certificate h j f2 f3Inner lower2 g4 g5
  ring

theorem certificate_pos (q e s : K) (hq : 0 ≤ q) (he : 0 ≤ e)
    (hs : 0 ≤ s) (hs4 : s ≤ 4) : 0 < certificate (q + 1) e s := by
  have hs2 : s ^ 2 ≤ 16 := by
    calc s ^ 2 ≤ (4 : K) ^ 2 := pow_le_pow_left₀ hs hs4 2
         _ = 16 := by norm_num
  have hs3 : s ^ 3 ≤ 64 := by
    calc s ^ 3 ≤ (4 : K) ^ 3 := pow_le_pow_left₀ hs hs4 3
         _ = 64 := by norm_num
  have hb4 : 0 ≤ 16 * s ^ 2 - s ^ 4 := by
    apply sub_nonneg.mpr
    calc s ^ 4 = s ^ 2 * s ^ 2 := by ring
         _ ≤ 16 * s ^ 2 := mul_le_mul_of_nonneg_right hs2 (sq_nonneg s)
  have hb5 : 0 ≤ 64 * s ^ 2 - s ^ 5 := by
    apply sub_nonneg.mpr
    calc s ^ 5 = s ^ 3 * s ^ 2 := by ring
         _ ≤ 64 * s ^ 2 := mul_le_mul_of_nonneg_right hs3 (sq_nonneg s)
  rw [decomposition]
  unfold h j lower2 f3Inner g4 g5
  positivity

/-- info: 'M1Sector.decomposition' depends on axioms: [propext, Quot.sound] -/
#guard_msgs in
#print axioms decomposition
/-- info: 'M1Sector.certificate_pos' depends on axioms: [propext, Classical.choice, Quot.sound] -/
#guard_msgs in
#print axioms certificate_pos
/-- The scalar polynomial occurring in the Sylvester determinant. -/
def resultantCore (c1 c2 c3 c4 : K) : K :=
  c1 ^ 3 * c3 ^ 3 + c1 ^ 2 * c2 ^ 3 * c4 - c1 ^ 2 * c2 ^ 2 * c3 ^ 2 -
  3 * c1 ^ 2 * c3 ^ 2 * c4 - c1 * c2 ^ 2 * c3 * c4 + 3 * c1 * c3 * c4 ^ 2 -
  c2 ^ 4 * c4 + c2 ^ 3 * c3 ^ 2 + 2 * c2 ^ 2 * c4 ^ 2 - c4 ^ 3

/- Exact substitution identity connecting the quartic coefficients to the sign certificate. -/
omit [LinearOrder K] [IsStrictOrderedRing K] in
theorem resultant_substitution (a e s : K) :
    resultantCore (2 * (2 * a + 1 + e) + s)
      ((2 * a + 1 + e) ^ 2 + 2 * a * (a + 1) + s * (a + 1))
      (2 * a * (a + 1) * (2 * a + 1 + e)) (a ^ 2 * (a + 1) ^ 2) =
    -(a ^ 2 * (a + 1) ^ 2) * certificate a e s := by
  unfold resultantCore certificate h j f2 f3Inner g4 g5
  ring

/-- info: 'M1Sector.resultant_substitution' depends on axioms: [propext, Quot.sound] -/
#guard_msgs in
#print axioms resultant_substitution

def bezoutU (c1 c2 c3 c4 u : K) : K :=
  c1 ^ 2 * c3 ^ 3 - c1 ^ 2 * c3 ^ 2 * c4 * u + c1 * c2 ^ 3 * c4 - c1 * c2 ^ 2 * c3 ^ 2 - c1 * c2 ^ 2 * c3 * c4 * u + 2 * c1 * c2 ^ 2 * c4 ^ 2 * u ^ 2 + 2 * c1 * c2 * c3 ^ 3 * u - 6 * c1 * c2 * c3 ^ 2 * c4 * u ^ 2 + 4 * c1 * c2 * c3 * c4 ^ 2 * u ^ 3 - 2 * c1 * c3 ^ 2 * c4 + 2 * c1 * c3 * c4 ^ 2 * u + c2 ^ 4 * c4 * u - c2 ^ 3 * c3 ^ 2 * u - 4 * c2 ^ 3 * c3 * c4 * u ^ 2 + 4 * c2 ^ 3 * c4 ^ 2 * u ^ 3 + 4 * c2 ^ 2 * c3 ^ 3 * u ^ 2 - 4 * c2 ^ 2 * c3 ^ 2 * c4 * u ^ 3 - 2 * c2 * c3 ^ 2 * c4 * u + 6 * c2 * c3 * c4 ^ 2 * u ^ 2 - 4 * c2 * c4 ^ 3 * u ^ 3 + c3 * c4 ^ 2 - c4 ^ 3 * u

def bezoutV (c1 c2 c3 c4 u : K) : K :=
  -c1 ^ 2 * c3 ^ 2 * c4 - c1 * c2 ^ 2 * c3 * c4 + 2 * c1 * c2 ^ 2 * c4 ^ 2 * u - 2 * c1 * c2 * c3 ^ 2 * c4 * u + 4 * c1 * c2 * c3 * c4 ^ 2 * u ^ 2 + 2 * c1 * c3 * c4 ^ 2 - c2 ^ 4 * c4 + c2 ^ 3 * c3 ^ 2 + 4 * c2 ^ 3 * c4 ^ 2 * u ^ 2 - 4 * c2 ^ 2 * c3 ^ 2 * c4 * u ^ 2 + 2 * c2 ^ 2 * c4 ^ 2 + 2 * c2 * c3 * c4 ^ 2 * u - 4 * c2 * c4 ^ 3 * u ^ 2 - c4 ^ 3

omit [LinearOrder K] [IsStrictOrderedRing K] in
theorem bezout_identity (c1 c2 c3 c4 u : K) :
    resultantCore c1 c2 c3 c4 =
      bezoutU c1 c2 c3 c4 u * (c1 - 2 * c2 * u + 8 * c4 * u ^ 3) +
      bezoutV c1 c2 c3 c4 u * (1 - c1 * u - 2 * c2 * u ^ 2 + 8 * c3 * u ^ 3 - 8 * c4 * u ^ 4) := by
  unfold resultantCore bezoutU bezoutV
  ring

/-- Algebraic exclusion of the simultaneous real/imaginary boundary equations. -/
theorem no_boundary_solution (q e s u : K) (hq : 0 ≤ q) (he : 0 ≤ e)
    (hs : 0 ≤ s) (hs4 : s ≤ 4) :
    let a := q + 1
    let c1 := 2 * (2 * a + 1 + e) + s
    let c2 := (2 * a + 1 + e) ^ 2 + 2 * a * (a + 1) + s * (a + 1)
    let c3 := 2 * a * (a + 1) * (2 * a + 1 + e)
    let c4 := a ^ 2 * (a + 1) ^ 2
    ¬(c1 - 2 * c2 * u + 8 * c4 * u ^ 3 = 0 ∧
      1 - c1 * u - 2 * c2 * u ^ 2 + 8 * c3 * u ^ 3 - 8 * c4 * u ^ 4 = 0) := by
  dsimp only
  intro hb
  have hf := certificate_pos q e s hq he hs hs4
  have hcore : resultantCore (2 * (2 * (q + 1) + 1 + e) + s)
      ((2 * (q + 1) + 1 + e) ^ 2 + 2 * (q + 1) * ((q + 1) + 1) + s * ((q + 1) + 1))
      (2 * (q + 1) * ((q + 1) + 1) * (2 * (q + 1) + 1 + e))
      ((q + 1) ^ 2 * ((q + 1) + 1) ^ 2) < 0 := by
    rw [resultant_substitution]
    have hp : 0 < (q + 1) ^ 2 * ((q + 1) + 1) ^ 2 := by positivity
    exact mul_neg_of_neg_of_pos (neg_neg_of_pos hp) hf
  have hz := bezout_identity (2 * (2 * (q + 1) + 1 + e) + s)
      ((2 * (q + 1) + 1 + e) ^ 2 + 2 * (q + 1) * ((q + 1) + 1) + s * ((q + 1) + 1))
      (2 * (q + 1) * ((q + 1) + 1) * (2 * (q + 1) + 1 + e))
      ((q + 1) ^ 2 * ((q + 1) + 1) ^ 2) u
  rw [hb.1, hb.2, mul_zero, mul_zero, add_zero] at hz
  exact (ne_of_lt hcore) hz

/-- info: 'M1Sector.bezout_identity' depends on axioms: [propext, Quot.sound] -/
#guard_msgs in
#print axioms bezout_identity
/-- info: 'M1Sector.no_boundary_solution' depends on axioms: [propext, Classical.choice, Quot.sound] -/
#guard_msgs in
#print axioms no_boundary_solution

end M1Sector

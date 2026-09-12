import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.RationalDivisor.FactorialDivisibility
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.PadeInteger

/-!
UNCOMPILED CANDIDATE. The actual diagonal qMagnitude, with h in its full
coefficient range. No factorial divisibility hypothesis is supplied by users.
-/

namespace Math.B699.RationalFactorialDivisor

open Math.B699.PadeConstruction

def factorialNumerator (u v : ℕ) : ℕ :=
  (u + v / 2) ! * (v / 2) !

def factorialDenominator (u v : ℕ) : ℕ :=
  u ! * v !

theorem factorialNumerator_pos (u v : ℕ) : 0 < factorialNumerator u v := by
  exact Nat.mul_pos (Nat.factorial_pos _) (Nat.factorial_pos _)

theorem factorialDenominator_pos (u v : ℕ) : 0 < factorialDenominator u v := by
  exact Nat.mul_pos (Nat.factorial_pos _) (Nat.factorial_pos _)

theorem qMagnitude_diagonal_pos (u v h : ℕ) (hh : h ≤ u) :
    0 < qMagnitude u v u h := by
  unfold qMagnitude
  exact Nat.mul_pos (Nat.choose_pos (by omega)) (Nat.choose_pos (by omega))

/-- Exact cancellation identity obtained from the two actual choose factors. -/
theorem qMagnitude_factorial_identity (u v h : ℕ) (hh : h ≤ u) :
    ((u - h) ! * h !) * (factorialDenominator u v * qMagnitude u v u h) =
      (u + u - h) ! * (v + h) ! := by
  have hfirst := Nat.choose_mul_factorial_mul_factorial
    (n := u + u - h) (k := u) (by omega : u ≤ u + u - h)
  have hsecond := Nat.choose_mul_factorial_mul_factorial
    (n := v + h) (k := h) (by omega : h ≤ v + h)
  have hsubfirst : u + u - h - u = u - h := by omega
  have hsubsecond : v + h - h = v := by omega
  rw [hsubfirst] at hfirst
  rw [hsubsecond] at hsecond
  calc
    _ = ((u + u - h).choose u * u ! * (u - h) !) *
        ((v + h).choose h * h ! * v !) := by
      dsimp [factorialDenominator, qMagnitude]
      ring
    _ = _ := by rw [hfirst, hsecond]

/-- This is the required concrete scaled divisibility for every actual q_h. -/
theorem factorialNumerator_dvd_scaled_qMagnitude
    (u v h : ℕ) (hh : h ≤ u) :
    factorialNumerator u v ∣ factorialDenominator u v * qMagnitude u v u h := by
  have hraw := factorial_product_dvd_of_two_mul_le
    (u - h) h (v / 2) v (by omega : 2 * (v / 2) ≤ v)
  have hsum : u - h + h + v / 2 = u + v / 2 := by omega
  have htwice : 2 * (u - h) + h = u + u - h := by omega
  rw [hsum, htwice] at hraw
  have hscaled :
      ((u - h) ! * h !) * factorialNumerator u v ∣
        (u + u - h) ! * (v + h) ! := by
    simpa only [factorialNumerator, Nat.mul_assoc] using hraw
  rw [← qMagnitude_factorial_identity u v h hh] at hscaled
  exact (Nat.mul_dvd_mul_iff_left
    (Nat.mul_pos (Nat.factorial_pos (u - h)) (Nat.factorial_pos h))).mp hscaled

end Math.B699.RationalFactorialDivisor

#print axioms Math.B699.RationalFactorialDivisor.factorialNumerator
#print axioms Math.B699.RationalFactorialDivisor.factorialDenominator
#print axioms Math.B699.RationalFactorialDivisor.factorialNumerator_pos
#print axioms Math.B699.RationalFactorialDivisor.factorialDenominator_pos
#print axioms Math.B699.RationalFactorialDivisor.qMagnitude_diagonal_pos
#print axioms Math.B699.RationalFactorialDivisor.qMagnitude_factorial_identity
#print axioms Math.B699.RationalFactorialDivisor.factorialNumerator_dvd_scaled_qMagnitude

import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.RationalDivisor.Coefficients
import Mathlib.Algebra.Order.Field.Rat
import Mathlib.Tactic.Linarith

/-!
UNCOMPILED CANDIDATE. An explicit positive rational divisor for the actual
qMagnitude array and its actual finite gcd. No reduced-numerator API is needed.
-/

namespace Math.B699.RationalFactorialDivisor

open Math.B699.PadeConstruction

def rationalDivisor (u v : ℕ) : ℚ :=
  (factorialNumerator u v : ℚ) / (factorialDenominator u v : ℚ)

theorem rationalDivisor_pos (u v : ℕ) : 0 < rationalDivisor u v := by
  apply div_pos
  · exact_mod_cast factorialNumerator_pos u v
  · exact_mod_cast factorialDenominator_pos u v

theorem factorialNumerator_dvd_scaled_qContent (u v : ℕ) :
    factorialNumerator u v ∣ factorialDenominator u v * qContent u v u := by
  have hd : factorialNumerator u v ∣
      (Finset.range (u + 1)).gcd
        (fun h => factorialDenominator u v * qMagnitude u v u h) := by
    apply Finset.dvd_gcd
    intro h hh
    exact factorialNumerator_dvd_scaled_qMagnitude u v h
      (Nat.lt_succ_iff.mp (Finset.mem_range.mp hh))
  simpa [Finset.gcd_mul_left, qContent] using hd

/-- Elementary conversion of a positive scaled divisibility witness to ℚ. -/
theorem positive_nat_quotient_of_scaled_dvd (N V q : ℕ)
    (hN : 0 < N) (hV : 0 < V) (hq : 0 < q) (hd : N ∣ V * q) :
    ∃ k : ℕ, 0 < k ∧ (q : ℚ) / ((N : ℚ) / (V : ℚ)) = (k : ℚ) := by
  obtain ⟨k, hk⟩ := hd
  have hkpos : 0 < k := by
    apply Nat.pos_of_ne_zero
    intro hz
    rw [hz, Nat.mul_zero] at hk
    have hprod : 0 < V * q := Nat.mul_pos hV hq
    omega
  refine ⟨k, hkpos, ?_⟩
  have hNc : (N : ℚ) ≠ 0 := by exact_mod_cast (Nat.ne_of_gt hN)
  have hVc : (V : ℚ) ≠ 0 := by exact_mod_cast (Nat.ne_of_gt hV)
  have hkc : (V : ℚ) * (q : ℚ) = (N : ℚ) * (k : ℚ) := by
    exact_mod_cast hk
  field_simp [hNc, hVc]
  nlinarith only [hkc]

/-- Every coefficient in the actual unsigned q array has a positive integer quotient. -/
theorem qMagnitude_div_rationalDivisor_positive_integer
    (u v h : ℕ) (hh : h ≤ u) :
    ∃ k : ℕ, 0 < k ∧
      (qMagnitude u v u h : ℚ) / rationalDivisor u v = (k : ℚ) := by
  exact positive_nat_quotient_of_scaled_dvd
    (factorialNumerator u v) (factorialDenominator u v) (qMagnitude u v u h)
    (factorialNumerator_pos u v) (factorialDenominator_pos u v)
    (qMagnitude_diagonal_pos u v h hh)
    (factorialNumerator_dvd_scaled_qMagnitude u v h hh)

/-- The signed coefficient has an integer quotient; positivity would be false for odd u. -/
theorem qCoefficient_div_rationalDivisor_integer
    (u v h : ℕ) (hh : h ≤ u) :
    ∃ k : ℤ, (qCoefficient u v u h : ℚ) / rationalDivisor u v = (k : ℚ) := by
  obtain ⟨k, hk, hq⟩ := qMagnitude_div_rationalDivisor_positive_integer u v h hh
  refine ⟨(-1 : ℤ) ^ u * (k : ℤ), ?_⟩
  simp only [qCoefficient, Int.cast_mul, Int.cast_pow, Int.cast_neg, Int.cast_one,
    Int.cast_natCast, mul_div_assoc, hq]

/-- The actual finite gcd has a positive integer quotient by the same rational D. -/
theorem qContent_div_rationalDivisor_positive_integer (u v : ℕ) :
    ∃ k : ℕ, 0 < k ∧ (qContent u v u : ℚ) / rationalDivisor u v = (k : ℚ) := by
  exact positive_nat_quotient_of_scaled_dvd
    (factorialNumerator u v) (factorialDenominator u v) (qContent u v u)
    (factorialNumerator_pos u v) (factorialDenominator_pos u v)
    (qContent_pos u v u) (factorialNumerator_dvd_scaled_qContent u v)

/-- The unconditional rational factorial lower bound for the actual content. -/
theorem rationalDivisor_le_qContent (u v : ℕ) :
    rationalDivisor u v ≤ (qContent u v u : ℚ) := by
  obtain ⟨k, hk, heq⟩ := qContent_div_rationalDivisor_positive_integer u v
  have hD := rationalDivisor_pos u v
  have hk1 : (1 : ℚ) ≤ (k : ℚ) := by
    exact_mod_cast (show 1 ≤ k by omega)
  have hmul : (qContent u v u : ℚ) = (k : ℚ) * rationalDivisor u v :=
    (div_eq_iff (ne_of_gt hD)).mp heq
  calc
    rationalDivisor u v = 1 * rationalDivisor u v := by ring
    _ ≤ (k : ℚ) * rationalDivisor u v :=
      mul_le_mul_of_nonneg_right hk1 (le_of_lt hD)
    _ = (qContent u v u : ℚ) := hmul.symm

end Math.B699.RationalFactorialDivisor

#print axioms Math.B699.RationalFactorialDivisor.rationalDivisor
#print axioms Math.B699.RationalFactorialDivisor.rationalDivisor_pos
#print axioms Math.B699.RationalFactorialDivisor.factorialNumerator_dvd_scaled_qContent
#print axioms Math.B699.RationalFactorialDivisor.positive_nat_quotient_of_scaled_dvd
#print axioms Math.B699.RationalFactorialDivisor.qMagnitude_div_rationalDivisor_positive_integer
#print axioms Math.B699.RationalFactorialDivisor.qCoefficient_div_rationalDivisor_integer
#print axioms Math.B699.RationalFactorialDivisor.qContent_div_rationalDivisor_positive_integer
#print axioms Math.B699.RationalFactorialDivisor.rationalDivisor_le_qContent

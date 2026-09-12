import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Factorial.FactorialCommon

/-! UNCOMPILED candidate for actual c7d5 factorial prefactors.
Exact recurrence and positive polynomial certificate, both deltas, everym>=1.
No BFT estimate or desired factorial inequality is assumed as a parameter. -/
set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxHeartbeats 2000000
set_option maxRecDepth 4096

namespace Math.B699.ElementaryFactorialBound

/-- Exact numerator after cancellation of positive endpoint factors. -/
def numerator_7_5 (m : ℚ) : ℚ :=
  (12 * m + 1) * (12 * m + 2) * (12 * m + 3) * (12 * m + 4) * (12 * m + 5) * (12 * m + 6) * (12 * m + 7) * (12 * m + 8) * (12 * m + 9) * (12 * m + 10) * (12 * m + 11)

def denominator_7_5 (m : ℚ) : ℚ :=
  (5 * m + 1) * (5 * m + 2) * (5 * m + 3) * (5 * m + 4) * (5 * m + 1) * (5 * m + 2) * (5 * m + 3) * (5 * m + 4) * (2 * m + 1)

def ratio_7_5 (m : ℚ) : ℚ :=
  12 * numerator_7_5 m / (2 * 5 ^ 2 * m * (m + 1) * denominator_7_5 m)

/-- All coefficients of the residual in x=m-1 are strictly positive.
The literal integer identity is a proof obligation for ring, not an input axiom. -/
theorem certificate_7_5 (x : ℚ) (hx : 0 ≤ x) :
    12 * 9765625 * (x + 3) * numerator_7_5 (x + 1) ≤
      2229025112064 * 2 * 5 ^ 2 * (x + 2) ^ 3 * denominator_7_5 (x + 1) := by
  apply sub_nonneg.mp
  calc
    0 ≤ 1036800 * (5291414793897876 + x * (35152212253657023 + x * (104792218752659408 + x * (184608665874794235 + x * (212834830112980198 + x * (167796483129220500 + x * (91616813165061000 + x * (34208490016440000 + x * (8359760863440000 + x * (1207398960000000 + x * (78265440000000))))))))))) := by positivity
    _ = 2229025112064 * 2 * 5 ^ 2 * (x + 2) ^ 3 * denominator_7_5 (x + 1) -
        12 * 9765625 * (x + 3) * numerator_7_5 (x + 1) := by
      unfold numerator_7_5 denominator_7_5
      ring

theorem ratio_bound_7_5 (m : ℚ) (hm : 1 ≤ m) :
    ratio_7_5 m ≤ beta 7 5 * (m + 1) ^ 2 / (m * (m + 2)) := by
  have hmpos : 0 < m := lt_of_lt_of_le (by norm_num) hm
  have hcert := certificate_7_5 (m - 1) (sub_nonneg.mpr hm)
  have hs₁ : m - 1 + 1 = m := by ring
  have hs₂ : m - 1 + 2 = m + 1 := by ring
  have hs₃ : m - 1 + 3 = m + 2 := by ring
  simp only [hs₁, hs₂, hs₃] at hcert
  have hW : 0 < denominator_7_5 m := by
    unfold denominator_7_5
    positivity
  have hbeta : beta 7 5 = (2229025112064 : ℚ) / 9765625 := by norm_num [beta]
  rw [hbeta]
  exact ratio_le_of_certificate (by norm_num) (by norm_num) (by norm_num)
    hmpos hW hcert

/-- The actual factorial recurrence for all k, with m=k+1.
All subtracted natural-number indices are nonnegative on this domain. -/
theorem factorial_step_zero_7_5 (k : ℕ) :
    factorialTerm 7 5 0 (k + 2) =
      factorialTerm 7 5 0 (k + 1) * ratio_7_5 ((k : ℚ) + 1) := by
  change (((12 * (k + 2)).factorial : ℕ) : ℚ) /
      (((((5 * (k + 2)).factorial : ℕ) : ℚ) ^ 2) *
        (((2 * (k + 2) - 1).factorial : ℕ) : ℚ)) =
    (((12 * (k + 1)).factorial : ℕ) : ℚ) /
      (((((5 * (k + 1)).factorial : ℕ) : ℚ) ^ 2) *
        (((2 * (k + 1) - 1).factorial : ℕ) : ℚ)) * ratio_7_5 ((k : ℚ) + 1)
  have ha : 12 * (k + 2) = 12 * (k + 1) + 12 := by omega
  have hd : 5 * (k + 2) = 5 * (k + 1) + 5 := by omega
  have hb : 2 * (k + 2) - 1 = (2 * (k + 1) - 1) + 2 := by omega
  have hp : (2 * (k + 1) - 1) + 1 = 2 * (k + 1) := by omega
  rw [ha, hd, hb, factorial_add_cast (12 * (k + 1)) 12,
    factorial_add_cast (5 * (k + 1)) 5,
    factorial_add_cast (2 * (k + 1) - 1) 2, hp]
  simp only [Nat.ascFactorial_succ, Nat.ascFactorial_zero,
    Nat.cast_mul, Nat.cast_add, Nat.cast_one, Nat.cast_ofNat]
  unfold ratio_7_5 numerator_7_5 denominator_7_5
  field_simp
  <;> ring

theorem factorial_step_bound_zero_7_5 (m : ℕ) (hm : 1 ≤ m) :
    factorialTerm 7 5 0 (m + 1) ≤ factorialTerm 7 5 0 m *
      (beta 7 5 * ((m : ℚ) + 1) ^ 2 / ((m : ℚ) * (m + 2))) := by
  obtain ⟨k, rfl⟩ : ∃ k, m = k + 1 := Nat.exists_eq_add_of_le' hm
  rw [factorial_step_zero_7_5]
  have hk : 0 ≤ (k : ℚ) := Nat.cast_nonneg k
  have hratio := ratio_bound_7_5 ((k : ℚ) + 1) (by linarith)
  have hmul := mul_le_mul_of_nonneg_left hratio (factorialTerm_pos 7 5 0 (k + 1)).le
  simpa only [Nat.cast_add, Nat.cast_one] using hmul

theorem factorial_step_bound_7_5 (delta m : ℕ)
    (hdelta : delta = 0 ∨ delta = 1) (hm : 1 ≤ m) :
    factorialTerm 7 5 delta (m + 1) ≤ factorialTerm 7 5 delta m *
      (beta 7 5 * ((m : ℚ) + 1) ^ 2 / ((m : ℚ) * (m + 2))) := by
  rcases hdelta with rfl | rfl
  · exact factorial_step_bound_zero_7_5 m hm
  · rw [factorial_delta_one_eq 7 5 (m + 1) (by norm_num) (by norm_num) (by omega),
      factorial_delta_one_eq 7 5 m (by norm_num) (by norm_num) (by omega)]
    have hmul := mul_le_mul_of_nonneg_left (factorial_step_bound_zero_7_5 m hm)
      (show (0 : ℚ) ≤ (5 : ℚ) ^ 2 / ((12 : ℚ) * (2 : ℚ)) by norm_num)
    convert hmul using 1 <;> norm_num [mul_assoc] <;> rfl

/-- The requested precise telescoping bound for the actual factorial term. -/
theorem factorial_telescoping_7_5 (delta m : ℕ)
    (hdelta : delta = 0 ∨ delta = 1) (hm : 1 ≤ m) :
    factorialTerm 7 5 delta m ≤
      (2 * factorialTerm 7 5 delta 1 / beta 7 5) *
        beta 7 5 ^ m * (m : ℚ) / ((m : ℚ) + 1) := by
  exact telescoping_bound_from_step (by norm_num [beta])
    (fun n hn => factorial_step_bound_7_5 delta n hdelta hn) hm

theorem factorial_strict_k_7_5 (delta m : ℕ)
    (hdelta : delta = 0 ∨ delta = 1) (hm : 1 ≤ m) :
    factorialTerm 7 5 delta m <
      (2 * factorialTerm 7 5 delta 1 / beta 7 5) * beta 7 5 ^ m := by
  exact strict_bound_from_step (by norm_num [beta]) (factorialTerm_pos 7 5 delta 1)
    (fun n hn => factorial_step_bound_7_5 delta n hdelta hn) hm

theorem factorial_initial_values_7_5 :
    factorialTerm 7 5 0 1 = (33264 : ℚ) ∧ factorialTerm 7 5 1 1 = (34650 : ℚ) := by
  norm_num [factorialTerm, Nat.factorial]

end Math.B699.ElementaryFactorialBound
#print axioms Math.B699.ElementaryFactorialBound.certificate_7_5
#print axioms Math.B699.ElementaryFactorialBound.ratio_bound_7_5
#print axioms Math.B699.ElementaryFactorialBound.factorial_step_zero_7_5
#print axioms Math.B699.ElementaryFactorialBound.factorial_step_bound_zero_7_5
#print axioms Math.B699.ElementaryFactorialBound.factorial_step_bound_7_5
#print axioms Math.B699.ElementaryFactorialBound.factorial_telescoping_7_5
#print axioms Math.B699.ElementaryFactorialBound.factorial_strict_k_7_5
#print axioms Math.B699.ElementaryFactorialBound.factorial_initial_values_7_5

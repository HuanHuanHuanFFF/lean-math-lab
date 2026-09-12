import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Factorial.FactorialCommon

/-!
# Additional actual BFT factorial prefactor: (c,d)=(5,3)

UNCOMPILED CANDIDATE. The imported common module is accepted under the source
hashes in INPUT_SOURCES.json; this file has not been compiled or axiom-audited.
The complete actual factorial proof follows accepted Factorial3D2.lean, with
an independently computed positive-coefficient certificate for this fixed pair.
No recurrence, factorial bound, or HeightValid hypothesis is assumed.

Source: BFT author manuscript 2007-02-26, (3.1)--(3.3) and page-10 substitution;
PDF SHA256 0df18ee8d108f658812ac05d1f8947b3dcc28b70d17f268acd7c871e7e7c392c.
Only the factorial prefactor is covered. No G/theta, integral maximum, or
B699 original-index claim is made.
-/

namespace Math.B699.ElementaryFactorialBound

/-- Exact numerator after cancellation of positive endpoint factors. -/
def numerator_5_3 (m : ℚ) : ℚ :=
  (8 * m + 1) * (8 * m + 2) * (8 * m + 3) * (8 * m + 4) * (8 * m + 5) * (8 * m + 6) * (8 * m + 7)

def denominator_5_3 (m : ℚ) : ℚ :=
  (3 * m + 1) * (3 * m + 2) * (3 * m + 1) * (3 * m + 2) * (2 * m + 1)

def ratio_5_3 (m : ℚ) : ℚ :=
  8 * numerator_5_3 m /
    (2 * 3 ^ 2 * m * (m + 1) * denominator_5_3 m)

/-- All coefficients of the residual in x=m-1 are strictly positive.
The literal integer identity is a proof obligation for ring, not an input axiom. -/
theorem certificate_5_3 (x : ℚ) (hx : 0 ≤ x) :
    8 * 729 * (x + 3) * numerator_5_3 (x + 1) ≤
      4194304 * 2 * 3 ^ 2 * (x + 2) ^ 3 * denominator_5_3 (x + 1) := by
  apply sub_nonneg.mp
  calc
    0 ≤ 1152 * (136578525 + x * (531865645 + x * (860032554 + x * (739144464 + x * (356098016 + x * (91183104 + x * 9695232)))))) := by positivity
    _ = 4194304 * 2 * 3 ^ 2 * (x + 2) ^ 3 * denominator_5_3 (x + 1) -
        8 * 729 * (x + 3) * numerator_5_3 (x + 1) := by
      unfold numerator_5_3 denominator_5_3
      ring

theorem ratio_bound_5_3 (m : ℚ) (hm : 1 ≤ m) :
    ratio_5_3 m ≤ beta 5 3 * (m + 1) ^ 2 / (m * (m + 2)) := by
  have hmpos : 0 < m := lt_of_lt_of_le (by norm_num) hm
  have hcert := certificate_5_3 (m - 1) (sub_nonneg.mpr hm)
  have hs₁ : m - 1 + 1 = m := by ring
  have hs₂ : m - 1 + 2 = m + 1 := by ring
  have hs₃ : m - 1 + 3 = m + 2 := by ring
  simp only [hs₁, hs₂, hs₃] at hcert
  have hW : 0 < denominator_5_3 m := by
    unfold denominator_5_3
    positivity
  have hbeta : beta 5 3 = (4194304 : ℚ) / 729 := by norm_num [beta]
  rw [hbeta]
  exact ratio_le_of_certificate (by norm_num) (by norm_num) (by norm_num)
    hmpos hW hcert

/-- The actual factorial recurrence for all k, with m=k+1.
All subtracted natural-number indices are nonnegative on this domain. -/
theorem factorial_step_zero_5_3 (k : ℕ) :
    factorialTerm 5 3 0 (k + 2) =
      factorialTerm 5 3 0 (k + 1) * ratio_5_3 ((k : ℚ) + 1) := by
  change (((8 * (k + 2)).factorial : ℕ) : ℚ) /
      (((((3 * (k + 2)).factorial : ℕ) : ℚ) ^ 2) *
        (((2 * (k + 2) - 1).factorial : ℕ) : ℚ)) =
    (((8 * (k + 1)).factorial : ℕ) : ℚ) /
      (((((3 * (k + 1)).factorial : ℕ) : ℚ) ^ 2) *
        (((2 * (k + 1) - 1).factorial : ℕ) : ℚ)) * ratio_5_3 ((k : ℚ) + 1)
  have ha : 8 * (k + 2) = 8 * (k + 1) + 8 := by omega
  have hd : 3 * (k + 2) = 3 * (k + 1) + 3 := by omega
  have hb : 2 * (k + 2) - 1 = (2 * (k + 1) - 1) + 2 := by omega
  have hp : (2 * (k + 1) - 1) + 1 = 2 * (k + 1) := by omega
  rw [ha, hd, hb, factorial_add_cast (8 * (k + 1)) 8,
    factorial_add_cast (3 * (k + 1)) 3,
    factorial_add_cast (2 * (k + 1) - 1) 2, hp]
  simp only [Nat.ascFactorial_succ, Nat.ascFactorial_zero,
    Nat.cast_mul, Nat.cast_add, Nat.cast_one, Nat.cast_ofNat]
  unfold ratio_5_3 numerator_5_3 denominator_5_3
  field_simp
  <;> ring

theorem factorial_step_bound_zero_5_3 (m : ℕ) (hm : 1 ≤ m) :
    factorialTerm 5 3 0 (m + 1) ≤ factorialTerm 5 3 0 m *
      (beta 5 3 * ((m : ℚ) + 1) ^ 2 / ((m : ℚ) * (m + 2))) := by
  obtain ⟨k, rfl⟩ : ∃ k, m = k + 1 := Nat.exists_eq_add_of_le' hm
  rw [factorial_step_zero_5_3]
  have hk : 0 ≤ (k : ℚ) := Nat.cast_nonneg k
  have hratio := ratio_bound_5_3 ((k : ℚ) + 1) (by linarith)
  have hmul := mul_le_mul_of_nonneg_left hratio (factorialTerm_pos 5 3 0 (k + 1)).le
  simpa only [Nat.cast_add, Nat.cast_one] using hmul

theorem factorial_step_bound_5_3 (delta m : ℕ)
    (hdelta : delta = 0 ∨ delta = 1) (hm : 1 ≤ m) :
    factorialTerm 5 3 delta (m + 1) ≤ factorialTerm 5 3 delta m *
      (beta 5 3 * ((m : ℚ) + 1) ^ 2 / ((m : ℚ) * (m + 2))) := by
  rcases hdelta with rfl | rfl
  · exact factorial_step_bound_zero_5_3 m hm
  · rw [factorial_delta_one_eq 5 3 (m + 1) (by norm_num) (by norm_num) (by omega),
      factorial_delta_one_eq 5 3 m (by norm_num) (by norm_num) (by omega)]
    have hmul := mul_le_mul_of_nonneg_left (factorial_step_bound_zero_5_3 m hm)
      (show (0 : ℚ) ≤ (3 : ℚ) ^ 2 / ((8 : ℚ) * (2 : ℚ)) by norm_num)
    convert hmul using 1 <;> norm_num [mul_assoc] <;> rfl

/-- The requested precise telescoping bound for the actual factorial term. -/
theorem factorial_telescoping_5_3 (delta m : ℕ)
    (hdelta : delta = 0 ∨ delta = 1) (hm : 1 ≤ m) :
    factorialTerm 5 3 delta m ≤
      (2 * factorialTerm 5 3 delta 1 / beta 5 3) *
        beta 5 3 ^ m * (m : ℚ) / ((m : ℚ) + 1) := by
  exact telescoping_bound_from_step (by norm_num [beta])
    (fun n hn => factorial_step_bound_5_3 delta n hdelta hn) hm

/-- A convenient single rational constant for both deltas: F_m < beta^m/2.
The exact K=2*F_1/beta constants were independently checked to be <1/2. -/
theorem factorial_uniform_5_3 (delta m : ℕ)
    (hdelta : delta = 0 ∨ delta = 1) (hm : 1 ≤ m) :
    factorialTerm 5 3 delta m < (1 / 2 : ℚ) * beta 5 3 ^ m := by
  have hbeta : 0 < beta 5 3 := by norm_num [beta]
  have hK : 2 * factorialTerm 5 3 delta 1 / beta 5 3 < (1 / 2 : ℚ) := by
    rcases hdelta with rfl | rfl <;> norm_num [factorialTerm, beta, Nat.factorial]
  have hbound := strict_bound_from_step hbeta (factorialTerm_pos 5 3 delta 1)
    (fun n hn => factorial_step_bound_5_3 delta n hdelta hn) hm
  exact lt_of_lt_of_le hbound (mul_le_mul_of_nonneg_right hK.le (pow_pos hbeta m).le)

/-- Both actual initial constants are recorded separately.
There is no assumption that the delta=1 constant is smaller. -/
theorem factorial_initial_constants_5_3 :
    2 * factorialTerm 5 3 0 1 / beta 5 3 = (25515 : ℚ) / 65536 ∧
    2 * factorialTerm 5 3 1 1 / beta 5 3 = (229635 : ℚ) / 1048576 := by
  norm_num [factorialTerm, beta, Nat.factorial]

/-- Tight K_delta bound for the downstream Q/E growth constants. -/
theorem factorial_strict_k_5_3 (delta m : ℕ)
    (hdelta : delta = 0 ∨ delta = 1) (hm : 1 ≤ m) :
    factorialTerm 5 3 delta m <
      (2 * factorialTerm 5 3 delta 1 / beta 5 3) * beta 5 3 ^ m := by
  exact strict_bound_from_step (by norm_num [beta]) (factorialTerm_pos 5 3 delta 1)
    (fun n hn => factorial_step_bound_5_3 delta n hdelta hn) hm

/-- The middle envelope itself is strictly below beta^m/2. -/
theorem factorial_envelope_lt_half_5_3 (delta m : ℕ)
    (hdelta : delta = 0 ∨ delta = 1) (hm : 1 ≤ m) :
    (2 * factorialTerm 5 3 delta 1 / beta 5 3) *
        beta 5 3 ^ m * (m : ℚ) / ((m : ℚ) + 1) < (1 / 2 : ℚ) * beta 5 3 ^ m := by
  have hbeta : 0 < beta 5 3 := by norm_num [beta]
  have hK : 2 * factorialTerm 5 3 delta 1 / beta 5 3 < (1 / 2 : ℚ) := by
    rcases hdelta with rfl | rfl <;> norm_num [factorialTerm, beta, Nat.factorial]
  have hF : 0 < factorialTerm 5 3 delta 1 := factorialTerm_pos 5 3 delta 1
  have hmQ : 0 < (m : ℚ) := Nat.cast_pos.mpr (by omega)
  have hpos : 0 < (2 * factorialTerm 5 3 delta 1 / beta 5 3) * beta 5 3 ^ m := by
    positivity
  calc
    _ < (2 * factorialTerm 5 3 delta 1 / beta 5 3) * beta 5 3 ^ m := by
      apply (div_lt_iff₀ (show 0 < (m : ℚ) + 1 by positivity)).2
      nlinarith
    _ < (1 / 2 : ℚ) * beta 5 3 ^ m := mul_lt_mul_of_pos_right hK (pow_pos hbeta m)

/-- The requested complete strengthened bound for every m>=1 and both deltas. -/
theorem factorial_full_bound_5_3 (delta m : ℕ)
    (hdelta : delta = 0 ∨ delta = 1) (hm : 1 ≤ m) :
    factorialTerm 5 3 delta m ≤
        (2 * factorialTerm 5 3 delta 1 / beta 5 3) *
          beta 5 3 ^ m * (m : ℚ) / ((m : ℚ) + 1) ∧
      (2 * factorialTerm 5 3 delta 1 / beta 5 3) *
        beta 5 3 ^ m * (m : ℚ) / ((m : ℚ) + 1) < (1 / 2 : ℚ) * beta 5 3 ^ m := by
  exact ⟨factorial_telescoping_5_3 delta m hdelta hm,
    factorial_envelope_lt_half_5_3 delta m hdelta hm⟩

#print axioms Math.B699.ElementaryFactorialBound.certificate_5_3
#print axioms Math.B699.ElementaryFactorialBound.ratio_bound_5_3
#print axioms Math.B699.ElementaryFactorialBound.factorial_step_zero_5_3
#print axioms Math.B699.ElementaryFactorialBound.factorial_step_bound_zero_5_3
#print axioms Math.B699.ElementaryFactorialBound.factorial_step_bound_5_3
#print axioms Math.B699.ElementaryFactorialBound.factorial_telescoping_5_3
#print axioms Math.B699.ElementaryFactorialBound.factorial_uniform_5_3
#print axioms Math.B699.ElementaryFactorialBound.factorial_initial_constants_5_3
#print axioms Math.B699.ElementaryFactorialBound.factorial_strict_k_5_3
#print axioms Math.B699.ElementaryFactorialBound.factorial_envelope_lt_half_5_3
#print axioms Math.B699.ElementaryFactorialBound.factorial_full_bound_5_3

end Math.B699.ElementaryFactorialBound

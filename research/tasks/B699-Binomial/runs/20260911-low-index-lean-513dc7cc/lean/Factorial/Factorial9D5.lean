import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Factorial.FactorialCommon

/-!
UNCOMPILED CANDIDATE. Fixed original i11 row01, (c,d)=(9,5).
The actual factorial recurrence and the degree-12 positive residual are proved
here. No factorial bound or G bound is assumed. Each delta keeps its own K.
Frozen input: FINAL_PLAN row01 and qe-certificates/row-01.json.
Only a growth prerequisite; no original B699 index is settled by this file.
-/

set_option autoImplicit false
set_option relaxedAutoImplicit false

namespace Math.B699.ElementaryFactorialBound

/-- Actual factorial ratio numerator after endpoint cancellation. -/
def numerator_9_5 (m : ℚ) : ℚ :=
  (14 * m + 1) * (14 * m + 2) * (14 * m + 3) * (14 * m + 4) * (14 * m + 5) * (14 * m + 6) * (14 * m + 7) * (14 * m + 8) * (14 * m + 9) * (14 * m + 10) * (14 * m + 11) * (14 * m + 12) * (14 * m + 13)

def denominator_9_5 (m : ℚ) : ℚ :=
  (5 * m + 1) * (5 * m + 2) * (5 * m + 3) * (5 * m + 4) * (5 * m + 1) * (5 * m + 2) * (5 * m + 3) * (5 * m + 4) * (4 * m + 1) * (4 * m + 2) * (4 * m + 3)

def ratio_9_5 (m : ℚ) : ℚ :=
  14 * numerator_9_5 m /
    (4 * 5 ^ 2 * m * (m + 1) * denominator_9_5 m)

/-- Fixed row01 residual, exactly reconstructed from the frozen coefficient data. -/
theorem certificate_9_5 (x : ℚ) (hx : 0 ≤ x) :
    14 * 9765625 * (x + 3) * numerator_9_5 (x + 1) ≤
      43406276662336 * 4 * 5 ^ 2 * (x + 2) ^ 3 * denominator_9_5 (x + 1) := by
  apply sub_nonneg.mp
  calc
    0 ≤ 156800 * (98562781215544167360 + x * (789346936801347608088 + x * (2890477402203689589150 + x * (6399635854652157487167 + x * (9541482199828211005548 + x * (10092262381016943798944 + x * (7765448394674013829828 + x * (4379592135435513341625 + x * (1796862337914711422250 + x * (523028549778973297500 + x * (102526656268974840000 + x * (12152526579556562500 + x * (658696971261875000))))))))))))) := by positivity
    _ = 43406276662336 * 4 * 5 ^ 2 * (x + 2) ^ 3 * denominator_9_5 (x + 1) -
        14 * 9765625 * (x + 3) * numerator_9_5 (x + 1) := by
      unfold numerator_9_5 denominator_9_5
      ring

theorem ratio_bound_9_5 (m : ℚ) (hm : 1 ≤ m) :
    ratio_9_5 m ≤ beta 9 5 * (m + 1) ^ 2 / (m * (m + 2)) := by
  have hmpos : 0 < m := lt_of_lt_of_le (by norm_num) hm
  have hcert := certificate_9_5 (m - 1) (sub_nonneg.mpr hm)
  have hs₁ : m - 1 + 1 = m := by ring
  have hs₂ : m - 1 + 2 = m + 1 := by ring
  have hs₃ : m - 1 + 3 = m + 2 := by ring
  simp only [hs₁, hs₂, hs₃] at hcert
  have hW : 0 < denominator_9_5 m := by
    unfold denominator_9_5
    positivity
  have hbeta : beta 9 5 = (43406276662336 : ℚ) / 9765625 := by norm_num [beta]
  rw [hbeta]
  exact ratio_le_of_certificate (by norm_num) (by norm_num) (by norm_num)
    hmpos hW hcert

/-- The actual factorial recurrence for all k, with m=k+1.
All subtracted natural-number indices are nonnegative on this domain. -/
theorem factorial_step_zero_9_5 (k : ℕ) :
    factorialTerm 9 5 0 (k + 2) =
      factorialTerm 9 5 0 (k + 1) * ratio_9_5 ((k : ℚ) + 1) := by
  change (((14 * (k + 2)).factorial : ℕ) : ℚ) /
      (((((5 * (k + 2)).factorial : ℕ) : ℚ) ^ 2) *
        (((4 * (k + 2) - 1).factorial : ℕ) : ℚ)) =
    (((14 * (k + 1)).factorial : ℕ) : ℚ) /
      (((((5 * (k + 1)).factorial : ℕ) : ℚ) ^ 2) *
        (((4 * (k + 1) - 1).factorial : ℕ) : ℚ)) * ratio_9_5 ((k : ℚ) + 1)
  have ha : 14 * (k + 2) = 14 * (k + 1) + 14 := by omega
  have hd : 5 * (k + 2) = 5 * (k + 1) + 5 := by omega
  have hb : 4 * (k + 2) - 1 = (4 * (k + 1) - 1) + 4 := by omega
  have hp : (4 * (k + 1) - 1) + 1 = 4 * (k + 1) := by omega
  rw [ha, hd, hb, factorial_add_cast (14 * (k + 1)) 14,
    factorial_add_cast (5 * (k + 1)) 5,
    factorial_add_cast (4 * (k + 1) - 1) 4, hp]
  simp only [Nat.ascFactorial_succ, Nat.ascFactorial_zero,
    Nat.cast_mul, Nat.cast_add, Nat.cast_one, Nat.cast_ofNat]
  unfold ratio_9_5 numerator_9_5 denominator_9_5
  field_simp
  <;> ring

theorem factorial_step_bound_zero_9_5 (m : ℕ) (hm : 1 ≤ m) :
    factorialTerm 9 5 0 (m + 1) ≤ factorialTerm 9 5 0 m *
      (beta 9 5 * ((m : ℚ) + 1) ^ 2 / ((m : ℚ) * (m + 2))) := by
  obtain ⟨k, rfl⟩ : ∃ k, m = k + 1 := Nat.exists_eq_add_of_le' hm
  rw [factorial_step_zero_9_5]
  have hk : 0 ≤ (k : ℚ) := Nat.cast_nonneg k
  have hratio := ratio_bound_9_5 ((k : ℚ) + 1) (by linarith)
  have hmul := mul_le_mul_of_nonneg_left hratio (factorialTerm_pos 9 5 0 (k + 1)).le
  simpa only [Nat.cast_add, Nat.cast_one] using hmul

theorem factorial_step_bound_9_5 (delta m : ℕ)
    (hdelta : delta = 0 ∨ delta = 1) (hm : 1 ≤ m) :
    factorialTerm 9 5 delta (m + 1) ≤ factorialTerm 9 5 delta m *
      (beta 9 5 * ((m : ℚ) + 1) ^ 2 / ((m : ℚ) * (m + 2))) := by
  rcases hdelta with rfl | rfl
  · exact factorial_step_bound_zero_9_5 m hm
  · rw [factorial_delta_one_eq 9 5 (m + 1) (by norm_num) (by norm_num) (by omega),
      factorial_delta_one_eq 9 5 m (by norm_num) (by norm_num) (by omega)]
    have hmul := mul_le_mul_of_nonneg_left (factorial_step_bound_zero_9_5 m hm)
      (show (0 : ℚ) ≤ (5 : ℚ) ^ 2 / ((14 : ℚ) * (4 : ℚ)) by norm_num)
    convert hmul using 1 <;> norm_num [mul_assoc] <;> rfl

/-- The requested precise telescoping bound for the actual factorial term. -/
theorem factorial_telescoping_9_5 (delta m : ℕ)
    (hdelta : delta = 0 ∨ delta = 1) (hm : 1 ≤ m) :
    factorialTerm 9 5 delta m ≤
      (2 * factorialTerm 9 5 delta 1 / beta 9 5) *
        beta 9 5 ^ m * (m : ℚ) / ((m : ℚ) + 1) := by
  exact telescoping_bound_from_step (by norm_num [beta])
    (fun n hn => factorial_step_bound_9_5 delta n hdelta hn) hm

/-- A convenient single rational constant for both deltas: F_m < beta^m/2.
The exact K=2*F_1/beta constants were independently checked to be <1/2. -/
theorem factorial_uniform_9_5 (delta m : ℕ)
    (hdelta : delta = 0 ∨ delta = 1) (hm : 1 ≤ m) :
    factorialTerm 9 5 delta m < (1 / 2 : ℚ) * beta 9 5 ^ m := by
  have hbeta : 0 < beta 9 5 := by norm_num [beta]
  have hK : 2 * factorialTerm 9 5 delta 1 / beta 9 5 < (1 / 2 : ℚ) := by
    rcases hdelta with rfl | rfl <;> norm_num [factorialTerm, beta, Nat.factorial]
  have hbound := strict_bound_from_step hbeta (factorialTerm_pos 9 5 delta 1)
    (fun n hn => factorial_step_bound_9_5 delta n hdelta hn) hm
  exact lt_of_lt_of_le hbound (mul_le_mul_of_nonneg_right hK.le (pow_pos hbeta m).le)

/-- Both actual initial constants are recorded separately.
There is no assumption that the delta=1 constant is smaller. -/
theorem factorial_initial_constants_9_5 :
    2 * factorialTerm 9 5 0 1 / beta 9 5 = (12568359375 : ℚ) / 27682574402 ∧
    2 * factorialTerm 9 5 1 1 / beta 9 5 = (314208984375 : ℚ) / 1550224166512 := by
  norm_num [factorialTerm, beta, Nat.factorial]

/-- Tight K_delta bound for the downstream Q/E growth constants. -/
theorem factorial_strict_k_9_5 (delta m : ℕ)
    (hdelta : delta = 0 ∨ delta = 1) (hm : 1 ≤ m) :
    factorialTerm 9 5 delta m <
      (2 * factorialTerm 9 5 delta 1 / beta 9 5) * beta 9 5 ^ m := by
  exact strict_bound_from_step (by norm_num [beta]) (factorialTerm_pos 9 5 delta 1)
    (fun n hn => factorial_step_bound_9_5 delta n hdelta hn) hm

/-- The middle envelope itself is strictly below beta^m/2. -/
theorem factorial_envelope_lt_half_9_5 (delta m : ℕ)
    (hdelta : delta = 0 ∨ delta = 1) (hm : 1 ≤ m) :
    (2 * factorialTerm 9 5 delta 1 / beta 9 5) *
        beta 9 5 ^ m * (m : ℚ) / ((m : ℚ) + 1) < (1 / 2 : ℚ) * beta 9 5 ^ m := by
  have hbeta : 0 < beta 9 5 := by norm_num [beta]
  have hK : 2 * factorialTerm 9 5 delta 1 / beta 9 5 < (1 / 2 : ℚ) := by
    rcases hdelta with rfl | rfl <;> norm_num [factorialTerm, beta, Nat.factorial]
  have hF : 0 < factorialTerm 9 5 delta 1 := factorialTerm_pos 9 5 delta 1
  have hmQ : 0 < (m : ℚ) := Nat.cast_pos.mpr (by omega)
  have hpos : 0 < (2 * factorialTerm 9 5 delta 1 / beta 9 5) * beta 9 5 ^ m := by
    positivity
  calc
    _ < (2 * factorialTerm 9 5 delta 1 / beta 9 5) * beta 9 5 ^ m := by
      apply (div_lt_iff₀ (show 0 < (m : ℚ) + 1 by positivity)).2
      nlinarith
    _ < (1 / 2 : ℚ) * beta 9 5 ^ m := mul_lt_mul_of_pos_right hK (pow_pos hbeta m)

/-- The requested complete strengthened bound for every m>=1 and both deltas. -/
theorem factorial_full_bound_9_5 (delta m : ℕ)
    (hdelta : delta = 0 ∨ delta = 1) (hm : 1 ≤ m) :
    factorialTerm 9 5 delta m ≤
        (2 * factorialTerm 9 5 delta 1 / beta 9 5) *
          beta 9 5 ^ m * (m : ℚ) / ((m : ℚ) + 1) ∧
      (2 * factorialTerm 9 5 delta 1 / beta 9 5) *
        beta 9 5 ^ m * (m : ℚ) / ((m : ℚ) + 1) < (1 / 2 : ℚ) * beta 9 5 ^ m := by
  exact ⟨factorial_telescoping_9_5 delta m hdelta hm,
    factorial_envelope_lt_half_9_5 delta m hdelta hm⟩

#print axioms Math.B699.ElementaryFactorialBound.certificate_9_5
#print axioms Math.B699.ElementaryFactorialBound.ratio_bound_9_5
#print axioms Math.B699.ElementaryFactorialBound.factorial_step_zero_9_5
#print axioms Math.B699.ElementaryFactorialBound.factorial_step_bound_zero_9_5
#print axioms Math.B699.ElementaryFactorialBound.factorial_step_bound_9_5
#print axioms Math.B699.ElementaryFactorialBound.factorial_telescoping_9_5
#print axioms Math.B699.ElementaryFactorialBound.factorial_uniform_9_5
#print axioms Math.B699.ElementaryFactorialBound.factorial_initial_constants_9_5
#print axioms Math.B699.ElementaryFactorialBound.factorial_strict_k_9_5
#print axioms Math.B699.ElementaryFactorialBound.factorial_envelope_lt_half_9_5
#print axioms Math.B699.ElementaryFactorialBound.factorial_full_bound_9_5

end Math.B699.ElementaryFactorialBound

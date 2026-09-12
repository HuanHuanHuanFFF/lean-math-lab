import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Factorial.FactorialCommon

/-!
UNCOMPILED CANDIDATE. Fixed original i11 row04, (c,d)=(11,7).
The actual factorial recurrence and the degree-16 positive residual are proved
here. No factorial bound or G bound is assumed. Each delta keeps its own K.
Frozen input: FINAL_PLAN row04 and qe-certificates/row-04.json.
Only a growth prerequisite; no original B699 index is settled by this file.
-/

set_option autoImplicit false
set_option relaxedAutoImplicit false

namespace Math.B699.ElementaryFactorialBound

/-- Exact fixed (11,7) actual factorial ratio. -/
def numerator_11_7 (m : ℚ) : ℚ :=
  (18 * m + 1) * (18 * m + 2) * (18 * m + 3) * (18 * m + 4) * (18 * m + 5) * (18 * m + 6) * (18 * m + 7) * (18 * m + 8) * (18 * m + 9) * (18 * m + 10) * (18 * m + 11) * (18 * m + 12) * (18 * m + 13) * (18 * m + 14) * (18 * m + 15) * (18 * m + 16) * (18 * m + 17)

def denominator_11_7 (m : ℚ) : ℚ :=
  (7 * m + 1) * (7 * m + 2) * (7 * m + 3) * (7 * m + 4) * (7 * m + 5) * (7 * m + 6) * (7 * m + 1) * (7 * m + 2) * (7 * m + 3) * (7 * m + 4) * (7 * m + 5) * (7 * m + 6) * (4 * m + 1) * (4 * m + 2) * (4 * m + 3)

def ratio_11_7 (m : ℚ) : ℚ :=
  18 * numerator_11_7 m /
    (4 * 7 ^ 2 * m * (m + 1) * denominator_11_7 m)

/-- Degree-16 positive residual, recomputed from the exact actual factorial ratio. -/
theorem certificate_11_7 (x : ℚ) (hx : 0 ≤ x) :
    18 * 678223072849 * (x + 3) * numerator_11_7 (x + 1) ≤
      153696906544127099904 * 4 * 7 ^ 2 * (x + 2) ^ 3 * denominator_11_7 (x + 1) := by
  apply sub_nonneg.mp
  calc
    0 ≤ 164602368 * (110241562556209198845066336000 + x * (1187453905002991933641540241200 + x * (5983779524056672196683729952260 + x * (18725305113472259124139253307552 + x * (40729656441097585706093084110059 + x * (65294335350947065759744925165967 + x * (79804742383095184112811595305588 + x * (75858453630510332238821724032106 + x * (56675430893659432955626359692271 + x * (33392517669322858479192878823831 + x * (15464156259855364037691801651054 + x * (5569801509788070352067060767872 + x * (1529548033875043581131775993216 + x * (309597915550113867297439847952 + x * (43560928625433641348263047648 + x * (3806566550301503678085259920 + x * (155634839555301083447505504))))))))))))))))) := by positivity
    _ = 153696906544127099904 * 4 * 7 ^ 2 * (x + 2) ^ 3 * denominator_11_7 (x + 1) -
        18 * 678223072849 * (x + 3) * numerator_11_7 (x + 1) := by
      unfold numerator_11_7 denominator_11_7
      ring

theorem ratio_bound_11_7 (m : ℚ) (hm : 1 ≤ m) :
    ratio_11_7 m ≤ beta 11 7 * (m + 1) ^ 2 / (m * (m + 2)) := by
  have hmpos : 0 < m := lt_of_lt_of_le (by norm_num) hm
  have hcert := certificate_11_7 (m - 1) (sub_nonneg.mpr hm)
  have hs₁ : m - 1 + 1 = m := by ring
  have hs₂ : m - 1 + 2 = m + 1 := by ring
  have hs₃ : m - 1 + 3 = m + 2 := by ring
  simp only [hs₁, hs₂, hs₃] at hcert
  have hW : 0 < denominator_11_7 m := by
    unfold denominator_11_7
    positivity
  have hbeta : beta 11 7 = (153696906544127099904 : ℚ) / 678223072849 := by norm_num [beta]
  rw [hbeta]
  exact ratio_le_of_certificate (by norm_num) (by norm_num) (by norm_num)
    hmpos hW hcert

/-- The actual factorial recurrence for all k, with m=k+1.
All subtracted natural-number indices are nonnegative on this domain. -/
theorem factorial_step_zero_11_7 (k : ℕ) :
    factorialTerm 11 7 0 (k + 2) =
      factorialTerm 11 7 0 (k + 1) * ratio_11_7 ((k : ℚ) + 1) := by
  change (((18 * (k + 2)).factorial : ℕ) : ℚ) /
      (((((7 * (k + 2)).factorial : ℕ) : ℚ) ^ 2) *
        (((4 * (k + 2) - 1).factorial : ℕ) : ℚ)) =
    (((18 * (k + 1)).factorial : ℕ) : ℚ) /
      (((((7 * (k + 1)).factorial : ℕ) : ℚ) ^ 2) *
        (((4 * (k + 1) - 1).factorial : ℕ) : ℚ)) * ratio_11_7 ((k : ℚ) + 1)
  have ha : 18 * (k + 2) = 18 * (k + 1) + 18 := by omega
  have hd : 7 * (k + 2) = 7 * (k + 1) + 7 := by omega
  have hb : 4 * (k + 2) - 1 = (4 * (k + 1) - 1) + 4 := by omega
  have hp : (4 * (k + 1) - 1) + 1 = 4 * (k + 1) := by omega
  rw [ha, hd, hb, factorial_add_cast (18 * (k + 1)) 18,
    factorial_add_cast (7 * (k + 1)) 7,
    factorial_add_cast (4 * (k + 1) - 1) 4, hp]
  simp only [Nat.ascFactorial_succ, Nat.ascFactorial_zero,
    Nat.cast_mul, Nat.cast_add, Nat.cast_one, Nat.cast_ofNat]
  unfold ratio_11_7 numerator_11_7 denominator_11_7
  field_simp
  <;> ring

theorem factorial_step_bound_zero_11_7 (m : ℕ) (hm : 1 ≤ m) :
    factorialTerm 11 7 0 (m + 1) ≤ factorialTerm 11 7 0 m *
      (beta 11 7 * ((m : ℚ) + 1) ^ 2 / ((m : ℚ) * (m + 2))) := by
  obtain ⟨k, rfl⟩ : ∃ k, m = k + 1 := Nat.exists_eq_add_of_le' hm
  rw [factorial_step_zero_11_7]
  have hk : 0 ≤ (k : ℚ) := Nat.cast_nonneg k
  have hratio := ratio_bound_11_7 ((k : ℚ) + 1) (by linarith)
  have hmul := mul_le_mul_of_nonneg_left hratio (factorialTerm_pos 11 7 0 (k + 1)).le
  simpa only [Nat.cast_add, Nat.cast_one] using hmul

theorem factorial_step_bound_11_7 (delta m : ℕ)
    (hdelta : delta = 0 ∨ delta = 1) (hm : 1 ≤ m) :
    factorialTerm 11 7 delta (m + 1) ≤ factorialTerm 11 7 delta m *
      (beta 11 7 * ((m : ℚ) + 1) ^ 2 / ((m : ℚ) * (m + 2))) := by
  rcases hdelta with rfl | rfl
  · exact factorial_step_bound_zero_11_7 m hm
  · rw [factorial_delta_one_eq 11 7 (m + 1) (by norm_num) (by norm_num) (by omega),
      factorial_delta_one_eq 11 7 m (by norm_num) (by norm_num) (by omega)]
    have hmul := mul_le_mul_of_nonneg_left (factorial_step_bound_zero_11_7 m hm)
      (show (0 : ℚ) ≤ (7 : ℚ) ^ 2 / ((18 : ℚ) * (4 : ℚ)) by norm_num)
    convert hmul using 1 <;> norm_num [mul_assoc] <;> rfl

/-- The requested precise telescoping bound for the actual factorial term. -/
theorem factorial_telescoping_11_7 (delta m : ℕ)
    (hdelta : delta = 0 ∨ delta = 1) (hm : 1 ≤ m) :
    factorialTerm 11 7 delta m ≤
      (2 * factorialTerm 11 7 delta 1 / beta 11 7) *
        beta 11 7 ^ m * (m : ℚ) / ((m : ℚ) + 1) := by
  exact telescoping_bound_from_step (by norm_num [beta])
    (fun n hn => factorial_step_bound_11_7 delta n hdelta hn) hm

/-- A convenient single rational constant for both deltas: F_m < beta^m/2.
The exact K=2*F_1/beta constants were independently checked to be <1/2. -/
theorem factorial_uniform_11_7 (delta m : ℕ)
    (hdelta : delta = 0 ∨ delta = 1) (hm : 1 ≤ m) :
    factorialTerm 11 7 delta m < (1 / 2 : ℚ) * beta 11 7 ^ m := by
  have hbeta : 0 < beta 11 7 := by norm_num [beta]
  have hK : 2 * factorialTerm 11 7 delta 1 / beta 11 7 < (1 / 2 : ℚ) := by
    rcases hdelta with rfl | rfl <;> norm_num [factorialTerm, beta, Nat.factorial]
  have hbound := strict_bound_from_step hbeta (factorialTerm_pos 11 7 delta 1)
    (fun n hn => factorial_step_bound_11_7 delta n hdelta hn) hm
  exact lt_of_lt_of_le hbound (mul_le_mul_of_nonneg_right hK.le (pow_pos hbeta m).le)

/-- Both actual initial constants are recorded separately.
There is no assumption that the delta=1 constant is smaller. -/
theorem factorial_initial_constants_11_7 :
    2 * factorialTerm 11 7 0 1 / beta 11 7 = (8243801450479595 : ℚ) / 22236242266222092 ∧
    2 * factorialTerm 11 7 1 1 / beta 11 7 = (403946271073500155 : ℚ) / 1601009443167990624 := by
  norm_num [factorialTerm, beta, Nat.factorial]

/-- Tight K_delta bound for the downstream Q/E growth constants. -/
theorem factorial_strict_k_11_7 (delta m : ℕ)
    (hdelta : delta = 0 ∨ delta = 1) (hm : 1 ≤ m) :
    factorialTerm 11 7 delta m <
      (2 * factorialTerm 11 7 delta 1 / beta 11 7) * beta 11 7 ^ m := by
  exact strict_bound_from_step (by norm_num [beta]) (factorialTerm_pos 11 7 delta 1)
    (fun n hn => factorial_step_bound_11_7 delta n hdelta hn) hm

/-- The middle envelope itself is strictly below beta^m/2. -/
theorem factorial_envelope_lt_half_11_7 (delta m : ℕ)
    (hdelta : delta = 0 ∨ delta = 1) (hm : 1 ≤ m) :
    (2 * factorialTerm 11 7 delta 1 / beta 11 7) *
        beta 11 7 ^ m * (m : ℚ) / ((m : ℚ) + 1) < (1 / 2 : ℚ) * beta 11 7 ^ m := by
  have hbeta : 0 < beta 11 7 := by norm_num [beta]
  have hK : 2 * factorialTerm 11 7 delta 1 / beta 11 7 < (1 / 2 : ℚ) := by
    rcases hdelta with rfl | rfl <;> norm_num [factorialTerm, beta, Nat.factorial]
  have hF : 0 < factorialTerm 11 7 delta 1 := factorialTerm_pos 11 7 delta 1
  have hmQ : 0 < (m : ℚ) := Nat.cast_pos.mpr (by omega)
  have hpos : 0 < (2 * factorialTerm 11 7 delta 1 / beta 11 7) * beta 11 7 ^ m := by
    positivity
  calc
    _ < (2 * factorialTerm 11 7 delta 1 / beta 11 7) * beta 11 7 ^ m := by
      apply (div_lt_iff₀ (show 0 < (m : ℚ) + 1 by positivity)).2
      nlinarith
    _ < (1 / 2 : ℚ) * beta 11 7 ^ m := mul_lt_mul_of_pos_right hK (pow_pos hbeta m)

/-- The requested complete strengthened bound for every m>=1 and both deltas. -/
theorem factorial_full_bound_11_7 (delta m : ℕ)
    (hdelta : delta = 0 ∨ delta = 1) (hm : 1 ≤ m) :
    factorialTerm 11 7 delta m ≤
        (2 * factorialTerm 11 7 delta 1 / beta 11 7) *
          beta 11 7 ^ m * (m : ℚ) / ((m : ℚ) + 1) ∧
      (2 * factorialTerm 11 7 delta 1 / beta 11 7) *
        beta 11 7 ^ m * (m : ℚ) / ((m : ℚ) + 1) < (1 / 2 : ℚ) * beta 11 7 ^ m := by
  exact ⟨factorial_telescoping_11_7 delta m hdelta hm,
    factorial_envelope_lt_half_11_7 delta m hdelta hm⟩

#print axioms Math.B699.ElementaryFactorialBound.certificate_11_7
#print axioms Math.B699.ElementaryFactorialBound.ratio_bound_11_7
#print axioms Math.B699.ElementaryFactorialBound.factorial_step_zero_11_7
#print axioms Math.B699.ElementaryFactorialBound.factorial_step_bound_zero_11_7
#print axioms Math.B699.ElementaryFactorialBound.factorial_step_bound_11_7
#print axioms Math.B699.ElementaryFactorialBound.factorial_telescoping_11_7
#print axioms Math.B699.ElementaryFactorialBound.factorial_uniform_11_7
#print axioms Math.B699.ElementaryFactorialBound.factorial_initial_constants_11_7
#print axioms Math.B699.ElementaryFactorialBound.factorial_strict_k_11_7
#print axioms Math.B699.ElementaryFactorialBound.factorial_envelope_lt_half_11_7
#print axioms Math.B699.ElementaryFactorialBound.factorial_full_bound_11_7

end Math.B699.ElementaryFactorialBound

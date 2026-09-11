import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Factorial.FactorialCommon

namespace Math.B699.ElementaryFactorialBound

/-- Common numerator U for (c,d)=(15,8), after positive endpoint cancellation. -/
def numerator_15_8 (m : ℚ) : ℚ :=
  (23 * m + 1) * (23 * m + 2) * (23 * m + 3) * (23 * m + 4) * (23 * m + 5) * (23 * m + 6) * (23 * m + 7) * (23 * m + 8) * (23 * m + 9) * (23 * m + 10) * (23 * m + 11) * (23 * m + 12) * (23 * m + 13) * (23 * m + 14) * (23 * m + 15) * (23 * m + 16) * (23 * m + 17) * (23 * m + 18) * (23 * m + 19) * (23 * m + 20) * (23 * m + 21) * (23 * m + 22)

def denominator_15_8 (m : ℚ) : ℚ :=
  (8 * m + 1) * (8 * m + 2) * (8 * m + 3) * (8 * m + 4) * (8 * m + 5) * (8 * m + 6) * (8 * m + 7) * (8 * m + 1) * (8 * m + 2) * (8 * m + 3) * (8 * m + 4) * (8 * m + 5) * (8 * m + 6) * (8 * m + 7) * (7 * m + 1) * (7 * m + 2) * (7 * m + 3) * (7 * m + 4) * (7 * m + 5) * (7 * m + 6)

def ratio_15_8 (m : ℚ) : ℚ :=
  23 * numerator_15_8 m /
    (7 * 8 ^ 2 * m * (m + 1) * denominator_15_8 m)

/-- Exact finite polynomial certificate in x=m-1. Coefficients are frozen in
factorial-certificates.json; ring checks the identity from literal integers. -/
theorem certificate_15_8 (x : ℚ) (hx : 0 ≤ x) :
    23 * 231806746745223774208 * (x + 3) * numerator_15_8 (x + 1) ≤
      20880467999847912034355032910567 * 7 * 8 ^ 2 * (x + 2) ^ 3 * denominator_15_8 (x + 1) := by
  apply sub_nonneg.mp
  calc
    0 ≤ 2637824 * (8812406572813024285240399450186845569546222400000 + x * (125356133638861856636510717509026904797816132840000 + x * (847791490915150805149588657562699142443340042318000 + x * (3625587353788117444290496973473809127161071038605600 + x * (10999254497533115035050931321815643822786675047807840 + x * (25172819827804777699405437019203231449331647844383352 + x * (45113824366901292607346560171859943041105855170233417 + x * (64868420501777798811870525267052858635815302732539243 + x * (76054580476418471139679427499869826228875652939897287 + x * (73486226778822002434718664312487277676781977368878225 + x * (58897232929529650320778018823528730235295942546543304 + x * (39276505841797244095924756633659130227535282749797316 + x * (21793257392563920295997976454681813831987462861336704 + x * (10030598320275685994539560398059266951607376266171008 + x * (3804799209133906583714154209523697214028795483938816 + x * (1176850704654050183842410450453659614610544790488064 + x * (292063915685750264287097158225267295940698310967296 + x * (56763507946759898728701031941465505270754568830976 + x * (8322897160293620124486788951884372837179838169088 + x * (865785301884991977708382499231952102106073137152 + x * (56954903099935160101359578646806461138230837248 + x * 1781510219904921838156763087605374880332120064))))))))))))))))))))) := by positivity
    _ = 20880467999847912034355032910567 * 7 * 8 ^ 2 * (x + 2) ^ 3 * denominator_15_8 (x + 1) -
        23 * 231806746745223774208 * (x + 3) * numerator_15_8 (x + 1) := by
      unfold numerator_15_8 denominator_15_8
      ring

theorem ratio_bound_15_8 (m : ℚ) (hm : 1 ≤ m) :
    ratio_15_8 m ≤ beta 15 8 * (m + 1) ^ 2 / (m * (m + 2)) := by
  have hmpos : 0 < m := lt_of_lt_of_le (by norm_num) hm
  have hcert := certificate_15_8 (m - 1) (sub_nonneg.mpr hm)
  have hs₁ : m - 1 + 1 = m := by ring
  have hs₂ : m - 1 + 2 = m + 1 := by ring
  have hs₃ : m - 1 + 3 = m + 2 := by ring
  simp only [hs₁, hs₂, hs₃] at hcert
  have hW : 0 < denominator_15_8 m := by
    unfold denominator_15_8
    positivity
  have hbeta : beta 15 8 = (20880467999847912034355032910567 : ℚ) / 231806746745223774208 := by norm_num [beta]
  rw [hbeta]
  exact ratio_le_of_certificate (by norm_num) (by norm_num) (by norm_num)
    hmpos hW hcert

/-- Actual factorial recurrence, not a recurrence hypothesis. At m=k+1
all subtracted indices are nonnegative. -/
theorem factorial_step_zero_15_8 (k : ℕ) :
    factorialTerm 15 8 0 (k + 2) =
      factorialTerm 15 8 0 (k + 1) * ratio_15_8 ((k : ℚ) + 1) := by
  change (((23 * (k + 2)).factorial : ℕ) : ℚ) /
      (((((8 * (k + 2)).factorial : ℕ) : ℚ) ^ 2) *
        (((7 * (k + 2) - 1).factorial : ℕ) : ℚ)) =
    (((23 * (k + 1)).factorial : ℕ) : ℚ) /
      (((((8 * (k + 1)).factorial : ℕ) : ℚ) ^ 2) *
        (((7 * (k + 1) - 1).factorial : ℕ) : ℚ)) * ratio_15_8 ((k : ℚ) + 1)
  have ha : 23 * (k + 2) = 23 * (k + 1) + 23 := by omega
  have hd : 8 * (k + 2) = 8 * (k + 1) + 8 := by omega
  have hb : 7 * (k + 2) - 1 = (7 * (k + 1) - 1) + 7 := by omega
  have hp : (7 * (k + 1) - 1) + 1 = 7 * (k + 1) := by omega
  rw [ha, hd, hb, factorial_add_cast (23 * (k + 1)) 23,
    factorial_add_cast (8 * (k + 1)) 8,
    factorial_add_cast (7 * (k + 1) - 1) 7, hp]
  simp only [Nat.ascFactorial_succ, Nat.ascFactorial_zero,
    Nat.cast_mul, Nat.cast_add, Nat.cast_one, Nat.cast_ofNat]
  unfold ratio_15_8 numerator_15_8 denominator_15_8
  field_simp
  <;> ring

theorem factorial_step_bound_zero_15_8 (m : ℕ) (hm : 1 ≤ m) :
    factorialTerm 15 8 0 (m + 1) ≤ factorialTerm 15 8 0 m *
      (beta 15 8 * ((m : ℚ) + 1) ^ 2 / ((m : ℚ) * (m + 2))) := by
  obtain ⟨k, rfl⟩ : ∃ k, m = k + 1 := Nat.exists_eq_add_of_le' hm
  rw [factorial_step_zero_15_8]
  have hk : 0 ≤ (k : ℚ) := Nat.cast_nonneg k
  have hratio := ratio_bound_15_8 ((k : ℚ) + 1) (by linarith)
  have hmul := mul_le_mul_of_nonneg_left hratio (factorialTerm_pos 15 8 0 (k + 1)).le
  simpa only [Nat.cast_add, Nat.cast_one] using hmul

theorem factorial_step_bound_15_8 (delta m : ℕ)
    (hdelta : delta = 0 ∨ delta = 1) (hm : 1 ≤ m) :
    factorialTerm 15 8 delta (m + 1) ≤ factorialTerm 15 8 delta m *
      (beta 15 8 * ((m : ℚ) + 1) ^ 2 / ((m : ℚ) * (m + 2))) := by
  rcases hdelta with rfl | rfl
  · exact factorial_step_bound_zero_15_8 m hm
  · rw [factorial_delta_one_eq 15 8 (m + 1) (by norm_num) (by norm_num) (by omega),
      factorial_delta_one_eq 15 8 m (by norm_num) (by norm_num) (by omega)]
    have hmul := mul_le_mul_of_nonneg_left (factorial_step_bound_zero_15_8 m hm)
      (show (0 : ℚ) ≤ (8 : ℚ) ^ 2 / ((23 : ℚ) * (7 : ℚ)) by norm_num)
    convert hmul using 1 <;> norm_num [mul_assoc] <;> rfl

/-- The requested precise telescoping bound for the actual factorial term. -/
theorem factorial_telescoping_15_8 (delta m : ℕ)
    (hdelta : delta = 0 ∨ delta = 1) (hm : 1 ≤ m) :
    factorialTerm 15 8 delta m ≤
      (2 * factorialTerm 15 8 delta 1 / beta 15 8) *
        beta 15 8 ^ m * (m : ℚ) / ((m : ℚ) + 1) := by
  exact telescoping_bound_from_step (by norm_num [beta])
    (fun n hn => factorial_step_bound_15_8 delta n hdelta hn) hm

/-- A convenient single rational constant for both deltas: F_m < beta^m/2.
The exact K=2*F_1/beta constants were independently checked to be <1/2. -/
theorem factorial_uniform_15_8 (delta m : ℕ)
    (hdelta : delta = 0 ∨ delta = 1) (hm : 1 ≤ m) :
    factorialTerm 15 8 delta m < (1 / 2 : ℚ) * beta 15 8 ^ m := by
  have hbeta : 0 < beta 15 8 := by norm_num [beta]
  have hK : 2 * factorialTerm 15 8 delta 1 / beta 15 8 < (1 / 2 : ℚ) := by
    rcases hdelta with rfl | rfl <;> norm_num [factorialTerm, beta, Nat.factorial]
  have hbound := strict_bound_from_step hbeta (factorialTerm_pos 15 8 delta 1)
    (fun n hn => factorial_step_bound_15_8 delta n hdelta hn) hm
  exact lt_of_lt_of_le hbound (mul_le_mul_of_nonneg_right hK.le (pow_pos hbeta m).le)

#print axioms Math.B699.ElementaryFactorialBound.certificate_15_8
#print axioms Math.B699.ElementaryFactorialBound.ratio_bound_15_8
#print axioms Math.B699.ElementaryFactorialBound.factorial_step_zero_15_8
#print axioms Math.B699.ElementaryFactorialBound.factorial_step_bound_zero_15_8
#print axioms Math.B699.ElementaryFactorialBound.factorial_step_bound_15_8
#print axioms Math.B699.ElementaryFactorialBound.factorial_telescoping_15_8
#print axioms Math.B699.ElementaryFactorialBound.factorial_uniform_15_8

end Math.B699.ElementaryFactorialBound

import research.tasks.«B699-Binomial».runs.«20261001-lean-nonr7-01a0f779».continuations.«20261002-onehour».critical.HeightGroups.Group008
import Mathlib.Algebra.Order.Field.Rat
import Mathlib.Tactic.Linarith
set_option Elab.async false
/- Frozen member 36 research\tasks\B699-Binomial\runs\20260911-low-index-lean-513dc7cc\lean\RationalDivisor\Coefficients.lean 649a777668dd496ed45f255400c773a313c19242e7c7b059638e40d5128a2b95 -/
section HeightMember036



/-!
UNCOMPILED CANDIDATE. The actual diagonal qMagnitude, with h in its full
coefficient range. No factorial divisibility hypothesis is supplied by users.
-/

open scoped Nat

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

end HeightMember036
/- Frozen member 37 research\tasks\B699-Binomial\runs\20260911-low-index-lean-513dc7cc\lean\RationalDivisor\Content.lean 4ed0d41a0b56a94586c0b56cdc34e14b52e54b83a99cb1c035dd0e6125548043 -/
section HeightMember037




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

end HeightMember037
/- Frozen member 38 research\tasks\B699-Binomial\runs\20260911-low-index-lean-513dc7cc\lean\I11DivisorTwoFive\Actual.lean ae1d0b5d1dc64ca9a5735889348ed062a965c222296d340c6c2053ee7317f195 -/
section HeightMember038




/-! UNCOMPILED. Four actual c5d4 divisor tracks, each step advances m by 2. -/
set_option autoImplicit false
set_option relaxedAutoImplicit false
namespace Math.B699.I11DivisorTwoFive
open Math.B699.RationalFactorialDivisor Math.B699.ElementaryFactorialBound

inductive Track
  | evenZero | evenOne | oddZero | oddOne
  deriving DecidableEq, Repr

def rho : Track → ℕ
  | .evenZero => 0
  | .evenOne => 0
  | .oddZero => 1
  | .oddOne => 1

def delta : Track → ℕ
  | .evenZero => 0
  | .evenOne => 1
  | .oddZero => 0
  | .oddOne => 1

def kMin : Track → ℕ
  | .evenZero => 1
  | .evenOne => 1
  | .oddZero => 0
  | .oddOne => 0

def cutoff : Track → ℕ
  | .evenZero => 16
  | .evenOne => 1
  | .oddZero => 0
  | .oddOne => 15

def loss : Track → ℕ
  | .evenZero => 9
  | .evenOne => 1
  | .oddZero => 2
  | .oddOne => 10

def initialValue : Track → ℚ
  | .evenZero => 1
  | .evenOne => 4
  | .oddZero => 1
  | .oddOne => 1

def divisor : Track → ℕ → ℚ
  | .evenZero, k => rationalDivisor (8 * k) (2 * k - 1)
  | .evenOne, k => rationalDivisor (8 * k - 1) (2 * k)
  | .oddZero, k => rationalDivisor (8 * k + 4) (2 * k)
  | .oddOne, k => rationalDivisor (8 * k + 3) (2 * k + 1)

def numerator : Track → ℚ → ℚ
  | .evenZero, x => (9 * x) * (9 * x + 1) * (9 * x + 2) * (9 * x + 3) * (9 * x + 4) * (9 * x + 5) * (9 * x + 6) * (9 * x + 7) * (9 * x + 8) * (x)
  | .evenOne, x => (9 * x) * (9 * x + 1) * (9 * x + 2) * (9 * x + 3) * (9 * x + 4) * (9 * x + 5) * (9 * x + 6) * (9 * x + 7) * (9 * x + 8) * (x + 1)
  | .oddZero, x => (9 * x + 5) * (9 * x + 6) * (9 * x + 7) * (9 * x + 8) * (9 * x + 9) * (9 * x + 10) * (9 * x + 11) * (9 * x + 12) * (9 * x + 13) * (x + 1)
  | .oddOne, x => (9 * x + 4) * (9 * x + 5) * (9 * x + 6) * (9 * x + 7) * (9 * x + 8) * (9 * x + 9) * (9 * x + 10) * (9 * x + 11) * (9 * x + 12) * (x + 1)

def denominator : Track → ℚ → ℚ
  | .evenZero, x => (8 * x + 1) * (8 * x + 2) * (8 * x + 3) * (8 * x + 4) * (8 * x + 5) * (8 * x + 6) * (8 * x + 7) * (8 * x + 8) * (2 * x) * (2 * x + 1)
  | .evenOne, x => (8 * x) * (8 * x + 1) * (8 * x + 2) * (8 * x + 3) * (8 * x + 4) * (8 * x + 5) * (8 * x + 6) * (8 * x + 7) * (2 * x + 1) * (2 * x + 2)
  | .oddZero, x => (8 * x + 5) * (8 * x + 6) * (8 * x + 7) * (8 * x + 8) * (8 * x + 9) * (8 * x + 10) * (8 * x + 11) * (8 * x + 12) * (2 * x + 1) * (2 * x + 2)
  | .oddOne, x => (8 * x + 4) * (8 * x + 5) * (8 * x + 6) * (8 * x + 7) * (8 * x + 8) * (8 * x + 9) * (8 * x + 10) * (8 * x + 11) * (2 * x + 2) * (2 * x + 3)

def ratio (t : Track) (x : ℚ) : ℚ := numerator t x / denominator t x
def targetBase : ℚ := 602791 / 500000
def middleBase : ℚ := 1235039 / 1000000
def targetRate : ℚ := targetBase ^ 8
def middleRate : ℚ := middleBase ^ 8
def infiniteRate : ℚ := 387420489 / 67108864
def blockRatio : ℚ := middleRate / targetRate

theorem target_base_pos : 0 < targetBase := by norm_num [targetBase]
theorem target_rate_pos : 0 < targetRate := by norm_num [targetRate, targetBase]
theorem middle_rate_pos : 0 < middleRate := by norm_num [middleRate, middleBase]
theorem target_rate_le_infinite : targetRate ≤ infiniteRate := by
  norm_num [targetRate, targetBase, infiniteRate]
theorem block_ratio_ge_one : 1 ≤ blockRatio := by
  norm_num [blockRatio, middleRate, targetRate, middleBase, targetBase]
theorem block_linear_bound : (2 : ℚ) ≤ 1 + 5 * (blockRatio - 1) := by
  norm_num [blockRatio, middleRate, targetRate, middleBase, targetBase]
theorem cutoff_ge_kMin (t : Track) : kMin t ≤ cutoff t := by cases t <;> decide

theorem divisor_pos (t : Track) (k : ℕ) : 0 < divisor t k := by
  cases t <;> exact rationalDivisor_pos _ _

theorem denominator_pos (t : Track) (x : ℚ) (hx : (kMin t : ℚ) ≤ x) :
    0 < denominator t x := by
  cases t <;> simp only [kMin, Nat.cast_zero, Nat.cast_one] at hx
  · have hpos : 0 < x := by linarith
    unfold denominator
    positivity
  · have hpos : 0 < x := by linarith
    unfold denominator
    positivity
  · unfold denominator
    positivity
  · unfold denominator
    positivity

theorem divisor_eq_actual (t : Track) (k : ℕ) :
    divisor t k = rationalDivisor (4 * (2 * k + rho t) - delta t)
      (2 * k + rho t + delta t - 1) := by
  cases t <;> dsimp only [divisor, rho, delta] <;> congr 1 <;> omega

theorem divisor_even_zero_formula (k : ℕ) (hk : 1 ≤ k) :
    divisor .evenZero k =
      (((9 * k - 1).factorial : ℕ) : ℚ) * (((k - 1).factorial : ℕ) : ℚ) /
        ((((8 * k).factorial : ℕ) : ℚ) * (((2 * k - 1).factorial : ℕ) : ℚ)) := by
  have hf : (2 * k - 1) / 2 = k - 1 := by omega
  have hn : (8 * k) + (k - 1) = 9 * k - 1 := by omega
  simp only [divisor, rationalDivisor, factorialNumerator, factorialDenominator,
    hf, hn, Nat.cast_mul]

theorem divisor_even_one_formula (k : ℕ) (hk : 1 ≤ k) :
    divisor .evenOne k =
      (((9 * k - 1).factorial : ℕ) : ℚ) * (((k).factorial : ℕ) : ℚ) /
        ((((8 * k - 1).factorial : ℕ) : ℚ) * (((2 * k).factorial : ℕ) : ℚ)) := by
  have hf : (2 * k) / 2 = k := by omega
  have hn : (8 * k - 1) + (k) = 9 * k - 1 := by omega
  simp only [divisor, rationalDivisor, factorialNumerator, factorialDenominator,
    hf, hn, Nat.cast_mul]

theorem divisor_odd_zero_formula (k : ℕ) (hk : 0 ≤ k) :
    divisor .oddZero k =
      (((9 * k + 4).factorial : ℕ) : ℚ) * (((k).factorial : ℕ) : ℚ) /
        ((((8 * k + 4).factorial : ℕ) : ℚ) * (((2 * k).factorial : ℕ) : ℚ)) := by
  have hf : (2 * k) / 2 = k := by omega
  have hn : (8 * k + 4) + (k) = 9 * k + 4 := by omega
  simp only [divisor, rationalDivisor, factorialNumerator, factorialDenominator,
    hf, hn, Nat.cast_mul]

theorem divisor_odd_one_formula (k : ℕ) (hk : 0 ≤ k) :
    divisor .oddOne k =
      (((9 * k + 3).factorial : ℕ) : ℚ) * (((k).factorial : ℕ) : ℚ) /
        ((((8 * k + 3).factorial : ℕ) : ℚ) * (((2 * k + 1).factorial : ℕ) : ℚ)) := by
  have hf : (2 * k + 1) / 2 = k := by omega
  have hn : (8 * k + 3) + (k) = 9 * k + 3 := by omega
  simp only [divisor, rationalDivisor, factorialNumerator, factorialDenominator,
    hf, hn, Nat.cast_mul]

theorem divisor_initial (t : Track) : divisor t (kMin t) = initialValue t := by
  cases t <;> norm_num [divisor, kMin, initialValue, rationalDivisor,
    factorialNumerator, factorialDenominator, Nat.factorial]

theorem divisor_even_zero_step_succ (k : ℕ) :
    divisor .evenZero (k + 2) = divisor .evenZero (k + 1) * ratio .evenZero ((k : ℚ) + 1) := by
  rw [divisor_even_zero_formula (k + 2) (by omega), divisor_even_zero_formula (k + 1) (by omega)]
  have hn : 9 * (k + 2) - 1 = (9 * (k + 1) - 1) + 9 := by omega
  have hf : (k + 2) - 1 = ((k + 1) - 1) + 1 := by omega
  have hu : 8 * (k + 2) = (8 * (k + 1)) + 8 := by omega
  have hv : 2 * (k + 2) - 1 = (2 * (k + 1) - 1) + 2 := by omega
  have hn1 : (9 * (k + 1) - 1) + 1 = 9 * (k + 1) := by omega
  have hf1 : ((k + 1) - 1) + 1 = (k + 1) := by omega
  have hv1 : (2 * (k + 1) - 1) + 1 = 2 * (k + 1) := by omega
  rw [hn,
    hf,
    hu,
    hv,
    factorial_add_cast (9 * (k + 1) - 1) 9,
    factorial_add_cast ((k + 1) - 1) 1,
    factorial_add_cast (8 * (k + 1)) 8,
    factorial_add_cast (2 * (k + 1) - 1) 2,
    hn1,
    hf1,
    hv1]
  simp only [Nat.ascFactorial_succ, Nat.ascFactorial_zero,
    Nat.cast_mul, Nat.cast_add, Nat.cast_one, Nat.cast_ofNat]
  unfold ratio numerator denominator
  field_simp
  <;> ring

theorem divisor_even_one_step_succ (k : ℕ) :
    divisor .evenOne (k + 2) = divisor .evenOne (k + 1) * ratio .evenOne ((k : ℚ) + 1) := by
  rw [divisor_even_one_formula (k + 2) (by omega), divisor_even_one_formula (k + 1) (by omega)]
  have hn : 9 * (k + 2) - 1 = (9 * (k + 1) - 1) + 9 := by omega
  have hf : (k + 2) = ((k + 1)) + 1 := by omega
  have hu : 8 * (k + 2) - 1 = (8 * (k + 1) - 1) + 8 := by omega
  have hv : 2 * (k + 2) = (2 * (k + 1)) + 2 := by omega
  have hn1 : (9 * (k + 1) - 1) + 1 = 9 * (k + 1) := by omega
  have hu1 : (8 * (k + 1) - 1) + 1 = 8 * (k + 1) := by omega
  rw [hn,
    hf,
    hu,
    hv,
    factorial_add_cast (9 * (k + 1) - 1) 9,
    factorial_add_cast ((k + 1)) 1,
    factorial_add_cast (8 * (k + 1) - 1) 8,
    factorial_add_cast (2 * (k + 1)) 2,
    hn1,
    hu1]
  simp only [Nat.ascFactorial_succ, Nat.ascFactorial_zero,
    Nat.cast_mul, Nat.cast_add, Nat.cast_one, Nat.cast_ofNat]
  unfold ratio numerator denominator
  field_simp
  <;> ring

theorem divisor_odd_zero_step (k : ℕ) :
    divisor .oddZero (k + 1) = divisor .oddZero k * ratio .oddZero (k : ℚ) := by
  rw [divisor_odd_zero_formula (k + 1) (by omega), divisor_odd_zero_formula k (by omega)]
  have hn : 9 * (k + 1) + 4 = (9 * k + 4) + 9 := by omega
  have hf : (k + 1) = (k) + 1 := by omega
  have hu : 8 * (k + 1) + 4 = (8 * k + 4) + 8 := by omega
  have hv : 2 * (k + 1) = (2 * k) + 2 := by omega
  rw [hn,
    hf,
    hu,
    hv,
    factorial_add_cast (9 * k + 4) 9,
    factorial_add_cast (k) 1,
    factorial_add_cast (8 * k + 4) 8,
    factorial_add_cast (2 * k) 2]
  simp only [Nat.ascFactorial_succ, Nat.ascFactorial_zero,
    Nat.cast_mul, Nat.cast_add, Nat.cast_one, Nat.cast_ofNat]
  unfold ratio numerator denominator
  field_simp
  <;> ring

theorem divisor_odd_one_step (k : ℕ) :
    divisor .oddOne (k + 1) = divisor .oddOne k * ratio .oddOne (k : ℚ) := by
  rw [divisor_odd_one_formula (k + 1) (by omega), divisor_odd_one_formula k (by omega)]
  have hn : 9 * (k + 1) + 3 = (9 * k + 3) + 9 := by omega
  have hf : (k + 1) = (k) + 1 := by omega
  have hu : 8 * (k + 1) + 3 = (8 * k + 3) + 8 := by omega
  have hv : 2 * (k + 1) + 1 = (2 * k + 1) + 2 := by omega
  rw [hn,
    hf,
    hu,
    hv,
    factorial_add_cast (9 * k + 3) 9,
    factorial_add_cast (k) 1,
    factorial_add_cast (8 * k + 3) 8,
    factorial_add_cast (2 * k + 1) 2]
  simp only [Nat.ascFactorial_succ, Nat.ascFactorial_zero,
    Nat.cast_mul, Nat.cast_add, Nat.cast_one, Nat.cast_ofNat]
  unfold ratio numerator denominator
  field_simp
  <;> ring

theorem divisor_step (t : Track) (k : ℕ) (hk : kMin t ≤ k) :
    divisor t (k + 1) = divisor t k * ratio t (k : ℚ) := by
  cases t
  · obtain ⟨j, rfl⟩ : ∃ j, k = j + 1 := Nat.exists_eq_add_of_le' hk
    simpa only [Nat.cast_add, Nat.cast_one] using divisor_even_zero_step_succ j
  · obtain ⟨j, rfl⟩ : ∃ j, k = j + 1 := Nat.exists_eq_add_of_le' hk
    simpa only [Nat.cast_add, Nat.cast_one] using divisor_even_one_step_succ j
  · exact divisor_odd_zero_step k
  · exact divisor_odd_one_step k

end Math.B699.I11DivisorTwoFive

end HeightMember038
/- Frozen member 39 research\tasks\B699-Binomial\runs\20260911-low-index-lean-513dc7cc\lean\I11DivisorTwoFive\Certificates.lean e5bfc473857b1c041dbef4a5ca0c84c3da649161ed003a4995e8b28cab96555e -/
section HeightMember039


/-! UNCOMPILED. Exact polynomial identities matched to all four frozen tracks. -/
namespace Math.B699.I11DivisorTwoFive

theorem rough_certificate (t : Track) (x : ℚ) (hx : 0 ≤ x) :
    387420489 * denominator t (x + (kMin t : ℚ)) * (x + (kMin t : ℚ) + 1) ^ 2 ≤
      67108864 * numerator t (x + (kMin t : ℚ)) * (x + (kMin t : ℚ) + 2) ^ 2 := by
  cases t <;> simp only [kMin, Nat.cast_zero, Nat.cast_one]
  · apply sub_nonneg.mp
    calc
      0 ≤ 20736 * (24263350511400 + x * (242777113253700 + x * (1033716033970858 + x * (2524411128531755 + x * (3973462600211233 + x * (4261694937172776 + x * (3192124902952356 + x * (1674717415752384 + x * (604329429638592 + x * (143052330369024 + x * (20010434420736 + x * (1253826625536)))))))))))) := by positivity
      _ = 67108864 * numerator .evenZero (x + 1) * (x + 1 + 2) ^ 2 -
          387420489 * denominator .evenZero (x + 1) * (x + 1 + 1) ^ 2 := by
        unfold numerator denominator
        ring
  · apply sub_nonneg.mp
    calc
      0 ≤ 20736 * (281211446716200 + x * (2083020128933700 + x * (6966620453921450 + x * (13886565142317867 + x * (18330264815295265 + x * (16824035069070120 + x * (10955864659676580 + x * (5061831722156736 + x * (1626012377357760 + x * (345847177543680 + x * (43833140305920 + x * (2507653251072)))))))))))) := by positivity
      _ = 67108864 * numerator .evenOne (x + 1) * (x + 1 + 2) ^ 2 -
          387420489 * denominator .evenOne (x + 1) * (x + 1 + 1) ^ 2 := by
        unfold numerator denominator
        ring
  · apply sub_nonneg.mp
    calc
      0 ≤ 20736 * (2613014201875 + x * (30059191750260 + x * (155530009153318 + x * (477933347740812 + x * (969447703495915 + x * (1363309493026680 + x * (1356630018031764 + x * (955489636118016 + x * (466881158208960 + x * (150763944591360 + x * (28961363386368 + x * (2507653251072)))))))))))) := by positivity
      _ = 67108864 * numerator .oddZero (x + 0) * (x + 0 + 2) ^ 2 -
          387420489 * denominator .oddZero (x + 0) * (x + 0 + 1) ^ 2 := by
        unfold numerator denominator
        ring
  · apply sub_nonneg.mp
    calc
      0 ≤ 20736 * (287692064275 + x * (4064657165940 + x * (25292075863846 + x * (91894917569676 + x * (217310178493675 + x * (352020572471160 + x * (399314332221588 + x * (317635104665088 + x * (173822833483200 + x * (62376907161600 + x * (13218873532416 + x * (1253826625536)))))))))))) := by positivity
      _ = 67108864 * numerator .oddOne (x + 0) * (x + 0 + 2) ^ 2 -
          387420489 * denominator .oddOne (x + 0) * (x + 0 + 1) ^ 2 := by
        unfold numerator denominator
        ring

theorem middle_certificate (t : Track) (x : ℚ) (hx : 0 ≤ x) :
    5413091590980161748469798877616017917092297780481 * denominator t (x + (cutoff t : ℚ)) ≤
      1000000000000000000000000000000000000000000000000 * numerator t (x + (cutoff t : ℚ)) := by
  cases t <;> simp only [cutoff, Nat.cast_zero, Nat.cast_one, Nat.cast_ofNat]
  · apply sub_nonneg.mp
    calc
      0 ≤ 256 * (7642594268262588524703707747581488570059128670741711743572133200 + x * (12489408185551690524412584511824350903355160039547169816312344805 + x * (5563670642460919695073211199964689529881137503187585696424789321 + x * (1250179026357213779777890221231468289356325001998481197644405960 + x * (170065066762123898263031146509787890596985340701215754040332100 + x * (15110951798131466346778068630269129287427354166517443203791680 + x * (902565301599461670575068275737284931713355423895170085624768 + x * (36114701181445680057032272401465331629537756674256222781440 + x * (931844525345161625835793162261140079017098957676019507200 + x * (14054686231350918970506952099327388858389853954542141440 + x * (94351803130346478609133043026226599141756690633588736))))))))))) := by positivity
      _ = 1000000000000000000000000000000000000000000000000 * numerator .evenZero (x + 16) -
          5413091590980161748469798877616017917092297780481 * denominator .evenZero (x + 16) := by
        unfold numerator denominator
        ring
  · apply sub_nonneg.mp
    calc
      0 ≤ 256 * (3084018106760625790848035580602347689635910549123005850 + x * (23259991115004030757515010554804208042889777491859138175 + x * (77541535920391966898001943202483394381340735868437856121 + x * (150711327626051822855414990492022151742924371235027919960 + x * (189370046181709120734965322564371696228180575650825948100 + x * (160896032394758065502000959996550749429502210661496666560 + x * (93691178295542426801339341864399191891627642832740293568 + x * (36946089639342281144522509058599248032239078321789501440 + x * (9447587514576910734826689492486899444755166477916364800 + x * (1415277046955197179136995645393398987126350359503831040 + x * (94351803130346478609133043026226599141756690633588736))))))))))) := by positivity
      _ = 1000000000000000000000000000000000000000000000000 * numerator .evenOne (x + 1) -
          5413091590980161748469798877616017917092297780481 * denominator .evenOne (x + 1) := by
        unfold numerator denominator
        ring
  · apply sub_nonneg.mp
    calc
      0 ≤ 256 * (169476193676418279369846610007722406277383468578500075 + x * (1599483961942247962515004046914457304796914630896474430 + x * (6714697330938548038973886038903339135922785386037122671 + x * (16559249571812852078755917204233182907359019947207641040 + x * (26667828660881992745150541406443564694410479903510538100 + x * (29447775347799147729596198507232412365966953149609272960 + x * (22712653764091388840103803519798654640985911841667218368 + x * (12159468495738715638311716251798842150229215286154690560 + x * (4350487655877733813062955822261653243031352629776998400 + x * (943518031303464786091330430262265991417566906335887360 + x * (94351803130346478609133043026226599141756690633588736))))))))))) := by positivity
      _ = 1000000000000000000000000000000000000000000000000 * numerator .oddZero (x + 0) -
          5413091590980161748469798877616017917092297780481 * denominator .oddZero (x + 0) := by
        unfold numerator denominator
        ring
  · apply sub_nonneg.mp
    calc
      0 ≤ 256 * (3149544096945003945981416195545085436934436472615834260435040000 + x * (8038471699138458207788044990800398681115162979954625757459406560 + x * (3981814064310372988300491815509012642164853553029659445142004471 + x * (952754056206966669233543174650378769999551091313440792679927040 + x * (136078189955992102589929120436552273862520908770858190594402100 + x * (12614670987127929507073556376354207874442033003433999259822080 + x * (783429772950280897123397296342131033204193610329047315807168 + x * (32528411715166642877244525325669324414207743178783520194560 + x * (869786008529728575852864624548211878394689377650207744000 + x * (13582927215699186577461286884196255862681070501374197760 + x * (94351803130346478609133043026226599141756690633588736))))))))))) := by positivity
      _ = 1000000000000000000000000000000000000000000000000 * numerator .oddOne (x + 15) -
          5413091590980161748469798877616017917092297780481 * denominator .oddOne (x + 15) := by
        unfold numerator denominator
        ring

end Math.B699.I11DivisorTwoFive

end HeightMember039

import research.tasks.«B699-Binomial».runs.«20261001-lean-nonr7-01a0f779».tail.FactorialLogBounds
import research.tasks.«B699-Binomial».runs.«20261001-lean-nonr7-01a0f779».tail.IntegerCountBridge

/-!
Section 4.2 of the adopted three-window paper, in logarithmic form with the
actual factorial and superfactorial values. This is the factorial-normalization
dependency (4.4), not an assumption of the B699 conclusion.
-/
set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxHeartbeats 1600000

open Real
namespace B699TailNormalization

theorem normalization_log_constant :
    (5 : ℝ) / 96 ≤ log (2 / 3 : ℝ) + (2 / 3 : ℝ) * log 2 := by
  have h32 : log (32 : ℝ) = 5 * log 2 := by
    have h := Real.log_pow (2 : ℝ) 5
    norm_num at h
    exact h
  have h27 : log (27 : ℝ) = 3 * log 3 := by
    have h := Real.log_pow (3 : ℝ) 3
    norm_num at h
    exact h
  have heq : 3 * (log (2 / 3 : ℝ) + (2 / 3 : ℝ) * log 2) =
      log (32 / 27 : ℝ) := by
    rw [Real.log_div (by norm_num : (2 : ℝ) ≠ 0) (by norm_num : (3 : ℝ) ≠ 0),
      Real.log_div (by norm_num : (32 : ℝ) ≠ 0) (by norm_num : (27 : ℝ) ≠ 0), h32, h27]
    ring
  have h := Real.one_sub_inv_le_log_of_pos (by norm_num : (0 : ℝ) < 32 / 27)
  norm_num at h
  linarith

theorem scaled_log_ratio_lower {x q c : ℝ} (hx : 0 < x) (hc : c < x)
    (hq : q = (2 / 3) * (x - c)) :
    q * log x + q * log (2 / 3 : ℝ) - 2 * c / 3 ≤ q * log q := by
  have hp : 0 < 1 - c / x := by
    have hd := (div_lt_one hx).mpr hc
    linarith
  have hqp : 0 < q := by rw [hq]; positivity
  have hmul : q / x = (2 / 3 : ℝ) * (1 - c / x) := by
    rw [hq]
    field_simp [hx.ne'] <;> ring
  have hlog : log (q / x) = log (2 / 3 : ℝ) + log (1 - c / x) := by
    rw [hmul, Real.log_mul (by norm_num) hp.ne']
  rw [Real.log_div hqp.ne' hx.ne'] at hlog
  have he := B699TailIC.neg_log_one_sub_le (by linarith : c / x < 1)
  have hw := mul_le_mul_of_nonneg_left he hqp.le
  have heq : q * ((c / x) / (1 - c / x)) = 2 * c / 3 := by
    have hden : 1 - c / x = (x - c) / x := by rw [sub_div, div_self hx.ne']
    rw [hq, hden, div_div_div_cancel_right₀ hx.ne', mul_assoc,
      mul_div_cancel₀ c (sub_pos.mpr hc).ne']
    ring
  rw [heq] at hw
  have hlog' := congrArg (fun z : ℝ => q * z) hlog
  nlinarith [hlog', hw]

/-- The exact complete-factorial constant from the paper, uniformly in every m≥333.
After exponentiating and dividing by λ this is `i!≤K*i^(i-a+3)`.
No finite list of indices is used. -/
theorem factorial_normalization (m c : ℕ) (hm : 333 ≤ m) (hc1 : 1 ≤ c) (hc3 : c ≤ 3) :
    let i := 3 * m + c
    let q := 2 * m
    let lam := 3 * m - c + 1
    (lam : ℝ) * log (i.factorial : ℝ) ≤
      (q : ℝ) * (q + 1) * log 2 + 3 * log (Nat.superFactorial q : ℝ) +
        ((lam : ℝ) * (i + 3) - 3 * m * (q + 1)) * log (i : ℝ) := by
  let i := 3 * m + c
  let q := 2 * m
  let lam := 3 * m - c + 1
  change (lam : ℝ) * log (i.factorial : ℝ) ≤
    (q : ℝ) * (q + 1) * log 2 + 3 * log (Nat.superFactorial q : ℝ) +
      ((lam : ℝ) * (i + 3) - 3 * m * (q + 1)) * log (i : ℝ)
  have him : (i : ℝ) = 3 * (m : ℝ) + c := by simp [i, Nat.cast_add, Nat.cast_mul]
  have hqm : (q : ℝ) = 2 * (m : ℝ) := by simp [q, Nat.cast_mul]
  have hlm : (lam : ℝ) = 3 * (m : ℝ) - c + 1 := by
    dsimp [lam]
    rw [Nat.cast_add, Nat.cast_sub (by omega : c ≤ 3 * m), Nat.cast_mul]
    norm_num
  have hmr : (333 : ℝ) ≤ m := by exact_mod_cast hm
  have hc1r : (1 : ℝ) ≤ c := by exact_mod_cast hc1
  have hc3r : (c : ℝ) ≤ 3 := by exact_mod_cast hc3
  have hip : (0 : ℝ) < i := by linarith
  have hqp : (0 : ℝ) < q := by linarith
  have hlp : (0 : ℝ) < lam := by linarith
  have hi1 : 1 ≤ i := by dsimp [i]; omega
  have hq1 : 1 ≤ q := by dsimp [q]; omega
  have hfact := mul_le_mul_of_nonneg_left
    (B699TailFactorial.log_factorial_bounds i hi1).2 hlp.le
  have hsf := mul_le_mul_of_nonneg_left
    (B699TailFactorial.log_superFactorial_lower q hq1) (by norm_num : (0 : ℝ) ≤ 3)
  have hratio := scaled_log_ratio_lower hip (by linarith : (c : ℝ) < i)
    (by linarith : (q : ℝ) = (2 / 3) * ((i : ℝ) - c))
  have hratio' := mul_le_mul_of_nonneg_left hratio (by positivity : (0 : ℝ) ≤ 3 * q / 2)
  have hl0 := normalization_log_constant
  have hq0 : 0 ≤ (q : ℝ) * (log (2 / 3 : ℝ) + (2 / 3 : ℝ) * log 2 - 5 / 96) :=
    mul_nonneg hqp.le (by linarith)
  have hinside : 0 ≤ (q : ℝ) * (log (2 / 3 : ℝ) + (2 / 3 : ℝ) * log 2) - 2 * c / 3 := by
    nlinarith [hq0]
  have hterm1 := mul_nonneg (by positivity : (0 : ℝ) ≤ 3 * m) hinside
  have hc2 : (c : ℝ) ^ 2 ≤ 9 := by nlinarith
  have hterm2 : 0 ≤ (lam : ℝ) * i - 9 * (m : ℝ) ^ 2 := by
    rw [hlm, him]
    nlinarith [hc2]
  have hterm3 : 0 ≤ 3 * (m : ℝ) - lam := by linarith
  have hcoeff : 0 ≤ 2 * (lam : ℝ) - 3 * m := by linarith
  have hlogi : 0 ≤ log (i : ℝ) := Real.log_nonneg (by exact_mod_cast hi1)
  have hterm4 := mul_nonneg hcoeff hlogi
  have hterm5 : 0 ≤ (q : ℝ) * log 2 := mul_nonneg hqp.le (Real.log_pos (by norm_num)).le
  rw [him, hqm, hlm] at *
  nlinarith [hfact, hsf, hratio', hterm1, hterm2, hterm3, hterm4, hterm5]

end B699TailNormalization

#check @B699TailNormalization.factorial_normalization
#print axioms B699TailNormalization.normalization_log_constant
#print axioms B699TailNormalization.scaled_log_ratio_lower
#print axioms B699TailNormalization.factorial_normalization

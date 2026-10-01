import Mathlib.Analysis.SpecialFunctions.Log.Basic
import Mathlib.Data.Nat.Factorial.SuperFactorial
import Mathlib.Tactic.FieldSimp
import Mathlib.Tactic.Linarith
import Mathlib.Tactic.NormNum
import Mathlib.Tactic.Positivity
import Mathlib.Tactic.Ring

/-!
Uniform factorial and superfactorial bounds in Section 4.1 of the adopted
three-window normalization paper. Proof bodies use induction and the existing
elementary log inequalities, without assuming a Stirling estimate.
The original prime-part/window relation is connected separately.
-/
set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxHeartbeats 1600000

open Real
namespace B699TailFactorial

theorem log_step_upper {x : ℝ} (hx : 0 < x) :
    x * (log (x + 1) - log x) ≤ 1 := by
  have hx1 : 0 < x + 1 := by linarith
  have h := Real.log_le_sub_one_of_pos (div_pos hx1 hx)
  rw [Real.log_div hx1.ne' hx.ne'] at h
  have hm := mul_le_mul_of_nonneg_left h hx.le
  have heq : x * ((x + 1) / x - 1) = 1 := by
    field_simp [hx.ne']
    ring
  rwa [heq] at hm

theorem log_step_lower {x : ℝ} (hx : 0 < x) :
    1 ≤ (x + 1) * (log (x + 1) - log x) := by
  have hx1 : 0 < x + 1 := by linarith
  have h := Real.one_sub_inv_le_log_of_pos (div_pos hx1 hx)
  rw [Real.log_div hx1.ne' hx.ne'] at h
  have hm := mul_le_mul_of_nonneg_left h hx1.le
  have heq : (x + 1) * (1 - ((x + 1) / x)⁻¹) = 1 := by
    field_simp [hx.ne', hx1.ne']
    ring
  rwa [heq] at hm

/-- Both bounds hold for every positive natural index. -/
theorem log_factorial_bounds (n : ℕ) : 1 ≤ n →
    (n : ℝ) * log n - n + 1 ≤ log (n.factorial : ℝ) ∧
      log (n.factorial : ℝ) ≤ (n : ℝ) * log n - n + 1 + log n := by
  induction n with
  | zero => intro hn; omega
  | succ n ih =>
    intro hn
    by_cases hn0 : n = 0
    · subst n
      norm_num
    have hnp : (0 : ℝ) < n := by exact_mod_cast Nat.pos_of_ne_zero hn0
    obtain ⟨hlow, hupp⟩ := ih (by omega)
    have heq : log ((n + 1).factorial : ℝ) =
        log ((n : ℝ) + 1) + log (n.factorial : ℝ) := by
      rw [Nat.factorial_succ, Nat.cast_mul,
        Real.log_mul (by positivity) (by positivity)]
      simp only [Nat.cast_add, Nat.cast_one]
    simp only [Nat.cast_succ, Nat.cast_add, Nat.cast_one] at *
    rw [heq]
    constructor
    · have hs := log_step_upper hnp
      nlinarith [hlow, hs]
    · have hs := log_step_lower hnp
      nlinarith [hupp, hs]

theorem superFactorial_pos : ∀ n : ℕ, 0 < Nat.superFactorial n
  | 0 => by decide
  | n + 1 => by
    rw [Nat.superFactorial_succ]
    exact Nat.mul_pos (Nat.factorial_pos _) (superFactorial_pos n)

/-- Exact hyperfactorial lower bound used by the three-window normalization. -/
theorem log_superFactorial_lower (q : ℕ) : 1 ≤ q →
    (1 / 2 : ℝ) * q ^ 2 * log q - 3 / 4 * q ^ 2 + 1 / 2 * q + 1 / 4 ≤
      log (Nat.superFactorial q : ℝ) := by
  induction q with
  | zero => intro hq; omega
  | succ q ih =>
    intro hq
    by_cases hq0 : q = 0
    · subst q
      norm_num
    have hqp : (0 : ℝ) < q := by exact_mod_cast Nat.pos_of_ne_zero hq0
    have hrec := ih (by omega)
    have hfact := (log_factorial_bounds (q + 1) (by omega)).1
    have hstep := mul_le_mul_of_nonneg_left (log_step_upper hqp) hqp.le
    have hlog : 0 ≤ log ((q : ℝ) + 1) := Real.log_nonneg (by linarith)
    have heq : log (Nat.superFactorial (q + 1) : ℝ) =
        log ((q + 1).factorial : ℝ) + log (Nat.superFactorial q : ℝ) := by
      rw [Nat.superFactorial_succ, Nat.cast_mul,
        Real.log_mul (by positivity)
          (ne_of_gt (by exact_mod_cast superFactorial_pos q :
            (0 : ℝ) < Nat.superFactorial q))]
    simp only [Nat.cast_succ, Nat.cast_add, Nat.cast_one] at *
    rw [heq]
    nlinarith [hrec, hfact, hstep, hlog]

end B699TailFactorial

#check @B699TailFactorial.log_factorial_bounds
#check @B699TailFactorial.log_superFactorial_lower
#print axioms B699TailFactorial.log_factorial_bounds
#print axioms B699TailFactorial.log_superFactorial_lower

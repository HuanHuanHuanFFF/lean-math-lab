import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».experiments.«huan-zero-window-log-bridge-5e2d13bb».Window
import Mathlib.Data.Nat.Prime.Basic

/-! The actual natural factorizations supply the requested linear logarithm form.
Full exponents are accepted as given; no truncation, coprimality or log nonzero
premise is silently substituted for the actual window equalities. -/
set_option autoImplicit false
set_option relaxedAutoImplicit false

namespace Math.B699.ZeroBoundaryWindowLog

noncomputable def linearForm (A C p q x y : ℕ) : ℝ :=
  Real.log (A : ℝ) - Real.log (C : ℝ) +
    (x : ℝ) * Real.log (p : ℝ) - (y : ℝ) * Real.log (q : ℝ)

/-- The actual equality justifies Nat subtraction before the cast and log laws. -/
theorem factorized_window_log {n a A p x : ℕ}
    (hA : 1 ≤ A) (hp : 0 < p) (hactual : n = A * p ^ x + a) :
    Real.log ((n - a : ℕ) : ℝ) = Real.log (A : ℝ) + (x : ℝ) * Real.log (p : ℝ) := by
  have hsub : n - a = A * p ^ x := by omega
  have hAne : A ≠ 0 := by omega
  have hAR : (A : ℝ) ≠ 0 := by exact_mod_cast hAne
  have hpR : (p : ℝ) ≠ 0 := by exact_mod_cast (ne_of_gt hp)
  rw [hsub, Nat.cast_mul, Nat.cast_pow,
    Real.log_mul hAR (pow_ne_zero x hpR), Real.log_pow]

/-- Exact source alignment, including the coefficient quotient written as a log difference. -/
theorem actual_linear_form_eq {n a b A C p q x y : ℕ}
    (hA : 1 ≤ A) (hC : 1 ≤ C) (hp : 0 < p) (hq : 0 < q)
    (hfirst : n = A * p ^ x + a) (hsecond : n = C * q ^ y + b) :
    linearForm A C p q x y =
      Real.log ((n - a : ℕ) : ℝ) - Real.log ((n - b : ℕ) : ℝ) := by
  have hfirstLog := factorized_window_log hA hp hfirst
  have hsecondLog := factorized_window_log hC hq hsecond
  rw [hfirstLog, hsecondLog]
  unfold linearForm
  ring

/-- Complete actual-window consumer: neither a nonzero nor a log upper-bound premise remains. -/
theorem actual_linear_form_bounds {n a b A C p q x y : ℕ}
    (hn : 4096 < n) (ha : a < 34) (hb : b < 34) (hab : a ≠ b)
    (hA : 1 ≤ A) (hC : 1 ≤ C) (hp : Nat.Prime p) (hq : Nat.Prime q)
    (hfirst : n = A * p ^ x + a) (hsecond : n = C * q ^ y + b) :
    0 < |Real.log (A : ℝ) - Real.log (C : ℝ) +
      (x : ℝ) * Real.log (p : ℝ) - (y : ℝ) * Real.log (q : ℝ)| ∧
    |Real.log (A : ℝ) - Real.log (C : ℝ) +
      (x : ℝ) * Real.log (p : ℝ) - (y : ℝ) * Real.log (q : ℝ)| ≤
      33 / ((n : ℝ) - 33) ∧
    |Real.log (A : ℝ) - Real.log (C : ℝ) +
      (x : ℝ) * Real.log (p : ℝ) - (y : ℝ) * Real.log (q : ℝ)| < 128 / (n : ℝ) := by
  have hidentity := actual_linear_form_eq hA hC hp.pos hq.pos hfirst hsecond
  have hwindow := window_log_bounds hn ha hb hab
  rw [← hidentity] at hwindow
  simpa only [linearForm] using hwindow

end Math.B699.ZeroBoundaryWindowLog

#check (Math.B699.ZeroBoundaryWindowLog.linearForm : ℕ → ℕ → ℕ → ℕ → ℕ → ℕ → ℝ)
#check (Math.B699.ZeroBoundaryWindowLog.factorized_window_log :
  ∀ {n a A p x : ℕ}, 1 ≤ A → 0 < p → n = A * p ^ x + a →
    Real.log ((n - a : ℕ) : ℝ) = Real.log (A : ℝ) + (x : ℝ) * Real.log (p : ℝ))
#check (Math.B699.ZeroBoundaryWindowLog.actual_linear_form_eq :
  ∀ {n a b A C p q x y : ℕ}, 1 ≤ A → 1 ≤ C → 0 < p → 0 < q →
    n = A * p ^ x + a → n = C * q ^ y + b →
    Math.B699.ZeroBoundaryWindowLog.linearForm A C p q x y =
      Real.log ((n - a : ℕ) : ℝ) - Real.log ((n - b : ℕ) : ℝ))
#check (Math.B699.ZeroBoundaryWindowLog.actual_linear_form_bounds :
  ∀ {n a b A C p q x y : ℕ}, 4096 < n → a < 34 → b < 34 → a ≠ b →
    1 ≤ A → 1 ≤ C → Nat.Prime p → Nat.Prime q →
    n = A * p ^ x + a → n = C * q ^ y + b →
    0 < |Real.log (A : ℝ) - Real.log (C : ℝ) +
      (x : ℝ) * Real.log (p : ℝ) - (y : ℝ) * Real.log (q : ℝ)| ∧
    |Real.log (A : ℝ) - Real.log (C : ℝ) +
      (x : ℝ) * Real.log (p : ℝ) - (y : ℝ) * Real.log (q : ℝ)| ≤
      33 / ((n : ℝ) - 33) ∧
    |Real.log (A : ℝ) - Real.log (C : ℝ) +
      (x : ℝ) * Real.log (p : ℝ) - (y : ℝ) * Real.log (q : ℝ)| < 128 / (n : ℝ))
#print axioms Math.B699.ZeroBoundaryWindowLog.linearForm
#print axioms Math.B699.ZeroBoundaryWindowLog.factorized_window_log
#print axioms Math.B699.ZeroBoundaryWindowLog.actual_linear_form_eq
#print axioms Math.B699.ZeroBoundaryWindowLog.actual_linear_form_bounds
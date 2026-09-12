import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».experiments.«huan-zero-window-log-bridge-5e2d13bb».Elementary
import Mathlib.Tactic.NormNum
import Mathlib.Tactic.Omega

/-! Bounded offsets supply positive natural windows, nonzero log difference,
and its exact rational upper bound. Nat subtraction casts are justified locally. -/
set_option autoImplicit false
set_option relaxedAutoImplicit false

namespace Math.B699.ZeroBoundaryWindowLog

/-- Distinct offsets give distinct positive windows, hence distinct logarithms. -/
theorem window_log_ne_zero {n a b : ℕ} (ha : a < n) (hb : b < n) (hab : a ≠ b) :
    Real.log ((n - a : ℕ) : ℝ) - Real.log ((n - b : ℕ) : ℝ) ≠ 0 := by
  have hua : 0 < n - a := Nat.sub_pos_of_lt ha
  have hub : 0 < n - b := Nat.sub_pos_of_lt hb
  have huaR : (0 : ℝ) < ((n - a : ℕ) : ℝ) := by exact_mod_cast hua
  have hubR : (0 : ℝ) < ((n - b : ℕ) : ℝ) := by exact_mod_cast hub
  intro hzero
  have heqLog : Real.log ((n - a : ℕ) : ℝ) = Real.log ((n - b : ℕ) : ℝ) :=
    sub_eq_zero.mp hzero
  have heqWindow : ((n - a : ℕ) : ℝ) = ((n - b : ℕ) : ℝ) :=
    Real.log_injOn_pos (Set.mem_Ioi.mpr huaR) (Set.mem_Ioi.mpr hubR) heqLog
  rw [Nat.cast_sub ha.le, Nat.cast_sub hb.le] at heqWindow
  have heqCast : (a : ℝ) = (b : ℝ) := by linarith
  exact hab (by exact_mod_cast heqCast)

/-- This upper estimate includes equal offsets; nonzero is proved separately. -/
theorem window_log_abs_le {n a b : ℕ} (hn : 33 < n) (ha : a ≤ 33) (hb : b ≤ 33) :
    |Real.log ((n - a : ℕ) : ℝ) - Real.log ((n - b : ℕ) : ℝ)| ≤
      33 / ((n : ℝ) - 33) := by
  have haN : a ≤ n := by omega
  have hbN : b ≤ n := by omega
  have hnR : (33 : ℝ) < (n : ℝ) := by exact_mod_cast hn
  have haR : (a : ℝ) ≤ 33 := by exact_mod_cast ha
  have hbR : (b : ℝ) ≤ 33 := by exact_mod_cast hb
  have ha0 : (0 : ℝ) ≤ (a : ℝ) := Nat.cast_nonneg _
  have hb0 : (0 : ℝ) ≤ (b : ℝ) := Nat.cast_nonneg _
  have hlower : (0 : ℝ) < (n : ℝ) - 33 := by linarith
  have hlu : (n : ℝ) - 33 ≤ ((n - a : ℕ) : ℝ) := by
    rw [Nat.cast_sub haN]
    linarith
  have hlv : (n : ℝ) - 33 ≤ ((n - b : ℕ) : ℝ) := by
    rw [Nat.cast_sub hbN]
    linarith
  have hdiff : |((n - a : ℕ) : ℝ) - ((n - b : ℕ) : ℝ)| ≤ 33 := by
    rw [Nat.cast_sub haN, Nat.cast_sub hbN]
    exact abs_le.mpr ⟨by linarith, by linarith⟩
  exact abs_log_sub_log_le_of_lower_bound (hlower.trans_le hlu)
    (hlower.trans_le hlv) hlower hlu hlv hdiff

/-- The actual large-window regime supplies both nonzero and the strict local upper bound. -/
theorem window_log_bounds {n a b : ℕ}
    (hn : 4096 < n) (ha : a < 34) (hb : b < 34) (hab : a ≠ b) :
    0 < |Real.log ((n - a : ℕ) : ℝ) - Real.log ((n - b : ℕ) : ℝ)| ∧
    |Real.log ((n - a : ℕ) : ℝ) - Real.log ((n - b : ℕ) : ℝ)| ≤
      33 / ((n : ℝ) - 33) ∧
    |Real.log ((n - a : ℕ) : ℝ) - Real.log ((n - b : ℕ) : ℝ)| < 128 / (n : ℝ) := by
  have hnonzero := window_log_ne_zero (by omega : a < n) (by omega : b < n) hab
  have hupper := window_log_abs_le (by omega : 33 < n)
    (by omega : a ≤ 33) (by omega : b ≤ 33)
  have hnR : (4096 : ℝ) < (n : ℝ) := by exact_mod_cast hn
  have hnpos : (0 : ℝ) < (n : ℝ) := by linarith
  have hdenom : (0 : ℝ) < (n : ℝ) - 33 := by linarith
  have hstrict : (33 : ℝ) / ((n : ℝ) - 33) < 128 / (n : ℝ) := by
    apply (div_lt_div_iff₀ hdenom hnpos).mpr
    nlinarith
  exact ⟨abs_pos.mpr hnonzero, hupper, hupper.trans_lt hstrict⟩

end Math.B699.ZeroBoundaryWindowLog

#check (Math.B699.ZeroBoundaryWindowLog.window_log_ne_zero :
  ∀ {n a b : ℕ}, a < n → b < n → a ≠ b →
    Real.log ((n - a : ℕ) : ℝ) - Real.log ((n - b : ℕ) : ℝ) ≠ 0)
#check (Math.B699.ZeroBoundaryWindowLog.window_log_abs_le :
  ∀ {n a b : ℕ}, 33 < n → a ≤ 33 → b ≤ 33 →
    |Real.log ((n - a : ℕ) : ℝ) - Real.log ((n - b : ℕ) : ℝ)| ≤
      33 / ((n : ℝ) - 33))
#check (Math.B699.ZeroBoundaryWindowLog.window_log_bounds :
  ∀ {n a b : ℕ}, 4096 < n → a < 34 → b < 34 → a ≠ b →
    0 < |Real.log ((n - a : ℕ) : ℝ) - Real.log ((n - b : ℕ) : ℝ)| ∧
    |Real.log ((n - a : ℕ) : ℝ) - Real.log ((n - b : ℕ) : ℝ)| ≤
      33 / ((n : ℝ) - 33) ∧
    |Real.log ((n - a : ℕ) : ℝ) - Real.log ((n - b : ℕ) : ℝ)| < 128 / (n : ℝ))
#print axioms Math.B699.ZeroBoundaryWindowLog.window_log_ne_zero
#print axioms Math.B699.ZeroBoundaryWindowLog.window_log_abs_le
#print axioms Math.B699.ZeroBoundaryWindowLog.window_log_bounds
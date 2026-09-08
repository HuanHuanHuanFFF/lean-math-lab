import Mathlib.NumberTheory.Bertrand
import Mathlib.NumberTheory.SmoothNumbers

#check Nat

theorem number_theory_cache_smoke : ∀ n : ℕ, n ≤ n := by
  intro n
  exact le_rfl

/-- info: 'number_theory_cache_smoke' does not depend on any axioms -/
#guard_msgs in
#print axioms number_theory_cache_smoke

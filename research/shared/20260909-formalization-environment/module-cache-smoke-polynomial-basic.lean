import Mathlib.Analysis.Polynomial.Basic

#check Polynomial.degree
#check Polynomial.natDegree

theorem polynomial_basic_cache_smoke : ∀ n : ℕ, n ≤ n := by
  intro n
  exact le_rfl

/-- info: 'polynomial_basic_cache_smoke' does not depend on any axioms -/
#guard_msgs in
#print axioms polynomial_basic_cache_smoke

import research.tasks.«B686-Four».runs.«20260908-formalization-92c221».lean.shortgap.sylvester.SylvesterSchurSource

namespace B686SylvesterSchur

open Finset

set_option autoImplicit false

/-- Every nonempty block of consecutive integers strictly above its length
has a prime divisor larger than its length. -/
theorem sylvester_schur_product (N K : ℕ) (hK : 0 < K) (hKN : K < N) :
    ∃ p : ℕ, p.Prime ∧ K < p ∧ p ∣ (∏ i ∈ range K, (N + i)) := by
  obtain ⟨p, hp, hKp, hpchoose⟩ := Erdos699Formalization.sylvester_schur
    (N + K - 1) K (by omega) (by omega)
  refine ⟨p, hp, hKp, ?_⟩
  rw [← Nat.ascFactorial_eq_prod_range, Nat.ascFactorial_eq_factorial_mul_choose']
  exact dvd_mul_of_dvd_right hpchoose _

end B686SylvesterSchur

import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11SmallPrimes.Window
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11Cubic.CubicCofactors

/-! UNCOMPILED CANDIDATE. Strict capacity forces a bounded positive cofactor
and a positive actual exponent. M<n is retained exactly where needed. -/
set_option autoImplicit false
set_option relaxedAutoImplicit false
namespace B699LowIndex.I11BoundedCofactors
open B699LowIndex.I11SmallPrimes

theorem cofactor_lt_of_capacity {n M A X : ℕ}
    (hproduct : A * X ≤ n) (hlarge : n < M * X) : A < M := by
  exact Nat.lt_of_mul_lt_mul_right (Nat.lt_of_le_of_lt hproduct hlarge)

theorem exponent_pos_of_capacity {n M p e : ℕ}
    (hMn : M < n) (hlarge : n < M * p ^ e) : 0 < e := by
  apply Nat.pos_of_ne_zero
  intro heq
  rw [heq, Nat.pow_zero, Nat.mul_one] at hlarge
  omega

theorem actual_window_cofactor_lt {n M p : ℕ} (window : PrimeWindow n p)
    (hlarge : n < M * primeComponent n p) : window.cofactor < M := by
  apply cofactor_lt_of_capacity (X := primeComponent n p) (n := n)
  · rw [window.equation]
    exact Nat.sub_le n window.offset
  · exact hlarge

end B699LowIndex.I11BoundedCofactors
#print axioms B699LowIndex.I11BoundedCofactors.cofactor_lt_of_capacity
#print axioms B699LowIndex.I11BoundedCofactors.exponent_pos_of_capacity
#print axioms B699LowIndex.I11BoundedCofactors.actual_window_cofactor_lt

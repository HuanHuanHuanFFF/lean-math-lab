import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11SmallPrimes.Components
import research.tasks.«B699-Binomial».runs.«20260909-low-index-structure-b41a5a63».lean.SmallPrimeLocalization

/-!
UNCOMPILED CANDIDATE. Positive actual-component windows obtained from the
accepted full-binomial-plus-index localization theorem. Offsets may coincide.
-/

set_option autoImplicit false
set_option relaxedAutoImplicit false

namespace B699LowIndex.I11SmallPrimes

/-- Data at one numerator position; no p-free cofactor or distinctness is required. -/
structure PrimeWindow (n p : ℕ) where
  offset : ℕ
  cofactor : ℕ
  offset_lt : offset < 11
  cofactor_pos : 1 ≤ cofactor
  equation : cofactor * primeComponent n p = n - offset

theorem primeWindow_nonempty {n p : ℕ} (hn : 11 ≤ n) (hp : p.Prime) :
    Nonempty (PrimeWindow n p) := by
  obtain ⟨a, ha, hraw⟩ := binomial_prime_power_localization (by decide : 1 ≤ 11) hn hp
  have hsubpower : primeComponent n p ∣
      p ^ ((n.choose 11).factorization p + (11 : ℕ).factorization p) := by
    unfold primeComponent
    exact Nat.pow_dvd_pow p (by omega)
  have hdiv : primeComponent n p ∣ n - a := Nat.dvd_trans hsubpower hraw
  obtain ⟨C, hC⟩ := hdiv
  have hCpos : 0 < C := by
    apply Nat.pos_of_ne_zero
    intro hzero
    rw [hzero, Nat.mul_zero] at hC
    omega
  refine ⟨{ offset := a, cofactor := C, offset_lt := ha,
    cofactor_pos := by omega, equation := ?_ }⟩
  calc
    C * primeComponent n p = primeComponent n p * C := Nat.mul_comm _ _
    _ = n - a := Eq.symm hC

/-- The generic Nat implication used to move cofactor cuts to component capacities. -/
theorem component_power_mul_le {C A n Y weight exponent : ℕ}
    (hproduct : C * A ≤ n) (hcofactor : Y ^ weight ≤ C ^ exponent) :
    A ^ exponent * Y ^ weight ≤ n ^ exponent := by
  calc
    A ^ exponent * Y ^ weight ≤ A ^ exponent * C ^ exponent :=
      Nat.mul_le_mul_left _ hcofactor
    _ = (C * A) ^ exponent := by
      simpa only [Nat.mul_pow] using Nat.mul_comm (A ^ exponent) (C ^ exponent)
    _ ≤ n ^ exponent := Nat.pow_le_pow_left hproduct exponent

/-- Applied to an actual window, a cofactor cut gives the 1000-power Graph input. -/
theorem primeWindow_graph_capacity {n p Y weight : ℕ} (window : PrimeWindow n p)
    (hcofactor : Y ^ weight ≤ window.cofactor ^ 1000) :
    (primeComponent n p) ^ 1000 * Y ^ weight ≤ n ^ 1000 := by
  have hproduct : window.cofactor * primeComponent n p ≤ n := by
    rw [window.equation]
    exact Nat.sub_le n window.offset
  exact component_power_mul_le hproduct hcofactor

end B699LowIndex.I11SmallPrimes

#print axioms B699LowIndex.I11SmallPrimes.PrimeWindow
#print axioms B699LowIndex.I11SmallPrimes.primeWindow_nonempty
#print axioms B699LowIndex.I11SmallPrimes.component_power_mul_le
#print axioms B699LowIndex.I11SmallPrimes.primeWindow_graph_capacity

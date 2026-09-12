import research.tasks.«B699-Binomial».runs.«20260909-low-index-structure-b41a5a63».lean.LargeSmallPowers
import research.tasks.«B699-Binomial».runs.«20260909-low-index-structure-b41a5a63».lean.SmallPrimeLocalization

/-!
UNCOMPILED CANDIDATE. Positive actual-component windows obtained from the
accepted full-binomial-plus-index localization theorem. Offsets may coincide.
-/

set_option autoImplicit false
set_option relaxedAutoImplicit false

namespace B699LowIndex.I13CubicBridge

open B699LargePrimeStructure

def primeComponent (n p : ℕ) : ℕ := p ^ (n.choose 13).factorization p

theorem i13_small_primes :
    (Finset.range 13).filter Nat.Prime = ({2, 3, 5, 7, 11} : Finset ℕ) := by decide

/-- Data at one numerator position; no p-free cofactor or distinctness is required. -/
structure PrimeWindow (n p : ℕ) where
  offset : ℕ
  cofactor : ℕ
  offset_lt : offset < 13
  cofactor_pos : 1 ≤ cofactor
  equation : cofactor * primeComponent n p = n - offset

theorem primeWindow_nonempty {n p : ℕ} (hn : 13 ≤ n) (hp : p.Prime) :
    Nonempty (PrimeWindow n p) := by
  obtain ⟨a, ha, hraw⟩ := binomial_prime_power_localization (by decide : 1 ≤ 13) hn hp
  have hsubpower : primeComponent n p ∣
      p ^ ((n.choose 13).factorization p + (13 : ℕ).factorization p) := by
    unfold primeComponent
    exact Nat.pow_dvd_pow p (by omega)
  have hdiv : primeComponent n p ∣ n - a := Nat.dvd_trans hsubpower hraw
  obtain ⟨C, hC⟩ := hdiv
  have hCpos : 0 < C := by
    apply Nat.pos_of_ne_zero
    intro hzero
    rw [hzero, Nat.mul_zero] at hC
    omega
  refine ⟨{
    offset := a
    cofactor := C
    offset_lt := ha
    cofactor_pos := by omega
    equation := ?_ }⟩
  calc
    C * primeComponent n p = primeComponent n p * C := Nat.mul_comm _ _
    _ = n - a := Eq.symm hC

end B699LowIndex.I13CubicBridge

#print axioms B699LowIndex.I13CubicBridge.primeComponent

#print axioms B699LowIndex.I13CubicBridge.i13_small_primes

#print axioms B699LowIndex.I13CubicBridge.PrimeWindow

#print axioms B699LowIndex.I13CubicBridge.primeWindow_nonempty

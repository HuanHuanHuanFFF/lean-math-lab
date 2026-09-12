import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11SmallPrimes.Window
import Mathlib.Tactic.Ring

/-!
UNCOMPILED CANDIDATE. Four actual windows and the existing U are connected
without any pairwise-distinctness assumptions on their offsets or cofactors.
-/

set_option autoImplicit false
set_option relaxedAutoImplicit false

namespace B699LowIndex.I11SmallPrimes

open B699LargePrimeStructure

theorem smallPrimePart_mul_cofactors_eq (n : ℕ)
    (w2 : PrimeWindow n 2) (w3 : PrimeWindow n 3)
    (w5 : PrimeWindow n 5) (w7 : PrimeWindow n 7) :
    smallPrimePart n 11 * (w2.cofactor * w3.cofactor * w5.cofactor * w7.cofactor) =
      (n - w2.offset) * (n - w3.offset) * (n - w5.offset) * (n - w7.offset) := by
  rw [smallPrimePart_eq_four_components]
  calc
    _ = (w2.cofactor * primeComponent n 2) * (w3.cofactor * primeComponent n 3) *
        (w5.cofactor * primeComponent n 5) * (w7.cofactor * primeComponent n 7) := by ring
    _ = _ := by rw [w2.equation, w3.equation, w5.equation, w7.equation]

theorem smallPrimePart_mul_cofactors_le (n : ℕ)
    (w2 : PrimeWindow n 2) (w3 : PrimeWindow n 3)
    (w5 : PrimeWindow n 5) (w7 : PrimeWindow n 7) :
    smallPrimePart n 11 * (w2.cofactor * w3.cofactor * w5.cofactor * w7.cofactor) ≤ n ^ 4 := by
  rw [smallPrimePart_mul_cofactors_eq n w2 w3 w5 w7]
  calc
    _ ≤ n * n * n * n :=
      Nat.mul_le_mul
        (Nat.mul_le_mul
          (Nat.mul_le_mul (Nat.sub_le n w2.offset) (Nat.sub_le n w3.offset))
          (Nat.sub_le n w5.offset))
        (Nat.sub_le n w7.offset)
    _ = n ^ 4 := by ring

/-- All four witnesses exist for every n>=11; repeated offsets remain allowed. -/
theorem four_prime_windows (n : ℕ) (hn : 11 ≤ n) :
    ∃ w2 : PrimeWindow n 2, ∃ w3 : PrimeWindow n 3,
      ∃ w5 : PrimeWindow n 5, ∃ w7 : PrimeWindow n 7,
        smallPrimePart n 11 * (w2.cofactor * w3.cofactor * w5.cofactor * w7.cofactor) =
          (n - w2.offset) * (n - w3.offset) * (n - w5.offset) * (n - w7.offset) ∧
        smallPrimePart n 11 * (w2.cofactor * w3.cofactor * w5.cofactor * w7.cofactor) ≤ n ^ 4 := by
  obtain ⟨w2⟩ := primeWindow_nonempty hn (by decide : Nat.Prime 2)
  obtain ⟨w3⟩ := primeWindow_nonempty hn (by decide : Nat.Prime 3)
  obtain ⟨w5⟩ := primeWindow_nonempty hn (by decide : Nat.Prime 5)
  obtain ⟨w7⟩ := primeWindow_nonempty hn (by decide : Nat.Prime 7)
  exact ⟨w2, w3, w5, w7,
    smallPrimePart_mul_cofactors_eq n w2 w3 w5 w7,
    smallPrimePart_mul_cofactors_le n w2 w3 w5 w7⟩

end B699LowIndex.I11SmallPrimes

#print axioms B699LowIndex.I11SmallPrimes.smallPrimePart_mul_cofactors_eq
#print axioms B699LowIndex.I11SmallPrimes.smallPrimePart_mul_cofactors_le
#print axioms B699LowIndex.I11SmallPrimes.four_prime_windows

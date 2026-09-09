import Mathlib.Data.Nat.Prime.Basic
import Mathlib.Algebra.Ring.Parity

set_option autoImplicit false
set_option relaxedAutoImplicit false

namespace B699LargePrimeStructure

/-- The exact ten exceptional pairs in Laishram--Shorey (2012), Theorem 3. -/
def OddProgressionException (m k : ℕ) : Prop :=
  (m = 5 ∧ k = 2) ∨ (m = 7 ∧ k = 2) ∨ (m = 25 ∧ k = 2) ∨
  (m = 243 ∧ k = 2) ∨ (m = 9 ∧ k = 4) ∨ (m = 13 ∧ k = 5) ∨
  (m = 17 ∧ k = 6) ∨ (m = 15 ∧ k = 7) ∨ (m = 21 ∧ k = 8) ∨
  (m = 19 ∧ k = 9)

/--
The odd-progression part of Laishram--Shorey, *Irreducibility of generalized
Hermite-Laguerre polynomials*, Functiones et Approximatio 47 (2012), 51--64,
Theorem 3; consulted author version arXiv:1306.0745v1, page 2.

This is an explicit source hypothesis. The source bounds the largest prime
factor of `m * (m+2) * ... * (m+2*(k-1))`. The termwise existential below is
its equivalent prime-divisor formulation: a prime divides a finite product
exactly when it divides one of its factors. Both inequalities are strict;
`7*k < 2*p` is the exact rational bound `3.5*k < p`, and the branch condition
`2*m ≤ 5*k` is exactly `m ≤ 2.5*k`. The two implications select complementary
branches, with the same actual prime and progression term.
-/
def OddProgressionBound : Prop :=
  ∀ m k : ℕ, 2 ≤ k → Odd m → 2 * k < m →
    ¬ OddProgressionException m k →
    ∃ p r : ℕ, p.Prime ∧ r < k ∧ p ∣ m + 2 * r ∧
      (2 * m ≤ 5 * k → 7 * k < 2 * p) ∧
      (5 * k < 2 * m → 4 * k < p)

end B699LargePrimeStructure

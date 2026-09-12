import research.tasks.«B699-Binomial».runs.«20260909-low-index-structure-b41a5a63».lean.LargeSmallPowers

/-!
UNCOMPILED CANDIDATE. Concrete i11 instances of accepted actual-small-part APIs.
No product decomposition or prime-power size bound is assumed or re-proved.
-/

set_option autoImplicit false
set_option relaxedAutoImplicit false

namespace B699LowIndex.I11SmallPrimes

open B699LargePrimeStructure

/-- The actual complete binomial p-component, including the zero-valuation case. -/
def primeComponent (n p : ℕ) : ℕ := p ^ (n.choose 11).factorization p

theorem i11_small_primes :
    (Finset.range 11).filter Nat.Prime = ({2, 3, 5, 7} : Finset ℕ) := by decide

/-- The left side is the existing smallPrimePart, not a newly postulated product. -/
theorem smallPrimePart_eq_four_components (n : ℕ) :
    smallPrimePart n 11 =
      primeComponent n 2 * primeComponent n 3 * primeComponent n 5 * primeComponent n 7 := by
  rw [small_prime_part_eq_prod_small_primes, i11_small_primes]
  simp [primeComponent, Nat.mul_assoc]

theorem primeComponent_bounds {n p : ℕ} (hn : 11 ≤ n) (hp : p.Prime) :
    1 ≤ primeComponent n p ∧ primeComponent n p ≤ n := by
  constructor
  · have hpos : 0 < primeComponent n p := Nat.pow_pos (Nat.Prime.pos hp)
    omega
  · exact Nat.pow_factorization_choose_le (by omega : 0 < n)

theorem four_prime_components_bounds {n : ℕ} (hn : 11 ≤ n) :
    ∀ p ∈ ({2, 3, 5, 7} : Finset ℕ), 1 ≤ primeComponent n p ∧ primeComponent n p ≤ n := by
  intro p hp
  have hmem : p ∈ (Finset.range 11).filter Nat.Prime := by
    rw [i11_small_primes]
    exact hp
  exact primeComponent_bounds hn (Finset.mem_filter.mp hmem).2

end B699LowIndex.I11SmallPrimes

#print axioms B699LowIndex.I11SmallPrimes.primeComponent
#print axioms B699LowIndex.I11SmallPrimes.i11_small_primes
#print axioms B699LowIndex.I11SmallPrimes.smallPrimePart_eq_four_components
#print axioms B699LowIndex.I11SmallPrimes.primeComponent_bounds
#print axioms B699LowIndex.I11SmallPrimes.four_prime_components_bounds

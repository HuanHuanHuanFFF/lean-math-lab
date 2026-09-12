import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.C2FourIntervals.Product

/-! UNCOMPILED. Explicit types, definition bodies and transitive axioms. -/
set_option autoImplicit false
set_option relaxedAutoImplicit false
open scoped BigOperators
open Math.B699 Math.B699.C2FourIntervals

#check (@Math.B699.C2FourIntervals.intervalPrimes : ∀ (m j : ℕ),
  Finset ℕ)
#print axioms Math.B699.C2FourIntervals.intervalPrimes
#print Math.B699.C2FourIntervals.intervalPrimes

#check (@Math.B699.C2FourIntervals.fourPrimes : ∀ (m : ℕ),
  Finset ℕ)
#print axioms Math.B699.C2FourIntervals.fourPrimes
#print Math.B699.C2FourIntervals.fourPrimes

#check (@Math.B699.C2FourIntervals.p4 : ∀ (m : ℕ),
  ℕ)
#print axioms Math.B699.C2FourIntervals.p4
#print Math.B699.C2FourIntervals.p4

#check (@Math.B699.C2FourIntervals.mem_intervalPrimes_iff : ∀ (m j p : ℕ) (hj : 1 ≤ j),
  p ∈ intervalPrimes m j ↔
      p.Prime ∧ 4 * m < j * p ∧ 2 * j * p ≤ 9 * m - 2)
#print axioms Math.B699.C2FourIntervals.mem_intervalPrimes_iff

#check (@Math.B699.C2FourIntervals.intervalPrimes_subset : ∀ (m j : ℕ),
  intervalPrimes m j ⊆ C2Direct.primeSet (4 * m) (4 * m) m)
#print axioms Math.B699.C2FourIntervals.intervalPrimes_subset

#check (@Math.B699.C2FourIntervals.fourPrimes_subset : ∀ (m : ℕ),
  fourPrimes m ⊆ C2Direct.primeSet (4 * m) (4 * m) m)
#print axioms Math.B699.C2FourIntervals.fourPrimes_subset

#check (@Math.B699.C2FourIntervals.mem_fourPrimes_prime : ∀ (m p : ℕ) (hp : p ∈ fourPrimes m),
  p.Prime)
#print axioms Math.B699.C2FourIntervals.mem_fourPrimes_prime

#check (@Math.B699.C2FourIntervals.intervalPrimes_disjoint : ∀ (m j k : ℕ)
    (hm : 3 ≤ m) (hj : 1 ≤ j ∧ j ≤ 4) (hk : 1 ≤ k ∧ k ≤ 4)
    (hjk : j ≠ k),
  Disjoint (intervalPrimes m j) (intervalPrimes m k))
#print axioms Math.B699.C2FourIntervals.intervalPrimes_disjoint

#check (@Math.B699.C2FourIntervals.intervalPrimes_pairwise_disjoint : ∀ (m : ℕ) (hm : 3 ≤ m),
  Set.PairwiseDisjoint (↑(Finset.Icc 1 4) : Set ℕ) (intervalPrimes m))
#print axioms Math.B699.C2FourIntervals.intervalPrimes_pairwise_disjoint

#check (@Math.B699.C2FourIntervals.p4_eq_interval_products : ∀ (m : ℕ) (hm : 3 ≤ m),
  p4 m = ∏ j ∈ Finset.Icc 1 4, ∏ p ∈ intervalPrimes m j, p)
#print axioms Math.B699.C2FourIntervals.p4_eq_interval_products

#check (@Math.B699.C2FourIntervals.interval_prime_first_layer : ∀ (m j p : ℕ)
    (hm : 3 ≤ m) (hj : 1 ≤ j ∧ j ≤ 4) (hp : p ∈ intervalPrimes m j),
  C2Direct.layer (4 * m) (4 * m) m p = 1)
#print axioms Math.B699.C2FourIntervals.interval_prime_first_layer

#check (@Math.B699.C2FourIntervals.first_layer_mem_cutoff : ∀ (m p : ℕ) (hp : p ∈ fourPrimes m),
  1 ∈ Finset.Ico 1 (C2Direct.cutoff (4 * m) (4 * m) m p))
#print axioms Math.B699.C2FourIntervals.first_layer_mem_cutoff

#check (@Math.B699.C2FourIntervals.one_le_actual_exponent : ∀ (m p : ℕ) (hm : 3 ≤ m) (hp : p ∈ fourPrimes m),
  1 ≤ C2Direct.exponent (4 * m) (4 * m) m p)
#print axioms Math.B699.C2FourIntervals.one_le_actual_exponent

#check (@Math.B699.C2FourIntervals.p4_dvd_actual_c2 : ∀ (m : ℕ) (hm : 3 ≤ m),
  p4 m ∣ C2Direct.c2 (4 * m) (4 * m) m)
#print axioms Math.B699.C2FourIntervals.p4_dvd_actual_c2

#check (@Math.B699.C2FourIntervals.p4_pos : ∀ (m : ℕ),
  0 < p4 m)
#print axioms Math.B699.C2FourIntervals.p4_pos

#check (@Math.B699.C2FourIntervals.actual_c2_pos : ∀ (m : ℕ),
  0 < C2Direct.c2 (4 * m) (4 * m) m)
#print axioms Math.B699.C2FourIntervals.actual_c2_pos

#check (@Math.B699.C2FourIntervals.p4_le_actual_c2 : ∀ (m : ℕ) (hm : 3 ≤ m),
  p4 m ≤ C2Direct.c2 (4 * m) (4 * m) m)
#print axioms Math.B699.C2FourIntervals.p4_le_actual_c2

-- Inspect the unique adopted full-power N definition as part of this consumer audit.
#print Math.B699.C2Direct.layer
#print Math.B699.C2Direct.cutoff
#print Math.B699.C2Direct.exponent
#print Math.B699.C2Direct.primeSet
#print Math.B699.C2Direct.c2

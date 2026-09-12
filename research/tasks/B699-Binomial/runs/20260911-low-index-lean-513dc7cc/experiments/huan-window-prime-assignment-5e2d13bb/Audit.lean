import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».experiments.«huan-window-prime-assignment-5e2d13bb».Weighted

#check @Math.B699.WindowPrimeAssignment.product_dvd_of_pairwise_coprime
#print axioms Math.B699.WindowPrimeAssignment.product_dvd_of_pairwise_coprime
#check @Math.B699.WindowPrimeAssignment.primeSupport
#print axioms Math.B699.WindowPrimeAssignment.primeSupport
#check @Math.B699.WindowPrimeAssignment.primeComponent
#print axioms Math.B699.WindowPrimeAssignment.primeComponent
#check @Math.B699.WindowPrimeAssignment.assignedIndex
#print axioms Math.B699.WindowPrimeAssignment.assignedIndex
#check @Math.B699.WindowPrimeAssignment.choose_ne_zero
#print axioms Math.B699.WindowPrimeAssignment.choose_ne_zero
#check @Math.B699.WindowPrimeAssignment.supported_prime
#print axioms Math.B699.WindowPrimeAssignment.supported_prime
#check @Math.B699.WindowPrimeAssignment.supported_exponent_pos
#print axioms Math.B699.WindowPrimeAssignment.supported_exponent_pos
#check @Math.B699.WindowPrimeAssignment.component_pos
#print axioms Math.B699.WindowPrimeAssignment.component_pos
#check @Math.B699.WindowPrimeAssignment.components_coprime
#print axioms Math.B699.WindowPrimeAssignment.components_coprime
#check @Math.B699.WindowPrimeAssignment.assigned_index_spec
#print axioms Math.B699.WindowPrimeAssignment.assigned_index_spec
#check @Math.B699.WindowPrimeAssignment.component_dvd_assigned_window
#print axioms Math.B699.WindowPrimeAssignment.component_dvd_assigned_window
#check @Math.B699.WindowPrimeAssignment.components_product
#print axioms Math.B699.WindowPrimeAssignment.components_product
#check @Math.B699.WindowPrimeAssignment.assignedBlock
#print axioms Math.B699.WindowPrimeAssignment.assignedBlock
#check @Math.B699.WindowPrimeAssignment.block_pos
#print axioms Math.B699.WindowPrimeAssignment.block_pos
#check @Math.B699.WindowPrimeAssignment.block_dvd_window
#print axioms Math.B699.WindowPrimeAssignment.block_dvd_window
#check @Math.B699.WindowPrimeAssignment.blocks_coprime
#print axioms Math.B699.WindowPrimeAssignment.blocks_coprime
#check @Math.B699.WindowPrimeAssignment.blocks_product
#print axioms Math.B699.WindowPrimeAssignment.blocks_product
#check @Math.B699.WindowPrimeAssignment.windowRemainder
#print axioms Math.B699.WindowPrimeAssignment.windowRemainder
#check @Math.B699.WindowPrimeAssignment.window_pos
#print axioms Math.B699.WindowPrimeAssignment.window_pos
#check @Math.B699.WindowPrimeAssignment.remainder_mul_block
#print axioms Math.B699.WindowPrimeAssignment.remainder_mul_block
#check @Math.B699.WindowPrimeAssignment.remainder_pos
#print axioms Math.B699.WindowPrimeAssignment.remainder_pos
#check @Math.B699.WindowPrimeAssignment.remainder_ge_one
#print axioms Math.B699.WindowPrimeAssignment.remainder_ge_one
#check @Math.B699.WindowPrimeAssignment.numerator_window_product
#print axioms Math.B699.WindowPrimeAssignment.numerator_window_product
#check @Math.B699.WindowPrimeAssignment.remainders_product
#print axioms Math.B699.WindowPrimeAssignment.remainders_product
#check @Math.B699.WindowPrimeAssignment.actual_window_factorization
#print axioms Math.B699.WindowPrimeAssignment.actual_window_factorization
#check @Math.B699.WindowPrimeAssignment.weighted_remainders_le
#print axioms Math.B699.WindowPrimeAssignment.weighted_remainders_le
#check @Math.B699.WindowPrimeAssignment.thirteen_remainders_product
#print axioms Math.B699.WindowPrimeAssignment.thirteen_remainders_product
#check @Math.B699.WindowPrimeAssignment.thirteen_weighted_remainders_le
#print axioms Math.B699.WindowPrimeAssignment.thirteen_weighted_remainders_le
#check @Math.B699.WindowPrimeAssignment.thirteen_linear_weight_remainders_le
#print axioms Math.B699.WindowPrimeAssignment.thirteen_linear_weight_remainders_le

open scoped BigOperators
open Math.B699.WindowPrimeAssignment
#check (remainders_product : ∀ n k : ℕ, ∀ (hk : 1 ≤ k) (hkn : k ≤ n),
  (∏ r ∈ Finset.range k, windowRemainder n k hk hkn r) = k.factorial)
#check (weighted_remainders_le : ∀ n k : ℕ, ∀ (hk : 1 ≤ k) (hkn : k ≤ n),
  ∀ (w : ℕ → ℕ) (L : ℕ), (∀ r : ℕ, r < k → w r ≤ L) →
    (∏ r ∈ Finset.range k, windowRemainder n k hk hkn r ^ w r) ≤ k.factorial ^ L)

import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.WinAssign.Remainders

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

open scoped BigOperators
#check (Math.B699.WindowPrimeAssignment.remainders_product :
  ∀ n k : ℕ, ∀ (hk : 1 ≤ k) (hkn : k ≤ n),
    (∏ r ∈ Finset.range k,
      Math.B699.WindowPrimeAssignment.windowRemainder n k hk hkn r) = k.factorial)

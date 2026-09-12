import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.WinAssign.Weighted

#check @Math.B699.WindowPrimeAssignment.weighted_remainders_le
#print axioms Math.B699.WindowPrimeAssignment.weighted_remainders_le
#check @Math.B699.WindowPrimeAssignment.thirteen_remainders_product
#print axioms Math.B699.WindowPrimeAssignment.thirteen_remainders_product
#check @Math.B699.WindowPrimeAssignment.thirteen_weighted_remainders_le
#print axioms Math.B699.WindowPrimeAssignment.thirteen_weighted_remainders_le
#check @Math.B699.WindowPrimeAssignment.thirteen_linear_weight_remainders_le
#print axioms Math.B699.WindowPrimeAssignment.thirteen_linear_weight_remainders_le

open scoped BigOperators
#check (Math.B699.WindowPrimeAssignment.thirteen_linear_weight_remainders_le :
  ∀ n : ℕ, ∀ hn : 13 ≤ n,
    (∏ r ∈ Finset.range 13,
      Math.B699.WindowPrimeAssignment.windowRemainder n 13 (by decide) hn r ^ (16 - r)) ≤
        (Nat.factorial 13) ^ 16)

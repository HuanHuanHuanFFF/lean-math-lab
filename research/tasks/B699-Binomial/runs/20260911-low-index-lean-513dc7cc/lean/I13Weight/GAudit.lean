import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I13Weight.Generic

#check @Math.B699.I13WeightedTransfer.weightedComponents
#print axioms Math.B699.I13WeightedTransfer.weightedComponents
#check @Math.B699.I13WeightedTransfer.weighted_blocks_product
#print axioms Math.B699.I13WeightedTransfer.weighted_blocks_product
#check @Math.B699.I13WeightedTransfer.weighted_numerator_identity
#print axioms Math.B699.I13WeightedTransfer.weighted_numerator_identity
#check @Math.B699.I13WeightedTransfer.weighted_numerator_loss
#print axioms Math.B699.I13WeightedTransfer.weighted_numerator_loss
#check @Math.B699.I13WeightedTransfer.thirteen_numerator_loss
#print axioms Math.B699.I13WeightedTransfer.thirteen_numerator_loss

open scoped BigOperators
open Math.B699.I13WeightedTransfer
#check (weighted_numerator_identity : ∀ n k : ℕ, ∀ (hk : 1 ≤ k) (hkn : k ≤ n),
  ∀ w : ℕ → ℕ,
    (∏ r ∈ Finset.range k, (n - r) ^ w r) =
      (∏ r ∈ Finset.range k,
        Math.B699.WindowPrimeAssignment.windowRemainder n k hk hkn r ^ w r) *
          weightedComponents n k hk hkn w)

import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I13Weight.Transfer

#check @Math.B699.I13WeightedTransfer.largeWeightedProduct
#print axioms Math.B699.I13WeightedTransfer.largeWeightedProduct
#check @Math.B699.I13WeightedTransfer.actual_component_weight_dvd
#print axioms Math.B699.I13WeightedTransfer.actual_component_weight_dvd
#check @Math.B699.I13WeightedTransfer.actual_large_weighted_dvd
#print axioms Math.B699.I13WeightedTransfer.actual_large_weighted_dvd
#check @Math.B699.I13WeightedTransfer.actual_large_weighted_le_windows
#print axioms Math.B699.I13WeightedTransfer.actual_large_weighted_le_windows
#check @Math.B699.I13WeightedTransfer.actual_large_weighted_le_n72
#print axioms Math.B699.I13WeightedTransfer.actual_large_weighted_le_n72
#check @Math.B699.I13WeightedTransfer.actual_large_weighted_transfer
#print axioms Math.B699.I13WeightedTransfer.actual_large_weighted_transfer

open Math.B699.I13WeightedTransfer B699LargePrimeStructure
#check (actual_large_weighted_le_n72 : ∀ n j : ℕ,
  ∀ (hij : 13 < j) (hjn : j ≤ n / 2), ¬ Common n 13 j →
    largeWeightedProduct n (original_index_le hij hjn) ≤ n ^ 72)

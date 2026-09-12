import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I13Weight.Transfer

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
#check @Math.B699.I13WeightedTransfer.weightedWindow
#print axioms Math.B699.I13WeightedTransfer.weightedWindow
#check @Math.B699.I13WeightedTransfer.doubleWindow
#print axioms Math.B699.I13WeightedTransfer.doubleWindow
#check @Math.B699.I13WeightedTransfer.power_dvd_weighted_window
#print axioms Math.B699.I13WeightedTransfer.power_dvd_weighted_window
#check @Math.B699.I13WeightedTransfer.weighted_window_pos
#print axioms Math.B699.I13WeightedTransfer.weighted_window_pos
#check @Math.B699.I13WeightedTransfer.weighted_window_upper
#print axioms Math.B699.I13WeightedTransfer.weighted_window_upper
#check @Math.B699.I13WeightedTransfer.eight_weight_sum
#print axioms Math.B699.I13WeightedTransfer.eight_weight_sum
#check @Math.B699.I13WeightedTransfer.double_window_pos
#print axioms Math.B699.I13WeightedTransfer.double_window_pos
#check @Math.B699.I13WeightedTransfer.double_window_upper
#print axioms Math.B699.I13WeightedTransfer.double_window_upper
#check @Math.B699.I13WeightedTransfer.two_window_weight
#print axioms Math.B699.I13WeightedTransfer.two_window_weight
#check @Math.B699.I13WeightedTransfer.component_power_dvd_double_window
#print axioms Math.B699.I13WeightedTransfer.component_power_dvd_double_window
#check @Math.B699.I13WeightedTransfer.original_index_le
#print axioms Math.B699.I13WeightedTransfer.original_index_le
#check @Math.B699.I13WeightedTransfer.mod_eq_of_window_dvd
#print axioms Math.B699.I13WeightedTransfer.mod_eq_of_window_dvd
#check @Math.B699.I13WeightedTransfer.unique_window_position
#print axioms Math.B699.I13WeightedTransfer.unique_window_position
#check @Math.B699.I13WeightedTransfer.actual_transferred_positions
#print axioms Math.B699.I13WeightedTransfer.actual_transferred_positions
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

open scoped BigOperators
open Math.B699.I13WeightedTransfer B699LargePrimeStructure
#check (weighted_numerator_loss : ∀ n k : ℕ, ∀ (hk : 1 ≤ k) (hkn : k ≤ n),
  ∀ (w : ℕ → ℕ) (L : ℕ), (∀ r : ℕ, r < k → w r ≤ L) →
    (∏ r ∈ Finset.range k, (n - r) ^ w r) ≤
      k.factorial ^ L * weightedComponents n k hk hkn w)
#check (actual_large_weighted_dvd : ∀ n j : ℕ, ∀ (hij : 13 < j) (hjn : j ≤ n / 2),
  ¬ Common n 13 j →
    largeWeightedProduct n (original_index_le hij hjn) ∣ doubleWindow n j)
#check (actual_large_weighted_le_n72 : ∀ n j : ℕ, ∀ (hij : 13 < j) (hjn : j ≤ n / 2),
  ¬ Common n 13 j → largeWeightedProduct n (original_index_le hij hjn) ≤ n ^ 72)

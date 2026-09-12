import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.C2DirectDivisor.Convolution

/-! Uncompiled explicit-type, definition-body and transitive-axiom audit. -/
set_option autoImplicit false
set_option relaxedAutoImplicit false
open scoped BigOperators
open Math.B699.C2Direct
open Math.B699.PadeConstruction

#check (@Math.B699.C2Direct.choose_rearrange : ∀ (A C k r : ℕ) (hk : k ≤ C) (hr : r ≤ k),
  (A + C - r).choose A * (C - r).choose (k - r) =
      (A + C - k).choose A * (A + C - r).choose (k - r))
#print axioms Math.B699.C2Direct.choose_rearrange

#check (@Math.B699.C2Direct.shifted_convolution : ∀ (A B C k : ℕ) (hk : k ≤ C),
  (∑ r ∈ Finset.range (k + 1), (B + r).choose r * (A + C - r).choose (k - r)) =
      (A + B + C + 1).choose k)
#print axioms Math.B699.C2Direct.shifted_convolution

#check (@Math.B699.C2Direct.swapped_qMagnitude_convolution : ∀ (A B C k : ℕ) (hk : k ≤ C),
  (∑ r ∈ Finset.range (k + 1), qMagnitude C B A r * (C - r).choose (k - r)) =
      (A + C - k).choose A * (A + B + C + 1).choose k)
#print axioms Math.B699.C2Direct.swapped_qMagnitude_convolution

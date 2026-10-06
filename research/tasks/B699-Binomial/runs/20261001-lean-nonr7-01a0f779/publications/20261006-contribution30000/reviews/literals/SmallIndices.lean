import Frozen.small12

namespace Contribution.B699Independent.SmallIndices
set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxHeartbeats 1000000

theorem paired_exact : ∀ (n i j : _root_.Nat), 1 ≤ i → i ≤ 2 → i < j → j ≤ n / 2 → ∃ p : _root_.Nat, _root_.Nat.Prime p ∧ i ≤ p ∧ p ∣ _root_.Nat.choose n i ∧ p ∣ _root_.Nat.choose n j := by
  intro n i j hi hu hij hjn
  exact _root_.Contribution.B699Small.original hi hu hij hjn

end Contribution.B699Independent.SmallIndices

#print axioms Contribution.B699Small.original
#print axioms Contribution.B699Independent.SmallIndices.paired_exact

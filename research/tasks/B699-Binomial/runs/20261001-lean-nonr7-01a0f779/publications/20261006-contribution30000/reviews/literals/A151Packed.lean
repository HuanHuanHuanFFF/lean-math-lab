import Frozen.a151

namespace Contribution.B699Independent.A151Packed
set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxHeartbeats 1000000

theorem paired_exact : ∀ (n i j : _root_.Nat), (i = 29 ∨ (35 ≤ i ∧ i ≤ 184)) → i < j → j ≤ n / 2 → ∃ p : _root_.Nat, _root_.Nat.Prime p ∧ i ≤ p ∧ p ∣ _root_.Nat.choose n i ∧ p ∣ _root_.Nat.choose n j := by
  intro n i j hs hij hjn
  exact _root_.Contribution.B699A151Packed.N5.N8.N7.d32 hs hij hjn

end Contribution.B699Independent.A151Packed

#print axioms Contribution.B699A151Packed.N5.N8.N7.d32
#print axioms Contribution.B699Independent.A151Packed.paired_exact

import Frozen.high1000_30000

namespace Contribution.B699Independent.High1000_30000
set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxHeartbeats 1000000

theorem paired_exact : ∀ (n i j : _root_.Nat), 1000 ≤ i → i ≤ 30000 → i < j → j ≤ n / 2 → ∃ p : _root_.Nat, _root_.Nat.Prime p ∧ i ≤ p ∧ p ∣ _root_.Nat.choose n i ∧ p ∣ _root_.Nat.choose n j := by
  intro n i j hi hu hij hjn
  exact _root_.Contribution.Range.common_1000_30000 hi hu hij hjn

end Contribution.B699Independent.High1000_30000

#print axioms Contribution.Range.common_1000_30000
#print axioms Contribution.Range.common_gcd_1000_30000
#print axioms Contribution.B699Independent.High1000_30000.paired_exact

import Frozen.middle323_999

namespace Contribution.B699Independent.Middle323_999
set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxHeartbeats 1000000

theorem gcd_exact : ∀ (n i j : _root_.Nat), 323 ≤ i → i ≤ 999 → i < j → j ≤ n / 2 → ∃ p : _root_.Nat, _root_.Nat.Prime p ∧ i ≤ p ∧ p ∣ _root_.Nat.gcd (_root_.Nat.choose n i) (_root_.Nat.choose n j) := by
  intro n i j hi hu hij hjn
  exact _root_.Contribution.Middle323.common_323_999 hi hu hij hjn

theorem paired_exact : ∀ (n i j : _root_.Nat), 323 ≤ i → i ≤ 999 → i < j → j ≤ n / 2 → ∃ p : _root_.Nat, _root_.Nat.Prime p ∧ i ≤ p ∧ p ∣ _root_.Nat.choose n i ∧ p ∣ _root_.Nat.choose n j := by
  intro n i j hi hu hij hjn
  rcases gcd_exact n i j hi hu hij hjn with ⟨p, hp, hip, hg⟩
  exact ⟨p, hp, hip, _root_.dvd_trans hg (_root_.Nat.gcd_dvd_left _ _),
    _root_.dvd_trans hg (_root_.Nat.gcd_dvd_right _ _)⟩

end Contribution.B699Independent.Middle323_999

#print axioms Contribution.Middle323.common_323_999
#print axioms Contribution.B699Independent.Middle323_999.gcd_exact
#print axioms Contribution.B699Independent.Middle323_999.paired_exact

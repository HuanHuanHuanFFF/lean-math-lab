import Frozen.middle185_322

namespace Contribution.B699Independent.Middle185_322
set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxHeartbeats 1000000

theorem gcd_exact : ∀ (n i j : _root_.Nat), 185 ≤ i → i ≤ 322 → i < j → j ≤ n / 2 → ∃ p : _root_.Nat, _root_.Nat.Prime p ∧ i ≤ p ∧ p ∣ _root_.Nat.gcd (_root_.Nat.choose n i) (_root_.Nat.choose n j) := by
  intro n i j hi hu hij hjn
  exact _root_.Contribution.Middle185.common_185_322 hi hu hij hjn

theorem paired_exact : ∀ (n i j : _root_.Nat), 185 ≤ i → i ≤ 322 → i < j → j ≤ n / 2 → ∃ p : _root_.Nat, _root_.Nat.Prime p ∧ i ≤ p ∧ p ∣ _root_.Nat.choose n i ∧ p ∣ _root_.Nat.choose n j := by
  intro n i j hi hu hij hjn
  rcases gcd_exact n i j hi hu hij hjn with ⟨p, hp, hip, hg⟩
  exact ⟨p, hp, hip, _root_.dvd_trans hg (_root_.Nat.gcd_dvd_left _ _),
    _root_.dvd_trans hg (_root_.Nat.gcd_dvd_right _ _)⟩

end Contribution.B699Independent.Middle185_322

#print axioms Contribution.Middle185.common_185_322
#print axioms Contribution.B699Independent.Middle185_322.gcd_exact
#print axioms Contribution.B699Independent.Middle185_322.paired_exact

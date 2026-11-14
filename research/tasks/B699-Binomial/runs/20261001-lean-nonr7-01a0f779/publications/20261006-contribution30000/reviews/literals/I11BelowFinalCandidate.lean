import Frozen.i11_below

namespace Contribution.B699Independent.I11BelowFinalCandidate
set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxHeartbeats 1000000

theorem paired_exact : ∀ (n j : _root_.Nat), n < (2 : _root_.Nat) ^ 15360 → 11 < j → j ≤ n / 2 → ∃ p : _root_.Nat, _root_.Nat.Prime p ∧ 11 ≤ p ∧ p ∣ _root_.Nat.choose n 11 ∧ p ∣ _root_.Nat.choose n j := by
  intro n j hn hij hjn
  exact _root_.Contribution.B699I11BelowFinalCandidate.Math.B699.N9.d15 hn hij hjn

end Contribution.B699Independent.I11BelowFinalCandidate

#print axioms Contribution.B699I11BelowFinalCandidate.Math.B699.N9.d15
#print axioms Contribution.B699Independent.I11BelowFinalCandidate.paired_exact

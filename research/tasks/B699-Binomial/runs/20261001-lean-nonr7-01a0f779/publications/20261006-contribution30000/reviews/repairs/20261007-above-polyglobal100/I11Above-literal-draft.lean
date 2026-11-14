import Frozen.i11_above

namespace Contribution.B699Independent.I11AboveFinalCandidate
set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxHeartbeats 1000000

theorem paired_exact : ∀ (n j : _root_.Nat), (2 : _root_.Nat) ^ 15360 ≤ n → 11 < j → j ≤ n / 2 → ∃ p : _root_.Nat, _root_.Nat.Prime p ∧ 11 ≤ p ∧ p ∣ _root_.Nat.choose n 11 ∧ p ∣ _root_.Nat.choose n j := by
  intro n j hn hij hjn
  exact _root_.Contribution.B699I11AboveFinalCandidate.Math.B699.N14.d24 hn hij hjn

end Contribution.B699Independent.I11AboveFinalCandidate

#print axioms Contribution.B699I11AboveFinalCandidate.Math.B699.N14.d24
#print axioms Contribution.B699Independent.I11AboveFinalCandidate.paired_exact

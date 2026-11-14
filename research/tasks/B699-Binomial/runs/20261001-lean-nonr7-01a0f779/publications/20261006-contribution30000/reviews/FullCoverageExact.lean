import Audit.SmallIndices
import Audit.A151Packed
import Audit.I11AboveFinalCandidate
import Audit.I11BelowFinalCandidate
import Audit.Middle185_322
import Audit.Middle323_999
import Audit.High1000_30000

namespace Contribution.B699Independent.FullCoverage
set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxHeartbeats 1000000

/-- Verification only: the two artifact cases meet exactly at 2^15360. -/
theorem i11_all : ∀ (n j : _root_.Nat), 11 < j → j ≤ n / 2 →
    ∃ p : _root_.Nat, _root_.Nat.Prime p ∧ 11 ≤ p ∧
      p ∣ _root_.Nat.choose n 11 ∧ p ∣ _root_.Nat.choose n j := by
  intro n j hij hjn
  by_cases hn : n < (2 : _root_.Nat) ^ 15360
  · exact _root_.Contribution.B699Independent.I11BelowFinalCandidate.paired_exact n j hn hij hjn
  · exact _root_.Contribution.B699Independent.I11AboveFinalCandidate.paired_exact n j
      (_root_.Nat.le_of_not_gt hn) hij hjn

/-- Verification only: the exact complete S, with unrestricted legal n/j. -/
theorem all_S : ∀ (n i j : _root_.Nat),
    (i = 1 ∨ i = 2 ∨ i = 11 ∨ i = 29 ∨ (35 ≤ i ∧ i ≤ 30000)) →
    i < j → j ≤ n / 2 → ∃ p : _root_.Nat, _root_.Nat.Prime p ∧ i ≤ p ∧
      p ∣ _root_.Nat.choose n i ∧ p ∣ _root_.Nat.choose n j := by
  intro n i j hs hij hjn
  rcases hs with h1 | h2 | h11 | h29 | ⟨hl, hu⟩
  · subst i
    exact _root_.Contribution.B699Independent.SmallIndices.paired_exact n 1 j (by decide) (by decide) hij hjn
  · subst i
    exact _root_.Contribution.B699Independent.SmallIndices.paired_exact n 2 j (by decide) (by decide) hij hjn
  · subst i
    exact i11_all n j hij hjn
  · subst i
    exact _root_.Contribution.B699Independent.A151Packed.paired_exact n 29 j (Or.inl rfl) hij hjn
  · by_cases h184 : i ≤ 184
    · exact _root_.Contribution.B699Independent.A151Packed.paired_exact n i j (Or.inr ⟨hl, h184⟩) hij hjn
    · by_cases h322 : i ≤ 322
      · exact _root_.Contribution.B699Independent.Middle185_322.paired_exact n i j (by omega) h322 hij hjn
      · by_cases h999 : i ≤ 999
        · exact _root_.Contribution.B699Independent.Middle323_999.paired_exact n i j (by omega) h999 hij hjn
        · exact _root_.Contribution.B699Independent.High1000_30000.paired_exact n i j (by omega) hu hij hjn

end Contribution.B699Independent.FullCoverage

#print axioms Contribution.B699Independent.FullCoverage.i11_all
#print axioms Contribution.B699Independent.FullCoverage.all_S

import research.tasks.«B699-Binomial».runs.«20260910-large-index-lean-7c4e2a91».lean.Complete
set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option Elab.async false

/-- Direct transcription of this round's user-specified statement. -/
theorem B699LargeIndex.original_statement :
    ∀ n i j : ℕ, 1000 ≤ i → i ≤ 4882 → i < j → j ≤ n / 2 →
      ∃ p : ℕ, Nat.Prime p ∧ i ≤ p ∧ p ∣ Nat.choose n i ∧ p ∣ Nat.choose n j := by
  intro n i j hi hiUpper hij hjn
  exact B699LargeIndex.common_prime_dvd_both_1000_4882 hi hiUpper hij hjn

#check B699LargeIndex.original_statement
#print axioms B699LargeIndex.original_statement

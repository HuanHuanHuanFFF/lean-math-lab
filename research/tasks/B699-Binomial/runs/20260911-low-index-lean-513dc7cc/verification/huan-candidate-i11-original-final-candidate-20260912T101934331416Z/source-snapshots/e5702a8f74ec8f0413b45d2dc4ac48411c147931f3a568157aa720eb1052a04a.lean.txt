import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11OriginalFinal.Final


open B699LargePrimeStructure Math.B699.I11OriginalFinal

#check (@common_i11 : ∀ n j : ℕ, 11 < j → j ≤ n / 2 → Common n 11 j)
#check (original_i11_gcd : ∀ n j : ℕ, 1 ≤ 11 ∧ 11 < j ∧ j ≤ n / 2 →
  ∃ p : ℕ, p.Prime ∧ 11 ≤ p ∧ p ∣ Nat.gcd (Nat.choose n 11) (Nat.choose n j))
#check (original_i11 : ∀ n j : ℕ, 1 ≤ 11 ∧ 11 < j ∧ j ≤ n / 2 →
  ∃ p : ℕ, p.Prime ∧ 11 ≤ p ∧ p ∣ Nat.choose n 11 ∧ p ∣ Nat.choose n j)

#print axioms Math.B699.I11OriginalFinal.common_i11
#print axioms Math.B699.I11OriginalFinal.original_i11_gcd
#print axioms Math.B699.I11OriginalFinal.original_i11

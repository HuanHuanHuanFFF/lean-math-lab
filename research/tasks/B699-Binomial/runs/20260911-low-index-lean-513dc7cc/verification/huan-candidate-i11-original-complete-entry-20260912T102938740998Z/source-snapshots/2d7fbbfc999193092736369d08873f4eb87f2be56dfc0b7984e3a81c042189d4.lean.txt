import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11OriginalFinal.Final

/-! Public original i=11 entry. Acceptance is recorded by the run verifier. -/
set_option autoImplicit false
set_option relaxedAutoImplicit false
namespace Math.B699.HuanI11

theorem original :
    ∀ n j : ℕ, 1 ≤ 11 ∧ 11 < j ∧ j ≤ n / 2 →
      ∃ p : ℕ, p.Prime ∧ 11 ≤ p ∧ p ∣ Nat.choose n 11 ∧ p ∣ Nat.choose n j :=
  Math.B699.I11OriginalFinal.original_i11

end Math.B699.HuanI11

#check (Math.B699.HuanI11.original :
  ∀ n j : ℕ, 1 ≤ 11 ∧ 11 < j ∧ j ≤ n / 2 →
    ∃ p : ℕ, p.Prime ∧ 11 ≤ p ∧ p ∣ Nat.choose n 11 ∧ p ∣ Nat.choose n j)
#print axioms Math.B699.HuanI11.original

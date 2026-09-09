import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.HeightRows

set_option autoImplicit false
set_option relaxedAutoImplicit false
namespace B699Middle

/-- All legal n,j in an index interval, above the common height. -/
def TailRange (lo hi N : ℕ) : Prop :=
  ∀ n i j : ℕ, lo ≤ i → i ≤ hi → i < j → j ≤ n / 2 → N ≤ n →
    ∃ p : ℕ, p.Prime ∧ i ≤ p ∧ p ∣ Nat.gcd (n.choose i) (n.choose j)

theorem tailRange_singleton {i r s N : ℕ} (hc : HeightValid i r s N) :
    TailRange i i N := by
  intro n k j hlo hhi hij hjn hN
  have hk : k = i := Nat.le_antisymm hhi hlo
  subst k
  exact common_of_valid_height (i := i) (r := r) (s := s) (N := N) hc hij hjn hN

theorem tailRange_combine {lo mid hi N : ℕ}
    (hleft : TailRange lo mid N) (hright : TailRange (mid + 1) hi N) :
    TailRange lo hi N := by
  intro n i j hlo hhi hij hjn hN
  by_cases hm : i ≤ mid
  · exact hleft n i j hlo hm hij hjn hN
  · exact hright n i j (by omega) hhi hij hjn hN

end B699Middle
#print axioms B699Middle.tailRange_singleton
#print axioms B699Middle.tailRange_combine

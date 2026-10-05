import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.extension.primeChain.Complete

/-! Exact historical-source specialization. Not accepted until the historical
object closure is available and this literal wrapper is actually checked. -/
set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option Elab.async false
namespace B699FiniteSemantic

theorem old_finite_original_4883 :
    ∀ n i j : Nat, 4883 ≤ i → i < j → j ≤ n / 2 → n ≤ 20000000 →
      ∃ p : Nat, p.Prime ∧ i ≤ p ∧ p ∣ n.choose i ∧ p ∣ n.choose j := by
  intro n i j hi hij hjn hn
  obtain ⟨p, hp, hip, hgcd⟩ :=
    B699MiddleExtension.common_le_twenty_million (by omega : 185 ≤ i) hij hjn hn
  exact ⟨p, hp, hip, dvd_trans hgcd (Nat.gcd_dvd_left _ _),
    dvd_trans hgcd (Nat.gcd_dvd_right _ _)⟩

end B699FiniteSemantic
#print B699FiniteSemantic.old_finite_original_4883
#print axioms B699FiniteSemantic.old_finite_original_4883

import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.AllHeights
import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.primeChain.Complete

set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option Elab.async false
set_option maxRecDepth 65536

namespace B699Middle
/-- The raw original statement for all 677 indices, with no certificate assumptions. -/
theorem common_323_999 {n i j : ℕ}
    (hi : 323 ≤ i) (hi999 : i ≤ 999) (hij : i < j) (hjn : j ≤ n / 2) :
    ∃ p : ℕ, p.Prime ∧ i ≤ p ∧ p ∣ Nat.gcd (n.choose i) (n.choose j) := by
  by_cases hn : n ≤ 2000000
  · exact B699MiddleIndex.common_le_two_million hi hij hjn hn
  · exact AllHeights.coverage n i j hi hi999 hij hjn (by omega)

end B699Middle

#check @B699Middle.common_323_999
#print axioms B699Middle.common_323_999

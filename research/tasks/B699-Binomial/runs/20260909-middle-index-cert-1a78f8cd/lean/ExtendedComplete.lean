import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.MiddleComplete
import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.extension.AllExtensionHeights
import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.extension.primeChain.Complete

set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option Elab.async false
set_option maxRecDepth 65536
set_option maxHeartbeats 0

namespace B699Middle
/-- All815 indices, with the original n,i,j quantifiers and no certificate hypotheses. -/
theorem common_185_999 {n i j : ℕ}
    (hi : 185 ≤ i) (hi999 : i ≤ 999) (hij : i < j) (hjn : j ≤ n / 2) :
    ∃ p : ℕ, p.Prime ∧ i ≤ p ∧ p ∣ Nat.gcd (n.choose i) (n.choose j) := by
  by_cases h323 : 323 ≤ i
  · exact common_323_999 h323 hi999 hij hjn
  · by_cases hn : n ≤ 20000000
    · exact B699MiddleExtension.common_le_twenty_million hi hij hjn hn
    · exact B699MiddleExtension.AllHeights.coverage n i j hi (by omega) hij hjn (by omega)

end B699Middle
#check @B699Middle.common_185_999
#print axioms B699Middle.common_185_999

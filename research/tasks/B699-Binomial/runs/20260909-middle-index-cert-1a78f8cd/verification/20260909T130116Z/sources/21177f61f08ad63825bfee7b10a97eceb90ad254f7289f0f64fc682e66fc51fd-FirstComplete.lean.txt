import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.primeChain.Complete
import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.heightRows.CertifiedHeight323

set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option Elab.async false
set_option maxRecDepth 65536
namespace B699Middle
/-- First complete fixed-index consumer, including every legal n and j. -/
theorem common_323 {n j : ℕ} (hij : 323 < j) (hjn : j ≤ n / 2) :
    ∃ p : ℕ, p.Prime ∧ 323 ≤ p ∧ p ∣ Nat.gcd (n.choose 323) (n.choose j) := by
  by_cases hn : n ≤ 2000000
  · exact B699MiddleIndex.common_le_two_million (by decide) hij hjn hn
  · exact tail_323_certified hij hjn (by omega)
end B699Middle
#check @B699Middle.common_323
#print axioms B699Middle.common_323

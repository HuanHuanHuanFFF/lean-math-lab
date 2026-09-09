import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.primeChain.Core
import research.tasks.«B699-Binomial».runs.«20260909-large-prime-structure-cb4764f0».lean.GapBridge

set_option autoImplicit false
set_option relaxedAutoImplicit false

/-!
# The finite-n consumer for a shared positive prime chain

Only the abstract chain is a certificate assumption here. A concrete accepted
chain must remove this assumption before the bounded-n conclusion is accepted.
-/

namespace B699MiddleIndex

/-- The supplied chain simultaneously covers every legal j in its row interval. -/
theorem common_of_prime_chain {gap lo upper n i j : ℕ}
    (hchain : PrimeChain gap lo upper) (hgap : gap ≤ i)
    (hlo : lo ≤ n) (hhi : n < upper) (hi : 1 ≤ i)
    (hij : i < j) (hjn : j ≤ n / 2) :
    ∃ p : ℕ, p.Prime ∧ i ≤ p ∧ p ∣ Nat.gcd (n.choose i) (n.choose j) := by
  obtain ⟨p, hp, hpn, hnpg⟩ := hchain.near_top hlo hhi
  have hin : i ≤ n := by omega
  exact B699LargePrimeStructure.common_of_top_prime hi hij hjn hp (by omega) hpn

/-- Exact finite-n target, with no upper bound on i.
The chain has a prime beyond 2,000,000, not merely at that bound. -/
theorem common_le_two_million_of_chain
    (hchain : PrimeChain 322 2 2000003) {n i j : ℕ}
    (hi : 323 ≤ i) (hij : i < j) (hjn : j ≤ n / 2) (hn : n ≤ 2000000) :
    ∃ p : ℕ, p.Prime ∧ i ≤ p ∧ p ∣ Nat.gcd (n.choose i) (n.choose j) := by
  exact common_of_prime_chain hchain (by omega) (by omega) (by omega)
    (by omega) hij hjn

end B699MiddleIndex

#print axioms B699MiddleIndex.common_of_prime_chain
#print axioms B699MiddleIndex.common_le_two_million_of_chain

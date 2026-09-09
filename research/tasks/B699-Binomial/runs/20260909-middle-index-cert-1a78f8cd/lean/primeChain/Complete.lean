import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.PrimeChain
import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.primeChain.AllBlocks

set_option Elab.async false
set_option autoImplicit false
set_option relaxedAutoImplicit false

namespace B699MiddleIndex

theorem two_million_prime_chain : PrimeChain 322 2 2000003 := AllPrimeBlocks.joined

/-- The entire finite-n piece, with no certificate truth assumptions. -/
theorem common_le_two_million {n i j : Nat}
    (hi : 323 ≤ i) (hij : i < j) (hjn : j ≤ n / 2) (hn : n ≤ 2000000) :
    ∃ p : Nat, p.Prime ∧ i ≤ p ∧ p ∣ Nat.gcd (n.choose i) (n.choose j) := by
  exact common_le_two_million_of_chain two_million_prime_chain hi hij hjn hn

end B699MiddleIndex

#print axioms B699MiddleIndex.two_million_prime_chain
#print axioms B699MiddleIndex.common_le_two_million

import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.extension.primeChain.AllBlocks

set_option Elab.async false
set_option autoImplicit false
set_option relaxedAutoImplicit false

namespace B699MiddleExtension

theorem twenty_million_prime_chain : B699MiddleIndex.PrimeChain 184 2 20000093 :=
  PrimorialAllBlocks.joined

/-- Full finite-n part of the original B699 target, with no certificate premises. -/
theorem common_le_twenty_million {n i j : Nat}
    (hi : 185 ≤ i) (hij : i < j) (hjn : j ≤ n / 2) (hn : n ≤ 20000000) :
    ∃ p : Nat, p.Prime ∧ i ≤ p ∧ p ∣ Nat.gcd (n.choose i) (n.choose j) := by
  exact B699MiddleIndex.common_of_prime_chain twenty_million_prime_chain (by omega)
    (by omega) (by omega) (by omega) hij hjn

end B699MiddleExtension

#print axioms B699MiddleExtension.twenty_million_prime_chain
#print axioms B699MiddleExtension.common_le_twenty_million

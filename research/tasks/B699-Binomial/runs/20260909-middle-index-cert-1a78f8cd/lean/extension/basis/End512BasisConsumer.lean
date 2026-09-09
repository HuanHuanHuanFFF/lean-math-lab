import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.extension.basis.End512Basis

set_option Elab.async false
set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 8192
set_option maxHeartbeats 4000000

namespace B699MiddleExtension

theorem common_of_last512_basis_edges {n i j : Nat}
    (hi : 185 ≤ i) (hij : i < j) (hjn : j ≤ n / 2)
    (hnlo : 19912523 ≤ n) (hnhi : n ≤ 20000000) :
    ∃ p : Nat, p.Prime ∧ i ≤ p ∧ p ∣ Nat.gcd (n.choose i) (n.choose j) := by
  exact B699MiddleIndex.common_of_prime_chain End512Basis.joined (by omega) hnlo (by omega)
    (by omega) hij hjn

end B699MiddleExtension

#print axioms B699MiddleExtension.common_of_last512_basis_edges

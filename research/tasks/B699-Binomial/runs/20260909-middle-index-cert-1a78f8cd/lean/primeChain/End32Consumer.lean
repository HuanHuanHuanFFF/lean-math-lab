import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.PrimeChain
import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.primeChain.End32NormNum

set_option autoImplicit false
set_option relaxedAutoImplicit false

namespace B699MiddleIndex

/-- Concrete final block and its two-block gluing, connected to the raw target.
This covers only the displayed rows, not all rows up to two million. -/
theorem common_of_last32_prime_edges {n i j : Nat}
    (hi : 323 ≤ i) (hij : i < j) (hjn : j ≤ n / 2)
    (hnlo : 1994387 ≤ n) (hnhi : n ≤ 2000000) :
    ∃ p : Nat, p.Prime ∧ i ≤ p ∧ p ∣ Nat.gcd (n.choose i) (n.choose j) := by
  exact common_of_prime_chain EndBlockNormNum.joined (by omega) hnlo (by omega)
    (by omega) hij hjn

end B699MiddleIndex

#print axioms B699MiddleIndex.common_of_last32_prime_edges

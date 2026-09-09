import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.PrimeChain
import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.primeChain.End256NormNum

set_option autoImplicit false
set_option relaxedAutoImplicit false

namespace B699MiddleIndex

/-- The concrete finite row interval, with all original legal second indices. -/
theorem common_of_last256_prime_edges {n i j : Nat}
    (hi : 323 ≤ i) (hij : i < j) (hjn : j ≤ n / 2)
    (hnlo : 1953451 ≤ n) (hnhi : n ≤ 2000000) :
    ∃ p : Nat, p.Prime ∧ i ≤ p ∧ p ∣ Nat.gcd (n.choose i) (n.choose j) := by
  exact common_of_prime_chain End256NormNum.joined (by omega) hnlo (by omega)
    (by omega) hij hjn

end B699MiddleIndex

#print axioms B699MiddleIndex.common_of_last256_prime_edges

import research.tasks.«B699-Binomial».runs.«20260910-large-index-lean-7c4e2a91».lean.AllBlocks
import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.extension.primeChain.Complete

set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option Elab.async false

namespace B699LargeIndex

/-- The complete original target on 1000..4882, with no bound on n or j.
The prime threshold is inclusive. There are no certificate or source-theorem premises. -/
theorem common_1000_4882 {n i j : ℕ}
    (hi : 1000 ≤ i) (hiUpper : i ≤ 4882) (hij : i < j) (hjn : j ≤ n / 2) :
    ∃ p : ℕ, p.Prime ∧ i ≤ p ∧ p ∣ Nat.gcd (n.choose i) (n.choose j) := by
  by_cases hn : n ≤ 20000000
  · exact B699MiddleExtension.common_le_twenty_million (by omega) hij hjn hn
  · exact tail_1000_4882 n i j hi hiUpper hij hjn (by omega)

/-- The same conclusion stated as simultaneous divisibility of the two binomials. -/
theorem common_prime_dvd_both_1000_4882 {n i j : ℕ}
    (hi : 1000 ≤ i) (hiUpper : i ≤ 4882) (hij : i < j) (hjn : j ≤ n / 2) :
    ∃ p : ℕ, p.Prime ∧ i ≤ p ∧ p ∣ n.choose i ∧ p ∣ n.choose j := by
  rcases common_1000_4882 hi hiUpper hij hjn with ⟨p, hp, hip, hdiv⟩
  exact ⟨p, hp, hip, Nat.dvd_of_dvd_gcd_left hdiv, Nat.dvd_of_dvd_gcd_right hdiv⟩
end B699LargeIndex

#check @B699LargeIndex.common_1000_4882
#check @B699LargeIndex.common_prime_dvd_both_1000_4882
#print axioms B699LargeIndex.common_1000_4882
#print axioms B699LargeIndex.common_prime_dvd_both_1000_4882

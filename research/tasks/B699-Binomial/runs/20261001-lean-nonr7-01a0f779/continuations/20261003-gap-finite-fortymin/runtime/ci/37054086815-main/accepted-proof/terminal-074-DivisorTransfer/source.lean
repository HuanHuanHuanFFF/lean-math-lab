import Mathlib.Data.Nat.Choose.Basic
import Mathlib.Data.Nat.Factorization.Basic
import Mathlib.Data.Nat.GCD.BigOperators

set_option autoImplicit false
set_option relaxedAutoImplicit false

namespace B699BridgeAudit

/-- The binomial identity transfers any coprime divisor to the small binomial. -/
theorem divisor_transfer {n i j D : ℕ} (hij : i ≤ j) (_hjn : j ≤ n)
    (hD : D ∣ n.choose i) (hcop : D.Coprime (n.choose j)) :
    D ∣ j.choose i := by
  apply hcop.dvd_of_dvd_mul_left
  rw [Nat.choose_mul hij]
  exact dvd_mul_of_dvd_left hD _

/-- Includes each full prime power with p >= threshold; the endpoint is intentional. -/
def primePart (threshold a : ℕ) : ℕ :=
  (a.primeFactors.filter (fun p ↦ threshold ≤ p)).prod (fun p ↦ p ^ a.factorization p)

theorem prime_part_dvd {threshold a : ℕ} (ha : a ≠ 0) : primePart threshold a ∣ a := by
  unfold primePart
  calc
    _ ∣ a.primeFactors.prod (fun p ↦ p ^ a.factorization p) :=
      Finset.prod_dvd_prod_of_subset _ _ _ (Finset.filter_subset _ _)
    _ = a := (Nat.prod_primeFactors_pow_factorization ha).symm

theorem prime_part_coprime_of_no_common {threshold a b : ℕ}
    (h : ¬ ∃ p, p.Prime ∧ threshold ≤ p ∧ p ∣ a ∧ p ∣ b) :
    (primePart threshold a).Coprime b := by
  unfold primePart
  apply Nat.coprime_prod_left_iff.mpr
  intro p hp
  obtain ⟨hpa, hpt⟩ := Finset.mem_filter.mp hp
  have hprime := Nat.prime_of_mem_primeFactors hpa
  apply Nat.Coprime.pow_left
  apply hprime.coprime_iff_not_dvd.mpr
  intro hpb
  exact h ⟨p, hprime, hpt, Nat.dvd_of_mem_primeFactors hpa, hpb⟩

/-- Actual B699 transfer T, with the full prime >= i part, not an abstract surrogate. -/
theorem actual_prime_part_transfer {n i j : ℕ} (hij : i ≤ j) (hjn : j ≤ n)
    (h : ¬ ∃ p, p.Prime ∧ i ≤ p ∧ p ∣ n.choose i ∧ p ∣ n.choose j) :
    primePart i (n.choose i) ∣ j.choose i := by
  apply divisor_transfer hij hjn
  · exact prime_part_dvd (Nat.ne_of_gt (Nat.choose_pos (hij.trans hjn)))
  · exact prime_part_coprime_of_no_common h

#print axioms divisor_transfer
#print axioms prime_part_dvd
#print axioms prime_part_coprime_of_no_common
#print axioms actual_prime_part_transfer

end B699BridgeAudit

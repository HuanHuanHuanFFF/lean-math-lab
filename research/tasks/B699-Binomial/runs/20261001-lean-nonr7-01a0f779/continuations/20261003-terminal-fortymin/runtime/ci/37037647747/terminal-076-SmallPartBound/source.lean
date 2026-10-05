import research.tasks.«B699-Binomial».runs.«20260909-large-prime-structure-cb4764f0».lean.PrimePowerTransfer
import Mathlib.Algebra.Order.BigOperators.Group.Finset

set_option autoImplicit false
set_option relaxedAutoImplicit false

namespace B699LargePrimeStructure

/-- The number of primes strictly below i; this is pi(i-1), with no endpoint shift. -/
def smallPrimeCount (i : ℕ) : ℕ := ((Finset.range i).filter Nat.Prime).card

/-- The complete complementary prime-power part of the first binomial. -/
def smallPrimePart (n i : ℕ) : ℕ :=
  ((n.choose i).primeFactors.filter (fun p ↦ p < i)).prod
    (fun p ↦ p ^ (n.choose i).factorization p)

/-- The small and large parts reconstruct the actual nonzero binomial. -/
theorem smallPrimePart_mul_primePart {n i : ℕ} (hin : i ≤ n) :
    smallPrimePart n i * B699BridgeAudit.primePart i (n.choose i) = n.choose i := by
  classical
  unfold smallPrimePart B699BridgeAudit.primePart
  calc
    _ = (n.choose i).primeFactors.prod (fun p ↦ p ^ (n.choose i).factorization p) := by
      simpa only [Nat.not_lt] using Finset.prod_filter_mul_prod_filter_not
        (n.choose i).primeFactors (fun p ↦ p < i)
        (fun p ↦ p ^ (n.choose i).factorization p)
    _ = n.choose i :=
      (Nat.prod_primeFactors_pow_factorization (Nat.ne_of_gt (Nat.choose_pos hin))).symm

/-- Each small-prime power is at most n by the existing Kummer logarithmic bound. -/
theorem smallPrimePart_le_pow_smallPrimeCount {n i : ℕ} (hn : 0 < n) :
    smallPrimePart n i ≤ n ^ smallPrimeCount i := by
  classical
  let S := (n.choose i).primeFactors.filter (fun p ↦ p < i)
  have hsub : S ⊆ (Finset.range i).filter Nat.Prime := by
    intro p hp
    obtain ⟨hmem, hpi⟩ := Finset.mem_filter.mp hp
    exact Finset.mem_filter.mpr ⟨Finset.mem_range.mpr hpi,
      Nat.prime_of_mem_primeFactors hmem⟩
  have hprod : S.prod (fun p ↦ p ^ (n.choose i).factorization p) ≤ n ^ S.card :=
    Finset.prod_le_pow_card S _ n (fun _ _ ↦ Nat.pow_factorization_choose_le hn)
  exact hprod.trans (pow_le_pow_right' (by omega : 1 ≤ n) (Finset.card_le_card hsub))

/-- A source-independent size obstruction using the elementary small-prime bound.
This does not use EEES or any analytic prime-distribution assumption. -/
theorem noCommon_choose_le_smallPrime_gap_bound {n i j : ℕ}
    (hi : 2 ≤ i) (hij : i < j) (hjn : j ≤ n / 2) (hdi : i ≤ n - 2 * j)
    (hno : ¬ Common n i j) :
    n.choose i ≤ n ^ smallPrimeCount i *
      ((n - 2 * j).choose i * (n - 2 * j + i - 1).choose (i - 1)) := by
  have hin : i ≤ n := by omega
  have hn : 0 < n := by omega
  have hB : 0 < (n - 2 * j).choose i * (n - 2 * j + i - 1).choose (i - 1) :=
    Nat.mul_pos (Nat.choose_pos hdi) (Nat.choose_pos (by omega))
  have hlarge := actual_prime_part_gap_transfer hi hij hjn hdi hno
  calc
    n.choose i = smallPrimePart n i * B699BridgeAudit.primePart i (n.choose i) :=
      (smallPrimePart_mul_primePart hin).symm
    _ ≤ _ := Nat.mul_le_mul (smallPrimePart_le_pow_smallPrimeCount hn)
      (Nat.le_of_dvd hB hlarge)

/-- The elementary size comparison produces an original B699 common prime. -/
theorem common_of_elementary_gap_comparison {n i j : ℕ}
    (hi : 2 ≤ i) (hij : i < j) (hjn : j ≤ n / 2) (hdi : i ≤ n - 2 * j)
    (hcompare : n ^ smallPrimeCount i *
      ((n - 2 * j).choose i * (n - 2 * j + i - 1).choose (i - 1)) < n.choose i) :
    Common n i j := by
  by_contra hno
  exact (Nat.not_le_of_gt hcompare)
    (noCommon_choose_le_smallPrime_gap_bound hi hij hjn hdi hno)
end B699LargePrimeStructure

#print axioms B699LargePrimeStructure.smallPrimePart_mul_primePart
#print axioms B699LargePrimeStructure.smallPrimePart_le_pow_smallPrimeCount
#print axioms B699LargePrimeStructure.noCommon_choose_le_smallPrime_gap_bound
#print axioms B699LargePrimeStructure.common_of_elementary_gap_comparison


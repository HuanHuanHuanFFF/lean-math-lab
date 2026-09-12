import research.tasks.«B699-Binomial».runs.«20260909-low-index-structure-b41a5a63».lean.SmallPrimeLocalization
import Mathlib.Data.Nat.Factorization.Basic

/-! UNCOMPILED. Assign the actual complete prime components of choose(n,k)
using the accepted localization theorem. The index's full p-part is retained
in assigned_index_spec, including p=k. No assignment existence is assumed. -/
set_option autoImplicit false
set_option relaxedAutoImplicit false
namespace Math.B699.WindowPrimeAssignment
open scoped BigOperators

noncomputable def primeSupport (n k : ℕ) : Finset ℕ := (n.choose k).primeFactors
noncomputable def primeComponent (n k p : ℕ) : ℕ := p ^ (n.choose k).factorization p

noncomputable def assignedIndex (n k : ℕ) (hk : 1 ≤ k) (hkn : k ≤ n) (p : ℕ) : ℕ :=
  if hp : p.Prime then
    Classical.choose (B699LowIndex.binomial_prime_power_localization hk hkn hp)
  else 0

theorem choose_ne_zero (n k : ℕ) (hkn : k ≤ n) : n.choose k ≠ 0 :=
  (Nat.choose_pos hkn).ne'

theorem supported_prime (n k p : ℕ) (hp : p ∈ primeSupport n k) : p.Prime :=
  Nat.prime_of_mem_primeFactors (by simpa only [primeSupport] using hp)

theorem supported_exponent_pos (n k p : ℕ) (hp : p ∈ primeSupport n k) :
    0 < (n.choose k).factorization p := by
  have hs : p ∈ (n.choose k).factorization.support := by
    simpa only [Nat.support_factorization, primeSupport] using hp
  exact Nat.pos_of_ne_zero (Finsupp.mem_support_iff.mp hs)

theorem component_pos (n k p : ℕ) (hp : p ∈ primeSupport n k) :
    0 < primeComponent n k p := by
  exact Nat.pow_pos (supported_prime n k p hp).pos

theorem components_coprime (n k p q : ℕ)
    (hp : p ∈ primeSupport n k) (hq : q ∈ primeSupport n k) (hpq : p ≠ q) :
    Nat.Coprime (primeComponent n k p) (primeComponent n k q) := by
  unfold primeComponent
  exact Nat.Coprime.pow ((n.choose k).factorization p) ((n.choose k).factorization q)
    ((Nat.coprime_primes (supported_prime n k p hp) (supported_prime n k q hq)).2 hpq)

theorem assigned_index_spec (n k : ℕ) (hk : 1 ≤ k) (hkn : k ≤ n)
    (p : ℕ) (hp : p.Prime) :
    assignedIndex n k hk hkn p < k ∧
      p ^ ((n.choose k).factorization p + k.factorization p) ∣
        n - assignedIndex n k hk hkn p := by
  simpa only [assignedIndex, dif_pos hp] using
    (Classical.choose_spec (B699LowIndex.binomial_prime_power_localization hk hkn hp))

theorem component_dvd_assigned_window (n k : ℕ) (hk : 1 ≤ k) (hkn : k ≤ n)
    (p : ℕ) (hp : p.Prime) :
    primeComponent n k p ∣ n - assignedIndex n k hk hkn p := by
  exact (Nat.pow_dvd_pow p (show (n.choose k).factorization p ≤
      (n.choose k).factorization p + k.factorization p by omega)).trans
    (assigned_index_spec n k hk hkn p hp).2

theorem components_product (n k : ℕ) (hkn : k ≤ n) :
    (∏ p ∈ primeSupport n k, primeComponent n k p) = n.choose k := by
  have h := Nat.prod_factorization_pow_eq_self (choose_ne_zero n k hkn)
  simpa only [Finsupp.prod, Nat.support_factorization, primeSupport, primeComponent] using h

end Math.B699.WindowPrimeAssignment

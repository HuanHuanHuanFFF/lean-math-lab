import Mathlib.Data.Nat.GCD.BigOperators
import Mathlib.Algebra.BigOperators.Group.Finset.Basic

/-! UNCOMPILED. An abstract finite product lemma used only with the actual
prime components below. Its pairwise/divisibility premises are discharged
inside the actual block theorem, never exposed by the final window bridge. -/
set_option autoImplicit false
set_option relaxedAutoImplicit false
namespace Math.B699.WindowPrimeAssignment
open scoped BigOperators

theorem product_dvd_of_pairwise_coprime (S : Finset ℕ) (f : ℕ → ℕ) (N : ℕ)
    (hcop : ∀ p ∈ S, ∀ q ∈ S, p ≠ q → Nat.Coprime (f p) (f q))
    (hdiv : ∀ p ∈ S, f p ∣ N) : (∏ p ∈ S, f p) ∣ N := by
  classical
  revert hcop hdiv
  induction S using Finset.induction_on with
  | empty =>
      intro _ _
      simp only [Finset.prod_empty]
      exact one_dvd N
  | @insert p S hpnot ih =>
      intro hcop hdiv
      have hrest : (∏ q ∈ S, f q) ∣ N :=
        ih (fun a ha b hb hab =>
          hcop a (Finset.mem_insert_of_mem ha) b (Finset.mem_insert_of_mem hb) hab)
          (fun q hq => hdiv q (Finset.mem_insert_of_mem hq))
      have hc : Nat.Coprime (f p) (∏ q ∈ S, f q) := by
        apply Nat.coprime_prod_right_iff.mpr
        intro q hq
        apply hcop p (Finset.mem_insert_self p S) q (Finset.mem_insert_of_mem hq)
        intro heq
        apply hpnot
        simpa only [heq] using hq
      rw [Finset.prod_insert hpnot]
      exact hc.mul_dvd_of_dvd_of_dvd (hdiv p (Finset.mem_insert_self p S)) hrest

end Math.B699.WindowPrimeAssignment

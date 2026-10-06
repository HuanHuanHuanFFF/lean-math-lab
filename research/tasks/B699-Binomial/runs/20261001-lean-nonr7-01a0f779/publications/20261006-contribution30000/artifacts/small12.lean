import Mathlib.Data.Nat.Choose.Basic
import Mathlib.Data.Nat.Prime.Basic
import Mathlib.Tactic.Order

namespace Contribution.B699Small
set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxHeartbeats 1000000

/-- The original quantified statement for the two smallest indices. -/
theorem original {n i j : ℕ}
    (hi : 1 ≤ i) (hi2 : i ≤ 2) (hij : i < j) (hjn : j ≤ n / 2) :
    ∃ p : ℕ, Nat.Prime p ∧ i ≤ p ∧ p ∣ n.choose i ∧ p ∣ n.choose j := by
  have hjn' : j < n := by omega
  have hstrict : j.choose i < n.choose i := by
    obtain ⟨r, rfl⟩ := Nat.exists_eq_succ_of_ne_zero (show i ≠ 0 by omega)
    have hpos : 0 < j.choose r := Nat.choose_pos (by omega)
    have hstep : j.choose (r + 1) < (j + 1).choose (r + 1) := by
      rw [Nat.choose_succ_succ]
      change j.choose (r + 1) < j.choose r + j.choose (r + 1)
      omega
    exact hstep.trans_le (Nat.choose_le_choose _ (by omega))
  have hg : Nat.gcd (n.choose i) (n.choose j) ≠ 1 := by
    intro h
    have hcop : (n.choose i).Coprime (n.choose j) := h
    have hdvd : n.choose i ∣ j.choose i := by
      apply hcop.dvd_of_dvd_mul_left
      rw [Nat.choose_mul hij.le]
      exact dvd_mul_right _ _
    exact (Nat.not_le_of_gt hstrict)
      (Nat.le_of_dvd (Nat.choose_pos hij.le) hdvd)
  obtain ⟨p, hp, hpdvd⟩ := Nat.exists_prime_and_dvd hg
  exact ⟨p, hp, by have := hp.two_le; omega,
    dvd_trans hpdvd (Nat.gcd_dvd_left _ _), dvd_trans hpdvd (Nat.gcd_dvd_right _ _)⟩

end Contribution.B699Small

#check (Contribution.B699Small.original :
  ∀ {n i j : ℕ}, 1 ≤ i → i ≤ 2 → i < j → j ≤ n / 2 →
    ∃ p : ℕ, Nat.Prime p ∧ i ≤ p ∧ p ∣ n.choose i ∧ p ∣ n.choose j)
#print axioms Contribution.B699Small.original

#check (Contribution.B699Small.original : ∀ {n i j : Nat}, 1 ≤ i → i ≤ 2 → i < j → j ≤ n / 2 → ∃ p : Nat, Nat.Prime p ∧ i ≤ p ∧ p ∣ Nat.choose n i ∧ p ∣ Nat.choose n j)
#print axioms Contribution.B699Small.original

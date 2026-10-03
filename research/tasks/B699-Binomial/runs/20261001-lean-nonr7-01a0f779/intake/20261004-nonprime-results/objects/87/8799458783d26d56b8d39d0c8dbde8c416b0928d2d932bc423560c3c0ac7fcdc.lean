import research.tasks.«B699-Binomial».runs.«20261001-lean-nonr7-01a0f779».continuations.«20261002-terminal-gap-twohour».terminal.FiniteConsumerLegacy
import NonprimeDefsOnly

/-! Transfers a same-prime witness across two adjacent nonprime indices.
The original complete 4884 provider is already accepted; no prime-gap estimate
or newly generated finite chain is a mathematical input to the four corollaries.
-/
set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option Elab.async false

namespace B699CompositeTransfer20261003

theorem common_succ_of_nonprime {n i j : Nat}
    (hi : ¬ Nat.Prime i) (his : ¬ Nat.Prime (i + 1))
    (hcommon : ∃ p : Nat, p.Prime ∧ i ≤ p ∧ p ∣ n.choose i ∧ p ∣ n.choose j) :
    ∃ p : Nat, p.Prime ∧ i + 1 ≤ p ∧ p ∣ n.choose (i + 1) ∧ p ∣ n.choose j := by
  obtain ⟨p, hp, hpi, hdiv, hdivj⟩ := hcommon
  have hne : p ≠ i := by
    intro heq
    apply hi
    simpa only [heq] using hp
  have hpis : i + 1 ≤ p := by omega
  have hndiv : ¬ p ∣ i + 1 := by
    intro hd
    have hle : p ≤ i + 1 := Nat.le_of_dvd (Nat.succ_pos i) hd
    have heq : p = i + 1 := by omega
    apply his
    simpa only [heq] using hp
  have hprod : p ∣ n.choose (i + 1) * (i + 1) := by
    rw [Nat.choose_succ_right_eq]
    exact dvd_mul_of_dvd_left hdiv (n - i)
  have hnew : p ∣ n.choose (i + 1) :=
    (hp.dvd_or_dvd hprod).resolve_right hndiv
  exact ⟨p, hp, hpis, hnew, hdivj⟩

theorem complete_4885 {n j : Nat} (hij : 4885 < j) (hjn : j ≤ n / 2) :
    ∃ p : Nat, p.Prime ∧ 4885 ≤ p ∧ p ∣ n.choose 4885 ∧ p ∣ n.choose j := by
  exact common_succ_of_nonprime (i := 4884) not_prime_4884 not_prime_4885
    (B699FiniteFull20261002.common_indices_4883_4884 (i := 4884)
      (by decide) (by decide) (by omega) hjn)

theorem complete_4886 {n j : Nat} (hij : 4886 < j) (hjn : j ≤ n / 2) :
    ∃ p : Nat, p.Prime ∧ 4886 ≤ p ∧ p ∣ n.choose 4886 ∧ p ∣ n.choose j := by
  exact common_succ_of_nonprime (i := 4885) not_prime_4885 not_prime_4886
    (complete_4885 (by omega) hjn)

theorem complete_4887 {n j : Nat} (hij : 4887 < j) (hjn : j ≤ n / 2) :
    ∃ p : Nat, p.Prime ∧ 4887 ≤ p ∧ p ∣ n.choose 4887 ∧ p ∣ n.choose j := by
  exact common_succ_of_nonprime (i := 4886) not_prime_4886 not_prime_4887
    (complete_4886 (by omega) hjn)

theorem complete_4888 {n j : Nat} (hij : 4888 < j) (hjn : j ≤ n / 2) :
    ∃ p : Nat, p.Prime ∧ 4888 ≤ p ∧ p ∣ n.choose 4888 ∧ p ∣ n.choose j := by
  exact common_succ_of_nonprime (i := 4887) not_prime_4887 not_prime_4888
    (complete_4887 (by omega) hjn)

theorem complete_4885_through_4888 {n i j : Nat}
    (hi : 4885 ≤ i) (hiu : i ≤ 4888) (hij : i < j) (hjn : j ≤ n / 2) :
    ∃ p : Nat, p.Prime ∧ i ≤ p ∧ p ∣ n.choose i ∧ p ∣ n.choose j := by
  have hcases : i = 4885 ∨ i = 4886 ∨ i = 4887 ∨ i = 4888 := by omega
  rcases hcases with rfl | rfl | rfl | rfl
  · exact complete_4885 hij hjn
  · exact complete_4886 hij hjn
  · exact complete_4887 hij hjn
  · exact complete_4888 hij hjn

end B699CompositeTransfer20261003

#print axioms B699CompositeTransfer20261003.common_succ_of_nonprime
#print axioms B699CompositeTransfer20261003.complete_4885
#print axioms B699CompositeTransfer20261003.complete_4886
#print axioms B699CompositeTransfer20261003.complete_4887
#print axioms B699CompositeTransfer20261003.complete_4888
#print axioms B699CompositeTransfer20261003.complete_4885_through_4888

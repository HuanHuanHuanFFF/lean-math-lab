import Mathlib.Data.Nat.Choose.Dvd
import Mathlib.Data.Nat.Prime.Defs
set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option Elab.async false
namespace B699CompositeCore20261003
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

end B699CompositeCore20261003
#print B699CompositeCore20261003.common_succ_of_nonprime
#print axioms B699CompositeCore20261003.common_succ_of_nonprime

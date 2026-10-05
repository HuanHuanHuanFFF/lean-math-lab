import NonprimeCertificates

set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option Elab.async false

#check (@Nat.not_prime_mul : {a b : Nat} → a ≠ 1 → b ≠ 1 → ¬ Nat.Prime (a * b))
#check (Nat.succ_succ_ne_one : (a : Nat) → Nat.succ (Nat.succ a) ≠ 1)

example : (2 : Nat) * 2442 = 4884 := Eq.refl 4884
example : (2 : Nat) ≠ 1 := Nat.succ_succ_ne_one 0
example : (2442 : Nat) ≠ 1 := Nat.succ_succ_ne_one 2440
example : ¬ Nat.Prime 4884 := B699CompositeTransfer20261003.not_prime_4884
example : ¬ Nat.Prime (2 * 2442) := B699CompositeTransfer20261003.not_prime_4884

example : (5 : Nat) * 977 = 4885 := Eq.refl 4885
example : (5 : Nat) ≠ 1 := Nat.succ_succ_ne_one 3
example : (977 : Nat) ≠ 1 := Nat.succ_succ_ne_one 975
example : ¬ Nat.Prime 4885 := B699CompositeTransfer20261003.not_prime_4885
example : ¬ Nat.Prime (5 * 977) := B699CompositeTransfer20261003.not_prime_4885

example : (2 : Nat) * 2443 = 4886 := Eq.refl 4886
example : (2 : Nat) ≠ 1 := Nat.succ_succ_ne_one 0
example : (2443 : Nat) ≠ 1 := Nat.succ_succ_ne_one 2441
example : ¬ Nat.Prime 4886 := B699CompositeTransfer20261003.not_prime_4886
example : ¬ Nat.Prime (2 * 2443) := B699CompositeTransfer20261003.not_prime_4886

example : (3 : Nat) * 1629 = 4887 := Eq.refl 4887
example : (3 : Nat) ≠ 1 := Nat.succ_succ_ne_one 1
example : (1629 : Nat) ≠ 1 := Nat.succ_succ_ne_one 1627
example : ¬ Nat.Prime 4887 := B699CompositeTransfer20261003.not_prime_4887
example : ¬ Nat.Prime (3 * 1629) := B699CompositeTransfer20261003.not_prime_4887

example : (2 : Nat) * 2444 = 4888 := Eq.refl 4888
example : (2 : Nat) ≠ 1 := Nat.succ_succ_ne_one 0
example : (2444 : Nat) ≠ 1 := Nat.succ_succ_ne_one 2442
example : ¬ Nat.Prime 4888 := B699CompositeTransfer20261003.not_prime_4888
example : ¬ Nat.Prime (2 * 2444) := B699CompositeTransfer20261003.not_prime_4888

namespace B699CompositeTransfer20261003

example : ¬ Nat.Prime 4884 := not_prime_4884
example : ¬ Nat.Prime 4885 := not_prime_4885
example : ¬ Nat.Prime 4886 := not_prime_4886
example : ¬ Nat.Prime 4887 := not_prime_4887
example : ¬ Nat.Prime 4888 := not_prime_4888

example : ¬ Nat.Prime (4884 + 1) := not_prime_4885
example : (¬ Nat.Prime 4884) ∧ (¬ Nat.Prime (4884 + 1)) :=
  ⟨not_prime_4884, not_prime_4885⟩
example : ¬ Nat.Prime (4885 + 1) := not_prime_4886
example : (¬ Nat.Prime 4885) ∧ (¬ Nat.Prime (4885 + 1)) :=
  ⟨not_prime_4885, not_prime_4886⟩
example : ¬ Nat.Prime (4886 + 1) := not_prime_4887
example : (¬ Nat.Prime 4886) ∧ (¬ Nat.Prime (4886 + 1)) :=
  ⟨not_prime_4886, not_prime_4887⟩
example : ¬ Nat.Prime (4887 + 1) := not_prime_4888
example : (¬ Nat.Prime 4887) ∧ (¬ Nat.Prime (4887 + 1)) :=
  ⟨not_prime_4887, not_prime_4888⟩

end B699CompositeTransfer20261003

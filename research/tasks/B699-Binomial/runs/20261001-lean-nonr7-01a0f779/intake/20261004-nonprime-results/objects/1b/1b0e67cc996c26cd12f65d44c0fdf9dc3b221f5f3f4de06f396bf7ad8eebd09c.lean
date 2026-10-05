import Init

set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option Elab.async false

-- Arithmetic probes only: this file does NOT prove any Nat.Prime goal.
#check Nat.succ_succ_ne_one

example : (4884 : Nat) = 2 * 2442 := Eq.refl 4884
example : (2 : Nat) * 2442 = 4884 := Eq.refl 4884
example : (2 : Nat) ≠ 1 := Nat.succ_succ_ne_one 0
example : (2442 : Nat) ≠ 1 := Nat.succ_succ_ne_one 2440

example : (4885 : Nat) = 5 * 977 := Eq.refl 4885
example : (5 : Nat) * 977 = 4885 := Eq.refl 4885
example : (5 : Nat) ≠ 1 := Nat.succ_succ_ne_one 3
example : (977 : Nat) ≠ 1 := Nat.succ_succ_ne_one 975

example : (4886 : Nat) = 2 * 2443 := Eq.refl 4886
example : (2 : Nat) * 2443 = 4886 := Eq.refl 4886
example : (2 : Nat) ≠ 1 := Nat.succ_succ_ne_one 0
example : (2443 : Nat) ≠ 1 := Nat.succ_succ_ne_one 2441

example : (4887 : Nat) = 3 * 1629 := Eq.refl 4887
example : (3 : Nat) * 1629 = 4887 := Eq.refl 4887
example : (3 : Nat) ≠ 1 := Nat.succ_succ_ne_one 1
example : (1629 : Nat) ≠ 1 := Nat.succ_succ_ne_one 1627

example : (4888 : Nat) = 2 * 2444 := Eq.refl 4888
example : (2 : Nat) * 2444 = 4888 := Eq.refl 4888
example : (2 : Nat) ≠ 1 := Nat.succ_succ_ne_one 0
example : (2444 : Nat) ≠ 1 := Nat.succ_succ_ne_one 2442


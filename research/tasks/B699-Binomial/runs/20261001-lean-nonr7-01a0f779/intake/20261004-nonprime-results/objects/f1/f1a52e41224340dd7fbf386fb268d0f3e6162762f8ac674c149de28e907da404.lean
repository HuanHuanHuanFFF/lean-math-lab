import Mathlib.Data.Nat.Prime.Basic

namespace B699CompositeTransfer20261003.Comparison

theorem mul_eq_4884 : ¬ Nat.Prime 4884 :=
  Nat.not_prime_of_mul_eq (a := 2) (b := 2442) rfl
    (Nat.succ_succ_ne_one 0) (Nat.succ_succ_ne_one 2440)

theorem mul_eq_4885 : ¬ Nat.Prime 4885 :=
  Nat.not_prime_of_mul_eq (a := 5) (b := 977) rfl
    (Nat.succ_succ_ne_one 3) (Nat.succ_succ_ne_one 975)

theorem mul_eq_4886 : ¬ Nat.Prime 4886 :=
  Nat.not_prime_of_mul_eq (a := 2) (b := 2443) rfl
    (Nat.succ_succ_ne_one 0) (Nat.succ_succ_ne_one 2441)

theorem mul_eq_4887 : ¬ Nat.Prime 4887 :=
  Nat.not_prime_of_mul_eq (a := 3) (b := 1629) rfl
    (Nat.succ_succ_ne_one 1) (Nat.succ_succ_ne_one 1627)

theorem mul_eq_4888 : ¬ Nat.Prime 4888 :=
  Nat.not_prime_of_mul_eq (a := 2) (b := 2444) rfl
    (Nat.succ_succ_ne_one 0) (Nat.succ_succ_ne_one 2442)

theorem dvd_lt_4884 : ¬ Nat.Prime 4884 :=
  Nat.not_prime_of_dvd_of_lt (m := 2) (n := 4884)
    ⟨2442, rfl⟩ (Nat.le_refl 2)
    (Nat.succ_lt_succ (Nat.succ_lt_succ (Nat.zero_lt_succ 4881)))

theorem dvd_lt_4885 : ¬ Nat.Prime 4885 :=
  Nat.not_prime_of_dvd_of_lt (m := 5) (n := 4885)
    ⟨977, rfl⟩ (Nat.succ_le_succ (Nat.succ_le_succ (Nat.zero_le 3)))
    (Nat.succ_lt_succ (Nat.succ_lt_succ (Nat.succ_lt_succ (Nat.succ_lt_succ (Nat.succ_lt_succ (Nat.zero_lt_succ 4879))))))

theorem dvd_lt_4886 : ¬ Nat.Prime 4886 :=
  Nat.not_prime_of_dvd_of_lt (m := 2) (n := 4886)
    ⟨2443, rfl⟩ (Nat.le_refl 2)
    (Nat.succ_lt_succ (Nat.succ_lt_succ (Nat.zero_lt_succ 4883)))

theorem dvd_lt_4887 : ¬ Nat.Prime 4887 :=
  Nat.not_prime_of_dvd_of_lt (m := 3) (n := 4887)
    ⟨1629, rfl⟩ (Nat.succ_le_succ (Nat.succ_le_succ (Nat.zero_le 1)))
    (Nat.succ_lt_succ (Nat.succ_lt_succ (Nat.succ_lt_succ (Nat.zero_lt_succ 4883))))

theorem dvd_lt_4888 : ¬ Nat.Prime 4888 :=
  Nat.not_prime_of_dvd_of_lt (m := 2) (n := 4888)
    ⟨2444, rfl⟩ (Nat.le_refl 2)
    (Nat.succ_lt_succ (Nat.succ_lt_succ (Nat.zero_lt_succ 4885)))

end B699CompositeTransfer20261003.Comparison

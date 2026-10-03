import Mathlib.Data.Nat.Prime.Basic

namespace B699NonprimeDivisorCandidates

theorem not_prime_4884 : ¬ Nat.Prime 4884 :=
  Nat.not_prime_of_dvd_of_lt (m := 2) ⟨2442, rfl⟩
    (Nat.le_refl 2) (Nat.le_add_right 3 4881)

theorem not_prime_4885 : ¬ Nat.Prime 4885 :=
  Nat.not_prime_of_dvd_of_lt (m := 5) ⟨977, rfl⟩
    (Nat.le_add_right 2 3) (Nat.le_add_right 6 4879)

theorem not_prime_4886 : ¬ Nat.Prime 4886 :=
  Nat.not_prime_of_dvd_of_lt (m := 2) ⟨2443, rfl⟩
    (Nat.le_refl 2) (Nat.le_add_right 3 4883)

theorem not_prime_4887 : ¬ Nat.Prime 4887 :=
  Nat.not_prime_of_dvd_of_lt (m := 3) ⟨1629, rfl⟩
    (Nat.le_add_right 2 1) (Nat.le_add_right 4 4883)

theorem not_prime_4888 : ¬ Nat.Prime 4888 :=
  Nat.not_prime_of_dvd_of_lt (m := 2) ⟨2444, rfl⟩
    (Nat.le_refl 2) (Nat.le_add_right 3 4885)

end B699NonprimeDivisorCandidates

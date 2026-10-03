import Mathlib.Data.Nat.Prime.Basic

namespace B699NonprimeCertificates

theorem not_prime_4884 : ¬ Nat.Prime 4884 :=
  Nat.not_prime_mul (a := 2) (b := 2442)
    (Nat.succ_succ_ne_one 0) (Nat.succ_succ_ne_one 2440)

theorem not_prime_4885 : ¬ Nat.Prime 4885 :=
  Nat.not_prime_mul (a := 5) (b := 977)
    (Nat.succ_succ_ne_one 3) (Nat.succ_succ_ne_one 975)

theorem not_prime_4886 : ¬ Nat.Prime 4886 :=
  Nat.not_prime_mul (a := 2) (b := 2443)
    (Nat.succ_succ_ne_one 0) (Nat.succ_succ_ne_one 2441)

theorem not_prime_4887 : ¬ Nat.Prime 4887 :=
  Nat.not_prime_mul (a := 3) (b := 1629)
    (Nat.succ_succ_ne_one 1) (Nat.succ_succ_ne_one 1627)

theorem not_prime_4888 : ¬ Nat.Prime 4888 :=
  Nat.not_prime_mul (a := 2) (b := 2444)
    (Nat.succ_succ_ne_one 0) (Nat.succ_succ_ne_one 2442)

end B699NonprimeCertificates

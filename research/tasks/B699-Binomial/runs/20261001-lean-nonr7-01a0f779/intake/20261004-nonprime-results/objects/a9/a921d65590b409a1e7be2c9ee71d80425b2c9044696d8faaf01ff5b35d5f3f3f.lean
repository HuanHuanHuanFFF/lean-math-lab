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

#check @Nat.not_prime_mul
#print axioms Nat.not_prime_mul
#check B699NonprimeCertificates.not_prime_4884
#print axioms B699NonprimeCertificates.not_prime_4884
example : ¬ Nat.Prime 4884 := B699NonprimeCertificates.not_prime_4884
example : (2 : Nat) * 2442 = 4884 := rfl
#check B699NonprimeCertificates.not_prime_4885
#print axioms B699NonprimeCertificates.not_prime_4885
example : ¬ Nat.Prime 4885 := B699NonprimeCertificates.not_prime_4885
example : (5 : Nat) * 977 = 4885 := rfl
#check B699NonprimeCertificates.not_prime_4886
#print axioms B699NonprimeCertificates.not_prime_4886
example : ¬ Nat.Prime 4886 := B699NonprimeCertificates.not_prime_4886
example : (2 : Nat) * 2443 = 4886 := rfl
#check B699NonprimeCertificates.not_prime_4887
#print axioms B699NonprimeCertificates.not_prime_4887
example : ¬ Nat.Prime 4887 := B699NonprimeCertificates.not_prime_4887
example : (3 : Nat) * 1629 = 4887 := rfl
#check B699NonprimeCertificates.not_prime_4888
#print axioms B699NonprimeCertificates.not_prime_4888
example : ¬ Nat.Prime 4888 := B699NonprimeCertificates.not_prime_4888
example : (2 : Nat) * 2444 = 4888 := rfl
example : ¬ Nat.Prime (4884 + 1) := B699NonprimeCertificates.not_prime_4885
example : ¬ Nat.Prime (4885 + 1) := B699NonprimeCertificates.not_prime_4886
example : ¬ Nat.Prime (4886 + 1) := B699NonprimeCertificates.not_prime_4887
example : ¬ Nat.Prime (4887 + 1) := B699NonprimeCertificates.not_prime_4888

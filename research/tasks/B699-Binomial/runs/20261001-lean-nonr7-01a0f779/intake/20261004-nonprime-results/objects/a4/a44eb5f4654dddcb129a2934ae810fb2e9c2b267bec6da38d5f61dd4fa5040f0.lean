import Mathlib.Data.Nat.Prime.Basic

namespace B699NonprimeCertificates

theorem not_prime_4884 : ¬ Nat.Prime 4884 :=
  Nat.not_prime_of_mul_eq (a := 2) (b := 2442) rfl
    (Nat.succ_succ_ne_one 0) (Nat.succ_succ_ne_one 2440)

theorem not_prime_4885 : ¬ Nat.Prime 4885 :=
  Nat.not_prime_of_mul_eq (a := 5) (b := 977) rfl
    (Nat.succ_succ_ne_one 3) (Nat.succ_succ_ne_one 975)

theorem not_prime_4886 : ¬ Nat.Prime 4886 :=
  Nat.not_prime_of_mul_eq (a := 2) (b := 2443) rfl
    (Nat.succ_succ_ne_one 0) (Nat.succ_succ_ne_one 2441)

theorem not_prime_4887 : ¬ Nat.Prime 4887 :=
  Nat.not_prime_of_mul_eq (a := 3) (b := 1629) rfl
    (Nat.succ_succ_ne_one 1) (Nat.succ_succ_ne_one 1627)

theorem not_prime_4888 : ¬ Nat.Prime 4888 :=
  Nat.not_prime_of_mul_eq (a := 2) (b := 2444) rfl
    (Nat.succ_succ_ne_one 0) (Nat.succ_succ_ne_one 2442)

end B699NonprimeCertificates

/-! Standalone production audit. No command below has been executed by Lean in this delivery.
The preceding prefix is byte-for-byte NonprimeCertificates.lean. Do not import this audit into production. -/

#check (Nat.not_prime_of_mul_eq :
  ∀ {a b n : Nat}, a * b = n → a ≠ 1 → b ≠ 1 → ¬ Nat.Prime n)
#check (Nat.succ_succ_ne_one : ∀ a : Nat, Nat.succ (Nat.succ a) ≠ 1)
#print axioms Nat.not_prime_of_mul_eq
#print axioms Nat.succ_succ_ne_one

#check (B699NonprimeCertificates.not_prime_4884 : ¬ Nat.Prime 4884)
#print axioms B699NonprimeCertificates.not_prime_4884

#check (B699NonprimeCertificates.not_prime_4885 : ¬ Nat.Prime 4885)
#print axioms B699NonprimeCertificates.not_prime_4885

#check (B699NonprimeCertificates.not_prime_4886 : ¬ Nat.Prime 4886)
#print axioms B699NonprimeCertificates.not_prime_4886

#check (B699NonprimeCertificates.not_prime_4887 : ¬ Nat.Prime 4887)
#print axioms B699NonprimeCertificates.not_prime_4887

#check (B699NonprimeCertificates.not_prime_4888 : ¬ Nat.Prime 4888)
#print axioms B699NonprimeCertificates.not_prime_4888

example : ¬ Nat.Prime (4884 + 1) :=
  B699NonprimeCertificates.not_prime_4885

example : ¬ Nat.Prime (4885 + 1) :=
  B699NonprimeCertificates.not_prime_4886

example : ¬ Nat.Prime (4886 + 1) :=
  B699NonprimeCertificates.not_prime_4887

example : ¬ Nat.Prime (4887 + 1) :=
  B699NonprimeCertificates.not_prime_4888

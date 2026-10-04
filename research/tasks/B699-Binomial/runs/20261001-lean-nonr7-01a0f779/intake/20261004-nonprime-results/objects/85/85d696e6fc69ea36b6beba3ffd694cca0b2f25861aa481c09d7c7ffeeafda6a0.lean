import NonprimeCertificates

set_option autoImplicit false
set_option relaxedAutoImplicit false

#check (Nat.succ_succ_ne_one : (a : Nat) → Nat.succ (Nat.succ a) ≠ 1)
#check (Nat.not_prime_mul : {a b : Nat} → a ≠ 1 → b ≠ 1 → ¬ Nat.Prime (a * b))
#check (Nat.not_prime_of_mul_eq : {a b n : Nat} → a * b = n → a ≠ 1 → b ≠ 1 → ¬ Nat.Prime n)

-- Full 4884 certificate and its closed target.
example : (2 : Nat) * 2442 = 4884 := rfl
#check (Nat.succ_succ_ne_one 0 : (2 : Nat) ≠ 1)
#check (Nat.succ_succ_ne_one 2440 : (2442 : Nat) ≠ 1)
#check (B699CompositeTransfer20261003.not_prime_4884 : ¬ Nat.Prime 4884)
example : ¬ Nat.Prime (2 * 2442) := B699CompositeTransfer20261003.not_prime_4884

-- Full 4885 certificate and its closed target.
example : (5 : Nat) * 977 = 4885 := rfl
#check (Nat.succ_succ_ne_one 3 : (5 : Nat) ≠ 1)
#check (Nat.succ_succ_ne_one 975 : (977 : Nat) ≠ 1)
#check (B699CompositeTransfer20261003.not_prime_4885 : ¬ Nat.Prime 4885)
example : ¬ Nat.Prime (5 * 977) := B699CompositeTransfer20261003.not_prime_4885

-- Full 4886 certificate and its closed target.
example : (2 : Nat) * 2443 = 4886 := rfl
#check (Nat.succ_succ_ne_one 0 : (2 : Nat) ≠ 1)
#check (Nat.succ_succ_ne_one 2441 : (2443 : Nat) ≠ 1)
#check (B699CompositeTransfer20261003.not_prime_4886 : ¬ Nat.Prime 4886)
example : ¬ Nat.Prime (2 * 2443) := B699CompositeTransfer20261003.not_prime_4886

-- Full 4887 certificate and its closed target.
example : (3 : Nat) * 1629 = 4887 := rfl
#check (Nat.succ_succ_ne_one 1 : (3 : Nat) ≠ 1)
#check (Nat.succ_succ_ne_one 1627 : (1629 : Nat) ≠ 1)
#check (B699CompositeTransfer20261003.not_prime_4887 : ¬ Nat.Prime 4887)
example : ¬ Nat.Prime (3 * 1629) := B699CompositeTransfer20261003.not_prime_4887

-- Full 4888 certificate and its closed target.
example : (2 : Nat) * 2444 = 4888 := rfl
#check (Nat.succ_succ_ne_one 0 : (2 : Nat) ≠ 1)
#check (Nat.succ_succ_ne_one 2442 : (2444 : Nat) ≠ 1)
#check (B699CompositeTransfer20261003.not_prime_4888 : ¬ Nat.Prime 4888)
example : ¬ Nat.Prime (2 * 2444) := B699CompositeTransfer20261003.not_prime_4888

#check (B699CompositeTransfer20261003.not_prime_4885 : ¬ Nat.Prime (4884 + 1))
#check (B699CompositeTransfer20261003.not_prime_4886 : ¬ Nat.Prime (4885 + 1))
#check (B699CompositeTransfer20261003.not_prime_4887 : ¬ Nat.Prime (4886 + 1))
#check (B699CompositeTransfer20261003.not_prime_4888 : ¬ Nat.Prime (4887 + 1))

#print axioms Nat.succ_succ_ne_one
#print axioms Nat.not_prime_mul
#print axioms Nat.not_prime_of_mul_eq
#print axioms B699CompositeTransfer20261003.not_prime_4884
#print axioms B699CompositeTransfer20261003.not_prime_4885
#print axioms B699CompositeTransfer20261003.not_prime_4886
#print axioms B699CompositeTransfer20261003.not_prime_4887
#print axioms B699CompositeTransfer20261003.not_prime_4888

namespace B699CompositeTransfer20261003
#check (not_prime_4884 : ¬ Nat.Prime 4884)
#check (not_prime_4885 : ¬ Nat.Prime 4885)
#check (not_prime_4886 : ¬ Nat.Prime 4886)
#check (not_prime_4887 : ¬ Nat.Prime 4887)
#check (not_prime_4888 : ¬ Nat.Prime 4888)
end B699CompositeTransfer20261003

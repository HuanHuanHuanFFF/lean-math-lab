
#check @Irreducible.isUnit_or_isUnit
#check @Nat.isUnit_iff
#print Nat.Prime
#print axioms Nat.isUnit_iff

#check B699DefsDirect.not_prime_4884
#print axioms B699DefsDirect.not_prime_4884
example : ¬ Nat.Prime 4884 := B699DefsDirect.not_prime_4884
example : (4884 : Nat) = 2 * 2442 := rfl
example : ¬ IsUnit (2 : Nat) :=
  fun u => Nat.succ_succ_ne_one 0 (Nat.isUnit_iff.mp u)
example : ¬ IsUnit (2442 : Nat) :=
  fun u => Nat.succ_succ_ne_one 2440 (Nat.isUnit_iff.mp u)

#check B699DefsDirect.not_prime_4885
#print axioms B699DefsDirect.not_prime_4885
example : ¬ Nat.Prime 4885 := B699DefsDirect.not_prime_4885
example : (4885 : Nat) = 5 * 977 := rfl
example : ¬ IsUnit (5 : Nat) :=
  fun u => Nat.succ_succ_ne_one 3 (Nat.isUnit_iff.mp u)
example : ¬ IsUnit (977 : Nat) :=
  fun u => Nat.succ_succ_ne_one 975 (Nat.isUnit_iff.mp u)

#check B699DefsDirect.not_prime_4886
#print axioms B699DefsDirect.not_prime_4886
example : ¬ Nat.Prime 4886 := B699DefsDirect.not_prime_4886
example : (4886 : Nat) = 2 * 2443 := rfl
example : ¬ IsUnit (2 : Nat) :=
  fun u => Nat.succ_succ_ne_one 0 (Nat.isUnit_iff.mp u)
example : ¬ IsUnit (2443 : Nat) :=
  fun u => Nat.succ_succ_ne_one 2441 (Nat.isUnit_iff.mp u)

#check B699DefsDirect.not_prime_4887
#print axioms B699DefsDirect.not_prime_4887
example : ¬ Nat.Prime 4887 := B699DefsDirect.not_prime_4887
example : (4887 : Nat) = 3 * 1629 := rfl
example : ¬ IsUnit (3 : Nat) :=
  fun u => Nat.succ_succ_ne_one 1 (Nat.isUnit_iff.mp u)
example : ¬ IsUnit (1629 : Nat) :=
  fun u => Nat.succ_succ_ne_one 1627 (Nat.isUnit_iff.mp u)

#check B699DefsDirect.not_prime_4888
#print axioms B699DefsDirect.not_prime_4888
example : ¬ Nat.Prime 4888 := B699DefsDirect.not_prime_4888
example : (4888 : Nat) = 2 * 2444 := rfl
example : ¬ IsUnit (2 : Nat) :=
  fun u => Nat.succ_succ_ne_one 0 (Nat.isUnit_iff.mp u)
example : ¬ IsUnit (2444 : Nat) :=
  fun u => Nat.succ_succ_ne_one 2442 (Nat.isUnit_iff.mp u)

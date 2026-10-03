
#check Nat.Prime
#print Nat.Prime
#check @Nat.prime_def
#print axioms Nat.prime_def
example (n : Nat) : Nat.Prime n ↔ B699CoreOnly.PrimeByDivisors n := Nat.prime_def
#check B699CoreBridge.not_prime_4884
#print axioms B699CoreBridge.not_prime_4884
example : ¬ Nat.Prime 4884 := B699CoreBridge.not_prime_4884
#check B699CoreBridge.not_prime_4885
#print axioms B699CoreBridge.not_prime_4885
example : ¬ Nat.Prime 4885 := B699CoreBridge.not_prime_4885
#check B699CoreBridge.not_prime_4886
#print axioms B699CoreBridge.not_prime_4886
example : ¬ Nat.Prime 4886 := B699CoreBridge.not_prime_4886
#check B699CoreBridge.not_prime_4887
#print axioms B699CoreBridge.not_prime_4887
example : ¬ Nat.Prime 4887 := B699CoreBridge.not_prime_4887
#check B699CoreBridge.not_prime_4888
#print axioms B699CoreBridge.not_prime_4888
example : ¬ Nat.Prime 4888 := B699CoreBridge.not_prime_4888
example : ¬ Nat.Prime (4884 + 1) := B699CoreBridge.not_prime_4885
example : ¬ Nat.Prime (4885 + 1) := B699CoreBridge.not_prime_4886
example : ¬ Nat.Prime (4886 + 1) := B699CoreBridge.not_prime_4887
example : ¬ Nat.Prime (4887 + 1) := B699CoreBridge.not_prime_4888

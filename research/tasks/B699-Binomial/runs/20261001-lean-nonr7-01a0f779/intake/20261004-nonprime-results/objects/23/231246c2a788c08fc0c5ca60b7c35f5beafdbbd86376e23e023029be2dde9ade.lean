import NonprimeCertificates

-- Check all five closed types, with no hypotheses or implicit parameters.
#check (B699CompositeTransfer20261003.not_prime_4884 : ¬ Nat.Prime 4884)
#check (B699CompositeTransfer20261003.not_prime_4885 : ¬ Nat.Prime 4885)
#check (B699CompositeTransfer20261003.not_prime_4886 : ¬ Nat.Prime 4886)
#check (B699CompositeTransfer20261003.not_prime_4887 : ¬ Nat.Prime 4887)
#check (B699CompositeTransfer20261003.not_prime_4888 : ¬ Nat.Prime 4888)

-- These are the successor-index types expected at the original four call sites.
#check (B699CompositeTransfer20261003.not_prime_4885 : ¬ Nat.Prime (4884 + 1))
#check (B699CompositeTransfer20261003.not_prime_4886 : ¬ Nat.Prime (4885 + 1))
#check (B699CompositeTransfer20261003.not_prime_4887 : ¬ Nat.Prime (4886 + 1))
#check (B699CompositeTransfer20261003.not_prime_4888 : ¬ Nat.Prime (4887 + 1))

-- Print the imported lemma's dependencies separately from the new declarations.
#print axioms Nat.not_prime_of_mul_eq
#print axioms B699CompositeTransfer20261003.not_prime_4884
#print axioms B699CompositeTransfer20261003.not_prime_4885
#print axioms B699CompositeTransfer20261003.not_prime_4886
#print axioms B699CompositeTransfer20261003.not_prime_4887
#print axioms B699CompositeTransfer20261003.not_prime_4888

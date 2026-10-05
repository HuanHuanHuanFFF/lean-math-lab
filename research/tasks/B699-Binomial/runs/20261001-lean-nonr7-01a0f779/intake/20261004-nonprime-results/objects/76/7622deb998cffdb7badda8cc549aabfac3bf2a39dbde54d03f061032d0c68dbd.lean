import Init
-- INTENTIONALLY INVALID. Expected elaboration failure, NOT executed here.
example : (2442 : Nat) ≠ 1 := Nat.succ_succ_ne_one 2442

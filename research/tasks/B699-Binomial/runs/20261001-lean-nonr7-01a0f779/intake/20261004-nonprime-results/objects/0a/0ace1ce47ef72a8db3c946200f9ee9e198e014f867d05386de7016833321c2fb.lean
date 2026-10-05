import Mathlib.Data.Nat.Prime.Defs
set_option autoImplicit false
-- INTENTIONALLY INVALID. Expected elaboration failure, NOT executed here.
example {n a b : Nat} (h : Nat.Prime n) (e : a * b = n) :
    IsUnit a ∨ IsUnit b :=
  h.isUnit_or_isUnit (a := a) (b := b) e

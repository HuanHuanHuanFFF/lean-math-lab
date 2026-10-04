import Mathlib.Data.Nat.Prime.Defs

set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option Elab.async false

-- Neither Basic nor a custom primality predicate is imported here.
#check Nat.Prime
#check @Irreducible.isUnit_or_isUnit
#check @Nat.isUnit_iff
#check Nat.succ_succ_ne_one
#print Nat.Prime
#print Irreducible

example (n : Nat) : Nat.Prime n = Irreducible n := Eq.refl (Irreducible n)
example {n : Nat} (h : Nat.Prime n) : Irreducible n := h
example {n : Nat} (h : Irreducible n) : Nat.Prime n := h

-- Generic equality tests distinguish n = a * b from a * b = n.
example {n a b : Nat} (h : Nat.Prime n) (e : n = a * b) :
    IsUnit a ∨ IsUnit b :=
  h.isUnit_or_isUnit (a := a) (b := b) e

example {n a b : Nat} (h : Nat.Prime n) (e : n = a * b) :
    IsUnit a ∨ IsUnit b :=
  Irreducible.isUnit_or_isUnit h (a := a) (b := b) e

example {n a b : Nat} (h : Nat.Prime n) (e : a * b = n) :
    IsUnit a ∨ IsUnit b :=
  h.isUnit_or_isUnit (a := a) (b := b) (Eq.symm e)

example {n : Nat} (u : IsUnit n) : n = 1 := Nat.isUnit_iff.mp u
example {n : Nat} (e : n = 1) : IsUnit n := Nat.isUnit_iff.mpr e

example (h : Nat.Prime 4884) : IsUnit (2 : Nat) ∨ IsUnit (2442 : Nat) :=
  h.isUnit_or_isUnit (a := 2) (b := 2442) rfl
example (u : IsUnit (2 : Nat)) : False :=
  Nat.succ_succ_ne_one 0 (Nat.isUnit_iff.mp u)
example (u : IsUnit (2442 : Nat)) : False :=
  Nat.succ_succ_ne_one 2440 (Nat.isUnit_iff.mp u)

example (h : Nat.Prime 4885) : IsUnit (5 : Nat) ∨ IsUnit (977 : Nat) :=
  h.isUnit_or_isUnit (a := 5) (b := 977) rfl
example (u : IsUnit (5 : Nat)) : False :=
  Nat.succ_succ_ne_one 3 (Nat.isUnit_iff.mp u)
example (u : IsUnit (977 : Nat)) : False :=
  Nat.succ_succ_ne_one 975 (Nat.isUnit_iff.mp u)

example (h : Nat.Prime 4886) : IsUnit (2 : Nat) ∨ IsUnit (2443 : Nat) :=
  h.isUnit_or_isUnit (a := 2) (b := 2443) rfl
example (u : IsUnit (2 : Nat)) : False :=
  Nat.succ_succ_ne_one 0 (Nat.isUnit_iff.mp u)
example (u : IsUnit (2443 : Nat)) : False :=
  Nat.succ_succ_ne_one 2441 (Nat.isUnit_iff.mp u)

example (h : Nat.Prime 4887) : IsUnit (3 : Nat) ∨ IsUnit (1629 : Nat) :=
  h.isUnit_or_isUnit (a := 3) (b := 1629) rfl
example (u : IsUnit (3 : Nat)) : False :=
  Nat.succ_succ_ne_one 1 (Nat.isUnit_iff.mp u)
example (u : IsUnit (1629 : Nat)) : False :=
  Nat.succ_succ_ne_one 1627 (Nat.isUnit_iff.mp u)

example (h : Nat.Prime 4888) : IsUnit (2 : Nat) ∨ IsUnit (2444 : Nat) :=
  h.isUnit_or_isUnit (a := 2) (b := 2444) rfl
example (u : IsUnit (2 : Nat)) : False :=
  Nat.succ_succ_ne_one 0 (Nat.isUnit_iff.mp u)
example (u : IsUnit (2444 : Nat)) : False :=
  Nat.succ_succ_ne_one 2442 (Nat.isUnit_iff.mp u)


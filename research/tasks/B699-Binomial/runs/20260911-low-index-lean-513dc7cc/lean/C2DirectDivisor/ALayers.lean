import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.C2DirectDivisor.Layers

/-! Uncompiled explicit-type, definition-body and transitive-axiom audit. -/
set_option autoImplicit false
set_option relaxedAutoImplicit false
open scoped BigOperators
open Math.B699.C2Direct

#check (@Math.B699.C2Direct.carry : ∀ (a b q : ℕ),
  ℕ)
#print axioms Math.B699.C2Direct.carry
#print Math.B699.C2Direct.carry

#check (@Math.B699.C2Direct.remainder_sub_add_le : ∀ (A r q : ℕ) (hr : r ≤ A),
  A % q ≤ (A - r) % q + r % q)
#print axioms Math.B699.C2Direct.remainder_sub_add_le

#check (@Math.B699.C2Direct.no_carries_bound : ∀ (A B C r q : ℕ) (hr : r ≤ A)
    (h1 : ¬ q ≤ C % q + (A - r) % q)
    (h2 : ¬ q ≤ r % q + B % q),
  A % q + B % q + C % q ≤ 2 * q - 2)
#print axioms Math.B699.C2Direct.no_carries_bound

#check (@Math.B699.C2Direct.shifted_forces_carry : ∀ (A B C r q : ℕ) (hr : r ≤ A) (hq : 0 < q)
    (hs : 2 * q - 1 ≤ A % q + B % q + C % q),
  q ≤ C % q + (A - r) % q ∨ q ≤ r % q + B % q)
#print axioms Math.B699.C2Direct.shifted_forces_carry

#check (@Math.B699.C2Direct.remainder_pred_le : ∀ (x q : ℕ) (hx : 1 ≤ x),
  x % q ≤ (x - 1) % q + 1)
#print axioms Math.B699.C2Direct.remainder_pred_le

#check (@Math.B699.C2Direct.shifted_layer_threshold : ∀ (x y z delta q : ℕ)
    (hx : 1 ≤ x) (hy : 1 ≤ y) (hz : 1 ≤ z)
    (hd : delta = 0 ∨ delta = 1)
    (hs : 2 * q + 1 ≤ x % q + y % q + z % q),
  2 * q - 1 ≤ (x - delta) % q + (z - 1 + delta) % q + (y - delta) % q)
#print axioms Math.B699.C2Direct.shifted_layer_threshold

#check (@Math.B699.C2Direct.layer_le_two_carries : ∀ (x y z delta r q : ℕ)
    (hx : 1 ≤ x) (hy : 1 ≤ y) (hz : 1 ≤ z)
    (hd : delta = 0 ∨ delta = 1) (hr : r ≤ x - delta) (hq : 0 < q),
  layer x y z q ≤ carry (y - delta) (x - delta - r) q + carry r (z - 1 + delta) q)
#print axioms Math.B699.C2Direct.layer_le_two_carries

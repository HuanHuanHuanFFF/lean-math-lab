import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.C2DirectDivisor.Valuation

/-! Uncompiled explicit-type, definition-body and transitive-axiom audit. -/
set_option autoImplicit false
set_option relaxedAutoImplicit false
open scoped BigOperators
open Math.B699.C2Direct
open Math.B699.PadeConstruction

#check (@Math.B699.C2Direct.qMagnitude_pos : ∀ (A B C r : ℕ) (hr : r ≤ A),
  0 < qMagnitude A B C r)
#print axioms Math.B699.C2Direct.qMagnitude_pos

#check (@Math.B699.C2Direct.choose_factorization_sum : ∀ (p n k b : ℕ) (hp : p.Prime)
    (hk : k ≤ n) (hb : Nat.log p n < b),
  (n.choose k).factorization p = ∑ h ∈ Finset.Ico 1 b, carry k (n - k) (p ^ h))
#print axioms Math.B699.C2Direct.choose_factorization_sum

#check (@Math.B699.C2Direct.exponent_le_qMagnitude_factorization : ∀ (x y z delta r p : ℕ)
    (hx : 1 ≤ x) (hy : 1 ≤ y) (hz : 1 ≤ z)
    (hd : delta = 0 ∨ delta = 1) (hr : r ≤ x - delta) (hp : p.Prime),
  exponent x y z p ≤
      (qMagnitude (x - delta) (z - 1 + delta) (y - delta) r).factorization p)
#print axioms Math.B699.C2Direct.exponent_le_qMagnitude_factorization

#check (@Math.B699.C2Direct.prime_power_dvd_qMagnitude : ∀ (x y z delta r p : ℕ)
    (hx : 1 ≤ x) (hy : 1 ≤ y) (hz : 1 ≤ z)
    (hd : delta = 0 ∨ delta = 1) (hr : r ≤ x - delta) (hp : p.Prime),
  p ^ exponent x y z p ∣ qMagnitude (x - delta) (z - 1 + delta) (y - delta) r)
#print axioms Math.B699.C2Direct.prime_power_dvd_qMagnitude

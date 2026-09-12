import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.C2Direct.Finite

/-! UNCOMPILED. One fixed coefficient receives every contributing prime-power layer. -/
set_option autoImplicit false
set_option relaxedAutoImplicit false
namespace Math.B699.C2Direct
open scoped BigOperators

def carry (a b q : ℕ) : ℕ := if q ≤ a % q + b % q then 1 else 0

theorem remainder_sub_add_le (A r q : ℕ) (hr : r ≤ A) :
    A % q ≤ (A - r) % q + r % q := by
  have heq : A - r + r = A := by omega
  calc
    A % q = ((A - r) % q + r % q) % q := by rw [← Nat.add_mod, heq]
    _ ≤ (A - r) % q + r % q := Nat.mod_le _ _

theorem no_carries_bound (A B C r q : ℕ) (hr : r ≤ A)
    (h1 : ¬ q ≤ C % q + (A - r) % q)
    (h2 : ¬ q ≤ r % q + B % q) :
    A % q + B % q + C % q ≤ 2 * q - 2 := by
  have h := remainder_sub_add_le A r q hr
  omega

theorem shifted_forces_carry (A B C r q : ℕ) (hr : r ≤ A) (hq : 0 < q)
    (hs : 2 * q - 1 ≤ A % q + B % q + C % q) :
    q ≤ C % q + (A - r) % q ∨ q ≤ r % q + B % q := by
  by_cases h1 : q ≤ C % q + (A - r) % q
  · exact Or.inl h1
  by_cases h2 : q ≤ r % q + B % q
  · exact Or.inr h2
  have h := no_carries_bound A B C r q hr h1 h2
  omega

theorem remainder_pred_le (x q : ℕ) (hx : 1 ≤ x) :
    x % q ≤ (x - 1) % q + 1 := by
  have heq : x - 1 + 1 = x := by omega
  calc
    x % q = ((x - 1) % q + 1 % q) % q := by rw [← Nat.add_mod, heq]
    _ ≤ (x - 1) % q + 1 % q := Nat.mod_le _ _
    _ ≤ (x - 1) % q + 1 := Nat.add_le_add_left (Nat.mod_le 1 q) _

theorem shifted_layer_threshold (x y z delta q : ℕ)
    (hx : 1 ≤ x) (hy : 1 ≤ y) (hz : 1 ≤ z)
    (hd : delta = 0 ∨ delta = 1)
    (hs : 2 * q + 1 ≤ x % q + y % q + z % q) :
    2 * q - 1 ≤ (x - delta) % q + (z - 1 + delta) % q + (y - delta) % q := by
  have hxp := remainder_pred_le x q hx
  have hyp := remainder_pred_le y q hy
  have hzp := remainder_pred_le z q hz
  rcases hd with rfl | rfl
  · simp only [Nat.sub_zero, Nat.add_zero]
    omega
  · rw [Nat.sub_add_cancel hz]
    omega

theorem layer_le_two_carries (x y z delta r q : ℕ)
    (hx : 1 ≤ x) (hy : 1 ≤ y) (hz : 1 ≤ z)
    (hd : delta = 0 ∨ delta = 1) (hr : r ≤ x - delta) (hq : 0 < q) :
    layer x y z q ≤ carry (y - delta) (x - delta - r) q + carry r (z - 1 + delta) q := by
  by_cases hs : 2 * q + 1 ≤ x % q + y % q + z % q
  · rw [layer, if_pos hs]
    have ht := shifted_layer_threshold x y z delta q hx hy hz hd hs
    rcases shifted_forces_carry (x - delta) (z - 1 + delta) (y - delta) r q hr hq ht with h | h
    · simp only [carry, if_pos h]
      omega
    · simp only [carry, if_pos h]
      omega
  · simp only [layer, if_neg hs, Nat.zero_le]
end Math.B699.C2Direct

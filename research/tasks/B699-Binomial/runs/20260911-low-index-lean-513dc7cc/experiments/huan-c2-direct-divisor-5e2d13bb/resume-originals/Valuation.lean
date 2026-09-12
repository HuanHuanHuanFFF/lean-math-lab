import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.C2Direct.Layers
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.PadeInteger

/-! UNCOMPILED. All layers are summed for the same actual qMagnitude coefficient. -/
set_option autoImplicit false
set_option relaxedAutoImplicit false
namespace Math.B699.C2Direct
open scoped BigOperators

open Math.B699.PadeConstruction

theorem qMagnitude_pos (A B C r : ℕ) (hr : r ≤ A) : 0 < qMagnitude A B C r := by
  unfold qMagnitude
  exact Nat.mul_pos (Nat.choose_pos (by omega)) (Nat.choose_pos (by omega))

theorem choose_factorization_sum (p n k b : ℕ) (hp : p.Prime)
    (hk : k ≤ n) (hb : Nat.log p n < b) :
    (n.choose k).factorization p = ∑ h ∈ Finset.Ico 1 b, carry k (n - k) (p ^ h) := by
  simpa only [carry, Finset.sum_boole] using Nat.factorization_choose hp hk hb

theorem exponent_le_qMagnitude_factorization (x y z delta r p : ℕ)
    (hx : 1 ≤ x) (hy : 1 ≤ y) (hz : 1 ≤ z)
    (hd : delta = 0 ∨ delta = 1) (hr : r ≤ x - delta) (hp : p.Prime) :
    exponent x y z p ≤
      (qMagnitude (x - delta) (z - 1 + delta) (y - delta) r).factorization p := by
  let A := x - delta
  let B := z - 1 + delta
  let C := y - delta
  have hrA : r ≤ A := hr
  have hC : C ≤ A + C - r := by omega
  have hrr : r ≤ B + r := by omega
  have hb1 : A + C - r ≤ total x y z := by dsimp [A, C, total]; omega
  have hb2 : B + r ≤ total x y z := by
    rcases hd with hd | hd <;> dsimp [B, total] <;> rw [hd] at * <;> omega
  have hl (n : ℕ) (hn : n ≤ total x y z) : Nat.log p n < cutoff x y z p :=
    (Nat.log_mono_right hn).trans_lt (Nat.lt_add_one _)
  have h1 := choose_factorization_sum p (A + C - r) C (cutoff x y z p) hp hC (hl _ hb1)
  have h2 := choose_factorization_sum p (B + r) r (cutoff x y z p) hp hrr (hl _ hb2)
  have hs1 : A + C - r - C = A - r := by omega
  have hs2 : B + r - r = B := by omega
  rw [hs1] at h1
  rw [hs2] at h2
  change exponent x y z p ≤ (qMagnitude A B C r).factorization p
  rw [qMagnitude, Nat.factorization_mul (Nat.ne_of_gt (Nat.choose_pos hC))
      (Nat.ne_of_gt (Nat.choose_pos hrr)), Finsupp.add_apply, h1, h2]
  rw [← Finset.sum_add_distrib]
  unfold exponent
  apply Finset.sum_le_sum
  intro h hh
  exact layer_le_two_carries x y z delta r (p ^ h) hx hy hz hd hr (Nat.pow_pos hp.pos)

theorem prime_power_dvd_qMagnitude (x y z delta r p : ℕ)
    (hx : 1 ≤ x) (hy : 1 ≤ y) (hz : 1 ≤ z)
    (hd : delta = 0 ∨ delta = 1) (hr : r ≤ x - delta) (hp : p.Prime) :
    p ^ exponent x y z p ∣ qMagnitude (x - delta) (z - 1 + delta) (y - delta) r := by
  apply (hp.pow_dvd_iff_le_factorization
    (Nat.ne_of_gt (qMagnitude_pos _ _ _ r hr))).2
  exact exponent_le_qMagnitude_factorization x y z delta r p hx hy hz hd hr hp
end Math.B699.C2Direct

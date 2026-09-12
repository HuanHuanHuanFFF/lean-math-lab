import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.CrtGrid.Cell
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11SmallPrimes.Window

/-! UNCOMPILED CANDIDATE. Height caps follow from actual products/windows,
not from treating a clipped cap chosen by a program as an unproved input. -/
set_option autoImplicit false
set_option relaxedAutoImplicit false
namespace Math.B699.CRTGrid
open B699LowIndex.I11SmallPrimes

def heightCap (H M P : ℕ) : ℕ := min M ((H - 1) / P)

theorem height_cap_of_product_le {A P n H M : ℕ} (hP : 0 < P)
    (hproduct : A * P ≤ n) (hnH : n < H) (hM : A ≤ M) : A ≤ heightCap H M P := by
  unfold heightCap
  apply le_min hM
  apply (Nat.le_div_iff_mul_le hP).mpr
  exact Nat.le_trans hproduct (by omega : n ≤ H - 1)

theorem height_cap_of_window {A P n a H M : ℕ} (hP : 0 < P)
    (hM : A ≤ M) (hnH : n < H) (heq : n - a = P * A) : A ≤ heightCap H M P := by
  apply height_cap_of_product_le (n := n) (H := H) (M := M) hP
  · calc
      A * P = P * A := Nat.mul_comm _ _
      _ = n - a := heq.symm
      _ ≤ n := Nat.sub_le n a
  · exact hnH
  · exact hM

theorem power_lt_height_of_window {A P n a H : ℕ} (hA : 1 ≤ A)
    (hnH : n < H) (heq : n - a = P * A) : P < H := by
  have hPn : P ≤ n := by
    calc
      P = P * 1 := (Nat.mul_one P).symm
      _ ≤ P * A := Nat.mul_le_mul_left P hA
      _ = n - a := heq.symm
      _ ≤ n := Nat.sub_le n a
  exact Nat.lt_of_le_of_lt hPn hnH

theorem actual_window_height_cap {n p H M : ℕ} (window : PrimeWindow n p)
    (hp : p.Prime) (hnH : n < H) (hM : window.cofactor ≤ M) :
    window.cofactor ≤ heightCap H M (primeComponent n p) := by
  have hpos : 0 < primeComponent n p := Nat.pow_pos (Nat.Prime.pos hp)
  apply height_cap_of_product_le (n := n) hpos
  · rw [window.equation]
    exact Nat.sub_le n window.offset
  · exact hnH
  · exact hM

theorem integer_window_links {n a b : ℕ} (ha : a < 11) (hb : b < 11) :
    -(10 : ℤ) ≤ ((n - a : ℕ) : ℤ) - ((n - b : ℕ) : ℤ) ∧
    ((n - a : ℕ) : ℤ) - ((n - b : ℕ) : ℤ) ≤ 10 ∧
    n ≤ min (n - a) (n - b) + 10 := by
  refine ⟨by omega, by omega, ?_⟩
  by_cases h : n - a ≤ n - b
  · rw [min_eq_left h]
    omega
  · rw [min_eq_right (by omega : n - b ≤ n - a)]
    omega

end Math.B699.CRTGrid
#print axioms Math.B699.CRTGrid.height_cap_of_product_le
#print axioms Math.B699.CRTGrid.height_cap_of_window
#print axioms Math.B699.CRTGrid.power_lt_height_of_window
#print axioms Math.B699.CRTGrid.actual_window_height_cap
#print axioms Math.B699.CRTGrid.integer_window_links

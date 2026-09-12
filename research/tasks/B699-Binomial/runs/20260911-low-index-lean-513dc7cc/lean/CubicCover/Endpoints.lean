import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.CubicBlock.Arithmetic

/-! UNCOMPILED CANDIDATE: complete low and high exponent endpoints. -/

set_option autoImplicit false
set_option relaxedAutoImplicit false

namespace Math.B699.CubicBlockCover

open Math.B699.CubicExponentBlock

/-- Both shifted windows remain within width w, even with Nat subtraction. -/
theorem window_distance_le {n r s w : ℕ} (hr : r ≤ w) (hs : s ≤ w) :
    Nat.dist (n - r) (n - s) ≤ w := by
  unfold Nat.dist
  omega

/-- The lower endpoint applies to the minimum of both actual windows. -/
theorem window_min_ge {n r s w : ℕ} (hr : r ≤ w) (hs : s ≤ w) :
    n - w ≤ min (n - r) (n - s) := by
  exact le_min (by omega) (by omega)

/-- An actual positive cofactor turns n<H into the complete upper exponent bound.
Equality H=p^(amax+1) is permitted because n<H is strict. -/
theorem exponent_le_of_height {p h A n H amax : ℕ} (hp : 1 < p)
    (hA : 1 ≤ A) (hwindow : p ^ h * A ≤ n) (hnH : n < H)
    (hcap : H ≤ p ^ (amax + 1)) : h ≤ amax := by
  have hpower : p ^ h < p ^ (amax + 1) := by
    calc
      p ^ h ≤ p ^ h * A := by
        simpa only [mul_one] using Nat.mul_le_mul_left (p ^ h) hA
      _ ≤ n := hwindow
      _ < H := hnH
      _ ≤ p ^ (amax + 1) := hcap
  have he : h < amax + 1 := (Nat.pow_lt_pow_iff_right hp).mp hpower
  omega

/-- Every exponent below astart, including zero, belongs to the low-height branch.
Only the first cofactor's cubic bound is needed in this branch. -/
theorem low_exponent_height_cut {p n r s h A w astart cut : ℕ}
    (hp : 0 < p) (hA : 1 ≤ A) (hr : r ≤ w) (hs : s ≤ w)
    (hwindow : n - r = p ^ h * A)
    (hsmall : A ^ 3 ≤ min (n - r) (n - s)) (hbelow : h < astart)
    (_hcutw : w < (2 : ℕ) ^ cut)
    (hcut : p ^ (3 * (astart - 1)) < ((2 : ℕ) ^ cut - w) ^ 2) :
    n < (2 : ℕ) ^ cut := by
  have hx : min (n - r) (n - s) ≤ p ^ h * A := by
    calc
      min (n - r) (n - s) ≤ n - r := min_le_left _ _
      _ = p ^ h * A := hwindow
  have hsquare : (min (n - r) (n - s)) ^ 2 ≤ (p ^ h) ^ 3 :=
    min_square_le_cube (R := p ^ h) (C := A) (by omega) hsmall hx
  have hexp : h * 3 ≤ 3 * (astart - 1) := by omega
  by_contra hnot
  have hlarge : (2 : ℕ) ^ cut ≤ n := by omega
  have hshift : (2 : ℕ) ^ cut - w ≤ n - w := Nat.sub_le_sub_right hlarge w
  have hbad : ((2 : ℕ) ^ cut - w) ^ 2 ≤ p ^ (3 * (astart - 1)) := by
    calc
      ((2 : ℕ) ^ cut - w) ^ 2 ≤ (n - w) ^ 2 := Nat.pow_le_pow_left hshift 2
      _ ≤ (min (n - r) (n - s)) ^ 2 :=
        Nat.pow_le_pow_left (window_min_ge (n := n) hr hs) 2
      _ ≤ (p ^ h) ^ 3 := hsquare
      _ = p ^ (h * 3) := by rw [← pow_mul]
      _ ≤ p ^ (3 * (astart - 1)) := Nat.pow_le_pow_right hp hexp
  exact (not_lt_of_ge hbad) hcut

end Math.B699.CubicBlockCover

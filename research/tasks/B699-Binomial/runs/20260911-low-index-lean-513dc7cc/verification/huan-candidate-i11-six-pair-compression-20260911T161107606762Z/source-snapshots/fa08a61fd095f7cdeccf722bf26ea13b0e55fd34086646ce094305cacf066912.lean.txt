import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.CubicCover.Pair

/-!
# Fixed six-pair numerical input schema

UNCOMPILED CANDIDATE. This contains only numerical block lists. No initial
height statement or proof of any checker is stored as an assumed theorem.
The imported Cover/Pair candidate itself awaits parent acceptance.
-/

set_option autoImplicit false
set_option relaxedAutoImplicit false

namespace Math.B699.I11CubicCompression

open Math.B699.CubicBlockCover

structure SixPairRows where
  rows23 : List BlockDatum
  rows25 : List BlockDatum
  rows27 : List BlockDatum
  rows35 : List BlockDatum
  rows37 : List BlockDatum
  rows57 : List BlockDatum
  deriving DecidableEq, Repr

/-- Reversing both actual windows preserves the same checked pair statement.
The offsets are allowed to coincide. -/
theorem pairCheck_sound_swapped {p q w astart amax cut H n r s h k A C : ℕ}
    {rows : List BlockDatum} (hcheck : pairCheck p q w astart amax cut H rows = true)
    (hnH : n < H) (hr : r ≤ w) (hs : s ≤ w) (hA : 1 ≤ A) (hC : 1 ≤ C)
    (hQfirst : n - r = q ^ h * A) (hPsecond : n - s = p ^ k * C)
    (hsmallA : A ^ 3 ≤ min (n - r) (n - s))
    (hsmallC : C ^ 3 ≤ min (n - r) (n - s)) : n < (2 : ℕ) ^ cut := by
  have hC' : C ^ 3 ≤ min (n - s) (n - r) := by
    simpa only [min_comm] using hsmallC
  have hA' : A ^ 3 ≤ min (n - s) (n - r) := by
    simpa only [min_comm] using hsmallA
  exact pairCheck_sound (r := s) (s := r) (h := k) (k := h) (A := C) (C := A)
    hcheck hnH hs hr hC hA hPsecond hQfirst hC' hA'

end Math.B699.I11CubicCompression

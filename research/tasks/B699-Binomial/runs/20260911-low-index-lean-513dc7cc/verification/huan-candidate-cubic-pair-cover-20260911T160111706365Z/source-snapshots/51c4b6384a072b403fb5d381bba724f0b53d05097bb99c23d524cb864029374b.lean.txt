import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.CubicCover.Coverage
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.CubicCover.Endpoints

/-!
# One-pair conditional height compression through complete exponent blocks

UNCOMPILED CANDIDATE. The initial strict height n<H is a visible premise.
No original-problem height theorem, pair selection, or six-pair coverage is
assumed to have been proved merely because this consumer is available.
-/

set_option autoImplicit false
set_option relaxedAutoImplicit false

namespace Math.B699.CubicBlockCover

open Math.B699.CubicExponentBlock

/-- Complete one-pair compression: middle/high exponents are excluded by the
continuous checked list, and every lower exponent yields the certified cut. -/
theorem checked_pair_height_cut (p q w astart amax cut H : ℕ)
    (rows : List BlockDatum) (hp : 2 ≤ p) (_hq : 2 ≤ q) (_hstart : 1 ≤ astart)
    (hcover : coverageCheck p q w astart (amax + 1) rows = true)
    (hcap : H ≤ p ^ (amax + 1)) (hcutw : w < (2 : ℕ) ^ cut)
    (hcut : p ^ (3 * (astart - 1)) < ((2 : ℕ) ^ cut - w) ^ 2)
    {n r s h k A C : ℕ} (hnH : n < H) (hr : r ≤ w) (hs : s ≤ w)
    (hA : 1 ≤ A) (hC : 1 ≤ C)
    (hP : n - r = p ^ h * A) (hQ : n - s = q ^ k * C)
    (hsmallA : A ^ 3 ≤ min (n - r) (n - s))
    (hsmallC : C ^ 3 ≤ min (n - r) (n - s)) : n < (2 : ℕ) ^ cut := by
  have hwindow : p ^ h * A ≤ n := by
    rw [← hP]
    exact Nat.sub_le n r
  have hmax : h ≤ amax :=
    exponent_le_of_height (by omega : 1 < p) hA hwindow hnH hcap
  by_cases hbelow : h < astart
  · exact low_exponent_height_cut (by omega : 0 < p) hA hr hs hP hsmallA
      hbelow hcutw hcut
  · have hdist : Nat.dist (p ^ h * A) (q ^ k * C) ≤ w := by
      simpa only [hP, hQ] using window_distance_le (n := n) hr hs
    have hsmallA' : A ^ 3 ≤ min (p ^ h * A) (q ^ k * C) := by
      simpa only [hP, hQ] using hsmallA
    have hsmallC' : C ^ 3 ≤ min (p ^ h * A) (q ^ k * C) := by
      simpa only [hP, hQ] using hsmallC
    exact False.elim (coverageCheck_excludes p q w rows
      (start := astart) (stop := amax + 1) (h := h) (k := k) (A := A) (C := C)
      hcover (by omega) (by omega) hA hC hdist hsmallA' hsmallC')

/-- All finite parameter checks needed for one pair. H remains an explicit
number; no assertion about original counterexamples below H is encoded here. -/
def pairCheck (p q w astart amax cut H : ℕ) (rows : List BlockDatum) : Bool :=
  decide (2 ≤ p ∧ 2 ≤ q ∧ 1 ≤ astart ∧ H ≤ p ^ (amax + 1) ∧
    w < (2 : ℕ) ^ cut ∧
      p ^ (3 * (astart - 1)) < ((2 : ℕ) ^ cut - w) ^ 2) &&
    coverageCheck p q w astart (amax + 1) rows

/-- A true finite pair certificate compresses any actual pair of windows
under its supplied initial height, with all low exponents retained. -/
theorem pairCheck_sound {p q w astart amax cut H n r s h k A C : ℕ}
    {rows : List BlockDatum} (hcheck : pairCheck p q w astart amax cut H rows = true)
    (hnH : n < H) (hr : r ≤ w) (hs : s ≤ w) (hA : 1 ≤ A) (hC : 1 ≤ C)
    (hP : n - r = p ^ h * A) (hQ : n - s = q ^ k * C)
    (hsmallA : A ^ 3 ≤ min (n - r) (n - s))
    (hsmallC : C ^ 3 ≤ min (n - r) (n - s)) : n < (2 : ℕ) ^ cut := by
  have hc := hcheck
  simp only [pairCheck, Bool.and_eq_true] at hc
  have hmeta : 2 ≤ p ∧ 2 ≤ q ∧ 1 ≤ astart ∧ H ≤ p ^ (amax + 1) ∧
      w < (2 : ℕ) ^ cut ∧
        p ^ (3 * (astart - 1)) < ((2 : ℕ) ^ cut - w) ^ 2 := of_decide_eq_true hc.1
  rcases hmeta with ⟨hp, hq, hstart, hcap, hcutw, hcut⟩
  exact checked_pair_height_cut p q w astart amax cut H rows hp hq hstart
    hc.2 hcap hcutw hcut hnH hr hs hA hC hP hQ hsmallA hsmallC

end Math.B699.CubicBlockCover

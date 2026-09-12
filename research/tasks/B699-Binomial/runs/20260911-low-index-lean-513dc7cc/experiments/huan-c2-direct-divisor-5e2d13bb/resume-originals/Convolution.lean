import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Pade.Content

/-! UNCOMPILED. General A,C version of the accepted positive convolution.
This is needed because the existing qContent-to-P theorem is diagonal only. -/
set_option autoImplicit false
set_option relaxedAutoImplicit false
namespace Math.B699.C2Direct
open scoped BigOperators

open Math.B699.PadeConstruction

theorem choose_rearrange (A C k r : ℕ) (hk : k ≤ C) (hr : r ≤ k) :
    (A + C - r).choose A * (C - r).choose (k - r) =
      (A + C - k).choose A * (A + C - r).choose (k - r) := by
  have hA : A ≤ A + C - r := by omega
  rw [← Nat.choose_symm hA]
  have hs : A + C - r - A = C - r := by omega
  rw [hs, Nat.choose_mul (show k - r ≤ C - r by omega)]
  have ht : A + C - r - (k - r) = A + C - k := by omega
  have hb : C - r - (k - r) = C - k := by omega
  rw [ht, hb]
  have hsym : (A + C - k).choose (C - k) = (A + C - k).choose A := by
    have h := Nat.choose_symm (show A ≤ A + C - k by omega)
    have hh : A + C - k - A = C - k := by omega
    simpa only [hh] using h
  rw [hsym]
  exact Nat.mul_comm _ _

theorem shifted_convolution (A B C k : ℕ) (hk : k ≤ C) :
    (∑ r ∈ Finset.range (k + 1), (B + r).choose r * (A + C - r).choose (k - r)) =
      (A + B + C + 1).choose k := by
  calc
    _ = ∑ r ∈ Finset.range (k + 1),
        (B + 1).multichoose r * (A + C - k + 1).multichoose (k - r) := by
      apply Finset.sum_congr rfl
      intro r hr
      have hrk : r ≤ k := Nat.lt_succ_iff.mp (Finset.mem_range.mp hr)
      rw [Nat.multichoose_eq, Nat.multichoose_eq]
      congr 2 <;> omega
    _ = (B + 1 + (A + C - k + 1)).multichoose k :=
      Math.B699.PadeContent.multichoose_convolution _ _ _
    _ = (A + B + C + 1).choose k := by
      rw [Nat.multichoose_eq]
      congr 1
      omega

theorem swapped_qMagnitude_convolution (A B C k : ℕ) (hk : k ≤ C) :
    (∑ r ∈ Finset.range (k + 1), qMagnitude C B A r * (C - r).choose (k - r)) =
      (A + C - k).choose A * (A + B + C + 1).choose k := by
  have hAC : C + A = A + C := Nat.add_comm _ _
  calc
    _ = ∑ r ∈ Finset.range (k + 1),
        (A + C - k).choose A * ((B + r).choose r * (A + C - r).choose (k - r)) := by
      apply Finset.sum_congr rfl
      intro r hr
      have hrk : r ≤ k := Nat.lt_succ_iff.mp (Finset.mem_range.mp hr)
      simp only [qMagnitude, hAC]
      calc
        _ = ((A + C - r).choose A * (C - r).choose (k - r)) * (B + r).choose r := by ring
        _ = ((A + C - k).choose A * (A + C - r).choose (k - r)) * (B + r).choose r := by
          rw [choose_rearrange A C k r hk hrk]
        _ = _ := by ring
    _ = (A + C - k).choose A *
        (∑ r ∈ Finset.range (k + 1), (B + r).choose r * (A + C - r).choose (k - r)) := by
      rw [Finset.mul_sum]
    _ = _ := by rw [shifted_convolution A B C k hk]
end Math.B699.C2Direct

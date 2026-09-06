import Mathlib.LinearAlgebra.Matrix.Determinant.Basic
import Mathlib.Data.Fintype.EquivFin
import Mathlib.Algebra.BigOperators.Fin
import Mathlib.Algebra.BigOperators.Intervals
import Mathlib.Tactic.FinCases
import Mathlib.Tactic.Ring
import Mathlib.Tactic.NormNum

/-!
# A071999: the determinant of a near-cross matrix

The matrix uses the OEIS convention with row/column labels `1, ..., n`.
Since `Fin n` starts at zero, the off-diagonal condition is `i + j + 2 = n`.
The diagonal case takes priority, including at the central fixed point.

Mathematical source: Sela Fried, "Proofs of several OEIS conjectures on
determinants and permanents" (2026), Theorem 3; https://oeis.org/A071999.
This is a formalization of a known result, not a new mathematical discovery.
-/

noncomputable section

namespace Math.A071999

open Matrix
open scoped BigOperators

/-- The integer matrix whose determinant defines OEIS A071999. -/
def matrix (n : ℕ) : Matrix (Fin n) (Fin n) ℤ :=
  fun i j => if i = j then 1 else if i.val + j.val + 2 = n then (i.val : ℤ) + 1 else 0

/-- The two entries in a paired block have labels `i+1` and `n-i-1`. -/
private def pairBlock {k : ℕ} (n : ℕ) (i : Fin k) : Matrix (Fin 2) (Fin 2) ℤ :=
  !![1, (i.val : ℤ) + 1; (n : ℤ) - i.val - 1, 1]

private theorem det_pairBlock {k : ℕ} (n : ℕ) (i : Fin k) :
    (pairBlock n i).det = 1 - ((i.val : ℤ) + 1) * ((n : ℤ) - (i.val + 1)) := by
  rw [Matrix.det_fin_two]
  change 1 * 1 - ((i.val : ℤ) + 1) * ((n : ℤ) - i.val - 1) =
    1 - ((i.val : ℤ) + 1) * ((n : ℤ) - (i.val + 1))
  ring

private def oddIndex (k : ℕ) : (Fin 2 × Fin k) ⊕ Fin 1 → Fin (2 * k + 1)
  | Sum.inl (t, i) =>
    if t = 0 then ⟨i.val, by omega⟩ else ⟨2 * k - 1 - i.val, by omega⟩
  | Sum.inr _ => ⟨2 * k, by omega⟩

private theorem oddIndex_injective (k : ℕ) : Function.Injective (oddIndex k) := by
  intro x y h
  rcases x with ⟨t, i⟩ | u <;> rcases y with ⟨s, j⟩ | v
  · fin_cases t <;> fin_cases s <;> simp_all [oddIndex, Fin.ext_iff] <;> omega
  · fin_cases t <;> simp_all [oddIndex, Fin.ext_iff] <;> omega
  · fin_cases s <;> simp_all [oddIndex, Fin.ext_iff] <;> omega
  · congr 1
    exact Subsingleton.elim _ _

private def oddEquiv (k : ℕ) : (Fin 2 × Fin k) ⊕ Fin 1 ≃ Fin (2 * k + 1) :=
  Equiv.ofBijective (oddIndex k)
    ((Fintype.bijective_iff_injective_and_card _).2 ⟨oddIndex_injective k, by simp⟩)

private def evenIndex (k : ℕ) : (Fin 2 × Fin k) ⊕ Fin 2 → Fin (2 * k + 2)
  | Sum.inl (t, i) =>
    if t = 0 then ⟨i.val, by omega⟩ else ⟨2 * k - i.val, by omega⟩
  | Sum.inr t => if t = 0 then ⟨k, by omega⟩ else ⟨2 * k + 1, by omega⟩

private theorem evenIndex_injective (k : ℕ) : Function.Injective (evenIndex k) := by
  intro x y h
  rcases x with ⟨t, i⟩ | u <;> rcases y with ⟨s, j⟩ | v
  · fin_cases t <;> fin_cases s <;> simp_all [evenIndex, Fin.ext_iff] <;> omega
  · fin_cases t <;> fin_cases v <;> simp_all [evenIndex, Fin.ext_iff] <;> omega
  · fin_cases u <;> fin_cases s <;> simp_all [evenIndex, Fin.ext_iff] <;> omega
  · fin_cases u <;> fin_cases v <;> simp_all [evenIndex, Fin.ext_iff] <;> omega

private def evenEquiv (k : ℕ) : (Fin 2 × Fin k) ⊕ Fin 2 ≃ Fin (2 * k + 2) :=
  Equiv.ofBijective (evenIndex k)
    ((Fintype.bijective_iff_injective_and_card _).2 ⟨evenIndex_injective k, by simp⟩)

private theorem odd_blocks (k : ℕ) :
    (matrix (2 * k + 1)).submatrix (oddIndex k) (oddIndex k) =
      Matrix.fromBlocks (Matrix.blockDiagonal (pairBlock (2 * k + 1))) 0 0
        (1 : Matrix (Fin 1) (Fin 1) ℤ) := by
  ext x y
  rcases x with ⟨t, i⟩ | u <;> rcases y with ⟨s, j⟩ | v
  · fin_cases t <;> fin_cases s
    all_goals
      dsimp [Matrix.submatrix, oddIndex, Matrix.fromBlocks, Matrix.blockDiagonal, pairBlock]
      simp only [matrix, Fin.ext_iff]
      split_ifs <;> omega
  · fin_cases t <;> fin_cases v
    all_goals
      dsimp [Matrix.submatrix, oddIndex, Matrix.fromBlocks]
      simp only [matrix, Fin.ext_iff]
      split_ifs <;> omega
  · fin_cases u
    fin_cases s
    all_goals
      dsimp [Matrix.submatrix, oddIndex, Matrix.fromBlocks]
      simp only [matrix, Fin.ext_iff]
      split_ifs <;> omega
  · fin_cases u
    fin_cases v
    simp [matrix, oddIndex, Matrix.submatrix, Matrix.fromBlocks]

private theorem even_blocks (k : ℕ) :
    (matrix (2 * k + 2)).submatrix (evenIndex k) (evenIndex k) =
      Matrix.fromBlocks (Matrix.blockDiagonal (pairBlock (2 * k + 2))) 0 0
        (1 : Matrix (Fin 2) (Fin 2) ℤ) := by
  ext x y
  rcases x with ⟨t, i⟩ | u <;> rcases y with ⟨s, j⟩ | v
  · fin_cases t <;> fin_cases s
    all_goals
      dsimp [Matrix.submatrix, evenIndex, Matrix.fromBlocks, Matrix.blockDiagonal, pairBlock]
      simp only [matrix, Fin.ext_iff]
      split_ifs <;> omega
  · fin_cases t <;> fin_cases v
    all_goals
      dsimp [Matrix.submatrix, evenIndex, Matrix.fromBlocks]
      simp only [matrix, Fin.ext_iff]
      split_ifs <;> omega
  · fin_cases u <;> fin_cases s
    all_goals
      dsimp [Matrix.submatrix, evenIndex, Matrix.fromBlocks]
      simp only [matrix, Fin.ext_iff]
      split_ifs <;> omega
  · fin_cases u <;> fin_cases v
    all_goals
      dsimp [Matrix.submatrix, evenIndex, Matrix.fromBlocks]
      simp only [matrix, Matrix.one_apply, Fin.ext_iff]
      norm_num only [Fin.coe_ofNat_eq_mod]
      split_ifs <;> simp_all <;> omega
private theorem det_odd (k : ℕ) :
    (matrix (2 * k + 1)).det =
      ∏ i ∈ Finset.range k,
        (1 - ((i : ℤ) + 1) * (((2 * k + 1 : ℕ) : ℤ) - ((i : ℤ) + 1))) := by
  rw [Finset.prod_range]
  have h := Matrix.det_submatrix_equiv_self (oddEquiv k) (matrix (2 * k + 1))
  change ((matrix (2 * k + 1)).submatrix (oddIndex k) (oddIndex k)).det = _ at h
  rw [odd_blocks, Matrix.det_fromBlocks_zero₂₁] at h
  simpa only [Matrix.det_blockDiagonal, Matrix.det_one, mul_one, det_pairBlock] using h.symm

private theorem det_even (k : ℕ) :
    (matrix (2 * k + 2)).det =
      ∏ i ∈ Finset.range k,
        (1 - ((i : ℤ) + 1) * (((2 * k + 2 : ℕ) : ℤ) - ((i : ℤ) + 1))) := by
  rw [Finset.prod_range]
  have h := Matrix.det_submatrix_equiv_self (evenEquiv k) (matrix (2 * k + 2))
  change ((matrix (2 * k + 2)).submatrix (evenIndex k) (evenIndex k)).det = _ at h
  rw [even_blocks, Matrix.det_fromBlocks_zero₂₁] at h
  simpa only [Matrix.det_blockDiagonal, Matrix.det_one, mul_one, det_pairBlock] using h.symm

/-- The determinant formula in zero-based product notation, including the empty matrix. -/
theorem det_matrix_range (n : ℕ) :
    (matrix n).det =
      ∏ i ∈ Finset.range ((n - 1) / 2), (1 - ((i : ℤ) + 1) * ((n : ℤ) - ((i : ℤ) + 1))) := by
  cases n with
  | zero => simp
  | succ m =>
    let k := m / 2
    have hm : m = 2 * k ∨ m = 2 * k + 1 := by dsimp [k]; omega
    rcases hm with hm | hm
    · have hn : m + 1 = 2 * k + 1 := by omega
      change (matrix (m + 1)).det = _
      rw [hn]
      have hd : (2 * k + 1 - 1) / 2 = k := by omega
      rw [hd]
      exact det_odd k
    · have hn : m + 1 = 2 * k + 2 := by omega
      change (matrix (m + 1)).det = _
      rw [hn]
      have hd : (2 * k + 2 - 1) / 2 = k := by omega
      rw [hd]
      exact det_even k

/-- Fried's formula for OEIS A071999, with the original product indexed by `1, ..., (n-1)/2`.
All arithmetic inside each factor is integer arithmetic. -/
theorem det_matrix (n : ℕ) :
    (matrix n).det =
      ∏ i ∈ Finset.Icc 1 ((n - 1) / 2), (1 - (i : ℤ) * ((n : ℤ) - i)) := by
  have hi : Finset.Icc 1 ((n - 1) / 2) = Finset.Ico 1 ((n - 1) / 2 + 1) := by
    ext i
    simp only [Finset.mem_Icc, Finset.mem_Ico]
    omega
  rw [det_matrix_range, hi, Finset.prod_Ico_eq_prod_range]
  simp only [Nat.add_sub_cancel]
  apply Finset.prod_congr rfl
  intro i _
  push_cast
  ring

#print axioms det_matrix

end Math.A071999

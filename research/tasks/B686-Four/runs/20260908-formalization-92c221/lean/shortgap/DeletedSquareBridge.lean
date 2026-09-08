import research.tasks.«B686-Four».runs.«20260908-formalization-92c221».lean.shortgap.SmallGapBridge
import Mathlib.Tactic.IntervalCases

/-! The actual two retained blocks supply the distinct offsets and positive
square in Mukhopadhyay--Shorey (2004), Theorem 3, middle branch (16).
Only that external theorem remains a premise of this application. -/
namespace B686ShortGap
open Finset

def kappa : ℕ → ℕ
  | 2 => 8
  | 3 => 9
  | 4 => 11
  | 5 => 15
  | 6 => 16
  | 7 => 24
  | _ => 0

/-- The exact middle branch, in zero-based finite-set form. Its proof is
an explicit outstanding external obligation, not a project axiom. -/
def DeletedSquareMiddle : Prop :=
  ∀ N K t : ℕ, 0 < N → 2 ≤ t → t ≤ 7 → t + 2 ≤ K → K < N → N ≤ K ^ 2 →
    ∀ D : Finset ℕ, D ⊆ range K → D.card = K - t →
      ∀ z : ℕ, 0 < z → (∏ i ∈ D, (N + i)) = z ^ 2 → K ≤ kappa t

def keptOffsets (k h : ℕ) : Finset ℕ :=
  range k ∪ (range k).image (fun i => k + h + i)

lemma keptOffsets_disjoint (k h : ℕ) :
    Disjoint (range k) ((range k).image (fun i => k + h + i)) := by
  apply disjoint_left.mpr
  intro i hi hj
  obtain ⟨j, hj, rfl⟩ := mem_image.mp hj
  have hi' := mem_range.mp hi
  omega

lemma keptOffsets_subset (k h : ℕ) : keptOffsets k h ⊆ range (2 * k + h) := by
  intro i hi
  rcases mem_union.mp hi with hi | hi
  · have hh := mem_range.mp hi
    apply mem_range.mpr
    omega
  · obtain ⟨j, hj, rfl⟩ := mem_image.mp hi
    have hj' := mem_range.mp hj
    apply mem_range.mpr
    omega

lemma keptOffsets_card (k h : ℕ) : (keptOffsets k h).card = 2 * k := by
  rw [keptOffsets, card_union_of_disjoint (keptOffsets_disjoint k h),
    card_image_of_injective _ (by intro i j hij; dsimp only at hij; omega), card_range]
  omega

lemma range_product_eq (k n : ℕ) : (∏ i ∈ range k, (n + 1 + i)) = product k n := by
  unfold product B686Round3SmallGap.product
  apply prod_bij (fun i _ => i + 1)
  · intro i hi
    have hh := mem_range.mp hi
    apply mem_Icc.mpr
    omega
  · intro i hi j hj hij
    omega
  · intro j hj
    have hj' := mem_Icc.mp hj
    refine ⟨j - 1, mem_range.mpr (by omega), by omega⟩
  · intro i hi
    omega

lemma keptOffsets_product (k n h : ℕ) :
    (∏ i ∈ keptOffsets k h, (n + 1 + i)) = product k n * product k (n + k + h) := by
  rw [keptOffsets, prod_union (keptOffsets_disjoint k h),
    prod_image (by intro i hi j hj hij; dsimp only at hij; omega), range_product_eq]
  congr 1
  convert range_product_eq k (n + k + h) using 1 <;>
    apply prod_congr rfl <;> intro i hi <;> omega

/-- All the retained factors are actually those of the original equation;
there is no assumed square or assumed deletion certificate. -/
theorem keptOffsets_square (k n h : ℕ)
    (heq : product k (n + k + h) = 4 * product k n) :
    (∏ i ∈ keptOffsets k h, (n + 1 + i)) = (2 * product k n) ^ 2 := by
  rw [keptOffsets_product, heq]
  ring

theorem no_gap_two_seven_of_deleted_square (hM : DeletedSquareMiddle)
    (k n h : ℕ) (hk : 2 ≤ k) (hh2 : 2 ≤ h) (hh7 : h ≤ 7) :
    product k (n + k + h) ≠ 4 * product k n := by
  intro heq
  by_cases hk21 : k ≤ 21
  · exact B686Round3SmallGap.no_small_gap_k_le21 k h n hk hk21 hh7 heq
  · have hnlo := B686Round3SmallGap.start_exceeds_span k (k + h) n (by omega)
      (by omega) (by simpa [Nat.add_assoc] using heq)
    have hnhi := B686GapBounds.start_below_span_square k n (k + h) (by omega)
      (by simpa [product, B686Round3SmallGap.product, B686GapBounds.product,
        Nat.add_assoc] using heq)
    have hb := hM (n + 1) (2 * k + h) h (by omega) hh2 hh7 (by omega)
      (by omega) (by simpa only [show k + (k + h) = 2 * k + h by omega] using hnhi.le)
      (keptOffsets k h) (keptOffsets_subset k h)
      (by rw [keptOffsets_card]; omega) (2 * product k n)
      (Nat.mul_pos (by decide) (B686Round3SmallGap.product_pos k n))
      (keptOffsets_square k n h heq)
    have hkap : kappa h ≤ 24 := by interval_cases h <;> norm_num [kappa]
    omega

/-- The exact adopted original-hypothesis conclusion, with the two precise
external inputs still visible. This does not close either external theorem. -/
theorem original_gap_ge_eight_of_external (hS : SylvesterSchur) (hM : DeletedSquareMiddle)
    (k n m : ℕ) (hk : 2 ≤ k) (hsep : n + k ≤ m)
    (heq : (∏ i ∈ Icc 1 k, (m + i)) = 4 * ∏ i ∈ Icc 1 k, (n + i)) :
    n + k + 8 ≤ m := by
  by_contra hnot
  let h := m - (n + k)
  have hh : h ≤ 7 := by dsimp [h]; omega
  have hm : m = n + k + h := by dsimp [h]; omega
  have heq' : product k (n + k + h) = 4 * product k n := by
    simpa only [product, B686Round3SmallGap.product, hm] using heq
  by_cases hsmall : h ≤ 1
  · exact no_gap_zero_one_of_sylvester hS k n h hk hsmall heq'
  · exact no_gap_two_seven_of_deleted_square hM k n h hk (by omega) hh heq'

/-- info: 'B686ShortGap.keptOffsets_square' depends on axioms: [propext, Classical.choice, Quot.sound] -/
#guard_msgs in
#print axioms keptOffsets_square
/-- info: 'B686ShortGap.no_gap_two_seven_of_deleted_square' depends on axioms: [propext, Classical.choice, Quot.sound] -/
#guard_msgs in
#print axioms no_gap_two_seven_of_deleted_square
/-- info: 'B686ShortGap.original_gap_ge_eight_of_external' depends on axioms: [propext, Classical.choice, Quot.sound] -/
#guard_msgs in
#print axioms original_gap_ge_eight_of_external
end B686ShortGap

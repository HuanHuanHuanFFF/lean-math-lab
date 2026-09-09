import research.tasks.«B686-Four».runs.«20260908-formalization-92c221».lean.canonical.vendor.sliced.CanonicalOwnerDensityInterface
import Mathlib.Algebra.Order.BigOperators.Group.Finset
import Mathlib.Algebra.BigOperators.GroupWithZero.Finset
import Mathlib.Data.Finset.Max
import Mathlib.Data.Nat.Factorial.BigOperators
import Mathlib.Data.Nat.GCD.Basic
import Mathlib.Tactic.Linarith

namespace B686CanonicalDensity

open Finset
open B686CanonicalVendor.CanonicalOwnerDensity

noncomputable section

/-- Distinct integers at least two have product at least `(card+1)!`. -/
theorem factorial_card_succ_le_prod (t : Finset ℕ) (ht : ∀ x ∈ t, 2 ≤ x) :
    (t.card + 1).factorial ≤ ∏ x ∈ t, x := by
  induction t using Finset.induction_on_max with
  | empty => simp
  | insert a t hmax ih =>
      have ha : 2 ≤ a := ht a (mem_insert_self a t)
      have hnot : a ∉ t := fun hh => (lt_irrefl a) (hmax a hh)
      have ht' : ∀ x ∈ t, 2 ≤ x := fun x hx => ht x (mem_insert_of_mem hx)
      have hcard := Finset.card_le_card (show t ⊆ Finset.Ico 2 a by
        intro x hx
        exact mem_Ico.mpr ⟨ht' x hx, hmax x hx⟩)
      rw [Nat.card_Ico] at hcard
      have hsize : t.card + 2 ≤ a := by omega
      rw [card_insert_of_notMem hnot, Nat.factorial_succ, prod_insert hnot]
      exact Nat.mul_le_mul hsize (ih ht')

/-- The positions of all nonunit canonical cells, including every row and column. -/
def support {P k n d : ℕ} (S : SystemInput P k n d) : Finset (ℕ × ℕ) :=
  ((Icc 1 k) ×ˢ (Icc 1 k)).filter (fun ji => S.cell ji.1 ji.2 ≠ 1)

theorem cell_pos {P k n d : ℕ} (S : SystemInput P k n d) (hP : 0 < P)
    {j i : ℕ} (hj : j ∈ Icc 1 k) (hi : i ∈ Icc 1 k) :
    0 < S.cell j i := by
  have hg : S.residual * (∏ j ∈ Icc 1 k, ∏ i ∈ Icc 1 k, S.cell j i) ≠ 0 := by
    rw [S.global_product]
    omega
  have hprod : (∏ j ∈ Icc 1 k, ∏ i ∈ Icc 1 k, S.cell j i) ≠ 0 :=
    right_ne_zero_of_mul hg
  exact Nat.pos_of_ne_zero ((prod_ne_zero_iff.mp (prod_ne_zero_iff.mp hprod j hj)) i hi)

theorem support_cell_injective {P k n d : ℕ} (S : SystemInput P k n d) :
    Set.InjOn (fun ji : ℕ × ℕ => S.cell ji.1 ji.2) (support S) := by
  intro x hx y hy heq
  have hx' := mem_filter.mp hx
  have hy' := mem_filter.mp hy
  have hxmem := mem_product.mp hx'.1
  have hymem := mem_product.mp hy'.1
  change S.cell x.1 x.2 = S.cell y.1 y.2 at heq
  by_contra hne
  have hc := S.cells_pairwise_coprime x.1 hxmem.1 x.2 hxmem.2
    y.1 hymem.1 y.2 hymem.2 hne
  rw [heq, Nat.coprime_self] at hc
  exact hy'.2 hc

theorem support_factorial_le {P k n d : ℕ} (S : SystemInput P k n d)
    (hP : 0 < P) : ((support S).card + 1).factorial ≤ P := by
  let f : ℕ × ℕ → ℕ := fun ji => S.cell ji.1 ji.2
  have hinj : Set.InjOn f (support S) := support_cell_injective S
  have hbound := factorial_card_succ_le_prod ((support S).image f) (by
    intro x hx
    obtain ⟨ji, hji, rfl⟩ := mem_image.mp hx
    have hji' := mem_filter.mp hji
    have hmem := mem_product.mp hji'.1
    have hp := cell_pos S hP hmem.1 hmem.2
    change 2 ≤ S.cell ji.1 ji.2
    omega)
  rw [card_image_of_injOn hinj, prod_image hinj] at hbound
  have heq : (∏ ji ∈ support S, f ji) =
      ∏ j ∈ Icc 1 k, ∏ i ∈ Icc 1 k, S.cell j i := by
    unfold support f
    rw [prod_filter_ne_one, prod_product]
  rw [heq] at hbound
  have hres : 1 ≤ S.residual := by
    have hg := S.global_product
    by_contra hh
    have hz : S.residual = 0 := by omega
    simp [hz] at hg
    omega
  calc
    _ ≤ _ := hbound
    _ ≤ S.residual * (∏ j ∈ Icc 1 k, ∏ i ∈ Icc 1 k, S.cell j i) := by
      exact Nat.le_mul_of_pos_left _ hres
    _ = P := S.global_product

theorem block_product_pos (k n : ℕ) : 0 < ∏ i ∈ Icc 1 k, (n + i) := by
  apply prod_pos
  intro i hi
  have := (mem_Icc.mp hi).1
  omega

theorem block_product_le_endpoint_pow (k n : ℕ) :
    (∏ i ∈ Icc 1 k, (n + i)) ≤ (n + k) ^ k := by
  have hh := prod_le_pow_card (Icc 1 k) (fun i => n + i) (n + k) (by
    intro i hi
    exact Nat.add_le_add_left (mem_Icc.mp hi).2 n)
  simpa using hh

/-- No original factor is removed in passing from the canonical matrix to the endpoint. -/
theorem support_product_bounds {k n d : ℕ}
    (S : SystemInput (∏ i ∈ Icc 1 k, (n + i)) k n d) :
    ((support S).card + 1).factorial ≤ (∏ i ∈ Icc 1 k, (n + i)) ∧
      (∏ i ∈ Icc 1 k, (n + i)) ≤ (n + k) ^ k :=
  ⟨support_factorial_le S (block_product_pos k n), block_product_le_endpoint_pow k n⟩

end

end B686CanonicalDensity

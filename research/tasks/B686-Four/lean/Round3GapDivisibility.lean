import Mathlib.Algebra.BigOperators.Ring.Nat
import Mathlib.Algebra.Ring.Divisibility.Basic
import Mathlib.Order.Interval.Finset.Nat
import Mathlib.Tactic.Ring
import Mathlib.Tactic.NormNum

/-!
An exact congruence at every omitted factor, valid for arbitrary k and h.
This is only a necessary condition; the right-hand side is allowed to be zero.
-/

namespace B686Round3GapDivisibility

def product (k : ℕ) (t : ℤ) : ℤ := ∏ i ∈ Finset.Icc 1 k, (t + i)

theorem dvd_prod_sub_prod {α : Type*} (s : Finset α) (q : ℤ) (f g : α → ℤ)
    (h : ∀ i ∈ s, q ∣ f i - g i) : q ∣ (∏ i ∈ s, f i) - ∏ i ∈ s, g i := by
  classical
  induction s using Finset.induction_on with
  | empty => simp
  | @insert a s ha ih =>
    rw [Finset.prod_insert ha, Finset.prod_insert ha]
    have ha' := h a (Finset.mem_insert_self a s)
    have hs := ih (fun i hi => h i (Finset.mem_insert_of_mem hi))
    have hfirst : q ∣ (f a - g a) * ∏ i ∈ s, f i := dvd_mul_of_dvd_left ha' _
    have hsecond : q ∣ g a * ((∏ i ∈ s, f i) - ∏ i ∈ s, g i) := dvd_mul_of_dvd_right hs _
    have hsum := dvd_add hfirst hsecond
    have hid : (f a - g a) * (∏ i ∈ s, f i) +
        g a * ((∏ i ∈ s, f i) - ∏ i ∈ s, g i) =
        f a * (∏ i ∈ s, f i) - g a * ∏ i ∈ s, g i := by ring
    rwa [hid] at hsum

theorem reflected_product (k n j : ℕ) (hj : 1 ≤ j) :
    product k n = ∏ i ∈ Finset.Icc 1 k,
      ((n : ℤ) + k + j - ((j - 1 : ℕ) + (i : ℤ))) := by
  unfold product
  apply Finset.prod_bij (fun i _ => k + 1 - i)
  · intro i hi
    have hi' := Finset.mem_Icc.mp hi
    apply Finset.mem_Icc.mpr
    omega
  · intro i hi l hl heq
    have hi' := Finset.mem_Icc.mp hi
    have hl' := Finset.mem_Icc.mp hl
    omega
  · intro i hi
    have hi' := Finset.mem_Icc.mp hi
    refine ⟨k + 1 - i, Finset.mem_Icc.mpr ?_, ?_⟩ <;> omega
  · intro i hi
    have hi' := Finset.mem_Icc.mp hi
    omega

theorem gap_factor_divides (k n h j : ℕ) (hj : 1 ≤ j) (hjh : j ≤ h)
    (heq : product k ((n : ℤ) + k + h) = 4 * product k n) :
    ((n : ℤ) + k + j) ∣
      product k (h - j : ℕ) - 4 * (-1 : ℤ) ^ k * product k (j - 1 : ℕ) := by
  let q : ℤ := n + k + j
  have hu : q ∣ product k ((n : ℤ) + k + h) - product k (h - j : ℕ) := by
    apply dvd_prod_sub_prod
    intro i hi
    have hid : ((n : ℤ) + k + h + i) - ((h - j : ℕ) + (i : ℤ)) = q := by
      dsimp [q]
      omega
    rw [hid]
  have hl : q ∣ product k n - (-1 : ℤ) ^ k * product k (j - 1 : ℕ) := by
    rw [reflected_product k n j hj]
    have hc : (∏ i ∈ Finset.Icc 1 k, -((j - 1 : ℕ) + (i : ℤ))) =
        (-1 : ℤ) ^ k * product k (j - 1 : ℕ) := by
      calc
        (∏ i ∈ Finset.Icc 1 k, -((j - 1 : ℕ) + (i : ℤ))) =
            ∏ i ∈ Finset.Icc 1 k, (-1 : ℤ) * ((j - 1 : ℕ) + (i : ℤ)) := by
          apply Finset.prod_congr rfl
          intro i hi
          ring
        _ = (-1 : ℤ) ^ k * product k (j - 1 : ℕ) := by
          simp only [Finset.prod_mul_distrib, Finset.prod_const,
            Nat.card_Icc, Nat.add_sub_cancel, product]
    rw [← hc]
    apply dvd_prod_sub_prod
    intro i hi
    have hid : ((n : ℤ) + k + j - ((j - 1 : ℕ) + (i : ℤ))) -
        -((j - 1 : ℕ) + (i : ℤ)) = q := by dsimp [q]; ring
    rw [hid]
  have hfour : q ∣ 4 * (product k n - (-1 : ℤ) ^ k * product k (j - 1 : ℕ)) :=
    dvd_mul_of_dvd_right hl 4
  have hd := dvd_sub hfour hu
  rw [heq] at hd
  have hid : 4 * (product k n - (-1 : ℤ) ^ k * product k (j - 1 : ℕ)) -
      (4 * product k n - product k (h - j : ℕ)) =
      product k (h - j : ℕ) - 4 * (-1 : ℤ) ^ k * product k (j - 1 : ℕ) := by ring
  rwa [hid] at hd

/-- info: 'B686Round3GapDivisibility.dvd_prod_sub_prod' depends on axioms: [propext, Classical.choice, Quot.sound] -/
#guard_msgs in
#print axioms dvd_prod_sub_prod
/-- info: 'B686Round3GapDivisibility.reflected_product' depends on axioms: [propext, Classical.choice, Quot.sound] -/
#guard_msgs in
#print axioms reflected_product
/-- info: 'B686Round3GapDivisibility.gap_factor_divides' depends on axioms: [propext, Classical.choice, Quot.sound] -/
#guard_msgs in
#print axioms gap_factor_divides

end B686Round3GapDivisibility

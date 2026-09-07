import Mathlib.Algebra.Order.BigOperators.GroupWithZero.Finset
import Mathlib.Algebra.BigOperators.Ring.Nat
import Mathlib.Order.Interval.Finset.Nat
import Mathlib.Tactic.NormNum

/-!
Exact domain/target bridge and elementary range bounds for B686 Four.
This file does not settle the target or exclude an entire new value of k.
The rational statement is transcribed from the pinned upstream source snapshot;
it does not import the upstream open declaration or its placeholder proof.
-/

namespace B686Target

def product (k t : ℕ) : ℕ := ∏ i ∈ Finset.Icc 1 k, (t + i)

def RationalWitness : Prop :=
  ∃ k : ℕ, 2 ≤ k ∧ ∃ n m : ℕ, n + k ≤ m ∧
    (4 : ℚ) = (∏ i ∈ Finset.Icc 1 k, (m + i)) /
      (∏ i ∈ Finset.Icc 1 k, (n + i))

def ProductWitness : Prop :=
  ∃ k : ℕ, 2 ≤ k ∧ ∃ n m : ℕ, n + k ≤ m ∧
    product k m = 4 * product k n

theorem product_pos (k t : ℕ) : 0 < product k t := by
  apply Finset.prod_pos
  intro i hi
  have hi' := (Finset.mem_Icc.mp hi).1
  omega

theorem ratio_iff (k n m : ℕ) :
    (4 : ℚ) = (product k m : ℚ) / (product k n : ℚ) ↔
      product k m = 4 * product k n := by
  have hn : (product k n : ℚ) ≠ 0 := by
    exact_mod_cast (Nat.ne_of_gt (product_pos k n))
  rw [eq_div_iff hn]
  constructor
  · intro h
    exact_mod_cast h.symm
  · intro h
    exact_mod_cast h.symm

theorem witness_iff : RationalWitness ↔ ProductWitness := by
  unfold RationalWitness ProductWitness
  change (∃ k : ℕ, 2 ≤ k ∧ ∃ n m : ℕ, n + k ≤ m ∧
    (4 : ℚ) = (product k m : ℚ) / (product k n : ℚ)) ↔ _
  simp only [ratio_iff]

theorem negative_target_iff :
    ¬ (True ↔ RationalWitness) ↔
      ∀ k : ℕ, 2 ≤ k → ∀ n m : ℕ, n + k ≤ m →
        product k m ≠ 4 * product k n := by
  rw [true_iff, witness_iff]
  simp only [ProductWitness, not_exists, not_and]

theorem upper_bound (k n m : ℕ) (hk : 2 ≤ k)
    (h : product k m = 4 * product k n) : m < 2 * n + k := by
  by_contra hnot
  have hm : 2 * n + k ≤ m := by omega
  have hp : (∏ i ∈ Finset.Icc 1 k, 2 * (n + i)) < product k m := by
    apply Finset.prod_lt_prod
    · intro i hi
      have hi1 := (Finset.mem_Icc.mp hi).1
      omega
    · intro i hi
      have hik := (Finset.mem_Icc.mp hi).2
      omega
    · refine ⟨1, Finset.mem_Icc.mpr ⟨by decide, by omega⟩, ?_⟩
      omega
  have hscaled : (∏ i ∈ Finset.Icc 1 k, 2 * (n + i)) =
      2 ^ k * product k n := by
    simp only [Finset.prod_mul_distrib, Finset.prod_const, Nat.card_Icc,
      Nat.add_sub_cancel, product]
  have hpow : 4 ≤ 2 ^ k := by
    exact Nat.pow_le_pow_right (by decide : 0 < 2) hk
  have hle := Nat.mul_le_mul_right (product k n) hpow
  rw [hscaled, h] at hp
  omega

theorem n_pos (k n m : ℕ) (hk : 2 ≤ k) (hm : n + k ≤ m)
    (h : product k m = 4 * product k n) : 0 < n := by
  have hu := upper_bound k n m hk h
  omega

/-- info: 'B686Target.product_pos' depends on axioms: [propext, Classical.choice, Quot.sound] -/
#guard_msgs in
#print axioms product_pos
/-- info: 'B686Target.ratio_iff' depends on axioms: [propext, Classical.choice, Quot.sound] -/
#guard_msgs in
#print axioms ratio_iff
/-- info: 'B686Target.witness_iff' depends on axioms: [propext, Classical.choice, Quot.sound] -/
#guard_msgs in
#print axioms witness_iff
/-- info: 'B686Target.negative_target_iff' depends on axioms: [propext, Classical.choice, Quot.sound] -/
#guard_msgs in
#print axioms negative_target_iff
/-- info: 'B686Target.upper_bound' depends on axioms: [propext, Classical.choice, Quot.sound] -/
#guard_msgs in
#print axioms upper_bound
/-- info: 'B686Target.n_pos' depends on axioms: [propext, Classical.choice, Quot.sound] -/
#guard_msgs in
#print axioms n_pos

end B686Target

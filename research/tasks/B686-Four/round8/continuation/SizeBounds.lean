import research.tasks.«B686-Four».independent.TargetBridge
import Mathlib.Algebra.Order.Field.Basic
import Mathlib.Algebra.Order.BigOperators.Group.Finset
import Mathlib.Algebra.BigOperators.Ring.Finset
import Mathlib.Tactic.NormNum
import Mathlib.Tactic.Linarith
import Mathlib.Tactic.Ring
import Mathlib.Tactic.FieldSimp
import Mathlib.Tactic.GCongr

namespace B686Size
open Finset
open B686Target

set_option maxHeartbeats 800000

theorem quadratic_bernoulli (k : ℕ) (x : ℚ) (hx : 0 ≤ x) :
    1 + (k : ℚ) * x + ((k : ℚ) * ((k : ℚ) - 1) / 2) * x^2 ≤ (1+x)^k := by
  induction k with
  | zero => norm_num
  | succ k ih =>
    have hmul := mul_le_mul_of_nonneg_right ih (show 0 ≤ 1+x by linarith)
    have hc : 0 ≤ (k : ℚ) * ((k : ℚ)-1) := by
      rcases k with _ | k
      · norm_num
      · have : 0 ≤ (k : ℚ) := Nat.cast_nonneg k
        push_cast
        nlinarith
    have hextra := mul_nonneg hc (pow_nonneg hx 3)
    calc
      _ ≤ (1 + (k : ℚ)*x + ((k : ℚ)*((k : ℚ)-1)/2)*x^2)*(1+x) := by
        push_cast
        nlinarith only [hextra]
      _ ≤ (1+x)^k*(1+x) := hmul
      _ = (1+x)^(k+1) := (pow_succ _ _).symm

theorem four_le_one_add_two_div_pow (k : ℕ) (hk : 2 ≤ k) :
    (4 : ℚ) ≤ (1+2/(k : ℚ))^k := by
  have hkR : (2 : ℚ) ≤ k := by exact_mod_cast hk
  have hkp : (0 : ℚ) < k := by linarith
  have h := quadratic_bernoulli k (2/(k : ℚ)) (div_nonneg (by norm_num) hkp.le)
  have heq : 1 + (k : ℚ)*(2/k) + ((k : ℚ)*((k : ℚ)-1)/2)*(2/k)^2 = 5-2/k := by
    field_simp
    ring
  rw [heq] at h
  have hdiv : (2 : ℚ)/(k : ℚ) ≤ 1 := (div_le_one hkp).mpr hkR
  linarith

theorem one_sub_sum_le_prod (s : Finset ℕ) (f : ℕ → ℚ)
    (hf : ∀ i ∈ s, 0 ≤ f i ∧ f i ≤ 1) :
    1 - ∑ i ∈ s, f i ≤ ∏ i ∈ s, (1-f i) := by
  induction s using Finset.induction_on with
  | empty => simp
  | @insert a s ha ih =>
    have hfa := hf a (by simp)
    have hfs : ∀ i ∈ s, 0 ≤ f i ∧ f i ≤ 1 := fun i hi => hf i (by simp [hi])
    have hsum : 0 ≤ ∑ i ∈ s, f i := sum_nonneg (fun i hi => (hfs i hi).1)
    have hmul := mul_le_mul_of_nonneg_left (ih hfs) (show 0 ≤ 1-f a by linarith)
    rw [sum_insert ha, prod_insert ha]
    nlinarith [mul_nonneg hfa.1 hsum]

theorem ratio_product_cast (k a b : ℕ) :
    (∏ i ∈ Finset.Icc 1 k, (((a : ℚ)+i)/((b : ℚ)+i))) =
      (product k a : ℚ)/(product k b : ℚ) := by
  simp [product, Nat.cast_prod, Finset.prod_div_distrib]

theorem upper_size (k n m : ℕ) (hk : 2 ≤ k) (hsep : n+k ≤ m)
    (heq : product k m = 4*product k n) :
    3*(m : ℚ) < 4*(k : ℚ)*((m : ℚ)-n) := by
  have hmpos : (0 : ℚ) < m := by exact_mod_cast (show 0 < m by omega)
  have hmn : (n : ℚ) < m := by exact_mod_cast (show n < m by omega)
  have hdpos : (0 : ℚ) < (m : ℚ)-n := sub_pos.mpr hmn
  have hcast : (product k m : ℚ) = 4*(product k n : ℚ) := by exact_mod_cast heq
  have hnprod : (product k n : ℚ) ≠ 0 := by exact_mod_cast (Nat.ne_of_gt (product_pos k n))
  let f : ℕ → ℚ := fun i => ((m : ℚ)-n)/((m : ℚ)+i)
  have hf : ∀ i ∈ Finset.Icc 1 k, 0 ≤ f i ∧ f i ≤ 1 := by
    intro i hi
    have hip : (0 : ℚ) < i := by exact_mod_cast (show 0 < i by have := (mem_Icc.mp hi).1; omega)
    dsimp [f]
    constructor
    · exact (div_pos hdpos (by linarith)).le
    · apply (div_le_one (by linarith)).mpr
      have hn : (0 : ℚ) ≤ n := Nat.cast_nonneg n
      linarith
  have hprod : (∏ i ∈ Finset.Icc 1 k, (1-f i)) = (1/4 : ℚ) := by
    calc
      _ = ∏ i ∈ Finset.Icc 1 k, (((n : ℚ)+i)/((m : ℚ)+i)) := by
        apply prod_congr rfl
        intro i hi
        have hden : (m : ℚ)+i ≠ 0 := by positivity
        dsimp [f]
        field_simp
        ring
      _ = (product k n : ℚ)/(product k m : ℚ) := ratio_product_cast k n m
      _ = 1/4 := by rw [hcast]; field_simp
  have hsum : (∑ i ∈ Finset.Icc 1 k, f i) < (k : ℚ)*(((m : ℚ)-n)/m) := by
    calc
      _ < ∑ i ∈ Finset.Icc 1 k, (((m : ℚ)-n)/m) := by
        apply Finset.sum_lt_sum
        · intro i hi
          have hip : (0 : ℚ) < i := by exact_mod_cast (show 0 < i by have := (mem_Icc.mp hi).1; omega)
          exact (div_lt_div_of_pos_left hdpos hmpos (by linarith)).le
        · refine ⟨1, by simp; omega, ?_⟩
          dsimp [f]
          exact div_lt_div_of_pos_left hdpos hmpos (by norm_num)
      _ = _ := by simp [Nat.card_Icc]
  have hu := one_sub_sum_le_prod (Finset.Icc 1 k) f hf
  rw [hprod] at hu
  have hd : (3/4 : ℚ) < (k : ℚ)*(((m : ℚ)-n)/m) := by linarith
  have hd' : (3/4 : ℚ) < ((k : ℚ)*((m : ℚ)-n))/m := by simpa [mul_div_assoc] using hd
  have := (lt_div_iff₀ hmpos).mp hd'
  nlinarith

#print axioms quadratic_bernoulli
#print axioms four_le_one_add_two_div_pow
#print axioms one_sub_sum_le_prod
#print axioms upper_size

theorem lower_size (k n m : ℕ) (hk : 2 ≤ k) (hsep : n+k ≤ m)
    (heq : product k m = 4*product k n) :
    (k : ℚ)*((m : ℚ)-n) < 2*(m : ℚ) := by
  have hkR : (2 : ℚ) ≤ k := by exact_mod_cast hk
  have hkp : (0 : ℚ) < k := by linarith
  have hcast : (product k m : ℚ) = 4*(product k n : ℚ) := by exact_mod_cast heq
  have hnprod : (product k n : ℚ) ≠ 0 := by exact_mod_cast (Nat.ne_of_gt (product_pos k n))
  have hsepR : (n : ℚ)+k ≤ m := by exact_mod_cast hsep
  by_contra hnot
  have hbad : 2*(m : ℚ) ≤ (k : ℚ)*((m : ℚ)-n) := le_of_not_gt hnot
  have hp : (∏ i ∈ Finset.Icc 1 k, (1+2/(k : ℚ))) <
      ∏ i ∈ Finset.Icc 1 k, (((m : ℚ)+i)/((n : ℚ)+i)) := by
    apply Finset.prod_lt_prod
    · intro i hi
      have h := div_pos (by norm_num : (0 : ℚ) < 2) hkp
      linarith
    · intro i hi
      have hi1 : (1 : ℚ) ≤ i := by exact_mod_cast (mem_Icc.mp hi).1
      have hik : (i : ℚ) ≤ k := by exact_mod_cast (mem_Icc.mp hi).2
      have hden : (0 : ℚ) < (n : ℚ)+i := by linarith [show (0 : ℚ) ≤ n from Nat.cast_nonneg n]
      apply (le_div_iff₀ hden).mpr
      have hf : 2*((n : ℚ)+i)/(k : ℚ) ≤ (m : ℚ)-n := by
        apply (div_le_iff₀ hkp).mpr
        nlinarith
      calc
        (1+2/(k : ℚ))*((n : ℚ)+i) = (n : ℚ)+i+2*((n : ℚ)+i)/k := by ring
        _ ≤ (n : ℚ)+i+((m : ℚ)-n) := add_le_add_right hf _
        _ = (m : ℚ)+i := by ring
    · refine ⟨1, by simp; omega, ?_⟩
      have hden : (0 : ℚ) < (n : ℚ)+1 := by positivity
      apply (lt_div_iff₀ hden).mpr
      have hf : 2*((n : ℚ)+1)/(k : ℚ) < (m : ℚ)-n := by
        apply (div_lt_iff₀ hkp).mpr
        nlinarith
      calc
        (1+2/(k : ℚ))*((n : ℚ)+1) = (n : ℚ)+1+2*((n : ℚ)+1)/k := by ring
        _ < (n : ℚ)+1+((m : ℚ)-n) := add_lt_add_right hf _
        _ = (m : ℚ)+1 := by ring
  have hr : (∏ i ∈ Finset.Icc 1 k, (((m : ℚ)+i)/((n : ℚ)+i))) = 4 := by
    rw [ratio_product_cast, hcast]
    simp [hnprod]
  rw [hr] at hp
  have hp' : (1+2/(k : ℚ))^k < 4 := by simpa [Nat.card_Icc] using hp
  have := four_le_one_add_two_div_pow k hk
  linarith

theorem size_bounds_nat (k n m : ℕ) (hk : 2 ≤ k) (hsep : n+k ≤ m)
    (heq : product k m = 4*product k n) :
    k*(m-n) < 2*m ∧ 3*m < 4*k*(m-n) := by
  have hnm : n ≤ m := by omega
  have hd : ((m-n : ℕ) : ℚ) = (m : ℚ)-n := Nat.cast_sub hnm
  have hl := lower_size k n m hk hsep heq
  have hu := upper_size k n m hk hsep heq
  rw [← hd] at hl hu
  constructor
  · exact_mod_cast hl
  · exact_mod_cast hu

#print axioms lower_size
#print axioms size_bounds_nat

end B686Size

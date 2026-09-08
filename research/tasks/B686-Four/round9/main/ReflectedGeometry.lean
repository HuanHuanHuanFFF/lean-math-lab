import research.tasks.«B686-Four».round8.continuation.SizeBounds
import Mathlib.Tactic.IntervalCases

/-! Source-facing real/integer geometry for the reflected-sum route.
This does not assert the all-prime contact lemma or the prime-power exclusion.
The original product equation, separation, and k >= 2 are explicit hypotheses. -/

namespace B686Reflected
open Finset B686Target

set_option maxHeartbeats 800000

def reflectedSum (k n m : ℕ) : ℕ := m+n+k+1

theorem reflected_product (k m : ℕ) :
    (∏ i ∈ Icc 1 k, (m+(k+1-i))) = product k m := by
  unfold product
  apply prod_bij (fun i _ => k+1-i)
  · intro i hi
    simp only [mem_Icc] at *
    omega
  · intro i hi j hj hij
    simp only [mem_Icc] at hi hj
    omega
  · intro j hj
    refine ⟨k+1-j, ?_, ?_⟩
    · simp only [mem_Icc] at *
      omega
    · have := (mem_Icc.mp hj)
      omega
  · intro i hi
    rfl

theorem reflected_ratio_product (k n m : ℕ)
    (heq : product k m = 4*product k n) :
    (∏ i ∈ Icc 1 k, ((m+(k+1-i) : ℕ) : ℚ)/(n+i : ℕ)) = 4 := by
  rw [prod_div_distrib]
  have hupper : (∏ i ∈ Icc 1 k, ((m+(k+1-i) : ℕ) : ℚ)) =
      (product k m : ℚ) := by
    rw [← Nat.cast_prod, reflected_product]
  have hlower : (∏ i ∈ Icc 1 k, ((n+i : ℕ) : ℚ)) =
      (product k n : ℚ) := by simp [product]
  rw [hupper, hlower]
  have hn : (product k n : ℚ) ≠ 0 := by
    exact_mod_cast (Nat.ne_of_gt (product_pos k n))
  have hc : (product k m : ℚ) = 4*(product k n : ℚ) := by exact_mod_cast heq
  rw [hc]
  field_simp

theorem reflected_position_window (k n m i : ℕ) (hk : 2 ≤ k)
    (hsep : n+k ≤ m) (heq : product k m = 4*product k n)
    (hi : i ∈ Icc 1 k) :
    2*(n+i) < reflectedSum k n m ∧ reflectedSum k n m < 5*(n+i) := by
  have hi' := mem_Icc.mp hi
  have hlo : 2*(n+i) < reflectedSum k n m := by
    unfold reflectedSum
    omega
  refine ⟨hlo, ?_⟩
  let f : ℕ → ℚ := fun j => ((m+(k+1-j) : ℕ) : ℚ)/(n+j : ℕ)
  have hf : ∀ j ∈ Icc 1 k, 1 < f j := by
    intro j hj
    have hj' := mem_Icc.mp hj
    have hden : (0 : ℚ) < (n+j : ℕ) := by exact_mod_cast (show 0 < n+j by omega)
    dsimp [f]
    apply (one_lt_div hden).mpr
    exact_mod_cast (show n+j < m+(k+1-j) by omega)
  have hp : f i < ∏ j ∈ Icc 1 k, f j := by
    let g : ℕ → ℚ := fun j => if j=i then f i else 1
    have hprod : (∏ j ∈ Icc 1 k, g j) = f i := by
      rw [prod_eq_single_of_mem i hi]
      · simp [g]
      · intro j hj hji
        simp [g, hji]
    rw [← hprod]
    apply prod_lt_prod
    · intro j hj
      dsimp [g]
      split_ifs
      · linarith [hf i hi]
      · norm_num
    · intro j hj
      dsimp [g]
      split_ifs with h
      · subst j
        exact le_rfl
      · exact (hf j hj).le
    · by_cases h : i=1
      · refine ⟨2, mem_Icc.mpr ⟨by decide, hk⟩, ?_⟩
        simpa [g, h] using hf 2 (mem_Icc.mpr ⟨by decide, hk⟩)
      · refine ⟨1, mem_Icc.mpr ⟨by decide, by omega⟩, ?_⟩
        simpa [g, Ne.symm h] using hf 1 (mem_Icc.mpr ⟨by decide, by omega⟩)
  have hprod := reflected_ratio_product k n m heq
  change (∏ j ∈ Icc 1 k, f j) = 4 at hprod
  rw [hprod] at hp
  have hden : (0 : ℚ) < (n+i : ℕ) := by exact_mod_cast (show 0 < n+i by omega)
  have hlt := (div_lt_iff₀ hden).mp hp
  have hnat : m+(k+1-i) < 4*(n+i) := by exact_mod_cast hlt
  unfold reflectedSum
  omega

theorem reflected_sum_size (k n m : ℕ) (hk : 2 ≤ k)
    (hsep : n+k ≤ m) (heq : product k m = 4*product k n) :
    (k-1)*(m-n)+k+1 < reflectedSum k n m ∧ k^2+1 < reflectedSum k n m := by
  have hs := (B686Size.size_bounds_nat k n m hk hsep heq).1
  have hnm : n+(m-n)=m := by omega
  have hkm : k-1+1=k := by omega
  have hdk : k ≤ m-n := by omega
  have hm : (k-1)*k ≤ (k-1)*(m-n) := Nat.mul_le_mul_left (k-1) hdk
  have he : (k-1)*(m-n)+(m-n)=k*(m-n) := by nlinarith
  have he2 : (k-1)*k+k=k^2 := by nlinarith
  unfold reflectedSum
  constructor <;> omega

theorem reflected_delta_window (k n m i : ℕ) (hk : 2 ≤ k)
    (hsep : n+k ≤ m) (hi : i ∈ Icc 1 k) :
    0 < reflectedSum k n m - 2*(n+i) ∧
      reflectedSum k n m - 2*(n+i) < 2*(m-n) := by
  have hi' := mem_Icc.mp hi
  unfold reflectedSum
  omega

/-- The complete finite tail left by the paper S=2*p^a reduction.
This is checked directly on the original products, not on a surrogate formula. -/
theorem not_four_sum_fifty_length_five (n m : ℕ)
    (hsep : n+5 ≤ m) (hsum : reflectedSum 5 n m = 50) :
    product 5 m ≠ 4*product 5 n := by
  have hn : n ≤ 19 := by unfold reflectedSum at hsum; omega
  have hm : m=44-n := by unfold reflectedSum at hsum; omega
  subst m
  interval_cases n <;> decide

/-- info: 'B686Reflected.reflected_product' depends on axioms: [propext, Classical.choice, Quot.sound] -/
#guard_msgs in
#print axioms reflected_product
/-- info: 'B686Reflected.reflected_ratio_product' depends on axioms: [propext, Classical.choice, Quot.sound] -/
#guard_msgs in
#print axioms reflected_ratio_product
/-- info: 'B686Reflected.reflected_position_window' depends on axioms: [propext, Classical.choice, Quot.sound] -/
#guard_msgs in
#print axioms reflected_position_window
/-- info: 'B686Reflected.reflected_sum_size' depends on axioms: [propext, Classical.choice, Quot.sound] -/
#guard_msgs in
#print axioms reflected_sum_size
/-- info: 'B686Reflected.reflected_delta_window' depends on axioms: [propext, Classical.choice, Quot.sound] -/
#guard_msgs in
#print axioms reflected_delta_window
/-- info: 'B686Reflected.not_four_sum_fifty_length_five' depends on axioms: [propext, Classical.choice, Quot.sound] -/
#guard_msgs in
#print axioms not_four_sum_fifty_length_five

end B686Reflected

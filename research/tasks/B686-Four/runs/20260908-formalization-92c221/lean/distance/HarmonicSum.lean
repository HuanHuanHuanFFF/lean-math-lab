import research.tasks.«B686-Four».runs.«20260908-formalization-92c221».lean.distance.HarmonicContact
import Mathlib.NumberTheory.Harmonic.Defs
import Mathlib.Algebra.BigOperators.Field

/-! Source alignment of the constructed reduced rational with the adopted
harmonic sum, and uniform coefficient bounds for the final height consumers. -/
namespace B686Harmonic
open Finset Polynomial
set_option maxHeartbeats 2400000

lemma root_cofactor_linear (k i : ℕ) :
    (rootCofactor k i).coeff 1=
      ∑a∈(Icc 1 k).erase i, ∏b∈((Icc 1 k).erase i).erase a,((b : ℤ)-i) := by
  calc
    _ = (rootCofactor k i).derivative.coeff 0 := by simp [coeff_derivative]
    _ = (rootCofactor k i).derivative.eval 0 := coeff_zero_eq_eval_zero _
    _ = _ := by simp [rootCofactor,derivative_prod_finset,eval_finsetSum,eval_prod]

/-- Exact paper coefficient, including its sign, for every k and i. -/
theorem harmonic_ratio_eq_sum (k i : ℕ) :
    harmonicRatio k i=∑a∈(Icc 1 k).erase i, (1/((a : ℚ)-i)) := by
  have hc0 : ((rootCofactor k i).coeff 0 : ℚ)≠0 := by
    exact_mod_cast root_cofactor_constant_ne_zero k i
  unfold harmonicRatio
  rw [root_cofactor_linear]
  push_cast
  rw [Finset.sum_div]
  apply sum_congr rfl
  intro a ha
  have hai := (mem_erase.mp ha).1
  have hdelta : (a : ℚ)-i≠0 := sub_ne_zero.mpr (by exact_mod_cast hai)
  apply (div_eq_iff hc0).mpr
  rw [root_cofactor_constant]
  push_cast
  rw [←mul_prod_erase _ _ ha]
  field_simp

lemma harmonic_eq_sum_Icc (r : ℕ) : harmonic r=∑a∈Icc 1 r, (1/(a : ℚ)) := by
  induction r with
  | zero => simp [harmonic]
  | succ r ih =>
    rw [harmonic_succ,ih,sum_Icc_succ_top (by omega)]
    simp [one_div]

/-- Reflection of the lower offsets, and translation of the upper offsets. -/
lemma harmonic_sum_split (k i : ℕ) (hi : i∈Icc 1 k) :
    harmonicRatio k i=harmonic (k-i)-harmonic (i-1) := by
  have hi' := mem_Icc.mp hi
  have hsets : (Icc 1 k).erase i=Icc 1 (i-1) ∪ Icc (i+1) k := by
    ext a
    simp only [mem_erase,mem_Icc,mem_union]
    omega
  have hdis : Disjoint (Icc 1 (i-1)) (Icc (i+1) k) := by
    apply disjoint_left.mpr
    intro a ha hb
    have := mem_Icc.mp ha
    have := mem_Icc.mp hb
    omega
  have hlo : (∑a∈Icc 1 (i-1), 1/((a : ℚ)-i))= -harmonic (i-1) := by
    rw [harmonic_eq_sum_Icc,←sum_neg_distrib]
    apply sum_bij (fun a _=>i-a)
    · intro a ha
      have := mem_Icc.mp ha
      simp only [mem_Icc]
      omega
    · intro a ha b hb hab
      have := mem_Icc.mp ha
      have := mem_Icc.mp hb
      omega
    · intro b hb
      have := mem_Icc.mp hb
      refine ⟨i-b,by simp only [mem_Icc]; omega,?_⟩
      omega
    · intro a ha
      have ha' := mem_Icc.mp ha
      rw [Nat.cast_sub (by omega : a ≤ i)]
      rw [show (a : ℚ)-i= -((i : ℚ)-a) by ring]
      simp only [one_div,inv_neg]
  have hhi : (∑a∈Icc (i+1) k, 1/((a : ℚ)-i))=harmonic (k-i) := by
    rw [harmonic_eq_sum_Icc]
    apply sum_bij (fun a _=>a-i)
    · intro a ha
      have := mem_Icc.mp ha
      simp only [mem_Icc]
      omega
    · intro a ha b hb hab
      have := mem_Icc.mp ha
      have := mem_Icc.mp hb
      omega
    · intro b hb
      have := mem_Icc.mp hb
      refine ⟨i+b,by simp only [mem_Icc]; omega,?_⟩
      omega
    · intro a ha
      have := mem_Icc.mp ha
      rw [Nat.cast_sub (by omega : i ≤ a)]
  rw [harmonic_ratio_eq_sum,hsets,sum_union hdis,hlo,hhi]
  ring

lemma harmonic_nonneg (r : ℕ) : (0 : ℚ)≤harmonic r := by
  unfold harmonic
  exact sum_nonneg (fun a ha=>by positivity)

lemma harmonic_monotone : Monotone harmonic := by
  apply monotone_nat_of_le_succ
  intro a
  rw [harmonic_succ]
  have h : (0 : ℚ)≤((a+1 : ℕ) : ℚ)⁻¹ := by positivity
  linarith

lemma harmonic_upper_half (r : ℕ) (hr : 1≤r) : harmonic r≤(r+1 : ℚ)/2 := by
  obtain ⟨s,rfl⟩ := Nat.exists_eq_add_of_le hr
  clear hr
  induction s with
  | zero => norm_num [harmonic]
  | succ s ih =>
    rw [show 1+(s+1)=(1+s)+1 by omega,harmonic_succ]
    have ht : (((1+s+1 : ℕ) : ℚ))⁻¹≤1/2 := by
      rw [←one_div]
      apply one_div_le_one_div_of_le (by norm_num : (0 : ℚ)<2)
      norm_cast
      omega
    push_cast at ih ht ⊢
    linarith

/-- The precise signed harmonic number has the bound used at k≥40. -/
theorem harmonic_ratio_abs_le_half (k i : ℕ) (hk : 2≤k) (hi : i∈Icc 1 k) :
    |harmonicRatio k i|≤(k : ℚ)/2 := by
  rw [harmonic_sum_split k i hi]
  have hi' := mem_Icc.mp hi
  have hm := harmonic_upper_half (k-1) (by omega)
  have hl := harmonic_monotone (show i-1≤k-1 by omega)
  have hu := harmonic_monotone (show k-i≤k-1 by omega)
  have hl0 := harmonic_nonneg (i-1)
  have hu0 := harmonic_nonneg (k-i)
  have hc : ((k-1 : ℕ) : ℚ)+1=k := by rw [Nat.cast_sub (by omega)]; norm_num
  rw [hc] at hm
  apply abs_le.mpr
  constructor <;> linarith

/-- info: 'B686Harmonic.harmonic_ratio_eq_sum' depends on axioms: [propext, Classical.choice, Quot.sound] -/
#guard_msgs in
#print axioms harmonic_ratio_eq_sum
/-- info: 'B686Harmonic.harmonic_ratio_abs_le_half' depends on axioms: [propext, Classical.choice, Quot.sound] -/
#guard_msgs in
#print axioms harmonic_ratio_abs_le_half
end B686Harmonic

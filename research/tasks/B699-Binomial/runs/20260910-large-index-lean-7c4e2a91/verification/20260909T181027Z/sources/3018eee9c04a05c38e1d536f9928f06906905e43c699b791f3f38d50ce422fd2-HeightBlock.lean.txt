import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.HeightRows

set_option autoImplicit false
set_option relaxedAutoImplicit false

/-!
An endpoint certificate for every index in a closed block.

The height predicate and all window definitions are imported from the fixed
source baseline 12c31b8b5729b0017cf8e1423cd98ed5230aaaae. In particular,
`smallPrimeCount i` counts every prime strictly below `i`; the endpoint has
not been shifted. This file does not depend on the former HeightApprox draft.
-/

namespace B699HeightBlock

open B699LowIndex B699LargePrimeStructure B699Middle

/-- The complete strict prime count is monotone, including prime endpoints. -/
theorem smallPrimeCount_mono {i U : ℕ} (hiU : i ≤ U) :
    smallPrimeCount i ≤ smallPrimeCount U := by
  unfold smallPrimeCount
  apply Finset.card_le_card
  intro p hp
  simp only [Finset.mem_filter, Finset.mem_range] at hp ⊢
  exact ⟨lt_of_lt_of_le hp.1 hiU, hp.2⟩

theorem factorial_mono {i U : ℕ} (hiU : i ≤ U) :
    i.factorial ≤ U.factorial :=
  Nat.factorial_le hiU

theorem windowSum_mono {a b : ℕ} (hab : a ≤ b) :
    windowSum a ≤ windowSum b := by
  unfold windowSum
  exact Finset.sum_le_sum_of_subset (Finset.Icc_subset_Icc_right hab)

theorem windowFactorials_mono {a b : ℕ} (hab : a ≤ b) :
    windowFactorials a ≤ windowFactorials b := by
  unfold windowFactorials
  apply Finset.prod_le_prod_of_subset_of_one_le'
    (Finset.Icc_subset_Icc_right hab)
  intro k _ _
  exact Nat.factorial_pos k

theorem windowDegree_mono {i U r s : ℕ} (hiU : i ≤ U) :
    windowDegree i r s ≤ windowDegree U r s := by
  unfold windowDegree
  exact Nat.add_le_add_left
    (windowSum_mono (Nat.sub_le_sub_right (Nat.sub_le_sub_right hiU r) 1)) _

theorem windowConstant_mono {L i r s : ℕ} (hLi : L ≤ i) :
    windowConstant L r s ≤ windowConstant i r s := by
  unfold windowConstant
  exact Nat.mul_le_mul_left _
    (windowFactorials_mono (Nat.sub_le_sub_right (Nat.sub_le_sub_right hLi r) 1))

/-- Length monotonicity stops at `N`; the extra falling factors are positive. -/
theorem descFactorial_mono_length {N L i : ℕ} (hLi : L ≤ i) (hiN : i ≤ N) :
    N.descFactorial L ≤ N.descFactorial i := by
  have htail : 1 ≤ (N - L).descFactorial (i - L) :=
    Nat.descFactorial_pos.mpr (Nat.sub_le_sub_right hiN L)
  calc
    _ = 1 * N.descFactorial L := (one_mul _).symm
    _ ≤ (N - L).descFactorial (i - L) * N.descFactorial L :=
      Nat.mul_le_mul_right _ htail
    _ = _ := Nat.descFactorial_mul_descFactorial hLi

theorem heightExponent_le_of_block_count {i U r s t : ℕ}
    (hiU : i ≤ U) (hcount : smallPrimeCount U ≤ t) :
    heightExponent i r s ≤ t * (2 * s - r) + windowDegree U r s := by
  unfold heightExponent
  exact Nat.add_le_add
    (Nat.mul_le_mul_right _ ((smallPrimeCount_mono hiU).trans hcount))
    (windowDegree_mono hiU)

/-- One integer endpoint comparison supplies the accepted height predicate at
every `i ∈ [L,U]`. No monotonicity, prime-count completeness, or structural
obligation is left as an additional assumption. -/
theorem heightValid_of_block {L U i r s N t : ℕ}
    (hL : 2 ≤ L) (hLi : L ≤ i) (hiU : i ≤ U) (hsL : s < L)
    (hUN : U ≤ N) (hcount : smallPrimeCount U ≤ t)
    (hdegree : t * (2 * s - r) + windowDegree U r s ≤ L * (2 * s - r))
    (hcertificate :
      U.factorial ^ (2 * s - r) *
          N ^ (t * (2 * s - r) + windowDegree U r s) <
        windowConstant L r s * (N.descFactorial L) ^ (2 * s - r)) :
    HeightValid i r s N := by
  have hiN : i ≤ N := hiU.trans hUN
  have hN : 0 < N := by omega
  have hexponent := heightExponent_le_of_block_count (r := r) (s := s) hiU hcount
  refine ⟨hL.trans hLi, lt_of_lt_of_le hsL hLi, hiN, ?_, ?_⟩
  · exact hexponent.trans (hdegree.trans (Nat.mul_le_mul_right _ hLi))
  · calc
      i.factorial ^ (2 * s - r) * N ^ heightExponent i r s ≤
          U.factorial ^ (2 * s - r) *
            N ^ (t * (2 * s - r) + windowDegree U r s) :=
        Nat.mul_le_mul (Nat.pow_le_pow_left (factorial_mono hiU) _)
          (Nat.pow_le_pow_right hN hexponent)
      _ < windowConstant L r s * (N.descFactorial L) ^ (2 * s - r) := hcertificate
      _ ≤ windowConstant i r s * (N.descFactorial i) ^ (2 * s - r) :=
        Nat.mul_le_mul (windowConstant_mono hLi)
          (Nat.pow_le_pow_left (descFactorial_mono_length hLi hiN) _)

end B699HeightBlock

#print axioms B699HeightBlock.smallPrimeCount_mono
#print axioms B699HeightBlock.factorial_mono
#print axioms B699HeightBlock.windowSum_mono
#print axioms B699HeightBlock.windowFactorials_mono
#print axioms B699HeightBlock.windowDegree_mono
#print axioms B699HeightBlock.windowConstant_mono
#print axioms B699HeightBlock.descFactorial_mono_length
#print axioms B699HeightBlock.heightExponent_le_of_block_count
#print axioms B699HeightBlock.heightValid_of_block

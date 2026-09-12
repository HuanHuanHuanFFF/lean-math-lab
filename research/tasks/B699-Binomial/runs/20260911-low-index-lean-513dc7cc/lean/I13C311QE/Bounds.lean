import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I13C311QE.Numeric
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Factorial.Factorial7D5
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Growth.I13C311Tree
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Growth.ActualKernel

/-! UNCOMPILED actual c7d5 Q/E consumers, everym>=1 and both deltas.
All GrowthTree terms, actual factorial steps and m1 constants are supplied
by candidate imports. There is no BFT Q/E bound or desired result as a field.
This file does not prove a Padé edge or an original B699 index. -/
set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxHeartbeats 2000000
set_option maxRecDepth 4096

namespace Math.B699.I13C311QE
open Math.B699.PadeGrowthNormalization Math.B699.PadeActualGrowth
open Math.B699.PadeGrowthPartition Math.B699.GrowthLeaf Math.B699.PadeMoment
open Math.B699.ElementaryFactorialBound

theorem geometric_majorant_with_constant (F K beta lam weight A : ℚ) (m : ℕ)
    (hm : 1 ≤ m) (hbeta : 0 ≤ beta) (hlam : 0 ≤ lam) (hweight : 0 ≤ weight)
    (hF : F ≤ K * beta ^ m) (hcap : K * weight ≤ A * lam) :
    F * (lam ^ (m - 1) * weight) ≤ A * (beta * lam) ^ m := by
  calc
    _ ≤ (K * beta ^ m) * (lam ^ (m - 1) * weight) :=
      mul_le_mul_of_nonneg_right hF (mul_nonneg (pow_nonneg hlam _) hweight)
    _ = (beta ^ m * lam ^ (m - 1)) * (K * weight) := by ring
    _ ≤ (beta ^ m * lam ^ (m - 1)) * (A * lam) :=
      mul_le_mul_of_nonneg_left hcap (mul_nonneg (pow_nonneg hbeta _) (pow_nonneg hlam _))
    _ = A * (beta ^ m * (lam ^ (m - 1) * lam)) := by ring
    _ = A * (beta * lam) ^ m := by
      rw [← pow_succ, Nat.sub_add_cancel hm, mul_pow]

theorem actual_q_growth_of_tree (delta m : ℕ) (hdelta : delta = 0 ∨ delta = 1)
    (hm : 1 ≤ m) (lam A : ℚ) (hlam : 0 < lam)
    (tree : GrowthTree lam (qWeight 7 5 delta (1 / 243)) (qCore 7 5 (1 / 243)))
    (hcap : 2 * |actualQ 7 5 delta 1 (1 / 243)| ≤ A * (beta 7 5 * lam)) :
    |actualQ 7 5 delta m (1 / 243)| ≤ A * (beta 7 5 * lam) ^ m := by
  have hd : delta ≤ 5 := by rcases hdelta with h | h <;> omega
  have hb : 0 < beta 7 5 := by norm_num [beta]
  have hw : 0 ≤ moment (qWeight 7 5 delta (1 / 243)) :=
    bernsteinCone_moment_nonneg (cone_qWeight 7 5 delta (1 / 243) (by norm_num))
  have heq : (2 * factorialTerm 7 5 delta 1 / beta 7 5) *
      moment (qWeight 7 5 delta (1 / 243)) =
      2 * |actualQ 7 5 delta 1 (1 / 243)| / beta 7 5 := by
    rw [actualQ_one_abs 7 5 delta (1 / 243) (by decide) hd (by norm_num)]
    ring
  have hcap' : (2 * factorialTerm 7 5 delta 1 / beta 7 5) *
      moment (qWeight 7 5 delta (1 / 243)) ≤ A * lam := by
    rw [heq]
    exact (div_le_iff₀ hb).mpr (by
      simpa only [mul_assoc, mul_left_comm, mul_comm] using hcap)
  have hsource := actual_q_eval_bound 7 5 delta m (1 / 243) lam
    (by decide) hd hm (le_of_lt hlam) tree
  rw [prefactor_eq_factorialTerm 7 5 delta m (by decide) hd hm] at hsource
  exact le_trans hsource (geometric_majorant_with_constant _ _ _ _ _ A m hm (le_of_lt hb)
    (le_of_lt hlam) hw (le_of_lt (factorial_strict_k_7_5 delta m hdelta hm)) hcap')

theorem actual_e_growth_of_tree (delta m : ℕ) (hdelta : delta = 0 ∨ delta = 1)
    (hm : 1 ≤ m) (lam A : ℚ) (hlam : 0 < lam)
    (tree : GrowthTree lam (eWeight 7 5 delta (1 / 243)) (eCore 7 5 (1 / 243)))
    (hcap : 2 * |actualE 7 5 delta 1 (1 / 243)| ≤ A * (beta 7 5 * lam)) :
    |actualE 7 5 delta m (1 / 243)| ≤ A * (beta 7 5 * lam) ^ m := by
  have hd : delta ≤ 5 := by rcases hdelta with h | h <;> omega
  have hb : 0 < beta 7 5 := by norm_num [beta]
  have hw : 0 ≤ moment (eWeight 7 5 delta (1 / 243)) :=
    bernsteinCone_moment_nonneg (cone_eWeight 7 5 delta (1 / 243) (by norm_num))
  have heq : (2 * factorialTerm 7 5 delta 1 / beta 7 5) *
      moment (eWeight 7 5 delta (1 / 243)) =
      2 * |actualE 7 5 delta 1 (1 / 243)| / beta 7 5 := by
    rw [actualE_one_abs 7 5 delta (1 / 243) (by decide) hd (by norm_num)]
    ring
  have hcap' : (2 * factorialTerm 7 5 delta 1 / beta 7 5) *
      moment (eWeight 7 5 delta (1 / 243)) ≤ A * lam := by
    rw [heq]
    exact (div_le_iff₀ hb).mpr (by
      simpa only [mul_assoc, mul_left_comm, mul_comm] using hcap)
  have hsource := actual_e_eval_bound 7 5 delta m (1 / 243) lam
    (by decide) hd hm (le_of_lt hlam) tree
  rw [prefactor_eq_factorialTerm 7 5 delta m (by decide) hd hm] at hsource
  exact le_trans hsource (geometric_majorant_with_constant _ _ _ _ _ A m hm (le_of_lt hb)
    (le_of_lt hlam) hw (le_of_lt (factorial_strict_k_7_5 delta m hdelta hm)) hcap')

theorem fixed_q_tree (delta : ℕ) (hdelta : delta = 0 ∨ delta = 1) :
    GrowthTree qLambda (qWeight 7 5 delta (1 / 243)) (qCore 7 5 (1 / 243)) := by
  rcases hdelta with rfl | rfl
  · simpa only [qLambda, Math.B699.I13C311Growth.Shared.qLam,
      Math.B699.I13C311Growth.Shared.qSeedWeight0, Math.B699.I13C311Growth.Shared.qSeedCore,
      Math.B699.I13C311Growth.Shared.qSeedC, Math.B699.I13C311Growth.Shared.qSeedD,
      Math.B699.I13C311Growth.Shared.qSeedZ] using Math.B699.I13C311Growth.Tree.q_tree_delta0
  · simpa only [qLambda, Math.B699.I13C311Growth.Shared.qLam,
      Math.B699.I13C311Growth.Shared.qSeedWeight1, Math.B699.I13C311Growth.Shared.qSeedCore,
      Math.B699.I13C311Growth.Shared.qSeedC, Math.B699.I13C311Growth.Shared.qSeedD,
      Math.B699.I13C311Growth.Shared.qSeedZ] using Math.B699.I13C311Growth.Tree.q_tree_delta1

theorem fixed_e_tree (delta : ℕ) (hdelta : delta = 0 ∨ delta = 1) :
    GrowthTree eLambda (eWeight 7 5 delta (1 / 243)) (eCore 7 5 (1 / 243)) := by
  rcases hdelta with rfl | rfl
  · simpa only [eLambda, Math.B699.I13C311Growth.Shared.eLam,
      Math.B699.I13C311Growth.Shared.eSeedWeight0, Math.B699.I13C311Growth.Shared.eSeedCore,
      Math.B699.I13C311Growth.Shared.eSeedC, Math.B699.I13C311Growth.Shared.eSeedD,
      Math.B699.I13C311Growth.Shared.eSeedZ] using Math.B699.I13C311Growth.Tree.e_tree_delta0
  · simpa only [eLambda, Math.B699.I13C311Growth.Shared.eLam,
      Math.B699.I13C311Growth.Shared.eSeedWeight1, Math.B699.I13C311Growth.Shared.eSeedCore,
      Math.B699.I13C311Growth.Shared.eSeedC, Math.B699.I13C311Growth.Shared.eSeedD,
      Math.B699.I13C311Growth.Shared.eSeedZ] using Math.B699.I13C311Growth.Tree.e_tree_delta1

theorem actual_q_normalized_bound (delta m : ℕ)
    (hdelta : delta = 0 ∨ delta = 1) (hm : 1 ≤ m) :
    |actualQ 7 5 delta m (1 / 243)| ≤ qNormalizedConstant delta * qBase ^ m := by
  apply actual_q_growth_of_tree delta m hdelta hm qLambda (qNormalizedConstant delta)
    fixed_bases_pos.1 (fixed_q_tree delta hdelta)
  change 2 * |actualQ 7 5 delta 1 (1 / 243)| ≤ qNormalizedConstant delta * qBase
  unfold qNormalizedConstant
  rw [div_mul_cancel₀ _ (ne_of_gt fixed_bases_pos.2.2.1)]

theorem actual_q_bound (delta m : ℕ)
    (hdelta : delta = 0 ∨ delta = 1) (hm : 1 ≤ m) :
    |actualQ 7 5 delta m (1 / 243)| ≤ (1 / 2 : ℚ) * qBase ^ m := by
  exact actual_q_growth_of_tree delta m hdelta hm qLambda (1 / 2 : ℚ)
    fixed_bases_pos.1 (fixed_q_tree delta hdelta) (fixed_initial_q_cap delta hdelta)

theorem actual_e_normalized_bound (delta m : ℕ)
    (hdelta : delta = 0 ∨ delta = 1) (hm : 1 ≤ m) :
    |actualE 7 5 delta m (1 / 243)| ≤ eNormalizedConstant delta * eBase ^ m := by
  apply actual_e_growth_of_tree delta m hdelta hm eLambda (eNormalizedConstant delta)
    fixed_bases_pos.2.1 (fixed_e_tree delta hdelta)
  change 2 * |actualE 7 5 delta 1 (1 / 243)| ≤ eNormalizedConstant delta * eBase
  unfold eNormalizedConstant
  rw [div_mul_cancel₀ _ (ne_of_gt fixed_bases_pos.2.2.2)]

theorem actual_e_bound (delta m : ℕ)
    (hdelta : delta = 0 ∨ delta = 1) (hm : 1 ≤ m) :
    |actualE 7 5 delta m (1 / 243)| ≤ eConstant delta * eBase ^ m := by
  exact actual_e_growth_of_tree delta m hdelta hm eLambda (eConstant delta)
    fixed_bases_pos.2.1 (fixed_e_tree delta hdelta) (fixed_initial_e_cap delta hdelta)

theorem actual_bounds_all_m (m : ℕ) (hm : 1 ≤ m) (delta : ℕ)
    (hdelta : delta = 0 ∨ delta = 1) :
    |actualQ 7 5 delta m (1 / 243)| ≤ (1 / 2 : ℚ) * qBase ^ m ∧
      |actualE 7 5 delta m (1 / 243)| ≤ eConstant delta * eBase ^ m := by
  exact ⟨actual_q_bound delta m hdelta hm, actual_e_bound delta m hdelta hm⟩

theorem actual_e_zero_bound (m : ℕ) (hm : 1 ≤ m) :
    |actualE 7 5 0 m (1 / 243)| ≤ (11 / 100 : ℚ) * eBase ^ m := by
  simpa only [eConstant, if_pos rfl] using actual_e_bound 0 m (Or.inl rfl) hm

theorem actual_e_one_bound (m : ℕ) (hm : 1 ≤ m) :
    |actualE 7 5 1 m (1 / 243)| ≤ (1 / 2 : ℚ) * eBase ^ m := by
  simpa only [eConstant, if_neg (by decide : ¬(1 : ℕ) = 0)] using
    actual_e_bound 1 m (Or.inr rfl) hm

end Math.B699.I13C311QE
#print axioms Math.B699.I13C311QE.geometric_majorant_with_constant
#print axioms Math.B699.I13C311QE.actual_q_growth_of_tree
#print axioms Math.B699.I13C311QE.actual_e_growth_of_tree
#print axioms Math.B699.I13C311QE.fixed_q_tree
#print axioms Math.B699.I13C311QE.fixed_e_tree
#print axioms Math.B699.I13C311QE.actual_q_normalized_bound
#print axioms Math.B699.I13C311QE.actual_e_normalized_bound
#print axioms Math.B699.I13C311QE.actual_q_bound
#print axioms Math.B699.I13C311QE.actual_e_bound
#print axioms Math.B699.I13C311QE.actual_bounds_all_m
#print axioms Math.B699.I13C311QE.actual_e_zero_bound
#print axioms Math.B699.I13C311QE.actual_e_one_bound

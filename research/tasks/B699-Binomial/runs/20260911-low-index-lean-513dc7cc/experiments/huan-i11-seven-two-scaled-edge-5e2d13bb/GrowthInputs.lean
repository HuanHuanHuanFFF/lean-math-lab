import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».experiments.«huan-i11-seven-two-scaled-edge-5e2d13bb».ActualRows
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».experiments.«huan-i11-seven-two-scaled-edge-5e2d13bb».Factorial9D5

/-! UNCOMPILED CANDIDATE. Real c9d5 Q/E growth from the fixed factorial theorem, four trees, and actual m=1 caps. -/
set_option autoImplicit false
set_option relaxedAutoImplicit false
namespace Math.B699.I11SevenTwoScaled
open Math.B699.PadeGrowthNormalization Math.B699.PadeActualGrowth
open Math.B699.PadeGrowthPartition Math.B699.GrowthLeaf Math.B699.PadeMoment
open Math.B699.ElementaryFactorialBound

def qLambda : ℚ := 19015678853391498507418691 / 79228162514264337593543950336
def eLambda : ℚ := 18567076935738840000672813 / 19807040628566084398385987584
def qBase : ℚ := beta 9 5 * qLambda
def eBase : ℚ := beta 9 5 * eLambda

theorem fixed_bases_pos : 0 < qLambda ∧ 0 < eLambda ∧ 0 < qBase ∧ 0 < eBase := by
  norm_num [qLambda, eLambda, qBase, eBase, beta]

theorem geometric_majorant (F K beta lam weight : ℚ) (m : ℕ)
    (hm : 1 ≤ m) (hbeta : 0 ≤ beta) (hlam : 0 ≤ lam) (hweight : 0 ≤ weight)
    (hF : F ≤ K * beta ^ m) (hcap : K * weight ≤ lam) :
    F * (lam ^ (m - 1) * weight) ≤ (beta * lam) ^ m := by
  calc
    _ ≤ (K * beta ^ m) * (lam ^ (m - 1) * weight) :=
      mul_le_mul_of_nonneg_right hF (mul_nonneg (pow_nonneg hlam _) hweight)
    _ = (beta ^ m * lam ^ (m - 1)) * (K * weight) := by ring
    _ ≤ (beta ^ m * lam ^ (m - 1)) * lam :=
      mul_le_mul_of_nonneg_left hcap (mul_nonneg (pow_nonneg hbeta _) (pow_nonneg hlam _))
    _ = (beta * lam) ^ m := by
      simp only [mul_pow]
      rw [mul_assoc, ← pow_succ, Nat.sub_add_cancel hm]

theorem actual_q_growth_of_tree (delta m : ℕ) (hdelta : delta = 0 ∨ delta = 1)
    (hm : 1 ≤ m) (lam : ℚ) (hlam : 0 < lam)
    (tree : GrowthTree lam (qWeight 9 5 delta (1 / 49)) (qCore 9 5 (1 / 49)))
    (hcap : 2 * |actualQ 9 5 delta 1 (1 / 49)| ≤ beta 9 5 * lam) :
    |actualQ 9 5 delta m (1 / 49)| ≤ (beta 9 5 * lam) ^ m := by
  have hd : delta ≤ 5 := by rcases hdelta with h | h <;> omega
  have hb : 0 < beta 9 5 := by norm_num [beta]
  have hw : 0 ≤ moment (qWeight 9 5 delta (1 / 49)) :=
    bernsteinCone_moment_nonneg (cone_qWeight 9 5 delta (1 / 49) (by norm_num))
  have heq : (2 * factorialTerm 9 5 delta 1 / beta 9 5) *
      moment (qWeight 9 5 delta (1 / 49)) =
      2 * |actualQ 9 5 delta 1 (1 / 49)| / beta 9 5 := by
    rw [actualQ_one_abs 9 5 delta (1 / 49) (by decide) hd (by norm_num)]
    ring
  have hcap' : (2 * factorialTerm 9 5 delta 1 / beta 9 5) *
      moment (qWeight 9 5 delta (1 / 49)) ≤ lam := by
    rw [heq]
    exact (div_le_iff₀ hb).mpr (by simpa only [mul_comm lam (beta 9 5)] using hcap)
  have hsource := actual_q_eval_bound 9 5 delta m (1 / 49) lam
    (by decide) hd hm (le_of_lt hlam) tree
  rw [prefactor_eq_factorialTerm 9 5 delta m (by decide) hd hm] at hsource
  exact le_trans hsource (geometric_majorant _ _ _ _ _ m hm (le_of_lt hb)
    (le_of_lt hlam) hw (le_of_lt (factorial_strict_k_9_5 delta m hdelta hm)) hcap')

theorem actual_e_growth_of_tree (delta m : ℕ) (hdelta : delta = 0 ∨ delta = 1)
    (hm : 1 ≤ m) (lam : ℚ) (hlam : 0 < lam)
    (tree : GrowthTree lam (eWeight 9 5 delta (1 / 49)) (eCore 9 5 (1 / 49)))
    (hcap : 2 * |actualE 9 5 delta 1 (1 / 49)| ≤ beta 9 5 * lam) :
    |actualE 9 5 delta m (1 / 49)| ≤ (beta 9 5 * lam) ^ m := by
  have hd : delta ≤ 5 := by rcases hdelta with h | h <;> omega
  have hb : 0 < beta 9 5 := by norm_num [beta]
  have hw : 0 ≤ moment (eWeight 9 5 delta (1 / 49)) :=
    bernsteinCone_moment_nonneg (cone_eWeight 9 5 delta (1 / 49) (by norm_num))
  have heq : (2 * factorialTerm 9 5 delta 1 / beta 9 5) *
      moment (eWeight 9 5 delta (1 / 49)) =
      2 * |actualE 9 5 delta 1 (1 / 49)| / beta 9 5 := by
    rw [actualE_one_abs 9 5 delta (1 / 49) (by decide) hd (by norm_num)]
    ring
  have hcap' : (2 * factorialTerm 9 5 delta 1 / beta 9 5) *
      moment (eWeight 9 5 delta (1 / 49)) ≤ lam := by
    rw [heq]
    exact (div_le_iff₀ hb).mpr (by simpa only [mul_comm lam (beta 9 5)] using hcap)
  have hsource := actual_e_eval_bound 9 5 delta m (1 / 49) lam
    (by decide) hd hm (le_of_lt hlam) tree
  rw [prefactor_eq_factorialTerm 9 5 delta m (by decide) hd hm] at hsource
  exact le_trans hsource (geometric_majorant _ _ _ _ _ m hm (le_of_lt hb)
    (le_of_lt hlam) hw (le_of_lt (factorial_strict_k_9_5 delta m hdelta hm)) hcap')

theorem standard_bounds_from_fixed_trees
    (qt : ∀ row : Bool, GrowthTree qLambda (qWeight 9 5 (rowDelta row) (1 / 49))
      (qCore 9 5 (1 / 49)))
    (et : ∀ row : Bool, GrowthTree eLambda (eWeight 9 5 (rowDelta row) (1 / 49))
      (eCore 9 5 (1 / 49)))
    (qc : ∀ row : Bool, 2 * |actualQ 9 5 (rowDelta row) 1 (1 / 49)| ≤ qBase)
    (ec : ∀ row : Bool, 2 * |actualE 9 5 (rowDelta row) 1 (1 / 49)| ≤ eBase) :
    (∀ m : ℕ, 224 ≤ m → ∀ row : Bool, |qEval m row| ≤ qBase ^ m) ∧
      (∀ m : ℕ, 224 ≤ m → ∀ row : Bool, |eEval m row| ≤ eBase ^ m) := by
  constructor
  · intro m hm row
    exact actual_q_growth_of_tree (rowDelta row) m (rowDelta_cases row) (by omega)
      qLambda fixed_bases_pos.1 (qt row) (qc row)
  · intro m hm row
    exact actual_e_growth_of_tree (rowDelta row) m (rowDelta_cases row) (by omega)
      eLambda fixed_bases_pos.2.1 (et row) (ec row)

end Math.B699.I11SevenTwoScaled

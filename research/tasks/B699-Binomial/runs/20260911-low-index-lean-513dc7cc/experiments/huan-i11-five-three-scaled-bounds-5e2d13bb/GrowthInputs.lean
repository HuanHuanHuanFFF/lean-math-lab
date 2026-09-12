import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».experiments.«huan-i11-five-three-scaled-bounds-5e2d13bb».ActualBounds
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Factorial.Factorial5D3

/-! UNCOMPILED CANDIDATE. Standard actual Q/E bounds are reduced to the
fixed GrowthTree and four m=1 polynomial inequalities, using the actual
all-m (5,3) factorial theorem. The desired growth bound is not a field. -/
set_option autoImplicit false
set_option relaxedAutoImplicit false
namespace Math.B699.I11ScaledBounds
open Math.B699.PadeGrowthNormalization Math.B699.PadeActualGrowth
open Math.B699.PadeGrowthPartition Math.B699.GrowthLeaf Math.B699.PadeMoment
open Math.B699.ElementaryFactorialBound Math.B699.I11ActualPadeEdge

def qLambda : ℚ := 440758604932333255282947863 / 39614081257132168796771975168
def eLambda : ℚ := 618834739845914957406423393 / 39614081257132168796771975168
def qBase : ℚ := beta 5 3 * qLambda
def eBase : ℚ := beta 5 3 * eLambda

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
    (tree : GrowthTree lam (qWeight 5 3 delta (1 / 4375)) (qCore 5 3 (1 / 4375)))
    (hcap : 2 * |actualQ 5 3 delta 1 (1 / 4375)| ≤ beta 5 3 * lam) :
    |actualQ 5 3 delta m (1 / 4375)| ≤ (beta 5 3 * lam) ^ m := by
  have hd : delta ≤ 3 := by rcases hdelta with h | h <;> omega
  have hb : 0 < beta 5 3 := by norm_num [beta]
  have hw : 0 ≤ moment (qWeight 5 3 delta (1 / 4375)) :=
    bernsteinCone_moment_nonneg (cone_qWeight 5 3 delta (1 / 4375) (by norm_num))
  have heq : (2 * factorialTerm 5 3 delta 1 / beta 5 3) *
      moment (qWeight 5 3 delta (1 / 4375)) =
      2 * |actualQ 5 3 delta 1 (1 / 4375)| / beta 5 3 := by
    rw [actualQ_one_abs 5 3 delta (1 / 4375) (by decide) hd (by norm_num)]
    ring
  have hcap' : (2 * factorialTerm 5 3 delta 1 / beta 5 3) *
      moment (qWeight 5 3 delta (1 / 4375)) ≤ lam := by
    rw [heq]
    exact (div_le_iff₀ hb).mpr (by simpa only [mul_comm lam (beta 5 3)] using hcap)
  have hsource := actual_q_eval_bound 5 3 delta m (1 / 4375) lam
    (by decide) hd hm (le_of_lt hlam) tree
  rw [prefactor_eq_factorialTerm 5 3 delta m (by decide) hd hm] at hsource
  exact le_trans hsource (geometric_majorant _ _ _ _ _ m hm (le_of_lt hb)
    (le_of_lt hlam) hw (le_of_lt (factorial_strict_k_5_3 delta m hdelta hm)) hcap')

theorem actual_e_growth_of_tree (delta m : ℕ) (hdelta : delta = 0 ∨ delta = 1)
    (hm : 1 ≤ m) (lam : ℚ) (hlam : 0 < lam)
    (tree : GrowthTree lam (eWeight 5 3 delta (1 / 4375)) (eCore 5 3 (1 / 4375)))
    (hcap : 2 * |actualE 5 3 delta 1 (1 / 4375)| ≤ beta 5 3 * lam) :
    |actualE 5 3 delta m (1 / 4375)| ≤ (beta 5 3 * lam) ^ m := by
  have hd : delta ≤ 3 := by rcases hdelta with h | h <;> omega
  have hb : 0 < beta 5 3 := by norm_num [beta]
  have hw : 0 ≤ moment (eWeight 5 3 delta (1 / 4375)) :=
    bernsteinCone_moment_nonneg (cone_eWeight 5 3 delta (1 / 4375) (by norm_num))
  have heq : (2 * factorialTerm 5 3 delta 1 / beta 5 3) *
      moment (eWeight 5 3 delta (1 / 4375)) =
      2 * |actualE 5 3 delta 1 (1 / 4375)| / beta 5 3 := by
    rw [actualE_one_abs 5 3 delta (1 / 4375) (by decide) hd (by norm_num)]
    ring
  have hcap' : (2 * factorialTerm 5 3 delta 1 / beta 5 3) *
      moment (eWeight 5 3 delta (1 / 4375)) ≤ lam := by
    rw [heq]
    exact (div_le_iff₀ hb).mpr (by simpa only [mul_comm lam (beta 5 3)] using hcap)
  have hsource := actual_e_eval_bound 5 3 delta m (1 / 4375) lam
    (by decide) hd hm (le_of_lt hlam) tree
  rw [prefactor_eq_factorialTerm 5 3 delta m (by decide) hd hm] at hsource
  exact le_trans hsource (geometric_majorant _ _ _ _ _ m hm (le_of_lt hb)
    (le_of_lt hlam) hw (le_of_lt (factorial_strict_k_5_3 delta m hdelta hm)) hcap')

theorem standard_bounds_from_fixed_trees
    (qt : ∀ row : Bool, GrowthTree qLambda (qWeight 5 3 (rowDelta row) (1 / 4375))
      (qCore 5 3 (1 / 4375)))
    (et : ∀ row : Bool, GrowthTree eLambda (eWeight 5 3 (rowDelta row) (1 / 4375))
      (eCore 5 3 (1 / 4375)))
    (qc : ∀ row : Bool, 2 * |actualQ 5 3 (rowDelta row) 1 (1 / 4375)| ≤ qBase)
    (ec : ∀ row : Bool, 2 * |actualE 5 3 (rowDelta row) 1 (1 / 4375)| ≤ eBase) :
    (∀ m : ℕ, 129 ≤ m → ∀ row : Bool, |qEval m row| ≤ qBase ^ m) ∧
      (∀ m : ℕ, 129 ≤ m → ∀ row : Bool, |eEval m row| ≤ eBase ^ m) := by
  constructor
  · intro m hm row
    exact actual_q_growth_of_tree (rowDelta row) m (rowDelta_cases row) (by omega)
      qLambda fixed_bases_pos.1 (qt row) (qc row)
  · intro m hm row
    exact actual_e_growth_of_tree (rowDelta row) m (rowDelta_cases row) (by omega)
      eLambda fixed_bases_pos.2.1 (et row) (ec row)

end Math.B699.I11ScaledBounds
#print axioms Math.B699.I11ScaledBounds.fixed_bases_pos
#print axioms Math.B699.I11ScaledBounds.geometric_majorant
#print axioms Math.B699.I11ScaledBounds.actual_q_growth_of_tree
#print axioms Math.B699.I11ScaledBounds.actual_e_growth_of_tree
#print axioms Math.B699.I11ScaledBounds.standard_bounds_from_fixed_trees

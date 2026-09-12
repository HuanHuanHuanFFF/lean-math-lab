import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».experiments.«huan-i11-three-two-scaled-edge-5e2d13bb».ActualRows
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».experiments.«huan-i11-three-two-scaled-edge-5e2d13bb».Factorial23D15

/-! UNCOMPILED CANDIDATE. Actual c23d15 Q/E growth from Factorial23D15, fixed source polynomials and finite tree/m1 inputs. -/
set_option autoImplicit false
set_option relaxedAutoImplicit false
namespace Math.B699.I11ThreeTwoScaled
open Math.B699.PadeGrowthNormalization Math.B699.PadeActualGrowth
open Math.B699.PadeGrowthPartition Math.B699.GrowthLeaf Math.B699.PadeMoment
open Math.B699.ElementaryFactorialBound

def qLambda : ℚ := 50045175481493571025 / 9903520314283042199192993792
def eLambda : ℚ := 46880976166089921083 / 79228162514264337593543950336
def qBase : ℚ := beta 23 15 * qLambda
def eBase : ℚ := beta 23 15 * eLambda

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
    (tree : GrowthTree lam (qWeight 23 15 delta (1 / 9)) (qCore 23 15 (1 / 9)))
    (hcap : 2 * |actualQ 23 15 delta 1 (1 / 9)| ≤ beta 23 15 * lam) :
    |actualQ 23 15 delta m (1 / 9)| ≤ (beta 23 15 * lam) ^ m := by
  have hd : delta ≤ 15 := by rcases hdelta with h | h <;> omega
  have hb : 0 < beta 23 15 := by norm_num [beta]
  have hw : 0 ≤ moment (qWeight 23 15 delta (1 / 9)) :=
    bernsteinCone_moment_nonneg (cone_qWeight 23 15 delta (1 / 9) (by norm_num))
  have heq : (2 * factorialTerm 23 15 delta 1 / beta 23 15) *
      moment (qWeight 23 15 delta (1 / 9)) =
      2 * |actualQ 23 15 delta 1 (1 / 9)| / beta 23 15 := by
    rw [actualQ_one_abs 23 15 delta (1 / 9) (by decide) hd (by norm_num)]
    ring
  have hcap' : (2 * factorialTerm 23 15 delta 1 / beta 23 15) *
      moment (qWeight 23 15 delta (1 / 9)) ≤ lam := by
    rw [heq]
    exact (div_le_iff₀ hb).mpr (by simpa only [mul_comm lam (beta 23 15)] using hcap)
  have hsource := actual_q_eval_bound 23 15 delta m (1 / 9) lam
    (by decide) hd hm (le_of_lt hlam) tree
  rw [prefactor_eq_factorialTerm 23 15 delta m (by decide) hd hm] at hsource
  exact le_trans hsource (geometric_majorant _ _ _ _ _ m hm (le_of_lt hb)
    (le_of_lt hlam) hw (le_of_lt (factorial_strict_k_23_15 delta m hdelta hm)) hcap')

theorem actual_e_growth_of_tree (delta m : ℕ) (hdelta : delta = 0 ∨ delta = 1)
    (hm : 1 ≤ m) (lam : ℚ) (hlam : 0 < lam)
    (tree : GrowthTree lam (eWeight 23 15 delta (1 / 9)) (eCore 23 15 (1 / 9)))
    (hcap : 2 * |actualE 23 15 delta 1 (1 / 9)| ≤ beta 23 15 * lam) :
    |actualE 23 15 delta m (1 / 9)| ≤ (beta 23 15 * lam) ^ m := by
  have hd : delta ≤ 15 := by rcases hdelta with h | h <;> omega
  have hb : 0 < beta 23 15 := by norm_num [beta]
  have hw : 0 ≤ moment (eWeight 23 15 delta (1 / 9)) :=
    bernsteinCone_moment_nonneg (cone_eWeight 23 15 delta (1 / 9) (by norm_num))
  have heq : (2 * factorialTerm 23 15 delta 1 / beta 23 15) *
      moment (eWeight 23 15 delta (1 / 9)) =
      2 * |actualE 23 15 delta 1 (1 / 9)| / beta 23 15 := by
    rw [actualE_one_abs 23 15 delta (1 / 9) (by decide) hd (by norm_num)]
    ring
  have hcap' : (2 * factorialTerm 23 15 delta 1 / beta 23 15) *
      moment (eWeight 23 15 delta (1 / 9)) ≤ lam := by
    rw [heq]
    exact (div_le_iff₀ hb).mpr (by simpa only [mul_comm lam (beta 23 15)] using hcap)
  have hsource := actual_e_eval_bound 23 15 delta m (1 / 9) lam
    (by decide) hd hm (le_of_lt hlam) tree
  rw [prefactor_eq_factorialTerm 23 15 delta m (by decide) hd hm] at hsource
  exact le_trans hsource (geometric_majorant _ _ _ _ _ m hm (le_of_lt hb)
    (le_of_lt hlam) hw (le_of_lt (factorial_strict_k_23_15 delta m hdelta hm)) hcap')

theorem standard_bounds_from_fixed_trees
    (qt : ∀ row : Bool, GrowthTree qLambda (qWeight 23 15 (rowDelta row) (1 / 9))
      (qCore 23 15 (1 / 9)))
    (et : ∀ row : Bool, GrowthTree eLambda (eWeight 23 15 (rowDelta row) (1 / 9))
      (eCore 23 15 (1 / 9)))
    (qc : ∀ row : Bool, 2 * |actualQ 23 15 (rowDelta row) 1 (1 / 9)| ≤ qBase)
    (ec : ∀ row : Bool, 2 * |actualE 23 15 (rowDelta row) 1 (1 / 9)| ≤ eBase) :
    (∀ m : ℕ, 160 ≤ m → ∀ row : Bool, |qEval m row| ≤ qBase ^ m) ∧
      (∀ m : ℕ, 160 ≤ m → ∀ row : Bool, |eEval m row| ≤ eBase ^ m) := by
  constructor
  · intro m hm row
    exact actual_q_growth_of_tree (rowDelta row) m (rowDelta_cases row) (by omega)
      qLambda fixed_bases_pos.1 (qt row) (qc row)
  · intro m hm row
    exact actual_e_growth_of_tree (rowDelta row) m (rowDelta_cases row) (by omega)
      eLambda fixed_bases_pos.2.1 (et row) (ec row)

end Math.B699.I11ThreeTwoScaled

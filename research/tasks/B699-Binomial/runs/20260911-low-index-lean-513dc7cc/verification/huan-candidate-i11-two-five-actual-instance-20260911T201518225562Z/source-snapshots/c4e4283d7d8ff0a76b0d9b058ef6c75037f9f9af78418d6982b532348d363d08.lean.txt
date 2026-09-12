import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TwoFiveFinal.ActualNumeric
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Growth.I11TwoFiveTree

/-! UNCOMPILED. The actual accepted c5d4,z3/128 roots supply all four tree inputs. -/
set_option autoImplicit false
set_option relaxedAutoImplicit false
namespace Math.B699.I11TwoFiveFinalConsumers
open Math.B699.I11TwoFiveScaled Math.B699.I11TwoFivePrefix
open Math.B699.PadeGrowthPartition Math.B699.GrowthLeaf

theorem q_lambda_eq : Math.B699.I11TwoFiveGrowth.Shared.qLam = qLambda := rfl
theorem e_lambda_eq : Math.B699.I11TwoFiveGrowth.Shared.eLam = eLambda := rfl
theorem row_delta_false : rowDelta false = 1 := rfl
theorem row_delta_true : rowDelta true = 0 := rfl

theorem actual_q_tree_family (row : Bool) :
    GrowthTree qLambda (qWeight 5 4 (rowDelta row) (3 / 128)) (qCore 5 4 (3 / 128)) := by
  cases row with
  | false =>
    simpa only [row_delta_false, q_lambda_eq,
      Math.B699.I11TwoFiveGrowth.Shared.qSeedWeight1,
      Math.B699.I11TwoFiveGrowth.Shared.qSeedCore,
      Math.B699.I11TwoFiveGrowth.Shared.qSeedC,
      Math.B699.I11TwoFiveGrowth.Shared.qSeedD,
      Math.B699.I11TwoFiveGrowth.Shared.qSeedZ] using
        Math.B699.I11TwoFiveGrowth.Tree.q_tree_delta1
  | true =>
    simpa only [row_delta_true, q_lambda_eq,
      Math.B699.I11TwoFiveGrowth.Shared.qSeedWeight0,
      Math.B699.I11TwoFiveGrowth.Shared.qSeedCore,
      Math.B699.I11TwoFiveGrowth.Shared.qSeedC,
      Math.B699.I11TwoFiveGrowth.Shared.qSeedD,
      Math.B699.I11TwoFiveGrowth.Shared.qSeedZ] using
        Math.B699.I11TwoFiveGrowth.Tree.q_tree_delta0

theorem actual_e_tree_family (row : Bool) :
    GrowthTree eLambda (eWeight 5 4 (rowDelta row) (3 / 128)) (eCore 5 4 (3 / 128)) := by
  cases row with
  | false =>
    simpa only [row_delta_false, e_lambda_eq,
      Math.B699.I11TwoFiveGrowth.Shared.eSeedWeight1,
      Math.B699.I11TwoFiveGrowth.Shared.eSeedCore,
      Math.B699.I11TwoFiveGrowth.Shared.eSeedC,
      Math.B699.I11TwoFiveGrowth.Shared.eSeedD,
      Math.B699.I11TwoFiveGrowth.Shared.eSeedZ] using
        Math.B699.I11TwoFiveGrowth.Tree.e_tree_delta1
  | true =>
    simpa only [row_delta_true, e_lambda_eq,
      Math.B699.I11TwoFiveGrowth.Shared.eSeedWeight0,
      Math.B699.I11TwoFiveGrowth.Shared.eSeedCore,
      Math.B699.I11TwoFiveGrowth.Shared.eSeedC,
      Math.B699.I11TwoFiveGrowth.Shared.eSeedD,
      Math.B699.I11TwoFiveGrowth.Shared.eSeedZ] using
        Math.B699.I11TwoFiveGrowth.Tree.e_tree_delta0

theorem actual_two_five_cofactor_edge
    (Y e f A C : ℕ) (hY : twoFiveY0 ≤ Y) (hC : 1 ≤ C)
    (hwindowP : Y ≤ 2 ^ e * A) (hwindowQ : Y ≤ 5 ^ f * C)
    (hupperQ : 5 ^ f * C ≤ 2 * Y)
    (hgap : |(2 : ℤ) ^ e * (A : ℤ) - (5 : ℤ) ^ f * (C : ℤ)| ≤ 24) :
    Y ^ 248 ≤ A ^ 1000 ∨ Y ^ 252 ≤ C ^ 1000 := by
  exact two_five_edge_of_growth_trees actual_q_tree_family actual_e_tree_family
    Y e f A C hY hC hwindowP hwindowQ hupperQ hgap

end Math.B699.I11TwoFiveFinalConsumers

import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11ThreeTwoFinal.ActualNumeric
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Growth.I11ThreeTwoTree

/-! UNCOMPILED CANDIDATE. Officially re-frozen actual Q/E tree roots; false is delta1, true is delta0. No tree remains as an external final input. -/
set_option autoImplicit false
set_option relaxedAutoImplicit false
namespace Math.B699.I11ThreeTwoFinalConsumers
open Math.B699.I11ThreeTwoScaled
open Math.B699.PadeGrowthPartition Math.B699.GrowthLeaf

theorem q_lambda_eq : Math.B699.I11ThreeTwoGrowth.Shared.qLam = qLambda := rfl
theorem e_lambda_eq : Math.B699.I11ThreeTwoGrowth.Shared.eLam = eLambda := rfl
theorem row_delta_false : rowDelta false = 1 := rfl
theorem row_delta_true : rowDelta true = 0 := rfl

theorem actual_q_tree_family (row : Bool) :
    GrowthTree qLambda (qWeight 23 15 (rowDelta row) (1 / 9)) (qCore 23 15 (1 / 9)) := by
  cases row with
  | false =>
    simpa only [row_delta_false, q_lambda_eq,
      Math.B699.I11ThreeTwoGrowth.Shared.qSeedWeight1,
      Math.B699.I11ThreeTwoGrowth.Shared.qSeedCore,
      Math.B699.I11ThreeTwoGrowth.Shared.qSeedC,
      Math.B699.I11ThreeTwoGrowth.Shared.qSeedD,
      Math.B699.I11ThreeTwoGrowth.Shared.qSeedZ] using
        Math.B699.I11ThreeTwoGrowth.Tree.q_tree_delta1
  | true =>
    simpa only [row_delta_true, q_lambda_eq,
      Math.B699.I11ThreeTwoGrowth.Shared.qSeedWeight0,
      Math.B699.I11ThreeTwoGrowth.Shared.qSeedCore,
      Math.B699.I11ThreeTwoGrowth.Shared.qSeedC,
      Math.B699.I11ThreeTwoGrowth.Shared.qSeedD,
      Math.B699.I11ThreeTwoGrowth.Shared.qSeedZ] using
        Math.B699.I11ThreeTwoGrowth.Tree.q_tree_delta0

theorem actual_e_tree_family (row : Bool) :
    GrowthTree eLambda (eWeight 23 15 (rowDelta row) (1 / 9)) (eCore 23 15 (1 / 9)) := by
  cases row with
  | false =>
    simpa only [row_delta_false, e_lambda_eq,
      Math.B699.I11ThreeTwoGrowth.Shared.eSeedWeight1,
      Math.B699.I11ThreeTwoGrowth.Shared.eSeedCore,
      Math.B699.I11ThreeTwoGrowth.Shared.eSeedC,
      Math.B699.I11ThreeTwoGrowth.Shared.eSeedD,
      Math.B699.I11ThreeTwoGrowth.Shared.eSeedZ] using
        Math.B699.I11ThreeTwoGrowth.Tree.e_tree_delta1
  | true =>
    simpa only [row_delta_true, e_lambda_eq,
      Math.B699.I11ThreeTwoGrowth.Shared.eSeedWeight0,
      Math.B699.I11ThreeTwoGrowth.Shared.eSeedCore,
      Math.B699.I11ThreeTwoGrowth.Shared.eSeedC,
      Math.B699.I11ThreeTwoGrowth.Shared.eSeedD,
      Math.B699.I11ThreeTwoGrowth.Shared.eSeedZ] using
        Math.B699.I11ThreeTwoGrowth.Tree.e_tree_delta0

theorem actual_three_two_cofactor_edge
    (Y e f A C : ℕ) (hY : threeTwoY0 ≤ Y) (hC : 1 ≤ C)
    (hwindowP : Y ≤ 3 ^ e * A) (hwindowQ : Y ≤ 2 ^ f * C)
    (hupperQ : 2 ^ f * C ≤ 2 * Y)
    (hgap : |(3 : ℤ) ^ e * (A : ℤ) - (2 : ℤ) ^ f * (C : ℤ)| ≤ 24) :
    Y ^ 226 ≤ A ^ 1000 ∨ Y ^ 268 ≤ C ^ 1000 := by
  exact three_two_edge_of_growth_trees actual_q_tree_family actual_e_tree_family
    Y e f A C hY hC hwindowP hwindowQ hupperQ hgap

end Math.B699.I11ThreeTwoFinalConsumers

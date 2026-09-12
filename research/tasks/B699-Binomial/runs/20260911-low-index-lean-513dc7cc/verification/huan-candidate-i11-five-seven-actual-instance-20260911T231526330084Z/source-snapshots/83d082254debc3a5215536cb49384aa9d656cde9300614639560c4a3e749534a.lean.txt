import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11FiveSevenFinal.ActualNumeric
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Growth.I11FiveSevenTree

/-! UNCOMPILED CANDIDATE. Officially re-frozen actual Q/E tree roots; false is delta1, true is delta0. No tree remains as an external final input. -/
set_option autoImplicit false
set_option relaxedAutoImplicit false
namespace Math.B699.I11FiveSevenFinalConsumers
open Math.B699.I11FiveSevenScaled
open Math.B699.PadeGrowthPartition Math.B699.GrowthLeaf

theorem q_lambda_eq : Math.B699.I11FiveSevenGrowth.Shared.qLam = qLambda := rfl
theorem e_lambda_eq : Math.B699.I11FiveSevenGrowth.Shared.eLam = eLambda := rfl
theorem row_delta_false : rowDelta false = 1 := rfl
theorem row_delta_true : rowDelta true = 0 := rfl

theorem actual_q_tree_family (row : Bool) :
    GrowthTree qLambda (qWeight 11 7 (rowDelta row) (1 / 50)) (qCore 11 7 (1 / 50)) := by
  cases row with
  | false =>
    simpa only [row_delta_false, q_lambda_eq,
      Math.B699.I11FiveSevenGrowth.Shared.qSeedWeight1,
      Math.B699.I11FiveSevenGrowth.Shared.qSeedCore,
      Math.B699.I11FiveSevenGrowth.Shared.qSeedC,
      Math.B699.I11FiveSevenGrowth.Shared.qSeedD,
      Math.B699.I11FiveSevenGrowth.Shared.qSeedZ] using
        Math.B699.I11FiveSevenGrowth.Tree.q_tree_delta1
  | true =>
    simpa only [row_delta_true, q_lambda_eq,
      Math.B699.I11FiveSevenGrowth.Shared.qSeedWeight0,
      Math.B699.I11FiveSevenGrowth.Shared.qSeedCore,
      Math.B699.I11FiveSevenGrowth.Shared.qSeedC,
      Math.B699.I11FiveSevenGrowth.Shared.qSeedD,
      Math.B699.I11FiveSevenGrowth.Shared.qSeedZ] using
        Math.B699.I11FiveSevenGrowth.Tree.q_tree_delta0

theorem actual_e_tree_family (row : Bool) :
    GrowthTree eLambda (eWeight 11 7 (rowDelta row) (1 / 50)) (eCore 11 7 (1 / 50)) := by
  cases row with
  | false =>
    simpa only [row_delta_false, e_lambda_eq,
      Math.B699.I11FiveSevenGrowth.Shared.eSeedWeight1,
      Math.B699.I11FiveSevenGrowth.Shared.eSeedCore,
      Math.B699.I11FiveSevenGrowth.Shared.eSeedC,
      Math.B699.I11FiveSevenGrowth.Shared.eSeedD,
      Math.B699.I11FiveSevenGrowth.Shared.eSeedZ] using
        Math.B699.I11FiveSevenGrowth.Tree.e_tree_delta1
  | true =>
    simpa only [row_delta_true, e_lambda_eq,
      Math.B699.I11FiveSevenGrowth.Shared.eSeedWeight0,
      Math.B699.I11FiveSevenGrowth.Shared.eSeedCore,
      Math.B699.I11FiveSevenGrowth.Shared.eSeedC,
      Math.B699.I11FiveSevenGrowth.Shared.eSeedD,
      Math.B699.I11FiveSevenGrowth.Shared.eSeedZ] using
        Math.B699.I11FiveSevenGrowth.Tree.e_tree_delta0

theorem actual_five_seven_cofactor_edge
    (Y e f A C : ℕ) (hY : fiveSevenY0 ≤ Y) (hC : 1 ≤ C)
    (hwindowP : Y ≤ 5 ^ e * A) (hwindowQ : Y ≤ 7 ^ f * C)
    (hupperQ : 7 ^ f * C ≤ 2 * Y)
    (hgap : |(5 : ℤ) ^ e * (A : ℤ) - (7 : ℤ) ^ f * (C : ℤ)| ≤ 24) :
    Y ^ 352 ≤ A ^ 1000 ∨ Y ^ 216 ≤ C ^ 1000 := by
  exact five_seven_edge_of_growth_trees actual_q_tree_family actual_e_tree_family
    Y e f A C hY hC hwindowP hwindowQ hupperQ hgap

end Math.B699.I11FiveSevenFinalConsumers

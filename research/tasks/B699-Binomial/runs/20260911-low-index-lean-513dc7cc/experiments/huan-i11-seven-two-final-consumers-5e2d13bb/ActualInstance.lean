import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».experiments.«huan-i11-seven-two-final-consumers-5e2d13bb».ActualNumeric
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».experiments.«huan-i11-seven-two-growth-tree-5e2d13bb».candidate.lean.Growth.I11SevenTwoTree

/-! UNCOMPILED CANDIDATE. Actual c9d5 z1/49 tree roots supply all four families. false is delta1, true is delta0; tree acceptance belongs to the parent. -/
set_option autoImplicit false
set_option relaxedAutoImplicit false
namespace Math.B699.I11SevenTwoFinalConsumers
open Math.B699.I11SevenTwoScaled
open Math.B699.PadeGrowthPartition Math.B699.GrowthLeaf

theorem q_lambda_eq : Math.B699.I11SevenTwoGrowth.Shared.qLam = qLambda := rfl
theorem e_lambda_eq : Math.B699.I11SevenTwoGrowth.Shared.eLam = eLambda := rfl
theorem row_delta_false : rowDelta false = 1 := rfl
theorem row_delta_true : rowDelta true = 0 := rfl

theorem actual_q_tree_family (row : Bool) :
    GrowthTree qLambda (qWeight 9 5 (rowDelta row) (1 / 49)) (qCore 9 5 (1 / 49)) := by
  cases row with
  | false =>
    simpa only [row_delta_false, q_lambda_eq,
      Math.B699.I11SevenTwoGrowth.Shared.qSeedWeight1,
      Math.B699.I11SevenTwoGrowth.Shared.qSeedCore,
      Math.B699.I11SevenTwoGrowth.Shared.qSeedC,
      Math.B699.I11SevenTwoGrowth.Shared.qSeedD,
      Math.B699.I11SevenTwoGrowth.Shared.qSeedZ] using
        Math.B699.I11SevenTwoGrowth.Tree.q_tree_delta1
  | true =>
    simpa only [row_delta_true, q_lambda_eq,
      Math.B699.I11SevenTwoGrowth.Shared.qSeedWeight0,
      Math.B699.I11SevenTwoGrowth.Shared.qSeedCore,
      Math.B699.I11SevenTwoGrowth.Shared.qSeedC,
      Math.B699.I11SevenTwoGrowth.Shared.qSeedD,
      Math.B699.I11SevenTwoGrowth.Shared.qSeedZ] using
        Math.B699.I11SevenTwoGrowth.Tree.q_tree_delta0

theorem actual_e_tree_family (row : Bool) :
    GrowthTree eLambda (eWeight 9 5 (rowDelta row) (1 / 49)) (eCore 9 5 (1 / 49)) := by
  cases row with
  | false =>
    simpa only [row_delta_false, e_lambda_eq,
      Math.B699.I11SevenTwoGrowth.Shared.eSeedWeight1,
      Math.B699.I11SevenTwoGrowth.Shared.eSeedCore,
      Math.B699.I11SevenTwoGrowth.Shared.eSeedC,
      Math.B699.I11SevenTwoGrowth.Shared.eSeedD,
      Math.B699.I11SevenTwoGrowth.Shared.eSeedZ] using
        Math.B699.I11SevenTwoGrowth.Tree.e_tree_delta1
  | true =>
    simpa only [row_delta_true, e_lambda_eq,
      Math.B699.I11SevenTwoGrowth.Shared.eSeedWeight0,
      Math.B699.I11SevenTwoGrowth.Shared.eSeedCore,
      Math.B699.I11SevenTwoGrowth.Shared.eSeedC,
      Math.B699.I11SevenTwoGrowth.Shared.eSeedD,
      Math.B699.I11SevenTwoGrowth.Shared.eSeedZ] using
        Math.B699.I11SevenTwoGrowth.Tree.e_tree_delta0

theorem actual_seven_two_cofactor_edge
    (Y e f A C : ℕ) (hY : sevenTwoY0 ≤ Y) (hC : 1 ≤ C)
    (hwindowP : Y ≤ 7 ^ e * A) (hwindowQ : Y ≤ 2 ^ f * C)
    (hupperQ : 2 ^ f * C ≤ 2 * Y)
    (hgap : |(7 : ℤ) ^ e * (A : ℤ) - (2 : ℤ) ^ f * (C : ℤ)| ≤ 24) :
    Y ^ 60 ≤ A ^ 1000 ∨ Y ^ 330 ≤ C ^ 1000 := by
  exact seven_two_edge_of_growth_trees actual_q_tree_family actual_e_tree_family
    Y e f A C hY hC hwindowP hwindowQ hupperQ hgap

end Math.B699.I11SevenTwoFinalConsumers

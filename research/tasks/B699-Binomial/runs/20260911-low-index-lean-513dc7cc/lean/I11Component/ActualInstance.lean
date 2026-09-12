import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Growth.I11FiveThreeTree
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11Component.ActualComponentEdge

/-! UNCOMPILED CANDIDATE. The actual v2 Q/E tree roots instantiate both
Bool rows. This removes all tree premises from the actual (5,3) component
edge, but the imported candidate closure still needs the parent's real Lean
verification. This statement is not an initial-height or original-index theorem. -/
set_option autoImplicit false
set_option relaxedAutoImplicit false
namespace B699LowIndex.I11FiveThreeFinalInstance
open B699LowIndex.I11SmallPrimes
open Math.B699.I11ActualPadeEdge Math.B699.I11ScaledBounds
open Math.B699.PadeGrowthPartition Math.B699.GrowthLeaf

/-- Explicit lambda alignment; no change to either fixed seed value. -/
theorem q_lambda_eq : Math.B699.I11FiveThreeGrowth.Shared.qLam = qLambda := rfl
theorem e_lambda_eq : Math.B699.I11FiveThreeGrowth.Shared.eLam = eLambda := rfl

theorem row_delta_false : rowDelta false = 1 := rfl
theorem row_delta_true : rowDelta true = 0 := rfl

theorem actual_q_tree_family (row : Bool) :
    GrowthTree qLambda (qWeight 5 3 (rowDelta row) (1 / 4375)) (qCore 5 3 (1 / 4375)) := by
  cases row with
  | false =>
    simpa only [row_delta_false, q_lambda_eq,
      Math.B699.I11FiveThreeGrowth.Shared.qSeedWeight1,
      Math.B699.I11FiveThreeGrowth.Shared.qSeedCore,
      Math.B699.I11FiveThreeGrowth.Shared.qSeedC,
      Math.B699.I11FiveThreeGrowth.Shared.qSeedD,
      Math.B699.I11FiveThreeGrowth.Shared.qSeedZ] using
        Math.B699.I11FiveThreeGrowth.Tree.q_tree_delta1
  | true =>
    simpa only [row_delta_true, q_lambda_eq,
      Math.B699.I11FiveThreeGrowth.Shared.qSeedWeight0,
      Math.B699.I11FiveThreeGrowth.Shared.qSeedCore,
      Math.B699.I11FiveThreeGrowth.Shared.qSeedC,
      Math.B699.I11FiveThreeGrowth.Shared.qSeedD,
      Math.B699.I11FiveThreeGrowth.Shared.qSeedZ] using
        Math.B699.I11FiveThreeGrowth.Tree.q_tree_delta0

theorem actual_e_tree_family (row : Bool) :
    GrowthTree eLambda (eWeight 5 3 (rowDelta row) (1 / 4375)) (eCore 5 3 (1 / 4375)) := by
  cases row with
  | false =>
    simpa only [row_delta_false, e_lambda_eq,
      Math.B699.I11FiveThreeGrowth.Shared.eSeedWeight1,
      Math.B699.I11FiveThreeGrowth.Shared.eSeedCore,
      Math.B699.I11FiveThreeGrowth.Shared.eSeedC,
      Math.B699.I11FiveThreeGrowth.Shared.eSeedD,
      Math.B699.I11FiveThreeGrowth.Shared.eSeedZ] using
        Math.B699.I11FiveThreeGrowth.Tree.e_tree_delta1
  | true =>
    simpa only [row_delta_true, e_lambda_eq,
      Math.B699.I11FiveThreeGrowth.Shared.eSeedWeight0,
      Math.B699.I11FiveThreeGrowth.Shared.eSeedCore,
      Math.B699.I11FiveThreeGrowth.Shared.eSeedC,
      Math.B699.I11FiveThreeGrowth.Shared.eSeedD,
      Math.B699.I11FiveThreeGrowth.Shared.eSeedZ] using
        Math.B699.I11FiveThreeGrowth.Tree.e_tree_delta0

/-- The actual component edge with no tree, cofactor, growth or height-validity
premise. n>=2^15360 is the edge's domain, not a proved upper height. -/
theorem actual_five_three_component_edge {n : ℕ} (hn : (2 : ℕ) ^ 15360 ≤ n) :
    (primeComponent n 5) ^ 1000 * ((n + 1) / 2) ^ 354 ≤ n ^ 1000 ∨
      (primeComponent n 3) ^ 1000 * ((n + 1) / 2) ^ 228 ≤ n ^ 1000 := by
  exact B699LowIndex.I11FiveThreeComponentEdge.actual_five_three_component_edge
    actual_q_tree_family actual_e_tree_family hn

end B699LowIndex.I11FiveThreeFinalInstance
#print axioms B699LowIndex.I11FiveThreeFinalInstance.q_lambda_eq
#print axioms B699LowIndex.I11FiveThreeFinalInstance.e_lambda_eq
#print axioms B699LowIndex.I11FiveThreeFinalInstance.row_delta_false
#print axioms B699LowIndex.I11FiveThreeFinalInstance.row_delta_true
#print axioms B699LowIndex.I11FiveThreeFinalInstance.actual_q_tree_family
#print axioms B699LowIndex.I11FiveThreeFinalInstance.actual_e_tree_family
#print axioms B699LowIndex.I11FiveThreeFinalInstance.actual_five_three_component_edge

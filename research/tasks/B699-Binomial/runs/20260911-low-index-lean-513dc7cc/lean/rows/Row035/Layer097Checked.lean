import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row035.Layer097Arithmetic
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row035.Layer097Enumeration
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row035.Layer097Pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row035_layer097_checked :
    coverLayerCheck row035.height row035.goods { lower := 188563026783949123472634601799680, upper := 377126053567898246945269203599360, M := 4 } = true := by
  exact coverLayerCheck_of_parts row035_layer097_arithmetic row035_layer097_enumeration row035_bounds_eq row035_layer097_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer097_checked

import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row035.Layer081Arithmetic
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row035.Layer081Enumeration
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row035.Layer081Pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row035_layer081_checked :
    coverLayerCheck row035.height row035.goods { lower := 2877243450682817435800698880, upper := 5754486901365634871601397760, M := 6 } = true := by
  exact coverLayerCheck_of_parts row035_layer081_arithmetic row035_layer081_enumeration row035_bounds_eq row035_layer081_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer081_checked

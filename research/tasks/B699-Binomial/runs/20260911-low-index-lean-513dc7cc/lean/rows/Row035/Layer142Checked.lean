import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row035.Layer142Arithmetic
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row035.Layer142Enumeration
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row035.Layer142Pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row035_layer142_checked :
    coverLayerCheck row035.height row035.goods { lower := 6634471696562860384606876186112887548029173760, upper := 13268943393125720769213752372225775096058347520, M := 2 } = true := by
  exact coverLayerCheck_of_parts row035_layer142_arithmetic row035_layer142_enumeration row035_bounds_eq row035_layer142_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer142_checked

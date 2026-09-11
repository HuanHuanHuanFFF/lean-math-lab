import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row035.Layer120Arithmetic
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row035.Layer120Enumeration
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row035.Layer120Pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row035_layer120_checked :
    coverLayerCheck row035.height row035.goods { lower := 1581781314984049888755530401733610045440, upper := 3163562629968099777511060803467220090880, M := 3 } = true := by
  exact coverLayerCheck_of_parts row035_layer120_arithmetic row035_layer120_enumeration row035_bounds_eq row035_layer120_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer120_checked

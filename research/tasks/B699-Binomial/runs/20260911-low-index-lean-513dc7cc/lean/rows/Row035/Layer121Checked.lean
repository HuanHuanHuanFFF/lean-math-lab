import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row035.Layer121Arithmetic
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row035.Layer121Enumeration
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row035.Layer121Pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row035_layer121_checked :
    coverLayerCheck row035.height row035.goods { lower := 3163562629968099777511060803467220090880, upper := 6327125259936199555022121606934440181760, M := 3 } = true := by
  exact coverLayerCheck_of_parts row035_layer121_arithmetic row035_layer121_enumeration row035_bounds_eq row035_layer121_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer121_checked

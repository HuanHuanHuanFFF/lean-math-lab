import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row110.Layer004Checked
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row110Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row110_layer005_checked :
    coverLayerCheck row110.height row110.goods { lower := 383680, upper := 767360, M := 12 } = true := by
  decide +kernel

theorem row110_layer006_checked :
    coverLayerCheck row110.height row110.goods { lower := 767360, upper := 1534720, M := 10 } = true := by
  decide +kernel

theorem row110_layer007_checked :
    coverLayerCheck row110.height row110.goods { lower := 1534720, upper := 3069440, M := 9 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row110_layer004_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row110_layer005_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row110_layer006_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row110_layer007_checked

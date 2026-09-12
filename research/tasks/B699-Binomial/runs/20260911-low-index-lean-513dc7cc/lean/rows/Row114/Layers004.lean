import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row114.Layer004Checked
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row114Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row114_layer005_checked :
    coverLayerCheck row114.height row114.goods { lower := 412224, upper := 824448, M := 12 } = true := by
  decide +kernel

theorem row114_layer006_checked :
    coverLayerCheck row114.height row114.goods { lower := 824448, upper := 1648896, M := 10 } = true := by
  decide +kernel

theorem row114_layer007_checked :
    coverLayerCheck row114.height row114.goods { lower := 1648896, upper := 3297792, M := 9 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row114_layer004_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row114_layer005_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row114_layer006_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row114_layer007_checked

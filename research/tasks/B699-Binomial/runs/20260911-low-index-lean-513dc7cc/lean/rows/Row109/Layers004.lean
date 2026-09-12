import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row109Data
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row109.Layer005Checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row109_layer004_checked :
    coverLayerCheck row109.height row109.goods { lower := 188352, upper := 376704, M := 11 } = true := by
  decide +kernel

theorem row109_layer006_checked :
    coverLayerCheck row109.height row109.goods { lower := 753408, upper := 1506816, M := 8 } = true := by
  decide +kernel

theorem row109_layer007_checked :
    coverLayerCheck row109.height row109.goods { lower := 1506816, upper := 3013632, M := 6 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row109_layer004_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row109_layer005_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row109_layer006_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row109_layer007_checked

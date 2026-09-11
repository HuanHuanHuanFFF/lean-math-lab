import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row072Data
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row072.Layer007Checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row072_layer004_checked :
    coverLayerCheck row072.height row072.goods { lower := 81792, upper := 163584, M := 19 } = true := by
  decide +kernel

theorem row072_layer005_checked :
    coverLayerCheck row072.height row072.goods { lower := 163584, upper := 327168, M := 16 } = true := by
  decide +kernel

theorem row072_layer006_checked :
    coverLayerCheck row072.height row072.goods { lower := 327168, upper := 654336, M := 15 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row072_layer004_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row072_layer005_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row072_layer006_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row072_layer007_checked

import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row069Data
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row069.Layer005Checked
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row069.Layer007Checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row069_layer004_checked :
    coverLayerCheck row069.height row069.goods { lower := 75072, upper := 150144, M := 17 } = true := by
  decide +kernel

theorem row069_layer006_checked :
    coverLayerCheck row069.height row069.goods { lower := 300288, upper := 600576, M := 13 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row069_layer004_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row069_layer005_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row069_layer006_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row069_layer007_checked

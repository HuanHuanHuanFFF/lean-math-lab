import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row057Data
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row057.Layer005Checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row057_layer004_checked :
    coverLayerCheck row057.height row057.goods { lower := 51072, upper := 102144, M := 18 } = true := by
  decide +kernel

theorem row057_layer006_checked :
    coverLayerCheck row057.height row057.goods { lower := 204288, upper := 408576, M := 14 } = true := by
  decide +kernel

theorem row057_layer007_checked :
    coverLayerCheck row057.height row057.goods { lower := 408576, upper := 817152, M := 12 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row057_layer004_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row057_layer005_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row057_layer006_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row057_layer007_checked

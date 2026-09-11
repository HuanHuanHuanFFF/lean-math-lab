import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row111Data
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row111.Layer005Checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row111_layer004_checked :
    coverLayerCheck row111.height row111.goods { lower := 195360, upper := 390720, M := 13 } = true := by
  decide +kernel

theorem row111_layer006_checked :
    coverLayerCheck row111.height row111.goods { lower := 781440, upper := 1562880, M := 9 } = true := by
  decide +kernel

theorem row111_layer007_checked :
    coverLayerCheck row111.height row111.goods { lower := 1562880, upper := 3125760, M := 8 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row111_layer004_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row111_layer005_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row111_layer006_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row111_layer007_checked

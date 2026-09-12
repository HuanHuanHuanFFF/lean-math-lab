import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row075.Layer008Checked
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row075Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row075_layer009_checked :
    coverLayerCheck row075.height row075.goods { lower := 2841600, upper := 5683200, M := 11 } = true := by
  decide +kernel

theorem row075_layer010_checked :
    coverLayerCheck row075.height row075.goods { lower := 5683200, upper := 11366400, M := 10 } = true := by
  decide +kernel

theorem row075_layer011_checked :
    coverLayerCheck row075.height row075.goods { lower := 11366400, upper := 22732800, M := 9 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row075_layer008_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row075_layer009_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row075_layer010_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row075_layer011_checked

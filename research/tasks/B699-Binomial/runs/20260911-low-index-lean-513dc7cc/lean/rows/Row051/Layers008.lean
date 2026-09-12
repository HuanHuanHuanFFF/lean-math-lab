import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row051.Layer008Checked
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row051Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row051_layer009_checked :
    coverLayerCheck row051.height row051.goods { lower := 1305600, upper := 2611200, M := 16 } = true := by
  decide +kernel

theorem row051_layer010_checked :
    coverLayerCheck row051.height row051.goods { lower := 2611200, upper := 5222400, M := 15 } = true := by
  decide +kernel

theorem row051_layer011_checked :
    coverLayerCheck row051.height row051.goods { lower := 5222400, upper := 10444800, M := 14 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row051_layer008_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row051_layer009_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row051_layer010_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row051_layer011_checked

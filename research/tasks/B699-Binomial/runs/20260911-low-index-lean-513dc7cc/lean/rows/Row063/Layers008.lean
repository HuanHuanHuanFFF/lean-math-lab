import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row063.Layer008Checked
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row063Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row063_layer009_checked :
    coverLayerCheck row063.height row063.goods { lower := 1999872, upper := 3999744, M := 13 } = true := by
  decide +kernel

theorem row063_layer010_checked :
    coverLayerCheck row063.height row063.goods { lower := 3999744, upper := 7999488, M := 12 } = true := by
  decide +kernel

theorem row063_layer011_checked :
    coverLayerCheck row063.height row063.goods { lower := 7999488, upper := 15998976, M := 11 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row063_layer008_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row063_layer009_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row063_layer010_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row063_layer011_checked

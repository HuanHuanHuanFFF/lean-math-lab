import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row071Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row071_layer008_checked :
    coverLayerCheck row071.height row071.goods { lower := 1272320, upper := 2544640, M := 7 } = true := by
  decide +kernel

theorem row071_layer009_checked :
    coverLayerCheck row071.height row071.goods { lower := 2544640, upper := 5089280, M := 6 } = true := by
  decide +kernel

theorem row071_layer010_checked :
    coverLayerCheck row071.height row071.goods { lower := 5089280, upper := 10178560, M := 5 } = true := by
  decide +kernel

theorem row071_layer011_checked :
    coverLayerCheck row071.height row071.goods { lower := 10178560, upper := 20357120, M := 4 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row071_layer008_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row071_layer009_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row071_layer010_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row071_layer011_checked

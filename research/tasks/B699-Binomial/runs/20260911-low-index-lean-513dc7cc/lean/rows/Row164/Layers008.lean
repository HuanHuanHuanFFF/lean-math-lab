import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row164Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row164_layer008_checked :
    coverLayerCheck row164.height row164.goods { lower := 6843392, upper := 13686784, M := 2 } = true := by
  decide +kernel

theorem row164_layer009_checked :
    coverLayerCheck row164.height row164.goods { lower := 13686784, upper := 27373568, M := 1 } = true := by
  decide +kernel

theorem row164_layer010_checked :
    coverLayerCheck row164.height row164.goods { lower := 27373568, upper := 54747136, M := 1 } = true := by
  decide +kernel

theorem row164_layer011_checked :
    coverLayerCheck row164.height row164.goods { lower := 54747136, upper := 100000000, M := 1 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row164_layer008_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row164_layer009_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row164_layer010_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row164_layer011_checked

import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row071Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row071_layer004_checked :
    coverLayerCheck row071.height row071.goods { lower := 79520, upper := 159040, M := 13 } = true := by
  decide +kernel

theorem row071_layer005_checked :
    coverLayerCheck row071.height row071.goods { lower := 159040, upper := 318080, M := 11 } = true := by
  decide +kernel

theorem row071_layer006_checked :
    coverLayerCheck row071.height row071.goods { lower := 318080, upper := 636160, M := 10 } = true := by
  decide +kernel

theorem row071_layer007_checked :
    coverLayerCheck row071.height row071.goods { lower := 636160, upper := 1272320, M := 8 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row071_layer004_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row071_layer005_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row071_layer006_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row071_layer007_checked

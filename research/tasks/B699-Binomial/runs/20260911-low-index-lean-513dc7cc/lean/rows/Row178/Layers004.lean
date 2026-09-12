import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row178Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row178_layer004_checked :
    coverLayerCheck row178.height row178.goods { lower := 504096, upper := 1008192, M := 4 } = true := by
  decide +kernel

theorem row178_layer005_checked :
    coverLayerCheck row178.height row178.goods { lower := 1008192, upper := 2016384, M := 3 } = true := by
  decide +kernel

theorem row178_layer006_checked :
    coverLayerCheck row178.height row178.goods { lower := 2016384, upper := 4032768, M := 2 } = true := by
  decide +kernel

theorem row178_layer007_checked :
    coverLayerCheck row178.height row178.goods { lower := 4032768, upper := 8065536, M := 2 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row178_layer004_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row178_layer005_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row178_layer006_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row178_layer007_checked

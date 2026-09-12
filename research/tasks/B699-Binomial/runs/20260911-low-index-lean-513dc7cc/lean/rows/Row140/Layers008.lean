import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row140Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row140_layer008_checked :
    coverLayerCheck row140.height row140.goods { lower := 4981760, upper := 9963520, M := 3 } = true := by
  decide +kernel

theorem row140_layer009_checked :
    coverLayerCheck row140.height row140.goods { lower := 9963520, upper := 19927040, M := 2 } = true := by
  decide +kernel

theorem row140_layer010_checked :
    coverLayerCheck row140.height row140.goods { lower := 19927040, upper := 39854080, M := 2 } = true := by
  decide +kernel

theorem row140_layer011_checked :
    coverLayerCheck row140.height row140.goods { lower := 39854080, upper := 79708160, M := 2 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row140_layer008_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row140_layer009_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row140_layer010_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row140_layer011_checked

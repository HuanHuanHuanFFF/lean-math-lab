import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row112Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row112_layer012_checked :
    coverLayerCheck row112.height row112.goods { lower := 50921472, upper := 101842944, M := 3 } = true := by
  decide +kernel

theorem row112_layer013_checked :
    coverLayerCheck row112.height row112.goods { lower := 101842944, upper := 203685888, M := 3 } = true := by
  decide +kernel

theorem row112_layer014_checked :
    coverLayerCheck row112.height row112.goods { lower := 203685888, upper := 407371776, M := 2 } = true := by
  decide +kernel

theorem row112_layer015_checked :
    coverLayerCheck row112.height row112.goods { lower := 407371776, upper := 814743552, M := 2 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row112_layer012_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row112_layer013_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row112_layer014_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row112_layer015_checked

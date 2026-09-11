import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row042Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row042_layer024_checked :
    coverLayerCheck row042.height row042.goods { lower := 28890365952, upper := 57780731904, M := 16 } = true := by
  decide +kernel

theorem row042_layer025_checked :
    coverLayerCheck row042.height row042.goods { lower := 57780731904, upper := 115561463808, M := 15 } = true := by
  decide +kernel

theorem row042_layer026_checked :
    coverLayerCheck row042.height row042.goods { lower := 115561463808, upper := 231122927616, M := 14 } = true := by
  decide +kernel

theorem row042_layer027_checked :
    coverLayerCheck row042.height row042.goods { lower := 231122927616, upper := 462245855232, M := 14 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row042_layer024_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row042_layer025_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row042_layer026_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row042_layer027_checked

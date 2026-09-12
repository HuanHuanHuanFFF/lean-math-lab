import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row042Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row042_layer044_checked :
    coverLayerCheck row042.height row042.goods { lower := 30293744368484352, upper := 60587488736968704, M := 7 } = true := by
  decide +kernel

theorem row042_layer045_checked :
    coverLayerCheck row042.height row042.goods { lower := 60587488736968704, upper := 121174977473937408, M := 7 } = true := by
  decide +kernel

theorem row042_layer046_checked :
    coverLayerCheck row042.height row042.goods { lower := 121174977473937408, upper := 242349954947874816, M := 7 } = true := by
  decide +kernel

theorem row042_layer047_checked :
    coverLayerCheck row042.height row042.goods { lower := 242349954947874816, upper := 484699909895749632, M := 7 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row042_layer044_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row042_layer045_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row042_layer046_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row042_layer047_checked

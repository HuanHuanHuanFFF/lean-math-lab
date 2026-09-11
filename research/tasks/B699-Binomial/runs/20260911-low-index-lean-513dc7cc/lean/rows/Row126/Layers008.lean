import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row126Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row126_layer008_checked :
    coverLayerCheck row126.height row126.goods { lower := 4032000, upper := 8064000, M := 2 } = true := by
  decide +kernel

theorem row126_layer009_checked :
    coverLayerCheck row126.height row126.goods { lower := 8064000, upper := 16128000, M := 2 } = true := by
  decide +kernel

theorem row126_layer010_checked :
    coverLayerCheck row126.height row126.goods { lower := 16128000, upper := 32256000, M := 1 } = true := by
  decide +kernel

theorem row126_layer011_checked :
    coverLayerCheck row126.height row126.goods { lower := 32256000, upper := 64512000, M := 1 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row126_layer008_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row126_layer009_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row126_layer010_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row126_layer011_checked

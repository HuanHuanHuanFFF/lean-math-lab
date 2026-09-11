import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row182Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row182_layer008_checked :
    coverLayerCheck row182.height row182.goods { lower := 8433152, upper := 16866304, M := 2 } = true := by
  decide +kernel

theorem row182_layer009_checked :
    coverLayerCheck row182.height row182.goods { lower := 16866304, upper := 33732608, M := 1 } = true := by
  decide +kernel

theorem row182_layer010_checked :
    coverLayerCheck row182.height row182.goods { lower := 33732608, upper := 67465216, M := 1 } = true := by
  decide +kernel

theorem row182_layer011_checked :
    coverLayerCheck row182.height row182.goods { lower := 67465216, upper := 100000000, M := 1 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row182_layer008_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row182_layer009_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row182_layer010_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row182_layer011_checked

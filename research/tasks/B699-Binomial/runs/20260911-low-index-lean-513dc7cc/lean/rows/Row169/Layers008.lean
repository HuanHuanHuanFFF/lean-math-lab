import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row169Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row169_layer008_checked :
    coverLayerCheck row169.height row169.goods { lower := 7268352, upper := 14536704, M := 2 } = true := by
  decide +kernel

theorem row169_layer009_checked :
    coverLayerCheck row169.height row169.goods { lower := 14536704, upper := 29073408, M := 1 } = true := by
  decide +kernel

theorem row169_layer010_checked :
    coverLayerCheck row169.height row169.goods { lower := 29073408, upper := 58146816, M := 1 } = true := by
  decide +kernel

theorem row169_layer011_checked :
    coverLayerCheck row169.height row169.goods { lower := 58146816, upper := 100000000, M := 1 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row169_layer008_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row169_layer009_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row169_layer010_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row169_layer011_checked

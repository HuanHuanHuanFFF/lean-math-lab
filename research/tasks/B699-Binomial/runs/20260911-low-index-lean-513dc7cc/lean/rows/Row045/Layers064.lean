import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row045Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row045_layer064_checked :
    coverLayerCheck row045.height row045.goods { lower := 36524553265944912199680, upper := 73049106531889824399360, M := 5 } = true := by
  decide +kernel

theorem row045_layer065_checked :
    coverLayerCheck row045.height row045.goods { lower := 73049106531889824399360, upper := 146098213063779648798720, M := 4 } = true := by
  decide +kernel

theorem row045_layer066_checked :
    coverLayerCheck row045.height row045.goods { lower := 146098213063779648798720, upper := 292196426127559297597440, M := 4 } = true := by
  decide +kernel

theorem row045_layer067_checked :
    coverLayerCheck row045.height row045.goods { lower := 292196426127559297597440, upper := 584392852255118595194880, M := 4 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row045_layer064_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row045_layer065_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row045_layer066_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row045_layer067_checked

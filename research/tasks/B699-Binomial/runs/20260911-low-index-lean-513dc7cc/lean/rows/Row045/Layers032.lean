import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row045Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row045_layer032_checked :
    coverLayerCheck row045.height row045.goods { lower := 8504035246080, upper := 17008070492160, M := 13 } = true := by
  decide +kernel

theorem row045_layer033_checked :
    coverLayerCheck row045.height row045.goods { lower := 17008070492160, upper := 34016140984320, M := 13 } = true := by
  decide +kernel

theorem row045_layer034_checked :
    coverLayerCheck row045.height row045.goods { lower := 34016140984320, upper := 68032281968640, M := 13 } = true := by
  decide +kernel

theorem row045_layer035_checked :
    coverLayerCheck row045.height row045.goods { lower := 68032281968640, upper := 136064563937280, M := 12 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row045_layer032_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row045_layer033_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row045_layer034_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row045_layer035_checked

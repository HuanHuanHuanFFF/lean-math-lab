import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row153Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row153_layer008_checked :
    coverLayerCheck row153.height row153.goods { lower := 5953536, upper := 11907072, M := 2 } = true := by
  decide +kernel

theorem row153_layer009_checked :
    coverLayerCheck row153.height row153.goods { lower := 11907072, upper := 23814144, M := 2 } = true := by
  decide +kernel

theorem row153_layer010_checked :
    coverLayerCheck row153.height row153.goods { lower := 23814144, upper := 47628288, M := 1 } = true := by
  decide +kernel

theorem row153_layer011_checked :
    coverLayerCheck row153.height row153.goods { lower := 47628288, upper := 95256576, M := 1 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row153_layer008_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row153_layer009_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row153_layer010_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row153_layer011_checked

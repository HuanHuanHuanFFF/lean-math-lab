import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row082Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row082_layer008_checked :
    coverLayerCheck row082.height row082.goods { lower := 1700352, upper := 3400704, M := 8 } = true := by
  decide +kernel

theorem row082_layer009_checked :
    coverLayerCheck row082.height row082.goods { lower := 3400704, upper := 6801408, M := 7 } = true := by
  decide +kernel

theorem row082_layer010_checked :
    coverLayerCheck row082.height row082.goods { lower := 6801408, upper := 13602816, M := 6 } = true := by
  decide +kernel

theorem row082_layer011_checked :
    coverLayerCheck row082.height row082.goods { lower := 13602816, upper := 27205632, M := 5 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row082_layer008_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row082_layer009_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row082_layer010_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row082_layer011_checked

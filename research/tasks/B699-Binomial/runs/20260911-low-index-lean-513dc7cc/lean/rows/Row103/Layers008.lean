import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row103Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row103_layer008_checked :
    coverLayerCheck row103.height row103.goods { lower := 2689536, upper := 5379072, M := 4 } = true := by
  decide +kernel

theorem row103_layer009_checked :
    coverLayerCheck row103.height row103.goods { lower := 5379072, upper := 10758144, M := 3 } = true := by
  decide +kernel

theorem row103_layer010_checked :
    coverLayerCheck row103.height row103.goods { lower := 10758144, upper := 21516288, M := 3 } = true := by
  decide +kernel

theorem row103_layer011_checked :
    coverLayerCheck row103.height row103.goods { lower := 21516288, upper := 43032576, M := 2 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row103_layer008_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row103_layer009_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row103_layer010_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row103_layer011_checked

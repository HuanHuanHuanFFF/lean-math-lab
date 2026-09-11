import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row155Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row155_layer008_checked :
    coverLayerCheck row155.height row155.goods { lower := 6110720, upper := 12221440, M := 2 } = true := by
  decide +kernel

theorem row155_layer009_checked :
    coverLayerCheck row155.height row155.goods { lower := 12221440, upper := 24442880, M := 1 } = true := by
  decide +kernel

theorem row155_layer010_checked :
    coverLayerCheck row155.height row155.goods { lower := 24442880, upper := 48885760, M := 1 } = true := by
  decide +kernel

theorem row155_layer011_checked :
    coverLayerCheck row155.height row155.goods { lower := 48885760, upper := 97771520, M := 1 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row155_layer008_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row155_layer009_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row155_layer010_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row155_layer011_checked

import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row038Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row038_layer064_checked :
    coverLayerCheck row038.height row038.goods { lower := 25936122167635629572096, upper := 51872244335271259144192, M := 11 } = true := by
  decide +kernel

theorem row038_layer065_checked :
    coverLayerCheck row038.height row038.goods { lower := 51872244335271259144192, upper := 103744488670542518288384, M := 10 } = true := by
  decide +kernel

theorem row038_layer066_checked :
    coverLayerCheck row038.height row038.goods { lower := 103744488670542518288384, upper := 207488977341085036576768, M := 10 } = true := by
  decide +kernel

theorem row038_layer067_checked :
    coverLayerCheck row038.height row038.goods { lower := 207488977341085036576768, upper := 414977954682170073153536, M := 10 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row038_layer064_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row038_layer065_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row038_layer066_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row038_layer067_checked

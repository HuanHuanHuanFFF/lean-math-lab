import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row035Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row035_layer036_checked :
    coverLayerCheck row035.height row035.goods { lower := 81776177315840, upper := 163552354631680, M := 16 } = true := by
  decide +kernel

theorem row035_layer037_checked :
    coverLayerCheck row035.height row035.goods { lower := 163552354631680, upper := 327104709263360, M := 16 } = true := by
  decide +kernel

theorem row035_layer038_checked :
    coverLayerCheck row035.height row035.goods { lower := 327104709263360, upper := 654209418526720, M := 16 } = true := by
  decide +kernel

theorem row035_layer039_checked :
    coverLayerCheck row035.height row035.goods { lower := 654209418526720, upper := 1308418837053440, M := 15 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer036_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer037_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer038_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer039_checked

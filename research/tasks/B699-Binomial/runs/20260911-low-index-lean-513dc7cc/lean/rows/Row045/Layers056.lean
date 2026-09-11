import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row045Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row045_layer056_checked :
    coverLayerCheck row045.height row045.goods { lower := 142674036195097313280, upper := 285348072390194626560, M := 6 } = true := by
  decide +kernel

theorem row045_layer057_checked :
    coverLayerCheck row045.height row045.goods { lower := 285348072390194626560, upper := 570696144780389253120, M := 6 } = true := by
  decide +kernel

theorem row045_layer058_checked :
    coverLayerCheck row045.height row045.goods { lower := 570696144780389253120, upper := 1141392289560778506240, M := 6 } = true := by
  decide +kernel

theorem row045_layer059_checked :
    coverLayerCheck row045.height row045.goods { lower := 1141392289560778506240, upper := 2282784579121557012480, M := 5 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row045_layer056_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row045_layer057_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row045_layer058_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row045_layer059_checked

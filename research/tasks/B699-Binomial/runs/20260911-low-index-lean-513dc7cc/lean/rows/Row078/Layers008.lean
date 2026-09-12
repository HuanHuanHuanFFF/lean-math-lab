import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row078Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row078_layer008_checked :
    coverLayerCheck row078.height row078.goods { lower := 1537536, upper := 3075072, M := 8 } = true := by
  decide +kernel

theorem row078_layer009_checked :
    coverLayerCheck row078.height row078.goods { lower := 3075072, upper := 6150144, M := 7 } = true := by
  decide +kernel

theorem row078_layer010_checked :
    coverLayerCheck row078.height row078.goods { lower := 6150144, upper := 12300288, M := 6 } = true := by
  decide +kernel

theorem row078_layer011_checked :
    coverLayerCheck row078.height row078.goods { lower := 12300288, upper := 24600576, M := 5 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row078_layer008_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row078_layer009_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row078_layer010_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row078_layer011_checked

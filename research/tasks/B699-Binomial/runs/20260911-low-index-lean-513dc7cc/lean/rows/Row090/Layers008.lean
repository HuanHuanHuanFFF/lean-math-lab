import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row090Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row090_layer008_checked :
    coverLayerCheck row090.height row090.goods { lower := 2050560, upper := 4101120, M := 8 } = true := by
  decide +kernel

theorem row090_layer009_checked :
    coverLayerCheck row090.height row090.goods { lower := 4101120, upper := 8202240, M := 7 } = true := by
  decide +kernel

theorem row090_layer010_checked :
    coverLayerCheck row090.height row090.goods { lower := 8202240, upper := 16404480, M := 6 } = true := by
  decide +kernel

theorem row090_layer011_checked :
    coverLayerCheck row090.height row090.goods { lower := 16404480, upper := 32808960, M := 5 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row090_layer008_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row090_layer009_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row090_layer010_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row090_layer011_checked

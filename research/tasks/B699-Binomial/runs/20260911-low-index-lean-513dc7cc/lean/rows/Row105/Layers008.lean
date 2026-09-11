import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row105Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row105_layer008_checked :
    coverLayerCheck row105.height row105.goods { lower := 2795520, upper := 5591040, M := 5 } = true := by
  decide +kernel

theorem row105_layer009_checked :
    coverLayerCheck row105.height row105.goods { lower := 5591040, upper := 11182080, M := 4 } = true := by
  decide +kernel

theorem row105_layer010_checked :
    coverLayerCheck row105.height row105.goods { lower := 11182080, upper := 22364160, M := 4 } = true := by
  decide +kernel

theorem row105_layer011_checked :
    coverLayerCheck row105.height row105.goods { lower := 22364160, upper := 44728320, M := 3 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row105_layer008_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row105_layer009_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row105_layer010_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row105_layer011_checked

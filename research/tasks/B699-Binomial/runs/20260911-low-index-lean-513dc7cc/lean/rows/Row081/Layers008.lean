import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row081Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row081_layer008_checked :
    coverLayerCheck row081.height row081.goods { lower := 1658880, upper := 3317760, M := 9 } = true := by
  decide +kernel

theorem row081_layer009_checked :
    coverLayerCheck row081.height row081.goods { lower := 3317760, upper := 6635520, M := 8 } = true := by
  decide +kernel

theorem row081_layer010_checked :
    coverLayerCheck row081.height row081.goods { lower := 6635520, upper := 13271040, M := 7 } = true := by
  decide +kernel

theorem row081_layer011_checked :
    coverLayerCheck row081.height row081.goods { lower := 13271040, upper := 26542080, M := 6 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row081_layer008_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row081_layer009_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row081_layer010_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row081_layer011_checked

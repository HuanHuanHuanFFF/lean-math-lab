import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row069Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row069_layer008_checked :
    coverLayerCheck row069.height row069.goods { lower := 1201152, upper := 2402304, M := 10 } = true := by
  decide +kernel

theorem row069_layer009_checked :
    coverLayerCheck row069.height row069.goods { lower := 2402304, upper := 4804608, M := 9 } = true := by
  decide +kernel

theorem row069_layer010_checked :
    coverLayerCheck row069.height row069.goods { lower := 4804608, upper := 9609216, M := 8 } = true := by
  decide +kernel

theorem row069_layer011_checked :
    coverLayerCheck row069.height row069.goods { lower := 9609216, upper := 19218432, M := 7 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row069_layer008_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row069_layer009_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row069_layer010_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row069_layer011_checked

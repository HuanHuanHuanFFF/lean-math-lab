import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row048Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row048_layer052_checked :
    coverLayerCheck row048.height row048.goods { lower := 10160120759347838976, upper := 20320241518695677952, M := 8 } = true := by
  decide +kernel

theorem row048_layer053_checked :
    coverLayerCheck row048.height row048.goods { lower := 20320241518695677952, upper := 40640483037391355904, M := 8 } = true := by
  decide +kernel

theorem row048_layer054_checked :
    coverLayerCheck row048.height row048.goods { lower := 40640483037391355904, upper := 81280966074782711808, M := 8 } = true := by
  decide +kernel

theorem row048_layer055_checked :
    coverLayerCheck row048.height row048.goods { lower := 81280966074782711808, upper := 162561932149565423616, M := 7 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row048_layer052_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row048_layer053_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row048_layer054_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row048_layer055_checked

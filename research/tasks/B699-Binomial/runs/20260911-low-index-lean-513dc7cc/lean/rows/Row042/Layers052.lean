import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row042Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row042_layer052_checked :
    coverLayerCheck row042.height row042.goods { lower := 7755198558331994112, upper := 15510397116663988224, M := 6 } = true := by
  decide +kernel

theorem row042_layer053_checked :
    coverLayerCheck row042.height row042.goods { lower := 15510397116663988224, upper := 31020794233327976448, M := 5 } = true := by
  decide +kernel

theorem row042_layer054_checked :
    coverLayerCheck row042.height row042.goods { lower := 31020794233327976448, upper := 62041588466655952896, M := 5 } = true := by
  decide +kernel

theorem row042_layer055_checked :
    coverLayerCheck row042.height row042.goods { lower := 62041588466655952896, upper := 124083176933311905792, M := 5 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row042_layer052_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row042_layer053_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row042_layer054_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row042_layer055_checked

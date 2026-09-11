import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row174Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row174_layer008_checked :
    coverLayerCheck row174.height row174.goods { lower := 7706112, upper := 15412224, M := 2 } = true := by
  decide +kernel

theorem row174_layer009_checked :
    coverLayerCheck row174.height row174.goods { lower := 15412224, upper := 30824448, M := 1 } = true := by
  decide +kernel

theorem row174_layer010_checked :
    coverLayerCheck row174.height row174.goods { lower := 30824448, upper := 61648896, M := 1 } = true := by
  decide +kernel

theorem row174_layer011_checked :
    coverLayerCheck row174.height row174.goods { lower := 61648896, upper := 100000000, M := 1 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row174_layer008_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row174_layer009_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row174_layer010_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row174_layer011_checked

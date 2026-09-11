import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row139Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row139_layer008_checked :
    coverLayerCheck row139.height row139.goods { lower := 4910592, upper := 9821184, M := 2 } = true := by
  decide +kernel

theorem row139_layer009_checked :
    coverLayerCheck row139.height row139.goods { lower := 9821184, upper := 19642368, M := 2 } = true := by
  decide +kernel

theorem row139_layer010_checked :
    coverLayerCheck row139.height row139.goods { lower := 19642368, upper := 39284736, M := 1 } = true := by
  decide +kernel

theorem row139_layer011_checked :
    coverLayerCheck row139.height row139.goods { lower := 39284736, upper := 78569472, M := 1 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row139_layer008_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row139_layer009_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row139_layer010_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row139_layer011_checked

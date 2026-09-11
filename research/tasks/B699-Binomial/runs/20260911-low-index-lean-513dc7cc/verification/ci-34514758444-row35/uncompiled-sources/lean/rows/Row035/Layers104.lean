import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row035Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row035_layer104_checked :
    coverLayerCheck row035.height row035.goods { lower := 24136067428345487804497229030359040, upper := 48272134856690975608994458060718080, M := 4 } = true := by
  decide +kernel

theorem row035_layer105_checked :
    coverLayerCheck row035.height row035.goods { lower := 48272134856690975608994458060718080, upper := 96544269713381951217988916121436160, M := 4 } = true := by
  decide +kernel

theorem row035_layer106_checked :
    coverLayerCheck row035.height row035.goods { lower := 96544269713381951217988916121436160, upper := 193088539426763902435977832242872320, M := 4 } = true := by
  decide +kernel

theorem row035_layer107_checked :
    coverLayerCheck row035.height row035.goods { lower := 193088539426763902435977832242872320, upper := 386177078853527804871955664485744640, M := 3 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer104_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer105_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer106_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer107_checked

import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row052.Layer008Checked
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row052Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row052_layer009_checked :
    coverLayerCheck row052.height row052.goods { lower := 1357824, upper := 2715648, M := 13 } = true := by
  decide +kernel

theorem row052_layer010_checked :
    coverLayerCheck row052.height row052.goods { lower := 2715648, upper := 5431296, M := 12 } = true := by
  decide +kernel

theorem row052_layer011_checked :
    coverLayerCheck row052.height row052.goods { lower := 5431296, upper := 10862592, M := 11 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row052_layer008_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row052_layer009_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row052_layer010_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row052_layer011_checked

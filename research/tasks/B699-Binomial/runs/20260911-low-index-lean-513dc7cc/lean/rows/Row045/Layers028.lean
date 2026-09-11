import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row045Data
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row045.Layer029Checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row045_layer028_checked :
    coverLayerCheck row045.height row045.goods { lower := 531502202880, upper := 1063004405760, M := 15 } = true := by
  decide +kernel

theorem row045_layer030_checked :
    coverLayerCheck row045.height row045.goods { lower := 2126008811520, upper := 4252017623040, M := 14 } = true := by
  decide +kernel

theorem row045_layer031_checked :
    coverLayerCheck row045.height row045.goods { lower := 4252017623040, upper := 8504035246080, M := 14 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row045_layer028_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row045_layer029_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row045_layer030_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row045_layer031_checked

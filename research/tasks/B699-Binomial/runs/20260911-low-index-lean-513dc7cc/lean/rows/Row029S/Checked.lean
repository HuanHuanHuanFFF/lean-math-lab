import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row029.Metadata
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row029.GoodsChecked
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row029S.LayersChecked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row029S_checked : finiteCoverRowCheck row029 = true := by
  simp only [finiteCoverRowCheck, row029_registered, row029_goods_checked,
    row029_small_checked, row029_layerCover_checked, row029S_layers_checked, Bool.true_and]

end B699LowIndex.LowIndexLean513dc7cc
#print axioms B699LowIndex.LowIndexLean513dc7cc.row029S_checked

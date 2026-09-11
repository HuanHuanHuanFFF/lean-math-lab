import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row035.Layer109Arithmetic
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row035.Layer109Enumeration
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row035.Layer109Pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row035_layer109_checked :
    coverLayerCheck row035.height row035.goods { lower := 772354157707055609743911328971489280, upper := 1544708315414111219487822657942978560, M := 3 } = true := by
  exact coverLayerCheck_of_parts row035_layer109_arithmetic row035_layer109_enumeration row035_bounds_eq row035_layer109_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer109_checked

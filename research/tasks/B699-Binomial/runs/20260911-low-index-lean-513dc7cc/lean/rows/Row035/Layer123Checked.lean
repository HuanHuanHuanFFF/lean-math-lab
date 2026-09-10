import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row035.Layer123Arithmetic
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row035.Layer123Enumeration
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row035.Layer123Pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row035_layer123_checked :
    coverLayerCheck row035.height row035.goods { lower := 12654250519872399110044243213868880363520, upper := 25308501039744798220088486427737760727040, M := 3 } = true := by
  exact coverLayerCheck_of_parts row035_layer123_arithmetic row035_layer123_enumeration row035_bounds_eq row035_layer123_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer123_checked

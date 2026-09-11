import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row079.Layer004Checked
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row079Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row079_layer005_checked :
    coverLayerCheck row079.height row079.goods { lower := 197184, upper := 394368, M := 11 } = true := by
  decide +kernel

theorem row079_layer006_checked :
    coverLayerCheck row079.height row079.goods { lower := 394368, upper := 788736, M := 9 } = true := by
  decide +kernel

theorem row079_layer007_checked :
    coverLayerCheck row079.height row079.goods { lower := 788736, upper := 1577472, M := 8 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row079_layer004_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row079_layer005_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row079_layer006_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row079_layer007_checked

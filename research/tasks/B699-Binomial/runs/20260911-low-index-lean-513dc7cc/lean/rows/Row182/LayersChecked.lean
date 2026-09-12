import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row182.Layers000
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row182.Layers004
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row182.Layers008

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row182_layers_checked :
    row182.layers.all (coverLayerCheck row182.height row182.goods) = true := by
  change row182_layers.all (coverLayerCheck row182.height row182.goods) = true
  simp only [row182_layers, List.all_cons, List.all_nil,
    row182_layer000_checked,
    row182_layer001_checked,
    row182_layer002_checked,
    row182_layer003_checked,
    row182_layer004_checked,
    row182_layer005_checked,
    row182_layer006_checked,
    row182_layer007_checked,
    row182_layer008_checked,
    row182_layer009_checked,
    row182_layer010_checked,
    row182_layer011_checked, Bool.true_and]

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row182_layers_checked

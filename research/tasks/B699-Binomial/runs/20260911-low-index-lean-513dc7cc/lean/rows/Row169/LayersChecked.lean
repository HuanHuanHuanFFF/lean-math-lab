import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row169.Layers000
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row169.Layers004
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row169.Layers008

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row169_layers_checked :
    row169.layers.all (coverLayerCheck row169.height row169.goods) = true := by
  change row169_layers.all (coverLayerCheck row169.height row169.goods) = true
  simp only [row169_layers, List.all_cons, List.all_nil,
    row169_layer000_checked,
    row169_layer001_checked,
    row169_layer002_checked,
    row169_layer003_checked,
    row169_layer004_checked,
    row169_layer005_checked,
    row169_layer006_checked,
    row169_layer007_checked,
    row169_layer008_checked,
    row169_layer009_checked,
    row169_layer010_checked,
    row169_layer011_checked, Bool.true_and]

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row169_layers_checked

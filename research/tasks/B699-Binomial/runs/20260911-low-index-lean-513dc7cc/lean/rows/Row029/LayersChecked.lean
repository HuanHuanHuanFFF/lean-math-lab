import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row029.Layers000
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row029.Layers004
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row029.Layers008
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row029.Layers012
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row029.Layers016
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row029.Layers020
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row029.Layers024
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row029.Layers028
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row029.Layers032
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row029.Layers036
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row029.Layers040
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row029.Layers044
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row029.Layers048
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row029.Layers052
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row029.Layers056
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row029.Layers060
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row029.Layers064
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row029.Layers068
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row029.Layers072
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row029.Layers076
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row029.Layers080
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row029.Layers084
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row029.Layers088
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row029.Layers092
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row029.Layers096
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row029.Layers100
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row029.Layers104
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row029.Layers108
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row029.Layers112

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row029_layers_checked :
    row029.layers.all (coverLayerCheck row029.height row029.goods) = true := by
  change row029_layers.all (coverLayerCheck row029.height row029.goods) = true
  simp only [row029_layers, List.all_cons, List.all_nil,
    row029_layer000_checked,
    row029_layer001_checked,
    row029_layer002_checked,
    row029_layer003_checked,
    row029_layer004_checked,
    row029_layer005_checked,
    row029_layer006_checked,
    row029_layer007_checked,
    row029_layer008_checked,
    row029_layer009_checked,
    row029_layer010_checked,
    row029_layer011_checked,
    row029_layer012_checked,
    row029_layer013_checked,
    row029_layer014_checked,
    row029_layer015_checked,
    row029_layer016_checked,
    row029_layer017_checked,
    row029_layer018_checked,
    row029_layer019_checked,
    row029_layer020_checked,
    row029_layer021_checked,
    row029_layer022_checked,
    row029_layer023_checked,
    row029_layer024_checked,
    row029_layer025_checked,
    row029_layer026_checked,
    row029_layer027_checked,
    row029_layer028_checked,
    row029_layer029_checked,
    row029_layer030_checked,
    row029_layer031_checked,
    row029_layer032_checked,
    row029_layer033_checked,
    row029_layer034_checked,
    row029_layer035_checked,
    row029_layer036_checked,
    row029_layer037_checked,
    row029_layer038_checked,
    row029_layer039_checked,
    row029_layer040_checked,
    row029_layer041_checked,
    row029_layer042_checked,
    row029_layer043_checked,
    row029_layer044_checked,
    row029_layer045_checked,
    row029_layer046_checked,
    row029_layer047_checked,
    row029_layer048_checked,
    row029_layer049_checked,
    row029_layer050_checked,
    row029_layer051_checked,
    row029_layer052_checked,
    row029_layer053_checked,
    row029_layer054_checked,
    row029_layer055_checked,
    row029_layer056_checked,
    row029_layer057_checked,
    row029_layer058_checked,
    row029_layer059_checked,
    row029_layer060_checked,
    row029_layer061_checked,
    row029_layer062_checked,
    row029_layer063_checked,
    row029_layer064_checked,
    row029_layer065_checked,
    row029_layer066_checked,
    row029_layer067_checked,
    row029_layer068_checked,
    row029_layer069_checked,
    row029_layer070_checked,
    row029_layer071_checked,
    row029_layer072_checked,
    row029_layer073_checked,
    row029_layer074_checked,
    row029_layer075_checked,
    row029_layer076_checked,
    row029_layer077_checked,
    row029_layer078_checked,
    row029_layer079_checked,
    row029_layer080_checked,
    row029_layer081_checked,
    row029_layer082_checked,
    row029_layer083_checked,
    row029_layer084_checked,
    row029_layer085_checked,
    row029_layer086_checked,
    row029_layer087_checked,
    row029_layer088_checked,
    row029_layer089_checked,
    row029_layer090_checked,
    row029_layer091_checked,
    row029_layer092_checked,
    row029_layer093_checked,
    row029_layer094_checked,
    row029_layer095_checked,
    row029_layer096_checked,
    row029_layer097_checked,
    row029_layer098_checked,
    row029_layer099_checked,
    row029_layer100_checked,
    row029_layer101_checked,
    row029_layer102_checked,
    row029_layer103_checked,
    row029_layer104_checked,
    row029_layer105_checked,
    row029_layer106_checked,
    row029_layer107_checked,
    row029_layer108_checked,
    row029_layer109_checked,
    row029_layer110_checked,
    row029_layer111_checked,
    row029_layer112_checked,
    row029_layer113_checked, Bool.true_and]

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row029_layers_checked

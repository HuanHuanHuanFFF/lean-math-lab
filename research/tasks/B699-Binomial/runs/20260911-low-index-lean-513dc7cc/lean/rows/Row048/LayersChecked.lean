import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row048.Layers000
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row048.Layers004
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row048.Layers008
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row048.Layers012
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row048.Layers016
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row048.Layers020
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row048.Layers024
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row048.Layers028
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row048.Layers032
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row048.Layers036
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row048.Layers040
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row048.Layers044
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row048.Layers048
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row048.Layers052
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row048.Layers056
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row048.Layers060
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row048.Layers064
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row048.Layers068
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row048.Layers072
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row048.Layers076
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row048.Layers080
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row048.Layers084
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row048.Layers088
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row048.Layers092
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row048.Layers096
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row048.Layers100
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row048.Layers104
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row048.Layers108

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row048_layers_checked :
    row048.layers.all (coverLayerCheck row048.height row048.goods) = true := by
  change row048_layers.all (coverLayerCheck row048.height row048.goods) = true
  simp only [row048_layers, List.all_cons, List.all_nil,
    row048_layer000_checked,
    row048_layer001_checked,
    row048_layer002_checked,
    row048_layer003_checked,
    row048_layer004_checked,
    row048_layer005_checked,
    row048_layer006_checked,
    row048_layer007_checked,
    row048_layer008_checked,
    row048_layer009_checked,
    row048_layer010_checked,
    row048_layer011_checked,
    row048_layer012_checked,
    row048_layer013_checked,
    row048_layer014_checked,
    row048_layer015_checked,
    row048_layer016_checked,
    row048_layer017_checked,
    row048_layer018_checked,
    row048_layer019_checked,
    row048_layer020_checked,
    row048_layer021_checked,
    row048_layer022_checked,
    row048_layer023_checked,
    row048_layer024_checked,
    row048_layer025_checked,
    row048_layer026_checked,
    row048_layer027_checked,
    row048_layer028_checked,
    row048_layer029_checked,
    row048_layer030_checked,
    row048_layer031_checked,
    row048_layer032_checked,
    row048_layer033_checked,
    row048_layer034_checked,
    row048_layer035_checked,
    row048_layer036_checked,
    row048_layer037_checked,
    row048_layer038_checked,
    row048_layer039_checked,
    row048_layer040_checked,
    row048_layer041_checked,
    row048_layer042_checked,
    row048_layer043_checked,
    row048_layer044_checked,
    row048_layer045_checked,
    row048_layer046_checked,
    row048_layer047_checked,
    row048_layer048_checked,
    row048_layer049_checked,
    row048_layer050_checked,
    row048_layer051_checked,
    row048_layer052_checked,
    row048_layer053_checked,
    row048_layer054_checked,
    row048_layer055_checked,
    row048_layer056_checked,
    row048_layer057_checked,
    row048_layer058_checked,
    row048_layer059_checked,
    row048_layer060_checked,
    row048_layer061_checked,
    row048_layer062_checked,
    row048_layer063_checked,
    row048_layer064_checked,
    row048_layer065_checked,
    row048_layer066_checked,
    row048_layer067_checked,
    row048_layer068_checked,
    row048_layer069_checked,
    row048_layer070_checked,
    row048_layer071_checked,
    row048_layer072_checked,
    row048_layer073_checked,
    row048_layer074_checked,
    row048_layer075_checked,
    row048_layer076_checked,
    row048_layer077_checked,
    row048_layer078_checked,
    row048_layer079_checked,
    row048_layer080_checked,
    row048_layer081_checked,
    row048_layer082_checked,
    row048_layer083_checked,
    row048_layer084_checked,
    row048_layer085_checked,
    row048_layer086_checked,
    row048_layer087_checked,
    row048_layer088_checked,
    row048_layer089_checked,
    row048_layer090_checked,
    row048_layer091_checked,
    row048_layer092_checked,
    row048_layer093_checked,
    row048_layer094_checked,
    row048_layer095_checked,
    row048_layer096_checked,
    row048_layer097_checked,
    row048_layer098_checked,
    row048_layer099_checked,
    row048_layer100_checked,
    row048_layer101_checked,
    row048_layer102_checked,
    row048_layer103_checked,
    row048_layer104_checked,
    row048_layer105_checked,
    row048_layer106_checked,
    row048_layer107_checked,
    row048_layer108_checked,
    row048_layer109_checked,
    row048_layer110_checked,
    row048_layer111_checked, Bool.true_and]

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row048_layers_checked

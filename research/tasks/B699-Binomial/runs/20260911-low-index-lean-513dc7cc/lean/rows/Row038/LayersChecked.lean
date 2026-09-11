import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row038.Layers000
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row038.Layers004
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row038.Layers008
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row038.Layers012
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row038.Layers016
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row038.Layers020
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row038.Layers024
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row038.Layers028
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row038.Layers032
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row038.Layers036
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row038.Layers040
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row038.Layers044
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row038.Layers048
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row038.Layers052
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row038.Layers056
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row038.Layers060
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row038.Layers064
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row038.Layers068
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row038.Layers072
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row038.Layers076
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row038.Layers080
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row038.Layers084
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row038.Layers088
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row038.Layers092
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row038.Layers096
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row038.Layers100
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row038.Layers104
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row038.Layers108
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row038.Layers112
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row038.Layers116
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row038.Layers120
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row038.Layers124
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row038.Layers128
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row038.Layers132
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row038.Layers136
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row038.Layers140
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row038.Layers144
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row038.Layers148
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row038.Layers152
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row038.Layers156
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row038.Layers160
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row038.Layers164
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row038.Layers168

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row038_layers_checked :
    row038.layers.all (coverLayerCheck row038.height row038.goods) = true := by
  change row038_layers.all (coverLayerCheck row038.height row038.goods) = true
  simp only [row038_layers, List.all_cons, List.all_nil,
    row038_layer000_checked,
    row038_layer001_checked,
    row038_layer002_checked,
    row038_layer003_checked,
    row038_layer004_checked,
    row038_layer005_checked,
    row038_layer006_checked,
    row038_layer007_checked,
    row038_layer008_checked,
    row038_layer009_checked,
    row038_layer010_checked,
    row038_layer011_checked,
    row038_layer012_checked,
    row038_layer013_checked,
    row038_layer014_checked,
    row038_layer015_checked,
    row038_layer016_checked,
    row038_layer017_checked,
    row038_layer018_checked,
    row038_layer019_checked,
    row038_layer020_checked,
    row038_layer021_checked,
    row038_layer022_checked,
    row038_layer023_checked,
    row038_layer024_checked,
    row038_layer025_checked,
    row038_layer026_checked,
    row038_layer027_checked,
    row038_layer028_checked,
    row038_layer029_checked,
    row038_layer030_checked,
    row038_layer031_checked,
    row038_layer032_checked,
    row038_layer033_checked,
    row038_layer034_checked,
    row038_layer035_checked,
    row038_layer036_checked,
    row038_layer037_checked,
    row038_layer038_checked,
    row038_layer039_checked,
    row038_layer040_checked,
    row038_layer041_checked,
    row038_layer042_checked,
    row038_layer043_checked,
    row038_layer044_checked,
    row038_layer045_checked,
    row038_layer046_checked,
    row038_layer047_checked,
    row038_layer048_checked,
    row038_layer049_checked,
    row038_layer050_checked,
    row038_layer051_checked,
    row038_layer052_checked,
    row038_layer053_checked,
    row038_layer054_checked,
    row038_layer055_checked,
    row038_layer056_checked,
    row038_layer057_checked,
    row038_layer058_checked,
    row038_layer059_checked,
    row038_layer060_checked,
    row038_layer061_checked,
    row038_layer062_checked,
    row038_layer063_checked,
    row038_layer064_checked,
    row038_layer065_checked,
    row038_layer066_checked,
    row038_layer067_checked,
    row038_layer068_checked,
    row038_layer069_checked,
    row038_layer070_checked,
    row038_layer071_checked,
    row038_layer072_checked,
    row038_layer073_checked,
    row038_layer074_checked,
    row038_layer075_checked,
    row038_layer076_checked,
    row038_layer077_checked,
    row038_layer078_checked,
    row038_layer079_checked,
    row038_layer080_checked,
    row038_layer081_checked,
    row038_layer082_checked,
    row038_layer083_checked,
    row038_layer084_checked,
    row038_layer085_checked,
    row038_layer086_checked,
    row038_layer087_checked,
    row038_layer088_checked,
    row038_layer089_checked,
    row038_layer090_checked,
    row038_layer091_checked,
    row038_layer092_checked,
    row038_layer093_checked,
    row038_layer094_checked,
    row038_layer095_checked,
    row038_layer096_checked,
    row038_layer097_checked,
    row038_layer098_checked,
    row038_layer099_checked,
    row038_layer100_checked,
    row038_layer101_checked,
    row038_layer102_checked,
    row038_layer103_checked,
    row038_layer104_checked,
    row038_layer105_checked,
    row038_layer106_checked,
    row038_layer107_checked,
    row038_layer108_checked,
    row038_layer109_checked,
    row038_layer110_checked,
    row038_layer111_checked,
    row038_layer112_checked,
    row038_layer113_checked,
    row038_layer114_checked,
    row038_layer115_checked,
    row038_layer116_checked,
    row038_layer117_checked,
    row038_layer118_checked,
    row038_layer119_checked,
    row038_layer120_checked,
    row038_layer121_checked,
    row038_layer122_checked,
    row038_layer123_checked,
    row038_layer124_checked,
    row038_layer125_checked,
    row038_layer126_checked,
    row038_layer127_checked,
    row038_layer128_checked,
    row038_layer129_checked,
    row038_layer130_checked,
    row038_layer131_checked,
    row038_layer132_checked,
    row038_layer133_checked,
    row038_layer134_checked,
    row038_layer135_checked,
    row038_layer136_checked,
    row038_layer137_checked,
    row038_layer138_checked,
    row038_layer139_checked,
    row038_layer140_checked,
    row038_layer141_checked,
    row038_layer142_checked,
    row038_layer143_checked,
    row038_layer144_checked,
    row038_layer145_checked,
    row038_layer146_checked,
    row038_layer147_checked,
    row038_layer148_checked,
    row038_layer149_checked,
    row038_layer150_checked,
    row038_layer151_checked,
    row038_layer152_checked,
    row038_layer153_checked,
    row038_layer154_checked,
    row038_layer155_checked,
    row038_layer156_checked,
    row038_layer157_checked,
    row038_layer158_checked,
    row038_layer159_checked,
    row038_layer160_checked,
    row038_layer161_checked,
    row038_layer162_checked,
    row038_layer163_checked,
    row038_layer164_checked,
    row038_layer165_checked,
    row038_layer166_checked,
    row038_layer167_checked,
    row038_layer168_checked, Bool.true_and]

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row038_layers_checked

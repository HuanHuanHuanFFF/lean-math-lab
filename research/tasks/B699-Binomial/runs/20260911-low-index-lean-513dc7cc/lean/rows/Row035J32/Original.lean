import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row035J32.Block030
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row035J32.Block000
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row035J32.Block002
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row035J32.Block003
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row035J32.Block005
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row035J32.Block006
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row035J32.Block008
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row035J32.Block009
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row035J32.Block010
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row035J32.Block011
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row035J32.Block012
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row035J32.Block013
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row035J32.Block014
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row035J32.Block015
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row035J32.Block016
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row035J32.Block017
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row035J32.Block018
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row035J32.Block019
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row035J32.Block020
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row035J32.Block021
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row035J32.Block022
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row035J32.Block023
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row035J32.Block024
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row035J32.Block025
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row035J32.Block026
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row035J32.Block027
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row035J32.Block028
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row035J32.Block029

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row035_layer148_checked :
    coverLayerCheck row035.height row035.goods { lower := 424606188580023064614840075911224803073867120640, upper := 849212377160046129229680151822449606147734241280, M := 2 } = true := by
  exact coverLayerCheck_of_parts row035_layer148_arithmetic row035_layer148_enumeration row035_bounds_eq row035_layer148_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer148_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row035_layer149_intervals : List ColouredInterval :=
  [(2, 1461501637330902918203684832716283019655932542976, 1461501637330902918203684832716283019655932543010), (2, 1461501637330902918203684832716283019655932542976, 1461501637330902918203684832716283019655932543010), (3, 1030755041464022662072922259531242545404215044002, 1030755041464022662072922259531242545404215044036), (3, 1546132562196033993109383389296863818106322566003, 1546132562196033993109383389296863818106322566037), (11, 1603590641072267147143863069330760466347683067922, 1603590641072267147143863069330760466347683067956), (13, 1587062919683431173416072336356048647855731538794, 1587062919683431173416072336356048647855731538828), (17, 971645701575323882519635342913622589939807491953, 971645701575323882519635342913622589939807491987), (23, 915175228362971074684977074009051555593439264014, 915175228362971074684977074009051555593439264048), (31, 1058288796104840629433859867801677514874773534722, 1058288796104840629433859867801677514874773534756)]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer149_intervals

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row035_layer149_arithmetic : LayerArithmeticValid row035.height { lower := 849212377160046129229680151822449606147734241280, upper := 1698424754320092258459360303644899212295468482560, M := 2 } := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer149_arithmetic

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row035_layer149_enumeration :
    activePowerIntervalList 35 2 849212377160046129229680151822449606147734241280 1698424754320092258459360303644899212295468482560 = row035_layer149_intervals := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer149_enumeration

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row035_layer149_pairs : pairCoverCheck row035_layer149_intervals row035_bounds = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer149_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row035_layer149_checked :
    coverLayerCheck row035.height row035.goods { lower := 849212377160046129229680151822449606147734241280, upper := 1698424754320092258459360303644899212295468482560, M := 2 } = true := by
  exact coverLayerCheck_of_parts row035_layer149_arithmetic row035_layer149_enumeration row035_bounds_eq row035_layer149_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer149_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row035_layer150_intervals : List ColouredInterval :=
  [(2, 2923003274661805836407369665432566039311865085952, 2923003274661805836407369665432566039311865085986), (2, 2923003274661805836407369665432566039311865085952, 2923003274661805836407369665432566039311865085986), (3, 3092265124392067986218766778593727636212645132006, 3092265124392067986218766778593727636212645132040), (17, 1943291403150647765039270685827245179879614983906, 1943291403150647765039270685827245179879614983940), (29, 1816075630094014572464024421543167816955354437789, 1816075630094014572464024421543167816955354437823)]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer150_intervals

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row035_layer150_arithmetic : LayerArithmeticValid row035.height { lower := 1698424754320092258459360303644899212295468482560, upper := 3396849508640184516918720607289798424590936965120, M := 2 } := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer150_arithmetic

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row035_layer150_enumeration :
    activePowerIntervalList 35 2 1698424754320092258459360303644899212295468482560 3396849508640184516918720607289798424590936965120 = row035_layer150_intervals := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer150_enumeration

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row035_layer150_pairs : pairCoverCheck row035_layer150_intervals row035_bounds = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer150_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row035_layer150_checked :
    coverLayerCheck row035.height row035.goods { lower := 1698424754320092258459360303644899212295468482560, upper := 3396849508640184516918720607289798424590936965120, M := 2 } = true := by
  exact coverLayerCheck_of_parts row035_layer150_arithmetic row035_layer150_enumeration row035_bounds_eq row035_layer150_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer150_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row035_layer151_intervals : List ColouredInterval :=
  [(2, 5846006549323611672814739330865132078623730171904, 5846006549323611672814739330865132078623730171938), (2, 5846006549323611672814739330865132078623730171904, 5846006549323611672814739330865132078623730171938), (3, 4638397686588101979328150167890591454318967698009, 4638397686588101979328150167890591454318967698043), (19, 3914144333903073791808962606796280957916632792441, 3914144333903073791808962606796280957916632792475), (29, 3632151260188029144928048843086335633910708875578, 3632151260188029144928048843086335633910708875612)]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer151_intervals

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row035_layer151_arithmetic : LayerArithmeticValid row035.height { lower := 3396849508640184516918720607289798424590936965120, upper := 6793699017280369033837441214579596849181873930240, M := 2 } := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer151_arithmetic

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row035_layer151_enumeration :
    activePowerIntervalList 35 2 3396849508640184516918720607289798424590936965120 6793699017280369033837441214579596849181873930240 = row035_layer151_intervals := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer151_enumeration

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row035_layer151_pairs : pairCoverCheck row035_layer151_intervals row035_bounds = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer151_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row035_layer151_checked :
    coverLayerCheck row035.height row035.goods { lower := 3396849508640184516918720607289798424590936965120, upper := 6793699017280369033837441214579596849181873930240, M := 2 } = true := by
  exact coverLayerCheck_of_parts row035_layer151_arithmetic row035_layer151_enumeration row035_bounds_eq row035_layer151_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer151_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer148_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer149_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer150_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer151_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row035_layer152_intervals : List ColouredInterval :=
  [(3, 9276795373176203958656300335781182908637935396018, 9276795373176203958656300335781182908637935396052), (11, 8819748525897469309291246881319182564912256873571, 8819748525897469309291246881319182564912256873605), (19, 7828288667806147583617925213592561915833265584882, 7828288667806147583617925213592561915833265584916)]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer152_intervals

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row035_layer152_arithmetic : LayerArithmeticValid row035.height { lower := 6793699017280369033837441214579596849181873930240, upper := 10000000000000000000000000000000000000000000000000, M := 2 } := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer152_arithmetic

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row035_layer152_enumeration :
    activePowerIntervalList 35 2 6793699017280369033837441214579596849181873930240 10000000000000000000000000000000000000000000000000 = row035_layer152_intervals := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer152_enumeration

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row035_layer152_pairs : pairCoverCheck row035_layer152_intervals row035_bounds = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer152_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row035_layer152_checked :
    coverLayerCheck row035.height row035.goods { lower := 6793699017280369033837441214579596849181873930240, upper := 10000000000000000000000000000000000000000000000000, M := 2 } = true := by
  exact coverLayerCheck_of_parts row035_layer152_arithmetic row035_layer152_enumeration row035_bounds_eq row035_layer152_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer152_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer152_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row035_layers_checked :
    row035.layers.all (coverLayerCheck row035.height row035.goods) = true := by
  change row035_layers.all (coverLayerCheck row035.height row035.goods) = true
  simp only [row035_layers, List.all_cons, List.all_nil,
    row035_layer000_checked,
    row035_layer001_checked,
    row035_layer002_checked,
    row035_layer003_checked,
    row035_layer004_checked,
    row035_layer005_checked,
    row035_layer006_checked,
    row035_layer007_checked,
    row035_layer008_checked,
    row035_layer009_checked,
    row035_layer010_checked,
    row035_layer011_checked,
    row035_layer012_checked,
    row035_layer013_checked,
    row035_layer014_checked,
    row035_layer015_checked,
    row035_layer016_checked,
    row035_layer017_checked,
    row035_layer018_checked,
    row035_layer019_checked,
    row035_layer020_checked,
    row035_layer021_checked,
    row035_layer022_checked,
    row035_layer023_checked,
    row035_layer024_checked,
    row035_layer025_checked,
    row035_layer026_checked,
    row035_layer027_checked,
    row035_layer028_checked,
    row035_layer029_checked,
    row035_layer030_checked,
    row035_layer031_checked,
    row035_layer032_checked,
    row035_layer033_checked,
    row035_layer034_checked,
    row035_layer035_checked,
    row035_layer036_checked,
    row035_layer037_checked,
    row035_layer038_checked,
    row035_layer039_checked,
    row035_layer040_checked,
    row035_layer041_checked,
    row035_layer042_checked,
    row035_layer043_checked,
    row035_layer044_checked,
    row035_layer045_checked,
    row035_layer046_checked,
    row035_layer047_checked,
    row035_layer048_checked,
    row035_layer049_checked,
    row035_layer050_checked,
    row035_layer051_checked,
    row035_layer052_checked,
    row035_layer053_checked,
    row035_layer054_checked,
    row035_layer055_checked,
    row035_layer056_checked,
    row035_layer057_checked,
    row035_layer058_checked,
    row035_layer059_checked,
    row035_layer060_checked,
    row035_layer061_checked,
    row035_layer062_checked,
    row035_layer063_checked,
    row035_layer064_checked,
    row035_layer065_checked,
    row035_layer066_checked,
    row035_layer067_checked,
    row035_layer068_checked,
    row035_layer069_checked,
    row035_layer070_checked,
    row035_layer071_checked,
    row035_layer072_checked,
    row035_layer073_checked,
    row035_layer074_checked,
    row035_layer075_checked,
    row035_layer076_checked,
    row035_layer077_checked,
    row035_layer078_checked,
    row035_layer079_checked,
    row035_layer080_checked,
    row035_layer081_checked,
    row035_layer082_checked,
    row035_layer083_checked,
    row035_layer084_checked,
    row035_layer085_checked,
    row035_layer086_checked,
    row035_layer087_checked,
    row035_layer088_checked,
    row035_layer089_checked,
    row035_layer090_checked,
    row035_layer091_checked,
    row035_layer092_checked,
    row035_layer093_checked,
    row035_layer094_checked,
    row035_layer095_checked,
    row035_layer096_checked,
    row035_layer097_checked,
    row035_layer098_checked,
    row035_layer099_checked,
    row035_layer100_checked,
    row035_layer101_checked,
    row035_layer102_checked,
    row035_layer103_checked,
    row035_layer104_checked,
    row035_layer105_checked,
    row035_layer106_checked,
    row035_layer107_checked,
    row035_layer108_checked,
    row035_layer109_checked,
    row035_layer110_checked,
    row035_layer111_checked,
    row035_layer112_checked,
    row035_layer113_checked,
    row035_layer114_checked,
    row035_layer115_checked,
    row035_layer116_checked,
    row035_layer117_checked,
    row035_layer118_checked,
    row035_layer119_checked,
    row035_layer120_checked,
    row035_layer121_checked,
    row035_layer122_checked,
    row035_layer123_checked,
    row035_layer124_checked,
    row035_layer125_checked,
    row035_layer126_checked,
    row035_layer127_checked,
    row035_layer128_checked,
    row035_layer129_checked,
    row035_layer130_checked,
    row035_layer131_checked,
    row035_layer132_checked,
    row035_layer133_checked,
    row035_layer134_checked,
    row035_layer135_checked,
    row035_layer136_checked,
    row035_layer137_checked,
    row035_layer138_checked,
    row035_layer139_checked,
    row035_layer140_checked,
    row035_layer141_checked,
    row035_layer142_checked,
    row035_layer143_checked,
    row035_layer144_checked,
    row035_layer145_checked,
    row035_layer146_checked,
    row035_layer147_checked,
    row035_layer148_checked,
    row035_layer149_checked,
    row035_layer150_checked,
    row035_layer151_checked,
    row035_layer152_checked, Bool.true_and]

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layers_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row035_checked : finiteCoverRowCheck row035 = true := by
  simp only [finiteCoverRowCheck, row035_registered, row035_goods_checked,
    row035_small_checked, row035_layerCover_checked, row035_layers_checked, Bool.true_and]

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem common_i035 :
    ∀ n j : ℕ, 1 ≤ 35 ∧ 35 < j ∧ j ≤ n / 2 →
      ∃ p : ℕ, p.Prime ∧ 35 ≤ p ∧ p ∣ Nat.choose n 35 ∧ p ∣ Nat.choose n j := by
  intro n j h
  obtain ⟨p, hp, hpi, hgcd⟩ :=
    common_of_finite_cover_row_checked row035_checked h.2.1 h.2.2
  exact ⟨p, hp, hpi, dvd_trans hgcd (Nat.gcd_dvd_left _ _),
    dvd_trans hgcd (Nat.gcd_dvd_right _ _)⟩

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.common_i035

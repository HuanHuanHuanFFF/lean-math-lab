import research.tasks.«B699-Binomial».runs.«20260909-low-index-structure-b41a5a63».lean.FiniteCover

set_option maxRecDepth 65536
set_option maxHeartbeats 0
set_option exponentiation.threshold 1000000

namespace B699LowIndex

def row057_height : HeightCertificateDatum := { i := 57, r := 18, s := 39, n0Power10 := 12 }

def row057_goods : List GoodSegment := [
  { lower := 116, upper := 169, witness := RowWitness.topPrime 113 },
  { lower := 170, upper := 223, witness := RowWitness.topPrime 167 },
  { lower := 224, upper := 279, witness := RowWitness.topPrime 223 },
  { lower := 280, upper := 333, witness := RowWitness.topPrime 277 },
  { lower := 334, upper := 387, witness := RowWitness.topPrime 331 },
  { lower := 388, upper := 439, witness := RowWitness.topPrime 383 },
  { lower := 440, upper := 495, witness := RowWitness.topPrime 439 },
  { lower := 496, upper := 547, witness := RowWitness.topPrime 491 },
  { lower := 548, upper := 603, witness := RowWitness.topPrime 547 },
  { lower := 604, upper := 657, witness := RowWitness.topPrime 601 },
  { lower := 658, upper := 709, witness := RowWitness.topPrime 653 },
  { lower := 710, upper := 765, witness := RowWitness.topPrime 709 },
  { lower := 766, upper := 817, witness := RowWitness.topPrime 761 },
  { lower := 818, upper := 867, witness := RowWitness.topPrime 811 },
  { lower := 868, upper := 919, witness := RowWitness.topPrime 863 },
  { lower := 920, upper := 975, witness := RowWitness.topPrime 919 },
  { lower := 976, upper := 1027, witness := RowWitness.topPrime 971 },
  { lower := 1028, upper := 1077, witness := RowWitness.topPrime 1021 },
  { lower := 1078, upper := 1125, witness := RowWitness.topPrime 1069 },
  { lower := 1126, upper := 1179, witness := RowWitness.topPrime 1123 },
  { lower := 1180, upper := 1227, witness := RowWitness.topPrime 1171 },
  { lower := 1228, upper := 1279, witness := RowWitness.topPrime 1223 },
  { lower := 1280, upper := 1335, witness := RowWitness.topPrime 1279 },
  { lower := 1336, upper := 1383, witness := RowWitness.topPrime 1327 },
  { lower := 1384, upper := 1437, witness := RowWitness.topPrime 1381 },
  { lower := 1438, upper := 1489, witness := RowWitness.topPrime 1433 },
  { lower := 1490, upper := 1545, witness := RowWitness.topPrime 1489 },
  { lower := 1546, upper := 1599, witness := RowWitness.topPrime 1543 },
  { lower := 1600, upper := 1653, witness := RowWitness.topPrime 1597 },
  { lower := 1654, upper := 1693, witness := RowWitness.topPrime 1637 },
  { lower := 1694, upper := 1749, witness := RowWitness.topPrime 1693 },
  { lower := 1750, upper := 1803, witness := RowWitness.topPrime 1747 },
  { lower := 1804, upper := 1857, witness := RowWitness.topPrime 1801 },
  { lower := 1858, upper := 1903, witness := RowWitness.topPrime 1847 },
  { lower := 1904, upper := 1957, witness := RowWitness.topPrime 1901 },
  { lower := 1958, upper := 2007, witness := RowWitness.topPrime 1951 },
  { lower := 2008, upper := 2059, witness := RowWitness.topPrime 2003 },
  { lower := 2060, upper := 2109, witness := RowWitness.topPrime 2053 },
  { lower := 2110, upper := 2155, witness := RowWitness.topPrime 2099 },
  { lower := 2156, upper := 2209, witness := RowWitness.topPrime 2153 },
  { lower := 2210, upper := 2263, witness := RowWitness.topPrime 2207 },
  { lower := 2264, upper := 2307, witness := RowWitness.topPrime 2251 },
  { lower := 2308, upper := 2353, witness := RowWitness.topPrime 2297 },
  { lower := 2354, upper := 2407, witness := RowWitness.topPrime 2351 },
  { lower := 2408, upper := 2455, witness := RowWitness.topPrime 2399 },
  { lower := 2456, upper := 2503, witness := RowWitness.topPrime 2447 },
  { lower := 2504, upper := 2559, witness := RowWitness.topPrime 2503 },
  { lower := 2560, upper := 2613, witness := RowWitness.topPrime 2557 },
  { lower := 2614, upper := 2665, witness := RowWitness.topPrime 2609 },
  { lower := 2666, upper := 2719, witness := RowWitness.topPrime 2663 },
  { lower := 2720, upper := 2775, witness := RowWitness.topPrime 2719 },
  { lower := 2776, upper := 2823, witness := RowWitness.topPrime 2767 },
  { lower := 2824, upper := 2875, witness := RowWitness.topPrime 2819 },
  { lower := 2876, upper := 2917, witness := RowWitness.topPrime 2861 },
  { lower := 2918, upper := 2973, witness := RowWitness.topPrime 2917 },
  { lower := 2974, upper := 3027, witness := RowWitness.topPrime 2971 },
  { lower := 3028, upper := 3079, witness := RowWitness.topPrime 3023 },
  { lower := 3080, upper := 3135, witness := RowWitness.topPrime 3079 },
  { lower := 3136, upper := 3177, witness := RowWitness.topPrime 3121 },
  { lower := 3178, upper := 3225, witness := RowWitness.topPrime 3169 },
  { lower := 3226, upper := 3277, witness := RowWitness.topPrime 3221 },
  { lower := 3278, upper := 3306, witness := RowWitness.topPrime 3271 },
  { lower := 3362, upper := 3417, witness := RowWitness.topPrime 3361 },
  { lower := 3418, upper := 3444, witness := RowWitness.topPrime 3413 },
  { lower := 3456, upper := 3505, witness := RowWitness.topPrime 3449 },
  { lower := 3506, upper := 3555, witness := RowWitness.topPrime 3499 },
  { lower := 3556, upper := 3565, witness := RowWitness.topPrime 3547 },
  { lower := 3584, upper := 3605, witness := RowWitness.topPrime 3583 },
  { lower := 3625, upper := 3640, witness := RowWitness.topPrime 3623 },
  { lower := 3645, upper := 3681, witness := RowWitness.topPrime 3643 },
  { lower := 3698, upper := 3701, witness := RowWitness.topPrime 3697 },
  { lower := 3703, upper := 3757, witness := RowWitness.topPrime 3701 },
  { lower := 3758, upper := 3795, witness := RowWitness.topPrime 3739 },
  { lower := 3796, upper := 3813, witness := RowWitness.topPrime 3793 },
  { lower := 3844, upper := 3889, witness := RowWitness.topPrime 3833 },
  { lower := 3890, upper := 3900, witness := RowWitness.topPrime 3889 },
  { lower := 4046, upper := 4049, witness := RowWitness.topPrime 4027 },
  { lower := 4056, upper := 4107, witness := RowWitness.topPrime 4051 },
  { lower := 4108, upper := 4155, witness := RowWitness.topPrime 4099 },
  { lower := 4156, upper := 4163, witness := RowWitness.topPrime 4153 },
  { lower := 4225, upper := 4275, witness := RowWitness.topPrime 4219 },
  { lower := 4276, upper := 4281, witness := RowWitness.topPrime 4273 },
  { lower := 4352, upper := 4405, witness := RowWitness.topPrime 4349 },
  { lower := 4406, upper := 4450, witness := RowWitness.topPrime 4397 },
  { lower := 4459, upper := 4474, witness := RowWitness.topPrime 4457 },
  { lower := 4608, upper := 4619, witness := RowWitness.topPrime 4603 },
  { lower := 4624, upper := 4664, witness := RowWitness.topPrime 4621 },
  { lower := 4761, upper := 4788, witness := RowWitness.topPrime 4759 },
  { lower := 4802, upper := 4857, witness := RowWitness.topPrime 4801 },
  { lower := 4858, upper := 4858, witness := RowWitness.topPrime 4831 },
  { lower := 4901, upper := 4945, witness := RowWitness.topPrime 4889 },
  { lower := 4946, upper := 4957, witness := RowWitness.topPrime 4943 },
  { lower := 5043, upper := 5095, witness := RowWitness.topPrime 5039 },
  { lower := 5096, upper := 5099, witness := RowWitness.topPrime 5087 },
  { lower := 5120, upper := 5175, witness := RowWitness.topPrime 5119 },
  { lower := 5176, upper := 5176, witness := RowWitness.topPrime 5171 },
  { lower := 5324, upper := 5346, witness := RowWitness.topPrime 5323 },
  { lower := 5376, upper := 5380, witness := RowWitness.topPrime 5351 },
  { lower := 5488, upper := 5539, witness := RowWitness.topPrime 5483 },
  { lower := 5540, upper := 5544, witness := RowWitness.topPrime 5531 },
  { lower := 5547, upper := 5547, witness := RowWitness.topPrime 5531 },
  { lower := 5625, upper := 5679, witness := RowWitness.topPrime 5623 },
  { lower := 5680, upper := 5681, witness := RowWitness.topPrime 5669 },
  { lower := 5780, upper := 5835, witness := RowWitness.topPrime 5779 },
  { lower := 5836, upper := 5883, witness := RowWitness.topPrime 5827 },
  { lower := 5884, upper := 5937, witness := RowWitness.topPrime 5881 },
  { lower := 5938, upper := 5943, witness := RowWitness.topPrime 5927 },
  { lower := 6174, upper := 6200, witness := RowWitness.topPrime 6173 },
  { lower := 6358, upper := 6409, witness := RowWitness.topPrime 6353 },
  { lower := 6410, upper := 6414, witness := RowWitness.topPrime 6397 },
  { lower := 6561, upper := 6573, witness := RowWitness.topPrime 6553 },
  { lower := 6591, upper := 6617, witness := RowWitness.topPrime 6581 },
  { lower := 6627, upper := 6675, witness := RowWitness.topPrime 6619 },
  { lower := 6676, upper := 6711, witness := RowWitness.topPrime 6673 },
  { lower := 6727, upper := 6775, witness := RowWitness.topPrime 6719 },
  { lower := 6776, upper := 6783, witness := RowWitness.topPrime 6763 },
  { lower := 6859, upper := 6913, witness := RowWitness.topPrime 6857 },
  { lower := 6914, upper := 6931, witness := RowWitness.topPrime 6911 },
  { lower := 7203, upper := 7249, witness := RowWitness.topPrime 7193 },
  { lower := 7250, upper := 7259, witness := RowWitness.topPrime 7247 },
  { lower := 7406, upper := 7449, witness := RowWitness.topPrime 7393 },
  { lower := 7450, upper := 7452, witness := RowWitness.topPrime 7433 },
  { lower := 7546, upper := 7556, witness := RowWitness.topPrime 7541 },
  { lower := 7569, upper := 7602, witness := RowWitness.topPrime 7561 },
  { lower := 7688, upper := 7736, witness := RowWitness.topPrime 7687 },
  { lower := 7935, upper := 7945, witness := RowWitness.topPrime 7933 },
  { lower := 7986, upper := 7991, witness := RowWitness.topPrime 7963 },
  { lower := 8214, upper := 8265, witness := RowWitness.topPrime 8209 },
  { lower := 8266, upper := 8270, witness := RowWitness.topPrime 8263 },
  { lower := 8410, upper := 8445, witness := RowWitness.topPrime 8389 },
  { lower := 8446, upper := 8483, witness := RowWitness.topPrime 8443 },
  { lower := 8704, upper := 8705, witness := RowWitness.topPrime 8699 },
  { lower := 8748, upper := 8803, witness := RowWitness.topPrime 8747 },
  { lower := 8804, upper := 8806, witness := RowWitness.topPrime 8803 },
  { lower := 8836, upper := 8844, witness := RowWitness.topPrime 8831 },
  { lower := 9245, upper := 9297, witness := RowWitness.topPrime 9241 },
  { lower := 9298, upper := 9301, witness := RowWitness.topPrime 9293 },
  { lower := 9604, upper := 9657, witness := RowWitness.topPrime 9601 },
  { lower := 9658, upper := 9660, witness := RowWitness.topPrime 9649 },
  { lower := 10051, upper := 10056, witness := RowWitness.topPrime 10039 },
  { lower := 10086, upper := 10135, witness := RowWitness.topPrime 10079 },
  { lower := 10136, upper := 10142, witness := RowWitness.topPrime 10133 },
  { lower := 10580, upper := 10623, witness := RowWitness.topPrime 10567 },
  { lower := 10624, upper := 10636, witness := RowWitness.topPrime 10613 },
  { lower := 10648, upper := 10681, witness := RowWitness.topPrime 10639 },
  { lower := 10935, upper := 10965, witness := RowWitness.topPrime 10909 },
  { lower := 10966, upper := 11008, witness := RowWitness.topPrime 10957 },
  { lower := 11094, upper := 11101, witness := RowWitness.topPrime 11093 },
  { lower := 11109, upper := 11149, witness := RowWitness.topPrime 11093 },
  { lower := 11150, upper := 11150, witness := RowWitness.topPrime 11149 },
  { lower := 11250, upper := 11299, witness := RowWitness.topPrime 11243 },
  { lower := 11300, upper := 11306, witness := RowWitness.topPrime 11299 },
  { lower := 11774, upper := 11799, witness := RowWitness.topPrime 11743 },
  { lower := 11800, upper := 11830, witness := RowWitness.topPrime 11789 },
  { lower := 12005, upper := 12035, witness := RowWitness.topPrime 11987 },
  { lower := 12321, upper := 12344, witness := RowWitness.topPrime 12301 },
  { lower := 12500, upper := 12549, witness := RowWitness.topPrime 12497 },
  { lower := 13125, upper := 13177, witness := RowWitness.topPrime 13121 },
  { lower := 13178, upper := 13178, witness := RowWitness.topPrime 13177 },
  { lower := 13310, upper := 13310, witness := RowWitness.topPrime 13309 },
  { lower := 13312, upper := 13365, witness := RowWitness.topPrime 13309 },
  { lower := 13366, upper := 13366, witness := RowWitness.topPrime 13339 },
  { lower := 13454, upper := 13507, witness := RowWitness.topPrime 13451 },
  { lower := 13508, upper := 13510, witness := RowWitness.topPrime 13499 },
  { lower := 14336, upper := 14353, witness := RowWitness.topPrime 14327 },
  { lower := 14375, upper := 14392, witness := RowWitness.topPrime 14369 },
  { lower := 14406, upper := 14457, witness := RowWitness.topPrime 14401 },
  { lower := 14458, upper := 14462, witness := RowWitness.topPrime 14449 },
  { lower := 14792, upper := 14795, witness := RowWitness.topPrime 14783 },
  { lower := 15138, upper := 15185, witness := RowWitness.topPrime 15137 },
  { lower := 15360, upper := 15365, witness := RowWitness.topPrime 15359 },
  { lower := 15376, upper := 15429, witness := RowWitness.topPrime 15373 },
  { lower := 15430, upper := 15432, witness := RowWitness.topPrime 15427 },
  { lower := 15979, upper := 16028, witness := RowWitness.topPrime 15973 },
  { lower := 16384, upper := 16393, witness := RowWitness.topPrime 16381 },
  { lower := 16428, upper := 16440, witness := RowWitness.topPrime 16427 },
  { lower := 16810, upper := 16843, witness := RowWitness.topPrime 16787 },
  { lower := 16844, upper := 16876, witness := RowWitness.topPrime 16843 },
  { lower := 17303, upper := 17354, witness := RowWitness.topPrime 17299 },
  { lower := 17672, upper := 17717, witness := RowWitness.topPrime 17669 },
  { lower := 18491, upper := 18537, witness := RowWitness.topPrime 18481 },
  { lower := 18538, upper := 18547, witness := RowWitness.topPrime 18523 },
  { lower := 19208, upper := 19263, witness := RowWitness.topPrime 19207 },
  { lower := 19264, upper := 19264, witness := RowWitness.topPrime 19259 },
  { lower := 19663, upper := 19717, witness := RowWitness.topPrime 19661 },
  { lower := 19718, upper := 19719, witness := RowWitness.topPrime 19717 },
  { lower := 20181, upper := 20228, witness := RowWitness.topPrime 20177 },
  { lower := 20535, upper := 20536, witness := RowWitness.topPrime 20533 },
  { lower := 21875, upper := 21927, witness := RowWitness.topPrime 21871 },
  { lower := 21928, upper := 21931, witness := RowWitness.topPrime 21911 },
  { lower := 22103, upper := 22146, witness := RowWitness.topPrime 22093 },
  { lower := 22528, upper := 22528, witness := RowWitness.topPrime 22511 },
  { lower := 23552, upper := 23590, witness := RowWitness.topPrime 23549 },
  { lower := 24010, upper := 24014, witness := RowWitness.topPrime 24007 },
  { lower := 24037, upper := 24066, witness := RowWitness.topPrime 24029 },
  { lower := 24334, upper := 24355, witness := RowWitness.topPrime 24329 },
  { lower := 24389, upper := 24390, witness := RowWitness.topPrime 24379 },
  { lower := 24576, upper := 24621, witness := RowWitness.topPrime 24571 },
  { lower := 25289, upper := 25317, witness := RowWitness.topPrime 25261 },
  { lower := 25318, upper := 25337, witness := RowWitness.topPrime 25309 },
  { lower := 26411, upper := 26420, witness := RowWitness.topPrime 26407 },
  { lower := 26624, upper := 26653, witness := RowWitness.topPrime 26597 },
  { lower := 26654, upper := 26676, witness := RowWitness.topPrime 26647 },
  { lower := 28125, upper := 28146, witness := RowWitness.topPrime 28123 },
  { lower := 28577, upper := 28617, witness := RowWitness.topPrime 28573 },
  { lower := 28717, upper := 28728, witness := RowWitness.topPrime 28711 },
  { lower := 30758, upper := 30776, witness := RowWitness.topPrime 30757 },
  { lower := 30926, upper := 30955, witness := RowWitness.topPrime 30911 },
  { lower := 31250, upper := 31269, witness := RowWitness.topPrime 31249 },
  { lower := 32805, upper := 32824, witness := RowWitness.topPrime 32803 },
  { lower := 33620, upper := 33670, witness := RowWitness.topPrime 33619 },
  { lower := 34391, upper := 34431, witness := RowWitness.topPrime 34381 },
  { lower := 35152, upper := 35187, witness := RowWitness.topPrime 35149 },
  { lower := 36517, upper := 36553, witness := RowWitness.topPrime 36497 },
  { lower := 36554, upper := 36557, witness := RowWitness.topPrime 36551 },
  { lower := 37553, upper := 37556, witness := RowWitness.topPrime 37549 },
  { lower := 39326, upper := 39360, witness := RowWitness.topPrime 39323 },
  { lower := 39366, upper := 39382, witness := RowWitness.topPrime 39359 },
  { lower := 43940, upper := 43979, witness := RowWitness.topPrime 43933 },
  { lower := 44217, upper := 44236, witness := RowWitness.topPrime 44207 },
  { lower := 49152, upper := 49186, witness := RowWitness.topPrime 49139 },
  { lower := 73205, upper := 73223, witness := RowWitness.topPrime 73189 },
  { lower := 73728, upper := 73751, witness := RowWitness.topPrime 73727 },
  { lower := 327701, upper := 327736, witness := RowWitness.topPrime 327689 }
]

def row057_layers : List CoverLayer := [
  { lower := 3192, upper := 6384, M := 29 },
  { lower := 6384, upper := 12768, M := 25 },
  { lower := 12768, upper := 25536, M := 23 },
  { lower := 25536, upper := 51072, M := 20 },
  { lower := 51072, upper := 102144, M := 18 },
  { lower := 102144, upper := 204288, M := 16 },
  { lower := 204288, upper := 408576, M := 14 },
  { lower := 408576, upper := 817152, M := 12 },
  { lower := 817152, upper := 1634304, M := 11 },
  { lower := 1634304, upper := 3268608, M := 10 },
  { lower := 3268608, upper := 6537216, M := 9 },
  { lower := 6537216, upper := 13074432, M := 8 },
  { lower := 13074432, upper := 26148864, M := 7 },
  { lower := 26148864, upper := 52297728, M := 6 },
  { lower := 52297728, upper := 104595456, M := 6 },
  { lower := 104595456, upper := 209190912, M := 5 },
  { lower := 209190912, upper := 418381824, M := 4 },
  { lower := 418381824, upper := 836763648, M := 4 },
  { lower := 836763648, upper := 1673527296, M := 4 },
  { lower := 1673527296, upper := 3347054592, M := 3 },
  { lower := 3347054592, upper := 6694109184, M := 3 },
  { lower := 6694109184, upper := 13388218368, M := 3 },
  { lower := 13388218368, upper := 26776436736, M := 2 },
  { lower := 26776436736, upper := 53552873472, M := 2 },
  { lower := 53552873472, upper := 107105746944, M := 2 },
  { lower := 107105746944, upper := 214211493888, M := 2 },
  { lower := 214211493888, upper := 428422987776, M := 2 },
  { lower := 428422987776, upper := 856845975552, M := 2 },
  { lower := 856845975552, upper := 1000000000000, M := 1 }
]

def row057 : FiniteCoverRow := {
  height := row057_height,
  goods := row057_goods,
  layers := row057_layers
}

theorem row057_registered :
    decide (row057.height ∈ heightCertificateData) = true := by
  decide +kernel

theorem row057_goods_checked :
    row057.goods.all (goodSegmentCheck row057.height.i row057.height.r row057.height.s) = true := by
  decide +kernel

theorem row057_small_checked :
    coverCheck (2 * row057.height.i + 2) (row057.height.i * (row057.height.i - 1) - 1)
      (row057.goods.map goodSegmentBounds) = true := by
  decide +kernel

theorem row057_layerCover_checked :
    coverCheck (row057.height.i * (row057.height.i - 1)) (row057.height.n0 - 1)
      (row057.layers.map CoverLayer.bounds) = true := by
  decide +kernel

theorem row057_layer000_checked :
    coverLayerCheck row057.height row057.goods { lower := 3192, upper := 6384, M := 29 } = true := by
  decide +kernel

theorem row057_layer001_checked :
    coverLayerCheck row057.height row057.goods { lower := 6384, upper := 12768, M := 25 } = true := by
  decide +kernel

theorem row057_layer002_checked :
    coverLayerCheck row057.height row057.goods { lower := 12768, upper := 25536, M := 23 } = true := by
  decide +kernel

theorem row057_layer003_checked :
    coverLayerCheck row057.height row057.goods { lower := 25536, upper := 51072, M := 20 } = true := by
  decide +kernel

theorem row057_layer004_checked :
    coverLayerCheck row057.height row057.goods { lower := 51072, upper := 102144, M := 18 } = true := by
  decide +kernel

theorem row057_layer005_checked :
    coverLayerCheck row057.height row057.goods { lower := 102144, upper := 204288, M := 16 } = true := by
  decide +kernel

theorem row057_layer006_checked :
    coverLayerCheck row057.height row057.goods { lower := 204288, upper := 408576, M := 14 } = true := by
  decide +kernel

theorem row057_layer007_checked :
    coverLayerCheck row057.height row057.goods { lower := 408576, upper := 817152, M := 12 } = true := by
  decide +kernel

theorem row057_layer008_checked :
    coverLayerCheck row057.height row057.goods { lower := 817152, upper := 1634304, M := 11 } = true := by
  decide +kernel

theorem row057_layer009_checked :
    coverLayerCheck row057.height row057.goods { lower := 1634304, upper := 3268608, M := 10 } = true := by
  decide +kernel

theorem row057_layer010_checked :
    coverLayerCheck row057.height row057.goods { lower := 3268608, upper := 6537216, M := 9 } = true := by
  decide +kernel

theorem row057_layer011_checked :
    coverLayerCheck row057.height row057.goods { lower := 6537216, upper := 13074432, M := 8 } = true := by
  decide +kernel

theorem row057_layer012_checked :
    coverLayerCheck row057.height row057.goods { lower := 13074432, upper := 26148864, M := 7 } = true := by
  decide +kernel

theorem row057_layer013_checked :
    coverLayerCheck row057.height row057.goods { lower := 26148864, upper := 52297728, M := 6 } = true := by
  decide +kernel

theorem row057_layer014_checked :
    coverLayerCheck row057.height row057.goods { lower := 52297728, upper := 104595456, M := 6 } = true := by
  decide +kernel

theorem row057_layer015_checked :
    coverLayerCheck row057.height row057.goods { lower := 104595456, upper := 209190912, M := 5 } = true := by
  decide +kernel

theorem row057_layer016_checked :
    coverLayerCheck row057.height row057.goods { lower := 209190912, upper := 418381824, M := 4 } = true := by
  decide +kernel

theorem row057_layer017_checked :
    coverLayerCheck row057.height row057.goods { lower := 418381824, upper := 836763648, M := 4 } = true := by
  decide +kernel

theorem row057_layer018_checked :
    coverLayerCheck row057.height row057.goods { lower := 836763648, upper := 1673527296, M := 4 } = true := by
  decide +kernel

theorem row057_layer019_checked :
    coverLayerCheck row057.height row057.goods { lower := 1673527296, upper := 3347054592, M := 3 } = true := by
  decide +kernel

theorem row057_layer020_checked :
    coverLayerCheck row057.height row057.goods { lower := 3347054592, upper := 6694109184, M := 3 } = true := by
  decide +kernel

theorem row057_layer021_checked :
    coverLayerCheck row057.height row057.goods { lower := 6694109184, upper := 13388218368, M := 3 } = true := by
  decide +kernel

theorem row057_layer022_checked :
    coverLayerCheck row057.height row057.goods { lower := 13388218368, upper := 26776436736, M := 2 } = true := by
  decide +kernel

theorem row057_layer023_checked :
    coverLayerCheck row057.height row057.goods { lower := 26776436736, upper := 53552873472, M := 2 } = true := by
  decide +kernel

theorem row057_layer024_checked :
    coverLayerCheck row057.height row057.goods { lower := 53552873472, upper := 107105746944, M := 2 } = true := by
  decide +kernel

theorem row057_layer025_checked :
    coverLayerCheck row057.height row057.goods { lower := 107105746944, upper := 214211493888, M := 2 } = true := by
  decide +kernel

theorem row057_layer026_checked :
    coverLayerCheck row057.height row057.goods { lower := 214211493888, upper := 428422987776, M := 2 } = true := by
  decide +kernel

theorem row057_layer027_checked :
    coverLayerCheck row057.height row057.goods { lower := 428422987776, upper := 856845975552, M := 2 } = true := by
  decide +kernel

theorem row057_layer028_checked :
    coverLayerCheck row057.height row057.goods { lower := 856845975552, upper := 1000000000000, M := 1 } = true := by
  decide +kernel

theorem row057_layers_checked :
    row057.layers.all (coverLayerCheck row057.height row057.goods) = true := by
  change List.all [
    { lower := 3192, upper := 6384, M := 29 },
    { lower := 6384, upper := 12768, M := 25 },
    { lower := 12768, upper := 25536, M := 23 },
    { lower := 25536, upper := 51072, M := 20 },
    { lower := 51072, upper := 102144, M := 18 },
    { lower := 102144, upper := 204288, M := 16 },
    { lower := 204288, upper := 408576, M := 14 },
    { lower := 408576, upper := 817152, M := 12 },
    { lower := 817152, upper := 1634304, M := 11 },
    { lower := 1634304, upper := 3268608, M := 10 },
    { lower := 3268608, upper := 6537216, M := 9 },
    { lower := 6537216, upper := 13074432, M := 8 },
    { lower := 13074432, upper := 26148864, M := 7 },
    { lower := 26148864, upper := 52297728, M := 6 },
    { lower := 52297728, upper := 104595456, M := 6 },
    { lower := 104595456, upper := 209190912, M := 5 },
    { lower := 209190912, upper := 418381824, M := 4 },
    { lower := 418381824, upper := 836763648, M := 4 },
    { lower := 836763648, upper := 1673527296, M := 4 },
    { lower := 1673527296, upper := 3347054592, M := 3 },
    { lower := 3347054592, upper := 6694109184, M := 3 },
    { lower := 6694109184, upper := 13388218368, M := 3 },
    { lower := 13388218368, upper := 26776436736, M := 2 },
    { lower := 26776436736, upper := 53552873472, M := 2 },
    { lower := 53552873472, upper := 107105746944, M := 2 },
    { lower := 107105746944, upper := 214211493888, M := 2 },
    { lower := 214211493888, upper := 428422987776, M := 2 },
    { lower := 428422987776, upper := 856845975552, M := 2 },
    { lower := 856845975552, upper := 1000000000000, M := 1 }
  ] (coverLayerCheck row057.height row057.goods) = true
  simp only [List.all_cons, List.all_nil,
    row057_layer000_checked,
    row057_layer001_checked,
    row057_layer002_checked,
    row057_layer003_checked,
    row057_layer004_checked,
    row057_layer005_checked,
    row057_layer006_checked,
    row057_layer007_checked,
    row057_layer008_checked,
    row057_layer009_checked,
    row057_layer010_checked,
    row057_layer011_checked,
    row057_layer012_checked,
    row057_layer013_checked,
    row057_layer014_checked,
    row057_layer015_checked,
    row057_layer016_checked,
    row057_layer017_checked,
    row057_layer018_checked,
    row057_layer019_checked,
    row057_layer020_checked,
    row057_layer021_checked,
    row057_layer022_checked,
    row057_layer023_checked,
    row057_layer024_checked,
    row057_layer025_checked,
    row057_layer026_checked,
    row057_layer027_checked,
    row057_layer028_checked,
    Bool.true_and]

theorem row057_checked : finiteCoverRowCheck row057 = true := by
  simp only [finiteCoverRowCheck, row057_registered, row057_goods_checked,
    row057_small_checked, row057_layerCover_checked, row057_layers_checked,
    Bool.true_and]

#print axioms B699LowIndex.row057_checked

end B699LowIndex

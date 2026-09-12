import research.tasks.«B699-Binomial».runs.«20260909-low-index-structure-b41a5a63».lean.FiniteCover
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.WitnessBridge
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.LayerParts
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.PairChunks

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

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


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row057

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row057_good000_checked :
    goodSegmentCheck 57 18 39
      { lower := 116, upper := 169, witness := RowWitness.topPrime 113 } = true := by
  exact good_top_prime_checked (i := 57) (r := 18) (s := 39) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row057_good001_checked :
    goodSegmentCheck 57 18 39
      { lower := 170, upper := 223, witness := RowWitness.topPrime 167 } = true := by
  exact good_top_prime_checked (i := 57) (r := 18) (s := 39) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row057_good002_checked :
    goodSegmentCheck 57 18 39
      { lower := 224, upper := 279, witness := RowWitness.topPrime 223 } = true := by
  exact good_top_prime_checked (i := 57) (r := 18) (s := 39) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row057_good003_checked :
    goodSegmentCheck 57 18 39
      { lower := 280, upper := 333, witness := RowWitness.topPrime 277 } = true := by
  exact good_top_prime_checked (i := 57) (r := 18) (s := 39) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row057_good004_checked :
    goodSegmentCheck 57 18 39
      { lower := 334, upper := 387, witness := RowWitness.topPrime 331 } = true := by
  exact good_top_prime_checked (i := 57) (r := 18) (s := 39) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row057_good005_checked :
    goodSegmentCheck 57 18 39
      { lower := 388, upper := 439, witness := RowWitness.topPrime 383 } = true := by
  exact good_top_prime_checked (i := 57) (r := 18) (s := 39) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row057_good006_checked :
    goodSegmentCheck 57 18 39
      { lower := 440, upper := 495, witness := RowWitness.topPrime 439 } = true := by
  exact good_top_prime_checked (i := 57) (r := 18) (s := 39) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row057_good007_checked :
    goodSegmentCheck 57 18 39
      { lower := 496, upper := 547, witness := RowWitness.topPrime 491 } = true := by
  exact good_top_prime_checked (i := 57) (r := 18) (s := 39) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row057_good008_checked :
    goodSegmentCheck 57 18 39
      { lower := 548, upper := 603, witness := RowWitness.topPrime 547 } = true := by
  exact good_top_prime_checked (i := 57) (r := 18) (s := 39) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row057_good009_checked :
    goodSegmentCheck 57 18 39
      { lower := 604, upper := 657, witness := RowWitness.topPrime 601 } = true := by
  exact good_top_prime_checked (i := 57) (r := 18) (s := 39) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row057_good010_checked :
    goodSegmentCheck 57 18 39
      { lower := 658, upper := 709, witness := RowWitness.topPrime 653 } = true := by
  exact good_top_prime_checked (i := 57) (r := 18) (s := 39) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row057_good011_checked :
    goodSegmentCheck 57 18 39
      { lower := 710, upper := 765, witness := RowWitness.topPrime 709 } = true := by
  exact good_top_prime_checked (i := 57) (r := 18) (s := 39) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row057_good012_checked :
    goodSegmentCheck 57 18 39
      { lower := 766, upper := 817, witness := RowWitness.topPrime 761 } = true := by
  exact good_top_prime_checked (i := 57) (r := 18) (s := 39) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row057_good013_checked :
    goodSegmentCheck 57 18 39
      { lower := 818, upper := 867, witness := RowWitness.topPrime 811 } = true := by
  exact good_top_prime_checked (i := 57) (r := 18) (s := 39) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row057_good014_checked :
    goodSegmentCheck 57 18 39
      { lower := 868, upper := 919, witness := RowWitness.topPrime 863 } = true := by
  exact good_top_prime_checked (i := 57) (r := 18) (s := 39) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row057_good015_checked :
    goodSegmentCheck 57 18 39
      { lower := 920, upper := 975, witness := RowWitness.topPrime 919 } = true := by
  exact good_top_prime_checked (i := 57) (r := 18) (s := 39) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row057_good000_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row057_good001_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row057_good002_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row057_good003_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row057_good004_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row057_good005_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row057_good006_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row057_good007_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row057_good008_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row057_good009_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row057_good010_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row057_good011_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row057_good012_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row057_good013_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row057_good014_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row057_good015_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row057_good016_checked :
    goodSegmentCheck 57 18 39
      { lower := 976, upper := 1027, witness := RowWitness.topPrime 971 } = true := by
  exact good_top_prime_checked (i := 57) (r := 18) (s := 39) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row057_good017_checked :
    goodSegmentCheck 57 18 39
      { lower := 1028, upper := 1077, witness := RowWitness.topPrime 1021 } = true := by
  exact good_top_prime_checked (i := 57) (r := 18) (s := 39) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row057_good018_checked :
    goodSegmentCheck 57 18 39
      { lower := 1078, upper := 1125, witness := RowWitness.topPrime 1069 } = true := by
  exact good_top_prime_checked (i := 57) (r := 18) (s := 39) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row057_good019_checked :
    goodSegmentCheck 57 18 39
      { lower := 1126, upper := 1179, witness := RowWitness.topPrime 1123 } = true := by
  exact good_top_prime_checked (i := 57) (r := 18) (s := 39) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row057_good020_checked :
    goodSegmentCheck 57 18 39
      { lower := 1180, upper := 1227, witness := RowWitness.topPrime 1171 } = true := by
  exact good_top_prime_checked (i := 57) (r := 18) (s := 39) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row057_good021_checked :
    goodSegmentCheck 57 18 39
      { lower := 1228, upper := 1279, witness := RowWitness.topPrime 1223 } = true := by
  exact good_top_prime_checked (i := 57) (r := 18) (s := 39) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row057_good022_checked :
    goodSegmentCheck 57 18 39
      { lower := 1280, upper := 1335, witness := RowWitness.topPrime 1279 } = true := by
  exact good_top_prime_checked (i := 57) (r := 18) (s := 39) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row057_good023_checked :
    goodSegmentCheck 57 18 39
      { lower := 1336, upper := 1383, witness := RowWitness.topPrime 1327 } = true := by
  exact good_top_prime_checked (i := 57) (r := 18) (s := 39) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row057_good024_checked :
    goodSegmentCheck 57 18 39
      { lower := 1384, upper := 1437, witness := RowWitness.topPrime 1381 } = true := by
  exact good_top_prime_checked (i := 57) (r := 18) (s := 39) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row057_good025_checked :
    goodSegmentCheck 57 18 39
      { lower := 1438, upper := 1489, witness := RowWitness.topPrime 1433 } = true := by
  exact good_top_prime_checked (i := 57) (r := 18) (s := 39) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row057_good026_checked :
    goodSegmentCheck 57 18 39
      { lower := 1490, upper := 1545, witness := RowWitness.topPrime 1489 } = true := by
  exact good_top_prime_checked (i := 57) (r := 18) (s := 39) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row057_good027_checked :
    goodSegmentCheck 57 18 39
      { lower := 1546, upper := 1599, witness := RowWitness.topPrime 1543 } = true := by
  exact good_top_prime_checked (i := 57) (r := 18) (s := 39) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row057_good028_checked :
    goodSegmentCheck 57 18 39
      { lower := 1600, upper := 1653, witness := RowWitness.topPrime 1597 } = true := by
  exact good_top_prime_checked (i := 57) (r := 18) (s := 39) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row057_good029_checked :
    goodSegmentCheck 57 18 39
      { lower := 1654, upper := 1693, witness := RowWitness.topPrime 1637 } = true := by
  exact good_top_prime_checked (i := 57) (r := 18) (s := 39) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row057_good030_checked :
    goodSegmentCheck 57 18 39
      { lower := 1694, upper := 1749, witness := RowWitness.topPrime 1693 } = true := by
  exact good_top_prime_checked (i := 57) (r := 18) (s := 39) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row057_good031_checked :
    goodSegmentCheck 57 18 39
      { lower := 1750, upper := 1803, witness := RowWitness.topPrime 1747 } = true := by
  exact good_top_prime_checked (i := 57) (r := 18) (s := 39) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row057_good016_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row057_good017_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row057_good018_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row057_good019_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row057_good020_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row057_good021_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row057_good022_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row057_good023_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row057_good024_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row057_good025_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row057_good026_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row057_good027_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row057_good028_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row057_good029_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row057_good030_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row057_good031_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row057_good032_checked :
    goodSegmentCheck 57 18 39
      { lower := 1804, upper := 1857, witness := RowWitness.topPrime 1801 } = true := by
  exact good_top_prime_checked (i := 57) (r := 18) (s := 39) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row057_good033_checked :
    goodSegmentCheck 57 18 39
      { lower := 1858, upper := 1903, witness := RowWitness.topPrime 1847 } = true := by
  exact good_top_prime_checked (i := 57) (r := 18) (s := 39) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row057_good034_checked :
    goodSegmentCheck 57 18 39
      { lower := 1904, upper := 1957, witness := RowWitness.topPrime 1901 } = true := by
  exact good_top_prime_checked (i := 57) (r := 18) (s := 39) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row057_good035_checked :
    goodSegmentCheck 57 18 39
      { lower := 1958, upper := 2007, witness := RowWitness.topPrime 1951 } = true := by
  exact good_top_prime_checked (i := 57) (r := 18) (s := 39) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row057_good036_checked :
    goodSegmentCheck 57 18 39
      { lower := 2008, upper := 2059, witness := RowWitness.topPrime 2003 } = true := by
  exact good_top_prime_checked (i := 57) (r := 18) (s := 39) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row057_good037_checked :
    goodSegmentCheck 57 18 39
      { lower := 2060, upper := 2109, witness := RowWitness.topPrime 2053 } = true := by
  exact good_top_prime_checked (i := 57) (r := 18) (s := 39) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row057_good038_checked :
    goodSegmentCheck 57 18 39
      { lower := 2110, upper := 2155, witness := RowWitness.topPrime 2099 } = true := by
  exact good_top_prime_checked (i := 57) (r := 18) (s := 39) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row057_good039_checked :
    goodSegmentCheck 57 18 39
      { lower := 2156, upper := 2209, witness := RowWitness.topPrime 2153 } = true := by
  exact good_top_prime_checked (i := 57) (r := 18) (s := 39) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row057_good040_checked :
    goodSegmentCheck 57 18 39
      { lower := 2210, upper := 2263, witness := RowWitness.topPrime 2207 } = true := by
  exact good_top_prime_checked (i := 57) (r := 18) (s := 39) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row057_good041_checked :
    goodSegmentCheck 57 18 39
      { lower := 2264, upper := 2307, witness := RowWitness.topPrime 2251 } = true := by
  exact good_top_prime_checked (i := 57) (r := 18) (s := 39) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row057_good042_checked :
    goodSegmentCheck 57 18 39
      { lower := 2308, upper := 2353, witness := RowWitness.topPrime 2297 } = true := by
  exact good_top_prime_checked (i := 57) (r := 18) (s := 39) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row057_good043_checked :
    goodSegmentCheck 57 18 39
      { lower := 2354, upper := 2407, witness := RowWitness.topPrime 2351 } = true := by
  exact good_top_prime_checked (i := 57) (r := 18) (s := 39) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row057_good044_checked :
    goodSegmentCheck 57 18 39
      { lower := 2408, upper := 2455, witness := RowWitness.topPrime 2399 } = true := by
  exact good_top_prime_checked (i := 57) (r := 18) (s := 39) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row057_good045_checked :
    goodSegmentCheck 57 18 39
      { lower := 2456, upper := 2503, witness := RowWitness.topPrime 2447 } = true := by
  exact good_top_prime_checked (i := 57) (r := 18) (s := 39) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row057_good046_checked :
    goodSegmentCheck 57 18 39
      { lower := 2504, upper := 2559, witness := RowWitness.topPrime 2503 } = true := by
  exact good_top_prime_checked (i := 57) (r := 18) (s := 39) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row057_good047_checked :
    goodSegmentCheck 57 18 39
      { lower := 2560, upper := 2613, witness := RowWitness.topPrime 2557 } = true := by
  exact good_top_prime_checked (i := 57) (r := 18) (s := 39) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row057_good032_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row057_good033_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row057_good034_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row057_good035_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row057_good036_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row057_good037_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row057_good038_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row057_good039_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row057_good040_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row057_good041_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row057_good042_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row057_good043_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row057_good044_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row057_good045_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row057_good046_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row057_good047_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row057_good048_checked :
    goodSegmentCheck 57 18 39
      { lower := 2614, upper := 2665, witness := RowWitness.topPrime 2609 } = true := by
  exact good_top_prime_checked (i := 57) (r := 18) (s := 39) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row057_good049_checked :
    goodSegmentCheck 57 18 39
      { lower := 2666, upper := 2719, witness := RowWitness.topPrime 2663 } = true := by
  exact good_top_prime_checked (i := 57) (r := 18) (s := 39) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row057_good050_checked :
    goodSegmentCheck 57 18 39
      { lower := 2720, upper := 2775, witness := RowWitness.topPrime 2719 } = true := by
  exact good_top_prime_checked (i := 57) (r := 18) (s := 39) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row057_good051_checked :
    goodSegmentCheck 57 18 39
      { lower := 2776, upper := 2823, witness := RowWitness.topPrime 2767 } = true := by
  exact good_top_prime_checked (i := 57) (r := 18) (s := 39) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row057_good052_checked :
    goodSegmentCheck 57 18 39
      { lower := 2824, upper := 2875, witness := RowWitness.topPrime 2819 } = true := by
  exact good_top_prime_checked (i := 57) (r := 18) (s := 39) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row057_good053_checked :
    goodSegmentCheck 57 18 39
      { lower := 2876, upper := 2917, witness := RowWitness.topPrime 2861 } = true := by
  exact good_top_prime_checked (i := 57) (r := 18) (s := 39) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row057_good054_checked :
    goodSegmentCheck 57 18 39
      { lower := 2918, upper := 2973, witness := RowWitness.topPrime 2917 } = true := by
  exact good_top_prime_checked (i := 57) (r := 18) (s := 39) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row057_good055_checked :
    goodSegmentCheck 57 18 39
      { lower := 2974, upper := 3027, witness := RowWitness.topPrime 2971 } = true := by
  exact good_top_prime_checked (i := 57) (r := 18) (s := 39) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row057_good056_checked :
    goodSegmentCheck 57 18 39
      { lower := 3028, upper := 3079, witness := RowWitness.topPrime 3023 } = true := by
  exact good_top_prime_checked (i := 57) (r := 18) (s := 39) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row057_good057_checked :
    goodSegmentCheck 57 18 39
      { lower := 3080, upper := 3135, witness := RowWitness.topPrime 3079 } = true := by
  exact good_top_prime_checked (i := 57) (r := 18) (s := 39) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row057_good058_checked :
    goodSegmentCheck 57 18 39
      { lower := 3136, upper := 3177, witness := RowWitness.topPrime 3121 } = true := by
  exact good_top_prime_checked (i := 57) (r := 18) (s := 39) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row057_good059_checked :
    goodSegmentCheck 57 18 39
      { lower := 3178, upper := 3225, witness := RowWitness.topPrime 3169 } = true := by
  exact good_top_prime_checked (i := 57) (r := 18) (s := 39) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row057_good060_checked :
    goodSegmentCheck 57 18 39
      { lower := 3226, upper := 3277, witness := RowWitness.topPrime 3221 } = true := by
  exact good_top_prime_checked (i := 57) (r := 18) (s := 39) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row057_good061_checked :
    goodSegmentCheck 57 18 39
      { lower := 3278, upper := 3306, witness := RowWitness.topPrime 3271 } = true := by
  exact good_top_prime_checked (i := 57) (r := 18) (s := 39) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row057_good062_checked :
    goodSegmentCheck 57 18 39
      { lower := 3362, upper := 3417, witness := RowWitness.topPrime 3361 } = true := by
  exact good_top_prime_checked (i := 57) (r := 18) (s := 39) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row057_good063_checked :
    goodSegmentCheck 57 18 39
      { lower := 3418, upper := 3444, witness := RowWitness.topPrime 3413 } = true := by
  exact good_top_prime_checked (i := 57) (r := 18) (s := 39) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row057_good048_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row057_good049_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row057_good050_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row057_good051_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row057_good052_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row057_good053_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row057_good054_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row057_good055_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row057_good056_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row057_good057_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row057_good058_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row057_good059_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row057_good060_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row057_good061_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row057_good062_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row057_good063_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row057_good064_checked :
    goodSegmentCheck 57 18 39
      { lower := 3456, upper := 3505, witness := RowWitness.topPrime 3449 } = true := by
  exact good_top_prime_checked (i := 57) (r := 18) (s := 39) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row057_good065_checked :
    goodSegmentCheck 57 18 39
      { lower := 3506, upper := 3555, witness := RowWitness.topPrime 3499 } = true := by
  exact good_top_prime_checked (i := 57) (r := 18) (s := 39) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row057_good066_checked :
    goodSegmentCheck 57 18 39
      { lower := 3556, upper := 3565, witness := RowWitness.topPrime 3547 } = true := by
  exact good_top_prime_checked (i := 57) (r := 18) (s := 39) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row057_good067_checked :
    goodSegmentCheck 57 18 39
      { lower := 3584, upper := 3605, witness := RowWitness.topPrime 3583 } = true := by
  exact good_top_prime_checked (i := 57) (r := 18) (s := 39) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row057_good068_checked :
    goodSegmentCheck 57 18 39
      { lower := 3625, upper := 3640, witness := RowWitness.topPrime 3623 } = true := by
  exact good_top_prime_checked (i := 57) (r := 18) (s := 39) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row057_good069_checked :
    goodSegmentCheck 57 18 39
      { lower := 3645, upper := 3681, witness := RowWitness.topPrime 3643 } = true := by
  exact good_top_prime_checked (i := 57) (r := 18) (s := 39) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row057_good070_checked :
    goodSegmentCheck 57 18 39
      { lower := 3698, upper := 3701, witness := RowWitness.topPrime 3697 } = true := by
  exact good_top_prime_checked (i := 57) (r := 18) (s := 39) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row057_good071_checked :
    goodSegmentCheck 57 18 39
      { lower := 3703, upper := 3757, witness := RowWitness.topPrime 3701 } = true := by
  exact good_top_prime_checked (i := 57) (r := 18) (s := 39) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row057_good072_checked :
    goodSegmentCheck 57 18 39
      { lower := 3758, upper := 3795, witness := RowWitness.topPrime 3739 } = true := by
  exact good_top_prime_checked (i := 57) (r := 18) (s := 39) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row057_good073_checked :
    goodSegmentCheck 57 18 39
      { lower := 3796, upper := 3813, witness := RowWitness.topPrime 3793 } = true := by
  exact good_top_prime_checked (i := 57) (r := 18) (s := 39) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row057_good074_checked :
    goodSegmentCheck 57 18 39
      { lower := 3844, upper := 3889, witness := RowWitness.topPrime 3833 } = true := by
  exact good_top_prime_checked (i := 57) (r := 18) (s := 39) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row057_good075_checked :
    goodSegmentCheck 57 18 39
      { lower := 3890, upper := 3900, witness := RowWitness.topPrime 3889 } = true := by
  exact good_top_prime_checked (i := 57) (r := 18) (s := 39) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row057_good076_checked :
    goodSegmentCheck 57 18 39
      { lower := 4046, upper := 4049, witness := RowWitness.topPrime 4027 } = true := by
  exact good_top_prime_checked (i := 57) (r := 18) (s := 39) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row057_good077_checked :
    goodSegmentCheck 57 18 39
      { lower := 4056, upper := 4107, witness := RowWitness.topPrime 4051 } = true := by
  exact good_top_prime_checked (i := 57) (r := 18) (s := 39) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row057_good078_checked :
    goodSegmentCheck 57 18 39
      { lower := 4108, upper := 4155, witness := RowWitness.topPrime 4099 } = true := by
  exact good_top_prime_checked (i := 57) (r := 18) (s := 39) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row057_good079_checked :
    goodSegmentCheck 57 18 39
      { lower := 4156, upper := 4163, witness := RowWitness.topPrime 4153 } = true := by
  exact good_top_prime_checked (i := 57) (r := 18) (s := 39) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row057_good064_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row057_good065_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row057_good066_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row057_good067_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row057_good068_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row057_good069_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row057_good070_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row057_good071_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row057_good072_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row057_good073_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row057_good074_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row057_good075_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row057_good076_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row057_good077_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row057_good078_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row057_good079_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row057_good080_checked :
    goodSegmentCheck 57 18 39
      { lower := 4225, upper := 4275, witness := RowWitness.topPrime 4219 } = true := by
  exact good_top_prime_checked (i := 57) (r := 18) (s := 39) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row057_good081_checked :
    goodSegmentCheck 57 18 39
      { lower := 4276, upper := 4281, witness := RowWitness.topPrime 4273 } = true := by
  exact good_top_prime_checked (i := 57) (r := 18) (s := 39) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row057_good082_checked :
    goodSegmentCheck 57 18 39
      { lower := 4352, upper := 4405, witness := RowWitness.topPrime 4349 } = true := by
  exact good_top_prime_checked (i := 57) (r := 18) (s := 39) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row057_good083_checked :
    goodSegmentCheck 57 18 39
      { lower := 4406, upper := 4450, witness := RowWitness.topPrime 4397 } = true := by
  exact good_top_prime_checked (i := 57) (r := 18) (s := 39) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row057_good084_checked :
    goodSegmentCheck 57 18 39
      { lower := 4459, upper := 4474, witness := RowWitness.topPrime 4457 } = true := by
  exact good_top_prime_checked (i := 57) (r := 18) (s := 39) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row057_good085_checked :
    goodSegmentCheck 57 18 39
      { lower := 4608, upper := 4619, witness := RowWitness.topPrime 4603 } = true := by
  exact good_top_prime_checked (i := 57) (r := 18) (s := 39) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row057_good086_checked :
    goodSegmentCheck 57 18 39
      { lower := 4624, upper := 4664, witness := RowWitness.topPrime 4621 } = true := by
  exact good_top_prime_checked (i := 57) (r := 18) (s := 39) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row057_good087_checked :
    goodSegmentCheck 57 18 39
      { lower := 4761, upper := 4788, witness := RowWitness.topPrime 4759 } = true := by
  exact good_top_prime_checked (i := 57) (r := 18) (s := 39) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row057_good088_checked :
    goodSegmentCheck 57 18 39
      { lower := 4802, upper := 4857, witness := RowWitness.topPrime 4801 } = true := by
  exact good_top_prime_checked (i := 57) (r := 18) (s := 39) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row057_good089_checked :
    goodSegmentCheck 57 18 39
      { lower := 4858, upper := 4858, witness := RowWitness.topPrime 4831 } = true := by
  exact good_top_prime_checked (i := 57) (r := 18) (s := 39) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row057_good090_checked :
    goodSegmentCheck 57 18 39
      { lower := 4901, upper := 4945, witness := RowWitness.topPrime 4889 } = true := by
  exact good_top_prime_checked (i := 57) (r := 18) (s := 39) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row057_good091_checked :
    goodSegmentCheck 57 18 39
      { lower := 4946, upper := 4957, witness := RowWitness.topPrime 4943 } = true := by
  exact good_top_prime_checked (i := 57) (r := 18) (s := 39) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row057_good092_checked :
    goodSegmentCheck 57 18 39
      { lower := 5043, upper := 5095, witness := RowWitness.topPrime 5039 } = true := by
  exact good_top_prime_checked (i := 57) (r := 18) (s := 39) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row057_good093_checked :
    goodSegmentCheck 57 18 39
      { lower := 5096, upper := 5099, witness := RowWitness.topPrime 5087 } = true := by
  exact good_top_prime_checked (i := 57) (r := 18) (s := 39) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row057_good094_checked :
    goodSegmentCheck 57 18 39
      { lower := 5120, upper := 5175, witness := RowWitness.topPrime 5119 } = true := by
  exact good_top_prime_checked (i := 57) (r := 18) (s := 39) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row057_good095_checked :
    goodSegmentCheck 57 18 39
      { lower := 5176, upper := 5176, witness := RowWitness.topPrime 5171 } = true := by
  exact good_top_prime_checked (i := 57) (r := 18) (s := 39) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row057_good080_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row057_good081_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row057_good082_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row057_good083_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row057_good084_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row057_good085_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row057_good086_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row057_good087_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row057_good088_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row057_good089_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row057_good090_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row057_good091_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row057_good092_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row057_good093_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row057_good094_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row057_good095_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row057_good096_checked :
    goodSegmentCheck 57 18 39
      { lower := 5324, upper := 5346, witness := RowWitness.topPrime 5323 } = true := by
  exact good_top_prime_checked (i := 57) (r := 18) (s := 39) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row057_good097_checked :
    goodSegmentCheck 57 18 39
      { lower := 5376, upper := 5380, witness := RowWitness.topPrime 5351 } = true := by
  exact good_top_prime_checked (i := 57) (r := 18) (s := 39) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row057_good098_checked :
    goodSegmentCheck 57 18 39
      { lower := 5488, upper := 5539, witness := RowWitness.topPrime 5483 } = true := by
  exact good_top_prime_checked (i := 57) (r := 18) (s := 39) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row057_good099_checked :
    goodSegmentCheck 57 18 39
      { lower := 5540, upper := 5544, witness := RowWitness.topPrime 5531 } = true := by
  exact good_top_prime_checked (i := 57) (r := 18) (s := 39) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row057_good100_checked :
    goodSegmentCheck 57 18 39
      { lower := 5547, upper := 5547, witness := RowWitness.topPrime 5531 } = true := by
  exact good_top_prime_checked (i := 57) (r := 18) (s := 39) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row057_good101_checked :
    goodSegmentCheck 57 18 39
      { lower := 5625, upper := 5679, witness := RowWitness.topPrime 5623 } = true := by
  exact good_top_prime_checked (i := 57) (r := 18) (s := 39) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row057_good102_checked :
    goodSegmentCheck 57 18 39
      { lower := 5680, upper := 5681, witness := RowWitness.topPrime 5669 } = true := by
  exact good_top_prime_checked (i := 57) (r := 18) (s := 39) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row057_good103_checked :
    goodSegmentCheck 57 18 39
      { lower := 5780, upper := 5835, witness := RowWitness.topPrime 5779 } = true := by
  exact good_top_prime_checked (i := 57) (r := 18) (s := 39) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row057_good104_checked :
    goodSegmentCheck 57 18 39
      { lower := 5836, upper := 5883, witness := RowWitness.topPrime 5827 } = true := by
  exact good_top_prime_checked (i := 57) (r := 18) (s := 39) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row057_good105_checked :
    goodSegmentCheck 57 18 39
      { lower := 5884, upper := 5937, witness := RowWitness.topPrime 5881 } = true := by
  exact good_top_prime_checked (i := 57) (r := 18) (s := 39) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row057_good106_checked :
    goodSegmentCheck 57 18 39
      { lower := 5938, upper := 5943, witness := RowWitness.topPrime 5927 } = true := by
  exact good_top_prime_checked (i := 57) (r := 18) (s := 39) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row057_good107_checked :
    goodSegmentCheck 57 18 39
      { lower := 6174, upper := 6200, witness := RowWitness.topPrime 6173 } = true := by
  exact good_top_prime_checked (i := 57) (r := 18) (s := 39) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row057_good108_checked :
    goodSegmentCheck 57 18 39
      { lower := 6358, upper := 6409, witness := RowWitness.topPrime 6353 } = true := by
  exact good_top_prime_checked (i := 57) (r := 18) (s := 39) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row057_good109_checked :
    goodSegmentCheck 57 18 39
      { lower := 6410, upper := 6414, witness := RowWitness.topPrime 6397 } = true := by
  exact good_top_prime_checked (i := 57) (r := 18) (s := 39) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row057_good110_checked :
    goodSegmentCheck 57 18 39
      { lower := 6561, upper := 6573, witness := RowWitness.topPrime 6553 } = true := by
  exact good_top_prime_checked (i := 57) (r := 18) (s := 39) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row057_good111_checked :
    goodSegmentCheck 57 18 39
      { lower := 6591, upper := 6617, witness := RowWitness.topPrime 6581 } = true := by
  exact good_top_prime_checked (i := 57) (r := 18) (s := 39) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row057_good096_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row057_good097_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row057_good098_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row057_good099_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row057_good100_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row057_good101_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row057_good102_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row057_good103_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row057_good104_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row057_good105_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row057_good106_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row057_good107_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row057_good108_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row057_good109_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row057_good110_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row057_good111_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row057_good112_checked :
    goodSegmentCheck 57 18 39
      { lower := 6627, upper := 6675, witness := RowWitness.topPrime 6619 } = true := by
  exact good_top_prime_checked (i := 57) (r := 18) (s := 39) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row057_good113_checked :
    goodSegmentCheck 57 18 39
      { lower := 6676, upper := 6711, witness := RowWitness.topPrime 6673 } = true := by
  exact good_top_prime_checked (i := 57) (r := 18) (s := 39) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row057_good114_checked :
    goodSegmentCheck 57 18 39
      { lower := 6727, upper := 6775, witness := RowWitness.topPrime 6719 } = true := by
  exact good_top_prime_checked (i := 57) (r := 18) (s := 39) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row057_good115_checked :
    goodSegmentCheck 57 18 39
      { lower := 6776, upper := 6783, witness := RowWitness.topPrime 6763 } = true := by
  exact good_top_prime_checked (i := 57) (r := 18) (s := 39) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row057_good116_checked :
    goodSegmentCheck 57 18 39
      { lower := 6859, upper := 6913, witness := RowWitness.topPrime 6857 } = true := by
  exact good_top_prime_checked (i := 57) (r := 18) (s := 39) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row057_good117_checked :
    goodSegmentCheck 57 18 39
      { lower := 6914, upper := 6931, witness := RowWitness.topPrime 6911 } = true := by
  exact good_top_prime_checked (i := 57) (r := 18) (s := 39) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row057_good118_checked :
    goodSegmentCheck 57 18 39
      { lower := 7203, upper := 7249, witness := RowWitness.topPrime 7193 } = true := by
  exact good_top_prime_checked (i := 57) (r := 18) (s := 39) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row057_good119_checked :
    goodSegmentCheck 57 18 39
      { lower := 7250, upper := 7259, witness := RowWitness.topPrime 7247 } = true := by
  exact good_top_prime_checked (i := 57) (r := 18) (s := 39) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row057_good120_checked :
    goodSegmentCheck 57 18 39
      { lower := 7406, upper := 7449, witness := RowWitness.topPrime 7393 } = true := by
  exact good_top_prime_checked (i := 57) (r := 18) (s := 39) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row057_good121_checked :
    goodSegmentCheck 57 18 39
      { lower := 7450, upper := 7452, witness := RowWitness.topPrime 7433 } = true := by
  exact good_top_prime_checked (i := 57) (r := 18) (s := 39) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row057_good122_checked :
    goodSegmentCheck 57 18 39
      { lower := 7546, upper := 7556, witness := RowWitness.topPrime 7541 } = true := by
  exact good_top_prime_checked (i := 57) (r := 18) (s := 39) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row057_good123_checked :
    goodSegmentCheck 57 18 39
      { lower := 7569, upper := 7602, witness := RowWitness.topPrime 7561 } = true := by
  exact good_top_prime_checked (i := 57) (r := 18) (s := 39) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row057_good124_checked :
    goodSegmentCheck 57 18 39
      { lower := 7688, upper := 7736, witness := RowWitness.topPrime 7687 } = true := by
  exact good_top_prime_checked (i := 57) (r := 18) (s := 39) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row057_good125_checked :
    goodSegmentCheck 57 18 39
      { lower := 7935, upper := 7945, witness := RowWitness.topPrime 7933 } = true := by
  exact good_top_prime_checked (i := 57) (r := 18) (s := 39) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row057_good126_checked :
    goodSegmentCheck 57 18 39
      { lower := 7986, upper := 7991, witness := RowWitness.topPrime 7963 } = true := by
  exact good_top_prime_checked (i := 57) (r := 18) (s := 39) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row057_good127_checked :
    goodSegmentCheck 57 18 39
      { lower := 8214, upper := 8265, witness := RowWitness.topPrime 8209 } = true := by
  exact good_top_prime_checked (i := 57) (r := 18) (s := 39) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row057_good112_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row057_good113_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row057_good114_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row057_good115_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row057_good116_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row057_good117_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row057_good118_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row057_good119_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row057_good120_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row057_good121_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row057_good122_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row057_good123_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row057_good124_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row057_good125_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row057_good126_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row057_good127_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row057_good128_checked :
    goodSegmentCheck 57 18 39
      { lower := 8266, upper := 8270, witness := RowWitness.topPrime 8263 } = true := by
  exact good_top_prime_checked (i := 57) (r := 18) (s := 39) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row057_good129_checked :
    goodSegmentCheck 57 18 39
      { lower := 8410, upper := 8445, witness := RowWitness.topPrime 8389 } = true := by
  exact good_top_prime_checked (i := 57) (r := 18) (s := 39) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row057_good130_checked :
    goodSegmentCheck 57 18 39
      { lower := 8446, upper := 8483, witness := RowWitness.topPrime 8443 } = true := by
  exact good_top_prime_checked (i := 57) (r := 18) (s := 39) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row057_good131_checked :
    goodSegmentCheck 57 18 39
      { lower := 8704, upper := 8705, witness := RowWitness.topPrime 8699 } = true := by
  exact good_top_prime_checked (i := 57) (r := 18) (s := 39) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row057_good132_checked :
    goodSegmentCheck 57 18 39
      { lower := 8748, upper := 8803, witness := RowWitness.topPrime 8747 } = true := by
  exact good_top_prime_checked (i := 57) (r := 18) (s := 39) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row057_good133_checked :
    goodSegmentCheck 57 18 39
      { lower := 8804, upper := 8806, witness := RowWitness.topPrime 8803 } = true := by
  exact good_top_prime_checked (i := 57) (r := 18) (s := 39) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row057_good134_checked :
    goodSegmentCheck 57 18 39
      { lower := 8836, upper := 8844, witness := RowWitness.topPrime 8831 } = true := by
  exact good_top_prime_checked (i := 57) (r := 18) (s := 39) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row057_good135_checked :
    goodSegmentCheck 57 18 39
      { lower := 9245, upper := 9297, witness := RowWitness.topPrime 9241 } = true := by
  exact good_top_prime_checked (i := 57) (r := 18) (s := 39) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row057_good136_checked :
    goodSegmentCheck 57 18 39
      { lower := 9298, upper := 9301, witness := RowWitness.topPrime 9293 } = true := by
  exact good_top_prime_checked (i := 57) (r := 18) (s := 39) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row057_good137_checked :
    goodSegmentCheck 57 18 39
      { lower := 9604, upper := 9657, witness := RowWitness.topPrime 9601 } = true := by
  exact good_top_prime_checked (i := 57) (r := 18) (s := 39) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row057_good138_checked :
    goodSegmentCheck 57 18 39
      { lower := 9658, upper := 9660, witness := RowWitness.topPrime 9649 } = true := by
  exact good_top_prime_checked (i := 57) (r := 18) (s := 39) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row057_good139_checked :
    goodSegmentCheck 57 18 39
      { lower := 10051, upper := 10056, witness := RowWitness.topPrime 10039 } = true := by
  exact good_top_prime_checked (i := 57) (r := 18) (s := 39) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row057_good140_checked :
    goodSegmentCheck 57 18 39
      { lower := 10086, upper := 10135, witness := RowWitness.topPrime 10079 } = true := by
  exact good_top_prime_checked (i := 57) (r := 18) (s := 39) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row057_good141_checked :
    goodSegmentCheck 57 18 39
      { lower := 10136, upper := 10142, witness := RowWitness.topPrime 10133 } = true := by
  exact good_top_prime_checked (i := 57) (r := 18) (s := 39) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row057_good142_checked :
    goodSegmentCheck 57 18 39
      { lower := 10580, upper := 10623, witness := RowWitness.topPrime 10567 } = true := by
  exact good_top_prime_checked (i := 57) (r := 18) (s := 39) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row057_good143_checked :
    goodSegmentCheck 57 18 39
      { lower := 10624, upper := 10636, witness := RowWitness.topPrime 10613 } = true := by
  exact good_top_prime_checked (i := 57) (r := 18) (s := 39) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row057_good128_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row057_good129_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row057_good130_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row057_good131_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row057_good132_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row057_good133_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row057_good134_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row057_good135_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row057_good136_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row057_good137_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row057_good138_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row057_good139_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row057_good140_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row057_good141_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row057_good142_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row057_good143_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row057_good144_checked :
    goodSegmentCheck 57 18 39
      { lower := 10648, upper := 10681, witness := RowWitness.topPrime 10639 } = true := by
  exact good_top_prime_checked (i := 57) (r := 18) (s := 39) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row057_good145_checked :
    goodSegmentCheck 57 18 39
      { lower := 10935, upper := 10965, witness := RowWitness.topPrime 10909 } = true := by
  exact good_top_prime_checked (i := 57) (r := 18) (s := 39) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row057_good146_checked :
    goodSegmentCheck 57 18 39
      { lower := 10966, upper := 11008, witness := RowWitness.topPrime 10957 } = true := by
  exact good_top_prime_checked (i := 57) (r := 18) (s := 39) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row057_good147_checked :
    goodSegmentCheck 57 18 39
      { lower := 11094, upper := 11101, witness := RowWitness.topPrime 11093 } = true := by
  exact good_top_prime_checked (i := 57) (r := 18) (s := 39) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row057_good148_checked :
    goodSegmentCheck 57 18 39
      { lower := 11109, upper := 11149, witness := RowWitness.topPrime 11093 } = true := by
  exact good_top_prime_checked (i := 57) (r := 18) (s := 39) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row057_good149_checked :
    goodSegmentCheck 57 18 39
      { lower := 11150, upper := 11150, witness := RowWitness.topPrime 11149 } = true := by
  exact good_top_prime_checked (i := 57) (r := 18) (s := 39) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row057_good150_checked :
    goodSegmentCheck 57 18 39
      { lower := 11250, upper := 11299, witness := RowWitness.topPrime 11243 } = true := by
  exact good_top_prime_checked (i := 57) (r := 18) (s := 39) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row057_good151_checked :
    goodSegmentCheck 57 18 39
      { lower := 11300, upper := 11306, witness := RowWitness.topPrime 11299 } = true := by
  exact good_top_prime_checked (i := 57) (r := 18) (s := 39) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row057_good152_checked :
    goodSegmentCheck 57 18 39
      { lower := 11774, upper := 11799, witness := RowWitness.topPrime 11743 } = true := by
  exact good_top_prime_checked (i := 57) (r := 18) (s := 39) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row057_good153_checked :
    goodSegmentCheck 57 18 39
      { lower := 11800, upper := 11830, witness := RowWitness.topPrime 11789 } = true := by
  exact good_top_prime_checked (i := 57) (r := 18) (s := 39) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row057_good154_checked :
    goodSegmentCheck 57 18 39
      { lower := 12005, upper := 12035, witness := RowWitness.topPrime 11987 } = true := by
  exact good_top_prime_checked (i := 57) (r := 18) (s := 39) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row057_good155_checked :
    goodSegmentCheck 57 18 39
      { lower := 12321, upper := 12344, witness := RowWitness.topPrime 12301 } = true := by
  exact good_top_prime_checked (i := 57) (r := 18) (s := 39) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row057_good156_checked :
    goodSegmentCheck 57 18 39
      { lower := 12500, upper := 12549, witness := RowWitness.topPrime 12497 } = true := by
  exact good_top_prime_checked (i := 57) (r := 18) (s := 39) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row057_good157_checked :
    goodSegmentCheck 57 18 39
      { lower := 13125, upper := 13177, witness := RowWitness.topPrime 13121 } = true := by
  exact good_top_prime_checked (i := 57) (r := 18) (s := 39) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row057_good158_checked :
    goodSegmentCheck 57 18 39
      { lower := 13178, upper := 13178, witness := RowWitness.topPrime 13177 } = true := by
  exact good_top_prime_checked (i := 57) (r := 18) (s := 39) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row057_good159_checked :
    goodSegmentCheck 57 18 39
      { lower := 13310, upper := 13310, witness := RowWitness.topPrime 13309 } = true := by
  exact good_top_prime_checked (i := 57) (r := 18) (s := 39) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row057_good144_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row057_good145_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row057_good146_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row057_good147_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row057_good148_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row057_good149_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row057_good150_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row057_good151_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row057_good152_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row057_good153_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row057_good154_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row057_good155_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row057_good156_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row057_good157_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row057_good158_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row057_good159_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row057_good160_checked :
    goodSegmentCheck 57 18 39
      { lower := 13312, upper := 13365, witness := RowWitness.topPrime 13309 } = true := by
  exact good_top_prime_checked (i := 57) (r := 18) (s := 39) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row057_good161_checked :
    goodSegmentCheck 57 18 39
      { lower := 13366, upper := 13366, witness := RowWitness.topPrime 13339 } = true := by
  exact good_top_prime_checked (i := 57) (r := 18) (s := 39) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row057_good162_checked :
    goodSegmentCheck 57 18 39
      { lower := 13454, upper := 13507, witness := RowWitness.topPrime 13451 } = true := by
  exact good_top_prime_checked (i := 57) (r := 18) (s := 39) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row057_good163_checked :
    goodSegmentCheck 57 18 39
      { lower := 13508, upper := 13510, witness := RowWitness.topPrime 13499 } = true := by
  exact good_top_prime_checked (i := 57) (r := 18) (s := 39) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row057_good164_checked :
    goodSegmentCheck 57 18 39
      { lower := 14336, upper := 14353, witness := RowWitness.topPrime 14327 } = true := by
  exact good_top_prime_checked (i := 57) (r := 18) (s := 39) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row057_good165_checked :
    goodSegmentCheck 57 18 39
      { lower := 14375, upper := 14392, witness := RowWitness.topPrime 14369 } = true := by
  exact good_top_prime_checked (i := 57) (r := 18) (s := 39) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row057_good166_checked :
    goodSegmentCheck 57 18 39
      { lower := 14406, upper := 14457, witness := RowWitness.topPrime 14401 } = true := by
  exact good_top_prime_checked (i := 57) (r := 18) (s := 39) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row057_good167_checked :
    goodSegmentCheck 57 18 39
      { lower := 14458, upper := 14462, witness := RowWitness.topPrime 14449 } = true := by
  exact good_top_prime_checked (i := 57) (r := 18) (s := 39) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row057_good168_checked :
    goodSegmentCheck 57 18 39
      { lower := 14792, upper := 14795, witness := RowWitness.topPrime 14783 } = true := by
  exact good_top_prime_checked (i := 57) (r := 18) (s := 39) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row057_good169_checked :
    goodSegmentCheck 57 18 39
      { lower := 15138, upper := 15185, witness := RowWitness.topPrime 15137 } = true := by
  exact good_top_prime_checked (i := 57) (r := 18) (s := 39) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row057_good170_checked :
    goodSegmentCheck 57 18 39
      { lower := 15360, upper := 15365, witness := RowWitness.topPrime 15359 } = true := by
  exact good_top_prime_checked (i := 57) (r := 18) (s := 39) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row057_good171_checked :
    goodSegmentCheck 57 18 39
      { lower := 15376, upper := 15429, witness := RowWitness.topPrime 15373 } = true := by
  exact good_top_prime_checked (i := 57) (r := 18) (s := 39) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row057_good172_checked :
    goodSegmentCheck 57 18 39
      { lower := 15430, upper := 15432, witness := RowWitness.topPrime 15427 } = true := by
  exact good_top_prime_checked (i := 57) (r := 18) (s := 39) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row057_good173_checked :
    goodSegmentCheck 57 18 39
      { lower := 15979, upper := 16028, witness := RowWitness.topPrime 15973 } = true := by
  exact good_top_prime_checked (i := 57) (r := 18) (s := 39) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row057_good174_checked :
    goodSegmentCheck 57 18 39
      { lower := 16384, upper := 16393, witness := RowWitness.topPrime 16381 } = true := by
  exact good_top_prime_checked (i := 57) (r := 18) (s := 39) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row057_good175_checked :
    goodSegmentCheck 57 18 39
      { lower := 16428, upper := 16440, witness := RowWitness.topPrime 16427 } = true := by
  exact good_top_prime_checked (i := 57) (r := 18) (s := 39) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row057_good160_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row057_good161_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row057_good162_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row057_good163_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row057_good164_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row057_good165_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row057_good166_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row057_good167_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row057_good168_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row057_good169_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row057_good170_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row057_good171_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row057_good172_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row057_good173_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row057_good174_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row057_good175_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row057_good176_checked :
    goodSegmentCheck 57 18 39
      { lower := 16810, upper := 16843, witness := RowWitness.topPrime 16787 } = true := by
  exact good_top_prime_checked (i := 57) (r := 18) (s := 39) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row057_good177_checked :
    goodSegmentCheck 57 18 39
      { lower := 16844, upper := 16876, witness := RowWitness.topPrime 16843 } = true := by
  exact good_top_prime_checked (i := 57) (r := 18) (s := 39) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row057_good178_checked :
    goodSegmentCheck 57 18 39
      { lower := 17303, upper := 17354, witness := RowWitness.topPrime 17299 } = true := by
  exact good_top_prime_checked (i := 57) (r := 18) (s := 39) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row057_good179_checked :
    goodSegmentCheck 57 18 39
      { lower := 17672, upper := 17717, witness := RowWitness.topPrime 17669 } = true := by
  exact good_top_prime_checked (i := 57) (r := 18) (s := 39) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row057_good180_checked :
    goodSegmentCheck 57 18 39
      { lower := 18491, upper := 18537, witness := RowWitness.topPrime 18481 } = true := by
  exact good_top_prime_checked (i := 57) (r := 18) (s := 39) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row057_good181_checked :
    goodSegmentCheck 57 18 39
      { lower := 18538, upper := 18547, witness := RowWitness.topPrime 18523 } = true := by
  exact good_top_prime_checked (i := 57) (r := 18) (s := 39) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row057_good182_checked :
    goodSegmentCheck 57 18 39
      { lower := 19208, upper := 19263, witness := RowWitness.topPrime 19207 } = true := by
  exact good_top_prime_checked (i := 57) (r := 18) (s := 39) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row057_good183_checked :
    goodSegmentCheck 57 18 39
      { lower := 19264, upper := 19264, witness := RowWitness.topPrime 19259 } = true := by
  exact good_top_prime_checked (i := 57) (r := 18) (s := 39) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row057_good184_checked :
    goodSegmentCheck 57 18 39
      { lower := 19663, upper := 19717, witness := RowWitness.topPrime 19661 } = true := by
  exact good_top_prime_checked (i := 57) (r := 18) (s := 39) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row057_good185_checked :
    goodSegmentCheck 57 18 39
      { lower := 19718, upper := 19719, witness := RowWitness.topPrime 19717 } = true := by
  exact good_top_prime_checked (i := 57) (r := 18) (s := 39) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row057_good186_checked :
    goodSegmentCheck 57 18 39
      { lower := 20181, upper := 20228, witness := RowWitness.topPrime 20177 } = true := by
  exact good_top_prime_checked (i := 57) (r := 18) (s := 39) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row057_good187_checked :
    goodSegmentCheck 57 18 39
      { lower := 20535, upper := 20536, witness := RowWitness.topPrime 20533 } = true := by
  exact good_top_prime_checked (i := 57) (r := 18) (s := 39) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row057_good188_checked :
    goodSegmentCheck 57 18 39
      { lower := 21875, upper := 21927, witness := RowWitness.topPrime 21871 } = true := by
  exact good_top_prime_checked (i := 57) (r := 18) (s := 39) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row057_good189_checked :
    goodSegmentCheck 57 18 39
      { lower := 21928, upper := 21931, witness := RowWitness.topPrime 21911 } = true := by
  exact good_top_prime_checked (i := 57) (r := 18) (s := 39) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row057_good190_checked :
    goodSegmentCheck 57 18 39
      { lower := 22103, upper := 22146, witness := RowWitness.topPrime 22093 } = true := by
  exact good_top_prime_checked (i := 57) (r := 18) (s := 39) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row057_good191_checked :
    goodSegmentCheck 57 18 39
      { lower := 22528, upper := 22528, witness := RowWitness.topPrime 22511 } = true := by
  exact good_top_prime_checked (i := 57) (r := 18) (s := 39) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row057_good176_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row057_good177_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row057_good178_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row057_good179_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row057_good180_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row057_good181_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row057_good182_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row057_good183_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row057_good184_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row057_good185_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row057_good186_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row057_good187_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row057_good188_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row057_good189_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row057_good190_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row057_good191_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row057_good192_checked :
    goodSegmentCheck 57 18 39
      { lower := 23552, upper := 23590, witness := RowWitness.topPrime 23549 } = true := by
  exact good_top_prime_checked (i := 57) (r := 18) (s := 39) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row057_good193_checked :
    goodSegmentCheck 57 18 39
      { lower := 24010, upper := 24014, witness := RowWitness.topPrime 24007 } = true := by
  exact good_top_prime_checked (i := 57) (r := 18) (s := 39) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row057_good194_checked :
    goodSegmentCheck 57 18 39
      { lower := 24037, upper := 24066, witness := RowWitness.topPrime 24029 } = true := by
  exact good_top_prime_checked (i := 57) (r := 18) (s := 39) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row057_good195_checked :
    goodSegmentCheck 57 18 39
      { lower := 24334, upper := 24355, witness := RowWitness.topPrime 24329 } = true := by
  exact good_top_prime_checked (i := 57) (r := 18) (s := 39) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row057_good196_checked :
    goodSegmentCheck 57 18 39
      { lower := 24389, upper := 24390, witness := RowWitness.topPrime 24379 } = true := by
  exact good_top_prime_checked (i := 57) (r := 18) (s := 39) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row057_good197_checked :
    goodSegmentCheck 57 18 39
      { lower := 24576, upper := 24621, witness := RowWitness.topPrime 24571 } = true := by
  exact good_top_prime_checked (i := 57) (r := 18) (s := 39) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row057_good198_checked :
    goodSegmentCheck 57 18 39
      { lower := 25289, upper := 25317, witness := RowWitness.topPrime 25261 } = true := by
  exact good_top_prime_checked (i := 57) (r := 18) (s := 39) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row057_good199_checked :
    goodSegmentCheck 57 18 39
      { lower := 25318, upper := 25337, witness := RowWitness.topPrime 25309 } = true := by
  exact good_top_prime_checked (i := 57) (r := 18) (s := 39) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row057_good200_checked :
    goodSegmentCheck 57 18 39
      { lower := 26411, upper := 26420, witness := RowWitness.topPrime 26407 } = true := by
  exact good_top_prime_checked (i := 57) (r := 18) (s := 39) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row057_good201_checked :
    goodSegmentCheck 57 18 39
      { lower := 26624, upper := 26653, witness := RowWitness.topPrime 26597 } = true := by
  exact good_top_prime_checked (i := 57) (r := 18) (s := 39) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row057_good202_checked :
    goodSegmentCheck 57 18 39
      { lower := 26654, upper := 26676, witness := RowWitness.topPrime 26647 } = true := by
  exact good_top_prime_checked (i := 57) (r := 18) (s := 39) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row057_good203_checked :
    goodSegmentCheck 57 18 39
      { lower := 28125, upper := 28146, witness := RowWitness.topPrime 28123 } = true := by
  exact good_top_prime_checked (i := 57) (r := 18) (s := 39) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row057_good204_checked :
    goodSegmentCheck 57 18 39
      { lower := 28577, upper := 28617, witness := RowWitness.topPrime 28573 } = true := by
  exact good_top_prime_checked (i := 57) (r := 18) (s := 39) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row057_good205_checked :
    goodSegmentCheck 57 18 39
      { lower := 28717, upper := 28728, witness := RowWitness.topPrime 28711 } = true := by
  exact good_top_prime_checked (i := 57) (r := 18) (s := 39) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row057_good206_checked :
    goodSegmentCheck 57 18 39
      { lower := 30758, upper := 30776, witness := RowWitness.topPrime 30757 } = true := by
  exact good_top_prime_checked (i := 57) (r := 18) (s := 39) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row057_good207_checked :
    goodSegmentCheck 57 18 39
      { lower := 30926, upper := 30955, witness := RowWitness.topPrime 30911 } = true := by
  exact good_top_prime_checked (i := 57) (r := 18) (s := 39) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row057_good192_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row057_good193_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row057_good194_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row057_good195_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row057_good196_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row057_good197_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row057_good198_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row057_good199_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row057_good200_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row057_good201_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row057_good202_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row057_good203_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row057_good204_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row057_good205_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row057_good206_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row057_good207_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row057_good208_checked :
    goodSegmentCheck 57 18 39
      { lower := 31250, upper := 31269, witness := RowWitness.topPrime 31249 } = true := by
  exact good_top_prime_checked (i := 57) (r := 18) (s := 39) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row057_good209_checked :
    goodSegmentCheck 57 18 39
      { lower := 32805, upper := 32824, witness := RowWitness.topPrime 32803 } = true := by
  exact good_top_prime_checked (i := 57) (r := 18) (s := 39) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row057_good210_checked :
    goodSegmentCheck 57 18 39
      { lower := 33620, upper := 33670, witness := RowWitness.topPrime 33619 } = true := by
  exact good_top_prime_checked (i := 57) (r := 18) (s := 39) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row057_good211_checked :
    goodSegmentCheck 57 18 39
      { lower := 34391, upper := 34431, witness := RowWitness.topPrime 34381 } = true := by
  exact good_top_prime_checked (i := 57) (r := 18) (s := 39) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row057_good212_checked :
    goodSegmentCheck 57 18 39
      { lower := 35152, upper := 35187, witness := RowWitness.topPrime 35149 } = true := by
  exact good_top_prime_checked (i := 57) (r := 18) (s := 39) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row057_good213_checked :
    goodSegmentCheck 57 18 39
      { lower := 36517, upper := 36553, witness := RowWitness.topPrime 36497 } = true := by
  exact good_top_prime_checked (i := 57) (r := 18) (s := 39) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row057_good214_checked :
    goodSegmentCheck 57 18 39
      { lower := 36554, upper := 36557, witness := RowWitness.topPrime 36551 } = true := by
  exact good_top_prime_checked (i := 57) (r := 18) (s := 39) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row057_good215_checked :
    goodSegmentCheck 57 18 39
      { lower := 37553, upper := 37556, witness := RowWitness.topPrime 37549 } = true := by
  exact good_top_prime_checked (i := 57) (r := 18) (s := 39) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row057_good216_checked :
    goodSegmentCheck 57 18 39
      { lower := 39326, upper := 39360, witness := RowWitness.topPrime 39323 } = true := by
  exact good_top_prime_checked (i := 57) (r := 18) (s := 39) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row057_good217_checked :
    goodSegmentCheck 57 18 39
      { lower := 39366, upper := 39382, witness := RowWitness.topPrime 39359 } = true := by
  exact good_top_prime_checked (i := 57) (r := 18) (s := 39) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row057_good218_checked :
    goodSegmentCheck 57 18 39
      { lower := 43940, upper := 43979, witness := RowWitness.topPrime 43933 } = true := by
  exact good_top_prime_checked (i := 57) (r := 18) (s := 39) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row057_good219_checked :
    goodSegmentCheck 57 18 39
      { lower := 44217, upper := 44236, witness := RowWitness.topPrime 44207 } = true := by
  exact good_top_prime_checked (i := 57) (r := 18) (s := 39) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row057_good220_checked :
    goodSegmentCheck 57 18 39
      { lower := 49152, upper := 49186, witness := RowWitness.topPrime 49139 } = true := by
  exact good_top_prime_checked (i := 57) (r := 18) (s := 39) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row057_good221_checked :
    goodSegmentCheck 57 18 39
      { lower := 73205, upper := 73223, witness := RowWitness.topPrime 73189 } = true := by
  exact good_top_prime_checked (i := 57) (r := 18) (s := 39) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row057_good222_checked :
    goodSegmentCheck 57 18 39
      { lower := 73728, upper := 73751, witness := RowWitness.topPrime 73727 } = true := by
  exact good_top_prime_checked (i := 57) (r := 18) (s := 39) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row057_good223_checked :
    goodSegmentCheck 57 18 39
      { lower := 327701, upper := 327736, witness := RowWitness.topPrime 327689 } = true := by
  exact good_top_prime_checked (i := 57) (r := 18) (s := 39) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row057_good208_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row057_good209_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row057_good210_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row057_good211_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row057_good212_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row057_good213_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row057_good214_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row057_good215_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row057_good216_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row057_good217_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row057_good218_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row057_good219_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row057_good220_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row057_good221_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row057_good222_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row057_good223_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row057_goods_checked :
    row057.goods.all (goodSegmentCheck row057.height.i row057.height.r row057.height.s) = true := by
  change row057_goods.all (goodSegmentCheck 57 18 39) = true
  simp only [row057_goods, List.all_cons, List.all_nil,
    row057_good000_checked,
    row057_good001_checked,
    row057_good002_checked,
    row057_good003_checked,
    row057_good004_checked,
    row057_good005_checked,
    row057_good006_checked,
    row057_good007_checked,
    row057_good008_checked,
    row057_good009_checked,
    row057_good010_checked,
    row057_good011_checked,
    row057_good012_checked,
    row057_good013_checked,
    row057_good014_checked,
    row057_good015_checked,
    row057_good016_checked,
    row057_good017_checked,
    row057_good018_checked,
    row057_good019_checked,
    row057_good020_checked,
    row057_good021_checked,
    row057_good022_checked,
    row057_good023_checked,
    row057_good024_checked,
    row057_good025_checked,
    row057_good026_checked,
    row057_good027_checked,
    row057_good028_checked,
    row057_good029_checked,
    row057_good030_checked,
    row057_good031_checked,
    row057_good032_checked,
    row057_good033_checked,
    row057_good034_checked,
    row057_good035_checked,
    row057_good036_checked,
    row057_good037_checked,
    row057_good038_checked,
    row057_good039_checked,
    row057_good040_checked,
    row057_good041_checked,
    row057_good042_checked,
    row057_good043_checked,
    row057_good044_checked,
    row057_good045_checked,
    row057_good046_checked,
    row057_good047_checked,
    row057_good048_checked,
    row057_good049_checked,
    row057_good050_checked,
    row057_good051_checked,
    row057_good052_checked,
    row057_good053_checked,
    row057_good054_checked,
    row057_good055_checked,
    row057_good056_checked,
    row057_good057_checked,
    row057_good058_checked,
    row057_good059_checked,
    row057_good060_checked,
    row057_good061_checked,
    row057_good062_checked,
    row057_good063_checked,
    row057_good064_checked,
    row057_good065_checked,
    row057_good066_checked,
    row057_good067_checked,
    row057_good068_checked,
    row057_good069_checked,
    row057_good070_checked,
    row057_good071_checked,
    row057_good072_checked,
    row057_good073_checked,
    row057_good074_checked,
    row057_good075_checked,
    row057_good076_checked,
    row057_good077_checked,
    row057_good078_checked,
    row057_good079_checked,
    row057_good080_checked,
    row057_good081_checked,
    row057_good082_checked,
    row057_good083_checked,
    row057_good084_checked,
    row057_good085_checked,
    row057_good086_checked,
    row057_good087_checked,
    row057_good088_checked,
    row057_good089_checked,
    row057_good090_checked,
    row057_good091_checked,
    row057_good092_checked,
    row057_good093_checked,
    row057_good094_checked,
    row057_good095_checked,
    row057_good096_checked,
    row057_good097_checked,
    row057_good098_checked,
    row057_good099_checked,
    row057_good100_checked,
    row057_good101_checked,
    row057_good102_checked,
    row057_good103_checked,
    row057_good104_checked,
    row057_good105_checked,
    row057_good106_checked,
    row057_good107_checked,
    row057_good108_checked,
    row057_good109_checked,
    row057_good110_checked,
    row057_good111_checked,
    row057_good112_checked,
    row057_good113_checked,
    row057_good114_checked,
    row057_good115_checked,
    row057_good116_checked,
    row057_good117_checked,
    row057_good118_checked,
    row057_good119_checked,
    row057_good120_checked,
    row057_good121_checked,
    row057_good122_checked,
    row057_good123_checked,
    row057_good124_checked,
    row057_good125_checked,
    row057_good126_checked,
    row057_good127_checked,
    row057_good128_checked,
    row057_good129_checked,
    row057_good130_checked,
    row057_good131_checked,
    row057_good132_checked,
    row057_good133_checked,
    row057_good134_checked,
    row057_good135_checked,
    row057_good136_checked,
    row057_good137_checked,
    row057_good138_checked,
    row057_good139_checked,
    row057_good140_checked,
    row057_good141_checked,
    row057_good142_checked,
    row057_good143_checked,
    row057_good144_checked,
    row057_good145_checked,
    row057_good146_checked,
    row057_good147_checked,
    row057_good148_checked,
    row057_good149_checked,
    row057_good150_checked,
    row057_good151_checked,
    row057_good152_checked,
    row057_good153_checked,
    row057_good154_checked,
    row057_good155_checked,
    row057_good156_checked,
    row057_good157_checked,
    row057_good158_checked,
    row057_good159_checked,
    row057_good160_checked,
    row057_good161_checked,
    row057_good162_checked,
    row057_good163_checked,
    row057_good164_checked,
    row057_good165_checked,
    row057_good166_checked,
    row057_good167_checked,
    row057_good168_checked,
    row057_good169_checked,
    row057_good170_checked,
    row057_good171_checked,
    row057_good172_checked,
    row057_good173_checked,
    row057_good174_checked,
    row057_good175_checked,
    row057_good176_checked,
    row057_good177_checked,
    row057_good178_checked,
    row057_good179_checked,
    row057_good180_checked,
    row057_good181_checked,
    row057_good182_checked,
    row057_good183_checked,
    row057_good184_checked,
    row057_good185_checked,
    row057_good186_checked,
    row057_good187_checked,
    row057_good188_checked,
    row057_good189_checked,
    row057_good190_checked,
    row057_good191_checked,
    row057_good192_checked,
    row057_good193_checked,
    row057_good194_checked,
    row057_good195_checked,
    row057_good196_checked,
    row057_good197_checked,
    row057_good198_checked,
    row057_good199_checked,
    row057_good200_checked,
    row057_good201_checked,
    row057_good202_checked,
    row057_good203_checked,
    row057_good204_checked,
    row057_good205_checked,
    row057_good206_checked,
    row057_good207_checked,
    row057_good208_checked,
    row057_good209_checked,
    row057_good210_checked,
    row057_good211_checked,
    row057_good212_checked,
    row057_good213_checked,
    row057_good214_checked,
    row057_good215_checked,
    row057_good216_checked,
    row057_good217_checked,
    row057_good218_checked,
    row057_good219_checked,
    row057_good220_checked,
    row057_good221_checked,
    row057_good222_checked,
    row057_good223_checked, Bool.true_and]

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row057_goods_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row057_registered :
    decide (row057.height ∈ heightCertificateData) = true := by
  decide +kernel

theorem row057_small_checked :
    coverCheck (2 * row057.height.i + 2) (row057.height.i * (row057.height.i - 1) - 1)
      (row057.goods.map goodSegmentBounds) = true := by
  decide +kernel

theorem row057_layerCover_checked :
    coverCheck (row057.height.i * (row057.height.i - 1)) (row057.height.n0 - 1)
      (row057.layers.map CoverLayer.bounds) = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row057_registered
#print axioms B699LowIndex.LowIndexLean513dc7cc.row057_small_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row057_layerCover_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row057_bounds : List NatInterval :=
  [(116, 169), (170, 223), (224, 279), (280, 333), (334, 387), (388, 439), (440, 495), (496, 547), (548, 603), (604, 657), (658, 709), (710, 765), (766, 817), (818, 867), (868, 919), (920, 975), (976, 1027), (1028, 1077), (1078, 1125), (1126, 1179), (1180, 1227), (1228, 1279), (1280, 1335), (1336, 1383), (1384, 1437), (1438, 1489), (1490, 1545), (1546, 1599), (1600, 1653), (1654, 1693), (1694, 1749), (1750, 1803), (1804, 1857), (1858, 1903), (1904, 1957), (1958, 2007), (2008, 2059), (2060, 2109), (2110, 2155), (2156, 2209), (2210, 2263), (2264, 2307), (2308, 2353), (2354, 2407), (2408, 2455), (2456, 2503), (2504, 2559), (2560, 2613), (2614, 2665), (2666, 2719), (2720, 2775), (2776, 2823), (2824, 2875), (2876, 2917), (2918, 2973), (2974, 3027), (3028, 3079), (3080, 3135), (3136, 3177), (3178, 3225), (3226, 3277), (3278, 3306), (3362, 3417), (3418, 3444), (3456, 3505), (3506, 3555), (3556, 3565), (3584, 3605), (3625, 3640), (3645, 3681), (3698, 3701), (3703, 3757), (3758, 3795), (3796, 3813), (3844, 3889), (3890, 3900), (4046, 4049), (4056, 4107), (4108, 4155), (4156, 4163), (4225, 4275), (4276, 4281), (4352, 4405), (4406, 4450), (4459, 4474), (4608, 4619), (4624, 4664), (4761, 4788), (4802, 4857), (4858, 4858), (4901, 4945), (4946, 4957), (5043, 5095), (5096, 5099), (5120, 5175), (5176, 5176), (5324, 5346), (5376, 5380), (5488, 5539), (5540, 5544), (5547, 5547), (5625, 5679), (5680, 5681), (5780, 5835), (5836, 5883), (5884, 5937), (5938, 5943), (6174, 6200), (6358, 6409), (6410, 6414), (6561, 6573), (6591, 6617), (6627, 6675), (6676, 6711), (6727, 6775), (6776, 6783), (6859, 6913), (6914, 6931), (7203, 7249), (7250, 7259), (7406, 7449), (7450, 7452), (7546, 7556), (7569, 7602), (7688, 7736), (7935, 7945), (7986, 7991), (8214, 8265), (8266, 8270), (8410, 8445), (8446, 8483), (8704, 8705), (8748, 8803), (8804, 8806), (8836, 8844), (9245, 9297), (9298, 9301), (9604, 9657), (9658, 9660), (10051, 10056), (10086, 10135), (10136, 10142), (10580, 10623), (10624, 10636), (10648, 10681), (10935, 10965), (10966, 11008), (11094, 11101), (11109, 11149), (11150, 11150), (11250, 11299), (11300, 11306), (11774, 11799), (11800, 11830), (12005, 12035), (12321, 12344), (12500, 12549), (13125, 13177), (13178, 13178), (13310, 13310), (13312, 13365), (13366, 13366), (13454, 13507), (13508, 13510), (14336, 14353), (14375, 14392), (14406, 14457), (14458, 14462), (14792, 14795), (15138, 15185), (15360, 15365), (15376, 15429), (15430, 15432), (15979, 16028), (16384, 16393), (16428, 16440), (16810, 16843), (16844, 16876), (17303, 17354), (17672, 17717), (18491, 18537), (18538, 18547), (19208, 19263), (19264, 19264), (19663, 19717), (19718, 19719), (20181, 20228), (20535, 20536), (21875, 21927), (21928, 21931), (22103, 22146), (22528, 22528), (23552, 23590), (24010, 24014), (24037, 24066), (24334, 24355), (24389, 24390), (24576, 24621), (25289, 25317), (25318, 25337), (26411, 26420), (26624, 26653), (26654, 26676), (28125, 28146), (28577, 28617), (28717, 28728), (30758, 30776), (30926, 30955), (31250, 31269), (32805, 32824), (33620, 33670), (34391, 34431), (35152, 35187), (36517, 36553), (36554, 36557), (37553, 37556), (39326, 39360), (39366, 39382), (43940, 43979), (44217, 44236), (49152, 49186), (73205, 73223), (73728, 73751), (327701, 327736)]

theorem row057_bounds_eq : row057.goods.map goodSegmentBounds = row057_bounds := by
  rfl

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row057_bounds_eq

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row057_layer000_intervals : List ColouredInterval :=
  [(2, 3200, 3256), (2, 3328, 3384), (2, 3456, 3512), (2, 3584, 3640), (2, 3712, 3768), (2, 3328, 3384), (2, 3584, 3640), (2, 3840, 3896), (2, 4096, 4152), (2, 4352, 4408), (2, 4608, 4664), (2, 4864, 4920), (2, 5120, 5176), (2, 5376, 5432), (2, 5632, 5688), (2, 5888, 5944), (2, 6144, 6200), (2, 3584, 3640), (2, 4096, 4152), (2, 4608, 4664), (2, 5120, 5176), (2, 5632, 5688), (2, 6144, 6200), (2, 4096, 4152), (2, 5120, 5176), (2, 6144, 6200), (2, 4096, 4152), (2, 6144, 6200), (2, 4096, 4152), (3, 3645, 3701), (3, 4374, 4430), (3, 5103, 5159), (3, 5832, 5888), (3, 4374, 4430), (5, 3250, 3306), (5, 3375, 3431), (5, 3500, 3556), (5, 3625, 3681), (5, 3750, 3806), (5, 4375, 4431), (5, 5000, 5056), (5, 5625, 5681), (5, 6250, 6306), (5, 6250, 6306), (7, 3430, 3486), (7, 3773, 3829), (7, 4116, 4172), (7, 4459, 4515), (7, 4802, 4858), (7, 5145, 5201), (7, 5488, 5544), (7, 5831, 5887), (7, 6174, 6230), (7, 4802, 4858), (11, 3192, 3202), (11, 3267, 3323), (11, 3388, 3444), (11, 3509, 3565), (11, 3993, 4049), (11, 5324, 5380), (13, 3211, 3267), (13, 3380, 3436), (13, 3549, 3605), (13, 3718, 3774), (13, 3887, 3943), (13, 4056, 4112), (13, 4225, 4281), (13, 4394, 4450), (13, 4563, 4619), (13, 4732, 4788), (13, 4901, 4957), (13, 4394, 4450), (17, 3192, 3235), (17, 3468, 3524), (17, 3757, 3813), (17, 4046, 4102), (17, 4335, 4391), (17, 4624, 4680), (17, 4913, 4969), (17, 5202, 5258), (17, 5491, 5547), (17, 5780, 5836), (17, 6069, 6125), (17, 6358, 6383), (17, 4913, 4969), (23, 3192, 3230), (23, 3703, 3759), (23, 4232, 4288), (23, 4761, 4817), (23, 5290, 5346), (23, 5819, 5875), (23, 6348, 6383), (29, 3364, 3420), (29, 4205, 4261), (29, 5046, 5102), (29, 5887, 5943), (31, 3844, 3900), (31, 4805, 4861), (31, 5766, 5822), (37, 4107, 4163), (37, 5476, 5532), (41, 3362, 3418), (41, 5043, 5099), (43, 3698, 3754), (43, 5547, 5603), (47, 4418, 4474), (53, 5618, 5674)]

def row057_layer000_block000 : List ColouredInterval :=
  [(2, 3200, 3256), (2, 3328, 3384), (2, 3456, 3512), (2, 3584, 3640), (2, 3712, 3768), (2, 3328, 3384), (2, 3584, 3640), (2, 3840, 3896), (2, 4096, 4152), (2, 4352, 4408), (2, 4608, 4664), (2, 4864, 4920), (2, 5120, 5176), (2, 5376, 5432), (2, 5632, 5688), (2, 5888, 5944)]

def row057_layer000_block001 : List ColouredInterval :=
  [(2, 6144, 6200), (2, 3584, 3640), (2, 4096, 4152), (2, 4608, 4664), (2, 5120, 5176), (2, 5632, 5688), (2, 6144, 6200), (2, 4096, 4152), (2, 5120, 5176), (2, 6144, 6200), (2, 4096, 4152), (2, 6144, 6200), (2, 4096, 4152), (3, 3645, 3701), (3, 4374, 4430), (3, 5103, 5159)]

def row057_layer000_block002 : List ColouredInterval :=
  [(3, 5832, 5888), (3, 4374, 4430), (5, 3250, 3306), (5, 3375, 3431), (5, 3500, 3556), (5, 3625, 3681), (5, 3750, 3806), (5, 4375, 4431), (5, 5000, 5056), (5, 5625, 5681), (5, 6250, 6306), (5, 6250, 6306), (7, 3430, 3486), (7, 3773, 3829), (7, 4116, 4172), (7, 4459, 4515)]

def row057_layer000_block003 : List ColouredInterval :=
  [(7, 4802, 4858), (7, 5145, 5201), (7, 5488, 5544), (7, 5831, 5887), (7, 6174, 6230), (7, 4802, 4858), (11, 3192, 3202), (11, 3267, 3323), (11, 3388, 3444), (11, 3509, 3565), (11, 3993, 4049), (11, 5324, 5380), (13, 3211, 3267), (13, 3380, 3436), (13, 3549, 3605), (13, 3718, 3774)]

def row057_layer000_block004 : List ColouredInterval :=
  [(13, 3887, 3943), (13, 4056, 4112), (13, 4225, 4281), (13, 4394, 4450), (13, 4563, 4619), (13, 4732, 4788), (13, 4901, 4957), (13, 4394, 4450), (17, 3192, 3235), (17, 3468, 3524), (17, 3757, 3813), (17, 4046, 4102), (17, 4335, 4391), (17, 4624, 4680), (17, 4913, 4969), (17, 5202, 5258)]

def row057_layer000_block005 : List ColouredInterval :=
  [(17, 5491, 5547), (17, 5780, 5836), (17, 6069, 6125), (17, 6358, 6383), (17, 4913, 4969), (23, 3192, 3230), (23, 3703, 3759), (23, 4232, 4288), (23, 4761, 4817), (23, 5290, 5346), (23, 5819, 5875), (23, 6348, 6383), (29, 3364, 3420), (29, 4205, 4261), (29, 5046, 5102), (29, 5887, 5943)]

def row057_layer000_block006 : List ColouredInterval :=
  [(31, 3844, 3900), (31, 4805, 4861), (31, 5766, 5822), (37, 4107, 4163), (37, 5476, 5532), (41, 3362, 3418), (41, 5043, 5099), (43, 3698, 3754), (43, 5547, 5603), (47, 4418, 4474), (53, 5618, 5674)]

def row057_layer000_chunks : List (List ColouredInterval) :=
  [row057_layer000_block000, row057_layer000_block001, row057_layer000_block002, row057_layer000_block003, row057_layer000_block004, row057_layer000_block005, row057_layer000_block006]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row057_layer000_intervals

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row057_layer000_arithmetic : LayerArithmeticValid row057.height { lower := 3192, upper := 6384, M := 29 } := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row057_layer000_arithmetic

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row057_layer000_enumeration :
    activePowerIntervalList 57 29 3192 6384 = row057_layer000_intervals := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row057_layer000_enumeration

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row057_layer000_pairs000 :
    row057_layer000_block000.all (fun I => row057_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row057_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row057_layer000_pairs000

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row057_layer000_pairs001 :
    row057_layer000_block001.all (fun I => row057_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row057_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row057_layer000_pairs001

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row057_layer000_pairs002 :
    row057_layer000_block002.all (fun I => row057_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row057_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row057_layer000_pairs002

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row057_layer000_pairs003 :
    row057_layer000_block003.all (fun I => row057_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row057_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row057_layer000_pairs003

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row057_layer000_pairs004 :
    row057_layer000_block004.all (fun I => row057_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row057_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row057_layer000_pairs004

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row057_layer000_pairs005 :
    row057_layer000_block005.all (fun I => row057_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row057_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row057_layer000_pairs005

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row057_layer000_pairs006 :
    row057_layer000_block006.all (fun I => row057_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row057_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row057_layer000_pairs006

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row057_layer000_chunks_eq : row057_layer000_chunks.flatten = row057_layer000_intervals := by
  rfl

theorem row057_layer000_pairs : pairCoverCheck row057_layer000_intervals row057_bounds = true := by
  apply pairCoverCheck_of_chunks row057_layer000_chunks_eq
  intro block hblock
  simp only [row057_layer000_chunks, List.mem_cons, List.mem_nil_iff, or_false] at hblock
  rcases hblock with rfl | rfl | rfl | rfl | rfl | rfl | rfl
  · exact row057_layer000_pairs000
  · exact row057_layer000_pairs001
  · exact row057_layer000_pairs002
  · exact row057_layer000_pairs003
  · exact row057_layer000_pairs004
  · exact row057_layer000_pairs005
  · exact row057_layer000_pairs006

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row057_layer000_chunks_eq
#print axioms B699LowIndex.LowIndexLean513dc7cc.row057_layer000_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row057_layer000_checked :
    coverLayerCheck row057.height row057.goods { lower := 3192, upper := 6384, M := 29 } = true := by
  exact coverLayerCheck_of_parts row057_layer000_arithmetic row057_layer000_enumeration row057_bounds_eq row057_layer000_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row057_layer000_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row057_layer001_intervals : List ColouredInterval :=
  [(2, 6400, 6456), (2, 6656, 6712), (2, 7168, 7224), (2, 7680, 7736), (2, 8192, 8248), (2, 8704, 8760), (2, 9216, 9272), (2, 9728, 9784), (2, 10240, 10296), (2, 10752, 10808), (2, 11264, 11320), (2, 11776, 11832), (2, 12288, 12344), (2, 7168, 7224), (2, 8192, 8248), (2, 9216, 9272), (2, 10240, 10296), (2, 11264, 11320), (2, 12288, 12344), (2, 8192, 8248), (2, 10240, 10296), (2, 12288, 12344), (2, 8192, 8248), (2, 12288, 12344), (2, 8192, 8248), (3, 6561, 6617), (3, 8748, 8804), (3, 10935, 10991), (3, 6561, 6617), (5, 6875, 6931), (5, 7500, 7556), (5, 8125, 8181), (5, 8750, 8806), (5, 9375, 9431), (5, 10000, 10056), (5, 10625, 10681), (5, 11250, 11306), (5, 11875, 11931), (5, 12500, 12556), (5, 9375, 9431), (5, 12500, 12556), (7, 6517, 6573), (7, 6860, 6916), (7, 7203, 7259), (7, 7546, 7602), (7, 7889, 7945), (7, 8232, 8288), (7, 8575, 8631), (7, 7203, 7259), (7, 9604, 9660), (7, 12005, 12061), (11, 6655, 6711), (11, 7986, 8042), (11, 9317, 9373), (11, 10648, 10704), (11, 11979, 12035), (13, 6591, 6647), (13, 8788, 8844), (13, 10985, 11041), (17, 6384, 6414), (17, 6647, 6703), (17, 6936, 6992), (17, 7225, 7281), (17, 9826, 9882), (19, 6859, 6915), (23, 6384, 6404), (23, 6877, 6933), (23, 7406, 7462), (23, 7935, 7991), (23, 8464, 8520), (23, 8993, 9049), (23, 9522, 9578), (23, 10051, 10107), (23, 10580, 10636), (23, 11109, 11165), (23, 11638, 11694), (23, 12167, 12223), (23, 12696, 12752), (23, 12167, 12223), (29, 6728, 6784), (29, 7569, 7625), (29, 8410, 8466), (29, 9251, 9307), (29, 10092, 10148), (29, 10933, 10989), (29, 11774, 11830), (29, 12615, 12671), (31, 6727, 6783), (31, 7688, 7744), (31, 8649, 8705), (31, 9610, 9666), (31, 10571, 10627), (31, 11532, 11588), (31, 12493, 12549), (37, 6845, 6901), (37, 8214, 8270), (37, 9583, 9639), (37, 10952, 11008), (37, 12321, 12377), (41, 6724, 6780), (41, 8405, 8461), (41, 10086, 10142), (41, 11767, 11823), (43, 7396, 7452), (43, 9245, 9301), (43, 11094, 11150), (47, 6627, 6683), (47, 8836, 8892), (47, 11045, 11101), (53, 8427, 8483), (53, 11236, 11292)]

def row057_layer001_block000 : List ColouredInterval :=
  [(2, 6400, 6456), (2, 6656, 6712), (2, 7168, 7224), (2, 7680, 7736), (2, 8192, 8248), (2, 8704, 8760), (2, 9216, 9272), (2, 9728, 9784), (2, 10240, 10296), (2, 10752, 10808), (2, 11264, 11320), (2, 11776, 11832), (2, 12288, 12344), (2, 7168, 7224), (2, 8192, 8248), (2, 9216, 9272)]

def row057_layer001_block001 : List ColouredInterval :=
  [(2, 10240, 10296), (2, 11264, 11320), (2, 12288, 12344), (2, 8192, 8248), (2, 10240, 10296), (2, 12288, 12344), (2, 8192, 8248), (2, 12288, 12344), (2, 8192, 8248), (3, 6561, 6617), (3, 8748, 8804), (3, 10935, 10991), (3, 6561, 6617), (5, 6875, 6931), (5, 7500, 7556), (5, 8125, 8181)]

def row057_layer001_block002 : List ColouredInterval :=
  [(5, 8750, 8806), (5, 9375, 9431), (5, 10000, 10056), (5, 10625, 10681), (5, 11250, 11306), (5, 11875, 11931), (5, 12500, 12556), (5, 9375, 9431), (5, 12500, 12556), (7, 6517, 6573), (7, 6860, 6916), (7, 7203, 7259), (7, 7546, 7602), (7, 7889, 7945), (7, 8232, 8288), (7, 8575, 8631)]

def row057_layer001_block003 : List ColouredInterval :=
  [(7, 7203, 7259), (7, 9604, 9660), (7, 12005, 12061), (11, 6655, 6711), (11, 7986, 8042), (11, 9317, 9373), (11, 10648, 10704), (11, 11979, 12035), (13, 6591, 6647), (13, 8788, 8844), (13, 10985, 11041), (17, 6384, 6414), (17, 6647, 6703), (17, 6936, 6992), (17, 7225, 7281), (17, 9826, 9882)]

def row057_layer001_block004 : List ColouredInterval :=
  [(19, 6859, 6915), (23, 6384, 6404), (23, 6877, 6933), (23, 7406, 7462), (23, 7935, 7991), (23, 8464, 8520), (23, 8993, 9049), (23, 9522, 9578), (23, 10051, 10107), (23, 10580, 10636), (23, 11109, 11165), (23, 11638, 11694), (23, 12167, 12223), (23, 12696, 12752), (23, 12167, 12223), (29, 6728, 6784)]

def row057_layer001_block005 : List ColouredInterval :=
  [(29, 7569, 7625), (29, 8410, 8466), (29, 9251, 9307), (29, 10092, 10148), (29, 10933, 10989), (29, 11774, 11830), (29, 12615, 12671), (31, 6727, 6783), (31, 7688, 7744), (31, 8649, 8705), (31, 9610, 9666), (31, 10571, 10627), (31, 11532, 11588), (31, 12493, 12549), (37, 6845, 6901), (37, 8214, 8270)]

def row057_layer001_block006 : List ColouredInterval :=
  [(37, 9583, 9639), (37, 10952, 11008), (37, 12321, 12377), (41, 6724, 6780), (41, 8405, 8461), (41, 10086, 10142), (41, 11767, 11823), (43, 7396, 7452), (43, 9245, 9301), (43, 11094, 11150), (47, 6627, 6683), (47, 8836, 8892), (47, 11045, 11101), (53, 8427, 8483), (53, 11236, 11292)]

def row057_layer001_chunks : List (List ColouredInterval) :=
  [row057_layer001_block000, row057_layer001_block001, row057_layer001_block002, row057_layer001_block003, row057_layer001_block004, row057_layer001_block005, row057_layer001_block006]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row057_layer001_intervals

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row057_layer001_arithmetic : LayerArithmeticValid row057.height { lower := 6384, upper := 12768, M := 25 } := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row057_layer001_arithmetic

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row057_layer001_enumeration :
    activePowerIntervalList 57 25 6384 12768 = row057_layer001_intervals := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row057_layer001_enumeration

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row057_layer001_pairs000 :
    row057_layer001_block000.all (fun I => row057_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row057_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row057_layer001_pairs000

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row057_layer001_pairs001 :
    row057_layer001_block001.all (fun I => row057_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row057_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row057_layer001_pairs001

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row057_layer001_pairs002 :
    row057_layer001_block002.all (fun I => row057_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row057_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row057_layer001_pairs002

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row057_layer001_pairs003 :
    row057_layer001_block003.all (fun I => row057_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row057_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row057_layer001_pairs003

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row057_layer001_pairs004 :
    row057_layer001_block004.all (fun I => row057_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row057_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row057_layer001_pairs004

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row057_layer001_pairs005 :
    row057_layer001_block005.all (fun I => row057_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row057_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row057_layer001_pairs005

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row057_layer001_pairs006 :
    row057_layer001_block006.all (fun I => row057_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row057_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row057_layer001_pairs006

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row057_layer001_chunks_eq : row057_layer001_chunks.flatten = row057_layer001_intervals := by
  rfl

theorem row057_layer001_pairs : pairCoverCheck row057_layer001_intervals row057_bounds = true := by
  apply pairCoverCheck_of_chunks row057_layer001_chunks_eq
  intro block hblock
  simp only [row057_layer001_chunks, List.mem_cons, List.mem_nil_iff, or_false] at hblock
  rcases hblock with rfl | rfl | rfl | rfl | rfl | rfl | rfl
  · exact row057_layer001_pairs000
  · exact row057_layer001_pairs001
  · exact row057_layer001_pairs002
  · exact row057_layer001_pairs003
  · exact row057_layer001_pairs004
  · exact row057_layer001_pairs005
  · exact row057_layer001_pairs006

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row057_layer001_chunks_eq
#print axioms B699LowIndex.LowIndexLean513dc7cc.row057_layer001_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row057_layer001_checked :
    coverLayerCheck row057.height row057.goods { lower := 6384, upper := 12768, M := 25 } = true := by
  exact coverLayerCheck_of_parts row057_layer001_arithmetic row057_layer001_enumeration row057_bounds_eq row057_layer001_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row057_layer001_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row057_layer002_intervals : List ColouredInterval :=
  [(2, 13312, 13368), (2, 14336, 14392), (2, 15360, 15416), (2, 16384, 16440), (2, 17408, 17464), (2, 18432, 18488), (2, 19456, 19512), (2, 20480, 20536), (2, 21504, 21560), (2, 22528, 22584), (2, 23552, 23608), (2, 14336, 14392), (2, 16384, 16440), (2, 18432, 18488), (2, 20480, 20536), (2, 22528, 22584), (2, 24576, 24632), (2, 16384, 16440), (2, 20480, 20536), (2, 24576, 24632), (2, 16384, 16440), (2, 24576, 24632), (2, 16384, 16440), (3, 13122, 13178), (3, 15309, 15365), (3, 13122, 13178), (3, 19683, 19739), (3, 19683, 19739), (5, 13125, 13181), (5, 13750, 13806), (5, 14375, 14431), (5, 15625, 15681), (5, 18750, 18806), (5, 21875, 21931), (5, 25000, 25056), (5, 15625, 15681), (7, 14406, 14462), (7, 16807, 16863), (7, 19208, 19264), (7, 21609, 21665), (7, 24010, 24066), (7, 16807, 16863), (11, 13310, 13366), (11, 14641, 14697), (11, 15972, 16028), (11, 17303, 17359), (11, 18634, 18690), (11, 19965, 20021), (11, 21296, 21352), (11, 22627, 22683), (11, 23958, 24014), (11, 25289, 25345), (11, 14641, 14697), (13, 13182, 13238), (13, 15379, 15435), (13, 17576, 17632), (13, 19773, 19829), (13, 21970, 22026), (13, 24167, 24223), (17, 14739, 14795), (17, 19652, 19708), (17, 24565, 24621), (23, 24334, 24390), (29, 13456, 13512), (29, 14297, 14353), (29, 15138, 15194), (29, 15979, 16035), (29, 16820, 16876), (29, 17661, 17717), (29, 18502, 18558), (29, 19343, 19399), (29, 24389, 24445), (31, 13454, 13510), (31, 14415, 14471), (31, 15376, 15432), (31, 16337, 16393), (31, 17298, 17354), (31, 18259, 18315), (31, 19220, 19276), (31, 20181, 20237), (31, 21142, 21198), (31, 22103, 22159), (37, 13690, 13746), (37, 15059, 15115), (37, 16428, 16484), (37, 17797, 17853), (37, 19166, 19222), (37, 20535, 20591), (37, 21904, 21960), (37, 23273, 23329), (37, 24642, 24698), (41, 13448, 13504), (41, 15129, 15185), (41, 16810, 16866), (41, 18491, 18547), (41, 20172, 20228), (41, 21853, 21909), (41, 23534, 23590), (41, 25215, 25271), (43, 12943, 12999), (43, 14792, 14848), (43, 16641, 16697), (43, 18490, 18546), (43, 20339, 20395), (43, 22188, 22244), (43, 24037, 24093), (47, 13254, 13310), (47, 15463, 15519), (47, 17672, 17728), (47, 19881, 19937), (47, 22090, 22146), (47, 24299, 24355), (53, 14045, 14101), (53, 16854, 16910), (53, 19663, 19719), (53, 22472, 22528), (53, 25281, 25337)]

def row057_layer002_block000 : List ColouredInterval :=
  [(2, 13312, 13368), (2, 14336, 14392), (2, 15360, 15416), (2, 16384, 16440), (2, 17408, 17464), (2, 18432, 18488), (2, 19456, 19512), (2, 20480, 20536), (2, 21504, 21560), (2, 22528, 22584), (2, 23552, 23608), (2, 14336, 14392), (2, 16384, 16440), (2, 18432, 18488), (2, 20480, 20536), (2, 22528, 22584)]

def row057_layer002_block001 : List ColouredInterval :=
  [(2, 24576, 24632), (2, 16384, 16440), (2, 20480, 20536), (2, 24576, 24632), (2, 16384, 16440), (2, 24576, 24632), (2, 16384, 16440), (3, 13122, 13178), (3, 15309, 15365), (3, 13122, 13178), (3, 19683, 19739), (3, 19683, 19739), (5, 13125, 13181), (5, 13750, 13806), (5, 14375, 14431), (5, 15625, 15681)]

def row057_layer002_block002 : List ColouredInterval :=
  [(5, 18750, 18806), (5, 21875, 21931), (5, 25000, 25056), (5, 15625, 15681), (7, 14406, 14462), (7, 16807, 16863), (7, 19208, 19264), (7, 21609, 21665), (7, 24010, 24066), (7, 16807, 16863), (11, 13310, 13366), (11, 14641, 14697), (11, 15972, 16028), (11, 17303, 17359), (11, 18634, 18690), (11, 19965, 20021)]

def row057_layer002_block003 : List ColouredInterval :=
  [(11, 21296, 21352), (11, 22627, 22683), (11, 23958, 24014), (11, 25289, 25345), (11, 14641, 14697), (13, 13182, 13238), (13, 15379, 15435), (13, 17576, 17632), (13, 19773, 19829), (13, 21970, 22026), (13, 24167, 24223), (17, 14739, 14795), (17, 19652, 19708), (17, 24565, 24621), (23, 24334, 24390), (29, 13456, 13512)]

def row057_layer002_block004 : List ColouredInterval :=
  [(29, 14297, 14353), (29, 15138, 15194), (29, 15979, 16035), (29, 16820, 16876), (29, 17661, 17717), (29, 18502, 18558), (29, 19343, 19399), (29, 24389, 24445), (31, 13454, 13510), (31, 14415, 14471), (31, 15376, 15432), (31, 16337, 16393), (31, 17298, 17354), (31, 18259, 18315), (31, 19220, 19276), (31, 20181, 20237)]

def row057_layer002_block005 : List ColouredInterval :=
  [(31, 21142, 21198), (31, 22103, 22159), (37, 13690, 13746), (37, 15059, 15115), (37, 16428, 16484), (37, 17797, 17853), (37, 19166, 19222), (37, 20535, 20591), (37, 21904, 21960), (37, 23273, 23329), (37, 24642, 24698), (41, 13448, 13504), (41, 15129, 15185), (41, 16810, 16866), (41, 18491, 18547), (41, 20172, 20228)]

def row057_layer002_block006 : List ColouredInterval :=
  [(41, 21853, 21909), (41, 23534, 23590), (41, 25215, 25271), (43, 12943, 12999), (43, 14792, 14848), (43, 16641, 16697), (43, 18490, 18546), (43, 20339, 20395), (43, 22188, 22244), (43, 24037, 24093), (47, 13254, 13310), (47, 15463, 15519), (47, 17672, 17728), (47, 19881, 19937), (47, 22090, 22146), (47, 24299, 24355)]

def row057_layer002_block007 : List ColouredInterval :=
  [(53, 14045, 14101), (53, 16854, 16910), (53, 19663, 19719), (53, 22472, 22528), (53, 25281, 25337)]

def row057_layer002_chunks : List (List ColouredInterval) :=
  [row057_layer002_block000, row057_layer002_block001, row057_layer002_block002, row057_layer002_block003, row057_layer002_block004, row057_layer002_block005, row057_layer002_block006, row057_layer002_block007]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row057_layer002_intervals

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row057_layer002_arithmetic : LayerArithmeticValid row057.height { lower := 12768, upper := 25536, M := 23 } := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row057_layer002_arithmetic

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row057_layer002_enumeration :
    activePowerIntervalList 57 23 12768 25536 = row057_layer002_intervals := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row057_layer002_enumeration

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row057_layer002_pairs000 :
    row057_layer002_block000.all (fun I => row057_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row057_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row057_layer002_pairs000

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row057_layer002_pairs001 :
    row057_layer002_block001.all (fun I => row057_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row057_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row057_layer002_pairs001

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row057_layer002_pairs002 :
    row057_layer002_block002.all (fun I => row057_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row057_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row057_layer002_pairs002

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row057_layer002_pairs003 :
    row057_layer002_block003.all (fun I => row057_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row057_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row057_layer002_pairs003

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row057_layer002_pairs004 :
    row057_layer002_block004.all (fun I => row057_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row057_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row057_layer002_pairs004

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row057_layer002_pairs005 :
    row057_layer002_block005.all (fun I => row057_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row057_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row057_layer002_pairs005

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row057_layer002_pairs006 :
    row057_layer002_block006.all (fun I => row057_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row057_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row057_layer002_pairs006

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row057_layer002_pairs007 :
    row057_layer002_block007.all (fun I => row057_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row057_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row057_layer002_pairs007

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row057_layer002_chunks_eq : row057_layer002_chunks.flatten = row057_layer002_intervals := by
  rfl

theorem row057_layer002_pairs : pairCoverCheck row057_layer002_intervals row057_bounds = true := by
  apply pairCoverCheck_of_chunks row057_layer002_chunks_eq
  intro block hblock
  simp only [row057_layer002_chunks, List.mem_cons, List.mem_nil_iff, or_false] at hblock
  rcases hblock with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
  · exact row057_layer002_pairs000
  · exact row057_layer002_pairs001
  · exact row057_layer002_pairs002
  · exact row057_layer002_pairs003
  · exact row057_layer002_pairs004
  · exact row057_layer002_pairs005
  · exact row057_layer002_pairs006
  · exact row057_layer002_pairs007

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row057_layer002_chunks_eq
#print axioms B699LowIndex.LowIndexLean513dc7cc.row057_layer002_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row057_layer002_checked :
    coverLayerCheck row057.height row057.goods { lower := 12768, upper := 25536, M := 23 } = true := by
  exact coverLayerCheck_of_parts row057_layer002_arithmetic row057_layer002_enumeration row057_bounds_eq row057_layer002_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row057_layer002_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row057_layer003_intervals : List ColouredInterval :=
  [(2, 26624, 26680), (2, 28672, 28728), (2, 30720, 30776), (2, 32768, 32824), (2, 34816, 34872), (2, 36864, 36920), (2, 38912, 38968), (2, 40960, 41016), (2, 28672, 28728), (2, 32768, 32824), (2, 36864, 36920), (2, 40960, 41016), (2, 45056, 45112), (2, 49152, 49208), (2, 32768, 32824), (2, 40960, 41016), (2, 49152, 49208), (2, 32768, 32824), (2, 49152, 49208), (2, 32768, 32824), (3, 26244, 26300), (3, 32805, 32861), (3, 39366, 39422), (3, 39366, 39422), (5, 28125, 28181), (5, 31250, 31306), (5, 34375, 34431), (5, 37500, 37556), (5, 40625, 40681), (5, 43750, 43806), (5, 46875, 46931), (5, 50000, 50056), (5, 31250, 31306), (5, 46875, 46931), (7, 26411, 26467), (7, 28812, 28868), (7, 31213, 31269), (7, 33614, 33670), (7, 36015, 36071), (7, 38416, 38472), (7, 40817, 40873), (7, 43218, 43274), (7, 45619, 45675), (7, 48020, 48076), (7, 33614, 33670), (7, 50421, 50477), (11, 26620, 26676), (11, 29282, 29338), (11, 43923, 43979), (13, 26364, 26420), (13, 28561, 28617), (13, 30758, 30814), (13, 32955, 33011), (13, 35152, 35208), (13, 37349, 37405), (13, 39546, 39602), (13, 41743, 41799), (13, 43940, 43996), (13, 28561, 28617), (17, 29478, 29534), (17, 34391, 34447), (17, 39304, 39360), (17, 44217, 44273), (17, 49130, 49186), (23, 36501, 36557), (23, 48668, 48724), (29, 48778, 48834), (31, 29791, 29847), (37, 26011, 26067), (37, 27380, 27436), (37, 50653, 50709), (41, 26896, 26952), (41, 28577, 28633), (41, 30258, 30314), (41, 31939, 31995), (41, 33620, 33676), (43, 25886, 25942), (43, 27735, 27791), (43, 29584, 29640), (43, 31433, 31489), (43, 33282, 33338), (43, 35131, 35187), (43, 36980, 37036), (47, 26508, 26564), (47, 28717, 28773), (47, 30926, 30982), (47, 33135, 33191), (47, 35344, 35400), (47, 37553, 37609), (47, 39762, 39818), (47, 41971, 42027), (47, 44180, 44236), (53, 28090, 28146), (53, 30899, 30955), (53, 33708, 33764), (53, 36517, 36573), (53, 39326, 39382), (53, 42135, 42191), (53, 44944, 45000), (53, 47753, 47809), (53, 50562, 50618)]

def row057_layer003_block000 : List ColouredInterval :=
  [(2, 26624, 26680), (2, 28672, 28728), (2, 30720, 30776), (2, 32768, 32824), (2, 34816, 34872), (2, 36864, 36920), (2, 38912, 38968), (2, 40960, 41016), (2, 28672, 28728), (2, 32768, 32824), (2, 36864, 36920), (2, 40960, 41016), (2, 45056, 45112), (2, 49152, 49208), (2, 32768, 32824), (2, 40960, 41016)]

def row057_layer003_block001 : List ColouredInterval :=
  [(2, 49152, 49208), (2, 32768, 32824), (2, 49152, 49208), (2, 32768, 32824), (3, 26244, 26300), (3, 32805, 32861), (3, 39366, 39422), (3, 39366, 39422), (5, 28125, 28181), (5, 31250, 31306), (5, 34375, 34431), (5, 37500, 37556), (5, 40625, 40681), (5, 43750, 43806), (5, 46875, 46931), (5, 50000, 50056)]

def row057_layer003_block002 : List ColouredInterval :=
  [(5, 31250, 31306), (5, 46875, 46931), (7, 26411, 26467), (7, 28812, 28868), (7, 31213, 31269), (7, 33614, 33670), (7, 36015, 36071), (7, 38416, 38472), (7, 40817, 40873), (7, 43218, 43274), (7, 45619, 45675), (7, 48020, 48076), (7, 33614, 33670), (7, 50421, 50477), (11, 26620, 26676), (11, 29282, 29338)]

def row057_layer003_block003 : List ColouredInterval :=
  [(11, 43923, 43979), (13, 26364, 26420), (13, 28561, 28617), (13, 30758, 30814), (13, 32955, 33011), (13, 35152, 35208), (13, 37349, 37405), (13, 39546, 39602), (13, 41743, 41799), (13, 43940, 43996), (13, 28561, 28617), (17, 29478, 29534), (17, 34391, 34447), (17, 39304, 39360), (17, 44217, 44273), (17, 49130, 49186)]

def row057_layer003_block004 : List ColouredInterval :=
  [(23, 36501, 36557), (23, 48668, 48724), (29, 48778, 48834), (31, 29791, 29847), (37, 26011, 26067), (37, 27380, 27436), (37, 50653, 50709), (41, 26896, 26952), (41, 28577, 28633), (41, 30258, 30314), (41, 31939, 31995), (41, 33620, 33676), (43, 25886, 25942), (43, 27735, 27791), (43, 29584, 29640), (43, 31433, 31489)]

def row057_layer003_block005 : List ColouredInterval :=
  [(43, 33282, 33338), (43, 35131, 35187), (43, 36980, 37036), (47, 26508, 26564), (47, 28717, 28773), (47, 30926, 30982), (47, 33135, 33191), (47, 35344, 35400), (47, 37553, 37609), (47, 39762, 39818), (47, 41971, 42027), (47, 44180, 44236), (53, 28090, 28146), (53, 30899, 30955), (53, 33708, 33764), (53, 36517, 36573)]

def row057_layer003_block006 : List ColouredInterval :=
  [(53, 39326, 39382), (53, 42135, 42191), (53, 44944, 45000), (53, 47753, 47809), (53, 50562, 50618)]

def row057_layer003_chunks : List (List ColouredInterval) :=
  [row057_layer003_block000, row057_layer003_block001, row057_layer003_block002, row057_layer003_block003, row057_layer003_block004, row057_layer003_block005, row057_layer003_block006]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row057_layer003_intervals

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row057_layer003_arithmetic : LayerArithmeticValid row057.height { lower := 25536, upper := 51072, M := 20 } := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row057_layer003_arithmetic

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row057_layer003_enumeration :
    activePowerIntervalList 57 20 25536 51072 = row057_layer003_intervals := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row057_layer003_enumeration

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row057_layer003_pairs000 :
    row057_layer003_block000.all (fun I => row057_layer003_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row057_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row057_layer003_pairs000

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row057_layer003_pairs001 :
    row057_layer003_block001.all (fun I => row057_layer003_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row057_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row057_layer003_pairs001

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row057_layer003_pairs002 :
    row057_layer003_block002.all (fun I => row057_layer003_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row057_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row057_layer003_pairs002

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row057_layer003_pairs003 :
    row057_layer003_block003.all (fun I => row057_layer003_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row057_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row057_layer003_pairs003

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row057_layer003_pairs004 :
    row057_layer003_block004.all (fun I => row057_layer003_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row057_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row057_layer003_pairs004

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row057_layer003_pairs005 :
    row057_layer003_block005.all (fun I => row057_layer003_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row057_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row057_layer003_pairs005

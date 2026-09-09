import research.tasks.«B699-Binomial».runs.«20260909-low-index-structure-b41a5a63».lean.FiniteCover

set_option maxRecDepth 65536
set_option maxHeartbeats 0
set_option exponentiation.threshold 1000000

namespace B699LowIndex

def row056_height : HeightCertificateDatum := { i := 56, r := 18, s := 38, n0Power10 := 13 }

def row056_goods : List GoodSegment := [
  { lower := 114, upper := 168, witness := RowWitness.topPrime 113 },
  { lower := 169, upper := 222, witness := RowWitness.topPrime 167 },
  { lower := 223, upper := 278, witness := RowWitness.topPrime 223 },
  { lower := 279, upper := 332, witness := RowWitness.topPrime 277 },
  { lower := 333, upper := 386, witness := RowWitness.topPrime 331 },
  { lower := 387, upper := 438, witness := RowWitness.topPrime 383 },
  { lower := 439, upper := 494, witness := RowWitness.topPrime 439 },
  { lower := 495, upper := 546, witness := RowWitness.topPrime 491 },
  { lower := 547, upper := 602, witness := RowWitness.topPrime 547 },
  { lower := 603, upper := 656, witness := RowWitness.topPrime 601 },
  { lower := 657, upper := 708, witness := RowWitness.topPrime 653 },
  { lower := 709, upper := 764, witness := RowWitness.topPrime 709 },
  { lower := 765, upper := 816, witness := RowWitness.topPrime 761 },
  { lower := 817, upper := 866, witness := RowWitness.topPrime 811 },
  { lower := 867, upper := 918, witness := RowWitness.topPrime 863 },
  { lower := 919, upper := 974, witness := RowWitness.topPrime 919 },
  { lower := 975, upper := 1026, witness := RowWitness.topPrime 971 },
  { lower := 1027, upper := 1076, witness := RowWitness.topPrime 1021 },
  { lower := 1077, upper := 1124, witness := RowWitness.topPrime 1069 },
  { lower := 1125, upper := 1178, witness := RowWitness.topPrime 1123 },
  { lower := 1179, upper := 1226, witness := RowWitness.topPrime 1171 },
  { lower := 1227, upper := 1278, witness := RowWitness.topPrime 1223 },
  { lower := 1279, upper := 1334, witness := RowWitness.topPrime 1279 },
  { lower := 1335, upper := 1382, witness := RowWitness.topPrime 1327 },
  { lower := 1383, upper := 1436, witness := RowWitness.topPrime 1381 },
  { lower := 1437, upper := 1488, witness := RowWitness.topPrime 1433 },
  { lower := 1489, upper := 1544, witness := RowWitness.topPrime 1489 },
  { lower := 1545, upper := 1598, witness := RowWitness.topPrime 1543 },
  { lower := 1599, upper := 1652, witness := RowWitness.topPrime 1597 },
  { lower := 1653, upper := 1692, witness := RowWitness.topPrime 1637 },
  { lower := 1693, upper := 1748, witness := RowWitness.topPrime 1693 },
  { lower := 1749, upper := 1802, witness := RowWitness.topPrime 1747 },
  { lower := 1803, upper := 1856, witness := RowWitness.topPrime 1801 },
  { lower := 1857, upper := 1902, witness := RowWitness.topPrime 1847 },
  { lower := 1903, upper := 1956, witness := RowWitness.topPrime 1901 },
  { lower := 1957, upper := 2006, witness := RowWitness.topPrime 1951 },
  { lower := 2007, upper := 2058, witness := RowWitness.topPrime 2003 },
  { lower := 2059, upper := 2108, witness := RowWitness.topPrime 2053 },
  { lower := 2109, upper := 2154, witness := RowWitness.topPrime 2099 },
  { lower := 2155, upper := 2208, witness := RowWitness.topPrime 2153 },
  { lower := 2209, upper := 2262, witness := RowWitness.topPrime 2207 },
  { lower := 2263, upper := 2306, witness := RowWitness.topPrime 2251 },
  { lower := 2307, upper := 2352, witness := RowWitness.topPrime 2297 },
  { lower := 2353, upper := 2406, witness := RowWitness.topPrime 2351 },
  { lower := 2407, upper := 2454, witness := RowWitness.topPrime 2399 },
  { lower := 2455, upper := 2502, witness := RowWitness.topPrime 2447 },
  { lower := 2503, upper := 2558, witness := RowWitness.topPrime 2503 },
  { lower := 2559, upper := 2612, witness := RowWitness.topPrime 2557 },
  { lower := 2613, upper := 2664, witness := RowWitness.topPrime 2609 },
  { lower := 2665, upper := 2718, witness := RowWitness.topPrime 2663 },
  { lower := 2719, upper := 2774, witness := RowWitness.topPrime 2719 },
  { lower := 2775, upper := 2822, witness := RowWitness.topPrime 2767 },
  { lower := 2823, upper := 2874, witness := RowWitness.topPrime 2819 },
  { lower := 2875, upper := 2916, witness := RowWitness.topPrime 2861 },
  { lower := 2917, upper := 2972, witness := RowWitness.topPrime 2917 },
  { lower := 2973, upper := 3026, witness := RowWitness.topPrime 2971 },
  { lower := 3027, upper := 3078, witness := RowWitness.topPrime 3023 },
  { lower := 3079, upper := 3097, witness := RowWitness.topPrime 3079 },
  { lower := 3125, upper := 3127, witness := RowWitness.topPrime 3121 },
  { lower := 3146, upper := 3192, witness := RowWitness.topPrime 3137 },
  { lower := 3193, upper := 3234, witness := RowWitness.topPrime 3191 },
  { lower := 3249, upper := 3284, witness := RowWitness.topPrime 3229 },
  { lower := 3285, upper := 3305, witness := RowWitness.topPrime 3271 },
  { lower := 3364, upper := 3416, witness := RowWitness.topPrime 3361 },
  { lower := 3417, upper := 3443, witness := RowWitness.topPrime 3413 },
  { lower := 3500, upper := 3554, witness := RowWitness.topPrime 3499 },
  { lower := 3555, upper := 3564, witness := RowWitness.topPrime 3547 },
  { lower := 3625, upper := 3678, witness := RowWitness.topPrime 3623 },
  { lower := 3679, upper := 3685, witness := RowWitness.topPrime 3677 },
  { lower := 3698, upper := 3700, witness := RowWitness.topPrime 3697 },
  { lower := 3703, upper := 3756, witness := RowWitness.topPrime 3701 },
  { lower := 3757, upper := 3794, witness := RowWitness.topPrime 3739 },
  { lower := 3795, upper := 3806, witness := RowWitness.topPrime 3793 },
  { lower := 3875, upper := 3918, witness := RowWitness.topPrime 3863 },
  { lower := 3919, upper := 3942, witness := RowWitness.topPrime 3919 },
  { lower := 3993, upper := 4026, witness := RowWitness.topPrime 3989 },
  { lower := 4046, upper := 4048, witness := RowWitness.topPrime 4027 },
  { lower := 4056, upper := 4106, witness := RowWitness.topPrime 4051 },
  { lower := 4107, upper := 4154, witness := RowWitness.topPrime 4099 },
  { lower := 4155, upper := 4162, witness := RowWitness.topPrime 4153 },
  { lower := 4225, upper := 4274, witness := RowWitness.topPrime 4219 },
  { lower := 4275, upper := 4280, witness := RowWitness.topPrime 4273 },
  { lower := 4335, upper := 4382, witness := RowWitness.topPrime 4327 },
  { lower := 4383, upper := 4428, witness := RowWitness.topPrime 4373 },
  { lower := 4429, upper := 4449, witness := RowWitness.topPrime 4423 },
  { lower := 4617, upper := 4618, witness := RowWitness.topPrime 4603 },
  { lower := 4624, upper := 4672, witness := RowWitness.topPrime 4621 },
  { lower := 4732, upper := 4748, witness := RowWitness.topPrime 4729 },
  { lower := 4761, upper := 4787, witness := RowWitness.topPrime 4759 },
  { lower := 4802, upper := 4856, witness := RowWitness.topPrime 4801 },
  { lower := 4857, upper := 4857, witness := RowWitness.topPrime 4831 },
  { lower := 4860, upper := 4860, witness := RowWitness.topPrime 4831 },
  { lower := 4901, upper := 4944, witness := RowWitness.topPrime 4889 },
  { lower := 4945, upper := 4956, witness := RowWitness.topPrime 4943 },
  { lower := 5043, upper := 5094, witness := RowWitness.topPrime 5039 },
  { lower := 5095, upper := 5125, witness := RowWitness.topPrime 5087 },
  { lower := 5239, upper := 5257, witness := RowWitness.topPrime 5237 },
  { lower := 5290, upper := 5294, witness := RowWitness.topPrime 5281 },
  { lower := 5324, upper := 5378, witness := RowWitness.topPrime 5323 },
  { lower := 5379, upper := 5379, witness := RowWitness.topPrime 5351 },
  { lower := 5491, upper := 5531, witness := RowWitness.topPrime 5483 },
  { lower := 5589, upper := 5602, witness := RowWitness.topPrime 5581 },
  { lower := 5618, upper := 5646, witness := RowWitness.topPrime 5591 },
  { lower := 5647, upper := 5673, witness := RowWitness.topPrime 5647 },
  { lower := 5776, upper := 5804, witness := RowWitness.topPrime 5749 },
  { lower := 5805, upper := 5856, witness := RowWitness.topPrime 5801 },
  { lower := 5857, upper := 5874, witness := RowWitness.topPrime 5857 },
  { lower := 5887, upper := 5887, witness := RowWitness.topPrime 5881 },
  { lower := 6075, upper := 6124, witness := RowWitness.topPrime 6073 },
  { lower := 6144, upper := 6192, witness := RowWitness.topPrime 6143 },
  { lower := 6348, upper := 6398, witness := RowWitness.topPrime 6343 },
  { lower := 6399, upper := 6403, witness := RowWitness.topPrime 6397 },
  { lower := 6591, upper := 6616, witness := RowWitness.topPrime 6581 },
  { lower := 6627, upper := 6674, witness := RowWitness.topPrime 6619 },
  { lower := 6675, upper := 6702, witness := RowWitness.topPrime 6673 },
  { lower := 6727, upper := 6774, witness := RowWitness.topPrime 6719 },
  { lower := 6775, upper := 6782, witness := RowWitness.topPrime 6763 },
  { lower := 6845, upper := 6896, witness := RowWitness.topPrime 6841 },
  { lower := 6897, upper := 6930, witness := RowWitness.topPrime 6883 },
  { lower := 7220, upper := 7274, witness := RowWitness.topPrime 7219 },
  { lower := 7275, upper := 7275, witness := RowWitness.topPrime 7253 },
  { lower := 7406, upper := 7448, witness := RowWitness.topPrime 7393 },
  { lower := 7449, upper := 7451, witness := RowWitness.topPrime 7433 },
  { lower := 7514, upper := 7555, witness := RowWitness.topPrime 7507 },
  { lower := 7569, upper := 7569, witness := RowWitness.topPrime 7561 },
  { lower := 7581, upper := 7624, witness := RowWitness.topPrime 7577 },
  { lower := 7942, upper := 7992, witness := RowWitness.topPrime 7937 },
  { lower := 7993, upper := 7997, witness := RowWitness.topPrime 7993 },
  { lower := 8019, upper := 8041, witness := RowWitness.topPrime 8017 },
  { lower := 8125, upper := 8147, witness := RowWitness.topPrime 8123 },
  { lower := 8214, upper := 8247, witness := RowWitness.topPrime 8209 },
  { lower := 8410, upper := 8444, witness := RowWitness.topPrime 8389 },
  { lower := 8445, upper := 8482, witness := RowWitness.topPrime 8443 },
  { lower := 8664, upper := 8704, witness := RowWitness.topPrime 8663 },
  { lower := 8750, upper := 8802, witness := RowWitness.topPrime 8747 },
  { lower := 8803, upper := 8805, witness := RowWitness.topPrime 8803 },
  { lower := 8836, upper := 8843, witness := RowWitness.topPrime 8831 },
  { lower := 9025, upper := 9048, witness := RowWitness.topPrime 9013 },
  { lower := 9251, upper := 9296, witness := RowWitness.topPrime 9241 },
  { lower := 9297, upper := 9300, witness := RowWitness.topPrime 9293 },
  { lower := 9386, upper := 9430, witness := RowWitness.topPrime 9377 },
  { lower := 9522, upper := 9532, witness := RowWitness.topPrime 9521 },
  { lower := 9604, upper := 9656, witness := RowWitness.topPrime 9601 },
  { lower := 9657, upper := 9659, witness := RowWitness.topPrime 9649 },
  { lower := 10051, upper := 10055, witness := RowWitness.topPrime 10039 },
  { lower := 10086, upper := 10134, witness := RowWitness.topPrime 10079 },
  { lower := 10135, upper := 10147, witness := RowWitness.topPrime 10133 },
  { lower := 10580, upper := 10622, witness := RowWitness.topPrime 10567 },
  { lower := 10623, upper := 10635, witness := RowWitness.topPrime 10613 },
  { lower := 10648, upper := 10680, witness := RowWitness.topPrime 10639 },
  { lower := 10935, upper := 10964, witness := RowWitness.topPrime 10909 },
  { lower := 10965, upper := 11007, witness := RowWitness.topPrime 10957 },
  { lower := 11094, upper := 11100, witness := RowWitness.topPrime 11093 },
  { lower := 11109, upper := 11148, witness := RowWitness.topPrime 11093 },
  { lower := 11149, upper := 11149, witness := RowWitness.topPrime 11149 },
  { lower := 11250, upper := 11291, witness := RowWitness.topPrime 11243 },
  { lower := 11664, upper := 11693, witness := RowWitness.topPrime 11657 },
  { lower := 11774, upper := 11798, witness := RowWitness.topPrime 11743 },
  { lower := 11799, upper := 11822, witness := RowWitness.topPrime 11789 },
  { lower := 12321, upper := 12343, witness := RowWitness.topPrime 12301 },
  { lower := 12500, upper := 12548, witness := RowWitness.topPrime 12497 },
  { lower := 13125, upper := 13176, witness := RowWitness.topPrime 13121 },
  { lower := 13177, upper := 13177, witness := RowWitness.topPrime 13177 },
  { lower := 13225, upper := 13237, witness := RowWitness.topPrime 13219 },
  { lower := 13254, upper := 13280, witness := RowWitness.topPrime 13249 },
  { lower := 13454, upper := 13506, witness := RowWitness.topPrime 13451 },
  { lower := 13507, upper := 13509, witness := RowWitness.topPrime 13499 },
  { lower := 13718, upper := 13745, witness := RowWitness.topPrime 13711 },
  { lower := 13750, upper := 13773, witness := RowWitness.topPrime 13729 },
  { lower := 14415, upper := 14430, witness := RowWitness.topPrime 14411 },
  { lower := 14792, upper := 14794, witness := RowWitness.topPrime 14783 },
  { lower := 15138, upper := 15184, witness := RowWitness.topPrime 15137 },
  { lower := 15379, upper := 15431, witness := RowWitness.topPrime 15377 },
  { lower := 15979, upper := 16027, witness := RowWitness.topPrime 15973 },
  { lower := 16384, upper := 16392, witness := RowWitness.topPrime 16381 },
  { lower := 16428, upper := 16439, witness := RowWitness.topPrime 16427 },
  { lower := 16807, upper := 16842, witness := RowWitness.topPrime 16787 },
  { lower := 16843, upper := 16875, witness := RowWitness.topPrime 16843 },
  { lower := 17303, upper := 17353, witness := RowWitness.topPrime 17299 },
  { lower := 17672, upper := 17716, witness := RowWitness.topPrime 17669 },
  { lower := 18259, upper := 18280, witness := RowWitness.topPrime 18257 },
  { lower := 18491, upper := 18536, witness := RowWitness.topPrime 18481 },
  { lower := 18537, upper := 18546, witness := RowWitness.topPrime 18523 },
  { lower := 19220, upper := 19221, witness := RowWitness.topPrime 19219 },
  { lower := 19663, upper := 19716, witness := RowWitness.topPrime 19661 },
  { lower := 19717, upper := 19718, witness := RowWitness.topPrime 19717 },
  { lower := 20181, upper := 20232, witness := RowWitness.topPrime 20177 },
  { lower := 20233, upper := 20236, witness := RowWitness.topPrime 20233 },
  { lower := 20577, upper := 20590, witness := RowWitness.topPrime 20563 },
  { lower := 21870, upper := 21918, witness := RowWitness.topPrime 21863 },
  { lower := 21919, upper := 21930, witness := RowWitness.topPrime 21911 },
  { lower := 22103, upper := 22145, witness := RowWitness.topPrime 22093 },
  { lower := 24037, upper := 24084, witness := RowWitness.topPrime 24029 },
  { lower := 24085, upper := 24092, witness := RowWitness.topPrime 24083 },
  { lower := 24334, upper := 24354, witness := RowWitness.topPrime 24329 },
  { lower := 24389, upper := 24389, witness := RowWitness.topPrime 24379 },
  { lower := 24576, upper := 24620, witness := RowWitness.topPrime 24571 },
  { lower := 25289, upper := 25316, witness := RowWitness.topPrime 25261 },
  { lower := 25317, upper := 25336, witness := RowWitness.topPrime 25309 },
  { lower := 28125, upper := 28145, witness := RowWitness.topPrime 28123 },
  { lower := 28577, upper := 28616, witness := RowWitness.topPrime 28573 },
  { lower := 28749, upper := 28772, witness := RowWitness.topPrime 28729 },
  { lower := 30618, upper := 30648, witness := RowWitness.topPrime 30593 },
  { lower := 30649, upper := 30668, witness := RowWitness.topPrime 30649 },
  { lower := 30926, upper := 30954, witness := RowWitness.topPrime 30911 },
  { lower := 31487, upper := 31488, witness := RowWitness.topPrime 31481 },
  { lower := 32805, upper := 32823, witness := RowWitness.topPrime 32803 },
  { lower := 33620, upper := 33669, witness := RowWitness.topPrime 33619 },
  { lower := 34391, upper := 34430, witness := RowWitness.topPrime 34381 },
  { lower := 35152, upper := 35186, witness := RowWitness.topPrime 35149 },
  { lower := 35344, upper := 35356, witness := RowWitness.topPrime 35339 },
  { lower := 36517, upper := 36552, witness := RowWitness.topPrime 36497 },
  { lower := 36553, upper := 36556, witness := RowWitness.topPrime 36551 },
  { lower := 36982, upper := 37034, witness := RowWitness.topPrime 36979 },
  { lower := 37035, upper := 37035, witness := RowWitness.topPrime 37021 },
  { lower := 37553, upper := 37555, witness := RowWitness.topPrime 37549 },
  { lower := 39326, upper := 39359, witness := RowWitness.topPrime 39323 },
  { lower := 39366, upper := 39381, witness := RowWitness.topPrime 39359 },
  { lower := 40678, upper := 40680, witness := RowWitness.topPrime 40639 },
  { lower := 43750, upper := 43776, witness := RowWitness.topPrime 43721 },
  { lower := 43777, upper := 43795, witness := RowWitness.topPrime 43777 },
  { lower := 43940, upper := 43978, witness := RowWitness.topPrime 43933 },
  { lower := 44217, upper := 44235, witness := RowWitness.topPrime 44207 },
  { lower := 58989, upper := 59011, witness := RowWitness.topPrime 58979 },
  { lower := 65625, upper := 65665, witness := RowWitness.topPrime 65617 },
  { lower := 73205, upper := 73222, witness := RowWitness.topPrime 73189 }
]

def row056_layers : List CoverLayer := [
  { lower := 3080, upper := 6160, M := 31 },
  { lower := 6160, upper := 12320, M := 28 },
  { lower := 12320, upper := 24640, M := 25 },
  { lower := 24640, upper := 49280, M := 23 },
  { lower := 49280, upper := 98560, M := 21 },
  { lower := 98560, upper := 197120, M := 19 },
  { lower := 197120, upper := 394240, M := 17 },
  { lower := 394240, upper := 788480, M := 15 },
  { lower := 788480, upper := 1576960, M := 14 },
  { lower := 1576960, upper := 3153920, M := 12 },
  { lower := 3153920, upper := 6307840, M := 11 },
  { lower := 6307840, upper := 12615680, M := 10 },
  { lower := 12615680, upper := 25231360, M := 9 },
  { lower := 25231360, upper := 50462720, M := 8 },
  { lower := 50462720, upper := 100925440, M := 7 },
  { lower := 100925440, upper := 201850880, M := 7 },
  { lower := 201850880, upper := 403701760, M := 6 },
  { lower := 403701760, upper := 807403520, M := 5 },
  { lower := 807403520, upper := 1614807040, M := 5 },
  { lower := 1614807040, upper := 3229614080, M := 5 },
  { lower := 3229614080, upper := 6459228160, M := 4 },
  { lower := 6459228160, upper := 12918456320, M := 4 },
  { lower := 12918456320, upper := 25836912640, M := 3 },
  { lower := 25836912640, upper := 51673825280, M := 3 },
  { lower := 51673825280, upper := 103347650560, M := 3 },
  { lower := 103347650560, upper := 206695301120, M := 3 },
  { lower := 206695301120, upper := 413390602240, M := 2 },
  { lower := 413390602240, upper := 826781204480, M := 2 },
  { lower := 826781204480, upper := 1653562408960, M := 2 },
  { lower := 1653562408960, upper := 3307124817920, M := 2 },
  { lower := 3307124817920, upper := 6614249635840, M := 2 },
  { lower := 6614249635840, upper := 10000000000000, M := 2 }
]

def row056 : FiniteCoverRow := {
  height := row056_height,
  goods := row056_goods,
  layers := row056_layers
}

theorem row056_registered :
    decide (row056.height ∈ heightCertificateData) = true := by
  decide +kernel

theorem row056_goods_checked :
    row056.goods.all (goodSegmentCheck row056.height.i row056.height.r row056.height.s) = true := by
  decide +kernel

theorem row056_small_checked :
    coverCheck (2 * row056.height.i + 2) (row056.height.i * (row056.height.i - 1) - 1)
      (row056.goods.map goodSegmentBounds) = true := by
  decide +kernel

theorem row056_layerCover_checked :
    coverCheck (row056.height.i * (row056.height.i - 1)) (row056.height.n0 - 1)
      (row056.layers.map CoverLayer.bounds) = true := by
  decide +kernel

theorem row056_layer000_checked :
    coverLayerCheck row056.height row056.goods { lower := 3080, upper := 6160, M := 31 } = true := by
  decide +kernel

theorem row056_layer001_checked :
    coverLayerCheck row056.height row056.goods { lower := 6160, upper := 12320, M := 28 } = true := by
  decide +kernel

theorem row056_layer002_checked :
    coverLayerCheck row056.height row056.goods { lower := 12320, upper := 24640, M := 25 } = true := by
  decide +kernel

theorem row056_layer003_checked :
    coverLayerCheck row056.height row056.goods { lower := 24640, upper := 49280, M := 23 } = true := by
  decide +kernel

theorem row056_layer004_checked :
    coverLayerCheck row056.height row056.goods { lower := 49280, upper := 98560, M := 21 } = true := by
  decide +kernel

theorem row056_layer005_checked :
    coverLayerCheck row056.height row056.goods { lower := 98560, upper := 197120, M := 19 } = true := by
  decide +kernel

theorem row056_layer006_checked :
    coverLayerCheck row056.height row056.goods { lower := 197120, upper := 394240, M := 17 } = true := by
  decide +kernel

theorem row056_layer007_checked :
    coverLayerCheck row056.height row056.goods { lower := 394240, upper := 788480, M := 15 } = true := by
  decide +kernel

theorem row056_layer008_checked :
    coverLayerCheck row056.height row056.goods { lower := 788480, upper := 1576960, M := 14 } = true := by
  decide +kernel

theorem row056_layer009_checked :
    coverLayerCheck row056.height row056.goods { lower := 1576960, upper := 3153920, M := 12 } = true := by
  decide +kernel

theorem row056_layer010_checked :
    coverLayerCheck row056.height row056.goods { lower := 3153920, upper := 6307840, M := 11 } = true := by
  decide +kernel

theorem row056_layer011_checked :
    coverLayerCheck row056.height row056.goods { lower := 6307840, upper := 12615680, M := 10 } = true := by
  decide +kernel

theorem row056_layer012_checked :
    coverLayerCheck row056.height row056.goods { lower := 12615680, upper := 25231360, M := 9 } = true := by
  decide +kernel

theorem row056_layer013_checked :
    coverLayerCheck row056.height row056.goods { lower := 25231360, upper := 50462720, M := 8 } = true := by
  decide +kernel

theorem row056_layer014_checked :
    coverLayerCheck row056.height row056.goods { lower := 50462720, upper := 100925440, M := 7 } = true := by
  decide +kernel

theorem row056_layer015_checked :
    coverLayerCheck row056.height row056.goods { lower := 100925440, upper := 201850880, M := 7 } = true := by
  decide +kernel

theorem row056_layer016_checked :
    coverLayerCheck row056.height row056.goods { lower := 201850880, upper := 403701760, M := 6 } = true := by
  decide +kernel

theorem row056_layer017_checked :
    coverLayerCheck row056.height row056.goods { lower := 403701760, upper := 807403520, M := 5 } = true := by
  decide +kernel

theorem row056_layer018_checked :
    coverLayerCheck row056.height row056.goods { lower := 807403520, upper := 1614807040, M := 5 } = true := by
  decide +kernel

theorem row056_layer019_checked :
    coverLayerCheck row056.height row056.goods { lower := 1614807040, upper := 3229614080, M := 5 } = true := by
  decide +kernel

theorem row056_layer020_checked :
    coverLayerCheck row056.height row056.goods { lower := 3229614080, upper := 6459228160, M := 4 } = true := by
  decide +kernel

theorem row056_layer021_checked :
    coverLayerCheck row056.height row056.goods { lower := 6459228160, upper := 12918456320, M := 4 } = true := by
  decide +kernel

theorem row056_layer022_checked :
    coverLayerCheck row056.height row056.goods { lower := 12918456320, upper := 25836912640, M := 3 } = true := by
  decide +kernel

theorem row056_layer023_checked :
    coverLayerCheck row056.height row056.goods { lower := 25836912640, upper := 51673825280, M := 3 } = true := by
  decide +kernel

theorem row056_layer024_checked :
    coverLayerCheck row056.height row056.goods { lower := 51673825280, upper := 103347650560, M := 3 } = true := by
  decide +kernel

theorem row056_layer025_checked :
    coverLayerCheck row056.height row056.goods { lower := 103347650560, upper := 206695301120, M := 3 } = true := by
  decide +kernel

theorem row056_layer026_checked :
    coverLayerCheck row056.height row056.goods { lower := 206695301120, upper := 413390602240, M := 2 } = true := by
  decide +kernel

theorem row056_layer027_checked :
    coverLayerCheck row056.height row056.goods { lower := 413390602240, upper := 826781204480, M := 2 } = true := by
  decide +kernel

theorem row056_layer028_checked :
    coverLayerCheck row056.height row056.goods { lower := 826781204480, upper := 1653562408960, M := 2 } = true := by
  decide +kernel

theorem row056_layer029_checked :
    coverLayerCheck row056.height row056.goods { lower := 1653562408960, upper := 3307124817920, M := 2 } = true := by
  decide +kernel

theorem row056_layer030_checked :
    coverLayerCheck row056.height row056.goods { lower := 3307124817920, upper := 6614249635840, M := 2 } = true := by
  decide +kernel

theorem row056_layer031_checked :
    coverLayerCheck row056.height row056.goods { lower := 6614249635840, upper := 10000000000000, M := 2 } = true := by
  decide +kernel

theorem row056_layers_checked :
    row056.layers.all (coverLayerCheck row056.height row056.goods) = true := by
  change List.all [
    { lower := 3080, upper := 6160, M := 31 },
    { lower := 6160, upper := 12320, M := 28 },
    { lower := 12320, upper := 24640, M := 25 },
    { lower := 24640, upper := 49280, M := 23 },
    { lower := 49280, upper := 98560, M := 21 },
    { lower := 98560, upper := 197120, M := 19 },
    { lower := 197120, upper := 394240, M := 17 },
    { lower := 394240, upper := 788480, M := 15 },
    { lower := 788480, upper := 1576960, M := 14 },
    { lower := 1576960, upper := 3153920, M := 12 },
    { lower := 3153920, upper := 6307840, M := 11 },
    { lower := 6307840, upper := 12615680, M := 10 },
    { lower := 12615680, upper := 25231360, M := 9 },
    { lower := 25231360, upper := 50462720, M := 8 },
    { lower := 50462720, upper := 100925440, M := 7 },
    { lower := 100925440, upper := 201850880, M := 7 },
    { lower := 201850880, upper := 403701760, M := 6 },
    { lower := 403701760, upper := 807403520, M := 5 },
    { lower := 807403520, upper := 1614807040, M := 5 },
    { lower := 1614807040, upper := 3229614080, M := 5 },
    { lower := 3229614080, upper := 6459228160, M := 4 },
    { lower := 6459228160, upper := 12918456320, M := 4 },
    { lower := 12918456320, upper := 25836912640, M := 3 },
    { lower := 25836912640, upper := 51673825280, M := 3 },
    { lower := 51673825280, upper := 103347650560, M := 3 },
    { lower := 103347650560, upper := 206695301120, M := 3 },
    { lower := 206695301120, upper := 413390602240, M := 2 },
    { lower := 413390602240, upper := 826781204480, M := 2 },
    { lower := 826781204480, upper := 1653562408960, M := 2 },
    { lower := 1653562408960, upper := 3307124817920, M := 2 },
    { lower := 3307124817920, upper := 6614249635840, M := 2 },
    { lower := 6614249635840, upper := 10000000000000, M := 2 }
  ] (coverLayerCheck row056.height row056.goods) = true
  simp only [List.all_cons, List.all_nil,
    row056_layer000_checked,
    row056_layer001_checked,
    row056_layer002_checked,
    row056_layer003_checked,
    row056_layer004_checked,
    row056_layer005_checked,
    row056_layer006_checked,
    row056_layer007_checked,
    row056_layer008_checked,
    row056_layer009_checked,
    row056_layer010_checked,
    row056_layer011_checked,
    row056_layer012_checked,
    row056_layer013_checked,
    row056_layer014_checked,
    row056_layer015_checked,
    row056_layer016_checked,
    row056_layer017_checked,
    row056_layer018_checked,
    row056_layer019_checked,
    row056_layer020_checked,
    row056_layer021_checked,
    row056_layer022_checked,
    row056_layer023_checked,
    row056_layer024_checked,
    row056_layer025_checked,
    row056_layer026_checked,
    row056_layer027_checked,
    row056_layer028_checked,
    row056_layer029_checked,
    row056_layer030_checked,
    row056_layer031_checked,
    Bool.true_and]

theorem row056_checked : finiteCoverRowCheck row056 = true := by
  simp only [finiteCoverRowCheck, row056_registered, row056_goods_checked,
    row056_small_checked, row056_layerCover_checked, row056_layers_checked,
    Bool.true_and]

#print axioms B699LowIndex.row056_checked

end B699LowIndex

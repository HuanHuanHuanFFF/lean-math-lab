import research.tasks.«B699-Binomial».runs.«20260909-low-index-structure-b41a5a63».lean.FiniteCover

set_option maxRecDepth 65536
set_option maxHeartbeats 0
set_option exponentiation.threshold 1000000

namespace B699LowIndex

def row093_height : HeightCertificateDatum := { i := 93, r := 30, s := 65, n0Power10 := 9 }

def row093_goods : List GoodSegment := [
  { lower := 188, upper := 273, witness := RowWitness.topPrime 181 },
  { lower := 274, upper := 363, witness := RowWitness.topPrime 271 },
  { lower := 364, upper := 451, witness := RowWitness.topPrime 359 },
  { lower := 452, upper := 541, witness := RowWitness.topPrime 449 },
  { lower := 542, upper := 633, witness := RowWitness.topPrime 541 },
  { lower := 634, upper := 723, witness := RowWitness.topPrime 631 },
  { lower := 724, upper := 811, witness := RowWitness.topPrime 719 },
  { lower := 812, upper := 903, witness := RowWitness.topPrime 811 },
  { lower := 904, upper := 979, witness := RowWitness.topPrime 887 },
  { lower := 980, upper := 1069, witness := RowWitness.topPrime 977 },
  { lower := 1070, upper := 1161, witness := RowWitness.topPrime 1069 },
  { lower := 1162, upper := 1245, witness := RowWitness.topPrime 1153 },
  { lower := 1246, upper := 1329, witness := RowWitness.topPrime 1237 },
  { lower := 1330, upper := 1419, witness := RowWitness.topPrime 1327 },
  { lower := 1420, upper := 1501, witness := RowWitness.topPrime 1409 },
  { lower := 1502, upper := 1591, witness := RowWitness.topPrime 1499 },
  { lower := 1592, upper := 1675, witness := RowWitness.topPrime 1583 },
  { lower := 1676, upper := 1761, witness := RowWitness.topPrime 1669 },
  { lower := 1762, upper := 1851, witness := RowWitness.topPrime 1759 },
  { lower := 1852, upper := 1939, witness := RowWitness.topPrime 1847 },
  { lower := 1940, upper := 2025, witness := RowWitness.topPrime 1933 },
  { lower := 2026, upper := 2109, witness := RowWitness.topPrime 2017 },
  { lower := 2110, upper := 2191, witness := RowWitness.topPrime 2099 },
  { lower := 2192, upper := 2271, witness := RowWitness.topPrime 2179 },
  { lower := 2272, upper := 2361, witness := RowWitness.topPrime 2269 },
  { lower := 2362, upper := 2449, witness := RowWitness.topPrime 2357 },
  { lower := 2450, upper := 2539, witness := RowWitness.topPrime 2447 },
  { lower := 2540, upper := 2631, witness := RowWitness.topPrime 2539 },
  { lower := 2632, upper := 2713, witness := RowWitness.topPrime 2621 },
  { lower := 2714, upper := 2805, witness := RowWitness.topPrime 2713 },
  { lower := 2806, upper := 2895, witness := RowWitness.topPrime 2803 },
  { lower := 2896, upper := 2979, witness := RowWitness.topPrime 2887 },
  { lower := 2980, upper := 3063, witness := RowWitness.topPrime 2971 },
  { lower := 3064, upper := 3153, witness := RowWitness.topPrime 3061 },
  { lower := 3154, upper := 3229, witness := RowWitness.topPrime 3137 },
  { lower := 3230, upper := 3321, witness := RowWitness.topPrime 3229 },
  { lower := 3322, upper := 3411, witness := RowWitness.topPrime 3319 },
  { lower := 3412, upper := 3499, witness := RowWitness.topPrime 3407 },
  { lower := 3500, upper := 3591, witness := RowWitness.topPrime 3499 },
  { lower := 3592, upper := 3675, witness := RowWitness.topPrime 3583 },
  { lower := 3676, upper := 3765, witness := RowWitness.topPrime 3673 },
  { lower := 3766, upper := 3853, witness := RowWitness.topPrime 3761 },
  { lower := 3854, upper := 3945, witness := RowWitness.topPrime 3853 },
  { lower := 3946, upper := 4035, witness := RowWitness.topPrime 3943 },
  { lower := 4036, upper := 4119, witness := RowWitness.topPrime 4027 },
  { lower := 4120, upper := 4203, witness := RowWitness.topPrime 4111 },
  { lower := 4204, upper := 4293, witness := RowWitness.topPrime 4201 },
  { lower := 4294, upper := 4381, witness := RowWitness.topPrime 4289 },
  { lower := 4382, upper := 4465, witness := RowWitness.topPrime 4373 },
  { lower := 4466, upper := 4555, witness := RowWitness.topPrime 4463 },
  { lower := 4556, upper := 4641, witness := RowWitness.topPrime 4549 },
  { lower := 4642, upper := 4731, witness := RowWitness.topPrime 4639 },
  { lower := 4732, upper := 4821, witness := RowWitness.topPrime 4729 },
  { lower := 4822, upper := 4909, witness := RowWitness.topPrime 4817 },
  { lower := 4910, upper := 5001, witness := RowWitness.topPrime 4909 },
  { lower := 5002, upper := 5091, witness := RowWitness.topPrime 4999 },
  { lower := 5092, upper := 5179, witness := RowWitness.topPrime 5087 },
  { lower := 5180, upper := 5271, witness := RowWitness.topPrime 5179 },
  { lower := 5272, upper := 5353, witness := RowWitness.topPrime 5261 },
  { lower := 5354, upper := 5443, witness := RowWitness.topPrime 5351 },
  { lower := 5444, upper := 5535, witness := RowWitness.topPrime 5443 },
  { lower := 5536, upper := 5623, witness := RowWitness.topPrime 5531 },
  { lower := 5624, upper := 5715, witness := RowWitness.topPrime 5623 },
  { lower := 5716, upper := 5803, witness := RowWitness.topPrime 5711 },
  { lower := 5804, upper := 5893, witness := RowWitness.topPrime 5801 },
  { lower := 5894, upper := 5973, witness := RowWitness.topPrime 5881 },
  { lower := 5974, upper := 6045, witness := RowWitness.topPrime 5953 },
  { lower := 6046, upper := 6135, witness := RowWitness.topPrime 6043 },
  { lower := 6136, upper := 6225, witness := RowWitness.topPrime 6133 },
  { lower := 6226, upper := 6313, witness := RowWitness.topPrime 6221 },
  { lower := 6314, upper := 6403, witness := RowWitness.topPrime 6311 },
  { lower := 6404, upper := 6489, witness := RowWitness.topPrime 6397 },
  { lower := 6490, upper := 6573, witness := RowWitness.topPrime 6481 },
  { lower := 6574, upper := 6663, witness := RowWitness.topPrime 6571 },
  { lower := 6664, upper := 6753, witness := RowWitness.topPrime 6661 },
  { lower := 6754, upper := 6829, witness := RowWitness.topPrime 6737 },
  { lower := 6830, upper := 6921, witness := RowWitness.topPrime 6829 },
  { lower := 6922, upper := 7009, witness := RowWitness.topPrime 6917 },
  { lower := 7010, upper := 7093, witness := RowWitness.topPrime 7001 },
  { lower := 7094, upper := 7171, witness := RowWitness.topPrime 7079 },
  { lower := 7172, upper := 7251, witness := RowWitness.topPrime 7159 },
  { lower := 7252, upper := 7339, witness := RowWitness.topPrime 7247 },
  { lower := 7340, upper := 7425, witness := RowWitness.topPrime 7333 },
  { lower := 7426, upper := 7509, witness := RowWitness.topPrime 7417 },
  { lower := 7510, upper := 7599, witness := RowWitness.topPrime 7507 },
  { lower := 7600, upper := 7683, witness := RowWitness.topPrime 7591 },
  { lower := 7684, upper := 7773, witness := RowWitness.topPrime 7681 },
  { lower := 7774, upper := 7851, witness := RowWitness.topPrime 7759 },
  { lower := 7852, upper := 7933, witness := RowWitness.topPrime 7841 },
  { lower := 7934, upper := 8025, witness := RowWitness.topPrime 7933 },
  { lower := 8026, upper := 8109, witness := RowWitness.topPrime 8017 },
  { lower := 8110, upper := 8193, witness := RowWitness.topPrime 8101 },
  { lower := 8194, upper := 8283, witness := RowWitness.topPrime 8191 },
  { lower := 8284, upper := 8365, witness := RowWitness.topPrime 8273 },
  { lower := 8366, upper := 8455, witness := RowWitness.topPrime 8363 },
  { lower := 8456, upper := 8539, witness := RowWitness.topPrime 8447 },
  { lower := 8540, upper := 8555, witness := RowWitness.topPrime 8539 },
  { lower := 8748, upper := 8839, witness := RowWitness.topPrime 8747 },
  { lower := 8840, upper := 8880, witness := RowWitness.topPrime 8839 },
  { lower := 8993, upper := 9063, witness := RowWitness.topPrime 8971 },
  { lower := 9064, upper := 9070, witness := RowWitness.topPrime 9059 },
  { lower := 9245, upper := 9333, witness := RowWitness.topPrime 9241 },
  { lower := 9334, upper := 9343, witness := RowWitness.topPrime 9323 },
  { lower := 9375, upper := 9409, witness := RowWitness.topPrime 9371 },
  { lower := 9583, upper := 9643, witness := RowWitness.topPrime 9551 },
  { lower := 9644, upper := 9675, witness := RowWitness.topPrime 9643 },
  { lower := 10051, upper := 10131, witness := RowWitness.topPrime 10039 },
  { lower := 10132, upper := 10178, witness := RowWitness.topPrime 10111 },
  { lower := 10625, upper := 10705, witness := RowWitness.topPrime 10613 },
  { lower := 10706, upper := 10740, witness := RowWitness.topPrime 10691 },
  { lower := 10935, upper := 11001, witness := RowWitness.topPrime 10909 },
  { lower := 11002, upper := 11077, witness := RowWitness.topPrime 10993 },
  { lower := 11094, upper := 11185, witness := RowWitness.topPrime 11093 },
  { lower := 11186, upper := 11201, witness := RowWitness.topPrime 11177 },
  { lower := 11236, upper := 11305, witness := RowWitness.topPrime 11213 },
  { lower := 11306, upper := 11342, witness := RowWitness.topPrime 11299 },
  { lower := 11774, upper := 11835, witness := RowWitness.topPrime 11743 },
  { lower := 11836, upper := 11866, witness := RowWitness.topPrime 11833 },
  { lower := 12005, upper := 12071, witness := RowWitness.topPrime 11987 },
  { lower := 12321, upper := 12380, witness := RowWitness.topPrime 12301 },
  { lower := 12500, upper := 12574, witness := RowWitness.topPrime 12497 },
  { lower := 13125, upper := 13213, witness := RowWitness.topPrime 13121 },
  { lower := 13214, upper := 13217, witness := RowWitness.topPrime 13187 },
  { lower := 13254, upper := 13274, witness := RowWitness.topPrime 13249 },
  { lower := 13310, upper := 13401, witness := RowWitness.topPrime 13309 },
  { lower := 13402, upper := 13402, witness := RowWitness.topPrime 13399 },
  { lower := 13456, upper := 13543, witness := RowWitness.topPrime 13451 },
  { lower := 13544, upper := 13548, witness := RowWitness.topPrime 13537 },
  { lower := 13718, upper := 13803, witness := RowWitness.topPrime 13711 },
  { lower := 13804, upper := 13842, witness := RowWitness.topPrime 13799 },
  { lower := 14336, upper := 14419, witness := RowWitness.topPrime 14327 },
  { lower := 14420, upper := 14467, witness := RowWitness.topPrime 14419 },
  { lower := 14792, upper := 14831, witness := RowWitness.topPrime 14783 },
  { lower := 14884, upper := 14884, witness := RowWitness.topPrime 14879 },
  { lower := 15123, upper := 15213, witness := RowWitness.topPrime 15121 },
  { lower := 15214, upper := 15221, witness := RowWitness.topPrime 15199 },
  { lower := 15360, upper := 15451, witness := RowWitness.topPrime 15359 },
  { lower := 15452, upper := 15452, witness := RowWitness.topPrime 15451 },
  { lower := 15463, upper := 15471, witness := RowWitness.topPrime 15461 },
  { lower := 15979, upper := 16065, witness := RowWitness.topPrime 15973 },
  { lower := 16066, upper := 16071, witness := RowWitness.topPrime 16063 },
  { lower := 16428, upper := 16476, witness := RowWitness.topPrime 16427 },
  { lower := 16810, upper := 16879, witness := RowWitness.topPrime 16787 },
  { lower := 16880, upper := 16912, witness := RowWitness.topPrime 16879 },
  { lower := 17408, upper := 17493, witness := RowWitness.topPrime 17401 },
  { lower := 17494, upper := 17497, witness := RowWitness.topPrime 17491 },
  { lower := 18490, upper := 18573, witness := RowWitness.topPrime 18481 },
  { lower := 18574, upper := 18582, witness := RowWitness.topPrime 18553 },
  { lower := 18634, upper := 18697, witness := RowWitness.topPrime 18617 },
  { lower := 18723, upper := 18726, witness := RowWitness.topPrime 18719 },
  { lower := 18750, upper := 18815, witness := RowWitness.topPrime 18749 },
  { lower := 19208, upper := 19258, witness := RowWitness.topPrime 19207 },
  { lower := 19663, upper := 19753, witness := RowWitness.topPrime 19661 },
  { lower := 19754, upper := 19755, witness := RowWitness.topPrime 19753 },
  { lower := 19773, upper := 19775, witness := RowWitness.topPrime 19763 },
  { lower := 19965, upper := 19973, witness := RowWitness.topPrime 19963 },
  { lower := 20172, upper := 20253, witness := RowWitness.topPrime 20161 },
  { lower := 20254, upper := 20256, witness := RowWitness.topPrime 20249 },
  { lower := 20535, upper := 20572, witness := RowWitness.topPrime 20533 },
  { lower := 20577, upper := 20627, witness := RowWitness.topPrime 20563 },
  { lower := 20667, upper := 20669, witness := RowWitness.topPrime 20663 },
  { lower := 21316, upper := 21388, witness := RowWitness.topPrime 21313 },
  { lower := 21875, upper := 21963, witness := RowWitness.topPrime 21871 },
  { lower := 21964, upper := 21967, witness := RowWitness.topPrime 21961 },
  { lower := 21970, upper := 21996, witness := RowWitness.topPrime 21961 },
  { lower := 22472, upper := 22561, witness := RowWitness.topPrime 22469 },
  { lower := 22562, upper := 22564, witness := RowWitness.topPrime 22549 },
  { lower := 24010, upper := 24099, witness := RowWitness.topPrime 24007 },
  { lower := 24100, upper := 24102, witness := RowWitness.topPrime 24097 },
  { lower := 24334, upper := 24421, witness := RowWitness.topPrime 24329 },
  { lower := 24422, upper := 24459, witness := RowWitness.topPrime 24421 },
  { lower := 24576, upper := 24663, witness := RowWitness.topPrime 24571 },
  { lower := 24664, upper := 24668, witness := RowWitness.topPrime 24659 },
  { lower := 25000, upper := 25056, witness := RowWitness.topPrime 24989 },
  { lower := 25215, upper := 25281, witness := RowWitness.topPrime 25189 },
  { lower := 25282, upper := 25353, witness := RowWitness.topPrime 25261 },
  { lower := 25354, upper := 25373, witness := RowWitness.topPrime 25349 },
  { lower := 26047, upper := 26103, witness := RowWitness.topPrime 26041 },
  { lower := 26411, upper := 26456, witness := RowWitness.topPrime 26407 },
  { lower := 26645, upper := 26716, witness := RowWitness.topPrime 26641 },
  { lower := 26934, upper := 26988, witness := RowWitness.topPrime 26927 },
  { lower := 28125, upper := 28182, witness := RowWitness.topPrime 28123 },
  { lower := 28577, upper := 28653, witness := RowWitness.topPrime 28573 },
  { lower := 28717, upper := 28764, witness := RowWitness.topPrime 28711 },
  { lower := 30258, upper := 30338, witness := RowWitness.topPrime 30253 },
  { lower := 30758, upper := 30812, witness := RowWitness.topPrime 30757 },
  { lower := 30926, upper := 30991, witness := RowWitness.topPrime 30911 },
  { lower := 31213, upper := 31285, witness := RowWitness.topPrime 31193 },
  { lower := 31286, upper := 31305, witness := RowWitness.topPrime 31277 },
  { lower := 31329, upper := 31342, witness := RowWitness.topPrime 31327 },
  { lower := 31433, upper := 31489, witness := RowWitness.topPrime 31397 },
  { lower := 31490, upper := 31515, witness := RowWitness.topPrime 31489 },
  { lower := 31974, upper := 32031, witness := RowWitness.topPrime 31973 },
  { lower := 32805, upper := 32860, witness := RowWitness.topPrime 32803 },
  { lower := 34375, upper := 34387, witness := RowWitness.topPrime 34369 },
  { lower := 34391, upper := 34473, witness := RowWitness.topPrime 34381 },
  { lower := 34474, upper := 34483, witness := RowWitness.topPrime 34471 },
  { lower := 35344, upper := 35379, witness := RowWitness.topPrime 35339 },
  { lower := 36517, upper := 36589, witness := RowWitness.topPrime 36497 },
  { lower := 36590, upper := 36593, witness := RowWitness.topPrime 36587 },
  { lower := 37500, upper := 37538, witness := RowWitness.topPrime 37493 },
  { lower := 39326, upper := 39415, witness := RowWitness.topPrime 39323 },
  { lower := 39416, upper := 39418, witness := RowWitness.topPrime 39409 },
  { lower := 40401, upper := 40420, witness := RowWitness.topPrime 40387 },
  { lower := 40960, upper := 41023, witness := RowWitness.topPrime 40949 },
  { lower := 43750, upper := 43779, witness := RowWitness.topPrime 43721 },
  { lower := 44944, upper := 44982, witness := RowWitness.topPrime 44939 },
  { lower := 48013, upper := 48053, witness := RowWitness.topPrime 47981 },
  { lower := 48734, upper := 48760, witness := RowWitness.topPrime 48733 },
  { lower := 48778, upper := 48826, witness := RowWitness.topPrime 48767 },
  { lower := 49152, upper := 49222, witness := RowWitness.topPrime 49139 },
  { lower := 50000, upper := 50020, witness := RowWitness.topPrime 49999 },
  { lower := 50421, upper := 50502, witness := RowWitness.topPrime 50417 },
  { lower := 53290, upper := 53340, witness := RowWitness.topPrime 53281 },
  { lower := 55451, upper := 55533, witness := RowWitness.topPrime 55441 },
  { lower := 55534, upper := 55539, witness := RowWitness.topPrime 55529 },
  { lower := 58619, upper := 58656, witness := RowWitness.topPrime 58613 },
  { lower := 62500, upper := 62502, witness := RowWitness.topPrime 62497 },
  { lower := 63948, upper := 63961, witness := RowWitness.topPrime 63929 },
  { lower := 65536, upper := 65613, witness := RowWitness.topPrime 65521 },
  { lower := 65614, upper := 65625, witness := RowWitness.topPrime 65609 },
  { lower := 68651, upper := 68682, witness := RowWitness.topPrime 68639 },
  { lower := 68921, upper := 68982, witness := RowWitness.topPrime 68917 },
  { lower := 73205, upper := 73259, witness := RowWitness.topPrime 73189 },
  { lower := 146410, upper := 146426, witness := RowWitness.topPrime 146407 }
]

def row093_layers : List CoverLayer := [
  { lower := 8556, upper := 17112, M := 23 },
  { lower := 17112, upper := 34224, M := 19 },
  { lower := 34224, upper := 68448, M := 16 },
  { lower := 68448, upper := 136896, M := 13 },
  { lower := 136896, upper := 273792, M := 11 },
  { lower := 273792, upper := 547584, M := 9 },
  { lower := 547584, upper := 1095168, M := 7 },
  { lower := 1095168, upper := 2190336, M := 6 },
  { lower := 2190336, upper := 4380672, M := 5 },
  { lower := 4380672, upper := 8761344, M := 4 },
  { lower := 8761344, upper := 17522688, M := 4 },
  { lower := 17522688, upper := 35045376, M := 3 },
  { lower := 35045376, upper := 70090752, M := 3 },
  { lower := 70090752, upper := 140181504, M := 2 },
  { lower := 140181504, upper := 280363008, M := 2 },
  { lower := 280363008, upper := 560726016, M := 2 },
  { lower := 560726016, upper := 1000000000, M := 1 }
]

def row093 : FiniteCoverRow := {
  height := row093_height,
  goods := row093_goods,
  layers := row093_layers
}

theorem row093_registered :
    decide (row093.height ∈ heightCertificateData) = true := by
  decide +kernel

theorem row093_goods_checked :
    row093.goods.all (goodSegmentCheck row093.height.i row093.height.r row093.height.s) = true := by
  decide +kernel

theorem row093_small_checked :
    coverCheck (2 * row093.height.i + 2) (row093.height.i * (row093.height.i - 1) - 1)
      (row093.goods.map goodSegmentBounds) = true := by
  decide +kernel

theorem row093_layerCover_checked :
    coverCheck (row093.height.i * (row093.height.i - 1)) (row093.height.n0 - 1)
      (row093.layers.map CoverLayer.bounds) = true := by
  decide +kernel

theorem row093_layer000_checked :
    coverLayerCheck row093.height row093.goods { lower := 8556, upper := 17112, M := 23 } = true := by
  decide +kernel

theorem row093_layer001_checked :
    coverLayerCheck row093.height row093.goods { lower := 17112, upper := 34224, M := 19 } = true := by
  decide +kernel

theorem row093_layer002_checked :
    coverLayerCheck row093.height row093.goods { lower := 34224, upper := 68448, M := 16 } = true := by
  decide +kernel

theorem row093_layer003_checked :
    coverLayerCheck row093.height row093.goods { lower := 68448, upper := 136896, M := 13 } = true := by
  decide +kernel

theorem row093_layer004_checked :
    coverLayerCheck row093.height row093.goods { lower := 136896, upper := 273792, M := 11 } = true := by
  decide +kernel

theorem row093_layer005_checked :
    coverLayerCheck row093.height row093.goods { lower := 273792, upper := 547584, M := 9 } = true := by
  decide +kernel

theorem row093_layer006_checked :
    coverLayerCheck row093.height row093.goods { lower := 547584, upper := 1095168, M := 7 } = true := by
  decide +kernel

theorem row093_layer007_checked :
    coverLayerCheck row093.height row093.goods { lower := 1095168, upper := 2190336, M := 6 } = true := by
  decide +kernel

theorem row093_layer008_checked :
    coverLayerCheck row093.height row093.goods { lower := 2190336, upper := 4380672, M := 5 } = true := by
  decide +kernel

theorem row093_layer009_checked :
    coverLayerCheck row093.height row093.goods { lower := 4380672, upper := 8761344, M := 4 } = true := by
  decide +kernel

theorem row093_layer010_checked :
    coverLayerCheck row093.height row093.goods { lower := 8761344, upper := 17522688, M := 4 } = true := by
  decide +kernel

theorem row093_layer011_checked :
    coverLayerCheck row093.height row093.goods { lower := 17522688, upper := 35045376, M := 3 } = true := by
  decide +kernel

theorem row093_layer012_checked :
    coverLayerCheck row093.height row093.goods { lower := 35045376, upper := 70090752, M := 3 } = true := by
  decide +kernel

theorem row093_layer013_checked :
    coverLayerCheck row093.height row093.goods { lower := 70090752, upper := 140181504, M := 2 } = true := by
  decide +kernel

theorem row093_layer014_checked :
    coverLayerCheck row093.height row093.goods { lower := 140181504, upper := 280363008, M := 2 } = true := by
  decide +kernel

theorem row093_layer015_checked :
    coverLayerCheck row093.height row093.goods { lower := 280363008, upper := 560726016, M := 2 } = true := by
  decide +kernel

theorem row093_layer016_checked :
    coverLayerCheck row093.height row093.goods { lower := 560726016, upper := 1000000000, M := 1 } = true := by
  decide +kernel

theorem row093_layers_checked :
    row093.layers.all (coverLayerCheck row093.height row093.goods) = true := by
  change List.all [
    { lower := 8556, upper := 17112, M := 23 },
    { lower := 17112, upper := 34224, M := 19 },
    { lower := 34224, upper := 68448, M := 16 },
    { lower := 68448, upper := 136896, M := 13 },
    { lower := 136896, upper := 273792, M := 11 },
    { lower := 273792, upper := 547584, M := 9 },
    { lower := 547584, upper := 1095168, M := 7 },
    { lower := 1095168, upper := 2190336, M := 6 },
    { lower := 2190336, upper := 4380672, M := 5 },
    { lower := 4380672, upper := 8761344, M := 4 },
    { lower := 8761344, upper := 17522688, M := 4 },
    { lower := 17522688, upper := 35045376, M := 3 },
    { lower := 35045376, upper := 70090752, M := 3 },
    { lower := 70090752, upper := 140181504, M := 2 },
    { lower := 140181504, upper := 280363008, M := 2 },
    { lower := 280363008, upper := 560726016, M := 2 },
    { lower := 560726016, upper := 1000000000, M := 1 }
  ] (coverLayerCheck row093.height row093.goods) = true
  simp only [List.all_cons, List.all_nil,
    row093_layer000_checked,
    row093_layer001_checked,
    row093_layer002_checked,
    row093_layer003_checked,
    row093_layer004_checked,
    row093_layer005_checked,
    row093_layer006_checked,
    row093_layer007_checked,
    row093_layer008_checked,
    row093_layer009_checked,
    row093_layer010_checked,
    row093_layer011_checked,
    row093_layer012_checked,
    row093_layer013_checked,
    row093_layer014_checked,
    row093_layer015_checked,
    row093_layer016_checked,
    Bool.true_and]

theorem row093_checked : finiteCoverRowCheck row093 = true := by
  simp only [finiteCoverRowCheck, row093_registered, row093_goods_checked,
    row093_small_checked, row093_layerCover_checked, row093_layers_checked,
    Bool.true_and]

#print axioms B699LowIndex.row093_checked

end B699LowIndex

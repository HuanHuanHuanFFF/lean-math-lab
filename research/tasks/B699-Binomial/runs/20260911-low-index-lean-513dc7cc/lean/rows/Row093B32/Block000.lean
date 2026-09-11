import research.tasks.«B699-Binomial».runs.«20260909-low-index-structure-b41a5a63».lean.FiniteCover
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.WitnessBridge
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.LayerParts
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.PairChunks

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

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


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row093

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row093_good000_checked :
    goodSegmentCheck 93 30 65
      { lower := 188, upper := 273, witness := RowWitness.topPrime 181 } = true := by
  exact good_top_prime_checked (i := 93) (r := 30) (s := 65) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row093_good001_checked :
    goodSegmentCheck 93 30 65
      { lower := 274, upper := 363, witness := RowWitness.topPrime 271 } = true := by
  exact good_top_prime_checked (i := 93) (r := 30) (s := 65) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row093_good002_checked :
    goodSegmentCheck 93 30 65
      { lower := 364, upper := 451, witness := RowWitness.topPrime 359 } = true := by
  exact good_top_prime_checked (i := 93) (r := 30) (s := 65) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row093_good003_checked :
    goodSegmentCheck 93 30 65
      { lower := 452, upper := 541, witness := RowWitness.topPrime 449 } = true := by
  exact good_top_prime_checked (i := 93) (r := 30) (s := 65) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row093_good004_checked :
    goodSegmentCheck 93 30 65
      { lower := 542, upper := 633, witness := RowWitness.topPrime 541 } = true := by
  exact good_top_prime_checked (i := 93) (r := 30) (s := 65) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row093_good005_checked :
    goodSegmentCheck 93 30 65
      { lower := 634, upper := 723, witness := RowWitness.topPrime 631 } = true := by
  exact good_top_prime_checked (i := 93) (r := 30) (s := 65) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row093_good006_checked :
    goodSegmentCheck 93 30 65
      { lower := 724, upper := 811, witness := RowWitness.topPrime 719 } = true := by
  exact good_top_prime_checked (i := 93) (r := 30) (s := 65) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row093_good007_checked :
    goodSegmentCheck 93 30 65
      { lower := 812, upper := 903, witness := RowWitness.topPrime 811 } = true := by
  exact good_top_prime_checked (i := 93) (r := 30) (s := 65) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row093_good008_checked :
    goodSegmentCheck 93 30 65
      { lower := 904, upper := 979, witness := RowWitness.topPrime 887 } = true := by
  exact good_top_prime_checked (i := 93) (r := 30) (s := 65) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row093_good009_checked :
    goodSegmentCheck 93 30 65
      { lower := 980, upper := 1069, witness := RowWitness.topPrime 977 } = true := by
  exact good_top_prime_checked (i := 93) (r := 30) (s := 65) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row093_good010_checked :
    goodSegmentCheck 93 30 65
      { lower := 1070, upper := 1161, witness := RowWitness.topPrime 1069 } = true := by
  exact good_top_prime_checked (i := 93) (r := 30) (s := 65) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row093_good011_checked :
    goodSegmentCheck 93 30 65
      { lower := 1162, upper := 1245, witness := RowWitness.topPrime 1153 } = true := by
  exact good_top_prime_checked (i := 93) (r := 30) (s := 65) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row093_good012_checked :
    goodSegmentCheck 93 30 65
      { lower := 1246, upper := 1329, witness := RowWitness.topPrime 1237 } = true := by
  exact good_top_prime_checked (i := 93) (r := 30) (s := 65) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row093_good013_checked :
    goodSegmentCheck 93 30 65
      { lower := 1330, upper := 1419, witness := RowWitness.topPrime 1327 } = true := by
  exact good_top_prime_checked (i := 93) (r := 30) (s := 65) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row093_good014_checked :
    goodSegmentCheck 93 30 65
      { lower := 1420, upper := 1501, witness := RowWitness.topPrime 1409 } = true := by
  exact good_top_prime_checked (i := 93) (r := 30) (s := 65) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row093_good015_checked :
    goodSegmentCheck 93 30 65
      { lower := 1502, upper := 1591, witness := RowWitness.topPrime 1499 } = true := by
  exact good_top_prime_checked (i := 93) (r := 30) (s := 65) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row093_good000_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row093_good001_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row093_good002_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row093_good003_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row093_good004_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row093_good005_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row093_good006_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row093_good007_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row093_good008_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row093_good009_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row093_good010_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row093_good011_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row093_good012_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row093_good013_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row093_good014_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row093_good015_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row093_good016_checked :
    goodSegmentCheck 93 30 65
      { lower := 1592, upper := 1675, witness := RowWitness.topPrime 1583 } = true := by
  exact good_top_prime_checked (i := 93) (r := 30) (s := 65) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row093_good017_checked :
    goodSegmentCheck 93 30 65
      { lower := 1676, upper := 1761, witness := RowWitness.topPrime 1669 } = true := by
  exact good_top_prime_checked (i := 93) (r := 30) (s := 65) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row093_good018_checked :
    goodSegmentCheck 93 30 65
      { lower := 1762, upper := 1851, witness := RowWitness.topPrime 1759 } = true := by
  exact good_top_prime_checked (i := 93) (r := 30) (s := 65) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row093_good019_checked :
    goodSegmentCheck 93 30 65
      { lower := 1852, upper := 1939, witness := RowWitness.topPrime 1847 } = true := by
  exact good_top_prime_checked (i := 93) (r := 30) (s := 65) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row093_good020_checked :
    goodSegmentCheck 93 30 65
      { lower := 1940, upper := 2025, witness := RowWitness.topPrime 1933 } = true := by
  exact good_top_prime_checked (i := 93) (r := 30) (s := 65) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row093_good021_checked :
    goodSegmentCheck 93 30 65
      { lower := 2026, upper := 2109, witness := RowWitness.topPrime 2017 } = true := by
  exact good_top_prime_checked (i := 93) (r := 30) (s := 65) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row093_good022_checked :
    goodSegmentCheck 93 30 65
      { lower := 2110, upper := 2191, witness := RowWitness.topPrime 2099 } = true := by
  exact good_top_prime_checked (i := 93) (r := 30) (s := 65) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row093_good023_checked :
    goodSegmentCheck 93 30 65
      { lower := 2192, upper := 2271, witness := RowWitness.topPrime 2179 } = true := by
  exact good_top_prime_checked (i := 93) (r := 30) (s := 65) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row093_good024_checked :
    goodSegmentCheck 93 30 65
      { lower := 2272, upper := 2361, witness := RowWitness.topPrime 2269 } = true := by
  exact good_top_prime_checked (i := 93) (r := 30) (s := 65) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row093_good025_checked :
    goodSegmentCheck 93 30 65
      { lower := 2362, upper := 2449, witness := RowWitness.topPrime 2357 } = true := by
  exact good_top_prime_checked (i := 93) (r := 30) (s := 65) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row093_good026_checked :
    goodSegmentCheck 93 30 65
      { lower := 2450, upper := 2539, witness := RowWitness.topPrime 2447 } = true := by
  exact good_top_prime_checked (i := 93) (r := 30) (s := 65) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row093_good027_checked :
    goodSegmentCheck 93 30 65
      { lower := 2540, upper := 2631, witness := RowWitness.topPrime 2539 } = true := by
  exact good_top_prime_checked (i := 93) (r := 30) (s := 65) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row093_good028_checked :
    goodSegmentCheck 93 30 65
      { lower := 2632, upper := 2713, witness := RowWitness.topPrime 2621 } = true := by
  exact good_top_prime_checked (i := 93) (r := 30) (s := 65) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row093_good029_checked :
    goodSegmentCheck 93 30 65
      { lower := 2714, upper := 2805, witness := RowWitness.topPrime 2713 } = true := by
  exact good_top_prime_checked (i := 93) (r := 30) (s := 65) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row093_good030_checked :
    goodSegmentCheck 93 30 65
      { lower := 2806, upper := 2895, witness := RowWitness.topPrime 2803 } = true := by
  exact good_top_prime_checked (i := 93) (r := 30) (s := 65) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row093_good031_checked :
    goodSegmentCheck 93 30 65
      { lower := 2896, upper := 2979, witness := RowWitness.topPrime 2887 } = true := by
  exact good_top_prime_checked (i := 93) (r := 30) (s := 65) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row093_good016_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row093_good017_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row093_good018_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row093_good019_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row093_good020_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row093_good021_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row093_good022_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row093_good023_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row093_good024_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row093_good025_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row093_good026_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row093_good027_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row093_good028_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row093_good029_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row093_good030_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row093_good031_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row093_good032_checked :
    goodSegmentCheck 93 30 65
      { lower := 2980, upper := 3063, witness := RowWitness.topPrime 2971 } = true := by
  exact good_top_prime_checked (i := 93) (r := 30) (s := 65) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row093_good033_checked :
    goodSegmentCheck 93 30 65
      { lower := 3064, upper := 3153, witness := RowWitness.topPrime 3061 } = true := by
  exact good_top_prime_checked (i := 93) (r := 30) (s := 65) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row093_good034_checked :
    goodSegmentCheck 93 30 65
      { lower := 3154, upper := 3229, witness := RowWitness.topPrime 3137 } = true := by
  exact good_top_prime_checked (i := 93) (r := 30) (s := 65) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row093_good035_checked :
    goodSegmentCheck 93 30 65
      { lower := 3230, upper := 3321, witness := RowWitness.topPrime 3229 } = true := by
  exact good_top_prime_checked (i := 93) (r := 30) (s := 65) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row093_good036_checked :
    goodSegmentCheck 93 30 65
      { lower := 3322, upper := 3411, witness := RowWitness.topPrime 3319 } = true := by
  exact good_top_prime_checked (i := 93) (r := 30) (s := 65) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row093_good037_checked :
    goodSegmentCheck 93 30 65
      { lower := 3412, upper := 3499, witness := RowWitness.topPrime 3407 } = true := by
  exact good_top_prime_checked (i := 93) (r := 30) (s := 65) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row093_good038_checked :
    goodSegmentCheck 93 30 65
      { lower := 3500, upper := 3591, witness := RowWitness.topPrime 3499 } = true := by
  exact good_top_prime_checked (i := 93) (r := 30) (s := 65) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row093_good039_checked :
    goodSegmentCheck 93 30 65
      { lower := 3592, upper := 3675, witness := RowWitness.topPrime 3583 } = true := by
  exact good_top_prime_checked (i := 93) (r := 30) (s := 65) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row093_good040_checked :
    goodSegmentCheck 93 30 65
      { lower := 3676, upper := 3765, witness := RowWitness.topPrime 3673 } = true := by
  exact good_top_prime_checked (i := 93) (r := 30) (s := 65) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row093_good041_checked :
    goodSegmentCheck 93 30 65
      { lower := 3766, upper := 3853, witness := RowWitness.topPrime 3761 } = true := by
  exact good_top_prime_checked (i := 93) (r := 30) (s := 65) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row093_good042_checked :
    goodSegmentCheck 93 30 65
      { lower := 3854, upper := 3945, witness := RowWitness.topPrime 3853 } = true := by
  exact good_top_prime_checked (i := 93) (r := 30) (s := 65) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row093_good043_checked :
    goodSegmentCheck 93 30 65
      { lower := 3946, upper := 4035, witness := RowWitness.topPrime 3943 } = true := by
  exact good_top_prime_checked (i := 93) (r := 30) (s := 65) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row093_good044_checked :
    goodSegmentCheck 93 30 65
      { lower := 4036, upper := 4119, witness := RowWitness.topPrime 4027 } = true := by
  exact good_top_prime_checked (i := 93) (r := 30) (s := 65) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row093_good045_checked :
    goodSegmentCheck 93 30 65
      { lower := 4120, upper := 4203, witness := RowWitness.topPrime 4111 } = true := by
  exact good_top_prime_checked (i := 93) (r := 30) (s := 65) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row093_good046_checked :
    goodSegmentCheck 93 30 65
      { lower := 4204, upper := 4293, witness := RowWitness.topPrime 4201 } = true := by
  exact good_top_prime_checked (i := 93) (r := 30) (s := 65) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row093_good047_checked :
    goodSegmentCheck 93 30 65
      { lower := 4294, upper := 4381, witness := RowWitness.topPrime 4289 } = true := by
  exact good_top_prime_checked (i := 93) (r := 30) (s := 65) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row093_good032_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row093_good033_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row093_good034_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row093_good035_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row093_good036_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row093_good037_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row093_good038_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row093_good039_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row093_good040_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row093_good041_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row093_good042_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row093_good043_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row093_good044_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row093_good045_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row093_good046_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row093_good047_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row093_good048_checked :
    goodSegmentCheck 93 30 65
      { lower := 4382, upper := 4465, witness := RowWitness.topPrime 4373 } = true := by
  exact good_top_prime_checked (i := 93) (r := 30) (s := 65) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row093_good049_checked :
    goodSegmentCheck 93 30 65
      { lower := 4466, upper := 4555, witness := RowWitness.topPrime 4463 } = true := by
  exact good_top_prime_checked (i := 93) (r := 30) (s := 65) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row093_good050_checked :
    goodSegmentCheck 93 30 65
      { lower := 4556, upper := 4641, witness := RowWitness.topPrime 4549 } = true := by
  exact good_top_prime_checked (i := 93) (r := 30) (s := 65) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row093_good051_checked :
    goodSegmentCheck 93 30 65
      { lower := 4642, upper := 4731, witness := RowWitness.topPrime 4639 } = true := by
  exact good_top_prime_checked (i := 93) (r := 30) (s := 65) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row093_good052_checked :
    goodSegmentCheck 93 30 65
      { lower := 4732, upper := 4821, witness := RowWitness.topPrime 4729 } = true := by
  exact good_top_prime_checked (i := 93) (r := 30) (s := 65) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row093_good053_checked :
    goodSegmentCheck 93 30 65
      { lower := 4822, upper := 4909, witness := RowWitness.topPrime 4817 } = true := by
  exact good_top_prime_checked (i := 93) (r := 30) (s := 65) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row093_good054_checked :
    goodSegmentCheck 93 30 65
      { lower := 4910, upper := 5001, witness := RowWitness.topPrime 4909 } = true := by
  exact good_top_prime_checked (i := 93) (r := 30) (s := 65) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row093_good055_checked :
    goodSegmentCheck 93 30 65
      { lower := 5002, upper := 5091, witness := RowWitness.topPrime 4999 } = true := by
  exact good_top_prime_checked (i := 93) (r := 30) (s := 65) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row093_good056_checked :
    goodSegmentCheck 93 30 65
      { lower := 5092, upper := 5179, witness := RowWitness.topPrime 5087 } = true := by
  exact good_top_prime_checked (i := 93) (r := 30) (s := 65) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row093_good057_checked :
    goodSegmentCheck 93 30 65
      { lower := 5180, upper := 5271, witness := RowWitness.topPrime 5179 } = true := by
  exact good_top_prime_checked (i := 93) (r := 30) (s := 65) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row093_good058_checked :
    goodSegmentCheck 93 30 65
      { lower := 5272, upper := 5353, witness := RowWitness.topPrime 5261 } = true := by
  exact good_top_prime_checked (i := 93) (r := 30) (s := 65) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row093_good059_checked :
    goodSegmentCheck 93 30 65
      { lower := 5354, upper := 5443, witness := RowWitness.topPrime 5351 } = true := by
  exact good_top_prime_checked (i := 93) (r := 30) (s := 65) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row093_good060_checked :
    goodSegmentCheck 93 30 65
      { lower := 5444, upper := 5535, witness := RowWitness.topPrime 5443 } = true := by
  exact good_top_prime_checked (i := 93) (r := 30) (s := 65) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row093_good061_checked :
    goodSegmentCheck 93 30 65
      { lower := 5536, upper := 5623, witness := RowWitness.topPrime 5531 } = true := by
  exact good_top_prime_checked (i := 93) (r := 30) (s := 65) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row093_good062_checked :
    goodSegmentCheck 93 30 65
      { lower := 5624, upper := 5715, witness := RowWitness.topPrime 5623 } = true := by
  exact good_top_prime_checked (i := 93) (r := 30) (s := 65) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row093_good063_checked :
    goodSegmentCheck 93 30 65
      { lower := 5716, upper := 5803, witness := RowWitness.topPrime 5711 } = true := by
  exact good_top_prime_checked (i := 93) (r := 30) (s := 65) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row093_good048_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row093_good049_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row093_good050_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row093_good051_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row093_good052_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row093_good053_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row093_good054_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row093_good055_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row093_good056_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row093_good057_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row093_good058_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row093_good059_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row093_good060_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row093_good061_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row093_good062_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row093_good063_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row093_good064_checked :
    goodSegmentCheck 93 30 65
      { lower := 5804, upper := 5893, witness := RowWitness.topPrime 5801 } = true := by
  exact good_top_prime_checked (i := 93) (r := 30) (s := 65) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row093_good065_checked :
    goodSegmentCheck 93 30 65
      { lower := 5894, upper := 5973, witness := RowWitness.topPrime 5881 } = true := by
  exact good_top_prime_checked (i := 93) (r := 30) (s := 65) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row093_good066_checked :
    goodSegmentCheck 93 30 65
      { lower := 5974, upper := 6045, witness := RowWitness.topPrime 5953 } = true := by
  exact good_top_prime_checked (i := 93) (r := 30) (s := 65) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row093_good067_checked :
    goodSegmentCheck 93 30 65
      { lower := 6046, upper := 6135, witness := RowWitness.topPrime 6043 } = true := by
  exact good_top_prime_checked (i := 93) (r := 30) (s := 65) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row093_good068_checked :
    goodSegmentCheck 93 30 65
      { lower := 6136, upper := 6225, witness := RowWitness.topPrime 6133 } = true := by
  exact good_top_prime_checked (i := 93) (r := 30) (s := 65) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row093_good069_checked :
    goodSegmentCheck 93 30 65
      { lower := 6226, upper := 6313, witness := RowWitness.topPrime 6221 } = true := by
  exact good_top_prime_checked (i := 93) (r := 30) (s := 65) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row093_good070_checked :
    goodSegmentCheck 93 30 65
      { lower := 6314, upper := 6403, witness := RowWitness.topPrime 6311 } = true := by
  exact good_top_prime_checked (i := 93) (r := 30) (s := 65) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row093_good071_checked :
    goodSegmentCheck 93 30 65
      { lower := 6404, upper := 6489, witness := RowWitness.topPrime 6397 } = true := by
  exact good_top_prime_checked (i := 93) (r := 30) (s := 65) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row093_good072_checked :
    goodSegmentCheck 93 30 65
      { lower := 6490, upper := 6573, witness := RowWitness.topPrime 6481 } = true := by
  exact good_top_prime_checked (i := 93) (r := 30) (s := 65) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row093_good073_checked :
    goodSegmentCheck 93 30 65
      { lower := 6574, upper := 6663, witness := RowWitness.topPrime 6571 } = true := by
  exact good_top_prime_checked (i := 93) (r := 30) (s := 65) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row093_good074_checked :
    goodSegmentCheck 93 30 65
      { lower := 6664, upper := 6753, witness := RowWitness.topPrime 6661 } = true := by
  exact good_top_prime_checked (i := 93) (r := 30) (s := 65) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row093_good075_checked :
    goodSegmentCheck 93 30 65
      { lower := 6754, upper := 6829, witness := RowWitness.topPrime 6737 } = true := by
  exact good_top_prime_checked (i := 93) (r := 30) (s := 65) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row093_good076_checked :
    goodSegmentCheck 93 30 65
      { lower := 6830, upper := 6921, witness := RowWitness.topPrime 6829 } = true := by
  exact good_top_prime_checked (i := 93) (r := 30) (s := 65) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row093_good077_checked :
    goodSegmentCheck 93 30 65
      { lower := 6922, upper := 7009, witness := RowWitness.topPrime 6917 } = true := by
  exact good_top_prime_checked (i := 93) (r := 30) (s := 65) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row093_good078_checked :
    goodSegmentCheck 93 30 65
      { lower := 7010, upper := 7093, witness := RowWitness.topPrime 7001 } = true := by
  exact good_top_prime_checked (i := 93) (r := 30) (s := 65) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row093_good079_checked :
    goodSegmentCheck 93 30 65
      { lower := 7094, upper := 7171, witness := RowWitness.topPrime 7079 } = true := by
  exact good_top_prime_checked (i := 93) (r := 30) (s := 65) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row093_good064_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row093_good065_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row093_good066_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row093_good067_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row093_good068_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row093_good069_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row093_good070_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row093_good071_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row093_good072_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row093_good073_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row093_good074_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row093_good075_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row093_good076_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row093_good077_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row093_good078_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row093_good079_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row093_good080_checked :
    goodSegmentCheck 93 30 65
      { lower := 7172, upper := 7251, witness := RowWitness.topPrime 7159 } = true := by
  exact good_top_prime_checked (i := 93) (r := 30) (s := 65) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row093_good081_checked :
    goodSegmentCheck 93 30 65
      { lower := 7252, upper := 7339, witness := RowWitness.topPrime 7247 } = true := by
  exact good_top_prime_checked (i := 93) (r := 30) (s := 65) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row093_good082_checked :
    goodSegmentCheck 93 30 65
      { lower := 7340, upper := 7425, witness := RowWitness.topPrime 7333 } = true := by
  exact good_top_prime_checked (i := 93) (r := 30) (s := 65) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row093_good083_checked :
    goodSegmentCheck 93 30 65
      { lower := 7426, upper := 7509, witness := RowWitness.topPrime 7417 } = true := by
  exact good_top_prime_checked (i := 93) (r := 30) (s := 65) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row093_good084_checked :
    goodSegmentCheck 93 30 65
      { lower := 7510, upper := 7599, witness := RowWitness.topPrime 7507 } = true := by
  exact good_top_prime_checked (i := 93) (r := 30) (s := 65) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row093_good085_checked :
    goodSegmentCheck 93 30 65
      { lower := 7600, upper := 7683, witness := RowWitness.topPrime 7591 } = true := by
  exact good_top_prime_checked (i := 93) (r := 30) (s := 65) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row093_good086_checked :
    goodSegmentCheck 93 30 65
      { lower := 7684, upper := 7773, witness := RowWitness.topPrime 7681 } = true := by
  exact good_top_prime_checked (i := 93) (r := 30) (s := 65) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row093_good087_checked :
    goodSegmentCheck 93 30 65
      { lower := 7774, upper := 7851, witness := RowWitness.topPrime 7759 } = true := by
  exact good_top_prime_checked (i := 93) (r := 30) (s := 65) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row093_good088_checked :
    goodSegmentCheck 93 30 65
      { lower := 7852, upper := 7933, witness := RowWitness.topPrime 7841 } = true := by
  exact good_top_prime_checked (i := 93) (r := 30) (s := 65) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row093_good089_checked :
    goodSegmentCheck 93 30 65
      { lower := 7934, upper := 8025, witness := RowWitness.topPrime 7933 } = true := by
  exact good_top_prime_checked (i := 93) (r := 30) (s := 65) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row093_good090_checked :
    goodSegmentCheck 93 30 65
      { lower := 8026, upper := 8109, witness := RowWitness.topPrime 8017 } = true := by
  exact good_top_prime_checked (i := 93) (r := 30) (s := 65) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row093_good091_checked :
    goodSegmentCheck 93 30 65
      { lower := 8110, upper := 8193, witness := RowWitness.topPrime 8101 } = true := by
  exact good_top_prime_checked (i := 93) (r := 30) (s := 65) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row093_good092_checked :
    goodSegmentCheck 93 30 65
      { lower := 8194, upper := 8283, witness := RowWitness.topPrime 8191 } = true := by
  exact good_top_prime_checked (i := 93) (r := 30) (s := 65) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row093_good093_checked :
    goodSegmentCheck 93 30 65
      { lower := 8284, upper := 8365, witness := RowWitness.topPrime 8273 } = true := by
  exact good_top_prime_checked (i := 93) (r := 30) (s := 65) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row093_good094_checked :
    goodSegmentCheck 93 30 65
      { lower := 8366, upper := 8455, witness := RowWitness.topPrime 8363 } = true := by
  exact good_top_prime_checked (i := 93) (r := 30) (s := 65) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row093_good095_checked :
    goodSegmentCheck 93 30 65
      { lower := 8456, upper := 8539, witness := RowWitness.topPrime 8447 } = true := by
  exact good_top_prime_checked (i := 93) (r := 30) (s := 65) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row093_good080_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row093_good081_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row093_good082_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row093_good083_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row093_good084_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row093_good085_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row093_good086_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row093_good087_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row093_good088_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row093_good089_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row093_good090_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row093_good091_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row093_good092_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row093_good093_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row093_good094_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row093_good095_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row093_good096_checked :
    goodSegmentCheck 93 30 65
      { lower := 8540, upper := 8555, witness := RowWitness.topPrime 8539 } = true := by
  exact good_top_prime_checked (i := 93) (r := 30) (s := 65) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row093_good097_checked :
    goodSegmentCheck 93 30 65
      { lower := 8748, upper := 8839, witness := RowWitness.topPrime 8747 } = true := by
  exact good_top_prime_checked (i := 93) (r := 30) (s := 65) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row093_good098_checked :
    goodSegmentCheck 93 30 65
      { lower := 8840, upper := 8880, witness := RowWitness.topPrime 8839 } = true := by
  exact good_top_prime_checked (i := 93) (r := 30) (s := 65) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row093_good099_checked :
    goodSegmentCheck 93 30 65
      { lower := 8993, upper := 9063, witness := RowWitness.topPrime 8971 } = true := by
  exact good_top_prime_checked (i := 93) (r := 30) (s := 65) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row093_good100_checked :
    goodSegmentCheck 93 30 65
      { lower := 9064, upper := 9070, witness := RowWitness.topPrime 9059 } = true := by
  exact good_top_prime_checked (i := 93) (r := 30) (s := 65) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row093_good101_checked :
    goodSegmentCheck 93 30 65
      { lower := 9245, upper := 9333, witness := RowWitness.topPrime 9241 } = true := by
  exact good_top_prime_checked (i := 93) (r := 30) (s := 65) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row093_good102_checked :
    goodSegmentCheck 93 30 65
      { lower := 9334, upper := 9343, witness := RowWitness.topPrime 9323 } = true := by
  exact good_top_prime_checked (i := 93) (r := 30) (s := 65) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row093_good103_checked :
    goodSegmentCheck 93 30 65
      { lower := 9375, upper := 9409, witness := RowWitness.topPrime 9371 } = true := by
  exact good_top_prime_checked (i := 93) (r := 30) (s := 65) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row093_good104_checked :
    goodSegmentCheck 93 30 65
      { lower := 9583, upper := 9643, witness := RowWitness.topPrime 9551 } = true := by
  exact good_top_prime_checked (i := 93) (r := 30) (s := 65) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row093_good105_checked :
    goodSegmentCheck 93 30 65
      { lower := 9644, upper := 9675, witness := RowWitness.topPrime 9643 } = true := by
  exact good_top_prime_checked (i := 93) (r := 30) (s := 65) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row093_good106_checked :
    goodSegmentCheck 93 30 65
      { lower := 10051, upper := 10131, witness := RowWitness.topPrime 10039 } = true := by
  exact good_top_prime_checked (i := 93) (r := 30) (s := 65) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row093_good107_checked :
    goodSegmentCheck 93 30 65
      { lower := 10132, upper := 10178, witness := RowWitness.topPrime 10111 } = true := by
  exact good_top_prime_checked (i := 93) (r := 30) (s := 65) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row093_good108_checked :
    goodSegmentCheck 93 30 65
      { lower := 10625, upper := 10705, witness := RowWitness.topPrime 10613 } = true := by
  exact good_top_prime_checked (i := 93) (r := 30) (s := 65) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row093_good109_checked :
    goodSegmentCheck 93 30 65
      { lower := 10706, upper := 10740, witness := RowWitness.topPrime 10691 } = true := by
  exact good_top_prime_checked (i := 93) (r := 30) (s := 65) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row093_good110_checked :
    goodSegmentCheck 93 30 65
      { lower := 10935, upper := 11001, witness := RowWitness.topPrime 10909 } = true := by
  exact good_top_prime_checked (i := 93) (r := 30) (s := 65) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row093_good111_checked :
    goodSegmentCheck 93 30 65
      { lower := 11002, upper := 11077, witness := RowWitness.topPrime 10993 } = true := by
  exact good_top_prime_checked (i := 93) (r := 30) (s := 65) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row093_good096_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row093_good097_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row093_good098_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row093_good099_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row093_good100_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row093_good101_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row093_good102_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row093_good103_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row093_good104_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row093_good105_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row093_good106_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row093_good107_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row093_good108_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row093_good109_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row093_good110_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row093_good111_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row093_good112_checked :
    goodSegmentCheck 93 30 65
      { lower := 11094, upper := 11185, witness := RowWitness.topPrime 11093 } = true := by
  exact good_top_prime_checked (i := 93) (r := 30) (s := 65) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row093_good113_checked :
    goodSegmentCheck 93 30 65
      { lower := 11186, upper := 11201, witness := RowWitness.topPrime 11177 } = true := by
  exact good_top_prime_checked (i := 93) (r := 30) (s := 65) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row093_good114_checked :
    goodSegmentCheck 93 30 65
      { lower := 11236, upper := 11305, witness := RowWitness.topPrime 11213 } = true := by
  exact good_top_prime_checked (i := 93) (r := 30) (s := 65) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row093_good115_checked :
    goodSegmentCheck 93 30 65
      { lower := 11306, upper := 11342, witness := RowWitness.topPrime 11299 } = true := by
  exact good_top_prime_checked (i := 93) (r := 30) (s := 65) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row093_good116_checked :
    goodSegmentCheck 93 30 65
      { lower := 11774, upper := 11835, witness := RowWitness.topPrime 11743 } = true := by
  exact good_top_prime_checked (i := 93) (r := 30) (s := 65) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row093_good117_checked :
    goodSegmentCheck 93 30 65
      { lower := 11836, upper := 11866, witness := RowWitness.topPrime 11833 } = true := by
  exact good_top_prime_checked (i := 93) (r := 30) (s := 65) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row093_good118_checked :
    goodSegmentCheck 93 30 65
      { lower := 12005, upper := 12071, witness := RowWitness.topPrime 11987 } = true := by
  exact good_top_prime_checked (i := 93) (r := 30) (s := 65) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row093_good119_checked :
    goodSegmentCheck 93 30 65
      { lower := 12321, upper := 12380, witness := RowWitness.topPrime 12301 } = true := by
  exact good_top_prime_checked (i := 93) (r := 30) (s := 65) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row093_good120_checked :
    goodSegmentCheck 93 30 65
      { lower := 12500, upper := 12574, witness := RowWitness.topPrime 12497 } = true := by
  exact good_top_prime_checked (i := 93) (r := 30) (s := 65) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row093_good121_checked :
    goodSegmentCheck 93 30 65
      { lower := 13125, upper := 13213, witness := RowWitness.topPrime 13121 } = true := by
  exact good_top_prime_checked (i := 93) (r := 30) (s := 65) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row093_good122_checked :
    goodSegmentCheck 93 30 65
      { lower := 13214, upper := 13217, witness := RowWitness.topPrime 13187 } = true := by
  exact good_top_prime_checked (i := 93) (r := 30) (s := 65) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row093_good123_checked :
    goodSegmentCheck 93 30 65
      { lower := 13254, upper := 13274, witness := RowWitness.topPrime 13249 } = true := by
  exact good_top_prime_checked (i := 93) (r := 30) (s := 65) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row093_good124_checked :
    goodSegmentCheck 93 30 65
      { lower := 13310, upper := 13401, witness := RowWitness.topPrime 13309 } = true := by
  exact good_top_prime_checked (i := 93) (r := 30) (s := 65) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row093_good125_checked :
    goodSegmentCheck 93 30 65
      { lower := 13402, upper := 13402, witness := RowWitness.topPrime 13399 } = true := by
  exact good_top_prime_checked (i := 93) (r := 30) (s := 65) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row093_good126_checked :
    goodSegmentCheck 93 30 65
      { lower := 13456, upper := 13543, witness := RowWitness.topPrime 13451 } = true := by
  exact good_top_prime_checked (i := 93) (r := 30) (s := 65) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row093_good127_checked :
    goodSegmentCheck 93 30 65
      { lower := 13544, upper := 13548, witness := RowWitness.topPrime 13537 } = true := by
  exact good_top_prime_checked (i := 93) (r := 30) (s := 65) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row093_good112_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row093_good113_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row093_good114_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row093_good115_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row093_good116_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row093_good117_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row093_good118_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row093_good119_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row093_good120_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row093_good121_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row093_good122_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row093_good123_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row093_good124_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row093_good125_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row093_good126_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row093_good127_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row093_good128_checked :
    goodSegmentCheck 93 30 65
      { lower := 13718, upper := 13803, witness := RowWitness.topPrime 13711 } = true := by
  exact good_top_prime_checked (i := 93) (r := 30) (s := 65) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row093_good129_checked :
    goodSegmentCheck 93 30 65
      { lower := 13804, upper := 13842, witness := RowWitness.topPrime 13799 } = true := by
  exact good_top_prime_checked (i := 93) (r := 30) (s := 65) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row093_good130_checked :
    goodSegmentCheck 93 30 65
      { lower := 14336, upper := 14419, witness := RowWitness.topPrime 14327 } = true := by
  exact good_top_prime_checked (i := 93) (r := 30) (s := 65) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row093_good131_checked :
    goodSegmentCheck 93 30 65
      { lower := 14420, upper := 14467, witness := RowWitness.topPrime 14419 } = true := by
  exact good_top_prime_checked (i := 93) (r := 30) (s := 65) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row093_good132_checked :
    goodSegmentCheck 93 30 65
      { lower := 14792, upper := 14831, witness := RowWitness.topPrime 14783 } = true := by
  exact good_top_prime_checked (i := 93) (r := 30) (s := 65) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row093_good133_checked :
    goodSegmentCheck 93 30 65
      { lower := 14884, upper := 14884, witness := RowWitness.topPrime 14879 } = true := by
  exact good_top_prime_checked (i := 93) (r := 30) (s := 65) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row093_good134_checked :
    goodSegmentCheck 93 30 65
      { lower := 15123, upper := 15213, witness := RowWitness.topPrime 15121 } = true := by
  exact good_top_prime_checked (i := 93) (r := 30) (s := 65) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row093_good135_checked :
    goodSegmentCheck 93 30 65
      { lower := 15214, upper := 15221, witness := RowWitness.topPrime 15199 } = true := by
  exact good_top_prime_checked (i := 93) (r := 30) (s := 65) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row093_good136_checked :
    goodSegmentCheck 93 30 65
      { lower := 15360, upper := 15451, witness := RowWitness.topPrime 15359 } = true := by
  exact good_top_prime_checked (i := 93) (r := 30) (s := 65) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row093_good137_checked :
    goodSegmentCheck 93 30 65
      { lower := 15452, upper := 15452, witness := RowWitness.topPrime 15451 } = true := by
  exact good_top_prime_checked (i := 93) (r := 30) (s := 65) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row093_good138_checked :
    goodSegmentCheck 93 30 65
      { lower := 15463, upper := 15471, witness := RowWitness.topPrime 15461 } = true := by
  exact good_top_prime_checked (i := 93) (r := 30) (s := 65) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row093_good139_checked :
    goodSegmentCheck 93 30 65
      { lower := 15979, upper := 16065, witness := RowWitness.topPrime 15973 } = true := by
  exact good_top_prime_checked (i := 93) (r := 30) (s := 65) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row093_good140_checked :
    goodSegmentCheck 93 30 65
      { lower := 16066, upper := 16071, witness := RowWitness.topPrime 16063 } = true := by
  exact good_top_prime_checked (i := 93) (r := 30) (s := 65) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row093_good141_checked :
    goodSegmentCheck 93 30 65
      { lower := 16428, upper := 16476, witness := RowWitness.topPrime 16427 } = true := by
  exact good_top_prime_checked (i := 93) (r := 30) (s := 65) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row093_good142_checked :
    goodSegmentCheck 93 30 65
      { lower := 16810, upper := 16879, witness := RowWitness.topPrime 16787 } = true := by
  exact good_top_prime_checked (i := 93) (r := 30) (s := 65) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row093_good143_checked :
    goodSegmentCheck 93 30 65
      { lower := 16880, upper := 16912, witness := RowWitness.topPrime 16879 } = true := by
  exact good_top_prime_checked (i := 93) (r := 30) (s := 65) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row093_good128_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row093_good129_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row093_good130_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row093_good131_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row093_good132_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row093_good133_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row093_good134_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row093_good135_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row093_good136_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row093_good137_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row093_good138_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row093_good139_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row093_good140_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row093_good141_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row093_good142_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row093_good143_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row093_good144_checked :
    goodSegmentCheck 93 30 65
      { lower := 17408, upper := 17493, witness := RowWitness.topPrime 17401 } = true := by
  exact good_top_prime_checked (i := 93) (r := 30) (s := 65) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row093_good145_checked :
    goodSegmentCheck 93 30 65
      { lower := 17494, upper := 17497, witness := RowWitness.topPrime 17491 } = true := by
  exact good_top_prime_checked (i := 93) (r := 30) (s := 65) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row093_good146_checked :
    goodSegmentCheck 93 30 65
      { lower := 18490, upper := 18573, witness := RowWitness.topPrime 18481 } = true := by
  exact good_top_prime_checked (i := 93) (r := 30) (s := 65) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row093_good147_checked :
    goodSegmentCheck 93 30 65
      { lower := 18574, upper := 18582, witness := RowWitness.topPrime 18553 } = true := by
  exact good_top_prime_checked (i := 93) (r := 30) (s := 65) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row093_good148_checked :
    goodSegmentCheck 93 30 65
      { lower := 18634, upper := 18697, witness := RowWitness.topPrime 18617 } = true := by
  exact good_top_prime_checked (i := 93) (r := 30) (s := 65) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row093_good149_checked :
    goodSegmentCheck 93 30 65
      { lower := 18723, upper := 18726, witness := RowWitness.topPrime 18719 } = true := by
  exact good_top_prime_checked (i := 93) (r := 30) (s := 65) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row093_good150_checked :
    goodSegmentCheck 93 30 65
      { lower := 18750, upper := 18815, witness := RowWitness.topPrime 18749 } = true := by
  exact good_top_prime_checked (i := 93) (r := 30) (s := 65) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row093_good151_checked :
    goodSegmentCheck 93 30 65
      { lower := 19208, upper := 19258, witness := RowWitness.topPrime 19207 } = true := by
  exact good_top_prime_checked (i := 93) (r := 30) (s := 65) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row093_good152_checked :
    goodSegmentCheck 93 30 65
      { lower := 19663, upper := 19753, witness := RowWitness.topPrime 19661 } = true := by
  exact good_top_prime_checked (i := 93) (r := 30) (s := 65) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row093_good153_checked :
    goodSegmentCheck 93 30 65
      { lower := 19754, upper := 19755, witness := RowWitness.topPrime 19753 } = true := by
  exact good_top_prime_checked (i := 93) (r := 30) (s := 65) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row093_good154_checked :
    goodSegmentCheck 93 30 65
      { lower := 19773, upper := 19775, witness := RowWitness.topPrime 19763 } = true := by
  exact good_top_prime_checked (i := 93) (r := 30) (s := 65) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row093_good155_checked :
    goodSegmentCheck 93 30 65
      { lower := 19965, upper := 19973, witness := RowWitness.topPrime 19963 } = true := by
  exact good_top_prime_checked (i := 93) (r := 30) (s := 65) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row093_good156_checked :
    goodSegmentCheck 93 30 65
      { lower := 20172, upper := 20253, witness := RowWitness.topPrime 20161 } = true := by
  exact good_top_prime_checked (i := 93) (r := 30) (s := 65) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row093_good157_checked :
    goodSegmentCheck 93 30 65
      { lower := 20254, upper := 20256, witness := RowWitness.topPrime 20249 } = true := by
  exact good_top_prime_checked (i := 93) (r := 30) (s := 65) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row093_good158_checked :
    goodSegmentCheck 93 30 65
      { lower := 20535, upper := 20572, witness := RowWitness.topPrime 20533 } = true := by
  exact good_top_prime_checked (i := 93) (r := 30) (s := 65) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row093_good159_checked :
    goodSegmentCheck 93 30 65
      { lower := 20577, upper := 20627, witness := RowWitness.topPrime 20563 } = true := by
  exact good_top_prime_checked (i := 93) (r := 30) (s := 65) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row093_good144_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row093_good145_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row093_good146_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row093_good147_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row093_good148_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row093_good149_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row093_good150_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row093_good151_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row093_good152_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row093_good153_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row093_good154_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row093_good155_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row093_good156_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row093_good157_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row093_good158_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row093_good159_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row093_good160_checked :
    goodSegmentCheck 93 30 65
      { lower := 20667, upper := 20669, witness := RowWitness.topPrime 20663 } = true := by
  exact good_top_prime_checked (i := 93) (r := 30) (s := 65) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row093_good161_checked :
    goodSegmentCheck 93 30 65
      { lower := 21316, upper := 21388, witness := RowWitness.topPrime 21313 } = true := by
  exact good_top_prime_checked (i := 93) (r := 30) (s := 65) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row093_good162_checked :
    goodSegmentCheck 93 30 65
      { lower := 21875, upper := 21963, witness := RowWitness.topPrime 21871 } = true := by
  exact good_top_prime_checked (i := 93) (r := 30) (s := 65) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row093_good163_checked :
    goodSegmentCheck 93 30 65
      { lower := 21964, upper := 21967, witness := RowWitness.topPrime 21961 } = true := by
  exact good_top_prime_checked (i := 93) (r := 30) (s := 65) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row093_good164_checked :
    goodSegmentCheck 93 30 65
      { lower := 21970, upper := 21996, witness := RowWitness.topPrime 21961 } = true := by
  exact good_top_prime_checked (i := 93) (r := 30) (s := 65) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row093_good165_checked :
    goodSegmentCheck 93 30 65
      { lower := 22472, upper := 22561, witness := RowWitness.topPrime 22469 } = true := by
  exact good_top_prime_checked (i := 93) (r := 30) (s := 65) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row093_good166_checked :
    goodSegmentCheck 93 30 65
      { lower := 22562, upper := 22564, witness := RowWitness.topPrime 22549 } = true := by
  exact good_top_prime_checked (i := 93) (r := 30) (s := 65) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row093_good167_checked :
    goodSegmentCheck 93 30 65
      { lower := 24010, upper := 24099, witness := RowWitness.topPrime 24007 } = true := by
  exact good_top_prime_checked (i := 93) (r := 30) (s := 65) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row093_good168_checked :
    goodSegmentCheck 93 30 65
      { lower := 24100, upper := 24102, witness := RowWitness.topPrime 24097 } = true := by
  exact good_top_prime_checked (i := 93) (r := 30) (s := 65) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row093_good169_checked :
    goodSegmentCheck 93 30 65
      { lower := 24334, upper := 24421, witness := RowWitness.topPrime 24329 } = true := by
  exact good_top_prime_checked (i := 93) (r := 30) (s := 65) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row093_good170_checked :
    goodSegmentCheck 93 30 65
      { lower := 24422, upper := 24459, witness := RowWitness.topPrime 24421 } = true := by
  exact good_top_prime_checked (i := 93) (r := 30) (s := 65) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row093_good171_checked :
    goodSegmentCheck 93 30 65
      { lower := 24576, upper := 24663, witness := RowWitness.topPrime 24571 } = true := by
  exact good_top_prime_checked (i := 93) (r := 30) (s := 65) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row093_good172_checked :
    goodSegmentCheck 93 30 65
      { lower := 24664, upper := 24668, witness := RowWitness.topPrime 24659 } = true := by
  exact good_top_prime_checked (i := 93) (r := 30) (s := 65) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row093_good173_checked :
    goodSegmentCheck 93 30 65
      { lower := 25000, upper := 25056, witness := RowWitness.topPrime 24989 } = true := by
  exact good_top_prime_checked (i := 93) (r := 30) (s := 65) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row093_good174_checked :
    goodSegmentCheck 93 30 65
      { lower := 25215, upper := 25281, witness := RowWitness.topPrime 25189 } = true := by
  exact good_top_prime_checked (i := 93) (r := 30) (s := 65) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row093_good175_checked :
    goodSegmentCheck 93 30 65
      { lower := 25282, upper := 25353, witness := RowWitness.topPrime 25261 } = true := by
  exact good_top_prime_checked (i := 93) (r := 30) (s := 65) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row093_good160_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row093_good161_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row093_good162_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row093_good163_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row093_good164_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row093_good165_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row093_good166_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row093_good167_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row093_good168_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row093_good169_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row093_good170_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row093_good171_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row093_good172_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row093_good173_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row093_good174_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row093_good175_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row093_good176_checked :
    goodSegmentCheck 93 30 65
      { lower := 25354, upper := 25373, witness := RowWitness.topPrime 25349 } = true := by
  exact good_top_prime_checked (i := 93) (r := 30) (s := 65) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row093_good177_checked :
    goodSegmentCheck 93 30 65
      { lower := 26047, upper := 26103, witness := RowWitness.topPrime 26041 } = true := by
  exact good_top_prime_checked (i := 93) (r := 30) (s := 65) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row093_good178_checked :
    goodSegmentCheck 93 30 65
      { lower := 26411, upper := 26456, witness := RowWitness.topPrime 26407 } = true := by
  exact good_top_prime_checked (i := 93) (r := 30) (s := 65) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row093_good179_checked :
    goodSegmentCheck 93 30 65
      { lower := 26645, upper := 26716, witness := RowWitness.topPrime 26641 } = true := by
  exact good_top_prime_checked (i := 93) (r := 30) (s := 65) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row093_good180_checked :
    goodSegmentCheck 93 30 65
      { lower := 26934, upper := 26988, witness := RowWitness.topPrime 26927 } = true := by
  exact good_top_prime_checked (i := 93) (r := 30) (s := 65) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row093_good181_checked :
    goodSegmentCheck 93 30 65
      { lower := 28125, upper := 28182, witness := RowWitness.topPrime 28123 } = true := by
  exact good_top_prime_checked (i := 93) (r := 30) (s := 65) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row093_good182_checked :
    goodSegmentCheck 93 30 65
      { lower := 28577, upper := 28653, witness := RowWitness.topPrime 28573 } = true := by
  exact good_top_prime_checked (i := 93) (r := 30) (s := 65) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row093_good183_checked :
    goodSegmentCheck 93 30 65
      { lower := 28717, upper := 28764, witness := RowWitness.topPrime 28711 } = true := by
  exact good_top_prime_checked (i := 93) (r := 30) (s := 65) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row093_good184_checked :
    goodSegmentCheck 93 30 65
      { lower := 30258, upper := 30338, witness := RowWitness.topPrime 30253 } = true := by
  exact good_top_prime_checked (i := 93) (r := 30) (s := 65) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row093_good185_checked :
    goodSegmentCheck 93 30 65
      { lower := 30758, upper := 30812, witness := RowWitness.topPrime 30757 } = true := by
  exact good_top_prime_checked (i := 93) (r := 30) (s := 65) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row093_good186_checked :
    goodSegmentCheck 93 30 65
      { lower := 30926, upper := 30991, witness := RowWitness.topPrime 30911 } = true := by
  exact good_top_prime_checked (i := 93) (r := 30) (s := 65) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row093_good187_checked :
    goodSegmentCheck 93 30 65
      { lower := 31213, upper := 31285, witness := RowWitness.topPrime 31193 } = true := by
  exact good_top_prime_checked (i := 93) (r := 30) (s := 65) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row093_good188_checked :
    goodSegmentCheck 93 30 65
      { lower := 31286, upper := 31305, witness := RowWitness.topPrime 31277 } = true := by
  exact good_top_prime_checked (i := 93) (r := 30) (s := 65) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row093_good189_checked :
    goodSegmentCheck 93 30 65
      { lower := 31329, upper := 31342, witness := RowWitness.topPrime 31327 } = true := by
  exact good_top_prime_checked (i := 93) (r := 30) (s := 65) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row093_good190_checked :
    goodSegmentCheck 93 30 65
      { lower := 31433, upper := 31489, witness := RowWitness.topPrime 31397 } = true := by
  exact good_top_prime_checked (i := 93) (r := 30) (s := 65) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row093_good191_checked :
    goodSegmentCheck 93 30 65
      { lower := 31490, upper := 31515, witness := RowWitness.topPrime 31489 } = true := by
  exact good_top_prime_checked (i := 93) (r := 30) (s := 65) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row093_good176_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row093_good177_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row093_good178_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row093_good179_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row093_good180_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row093_good181_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row093_good182_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row093_good183_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row093_good184_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row093_good185_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row093_good186_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row093_good187_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row093_good188_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row093_good189_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row093_good190_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row093_good191_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row093_good192_checked :
    goodSegmentCheck 93 30 65
      { lower := 31974, upper := 32031, witness := RowWitness.topPrime 31973 } = true := by
  exact good_top_prime_checked (i := 93) (r := 30) (s := 65) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row093_good193_checked :
    goodSegmentCheck 93 30 65
      { lower := 32805, upper := 32860, witness := RowWitness.topPrime 32803 } = true := by
  exact good_top_prime_checked (i := 93) (r := 30) (s := 65) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row093_good194_checked :
    goodSegmentCheck 93 30 65
      { lower := 34375, upper := 34387, witness := RowWitness.topPrime 34369 } = true := by
  exact good_top_prime_checked (i := 93) (r := 30) (s := 65) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row093_good195_checked :
    goodSegmentCheck 93 30 65
      { lower := 34391, upper := 34473, witness := RowWitness.topPrime 34381 } = true := by
  exact good_top_prime_checked (i := 93) (r := 30) (s := 65) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row093_good196_checked :
    goodSegmentCheck 93 30 65
      { lower := 34474, upper := 34483, witness := RowWitness.topPrime 34471 } = true := by
  exact good_top_prime_checked (i := 93) (r := 30) (s := 65) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row093_good197_checked :
    goodSegmentCheck 93 30 65
      { lower := 35344, upper := 35379, witness := RowWitness.topPrime 35339 } = true := by
  exact good_top_prime_checked (i := 93) (r := 30) (s := 65) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row093_good198_checked :
    goodSegmentCheck 93 30 65
      { lower := 36517, upper := 36589, witness := RowWitness.topPrime 36497 } = true := by
  exact good_top_prime_checked (i := 93) (r := 30) (s := 65) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row093_good199_checked :
    goodSegmentCheck 93 30 65
      { lower := 36590, upper := 36593, witness := RowWitness.topPrime 36587 } = true := by
  exact good_top_prime_checked (i := 93) (r := 30) (s := 65) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row093_good200_checked :
    goodSegmentCheck 93 30 65
      { lower := 37500, upper := 37538, witness := RowWitness.topPrime 37493 } = true := by
  exact good_top_prime_checked (i := 93) (r := 30) (s := 65) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row093_good201_checked :
    goodSegmentCheck 93 30 65
      { lower := 39326, upper := 39415, witness := RowWitness.topPrime 39323 } = true := by
  exact good_top_prime_checked (i := 93) (r := 30) (s := 65) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row093_good202_checked :
    goodSegmentCheck 93 30 65
      { lower := 39416, upper := 39418, witness := RowWitness.topPrime 39409 } = true := by
  exact good_top_prime_checked (i := 93) (r := 30) (s := 65) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row093_good203_checked :
    goodSegmentCheck 93 30 65
      { lower := 40401, upper := 40420, witness := RowWitness.topPrime 40387 } = true := by
  exact good_top_prime_checked (i := 93) (r := 30) (s := 65) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row093_good204_checked :
    goodSegmentCheck 93 30 65
      { lower := 40960, upper := 41023, witness := RowWitness.topPrime 40949 } = true := by
  exact good_top_prime_checked (i := 93) (r := 30) (s := 65) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row093_good205_checked :
    goodSegmentCheck 93 30 65
      { lower := 43750, upper := 43779, witness := RowWitness.topPrime 43721 } = true := by
  exact good_top_prime_checked (i := 93) (r := 30) (s := 65) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row093_good206_checked :
    goodSegmentCheck 93 30 65
      { lower := 44944, upper := 44982, witness := RowWitness.topPrime 44939 } = true := by
  exact good_top_prime_checked (i := 93) (r := 30) (s := 65) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row093_good207_checked :
    goodSegmentCheck 93 30 65
      { lower := 48013, upper := 48053, witness := RowWitness.topPrime 47981 } = true := by
  exact good_top_prime_checked (i := 93) (r := 30) (s := 65) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row093_good192_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row093_good193_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row093_good194_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row093_good195_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row093_good196_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row093_good197_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row093_good198_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row093_good199_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row093_good200_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row093_good201_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row093_good202_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row093_good203_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row093_good204_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row093_good205_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row093_good206_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row093_good207_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row093_good208_checked :
    goodSegmentCheck 93 30 65
      { lower := 48734, upper := 48760, witness := RowWitness.topPrime 48733 } = true := by
  exact good_top_prime_checked (i := 93) (r := 30) (s := 65) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row093_good209_checked :
    goodSegmentCheck 93 30 65
      { lower := 48778, upper := 48826, witness := RowWitness.topPrime 48767 } = true := by
  exact good_top_prime_checked (i := 93) (r := 30) (s := 65) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row093_good210_checked :
    goodSegmentCheck 93 30 65
      { lower := 49152, upper := 49222, witness := RowWitness.topPrime 49139 } = true := by
  exact good_top_prime_checked (i := 93) (r := 30) (s := 65) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row093_good211_checked :
    goodSegmentCheck 93 30 65
      { lower := 50000, upper := 50020, witness := RowWitness.topPrime 49999 } = true := by
  exact good_top_prime_checked (i := 93) (r := 30) (s := 65) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row093_good212_checked :
    goodSegmentCheck 93 30 65
      { lower := 50421, upper := 50502, witness := RowWitness.topPrime 50417 } = true := by
  exact good_top_prime_checked (i := 93) (r := 30) (s := 65) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row093_good213_checked :
    goodSegmentCheck 93 30 65
      { lower := 53290, upper := 53340, witness := RowWitness.topPrime 53281 } = true := by
  exact good_top_prime_checked (i := 93) (r := 30) (s := 65) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row093_good214_checked :
    goodSegmentCheck 93 30 65
      { lower := 55451, upper := 55533, witness := RowWitness.topPrime 55441 } = true := by
  exact good_top_prime_checked (i := 93) (r := 30) (s := 65) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row093_good215_checked :
    goodSegmentCheck 93 30 65
      { lower := 55534, upper := 55539, witness := RowWitness.topPrime 55529 } = true := by
  exact good_top_prime_checked (i := 93) (r := 30) (s := 65) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row093_good216_checked :
    goodSegmentCheck 93 30 65
      { lower := 58619, upper := 58656, witness := RowWitness.topPrime 58613 } = true := by
  exact good_top_prime_checked (i := 93) (r := 30) (s := 65) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row093_good217_checked :
    goodSegmentCheck 93 30 65
      { lower := 62500, upper := 62502, witness := RowWitness.topPrime 62497 } = true := by
  exact good_top_prime_checked (i := 93) (r := 30) (s := 65) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row093_good218_checked :
    goodSegmentCheck 93 30 65
      { lower := 63948, upper := 63961, witness := RowWitness.topPrime 63929 } = true := by
  exact good_top_prime_checked (i := 93) (r := 30) (s := 65) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row093_good219_checked :
    goodSegmentCheck 93 30 65
      { lower := 65536, upper := 65613, witness := RowWitness.topPrime 65521 } = true := by
  exact good_top_prime_checked (i := 93) (r := 30) (s := 65) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row093_good220_checked :
    goodSegmentCheck 93 30 65
      { lower := 65614, upper := 65625, witness := RowWitness.topPrime 65609 } = true := by
  exact good_top_prime_checked (i := 93) (r := 30) (s := 65) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row093_good221_checked :
    goodSegmentCheck 93 30 65
      { lower := 68651, upper := 68682, witness := RowWitness.topPrime 68639 } = true := by
  exact good_top_prime_checked (i := 93) (r := 30) (s := 65) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row093_good222_checked :
    goodSegmentCheck 93 30 65
      { lower := 68921, upper := 68982, witness := RowWitness.topPrime 68917 } = true := by
  exact good_top_prime_checked (i := 93) (r := 30) (s := 65) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row093_good223_checked :
    goodSegmentCheck 93 30 65
      { lower := 73205, upper := 73259, witness := RowWitness.topPrime 73189 } = true := by
  exact good_top_prime_checked (i := 93) (r := 30) (s := 65) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row093_good208_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row093_good209_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row093_good210_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row093_good211_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row093_good212_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row093_good213_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row093_good214_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row093_good215_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row093_good216_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row093_good217_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row093_good218_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row093_good219_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row093_good220_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row093_good221_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row093_good222_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row093_good223_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row093_good224_checked :
    goodSegmentCheck 93 30 65
      { lower := 146410, upper := 146426, witness := RowWitness.topPrime 146407 } = true := by
  exact good_top_prime_checked (i := 93) (r := 30) (s := 65) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row093_good224_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row093_goods_checked :
    row093.goods.all (goodSegmentCheck row093.height.i row093.height.r row093.height.s) = true := by
  change row093_goods.all (goodSegmentCheck 93 30 65) = true
  simp only [row093_goods, List.all_cons, List.all_nil,
    row093_good000_checked,
    row093_good001_checked,
    row093_good002_checked,
    row093_good003_checked,
    row093_good004_checked,
    row093_good005_checked,
    row093_good006_checked,
    row093_good007_checked,
    row093_good008_checked,
    row093_good009_checked,
    row093_good010_checked,
    row093_good011_checked,
    row093_good012_checked,
    row093_good013_checked,
    row093_good014_checked,
    row093_good015_checked,
    row093_good016_checked,
    row093_good017_checked,
    row093_good018_checked,
    row093_good019_checked,
    row093_good020_checked,
    row093_good021_checked,
    row093_good022_checked,
    row093_good023_checked,
    row093_good024_checked,
    row093_good025_checked,
    row093_good026_checked,
    row093_good027_checked,
    row093_good028_checked,
    row093_good029_checked,
    row093_good030_checked,
    row093_good031_checked,
    row093_good032_checked,
    row093_good033_checked,
    row093_good034_checked,
    row093_good035_checked,
    row093_good036_checked,
    row093_good037_checked,
    row093_good038_checked,
    row093_good039_checked,
    row093_good040_checked,
    row093_good041_checked,
    row093_good042_checked,
    row093_good043_checked,
    row093_good044_checked,
    row093_good045_checked,
    row093_good046_checked,
    row093_good047_checked,
    row093_good048_checked,
    row093_good049_checked,
    row093_good050_checked,
    row093_good051_checked,
    row093_good052_checked,
    row093_good053_checked,
    row093_good054_checked,
    row093_good055_checked,
    row093_good056_checked,
    row093_good057_checked,
    row093_good058_checked,
    row093_good059_checked,
    row093_good060_checked,
    row093_good061_checked,
    row093_good062_checked,
    row093_good063_checked,
    row093_good064_checked,
    row093_good065_checked,
    row093_good066_checked,
    row093_good067_checked,
    row093_good068_checked,
    row093_good069_checked,
    row093_good070_checked,
    row093_good071_checked,
    row093_good072_checked,
    row093_good073_checked,
    row093_good074_checked,
    row093_good075_checked,
    row093_good076_checked,
    row093_good077_checked,
    row093_good078_checked,
    row093_good079_checked,
    row093_good080_checked,
    row093_good081_checked,
    row093_good082_checked,
    row093_good083_checked,
    row093_good084_checked,
    row093_good085_checked,
    row093_good086_checked,
    row093_good087_checked,
    row093_good088_checked,
    row093_good089_checked,
    row093_good090_checked,
    row093_good091_checked,
    row093_good092_checked,
    row093_good093_checked,
    row093_good094_checked,
    row093_good095_checked,
    row093_good096_checked,
    row093_good097_checked,
    row093_good098_checked,
    row093_good099_checked,
    row093_good100_checked,
    row093_good101_checked,
    row093_good102_checked,
    row093_good103_checked,
    row093_good104_checked,
    row093_good105_checked,
    row093_good106_checked,
    row093_good107_checked,
    row093_good108_checked,
    row093_good109_checked,
    row093_good110_checked,
    row093_good111_checked,
    row093_good112_checked,
    row093_good113_checked,
    row093_good114_checked,
    row093_good115_checked,
    row093_good116_checked,
    row093_good117_checked,
    row093_good118_checked,
    row093_good119_checked,
    row093_good120_checked,
    row093_good121_checked,
    row093_good122_checked,
    row093_good123_checked,
    row093_good124_checked,
    row093_good125_checked,
    row093_good126_checked,
    row093_good127_checked,
    row093_good128_checked,
    row093_good129_checked,
    row093_good130_checked,
    row093_good131_checked,
    row093_good132_checked,
    row093_good133_checked,
    row093_good134_checked,
    row093_good135_checked,
    row093_good136_checked,
    row093_good137_checked,
    row093_good138_checked,
    row093_good139_checked,
    row093_good140_checked,
    row093_good141_checked,
    row093_good142_checked,
    row093_good143_checked,
    row093_good144_checked,
    row093_good145_checked,
    row093_good146_checked,
    row093_good147_checked,
    row093_good148_checked,
    row093_good149_checked,
    row093_good150_checked,
    row093_good151_checked,
    row093_good152_checked,
    row093_good153_checked,
    row093_good154_checked,
    row093_good155_checked,
    row093_good156_checked,
    row093_good157_checked,
    row093_good158_checked,
    row093_good159_checked,
    row093_good160_checked,
    row093_good161_checked,
    row093_good162_checked,
    row093_good163_checked,
    row093_good164_checked,
    row093_good165_checked,
    row093_good166_checked,
    row093_good167_checked,
    row093_good168_checked,
    row093_good169_checked,
    row093_good170_checked,
    row093_good171_checked,
    row093_good172_checked,
    row093_good173_checked,
    row093_good174_checked,
    row093_good175_checked,
    row093_good176_checked,
    row093_good177_checked,
    row093_good178_checked,
    row093_good179_checked,
    row093_good180_checked,
    row093_good181_checked,
    row093_good182_checked,
    row093_good183_checked,
    row093_good184_checked,
    row093_good185_checked,
    row093_good186_checked,
    row093_good187_checked,
    row093_good188_checked,
    row093_good189_checked,
    row093_good190_checked,
    row093_good191_checked,
    row093_good192_checked,
    row093_good193_checked,
    row093_good194_checked,
    row093_good195_checked,
    row093_good196_checked,
    row093_good197_checked,
    row093_good198_checked,
    row093_good199_checked,
    row093_good200_checked,
    row093_good201_checked,
    row093_good202_checked,
    row093_good203_checked,
    row093_good204_checked,
    row093_good205_checked,
    row093_good206_checked,
    row093_good207_checked,
    row093_good208_checked,
    row093_good209_checked,
    row093_good210_checked,
    row093_good211_checked,
    row093_good212_checked,
    row093_good213_checked,
    row093_good214_checked,
    row093_good215_checked,
    row093_good216_checked,
    row093_good217_checked,
    row093_good218_checked,
    row093_good219_checked,
    row093_good220_checked,
    row093_good221_checked,
    row093_good222_checked,
    row093_good223_checked,
    row093_good224_checked, Bool.true_and]

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row093_goods_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row093_registered :
    decide (row093.height ∈ heightCertificateData) = true := by
  decide +kernel

theorem row093_small_checked :
    coverCheck (2 * row093.height.i + 2) (row093.height.i * (row093.height.i - 1) - 1)
      (row093.goods.map goodSegmentBounds) = true := by
  decide +kernel

theorem row093_layerCover_checked :
    coverCheck (row093.height.i * (row093.height.i - 1)) (row093.height.n0 - 1)
      (row093.layers.map CoverLayer.bounds) = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row093_registered
#print axioms B699LowIndex.LowIndexLean513dc7cc.row093_small_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row093_layerCover_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row093_bounds : List NatInterval :=
  [(188, 273), (274, 363), (364, 451), (452, 541), (542, 633), (634, 723), (724, 811), (812, 903), (904, 979), (980, 1069), (1070, 1161), (1162, 1245), (1246, 1329), (1330, 1419), (1420, 1501), (1502, 1591), (1592, 1675), (1676, 1761), (1762, 1851), (1852, 1939), (1940, 2025), (2026, 2109), (2110, 2191), (2192, 2271), (2272, 2361), (2362, 2449), (2450, 2539), (2540, 2631), (2632, 2713), (2714, 2805), (2806, 2895), (2896, 2979), (2980, 3063), (3064, 3153), (3154, 3229), (3230, 3321), (3322, 3411), (3412, 3499), (3500, 3591), (3592, 3675), (3676, 3765), (3766, 3853), (3854, 3945), (3946, 4035), (4036, 4119), (4120, 4203), (4204, 4293), (4294, 4381), (4382, 4465), (4466, 4555), (4556, 4641), (4642, 4731), (4732, 4821), (4822, 4909), (4910, 5001), (5002, 5091), (5092, 5179), (5180, 5271), (5272, 5353), (5354, 5443), (5444, 5535), (5536, 5623), (5624, 5715), (5716, 5803), (5804, 5893), (5894, 5973), (5974, 6045), (6046, 6135), (6136, 6225), (6226, 6313), (6314, 6403), (6404, 6489), (6490, 6573), (6574, 6663), (6664, 6753), (6754, 6829), (6830, 6921), (6922, 7009), (7010, 7093), (7094, 7171), (7172, 7251), (7252, 7339), (7340, 7425), (7426, 7509), (7510, 7599), (7600, 7683), (7684, 7773), (7774, 7851), (7852, 7933), (7934, 8025), (8026, 8109), (8110, 8193), (8194, 8283), (8284, 8365), (8366, 8455), (8456, 8539), (8540, 8555), (8748, 8839), (8840, 8880), (8993, 9063), (9064, 9070), (9245, 9333), (9334, 9343), (9375, 9409), (9583, 9643), (9644, 9675), (10051, 10131), (10132, 10178), (10625, 10705), (10706, 10740), (10935, 11001), (11002, 11077), (11094, 11185), (11186, 11201), (11236, 11305), (11306, 11342), (11774, 11835), (11836, 11866), (12005, 12071), (12321, 12380), (12500, 12574), (13125, 13213), (13214, 13217), (13254, 13274), (13310, 13401), (13402, 13402), (13456, 13543), (13544, 13548), (13718, 13803), (13804, 13842), (14336, 14419), (14420, 14467), (14792, 14831), (14884, 14884), (15123, 15213), (15214, 15221), (15360, 15451), (15452, 15452), (15463, 15471), (15979, 16065), (16066, 16071), (16428, 16476), (16810, 16879), (16880, 16912), (17408, 17493), (17494, 17497), (18490, 18573), (18574, 18582), (18634, 18697), (18723, 18726), (18750, 18815), (19208, 19258), (19663, 19753), (19754, 19755), (19773, 19775), (19965, 19973), (20172, 20253), (20254, 20256), (20535, 20572), (20577, 20627), (20667, 20669), (21316, 21388), (21875, 21963), (21964, 21967), (21970, 21996), (22472, 22561), (22562, 22564), (24010, 24099), (24100, 24102), (24334, 24421), (24422, 24459), (24576, 24663), (24664, 24668), (25000, 25056), (25215, 25281), (25282, 25353), (25354, 25373), (26047, 26103), (26411, 26456), (26645, 26716), (26934, 26988), (28125, 28182), (28577, 28653), (28717, 28764), (30258, 30338), (30758, 30812), (30926, 30991), (31213, 31285), (31286, 31305), (31329, 31342), (31433, 31489), (31490, 31515), (31974, 32031), (32805, 32860), (34375, 34387), (34391, 34473), (34474, 34483), (35344, 35379), (36517, 36589), (36590, 36593), (37500, 37538), (39326, 39415), (39416, 39418), (40401, 40420), (40960, 41023), (43750, 43779), (44944, 44982), (48013, 48053), (48734, 48760), (48778, 48826), (49152, 49222), (50000, 50020), (50421, 50502), (53290, 53340), (55451, 55533), (55534, 55539), (58619, 58656), (62500, 62502), (63948, 63961), (65536, 65613), (65614, 65625), (68651, 68682), (68921, 68982), (73205, 73259), (146410, 146426)]

theorem row093_bounds_eq : row093.goods.map goodSegmentBounds = row093_bounds := by
  rfl

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row093_bounds_eq

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row093_layer000_intervals : List ColouredInterval :=
  [(2, 8704, 8796), (2, 9216, 9308), (2, 9728, 9820), (2, 10240, 10332), (2, 10752, 10844), (2, 11264, 11356), (2, 11776, 11868), (2, 9216, 9308), (2, 10240, 10332), (2, 11264, 11356), (2, 12288, 12380), (2, 13312, 13404), (2, 14336, 14428), (2, 15360, 15452), (2, 16384, 16476), (2, 10240, 10332), (2, 12288, 12380), (2, 14336, 14428), (2, 16384, 16476), (2, 12288, 12380), (2, 16384, 16476), (2, 16384, 16476), (2, 16384, 16476), (3, 8748, 8840), (3, 10935, 11027), (3, 13122, 13214), (3, 15309, 15401), (3, 13122, 13214), (5, 8750, 8842), (5, 9375, 9467), (5, 10000, 10092), (5, 10625, 10717), (5, 11250, 11342), (5, 11875, 11967), (5, 12500, 12592), (5, 13125, 13217), (5, 13750, 13842), (5, 14375, 14467), (5, 9375, 9467), (5, 12500, 12592), (5, 15625, 15717), (5, 15625, 15717), (7, 9604, 9696), (7, 12005, 12097), (7, 14406, 14498), (7, 16807, 16899), (7, 16807, 16899), (11, 9317, 9409), (11, 10648, 10740), (11, 11979, 12071), (11, 13310, 13402), (11, 14641, 14733), (11, 15972, 16064), (11, 14641, 14733), (13, 8788, 8880), (13, 10985, 11077), (13, 13182, 13274), (13, 15379, 15471), (17, 9826, 9918), (17, 14739, 14831), (19, 13718, 13810), (23, 8556, 8556), (23, 8993, 9085), (23, 9522, 9614), (23, 10051, 10143), (23, 10580, 10672), (23, 11109, 11201), (23, 11638, 11730), (23, 12167, 12259), (23, 12167, 12259), (29, 9251, 9343), (29, 10092, 10184), (29, 10933, 11025), (29, 11774, 11866), (29, 12615, 12707), (29, 13456, 13548), (29, 14297, 14389), (29, 15138, 15230), (29, 15979, 16071), (29, 16820, 16912), (37, 9583, 9675), (37, 10952, 11044), (37, 12321, 12413), (37, 13690, 13782), (37, 15059, 15151), (37, 16428, 16520), (41, 10086, 10178), (41, 11767, 11859), (41, 13448, 13540), (41, 15129, 15221), (41, 16810, 16902), (43, 9245, 9337), (43, 11094, 11186), (43, 12943, 13035), (43, 14792, 14884), (43, 16641, 16733), (47, 8836, 8928), (47, 11045, 11137), (47, 13254, 13346), (47, 15463, 15555), (53, 11236, 11328), (53, 14045, 14137), (53, 16854, 16946), (59, 10443, 10535), (59, 13924, 14016), (61, 11163, 11255), (61, 14884, 14976), (67, 8978, 9070), (67, 13467, 13559), (71, 10082, 10174), (71, 15123, 15215), (73, 10658, 10750), (73, 15987, 16079), (79, 12482, 12574), (83, 13778, 13870), (89, 15842, 15934)]

def row093_layer000_block000 : List ColouredInterval :=
  [(2, 8704, 8796), (2, 9216, 9308), (2, 9728, 9820), (2, 10240, 10332), (2, 10752, 10844), (2, 11264, 11356), (2, 11776, 11868), (2, 9216, 9308), (2, 10240, 10332), (2, 11264, 11356), (2, 12288, 12380), (2, 13312, 13404), (2, 14336, 14428), (2, 15360, 15452), (2, 16384, 16476), (2, 10240, 10332)]

def row093_layer000_block001 : List ColouredInterval :=
  [(2, 12288, 12380), (2, 14336, 14428), (2, 16384, 16476), (2, 12288, 12380), (2, 16384, 16476), (2, 16384, 16476), (2, 16384, 16476), (3, 8748, 8840), (3, 10935, 11027), (3, 13122, 13214), (3, 15309, 15401), (3, 13122, 13214), (5, 8750, 8842), (5, 9375, 9467), (5, 10000, 10092), (5, 10625, 10717)]

def row093_layer000_block002 : List ColouredInterval :=
  [(5, 11250, 11342), (5, 11875, 11967), (5, 12500, 12592), (5, 13125, 13217), (5, 13750, 13842), (5, 14375, 14467), (5, 9375, 9467), (5, 12500, 12592), (5, 15625, 15717), (5, 15625, 15717), (7, 9604, 9696), (7, 12005, 12097), (7, 14406, 14498), (7, 16807, 16899), (7, 16807, 16899), (11, 9317, 9409)]

def row093_layer000_block003 : List ColouredInterval :=
  [(11, 10648, 10740), (11, 11979, 12071), (11, 13310, 13402), (11, 14641, 14733), (11, 15972, 16064), (11, 14641, 14733), (13, 8788, 8880), (13, 10985, 11077), (13, 13182, 13274), (13, 15379, 15471), (17, 9826, 9918), (17, 14739, 14831), (19, 13718, 13810), (23, 8556, 8556), (23, 8993, 9085), (23, 9522, 9614)]

def row093_layer000_block004 : List ColouredInterval :=
  [(23, 10051, 10143), (23, 10580, 10672), (23, 11109, 11201), (23, 11638, 11730), (23, 12167, 12259), (23, 12167, 12259), (29, 9251, 9343), (29, 10092, 10184), (29, 10933, 11025), (29, 11774, 11866), (29, 12615, 12707), (29, 13456, 13548), (29, 14297, 14389), (29, 15138, 15230), (29, 15979, 16071), (29, 16820, 16912)]

def row093_layer000_block005 : List ColouredInterval :=
  [(37, 9583, 9675), (37, 10952, 11044), (37, 12321, 12413), (37, 13690, 13782), (37, 15059, 15151), (37, 16428, 16520), (41, 10086, 10178), (41, 11767, 11859), (41, 13448, 13540), (41, 15129, 15221), (41, 16810, 16902), (43, 9245, 9337), (43, 11094, 11186), (43, 12943, 13035), (43, 14792, 14884), (43, 16641, 16733)]

def row093_layer000_block006 : List ColouredInterval :=
  [(47, 8836, 8928), (47, 11045, 11137), (47, 13254, 13346), (47, 15463, 15555), (53, 11236, 11328), (53, 14045, 14137), (53, 16854, 16946), (59, 10443, 10535), (59, 13924, 14016), (61, 11163, 11255), (61, 14884, 14976), (67, 8978, 9070), (67, 13467, 13559), (71, 10082, 10174), (71, 15123, 15215), (73, 10658, 10750)]

def row093_layer000_block007 : List ColouredInterval :=
  [(73, 15987, 16079), (79, 12482, 12574), (83, 13778, 13870), (89, 15842, 15934)]

def row093_layer000_chunks : List (List ColouredInterval) :=
  [row093_layer000_block000, row093_layer000_block001, row093_layer000_block002, row093_layer000_block003, row093_layer000_block004, row093_layer000_block005, row093_layer000_block006, row093_layer000_block007]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row093_layer000_intervals

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row093_layer000_arithmetic : LayerArithmeticValid row093.height { lower := 8556, upper := 17112, M := 23 } := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row093_layer000_arithmetic

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row093_layer000_enumeration :
    activePowerIntervalList 93 23 8556 17112 = row093_layer000_intervals := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row093_layer000_enumeration

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row093_layer000_pairs000 :
    row093_layer000_block000.all (fun I => row093_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row093_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row093_layer000_pairs000

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row093_layer000_pairs001 :
    row093_layer000_block001.all (fun I => row093_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row093_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row093_layer000_pairs001

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row093_layer000_pairs002 :
    row093_layer000_block002.all (fun I => row093_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row093_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row093_layer000_pairs002

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row093_layer000_pairs003 :
    row093_layer000_block003.all (fun I => row093_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row093_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row093_layer000_pairs003

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row093_layer000_pairs004 :
    row093_layer000_block004.all (fun I => row093_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row093_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row093_layer000_pairs004

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row093_layer000_pairs005 :
    row093_layer000_block005.all (fun I => row093_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row093_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row093_layer000_pairs005

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row093_layer000_pairs006 :
    row093_layer000_block006.all (fun I => row093_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row093_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row093_layer000_pairs006

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row093_layer000_pairs007 :
    row093_layer000_block007.all (fun I => row093_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row093_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row093_layer000_pairs007

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row093_layer000_chunks_eq : row093_layer000_chunks.flatten = row093_layer000_intervals := by
  rfl

theorem row093_layer000_pairs : pairCoverCheck row093_layer000_intervals row093_bounds = true := by
  apply pairCoverCheck_of_chunks row093_layer000_chunks_eq
  intro block hblock
  simp only [row093_layer000_chunks, List.mem_cons, List.mem_nil_iff, or_false] at hblock
  rcases hblock with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
  · exact row093_layer000_pairs000
  · exact row093_layer000_pairs001
  · exact row093_layer000_pairs002
  · exact row093_layer000_pairs003
  · exact row093_layer000_pairs004
  · exact row093_layer000_pairs005
  · exact row093_layer000_pairs006
  · exact row093_layer000_pairs007

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row093_layer000_chunks_eq
#print axioms B699LowIndex.LowIndexLean513dc7cc.row093_layer000_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row093_layer000_checked :
    coverLayerCheck row093.height row093.goods { lower := 8556, upper := 17112, M := 23 } = true := by
  exact coverLayerCheck_of_parts row093_layer000_arithmetic row093_layer000_enumeration row093_bounds_eq row093_layer000_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row093_layer000_checked

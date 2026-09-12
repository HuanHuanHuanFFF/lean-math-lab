import research.tasks.«B699-Binomial».runs.«20260909-low-index-structure-b41a5a63».lean.FiniteCover
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.WitnessBridge
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.LayerParts
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.PairChunks

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row037_height : HeightCertificateDatum := { i := 37, r := 12, s := 25, n0Power10 := 18 }

def row037_goods : List GoodSegment := [
  { lower := 76, upper := 109, witness := RowWitness.topPrime 73 },
  { lower := 110, upper := 145, witness := RowWitness.topPrime 109 },
  { lower := 146, upper := 175, witness := RowWitness.topPrime 139 },
  { lower := 176, upper := 209, witness := RowWitness.topPrime 173 },
  { lower := 210, upper := 235, witness := RowWitness.topPrime 199 },
  { lower := 236, upper := 269, witness := RowWitness.topPrime 233 },
  { lower := 270, upper := 305, witness := RowWitness.topPrime 269 },
  { lower := 306, upper := 329, witness := RowWitness.topPrime 293 },
  { lower := 330, upper := 353, witness := RowWitness.topPrime 317 },
  { lower := 354, upper := 389, witness := RowWitness.topPrime 353 },
  { lower := 390, upper := 425, witness := RowWitness.topPrime 389 },
  { lower := 426, upper := 457, witness := RowWitness.topPrime 421 },
  { lower := 458, upper := 493, witness := RowWitness.topPrime 457 },
  { lower := 494, upper := 527, witness := RowWitness.topPrime 491 },
  { lower := 528, upper := 559, witness := RowWitness.topPrime 523 },
  { lower := 560, upper := 593, witness := RowWitness.topPrime 557 },
  { lower := 594, upper := 629, witness := RowWitness.topPrime 593 },
  { lower := 630, upper := 655, witness := RowWitness.topPrime 619 },
  { lower := 656, upper := 689, witness := RowWitness.topPrime 653 },
  { lower := 690, upper := 719, witness := RowWitness.topPrime 683 },
  { lower := 720, upper := 755, witness := RowWitness.topPrime 719 },
  { lower := 756, upper := 787, witness := RowWitness.topPrime 751 },
  { lower := 788, upper := 823, witness := RowWitness.topPrime 787 },
  { lower := 824, upper := 859, witness := RowWitness.topPrime 823 },
  { lower := 860, upper := 895, witness := RowWitness.topPrime 859 },
  { lower := 896, upper := 923, witness := RowWitness.topPrime 887 },
  { lower := 924, upper := 955, witness := RowWitness.topPrime 919 },
  { lower := 956, upper := 989, witness := RowWitness.topPrime 953 },
  { lower := 990, upper := 1019, witness := RowWitness.topPrime 983 },
  { lower := 1020, upper := 1055, witness := RowWitness.topPrime 1019 },
  { lower := 1056, upper := 1087, witness := RowWitness.topPrime 1051 },
  { lower := 1088, upper := 1123, witness := RowWitness.topPrime 1087 },
  { lower := 1124, upper := 1159, witness := RowWitness.topPrime 1123 },
  { lower := 1160, upper := 1189, witness := RowWitness.topPrime 1153 },
  { lower := 1190, upper := 1223, witness := RowWitness.topPrime 1187 },
  { lower := 1224, upper := 1259, witness := RowWitness.topPrime 1223 },
  { lower := 1260, upper := 1295, witness := RowWitness.topPrime 1259 },
  { lower := 1296, upper := 1327, witness := RowWitness.topPrime 1291 },
  { lower := 1328, upper := 1363, witness := RowWitness.topPrime 1327 },
  { lower := 1364, upper := 1397, witness := RowWitness.topPrime 1361 },
  { lower := 1398, upper := 1413, witness := RowWitness.topPrime 1381 },
  { lower := 1421, upper := 1445, witness := RowWitness.topPrime 1409 },
  { lower := 1446, upper := 1475, witness := RowWitness.topPrime 1439 },
  { lower := 1476, upper := 1507, witness := RowWitness.topPrime 1471 },
  { lower := 1508, upper := 1508, witness := RowWitness.topPrime 1499 },
  { lower := 1521, upper := 1547, witness := RowWitness.topPrime 1511 },
  { lower := 1548, upper := 1575, witness := RowWitness.topPrime 1543 },
  { lower := 1587, upper := 1619, witness := RowWitness.topPrime 1583 },
  { lower := 1620, upper := 1655, witness := RowWitness.topPrime 1619 },
  { lower := 1656, upper := 1656, witness := RowWitness.topPrime 1637 },
  { lower := 1682, upper := 1705, witness := RowWitness.topPrime 1669 },
  { lower := 1706, upper := 1735, witness := RowWitness.topPrime 1699 },
  { lower := 1736, upper := 1769, witness := RowWitness.topPrime 1733 },
  { lower := 1770, upper := 1770, witness := RowWitness.topPrime 1759 },
  { lower := 1782, upper := 1786, witness := RowWitness.topPrime 1777 },
  { lower := 1792, upper := 1825, witness := RowWitness.topPrime 1789 },
  { lower := 1826, upper := 1841, witness := RowWitness.topPrime 1823 },
  { lower := 1859, upper := 1883, witness := RowWitness.topPrime 1847 },
  { lower := 1884, upper := 1899, witness := RowWitness.topPrime 1879 },
  { lower := 1922, upper := 1949, witness := RowWitness.topPrime 1913 },
  { lower := 1950, upper := 1972, witness := RowWitness.topPrime 1949 },
  { lower := 2023, upper := 2053, witness := RowWitness.topPrime 2017 },
  { lower := 2054, upper := 2089, witness := RowWitness.topPrime 2053 },
  { lower := 2090, upper := 2093, witness := RowWitness.topPrime 2089 },
  { lower := 2116, upper := 2149, witness := RowWitness.topPrime 2113 },
  { lower := 2150, upper := 2152, witness := RowWitness.topPrime 2143 },
  { lower := 2176, upper := 2197, witness := RowWitness.topPrime 2161 },
  { lower := 2198, upper := 2215, witness := RowWitness.topPrime 2179 },
  { lower := 2216, upper := 2223, witness := RowWitness.topPrime 2213 },
  { lower := 2268, upper := 2286, witness := RowWitness.topPrime 2267 },
  { lower := 2299, upper := 2333, witness := RowWitness.topPrime 2297 },
  { lower := 2334, upper := 2340, witness := RowWitness.topPrime 2333 },
  { lower := 2366, upper := 2393, witness := RowWitness.topPrime 2357 },
  { lower := 2394, upper := 2411, witness := RowWitness.topPrime 2393 },
  { lower := 2420, upper := 2453, witness := RowWitness.topPrime 2417 },
  { lower := 2454, upper := 2466, witness := RowWitness.topPrime 2447 },
  { lower := 2523, upper := 2557, witness := RowWitness.topPrime 2521 },
  { lower := 2558, upper := 2577, witness := RowWitness.topPrime 2557 },
  { lower := 2625, upper := 2637, witness := RowWitness.topPrime 2621 },
  { lower := 2645, upper := 2669, witness := RowWitness.topPrime 2633 },
  { lower := 2670, upper := 2699, witness := RowWitness.topPrime 2663 },
  { lower := 2700, upper := 2724, witness := RowWitness.topPrime 2699 },
  { lower := 2750, upper := 2780, witness := RowWitness.topPrime 2749 },
  { lower := 2783, upper := 2786, witness := RowWitness.topPrime 2777 },
  { lower := 2816, upper := 2819, witness := RowWitness.topPrime 2803 },
  { lower := 2875, upper := 2897, witness := RowWitness.topPrime 2861 },
  { lower := 2898, upper := 2933, witness := RowWitness.topPrime 2897 },
  { lower := 2934, upper := 2940, witness := RowWitness.topPrime 2927 },
  { lower := 2944, upper := 2952, witness := RowWitness.topPrime 2939 },
  { lower := 3025, upper := 3036, witness := RowWitness.topPrime 3023 },
  { lower := 3042, upper := 3061, witness := RowWitness.topPrime 3041 },
  { lower := 3072, upper := 3078, witness := RowWitness.topPrime 3067 },
  { lower := 3087, upper := 3108, witness := RowWitness.topPrime 3083 },
  { lower := 3146, upper := 3173, witness := RowWitness.topPrime 3137 },
  { lower := 3174, upper := 3205, witness := RowWitness.topPrime 3169 },
  { lower := 3206, upper := 3236, witness := RowWitness.topPrime 3203 },
  { lower := 3250, upper := 3265, witness := RowWitness.topPrime 3229 },
  { lower := 3266, upper := 3286, witness := RowWitness.topPrime 3259 },
  { lower := 3364, upper := 3364, witness := RowWitness.topPrime 3361 },
  { lower := 3375, upper := 3409, witness := RowWitness.topPrime 3373 },
  { lower := 3410, upper := 3424, witness := RowWitness.topPrime 3407 },
  { lower := 3430, upper := 3438, witness := RowWitness.topPrime 3413 },
  { lower := 3456, upper := 3466, witness := RowWitness.topPrime 3449 },
  { lower := 3468, upper := 3492, witness := RowWitness.topPrime 3467 },
  { lower := 3500, upper := 3504, witness := RowWitness.topPrime 3499 },
  { lower := 3584, upper := 3585, witness := RowWitness.topPrime 3583 },
  { lower := 3610, upper := 3620, witness := RowWitness.topPrime 3607 },
  { lower := 3645, upper := 3646, witness := RowWitness.topPrime 3643 },
  { lower := 3718, upper := 3739, witness := RowWitness.topPrime 3709 },
  { lower := 3750, upper := 3754, witness := RowWitness.topPrime 3739 },
  { lower := 3757, upper := 3775, witness := RowWitness.topPrime 3739 },
  { lower := 3776, upper := 3793, witness := RowWitness.topPrime 3769 },
  { lower := 3844, upper := 3869, witness := RowWitness.topPrime 3833 },
  { lower := 3870, upper := 3876, witness := RowWitness.topPrime 3863 },
  { lower := 3888, upper := 3917, witness := RowWitness.topPrime 3881 },
  { lower := 3918, upper := 3923, witness := RowWitness.topPrime 3917 },
  { lower := 3993, upper := 4007, witness := RowWitness.topPrime 3989 },
  { lower := 4056, upper := 4082, witness := RowWitness.topPrime 4051 },
  { lower := 4116, upper := 4147, witness := RowWitness.topPrime 4111 },
  { lower := 4148, upper := 4152, witness := RowWitness.topPrime 4139 },
  { lower := 4225, upper := 4255, witness := RowWitness.topPrime 4219 },
  { lower := 4256, upper := 4261, witness := RowWitness.topPrime 4253 },
  { lower := 4335, upper := 4363, witness := RowWitness.topPrime 4327 },
  { lower := 4364, upper := 4371, witness := RowWitness.topPrime 4363 },
  { lower := 4374, upper := 4409, witness := RowWitness.topPrime 4373 },
  { lower := 4410, upper := 4411, witness := RowWitness.topPrime 4409 },
  { lower := 4617, upper := 4639, witness := RowWitness.topPrime 4603 },
  { lower := 4640, upper := 4653, witness := RowWitness.topPrime 4639 },
  { lower := 4761, upper := 4768, witness := RowWitness.topPrime 4759 },
  { lower := 4805, upper := 4837, witness := RowWitness.topPrime 4801 },
  { lower := 4838, upper := 4838, witness := RowWitness.topPrime 4831 },
  { lower := 4864, upper := 4896, witness := RowWitness.topPrime 4861 },
  { lower := 5054, upper := 5082, witness := RowWitness.topPrime 5051 },
  { lower := 5120, upper := 5139, witness := RowWitness.topPrime 5119 },
  { lower := 5145, upper := 5155, witness := RowWitness.topPrime 5119 },
  { lower := 5156, upper := 5156, witness := RowWitness.topPrime 5153 },
  { lower := 5324, upper := 5326, witness := RowWitness.topPrime 5323 },
  { lower := 5346, upper := 5360, witness := RowWitness.topPrime 5333 },
  { lower := 5376, upper := 5382, witness := RowWitness.topPrime 5351 },
  { lower := 5491, upper := 5519, witness := RowWitness.topPrime 5483 },
  { lower := 5520, upper := 5524, witness := RowWitness.topPrime 5519 },
  { lower := 5625, upper := 5625, witness := RowWitness.topPrime 5623 },
  { lower := 5632, upper := 5659, witness := RowWitness.topPrime 5623 },
  { lower := 5660, upper := 5661, witness := RowWitness.topPrime 5659 },
  { lower := 5776, upper := 5785, witness := RowWitness.topPrime 5749 },
  { lower := 5786, upper := 5812, witness := RowWitness.topPrime 5783 },
  { lower := 5831, upper := 5863, witness := RowWitness.topPrime 5827 },
  { lower := 5864, upper := 5867, witness := RowWitness.topPrime 5861 },
  { lower := 5888, upper := 5917, witness := RowWitness.topPrime 5881 },
  { lower := 5918, upper := 5923, witness := RowWitness.topPrime 5903 },
  { lower := 6075, upper := 6105, witness := RowWitness.topPrime 6073 },
  { lower := 6144, upper := 6179, witness := RowWitness.topPrime 6143 },
  { lower := 6180, upper := 6180, witness := RowWitness.topPrime 6173 },
  { lower := 6348, upper := 6354, witness := RowWitness.topPrime 6343 },
  { lower := 6358, upper := 6384, witness := RowWitness.topPrime 6353 },
  { lower := 6517, upper := 6527, witness := RowWitness.topPrime 6491 },
  { lower := 6528, upper := 6534, witness := RowWitness.topPrime 6521 },
  { lower := 6591, upper := 6597, witness := RowWitness.topPrime 6581 },
  { lower := 6655, upper := 6689, witness := RowWitness.topPrime 6653 },
  { lower := 6690, upper := 6691, witness := RowWitness.topPrime 6689 },
  { lower := 6728, upper := 6755, witness := RowWitness.topPrime 6719 },
  { lower := 6756, upper := 6763, witness := RowWitness.topPrime 6737 },
  { lower := 6860, upper := 6893, witness := RowWitness.topPrime 6857 },
  { lower := 6894, upper := 6911, witness := RowWitness.topPrime 6883 },
  { lower := 7203, upper := 7204, witness := RowWitness.topPrime 7193 },
  { lower := 7220, upper := 7255, witness := RowWitness.topPrime 7219 },
  { lower := 7256, upper := 7256, witness := RowWitness.topPrime 7253 },
  { lower := 7514, upper := 7536, witness := RowWitness.topPrime 7507 },
  { lower := 7546, upper := 7550, witness := RowWitness.topPrime 7541 },
  { lower := 7569, upper := 7597, witness := RowWitness.topPrime 7561 },
  { lower := 7598, upper := 7605, witness := RowWitness.topPrime 7591 },
  { lower := 7688, upper := 7716, witness := RowWitness.topPrime 7687 },
  { lower := 7942, upper := 7971, witness := RowWitness.topPrime 7937 },
  { lower := 8019, upper := 8022, witness := RowWitness.topPrime 8017 },
  { lower := 8664, upper := 8685, witness := RowWitness.topPrime 8663 },
  { lower := 8750, upper := 8783, witness := RowWitness.topPrime 8747 },
  { lower := 8784, upper := 8784, witness := RowWitness.topPrime 8783 },
  { lower := 9025, upper := 9029, witness := RowWitness.topPrime 9013 },
  { lower := 9251, upper := 9252, witness := RowWitness.topPrime 9241 },
  { lower := 9386, upper := 9411, witness := RowWitness.topPrime 9377 },
  { lower := 9610, upper := 9637, witness := RowWitness.topPrime 9601 },
  { lower := 9638, upper := 9640, witness := RowWitness.topPrime 9631 },
  { lower := 10240, upper := 10242, witness := RowWitness.topPrime 10223 },
  { lower := 10580, upper := 10603, witness := RowWitness.topPrime 10567 },
  { lower := 10604, upper := 10607, witness := RowWitness.topPrime 10601 },
  { lower := 10648, upper := 10661, witness := RowWitness.topPrime 10639 },
  { lower := 10935, upper := 10945, witness := RowWitness.topPrime 10909 },
  { lower := 10946, upper := 10969, witness := RowWitness.topPrime 10939 },
  { lower := 11264, upper := 11286, witness := RowWitness.topPrime 11261 },
  { lower := 11664, upper := 11674, witness := RowWitness.topPrime 11657 },
  { lower := 11776, upper := 11779, witness := RowWitness.topPrime 11743 },
  { lower := 11780, upper := 11810, witness := RowWitness.topPrime 11779 },
  { lower := 12005, upper := 12015, witness := RowWitness.topPrime 11987 },
  { lower := 12500, upper := 12529, witness := RowWitness.topPrime 12497 },
  { lower := 13125, upper := 13157, witness := RowWitness.topPrime 13121 },
  { lower := 13158, upper := 13158, witness := RowWitness.topPrime 13151 },
  { lower := 13312, upper := 13345, witness := RowWitness.topPrime 13309 },
  { lower := 13346, upper := 13346, witness := RowWitness.topPrime 13339 },
  { lower := 13456, upper := 13487, witness := RowWitness.topPrime 13451 },
  { lower := 13488, upper := 13490, witness := RowWitness.topPrime 13487 },
  { lower := 13750, upper := 13754, witness := RowWitness.topPrime 13729 },
  { lower := 14406, upper := 14411, witness := RowWitness.topPrime 14401 },
  { lower := 14415, upper := 14442, witness := RowWitness.topPrime 14411 },
  { lower := 15376, upper := 15409, witness := RowWitness.topPrime 15373 },
  { lower := 15410, upper := 15412, witness := RowWitness.topPrime 15401 },
  { lower := 15979, upper := 16008, witness := RowWitness.topPrime 15973 },
  { lower := 16820, upper := 16843, witness := RowWitness.topPrime 16811 },
  { lower := 17303, upper := 17334, witness := RowWitness.topPrime 17299 },
  { lower := 19220, upper := 19244, witness := RowWitness.topPrime 19219 },
  { lower := 19683, upper := 19688, witness := RowWitness.topPrime 19681 },
  { lower := 20184, upper := 20217, witness := RowWitness.topPrime 20183 },
  { lower := 21875, upper := 21906, witness := RowWitness.topPrime 21871 },
  { lower := 24576, upper := 24601, witness := RowWitness.topPrime 24571 },
  { lower := 26624, upper := 26633, witness := RowWitness.topPrime 26597 },
  { lower := 26634, upper := 26656, witness := RowWitness.topPrime 26633 },
  { lower := 30618, upper := 30629, witness := RowWitness.topPrime 30593 },
  { lower := 30630, upper := 30630, witness := RowWitness.largeDivisor 12089236669596647848536258343394961775881123110993437634153872729971791492211219811840006525763101782550942319 },
  { lower := 30631, upper := 30649, witness := RowWitness.topPrime 30631 },
  { lower := 34391, upper := 34411, witness := RowWitness.topPrime 34381 },
  { lower := 43750, upper := 43757, witness := RowWitness.topPrime 43721 },
  { lower := 43758, upper := 43776, witness := RowWitness.topPrime 43753 },
  { lower := 43940, upper := 43959, witness := RowWitness.topPrime 43933 },
  { lower := 48020, upper := 48049, witness := RowWitness.topPrime 48017 },
  { lower := 49152, upper := 49166, witness := RowWitness.topPrime 49139 },
  { lower := 65625, upper := 65646, witness := RowWitness.topPrime 65617 },
  { lower := 73728, upper := 73731, witness := RowWitness.topPrime 73727 },
  { lower := 327701, upper := 327716, witness := RowWitness.topPrime 327689 }
]

def row037_layers : List CoverLayer := [
  { lower := 1332, upper := 2664, M := 30 },
  { lower := 2664, upper := 5328, M := 28 },
  { lower := 5328, upper := 10656, M := 26 },
  { lower := 10656, upper := 21312, M := 24 },
  { lower := 21312, upper := 42624, M := 23 },
  { lower := 42624, upper := 85248, M := 21 },
  { lower := 85248, upper := 170496, M := 20 },
  { lower := 170496, upper := 340992, M := 18 },
  { lower := 340992, upper := 681984, M := 17 },
  { lower := 681984, upper := 1363968, M := 16 },
  { lower := 1363968, upper := 2727936, M := 15 },
  { lower := 2727936, upper := 5455872, M := 14 },
  { lower := 5455872, upper := 10911744, M := 13 },
  { lower := 10911744, upper := 21823488, M := 12 },
  { lower := 21823488, upper := 43646976, M := 12 },
  { lower := 43646976, upper := 87293952, M := 11 },
  { lower := 87293952, upper := 174587904, M := 10 },
  { lower := 174587904, upper := 349175808, M := 9 },
  { lower := 349175808, upper := 698351616, M := 9 },
  { lower := 698351616, upper := 1396703232, M := 8 },
  { lower := 1396703232, upper := 2793406464, M := 8 },
  { lower := 2793406464, upper := 5586812928, M := 7 },
  { lower := 5586812928, upper := 11173625856, M := 7 },
  { lower := 11173625856, upper := 22347251712, M := 6 },
  { lower := 22347251712, upper := 44694503424, M := 6 },
  { lower := 44694503424, upper := 89389006848, M := 6 },
  { lower := 89389006848, upper := 178778013696, M := 5 },
  { lower := 178778013696, upper := 357556027392, M := 5 },
  { lower := 357556027392, upper := 715112054784, M := 5 },
  { lower := 715112054784, upper := 1430224109568, M := 4 },
  { lower := 1430224109568, upper := 2860448219136, M := 4 },
  { lower := 2860448219136, upper := 5720896438272, M := 4 },
  { lower := 5720896438272, upper := 11441792876544, M := 4 },
  { lower := 11441792876544, upper := 22883585753088, M := 3 },
  { lower := 22883585753088, upper := 45767171506176, M := 3 },
  { lower := 45767171506176, upper := 91534343012352, M := 3 },
  { lower := 91534343012352, upper := 183068686024704, M := 3 },
  { lower := 183068686024704, upper := 366137372049408, M := 3 },
  { lower := 366137372049408, upper := 732274744098816, M := 3 },
  { lower := 732274744098816, upper := 1464549488197632, M := 2 },
  { lower := 1464549488197632, upper := 2929098976395264, M := 2 },
  { lower := 2929098976395264, upper := 5858197952790528, M := 2 },
  { lower := 5858197952790528, upper := 11716395905581056, M := 2 },
  { lower := 11716395905581056, upper := 23432791811162112, M := 2 },
  { lower := 23432791811162112, upper := 46865583622324224, M := 2 },
  { lower := 46865583622324224, upper := 93731167244648448, M := 2 },
  { lower := 93731167244648448, upper := 187462334489296896, M := 2 },
  { lower := 187462334489296896, upper := 374924668978593792, M := 2 },
  { lower := 374924668978593792, upper := 749849337957187584, M := 2 },
  { lower := 749849337957187584, upper := 1000000000000000000, M := 1 }
]

def row037 : FiniteCoverRow := {
  height := row037_height,
  goods := row037_goods,
  layers := row037_layers
}


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row037

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row037_good000_checked :
    goodSegmentCheck 37 12 25
      { lower := 76, upper := 109, witness := RowWitness.topPrime 73 } = true := by
  exact good_top_prime_checked (i := 37) (r := 12) (s := 25) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row037_good001_checked :
    goodSegmentCheck 37 12 25
      { lower := 110, upper := 145, witness := RowWitness.topPrime 109 } = true := by
  exact good_top_prime_checked (i := 37) (r := 12) (s := 25) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row037_good002_checked :
    goodSegmentCheck 37 12 25
      { lower := 146, upper := 175, witness := RowWitness.topPrime 139 } = true := by
  exact good_top_prime_checked (i := 37) (r := 12) (s := 25) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row037_good003_checked :
    goodSegmentCheck 37 12 25
      { lower := 176, upper := 209, witness := RowWitness.topPrime 173 } = true := by
  exact good_top_prime_checked (i := 37) (r := 12) (s := 25) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row037_good004_checked :
    goodSegmentCheck 37 12 25
      { lower := 210, upper := 235, witness := RowWitness.topPrime 199 } = true := by
  exact good_top_prime_checked (i := 37) (r := 12) (s := 25) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row037_good005_checked :
    goodSegmentCheck 37 12 25
      { lower := 236, upper := 269, witness := RowWitness.topPrime 233 } = true := by
  exact good_top_prime_checked (i := 37) (r := 12) (s := 25) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row037_good006_checked :
    goodSegmentCheck 37 12 25
      { lower := 270, upper := 305, witness := RowWitness.topPrime 269 } = true := by
  exact good_top_prime_checked (i := 37) (r := 12) (s := 25) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row037_good007_checked :
    goodSegmentCheck 37 12 25
      { lower := 306, upper := 329, witness := RowWitness.topPrime 293 } = true := by
  exact good_top_prime_checked (i := 37) (r := 12) (s := 25) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row037_good008_checked :
    goodSegmentCheck 37 12 25
      { lower := 330, upper := 353, witness := RowWitness.topPrime 317 } = true := by
  exact good_top_prime_checked (i := 37) (r := 12) (s := 25) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row037_good009_checked :
    goodSegmentCheck 37 12 25
      { lower := 354, upper := 389, witness := RowWitness.topPrime 353 } = true := by
  exact good_top_prime_checked (i := 37) (r := 12) (s := 25) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row037_good010_checked :
    goodSegmentCheck 37 12 25
      { lower := 390, upper := 425, witness := RowWitness.topPrime 389 } = true := by
  exact good_top_prime_checked (i := 37) (r := 12) (s := 25) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row037_good011_checked :
    goodSegmentCheck 37 12 25
      { lower := 426, upper := 457, witness := RowWitness.topPrime 421 } = true := by
  exact good_top_prime_checked (i := 37) (r := 12) (s := 25) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row037_good012_checked :
    goodSegmentCheck 37 12 25
      { lower := 458, upper := 493, witness := RowWitness.topPrime 457 } = true := by
  exact good_top_prime_checked (i := 37) (r := 12) (s := 25) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row037_good013_checked :
    goodSegmentCheck 37 12 25
      { lower := 494, upper := 527, witness := RowWitness.topPrime 491 } = true := by
  exact good_top_prime_checked (i := 37) (r := 12) (s := 25) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row037_good014_checked :
    goodSegmentCheck 37 12 25
      { lower := 528, upper := 559, witness := RowWitness.topPrime 523 } = true := by
  exact good_top_prime_checked (i := 37) (r := 12) (s := 25) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row037_good015_checked :
    goodSegmentCheck 37 12 25
      { lower := 560, upper := 593, witness := RowWitness.topPrime 557 } = true := by
  exact good_top_prime_checked (i := 37) (r := 12) (s := 25) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_good000_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_good001_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_good002_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_good003_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_good004_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_good005_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_good006_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_good007_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_good008_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_good009_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_good010_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_good011_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_good012_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_good013_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_good014_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_good015_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row037_good016_checked :
    goodSegmentCheck 37 12 25
      { lower := 594, upper := 629, witness := RowWitness.topPrime 593 } = true := by
  exact good_top_prime_checked (i := 37) (r := 12) (s := 25) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row037_good017_checked :
    goodSegmentCheck 37 12 25
      { lower := 630, upper := 655, witness := RowWitness.topPrime 619 } = true := by
  exact good_top_prime_checked (i := 37) (r := 12) (s := 25) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row037_good018_checked :
    goodSegmentCheck 37 12 25
      { lower := 656, upper := 689, witness := RowWitness.topPrime 653 } = true := by
  exact good_top_prime_checked (i := 37) (r := 12) (s := 25) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row037_good019_checked :
    goodSegmentCheck 37 12 25
      { lower := 690, upper := 719, witness := RowWitness.topPrime 683 } = true := by
  exact good_top_prime_checked (i := 37) (r := 12) (s := 25) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row037_good020_checked :
    goodSegmentCheck 37 12 25
      { lower := 720, upper := 755, witness := RowWitness.topPrime 719 } = true := by
  exact good_top_prime_checked (i := 37) (r := 12) (s := 25) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row037_good021_checked :
    goodSegmentCheck 37 12 25
      { lower := 756, upper := 787, witness := RowWitness.topPrime 751 } = true := by
  exact good_top_prime_checked (i := 37) (r := 12) (s := 25) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row037_good022_checked :
    goodSegmentCheck 37 12 25
      { lower := 788, upper := 823, witness := RowWitness.topPrime 787 } = true := by
  exact good_top_prime_checked (i := 37) (r := 12) (s := 25) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row037_good023_checked :
    goodSegmentCheck 37 12 25
      { lower := 824, upper := 859, witness := RowWitness.topPrime 823 } = true := by
  exact good_top_prime_checked (i := 37) (r := 12) (s := 25) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row037_good024_checked :
    goodSegmentCheck 37 12 25
      { lower := 860, upper := 895, witness := RowWitness.topPrime 859 } = true := by
  exact good_top_prime_checked (i := 37) (r := 12) (s := 25) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row037_good025_checked :
    goodSegmentCheck 37 12 25
      { lower := 896, upper := 923, witness := RowWitness.topPrime 887 } = true := by
  exact good_top_prime_checked (i := 37) (r := 12) (s := 25) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row037_good026_checked :
    goodSegmentCheck 37 12 25
      { lower := 924, upper := 955, witness := RowWitness.topPrime 919 } = true := by
  exact good_top_prime_checked (i := 37) (r := 12) (s := 25) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row037_good027_checked :
    goodSegmentCheck 37 12 25
      { lower := 956, upper := 989, witness := RowWitness.topPrime 953 } = true := by
  exact good_top_prime_checked (i := 37) (r := 12) (s := 25) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row037_good028_checked :
    goodSegmentCheck 37 12 25
      { lower := 990, upper := 1019, witness := RowWitness.topPrime 983 } = true := by
  exact good_top_prime_checked (i := 37) (r := 12) (s := 25) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row037_good029_checked :
    goodSegmentCheck 37 12 25
      { lower := 1020, upper := 1055, witness := RowWitness.topPrime 1019 } = true := by
  exact good_top_prime_checked (i := 37) (r := 12) (s := 25) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row037_good030_checked :
    goodSegmentCheck 37 12 25
      { lower := 1056, upper := 1087, witness := RowWitness.topPrime 1051 } = true := by
  exact good_top_prime_checked (i := 37) (r := 12) (s := 25) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row037_good031_checked :
    goodSegmentCheck 37 12 25
      { lower := 1088, upper := 1123, witness := RowWitness.topPrime 1087 } = true := by
  exact good_top_prime_checked (i := 37) (r := 12) (s := 25) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_good016_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_good017_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_good018_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_good019_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_good020_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_good021_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_good022_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_good023_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_good024_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_good025_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_good026_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_good027_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_good028_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_good029_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_good030_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_good031_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row037_good032_checked :
    goodSegmentCheck 37 12 25
      { lower := 1124, upper := 1159, witness := RowWitness.topPrime 1123 } = true := by
  exact good_top_prime_checked (i := 37) (r := 12) (s := 25) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row037_good033_checked :
    goodSegmentCheck 37 12 25
      { lower := 1160, upper := 1189, witness := RowWitness.topPrime 1153 } = true := by
  exact good_top_prime_checked (i := 37) (r := 12) (s := 25) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row037_good034_checked :
    goodSegmentCheck 37 12 25
      { lower := 1190, upper := 1223, witness := RowWitness.topPrime 1187 } = true := by
  exact good_top_prime_checked (i := 37) (r := 12) (s := 25) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row037_good035_checked :
    goodSegmentCheck 37 12 25
      { lower := 1224, upper := 1259, witness := RowWitness.topPrime 1223 } = true := by
  exact good_top_prime_checked (i := 37) (r := 12) (s := 25) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row037_good036_checked :
    goodSegmentCheck 37 12 25
      { lower := 1260, upper := 1295, witness := RowWitness.topPrime 1259 } = true := by
  exact good_top_prime_checked (i := 37) (r := 12) (s := 25) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row037_good037_checked :
    goodSegmentCheck 37 12 25
      { lower := 1296, upper := 1327, witness := RowWitness.topPrime 1291 } = true := by
  exact good_top_prime_checked (i := 37) (r := 12) (s := 25) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row037_good038_checked :
    goodSegmentCheck 37 12 25
      { lower := 1328, upper := 1363, witness := RowWitness.topPrime 1327 } = true := by
  exact good_top_prime_checked (i := 37) (r := 12) (s := 25) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row037_good039_checked :
    goodSegmentCheck 37 12 25
      { lower := 1364, upper := 1397, witness := RowWitness.topPrime 1361 } = true := by
  exact good_top_prime_checked (i := 37) (r := 12) (s := 25) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row037_good040_checked :
    goodSegmentCheck 37 12 25
      { lower := 1398, upper := 1413, witness := RowWitness.topPrime 1381 } = true := by
  exact good_top_prime_checked (i := 37) (r := 12) (s := 25) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row037_good041_checked :
    goodSegmentCheck 37 12 25
      { lower := 1421, upper := 1445, witness := RowWitness.topPrime 1409 } = true := by
  exact good_top_prime_checked (i := 37) (r := 12) (s := 25) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row037_good042_checked :
    goodSegmentCheck 37 12 25
      { lower := 1446, upper := 1475, witness := RowWitness.topPrime 1439 } = true := by
  exact good_top_prime_checked (i := 37) (r := 12) (s := 25) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row037_good043_checked :
    goodSegmentCheck 37 12 25
      { lower := 1476, upper := 1507, witness := RowWitness.topPrime 1471 } = true := by
  exact good_top_prime_checked (i := 37) (r := 12) (s := 25) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row037_good044_checked :
    goodSegmentCheck 37 12 25
      { lower := 1508, upper := 1508, witness := RowWitness.topPrime 1499 } = true := by
  exact good_top_prime_checked (i := 37) (r := 12) (s := 25) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row037_good045_checked :
    goodSegmentCheck 37 12 25
      { lower := 1521, upper := 1547, witness := RowWitness.topPrime 1511 } = true := by
  exact good_top_prime_checked (i := 37) (r := 12) (s := 25) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row037_good046_checked :
    goodSegmentCheck 37 12 25
      { lower := 1548, upper := 1575, witness := RowWitness.topPrime 1543 } = true := by
  exact good_top_prime_checked (i := 37) (r := 12) (s := 25) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row037_good047_checked :
    goodSegmentCheck 37 12 25
      { lower := 1587, upper := 1619, witness := RowWitness.topPrime 1583 } = true := by
  exact good_top_prime_checked (i := 37) (r := 12) (s := 25) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_good032_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_good033_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_good034_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_good035_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_good036_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_good037_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_good038_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_good039_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_good040_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_good041_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_good042_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_good043_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_good044_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_good045_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_good046_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_good047_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row037_good048_checked :
    goodSegmentCheck 37 12 25
      { lower := 1620, upper := 1655, witness := RowWitness.topPrime 1619 } = true := by
  exact good_top_prime_checked (i := 37) (r := 12) (s := 25) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row037_good049_checked :
    goodSegmentCheck 37 12 25
      { lower := 1656, upper := 1656, witness := RowWitness.topPrime 1637 } = true := by
  exact good_top_prime_checked (i := 37) (r := 12) (s := 25) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row037_good050_checked :
    goodSegmentCheck 37 12 25
      { lower := 1682, upper := 1705, witness := RowWitness.topPrime 1669 } = true := by
  exact good_top_prime_checked (i := 37) (r := 12) (s := 25) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row037_good051_checked :
    goodSegmentCheck 37 12 25
      { lower := 1706, upper := 1735, witness := RowWitness.topPrime 1699 } = true := by
  exact good_top_prime_checked (i := 37) (r := 12) (s := 25) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row037_good052_checked :
    goodSegmentCheck 37 12 25
      { lower := 1736, upper := 1769, witness := RowWitness.topPrime 1733 } = true := by
  exact good_top_prime_checked (i := 37) (r := 12) (s := 25) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row037_good053_checked :
    goodSegmentCheck 37 12 25
      { lower := 1770, upper := 1770, witness := RowWitness.topPrime 1759 } = true := by
  exact good_top_prime_checked (i := 37) (r := 12) (s := 25) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row037_good054_checked :
    goodSegmentCheck 37 12 25
      { lower := 1782, upper := 1786, witness := RowWitness.topPrime 1777 } = true := by
  exact good_top_prime_checked (i := 37) (r := 12) (s := 25) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row037_good055_checked :
    goodSegmentCheck 37 12 25
      { lower := 1792, upper := 1825, witness := RowWitness.topPrime 1789 } = true := by
  exact good_top_prime_checked (i := 37) (r := 12) (s := 25) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row037_good056_checked :
    goodSegmentCheck 37 12 25
      { lower := 1826, upper := 1841, witness := RowWitness.topPrime 1823 } = true := by
  exact good_top_prime_checked (i := 37) (r := 12) (s := 25) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row037_good057_checked :
    goodSegmentCheck 37 12 25
      { lower := 1859, upper := 1883, witness := RowWitness.topPrime 1847 } = true := by
  exact good_top_prime_checked (i := 37) (r := 12) (s := 25) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row037_good058_checked :
    goodSegmentCheck 37 12 25
      { lower := 1884, upper := 1899, witness := RowWitness.topPrime 1879 } = true := by
  exact good_top_prime_checked (i := 37) (r := 12) (s := 25) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row037_good059_checked :
    goodSegmentCheck 37 12 25
      { lower := 1922, upper := 1949, witness := RowWitness.topPrime 1913 } = true := by
  exact good_top_prime_checked (i := 37) (r := 12) (s := 25) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row037_good060_checked :
    goodSegmentCheck 37 12 25
      { lower := 1950, upper := 1972, witness := RowWitness.topPrime 1949 } = true := by
  exact good_top_prime_checked (i := 37) (r := 12) (s := 25) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row037_good061_checked :
    goodSegmentCheck 37 12 25
      { lower := 2023, upper := 2053, witness := RowWitness.topPrime 2017 } = true := by
  exact good_top_prime_checked (i := 37) (r := 12) (s := 25) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row037_good062_checked :
    goodSegmentCheck 37 12 25
      { lower := 2054, upper := 2089, witness := RowWitness.topPrime 2053 } = true := by
  exact good_top_prime_checked (i := 37) (r := 12) (s := 25) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row037_good063_checked :
    goodSegmentCheck 37 12 25
      { lower := 2090, upper := 2093, witness := RowWitness.topPrime 2089 } = true := by
  exact good_top_prime_checked (i := 37) (r := 12) (s := 25) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_good048_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_good049_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_good050_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_good051_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_good052_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_good053_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_good054_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_good055_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_good056_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_good057_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_good058_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_good059_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_good060_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_good061_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_good062_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_good063_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row037_good064_checked :
    goodSegmentCheck 37 12 25
      { lower := 2116, upper := 2149, witness := RowWitness.topPrime 2113 } = true := by
  exact good_top_prime_checked (i := 37) (r := 12) (s := 25) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row037_good065_checked :
    goodSegmentCheck 37 12 25
      { lower := 2150, upper := 2152, witness := RowWitness.topPrime 2143 } = true := by
  exact good_top_prime_checked (i := 37) (r := 12) (s := 25) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row037_good066_checked :
    goodSegmentCheck 37 12 25
      { lower := 2176, upper := 2197, witness := RowWitness.topPrime 2161 } = true := by
  exact good_top_prime_checked (i := 37) (r := 12) (s := 25) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row037_good067_checked :
    goodSegmentCheck 37 12 25
      { lower := 2198, upper := 2215, witness := RowWitness.topPrime 2179 } = true := by
  exact good_top_prime_checked (i := 37) (r := 12) (s := 25) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row037_good068_checked :
    goodSegmentCheck 37 12 25
      { lower := 2216, upper := 2223, witness := RowWitness.topPrime 2213 } = true := by
  exact good_top_prime_checked (i := 37) (r := 12) (s := 25) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row037_good069_checked :
    goodSegmentCheck 37 12 25
      { lower := 2268, upper := 2286, witness := RowWitness.topPrime 2267 } = true := by
  exact good_top_prime_checked (i := 37) (r := 12) (s := 25) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row037_good070_checked :
    goodSegmentCheck 37 12 25
      { lower := 2299, upper := 2333, witness := RowWitness.topPrime 2297 } = true := by
  exact good_top_prime_checked (i := 37) (r := 12) (s := 25) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row037_good071_checked :
    goodSegmentCheck 37 12 25
      { lower := 2334, upper := 2340, witness := RowWitness.topPrime 2333 } = true := by
  exact good_top_prime_checked (i := 37) (r := 12) (s := 25) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row037_good072_checked :
    goodSegmentCheck 37 12 25
      { lower := 2366, upper := 2393, witness := RowWitness.topPrime 2357 } = true := by
  exact good_top_prime_checked (i := 37) (r := 12) (s := 25) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row037_good073_checked :
    goodSegmentCheck 37 12 25
      { lower := 2394, upper := 2411, witness := RowWitness.topPrime 2393 } = true := by
  exact good_top_prime_checked (i := 37) (r := 12) (s := 25) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row037_good074_checked :
    goodSegmentCheck 37 12 25
      { lower := 2420, upper := 2453, witness := RowWitness.topPrime 2417 } = true := by
  exact good_top_prime_checked (i := 37) (r := 12) (s := 25) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row037_good075_checked :
    goodSegmentCheck 37 12 25
      { lower := 2454, upper := 2466, witness := RowWitness.topPrime 2447 } = true := by
  exact good_top_prime_checked (i := 37) (r := 12) (s := 25) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row037_good076_checked :
    goodSegmentCheck 37 12 25
      { lower := 2523, upper := 2557, witness := RowWitness.topPrime 2521 } = true := by
  exact good_top_prime_checked (i := 37) (r := 12) (s := 25) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row037_good077_checked :
    goodSegmentCheck 37 12 25
      { lower := 2558, upper := 2577, witness := RowWitness.topPrime 2557 } = true := by
  exact good_top_prime_checked (i := 37) (r := 12) (s := 25) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row037_good078_checked :
    goodSegmentCheck 37 12 25
      { lower := 2625, upper := 2637, witness := RowWitness.topPrime 2621 } = true := by
  exact good_top_prime_checked (i := 37) (r := 12) (s := 25) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row037_good079_checked :
    goodSegmentCheck 37 12 25
      { lower := 2645, upper := 2669, witness := RowWitness.topPrime 2633 } = true := by
  exact good_top_prime_checked (i := 37) (r := 12) (s := 25) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_good064_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_good065_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_good066_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_good067_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_good068_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_good069_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_good070_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_good071_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_good072_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_good073_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_good074_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_good075_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_good076_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_good077_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_good078_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_good079_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row037_good080_checked :
    goodSegmentCheck 37 12 25
      { lower := 2670, upper := 2699, witness := RowWitness.topPrime 2663 } = true := by
  exact good_top_prime_checked (i := 37) (r := 12) (s := 25) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row037_good081_checked :
    goodSegmentCheck 37 12 25
      { lower := 2700, upper := 2724, witness := RowWitness.topPrime 2699 } = true := by
  exact good_top_prime_checked (i := 37) (r := 12) (s := 25) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row037_good082_checked :
    goodSegmentCheck 37 12 25
      { lower := 2750, upper := 2780, witness := RowWitness.topPrime 2749 } = true := by
  exact good_top_prime_checked (i := 37) (r := 12) (s := 25) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row037_good083_checked :
    goodSegmentCheck 37 12 25
      { lower := 2783, upper := 2786, witness := RowWitness.topPrime 2777 } = true := by
  exact good_top_prime_checked (i := 37) (r := 12) (s := 25) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row037_good084_checked :
    goodSegmentCheck 37 12 25
      { lower := 2816, upper := 2819, witness := RowWitness.topPrime 2803 } = true := by
  exact good_top_prime_checked (i := 37) (r := 12) (s := 25) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row037_good085_checked :
    goodSegmentCheck 37 12 25
      { lower := 2875, upper := 2897, witness := RowWitness.topPrime 2861 } = true := by
  exact good_top_prime_checked (i := 37) (r := 12) (s := 25) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row037_good086_checked :
    goodSegmentCheck 37 12 25
      { lower := 2898, upper := 2933, witness := RowWitness.topPrime 2897 } = true := by
  exact good_top_prime_checked (i := 37) (r := 12) (s := 25) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row037_good087_checked :
    goodSegmentCheck 37 12 25
      { lower := 2934, upper := 2940, witness := RowWitness.topPrime 2927 } = true := by
  exact good_top_prime_checked (i := 37) (r := 12) (s := 25) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row037_good088_checked :
    goodSegmentCheck 37 12 25
      { lower := 2944, upper := 2952, witness := RowWitness.topPrime 2939 } = true := by
  exact good_top_prime_checked (i := 37) (r := 12) (s := 25) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row037_good089_checked :
    goodSegmentCheck 37 12 25
      { lower := 3025, upper := 3036, witness := RowWitness.topPrime 3023 } = true := by
  exact good_top_prime_checked (i := 37) (r := 12) (s := 25) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row037_good090_checked :
    goodSegmentCheck 37 12 25
      { lower := 3042, upper := 3061, witness := RowWitness.topPrime 3041 } = true := by
  exact good_top_prime_checked (i := 37) (r := 12) (s := 25) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row037_good091_checked :
    goodSegmentCheck 37 12 25
      { lower := 3072, upper := 3078, witness := RowWitness.topPrime 3067 } = true := by
  exact good_top_prime_checked (i := 37) (r := 12) (s := 25) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row037_good092_checked :
    goodSegmentCheck 37 12 25
      { lower := 3087, upper := 3108, witness := RowWitness.topPrime 3083 } = true := by
  exact good_top_prime_checked (i := 37) (r := 12) (s := 25) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row037_good093_checked :
    goodSegmentCheck 37 12 25
      { lower := 3146, upper := 3173, witness := RowWitness.topPrime 3137 } = true := by
  exact good_top_prime_checked (i := 37) (r := 12) (s := 25) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row037_good094_checked :
    goodSegmentCheck 37 12 25
      { lower := 3174, upper := 3205, witness := RowWitness.topPrime 3169 } = true := by
  exact good_top_prime_checked (i := 37) (r := 12) (s := 25) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row037_good095_checked :
    goodSegmentCheck 37 12 25
      { lower := 3206, upper := 3236, witness := RowWitness.topPrime 3203 } = true := by
  exact good_top_prime_checked (i := 37) (r := 12) (s := 25) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_good080_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_good081_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_good082_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_good083_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_good084_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_good085_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_good086_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_good087_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_good088_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_good089_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_good090_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_good091_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_good092_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_good093_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_good094_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_good095_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row037_good096_checked :
    goodSegmentCheck 37 12 25
      { lower := 3250, upper := 3265, witness := RowWitness.topPrime 3229 } = true := by
  exact good_top_prime_checked (i := 37) (r := 12) (s := 25) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row037_good097_checked :
    goodSegmentCheck 37 12 25
      { lower := 3266, upper := 3286, witness := RowWitness.topPrime 3259 } = true := by
  exact good_top_prime_checked (i := 37) (r := 12) (s := 25) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row037_good098_checked :
    goodSegmentCheck 37 12 25
      { lower := 3364, upper := 3364, witness := RowWitness.topPrime 3361 } = true := by
  exact good_top_prime_checked (i := 37) (r := 12) (s := 25) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row037_good099_checked :
    goodSegmentCheck 37 12 25
      { lower := 3375, upper := 3409, witness := RowWitness.topPrime 3373 } = true := by
  exact good_top_prime_checked (i := 37) (r := 12) (s := 25) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row037_good100_checked :
    goodSegmentCheck 37 12 25
      { lower := 3410, upper := 3424, witness := RowWitness.topPrime 3407 } = true := by
  exact good_top_prime_checked (i := 37) (r := 12) (s := 25) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row037_good101_checked :
    goodSegmentCheck 37 12 25
      { lower := 3430, upper := 3438, witness := RowWitness.topPrime 3413 } = true := by
  exact good_top_prime_checked (i := 37) (r := 12) (s := 25) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row037_good102_checked :
    goodSegmentCheck 37 12 25
      { lower := 3456, upper := 3466, witness := RowWitness.topPrime 3449 } = true := by
  exact good_top_prime_checked (i := 37) (r := 12) (s := 25) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row037_good103_checked :
    goodSegmentCheck 37 12 25
      { lower := 3468, upper := 3492, witness := RowWitness.topPrime 3467 } = true := by
  exact good_top_prime_checked (i := 37) (r := 12) (s := 25) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row037_good104_checked :
    goodSegmentCheck 37 12 25
      { lower := 3500, upper := 3504, witness := RowWitness.topPrime 3499 } = true := by
  exact good_top_prime_checked (i := 37) (r := 12) (s := 25) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row037_good105_checked :
    goodSegmentCheck 37 12 25
      { lower := 3584, upper := 3585, witness := RowWitness.topPrime 3583 } = true := by
  exact good_top_prime_checked (i := 37) (r := 12) (s := 25) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row037_good106_checked :
    goodSegmentCheck 37 12 25
      { lower := 3610, upper := 3620, witness := RowWitness.topPrime 3607 } = true := by
  exact good_top_prime_checked (i := 37) (r := 12) (s := 25) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row037_good107_checked :
    goodSegmentCheck 37 12 25
      { lower := 3645, upper := 3646, witness := RowWitness.topPrime 3643 } = true := by
  exact good_top_prime_checked (i := 37) (r := 12) (s := 25) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row037_good108_checked :
    goodSegmentCheck 37 12 25
      { lower := 3718, upper := 3739, witness := RowWitness.topPrime 3709 } = true := by
  exact good_top_prime_checked (i := 37) (r := 12) (s := 25) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row037_good109_checked :
    goodSegmentCheck 37 12 25
      { lower := 3750, upper := 3754, witness := RowWitness.topPrime 3739 } = true := by
  exact good_top_prime_checked (i := 37) (r := 12) (s := 25) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row037_good110_checked :
    goodSegmentCheck 37 12 25
      { lower := 3757, upper := 3775, witness := RowWitness.topPrime 3739 } = true := by
  exact good_top_prime_checked (i := 37) (r := 12) (s := 25) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row037_good111_checked :
    goodSegmentCheck 37 12 25
      { lower := 3776, upper := 3793, witness := RowWitness.topPrime 3769 } = true := by
  exact good_top_prime_checked (i := 37) (r := 12) (s := 25) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_good096_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_good097_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_good098_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_good099_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_good100_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_good101_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_good102_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_good103_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_good104_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_good105_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_good106_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_good107_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_good108_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_good109_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_good110_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_good111_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row037_good112_checked :
    goodSegmentCheck 37 12 25
      { lower := 3844, upper := 3869, witness := RowWitness.topPrime 3833 } = true := by
  exact good_top_prime_checked (i := 37) (r := 12) (s := 25) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row037_good113_checked :
    goodSegmentCheck 37 12 25
      { lower := 3870, upper := 3876, witness := RowWitness.topPrime 3863 } = true := by
  exact good_top_prime_checked (i := 37) (r := 12) (s := 25) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row037_good114_checked :
    goodSegmentCheck 37 12 25
      { lower := 3888, upper := 3917, witness := RowWitness.topPrime 3881 } = true := by
  exact good_top_prime_checked (i := 37) (r := 12) (s := 25) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row037_good115_checked :
    goodSegmentCheck 37 12 25
      { lower := 3918, upper := 3923, witness := RowWitness.topPrime 3917 } = true := by
  exact good_top_prime_checked (i := 37) (r := 12) (s := 25) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row037_good116_checked :
    goodSegmentCheck 37 12 25
      { lower := 3993, upper := 4007, witness := RowWitness.topPrime 3989 } = true := by
  exact good_top_prime_checked (i := 37) (r := 12) (s := 25) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row037_good117_checked :
    goodSegmentCheck 37 12 25
      { lower := 4056, upper := 4082, witness := RowWitness.topPrime 4051 } = true := by
  exact good_top_prime_checked (i := 37) (r := 12) (s := 25) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row037_good118_checked :
    goodSegmentCheck 37 12 25
      { lower := 4116, upper := 4147, witness := RowWitness.topPrime 4111 } = true := by
  exact good_top_prime_checked (i := 37) (r := 12) (s := 25) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row037_good119_checked :
    goodSegmentCheck 37 12 25
      { lower := 4148, upper := 4152, witness := RowWitness.topPrime 4139 } = true := by
  exact good_top_prime_checked (i := 37) (r := 12) (s := 25) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row037_good120_checked :
    goodSegmentCheck 37 12 25
      { lower := 4225, upper := 4255, witness := RowWitness.topPrime 4219 } = true := by
  exact good_top_prime_checked (i := 37) (r := 12) (s := 25) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row037_good121_checked :
    goodSegmentCheck 37 12 25
      { lower := 4256, upper := 4261, witness := RowWitness.topPrime 4253 } = true := by
  exact good_top_prime_checked (i := 37) (r := 12) (s := 25) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row037_good122_checked :
    goodSegmentCheck 37 12 25
      { lower := 4335, upper := 4363, witness := RowWitness.topPrime 4327 } = true := by
  exact good_top_prime_checked (i := 37) (r := 12) (s := 25) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row037_good123_checked :
    goodSegmentCheck 37 12 25
      { lower := 4364, upper := 4371, witness := RowWitness.topPrime 4363 } = true := by
  exact good_top_prime_checked (i := 37) (r := 12) (s := 25) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row037_good124_checked :
    goodSegmentCheck 37 12 25
      { lower := 4374, upper := 4409, witness := RowWitness.topPrime 4373 } = true := by
  exact good_top_prime_checked (i := 37) (r := 12) (s := 25) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row037_good125_checked :
    goodSegmentCheck 37 12 25
      { lower := 4410, upper := 4411, witness := RowWitness.topPrime 4409 } = true := by
  exact good_top_prime_checked (i := 37) (r := 12) (s := 25) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row037_good126_checked :
    goodSegmentCheck 37 12 25
      { lower := 4617, upper := 4639, witness := RowWitness.topPrime 4603 } = true := by
  exact good_top_prime_checked (i := 37) (r := 12) (s := 25) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row037_good127_checked :
    goodSegmentCheck 37 12 25
      { lower := 4640, upper := 4653, witness := RowWitness.topPrime 4639 } = true := by
  exact good_top_prime_checked (i := 37) (r := 12) (s := 25) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_good112_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_good113_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_good114_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_good115_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_good116_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_good117_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_good118_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_good119_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_good120_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_good121_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_good122_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_good123_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_good124_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_good125_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_good126_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_good127_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row037_good128_checked :
    goodSegmentCheck 37 12 25
      { lower := 4761, upper := 4768, witness := RowWitness.topPrime 4759 } = true := by
  exact good_top_prime_checked (i := 37) (r := 12) (s := 25) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row037_good129_checked :
    goodSegmentCheck 37 12 25
      { lower := 4805, upper := 4837, witness := RowWitness.topPrime 4801 } = true := by
  exact good_top_prime_checked (i := 37) (r := 12) (s := 25) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row037_good130_checked :
    goodSegmentCheck 37 12 25
      { lower := 4838, upper := 4838, witness := RowWitness.topPrime 4831 } = true := by
  exact good_top_prime_checked (i := 37) (r := 12) (s := 25) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row037_good131_checked :
    goodSegmentCheck 37 12 25
      { lower := 4864, upper := 4896, witness := RowWitness.topPrime 4861 } = true := by
  exact good_top_prime_checked (i := 37) (r := 12) (s := 25) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row037_good132_checked :
    goodSegmentCheck 37 12 25
      { lower := 5054, upper := 5082, witness := RowWitness.topPrime 5051 } = true := by
  exact good_top_prime_checked (i := 37) (r := 12) (s := 25) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row037_good133_checked :
    goodSegmentCheck 37 12 25
      { lower := 5120, upper := 5139, witness := RowWitness.topPrime 5119 } = true := by
  exact good_top_prime_checked (i := 37) (r := 12) (s := 25) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row037_good134_checked :
    goodSegmentCheck 37 12 25
      { lower := 5145, upper := 5155, witness := RowWitness.topPrime 5119 } = true := by
  exact good_top_prime_checked (i := 37) (r := 12) (s := 25) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row037_good135_checked :
    goodSegmentCheck 37 12 25
      { lower := 5156, upper := 5156, witness := RowWitness.topPrime 5153 } = true := by
  exact good_top_prime_checked (i := 37) (r := 12) (s := 25) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row037_good136_checked :
    goodSegmentCheck 37 12 25
      { lower := 5324, upper := 5326, witness := RowWitness.topPrime 5323 } = true := by
  exact good_top_prime_checked (i := 37) (r := 12) (s := 25) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row037_good137_checked :
    goodSegmentCheck 37 12 25
      { lower := 5346, upper := 5360, witness := RowWitness.topPrime 5333 } = true := by
  exact good_top_prime_checked (i := 37) (r := 12) (s := 25) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row037_good138_checked :
    goodSegmentCheck 37 12 25
      { lower := 5376, upper := 5382, witness := RowWitness.topPrime 5351 } = true := by
  exact good_top_prime_checked (i := 37) (r := 12) (s := 25) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row037_good139_checked :
    goodSegmentCheck 37 12 25
      { lower := 5491, upper := 5519, witness := RowWitness.topPrime 5483 } = true := by
  exact good_top_prime_checked (i := 37) (r := 12) (s := 25) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row037_good140_checked :
    goodSegmentCheck 37 12 25
      { lower := 5520, upper := 5524, witness := RowWitness.topPrime 5519 } = true := by
  exact good_top_prime_checked (i := 37) (r := 12) (s := 25) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row037_good141_checked :
    goodSegmentCheck 37 12 25
      { lower := 5625, upper := 5625, witness := RowWitness.topPrime 5623 } = true := by
  exact good_top_prime_checked (i := 37) (r := 12) (s := 25) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row037_good142_checked :
    goodSegmentCheck 37 12 25
      { lower := 5632, upper := 5659, witness := RowWitness.topPrime 5623 } = true := by
  exact good_top_prime_checked (i := 37) (r := 12) (s := 25) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row037_good143_checked :
    goodSegmentCheck 37 12 25
      { lower := 5660, upper := 5661, witness := RowWitness.topPrime 5659 } = true := by
  exact good_top_prime_checked (i := 37) (r := 12) (s := 25) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_good128_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_good129_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_good130_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_good131_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_good132_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_good133_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_good134_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_good135_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_good136_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_good137_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_good138_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_good139_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_good140_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_good141_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_good142_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_good143_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row037_good144_checked :
    goodSegmentCheck 37 12 25
      { lower := 5776, upper := 5785, witness := RowWitness.topPrime 5749 } = true := by
  exact good_top_prime_checked (i := 37) (r := 12) (s := 25) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row037_good145_checked :
    goodSegmentCheck 37 12 25
      { lower := 5786, upper := 5812, witness := RowWitness.topPrime 5783 } = true := by
  exact good_top_prime_checked (i := 37) (r := 12) (s := 25) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row037_good146_checked :
    goodSegmentCheck 37 12 25
      { lower := 5831, upper := 5863, witness := RowWitness.topPrime 5827 } = true := by
  exact good_top_prime_checked (i := 37) (r := 12) (s := 25) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row037_good147_checked :
    goodSegmentCheck 37 12 25
      { lower := 5864, upper := 5867, witness := RowWitness.topPrime 5861 } = true := by
  exact good_top_prime_checked (i := 37) (r := 12) (s := 25) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row037_good148_checked :
    goodSegmentCheck 37 12 25
      { lower := 5888, upper := 5917, witness := RowWitness.topPrime 5881 } = true := by
  exact good_top_prime_checked (i := 37) (r := 12) (s := 25) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row037_good149_checked :
    goodSegmentCheck 37 12 25
      { lower := 5918, upper := 5923, witness := RowWitness.topPrime 5903 } = true := by
  exact good_top_prime_checked (i := 37) (r := 12) (s := 25) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row037_good150_checked :
    goodSegmentCheck 37 12 25
      { lower := 6075, upper := 6105, witness := RowWitness.topPrime 6073 } = true := by
  exact good_top_prime_checked (i := 37) (r := 12) (s := 25) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row037_good151_checked :
    goodSegmentCheck 37 12 25
      { lower := 6144, upper := 6179, witness := RowWitness.topPrime 6143 } = true := by
  exact good_top_prime_checked (i := 37) (r := 12) (s := 25) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row037_good152_checked :
    goodSegmentCheck 37 12 25
      { lower := 6180, upper := 6180, witness := RowWitness.topPrime 6173 } = true := by
  exact good_top_prime_checked (i := 37) (r := 12) (s := 25) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row037_good153_checked :
    goodSegmentCheck 37 12 25
      { lower := 6348, upper := 6354, witness := RowWitness.topPrime 6343 } = true := by
  exact good_top_prime_checked (i := 37) (r := 12) (s := 25) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row037_good154_checked :
    goodSegmentCheck 37 12 25
      { lower := 6358, upper := 6384, witness := RowWitness.topPrime 6353 } = true := by
  exact good_top_prime_checked (i := 37) (r := 12) (s := 25) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row037_good155_checked :
    goodSegmentCheck 37 12 25
      { lower := 6517, upper := 6527, witness := RowWitness.topPrime 6491 } = true := by
  exact good_top_prime_checked (i := 37) (r := 12) (s := 25) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row037_good156_checked :
    goodSegmentCheck 37 12 25
      { lower := 6528, upper := 6534, witness := RowWitness.topPrime 6521 } = true := by
  exact good_top_prime_checked (i := 37) (r := 12) (s := 25) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row037_good157_checked :
    goodSegmentCheck 37 12 25
      { lower := 6591, upper := 6597, witness := RowWitness.topPrime 6581 } = true := by
  exact good_top_prime_checked (i := 37) (r := 12) (s := 25) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row037_good158_checked :
    goodSegmentCheck 37 12 25
      { lower := 6655, upper := 6689, witness := RowWitness.topPrime 6653 } = true := by
  exact good_top_prime_checked (i := 37) (r := 12) (s := 25) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row037_good159_checked :
    goodSegmentCheck 37 12 25
      { lower := 6690, upper := 6691, witness := RowWitness.topPrime 6689 } = true := by
  exact good_top_prime_checked (i := 37) (r := 12) (s := 25) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_good144_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_good145_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_good146_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_good147_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_good148_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_good149_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_good150_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_good151_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_good152_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_good153_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_good154_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_good155_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_good156_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_good157_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_good158_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_good159_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row037_good160_checked :
    goodSegmentCheck 37 12 25
      { lower := 6728, upper := 6755, witness := RowWitness.topPrime 6719 } = true := by
  exact good_top_prime_checked (i := 37) (r := 12) (s := 25) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row037_good161_checked :
    goodSegmentCheck 37 12 25
      { lower := 6756, upper := 6763, witness := RowWitness.topPrime 6737 } = true := by
  exact good_top_prime_checked (i := 37) (r := 12) (s := 25) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row037_good162_checked :
    goodSegmentCheck 37 12 25
      { lower := 6860, upper := 6893, witness := RowWitness.topPrime 6857 } = true := by
  exact good_top_prime_checked (i := 37) (r := 12) (s := 25) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row037_good163_checked :
    goodSegmentCheck 37 12 25
      { lower := 6894, upper := 6911, witness := RowWitness.topPrime 6883 } = true := by
  exact good_top_prime_checked (i := 37) (r := 12) (s := 25) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row037_good164_checked :
    goodSegmentCheck 37 12 25
      { lower := 7203, upper := 7204, witness := RowWitness.topPrime 7193 } = true := by
  exact good_top_prime_checked (i := 37) (r := 12) (s := 25) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row037_good165_checked :
    goodSegmentCheck 37 12 25
      { lower := 7220, upper := 7255, witness := RowWitness.topPrime 7219 } = true := by
  exact good_top_prime_checked (i := 37) (r := 12) (s := 25) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row037_good166_checked :
    goodSegmentCheck 37 12 25
      { lower := 7256, upper := 7256, witness := RowWitness.topPrime 7253 } = true := by
  exact good_top_prime_checked (i := 37) (r := 12) (s := 25) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row037_good167_checked :
    goodSegmentCheck 37 12 25
      { lower := 7514, upper := 7536, witness := RowWitness.topPrime 7507 } = true := by
  exact good_top_prime_checked (i := 37) (r := 12) (s := 25) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row037_good168_checked :
    goodSegmentCheck 37 12 25
      { lower := 7546, upper := 7550, witness := RowWitness.topPrime 7541 } = true := by
  exact good_top_prime_checked (i := 37) (r := 12) (s := 25) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row037_good169_checked :
    goodSegmentCheck 37 12 25
      { lower := 7569, upper := 7597, witness := RowWitness.topPrime 7561 } = true := by
  exact good_top_prime_checked (i := 37) (r := 12) (s := 25) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row037_good170_checked :
    goodSegmentCheck 37 12 25
      { lower := 7598, upper := 7605, witness := RowWitness.topPrime 7591 } = true := by
  exact good_top_prime_checked (i := 37) (r := 12) (s := 25) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row037_good171_checked :
    goodSegmentCheck 37 12 25
      { lower := 7688, upper := 7716, witness := RowWitness.topPrime 7687 } = true := by
  exact good_top_prime_checked (i := 37) (r := 12) (s := 25) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row037_good172_checked :
    goodSegmentCheck 37 12 25
      { lower := 7942, upper := 7971, witness := RowWitness.topPrime 7937 } = true := by
  exact good_top_prime_checked (i := 37) (r := 12) (s := 25) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row037_good173_checked :
    goodSegmentCheck 37 12 25
      { lower := 8019, upper := 8022, witness := RowWitness.topPrime 8017 } = true := by
  exact good_top_prime_checked (i := 37) (r := 12) (s := 25) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row037_good174_checked :
    goodSegmentCheck 37 12 25
      { lower := 8664, upper := 8685, witness := RowWitness.topPrime 8663 } = true := by
  exact good_top_prime_checked (i := 37) (r := 12) (s := 25) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row037_good175_checked :
    goodSegmentCheck 37 12 25
      { lower := 8750, upper := 8783, witness := RowWitness.topPrime 8747 } = true := by
  exact good_top_prime_checked (i := 37) (r := 12) (s := 25) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_good160_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_good161_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_good162_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_good163_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_good164_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_good165_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_good166_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_good167_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_good168_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_good169_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_good170_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_good171_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_good172_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_good173_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_good174_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_good175_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row037_good176_checked :
    goodSegmentCheck 37 12 25
      { lower := 8784, upper := 8784, witness := RowWitness.topPrime 8783 } = true := by
  exact good_top_prime_checked (i := 37) (r := 12) (s := 25) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row037_good177_checked :
    goodSegmentCheck 37 12 25
      { lower := 9025, upper := 9029, witness := RowWitness.topPrime 9013 } = true := by
  exact good_top_prime_checked (i := 37) (r := 12) (s := 25) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row037_good178_checked :
    goodSegmentCheck 37 12 25
      { lower := 9251, upper := 9252, witness := RowWitness.topPrime 9241 } = true := by
  exact good_top_prime_checked (i := 37) (r := 12) (s := 25) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row037_good179_checked :
    goodSegmentCheck 37 12 25
      { lower := 9386, upper := 9411, witness := RowWitness.topPrime 9377 } = true := by
  exact good_top_prime_checked (i := 37) (r := 12) (s := 25) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row037_good180_checked :
    goodSegmentCheck 37 12 25
      { lower := 9610, upper := 9637, witness := RowWitness.topPrime 9601 } = true := by
  exact good_top_prime_checked (i := 37) (r := 12) (s := 25) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row037_good181_checked :
    goodSegmentCheck 37 12 25
      { lower := 9638, upper := 9640, witness := RowWitness.topPrime 9631 } = true := by
  exact good_top_prime_checked (i := 37) (r := 12) (s := 25) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row037_good182_checked :
    goodSegmentCheck 37 12 25
      { lower := 10240, upper := 10242, witness := RowWitness.topPrime 10223 } = true := by
  exact good_top_prime_checked (i := 37) (r := 12) (s := 25) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row037_good183_checked :
    goodSegmentCheck 37 12 25
      { lower := 10580, upper := 10603, witness := RowWitness.topPrime 10567 } = true := by
  exact good_top_prime_checked (i := 37) (r := 12) (s := 25) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row037_good184_checked :
    goodSegmentCheck 37 12 25
      { lower := 10604, upper := 10607, witness := RowWitness.topPrime 10601 } = true := by
  exact good_top_prime_checked (i := 37) (r := 12) (s := 25) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row037_good185_checked :
    goodSegmentCheck 37 12 25
      { lower := 10648, upper := 10661, witness := RowWitness.topPrime 10639 } = true := by
  exact good_top_prime_checked (i := 37) (r := 12) (s := 25) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row037_good186_checked :
    goodSegmentCheck 37 12 25
      { lower := 10935, upper := 10945, witness := RowWitness.topPrime 10909 } = true := by
  exact good_top_prime_checked (i := 37) (r := 12) (s := 25) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row037_good187_checked :
    goodSegmentCheck 37 12 25
      { lower := 10946, upper := 10969, witness := RowWitness.topPrime 10939 } = true := by
  exact good_top_prime_checked (i := 37) (r := 12) (s := 25) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row037_good188_checked :
    goodSegmentCheck 37 12 25
      { lower := 11264, upper := 11286, witness := RowWitness.topPrime 11261 } = true := by
  exact good_top_prime_checked (i := 37) (r := 12) (s := 25) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row037_good189_checked :
    goodSegmentCheck 37 12 25
      { lower := 11664, upper := 11674, witness := RowWitness.topPrime 11657 } = true := by
  exact good_top_prime_checked (i := 37) (r := 12) (s := 25) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row037_good190_checked :
    goodSegmentCheck 37 12 25
      { lower := 11776, upper := 11779, witness := RowWitness.topPrime 11743 } = true := by
  exact good_top_prime_checked (i := 37) (r := 12) (s := 25) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row037_good191_checked :
    goodSegmentCheck 37 12 25
      { lower := 11780, upper := 11810, witness := RowWitness.topPrime 11779 } = true := by
  exact good_top_prime_checked (i := 37) (r := 12) (s := 25) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_good176_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_good177_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_good178_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_good179_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_good180_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_good181_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_good182_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_good183_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_good184_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_good185_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_good186_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_good187_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_good188_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_good189_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_good190_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_good191_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row037_good192_checked :
    goodSegmentCheck 37 12 25
      { lower := 12005, upper := 12015, witness := RowWitness.topPrime 11987 } = true := by
  exact good_top_prime_checked (i := 37) (r := 12) (s := 25) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row037_good193_checked :
    goodSegmentCheck 37 12 25
      { lower := 12500, upper := 12529, witness := RowWitness.topPrime 12497 } = true := by
  exact good_top_prime_checked (i := 37) (r := 12) (s := 25) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row037_good194_checked :
    goodSegmentCheck 37 12 25
      { lower := 13125, upper := 13157, witness := RowWitness.topPrime 13121 } = true := by
  exact good_top_prime_checked (i := 37) (r := 12) (s := 25) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row037_good195_checked :
    goodSegmentCheck 37 12 25
      { lower := 13158, upper := 13158, witness := RowWitness.topPrime 13151 } = true := by
  exact good_top_prime_checked (i := 37) (r := 12) (s := 25) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row037_good196_checked :
    goodSegmentCheck 37 12 25
      { lower := 13312, upper := 13345, witness := RowWitness.topPrime 13309 } = true := by
  exact good_top_prime_checked (i := 37) (r := 12) (s := 25) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row037_good197_checked :
    goodSegmentCheck 37 12 25
      { lower := 13346, upper := 13346, witness := RowWitness.topPrime 13339 } = true := by
  exact good_top_prime_checked (i := 37) (r := 12) (s := 25) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row037_good198_checked :
    goodSegmentCheck 37 12 25
      { lower := 13456, upper := 13487, witness := RowWitness.topPrime 13451 } = true := by
  exact good_top_prime_checked (i := 37) (r := 12) (s := 25) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row037_good199_checked :
    goodSegmentCheck 37 12 25
      { lower := 13488, upper := 13490, witness := RowWitness.topPrime 13487 } = true := by
  exact good_top_prime_checked (i := 37) (r := 12) (s := 25) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row037_good200_checked :
    goodSegmentCheck 37 12 25
      { lower := 13750, upper := 13754, witness := RowWitness.topPrime 13729 } = true := by
  exact good_top_prime_checked (i := 37) (r := 12) (s := 25) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row037_good201_checked :
    goodSegmentCheck 37 12 25
      { lower := 14406, upper := 14411, witness := RowWitness.topPrime 14401 } = true := by
  exact good_top_prime_checked (i := 37) (r := 12) (s := 25) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row037_good202_checked :
    goodSegmentCheck 37 12 25
      { lower := 14415, upper := 14442, witness := RowWitness.topPrime 14411 } = true := by
  exact good_top_prime_checked (i := 37) (r := 12) (s := 25) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row037_good203_checked :
    goodSegmentCheck 37 12 25
      { lower := 15376, upper := 15409, witness := RowWitness.topPrime 15373 } = true := by
  exact good_top_prime_checked (i := 37) (r := 12) (s := 25) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row037_good204_checked :
    goodSegmentCheck 37 12 25
      { lower := 15410, upper := 15412, witness := RowWitness.topPrime 15401 } = true := by
  exact good_top_prime_checked (i := 37) (r := 12) (s := 25) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row037_good205_checked :
    goodSegmentCheck 37 12 25
      { lower := 15979, upper := 16008, witness := RowWitness.topPrime 15973 } = true := by
  exact good_top_prime_checked (i := 37) (r := 12) (s := 25) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row037_good206_checked :
    goodSegmentCheck 37 12 25
      { lower := 16820, upper := 16843, witness := RowWitness.topPrime 16811 } = true := by
  exact good_top_prime_checked (i := 37) (r := 12) (s := 25) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row037_good207_checked :
    goodSegmentCheck 37 12 25
      { lower := 17303, upper := 17334, witness := RowWitness.topPrime 17299 } = true := by
  exact good_top_prime_checked (i := 37) (r := 12) (s := 25) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_good192_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_good193_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_good194_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_good195_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_good196_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_good197_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_good198_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_good199_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_good200_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_good201_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_good202_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_good203_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_good204_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_good205_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_good206_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_good207_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row037_good208_checked :
    goodSegmentCheck 37 12 25
      { lower := 19220, upper := 19244, witness := RowWitness.topPrime 19219 } = true := by
  exact good_top_prime_checked (i := 37) (r := 12) (s := 25) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row037_good209_checked :
    goodSegmentCheck 37 12 25
      { lower := 19683, upper := 19688, witness := RowWitness.topPrime 19681 } = true := by
  exact good_top_prime_checked (i := 37) (r := 12) (s := 25) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row037_good210_checked :
    goodSegmentCheck 37 12 25
      { lower := 20184, upper := 20217, witness := RowWitness.topPrime 20183 } = true := by
  exact good_top_prime_checked (i := 37) (r := 12) (s := 25) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row037_good211_checked :
    goodSegmentCheck 37 12 25
      { lower := 21875, upper := 21906, witness := RowWitness.topPrime 21871 } = true := by
  exact good_top_prime_checked (i := 37) (r := 12) (s := 25) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row037_good212_checked :
    goodSegmentCheck 37 12 25
      { lower := 24576, upper := 24601, witness := RowWitness.topPrime 24571 } = true := by
  exact good_top_prime_checked (i := 37) (r := 12) (s := 25) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row037_good213_checked :
    goodSegmentCheck 37 12 25
      { lower := 26624, upper := 26633, witness := RowWitness.topPrime 26597 } = true := by
  exact good_top_prime_checked (i := 37) (r := 12) (s := 25) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row037_good214_checked :
    goodSegmentCheck 37 12 25
      { lower := 26634, upper := 26656, witness := RowWitness.topPrime 26633 } = true := by
  exact good_top_prime_checked (i := 37) (r := 12) (s := 25) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row037_good215_checked :
    goodSegmentCheck 37 12 25
      { lower := 30618, upper := 30629, witness := RowWitness.topPrime 30593 } = true := by
  exact good_top_prime_checked (i := 37) (r := 12) (s := 25) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row037_good216_checked :
    goodSegmentCheck 37 12 25
      { lower := 30630, upper := 30630, witness := RowWitness.largeDivisor 12089236669596647848536258343394961775881123110993437634153872729971791492211219811840006525763101782550942319 } = true := by
  decide +kernel

theorem row037_good217_checked :
    goodSegmentCheck 37 12 25
      { lower := 30631, upper := 30649, witness := RowWitness.topPrime 30631 } = true := by
  exact good_top_prime_checked (i := 37) (r := 12) (s := 25) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row037_good218_checked :
    goodSegmentCheck 37 12 25
      { lower := 34391, upper := 34411, witness := RowWitness.topPrime 34381 } = true := by
  exact good_top_prime_checked (i := 37) (r := 12) (s := 25) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row037_good219_checked :
    goodSegmentCheck 37 12 25
      { lower := 43750, upper := 43757, witness := RowWitness.topPrime 43721 } = true := by
  exact good_top_prime_checked (i := 37) (r := 12) (s := 25) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row037_good220_checked :
    goodSegmentCheck 37 12 25
      { lower := 43758, upper := 43776, witness := RowWitness.topPrime 43753 } = true := by
  exact good_top_prime_checked (i := 37) (r := 12) (s := 25) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row037_good221_checked :
    goodSegmentCheck 37 12 25
      { lower := 43940, upper := 43959, witness := RowWitness.topPrime 43933 } = true := by
  exact good_top_prime_checked (i := 37) (r := 12) (s := 25) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row037_good222_checked :
    goodSegmentCheck 37 12 25
      { lower := 48020, upper := 48049, witness := RowWitness.topPrime 48017 } = true := by
  exact good_top_prime_checked (i := 37) (r := 12) (s := 25) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row037_good223_checked :
    goodSegmentCheck 37 12 25
      { lower := 49152, upper := 49166, witness := RowWitness.topPrime 49139 } = true := by
  exact good_top_prime_checked (i := 37) (r := 12) (s := 25) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_good208_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_good209_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_good210_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_good211_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_good212_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_good213_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_good214_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_good215_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_good216_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_good217_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_good218_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_good219_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_good220_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_good221_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_good222_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_good223_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row037_good224_checked :
    goodSegmentCheck 37 12 25
      { lower := 65625, upper := 65646, witness := RowWitness.topPrime 65617 } = true := by
  exact good_top_prime_checked (i := 37) (r := 12) (s := 25) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row037_good225_checked :
    goodSegmentCheck 37 12 25
      { lower := 73728, upper := 73731, witness := RowWitness.topPrime 73727 } = true := by
  exact good_top_prime_checked (i := 37) (r := 12) (s := 25) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row037_good226_checked :
    goodSegmentCheck 37 12 25
      { lower := 327701, upper := 327716, witness := RowWitness.topPrime 327689 } = true := by
  exact good_top_prime_checked (i := 37) (r := 12) (s := 25) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_good224_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_good225_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_good226_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row037_goods_checked :
    row037.goods.all (goodSegmentCheck row037.height.i row037.height.r row037.height.s) = true := by
  change row037_goods.all (goodSegmentCheck 37 12 25) = true
  simp only [row037_goods, List.all_cons, List.all_nil,
    row037_good000_checked,
    row037_good001_checked,
    row037_good002_checked,
    row037_good003_checked,
    row037_good004_checked,
    row037_good005_checked,
    row037_good006_checked,
    row037_good007_checked,
    row037_good008_checked,
    row037_good009_checked,
    row037_good010_checked,
    row037_good011_checked,
    row037_good012_checked,
    row037_good013_checked,
    row037_good014_checked,
    row037_good015_checked,
    row037_good016_checked,
    row037_good017_checked,
    row037_good018_checked,
    row037_good019_checked,
    row037_good020_checked,
    row037_good021_checked,
    row037_good022_checked,
    row037_good023_checked,
    row037_good024_checked,
    row037_good025_checked,
    row037_good026_checked,
    row037_good027_checked,
    row037_good028_checked,
    row037_good029_checked,
    row037_good030_checked,
    row037_good031_checked,
    row037_good032_checked,
    row037_good033_checked,
    row037_good034_checked,
    row037_good035_checked,
    row037_good036_checked,
    row037_good037_checked,
    row037_good038_checked,
    row037_good039_checked,
    row037_good040_checked,
    row037_good041_checked,
    row037_good042_checked,
    row037_good043_checked,
    row037_good044_checked,
    row037_good045_checked,
    row037_good046_checked,
    row037_good047_checked,
    row037_good048_checked,
    row037_good049_checked,
    row037_good050_checked,
    row037_good051_checked,
    row037_good052_checked,
    row037_good053_checked,
    row037_good054_checked,
    row037_good055_checked,
    row037_good056_checked,
    row037_good057_checked,
    row037_good058_checked,
    row037_good059_checked,
    row037_good060_checked,
    row037_good061_checked,
    row037_good062_checked,
    row037_good063_checked,
    row037_good064_checked,
    row037_good065_checked,
    row037_good066_checked,
    row037_good067_checked,
    row037_good068_checked,
    row037_good069_checked,
    row037_good070_checked,
    row037_good071_checked,
    row037_good072_checked,
    row037_good073_checked,
    row037_good074_checked,
    row037_good075_checked,
    row037_good076_checked,
    row037_good077_checked,
    row037_good078_checked,
    row037_good079_checked,
    row037_good080_checked,
    row037_good081_checked,
    row037_good082_checked,
    row037_good083_checked,
    row037_good084_checked,
    row037_good085_checked,
    row037_good086_checked,
    row037_good087_checked,
    row037_good088_checked,
    row037_good089_checked,
    row037_good090_checked,
    row037_good091_checked,
    row037_good092_checked,
    row037_good093_checked,
    row037_good094_checked,
    row037_good095_checked,
    row037_good096_checked,
    row037_good097_checked,
    row037_good098_checked,
    row037_good099_checked,
    row037_good100_checked,
    row037_good101_checked,
    row037_good102_checked,
    row037_good103_checked,
    row037_good104_checked,
    row037_good105_checked,
    row037_good106_checked,
    row037_good107_checked,
    row037_good108_checked,
    row037_good109_checked,
    row037_good110_checked,
    row037_good111_checked,
    row037_good112_checked,
    row037_good113_checked,
    row037_good114_checked,
    row037_good115_checked,
    row037_good116_checked,
    row037_good117_checked,
    row037_good118_checked,
    row037_good119_checked,
    row037_good120_checked,
    row037_good121_checked,
    row037_good122_checked,
    row037_good123_checked,
    row037_good124_checked,
    row037_good125_checked,
    row037_good126_checked,
    row037_good127_checked,
    row037_good128_checked,
    row037_good129_checked,
    row037_good130_checked,
    row037_good131_checked,
    row037_good132_checked,
    row037_good133_checked,
    row037_good134_checked,
    row037_good135_checked,
    row037_good136_checked,
    row037_good137_checked,
    row037_good138_checked,
    row037_good139_checked,
    row037_good140_checked,
    row037_good141_checked,
    row037_good142_checked,
    row037_good143_checked,
    row037_good144_checked,
    row037_good145_checked,
    row037_good146_checked,
    row037_good147_checked,
    row037_good148_checked,
    row037_good149_checked,
    row037_good150_checked,
    row037_good151_checked,
    row037_good152_checked,
    row037_good153_checked,
    row037_good154_checked,
    row037_good155_checked,
    row037_good156_checked,
    row037_good157_checked,
    row037_good158_checked,
    row037_good159_checked,
    row037_good160_checked,
    row037_good161_checked,
    row037_good162_checked,
    row037_good163_checked,
    row037_good164_checked,
    row037_good165_checked,
    row037_good166_checked,
    row037_good167_checked,
    row037_good168_checked,
    row037_good169_checked,
    row037_good170_checked,
    row037_good171_checked,
    row037_good172_checked,
    row037_good173_checked,
    row037_good174_checked,
    row037_good175_checked,
    row037_good176_checked,
    row037_good177_checked,
    row037_good178_checked,
    row037_good179_checked,
    row037_good180_checked,
    row037_good181_checked,
    row037_good182_checked,
    row037_good183_checked,
    row037_good184_checked,
    row037_good185_checked,
    row037_good186_checked,
    row037_good187_checked,
    row037_good188_checked,
    row037_good189_checked,
    row037_good190_checked,
    row037_good191_checked,
    row037_good192_checked,
    row037_good193_checked,
    row037_good194_checked,
    row037_good195_checked,
    row037_good196_checked,
    row037_good197_checked,
    row037_good198_checked,
    row037_good199_checked,
    row037_good200_checked,
    row037_good201_checked,
    row037_good202_checked,
    row037_good203_checked,
    row037_good204_checked,
    row037_good205_checked,
    row037_good206_checked,
    row037_good207_checked,
    row037_good208_checked,
    row037_good209_checked,
    row037_good210_checked,
    row037_good211_checked,
    row037_good212_checked,
    row037_good213_checked,
    row037_good214_checked,
    row037_good215_checked,
    row037_good216_checked,
    row037_good217_checked,
    row037_good218_checked,
    row037_good219_checked,
    row037_good220_checked,
    row037_good221_checked,
    row037_good222_checked,
    row037_good223_checked,
    row037_good224_checked,
    row037_good225_checked,
    row037_good226_checked, Bool.true_and]

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_goods_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row037_registered :
    decide (row037.height ∈ heightCertificateData) = true := by
  decide +kernel

theorem row037_small_checked :
    coverCheck (2 * row037.height.i + 2) (row037.height.i * (row037.height.i - 1) - 1)
      (row037.goods.map goodSegmentBounds) = true := by
  decide +kernel

theorem row037_layerCover_checked :
    coverCheck (row037.height.i * (row037.height.i - 1)) (row037.height.n0 - 1)
      (row037.layers.map CoverLayer.bounds) = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_registered
#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_small_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_layerCover_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row037_bounds : List NatInterval :=
  [(76, 109), (110, 145), (146, 175), (176, 209), (210, 235), (236, 269), (270, 305), (306, 329), (330, 353), (354, 389), (390, 425), (426, 457), (458, 493), (494, 527), (528, 559), (560, 593), (594, 629), (630, 655), (656, 689), (690, 719), (720, 755), (756, 787), (788, 823), (824, 859), (860, 895), (896, 923), (924, 955), (956, 989), (990, 1019), (1020, 1055), (1056, 1087), (1088, 1123), (1124, 1159), (1160, 1189), (1190, 1223), (1224, 1259), (1260, 1295), (1296, 1327), (1328, 1363), (1364, 1397), (1398, 1413), (1421, 1445), (1446, 1475), (1476, 1507), (1508, 1508), (1521, 1547), (1548, 1575), (1587, 1619), (1620, 1655), (1656, 1656), (1682, 1705), (1706, 1735), (1736, 1769), (1770, 1770), (1782, 1786), (1792, 1825), (1826, 1841), (1859, 1883), (1884, 1899), (1922, 1949), (1950, 1972), (2023, 2053), (2054, 2089), (2090, 2093), (2116, 2149), (2150, 2152), (2176, 2197), (2198, 2215), (2216, 2223), (2268, 2286), (2299, 2333), (2334, 2340), (2366, 2393), (2394, 2411), (2420, 2453), (2454, 2466), (2523, 2557), (2558, 2577), (2625, 2637), (2645, 2669), (2670, 2699), (2700, 2724), (2750, 2780), (2783, 2786), (2816, 2819), (2875, 2897), (2898, 2933), (2934, 2940), (2944, 2952), (3025, 3036), (3042, 3061), (3072, 3078), (3087, 3108), (3146, 3173), (3174, 3205), (3206, 3236), (3250, 3265), (3266, 3286), (3364, 3364), (3375, 3409), (3410, 3424), (3430, 3438), (3456, 3466), (3468, 3492), (3500, 3504), (3584, 3585), (3610, 3620), (3645, 3646), (3718, 3739), (3750, 3754), (3757, 3775), (3776, 3793), (3844, 3869), (3870, 3876), (3888, 3917), (3918, 3923), (3993, 4007), (4056, 4082), (4116, 4147), (4148, 4152), (4225, 4255), (4256, 4261), (4335, 4363), (4364, 4371), (4374, 4409), (4410, 4411), (4617, 4639), (4640, 4653), (4761, 4768), (4805, 4837), (4838, 4838), (4864, 4896), (5054, 5082), (5120, 5139), (5145, 5155), (5156, 5156), (5324, 5326), (5346, 5360), (5376, 5382), (5491, 5519), (5520, 5524), (5625, 5625), (5632, 5659), (5660, 5661), (5776, 5785), (5786, 5812), (5831, 5863), (5864, 5867), (5888, 5917), (5918, 5923), (6075, 6105), (6144, 6179), (6180, 6180), (6348, 6354), (6358, 6384), (6517, 6527), (6528, 6534), (6591, 6597), (6655, 6689), (6690, 6691), (6728, 6755), (6756, 6763), (6860, 6893), (6894, 6911), (7203, 7204), (7220, 7255), (7256, 7256), (7514, 7536), (7546, 7550), (7569, 7597), (7598, 7605), (7688, 7716), (7942, 7971), (8019, 8022), (8664, 8685), (8750, 8783), (8784, 8784), (9025, 9029), (9251, 9252), (9386, 9411), (9610, 9637), (9638, 9640), (10240, 10242), (10580, 10603), (10604, 10607), (10648, 10661), (10935, 10945), (10946, 10969), (11264, 11286), (11664, 11674), (11776, 11779), (11780, 11810), (12005, 12015), (12500, 12529), (13125, 13157), (13158, 13158), (13312, 13345), (13346, 13346), (13456, 13487), (13488, 13490), (13750, 13754), (14406, 14411), (14415, 14442), (15376, 15409), (15410, 15412), (15979, 16008), (16820, 16843), (17303, 17334), (19220, 19244), (19683, 19688), (20184, 20217), (21875, 21906), (24576, 24601), (26624, 26633), (26634, 26656), (30618, 30629), (30630, 30630), (30631, 30649), (34391, 34411), (43750, 43757), (43758, 43776), (43940, 43959), (48020, 48049), (49152, 49166), (65625, 65646), (73728, 73731), (327701, 327716)]

theorem row037_bounds_eq : row037.goods.map goodSegmentBounds = row037_bounds := by
  rfl

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_bounds_eq

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row037_layer000_intervals : List ColouredInterval :=
  [(2, 1344, 1380), (2, 1408, 1444), (2, 1472, 1508), (2, 1536, 1572), (2, 1600, 1636), (2, 1664, 1700), (2, 1728, 1764), (2, 1792, 1828), (2, 1856, 1892), (2, 1920, 1956), (2, 1408, 1444), (2, 1536, 1572), (2, 1664, 1700), (2, 1792, 1828), (2, 1920, 1956), (2, 2048, 2084), (2, 2176, 2212), (2, 2304, 2340), (2, 2432, 2468), (2, 2560, 2596), (2, 1536, 1572), (2, 1792, 1828), (2, 2048, 2084), (2, 2304, 2340), (2, 2560, 2596), (2, 1536, 1572), (2, 2048, 2084), (2, 2560, 2596), (2, 2048, 2084), (2, 2048, 2084), (3, 1332, 1332), (3, 1377, 1413), (3, 1458, 1494), (3, 1539, 1575), (3, 1620, 1656), (3, 1701, 1737), (3, 1782, 1818), (3, 1863, 1899), (3, 1944, 1980), (3, 2025, 2061), (3, 2106, 2142), (3, 2187, 2223), (3, 2268, 2304), (3, 2349, 2385), (3, 2430, 2466), (3, 1458, 1494), (3, 1701, 1737), (3, 1944, 1980), (3, 2187, 2223), (3, 2430, 2466), (3, 1458, 1494), (3, 2187, 2223), (3, 2187, 2223), (5, 1375, 1411), (5, 1500, 1536), (5, 1625, 1661), (5, 1750, 1786), (5, 1875, 1911), (5, 2000, 2036), (5, 2125, 2161), (5, 2250, 2286), (5, 2375, 2411), (5, 2500, 2536), (5, 2625, 2661), (5, 1875, 1911), (5, 2500, 2536), (7, 1332, 1359), (7, 1372, 1408), (7, 1421, 1457), (7, 1470, 1506), (7, 1372, 1408), (7, 1715, 1751), (7, 2058, 2094), (7, 2401, 2437), (7, 2401, 2437), (11, 1332, 1367), (11, 1452, 1488), (11, 1573, 1609), (11, 1694, 1730), (11, 1815, 1851), (11, 1936, 1972), (11, 2057, 2093), (11, 2178, 2214), (11, 2299, 2335), (11, 2420, 2456), (11, 2541, 2577), (11, 2662, 2663), (11, 1332, 1367), (11, 2662, 2663), (13, 1352, 1388), (13, 1521, 1557), (13, 1690, 1726), (13, 1859, 1895), (13, 2028, 2064), (13, 2197, 2233), (13, 2366, 2402), (13, 2535, 2571), (13, 2197, 2233), (17, 1445, 1481), (17, 1734, 1770), (17, 2023, 2059), (17, 2312, 2348), (17, 2601, 2637), (19, 1444, 1480), (19, 1805, 1841), (19, 2166, 2202), (19, 2527, 2563), (23, 1587, 1623), (23, 2116, 2152), (23, 2645, 2663), (29, 1682, 1718), (29, 2523, 2559), (31, 1922, 1958)]

def row037_layer000_block000 : List ColouredInterval :=
  [(2, 1344, 1380), (2, 1408, 1444), (2, 1472, 1508), (2, 1536, 1572), (2, 1600, 1636), (2, 1664, 1700), (2, 1728, 1764), (2, 1792, 1828), (2, 1856, 1892), (2, 1920, 1956), (2, 1408, 1444), (2, 1536, 1572), (2, 1664, 1700), (2, 1792, 1828), (2, 1920, 1956), (2, 2048, 2084)]

def row037_layer000_block001 : List ColouredInterval :=
  [(2, 2176, 2212), (2, 2304, 2340), (2, 2432, 2468), (2, 2560, 2596), (2, 1536, 1572), (2, 1792, 1828), (2, 2048, 2084), (2, 2304, 2340), (2, 2560, 2596), (2, 1536, 1572), (2, 2048, 2084), (2, 2560, 2596), (2, 2048, 2084), (2, 2048, 2084), (3, 1332, 1332), (3, 1377, 1413)]

def row037_layer000_block002 : List ColouredInterval :=
  [(3, 1458, 1494), (3, 1539, 1575), (3, 1620, 1656), (3, 1701, 1737), (3, 1782, 1818), (3, 1863, 1899), (3, 1944, 1980), (3, 2025, 2061), (3, 2106, 2142), (3, 2187, 2223), (3, 2268, 2304), (3, 2349, 2385), (3, 2430, 2466), (3, 1458, 1494), (3, 1701, 1737), (3, 1944, 1980)]

def row037_layer000_block003 : List ColouredInterval :=
  [(3, 2187, 2223), (3, 2430, 2466), (3, 1458, 1494), (3, 2187, 2223), (3, 2187, 2223), (5, 1375, 1411), (5, 1500, 1536), (5, 1625, 1661), (5, 1750, 1786), (5, 1875, 1911), (5, 2000, 2036), (5, 2125, 2161), (5, 2250, 2286), (5, 2375, 2411), (5, 2500, 2536), (5, 2625, 2661)]

def row037_layer000_block004 : List ColouredInterval :=
  [(5, 1875, 1911), (5, 2500, 2536), (7, 1332, 1359), (7, 1372, 1408), (7, 1421, 1457), (7, 1470, 1506), (7, 1372, 1408), (7, 1715, 1751), (7, 2058, 2094), (7, 2401, 2437), (7, 2401, 2437), (11, 1332, 1367), (11, 1452, 1488), (11, 1573, 1609), (11, 1694, 1730), (11, 1815, 1851)]

def row037_layer000_block005 : List ColouredInterval :=
  [(11, 1936, 1972), (11, 2057, 2093), (11, 2178, 2214), (11, 2299, 2335), (11, 2420, 2456), (11, 2541, 2577), (11, 2662, 2663), (11, 1332, 1367), (11, 2662, 2663), (13, 1352, 1388), (13, 1521, 1557), (13, 1690, 1726), (13, 1859, 1895), (13, 2028, 2064), (13, 2197, 2233), (13, 2366, 2402)]

def row037_layer000_block006 : List ColouredInterval :=
  [(13, 2535, 2571), (13, 2197, 2233), (17, 1445, 1481), (17, 1734, 1770), (17, 2023, 2059), (17, 2312, 2348), (17, 2601, 2637), (19, 1444, 1480), (19, 1805, 1841), (19, 2166, 2202), (19, 2527, 2563), (23, 1587, 1623), (23, 2116, 2152), (23, 2645, 2663), (29, 1682, 1718), (29, 2523, 2559)]

def row037_layer000_block007 : List ColouredInterval :=
  [(31, 1922, 1958)]

def row037_layer000_chunks : List (List ColouredInterval) :=
  [row037_layer000_block000, row037_layer000_block001, row037_layer000_block002, row037_layer000_block003, row037_layer000_block004, row037_layer000_block005, row037_layer000_block006, row037_layer000_block007]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_layer000_intervals

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row037_layer000_arithmetic : LayerArithmeticValid row037.height { lower := 1332, upper := 2664, M := 30 } := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_layer000_arithmetic

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row037_layer000_enumeration :
    activePowerIntervalList 37 30 1332 2664 = row037_layer000_intervals := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_layer000_enumeration

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row037_layer000_pairs000 :
    row037_layer000_block000.all (fun I => row037_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row037_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_layer000_pairs000

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row037_layer000_pairs001 :
    row037_layer000_block001.all (fun I => row037_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row037_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_layer000_pairs001

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row037_layer000_pairs002 :
    row037_layer000_block002.all (fun I => row037_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row037_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_layer000_pairs002

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row037_layer000_pairs003 :
    row037_layer000_block003.all (fun I => row037_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row037_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_layer000_pairs003

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row037_layer000_pairs004 :
    row037_layer000_block004.all (fun I => row037_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row037_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_layer000_pairs004

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row037_layer000_pairs005 :
    row037_layer000_block005.all (fun I => row037_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row037_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_layer000_pairs005

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row037_layer000_pairs006 :
    row037_layer000_block006.all (fun I => row037_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row037_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_layer000_pairs006

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row037_layer000_pairs007 :
    row037_layer000_block007.all (fun I => row037_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row037_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_layer000_pairs007

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row037_layer000_chunks_eq : row037_layer000_chunks.flatten = row037_layer000_intervals := by
  rfl

theorem row037_layer000_pairs : pairCoverCheck row037_layer000_intervals row037_bounds = true := by
  apply pairCoverCheck_of_chunks row037_layer000_chunks_eq
  intro block hblock
  simp only [row037_layer000_chunks, List.mem_cons, List.mem_nil_iff, or_false] at hblock
  rcases hblock with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
  · exact row037_layer000_pairs000
  · exact row037_layer000_pairs001
  · exact row037_layer000_pairs002
  · exact row037_layer000_pairs003
  · exact row037_layer000_pairs004
  · exact row037_layer000_pairs005
  · exact row037_layer000_pairs006
  · exact row037_layer000_pairs007

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_layer000_chunks_eq
#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_layer000_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row037_layer000_checked :
    coverLayerCheck row037.height row037.goods { lower := 1332, upper := 2664, M := 30 } = true := by
  exact coverLayerCheck_of_parts row037_layer000_arithmetic row037_layer000_enumeration row037_bounds_eq row037_layer000_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_layer000_checked

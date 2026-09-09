import research.tasks.«B699-Binomial».runs.«20260909-low-index-structure-b41a5a63».lean.FiniteCover

set_option maxRecDepth 65536
set_option maxHeartbeats 0
set_option exponentiation.threshold 1000000

namespace B699LowIndex

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

theorem row037_registered :
    decide (row037.height ∈ heightCertificateData) = true := by
  decide +kernel

theorem row037_goods_checked :
    row037.goods.all (goodSegmentCheck row037.height.i row037.height.r row037.height.s) = true := by
  decide +kernel

theorem row037_small_checked :
    coverCheck (2 * row037.height.i + 2) (row037.height.i * (row037.height.i - 1) - 1)
      (row037.goods.map goodSegmentBounds) = true := by
  decide +kernel

theorem row037_layerCover_checked :
    coverCheck (row037.height.i * (row037.height.i - 1)) (row037.height.n0 - 1)
      (row037.layers.map CoverLayer.bounds) = true := by
  decide +kernel

theorem row037_layer000_checked :
    coverLayerCheck row037.height row037.goods { lower := 1332, upper := 2664, M := 30 } = true := by
  decide +kernel

theorem row037_layer001_checked :
    coverLayerCheck row037.height row037.goods { lower := 2664, upper := 5328, M := 28 } = true := by
  decide +kernel

theorem row037_layer002_checked :
    coverLayerCheck row037.height row037.goods { lower := 5328, upper := 10656, M := 26 } = true := by
  decide +kernel

theorem row037_layer003_checked :
    coverLayerCheck row037.height row037.goods { lower := 10656, upper := 21312, M := 24 } = true := by
  decide +kernel

theorem row037_layer004_checked :
    coverLayerCheck row037.height row037.goods { lower := 21312, upper := 42624, M := 23 } = true := by
  decide +kernel

theorem row037_layer005_checked :
    coverLayerCheck row037.height row037.goods { lower := 42624, upper := 85248, M := 21 } = true := by
  decide +kernel

theorem row037_layer006_checked :
    coverLayerCheck row037.height row037.goods { lower := 85248, upper := 170496, M := 20 } = true := by
  decide +kernel

theorem row037_layer007_checked :
    coverLayerCheck row037.height row037.goods { lower := 170496, upper := 340992, M := 18 } = true := by
  decide +kernel

theorem row037_layer008_checked :
    coverLayerCheck row037.height row037.goods { lower := 340992, upper := 681984, M := 17 } = true := by
  decide +kernel

theorem row037_layer009_checked :
    coverLayerCheck row037.height row037.goods { lower := 681984, upper := 1363968, M := 16 } = true := by
  decide +kernel

theorem row037_layer010_checked :
    coverLayerCheck row037.height row037.goods { lower := 1363968, upper := 2727936, M := 15 } = true := by
  decide +kernel

theorem row037_layer011_checked :
    coverLayerCheck row037.height row037.goods { lower := 2727936, upper := 5455872, M := 14 } = true := by
  decide +kernel

theorem row037_layer012_checked :
    coverLayerCheck row037.height row037.goods { lower := 5455872, upper := 10911744, M := 13 } = true := by
  decide +kernel

theorem row037_layer013_checked :
    coverLayerCheck row037.height row037.goods { lower := 10911744, upper := 21823488, M := 12 } = true := by
  decide +kernel

theorem row037_layer014_checked :
    coverLayerCheck row037.height row037.goods { lower := 21823488, upper := 43646976, M := 12 } = true := by
  decide +kernel

theorem row037_layer015_checked :
    coverLayerCheck row037.height row037.goods { lower := 43646976, upper := 87293952, M := 11 } = true := by
  decide +kernel

theorem row037_layer016_checked :
    coverLayerCheck row037.height row037.goods { lower := 87293952, upper := 174587904, M := 10 } = true := by
  decide +kernel

theorem row037_layer017_checked :
    coverLayerCheck row037.height row037.goods { lower := 174587904, upper := 349175808, M := 9 } = true := by
  decide +kernel

theorem row037_layer018_checked :
    coverLayerCheck row037.height row037.goods { lower := 349175808, upper := 698351616, M := 9 } = true := by
  decide +kernel

theorem row037_layer019_checked :
    coverLayerCheck row037.height row037.goods { lower := 698351616, upper := 1396703232, M := 8 } = true := by
  decide +kernel

theorem row037_layer020_checked :
    coverLayerCheck row037.height row037.goods { lower := 1396703232, upper := 2793406464, M := 8 } = true := by
  decide +kernel

theorem row037_layer021_checked :
    coverLayerCheck row037.height row037.goods { lower := 2793406464, upper := 5586812928, M := 7 } = true := by
  decide +kernel

theorem row037_layer022_checked :
    coverLayerCheck row037.height row037.goods { lower := 5586812928, upper := 11173625856, M := 7 } = true := by
  decide +kernel

theorem row037_layer023_checked :
    coverLayerCheck row037.height row037.goods { lower := 11173625856, upper := 22347251712, M := 6 } = true := by
  decide +kernel

theorem row037_layer024_checked :
    coverLayerCheck row037.height row037.goods { lower := 22347251712, upper := 44694503424, M := 6 } = true := by
  decide +kernel

theorem row037_layer025_checked :
    coverLayerCheck row037.height row037.goods { lower := 44694503424, upper := 89389006848, M := 6 } = true := by
  decide +kernel

theorem row037_layer026_checked :
    coverLayerCheck row037.height row037.goods { lower := 89389006848, upper := 178778013696, M := 5 } = true := by
  decide +kernel

theorem row037_layer027_checked :
    coverLayerCheck row037.height row037.goods { lower := 178778013696, upper := 357556027392, M := 5 } = true := by
  decide +kernel

theorem row037_layer028_checked :
    coverLayerCheck row037.height row037.goods { lower := 357556027392, upper := 715112054784, M := 5 } = true := by
  decide +kernel

theorem row037_layer029_checked :
    coverLayerCheck row037.height row037.goods { lower := 715112054784, upper := 1430224109568, M := 4 } = true := by
  decide +kernel

theorem row037_layer030_checked :
    coverLayerCheck row037.height row037.goods { lower := 1430224109568, upper := 2860448219136, M := 4 } = true := by
  decide +kernel

theorem row037_layer031_checked :
    coverLayerCheck row037.height row037.goods { lower := 2860448219136, upper := 5720896438272, M := 4 } = true := by
  decide +kernel

theorem row037_layer032_checked :
    coverLayerCheck row037.height row037.goods { lower := 5720896438272, upper := 11441792876544, M := 4 } = true := by
  decide +kernel

theorem row037_layer033_checked :
    coverLayerCheck row037.height row037.goods { lower := 11441792876544, upper := 22883585753088, M := 3 } = true := by
  decide +kernel

theorem row037_layer034_checked :
    coverLayerCheck row037.height row037.goods { lower := 22883585753088, upper := 45767171506176, M := 3 } = true := by
  decide +kernel

theorem row037_layer035_checked :
    coverLayerCheck row037.height row037.goods { lower := 45767171506176, upper := 91534343012352, M := 3 } = true := by
  decide +kernel

theorem row037_layer036_checked :
    coverLayerCheck row037.height row037.goods { lower := 91534343012352, upper := 183068686024704, M := 3 } = true := by
  decide +kernel

theorem row037_layer037_checked :
    coverLayerCheck row037.height row037.goods { lower := 183068686024704, upper := 366137372049408, M := 3 } = true := by
  decide +kernel

theorem row037_layer038_checked :
    coverLayerCheck row037.height row037.goods { lower := 366137372049408, upper := 732274744098816, M := 3 } = true := by
  decide +kernel

theorem row037_layer039_checked :
    coverLayerCheck row037.height row037.goods { lower := 732274744098816, upper := 1464549488197632, M := 2 } = true := by
  decide +kernel

theorem row037_layer040_checked :
    coverLayerCheck row037.height row037.goods { lower := 1464549488197632, upper := 2929098976395264, M := 2 } = true := by
  decide +kernel

theorem row037_layer041_checked :
    coverLayerCheck row037.height row037.goods { lower := 2929098976395264, upper := 5858197952790528, M := 2 } = true := by
  decide +kernel

theorem row037_layer042_checked :
    coverLayerCheck row037.height row037.goods { lower := 5858197952790528, upper := 11716395905581056, M := 2 } = true := by
  decide +kernel

theorem row037_layer043_checked :
    coverLayerCheck row037.height row037.goods { lower := 11716395905581056, upper := 23432791811162112, M := 2 } = true := by
  decide +kernel

theorem row037_layer044_checked :
    coverLayerCheck row037.height row037.goods { lower := 23432791811162112, upper := 46865583622324224, M := 2 } = true := by
  decide +kernel

theorem row037_layer045_checked :
    coverLayerCheck row037.height row037.goods { lower := 46865583622324224, upper := 93731167244648448, M := 2 } = true := by
  decide +kernel

theorem row037_layer046_checked :
    coverLayerCheck row037.height row037.goods { lower := 93731167244648448, upper := 187462334489296896, M := 2 } = true := by
  decide +kernel

theorem row037_layer047_checked :
    coverLayerCheck row037.height row037.goods { lower := 187462334489296896, upper := 374924668978593792, M := 2 } = true := by
  decide +kernel

theorem row037_layer048_checked :
    coverLayerCheck row037.height row037.goods { lower := 374924668978593792, upper := 749849337957187584, M := 2 } = true := by
  decide +kernel

theorem row037_layer049_checked :
    coverLayerCheck row037.height row037.goods { lower := 749849337957187584, upper := 1000000000000000000, M := 1 } = true := by
  decide +kernel

theorem row037_layers_checked :
    row037.layers.all (coverLayerCheck row037.height row037.goods) = true := by
  change List.all [
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
  ] (coverLayerCheck row037.height row037.goods) = true
  simp only [List.all_cons, List.all_nil,
    row037_layer000_checked,
    row037_layer001_checked,
    row037_layer002_checked,
    row037_layer003_checked,
    row037_layer004_checked,
    row037_layer005_checked,
    row037_layer006_checked,
    row037_layer007_checked,
    row037_layer008_checked,
    row037_layer009_checked,
    row037_layer010_checked,
    row037_layer011_checked,
    row037_layer012_checked,
    row037_layer013_checked,
    row037_layer014_checked,
    row037_layer015_checked,
    row037_layer016_checked,
    row037_layer017_checked,
    row037_layer018_checked,
    row037_layer019_checked,
    row037_layer020_checked,
    row037_layer021_checked,
    row037_layer022_checked,
    row037_layer023_checked,
    row037_layer024_checked,
    row037_layer025_checked,
    row037_layer026_checked,
    row037_layer027_checked,
    row037_layer028_checked,
    row037_layer029_checked,
    row037_layer030_checked,
    row037_layer031_checked,
    row037_layer032_checked,
    row037_layer033_checked,
    row037_layer034_checked,
    row037_layer035_checked,
    row037_layer036_checked,
    row037_layer037_checked,
    row037_layer038_checked,
    row037_layer039_checked,
    row037_layer040_checked,
    row037_layer041_checked,
    row037_layer042_checked,
    row037_layer043_checked,
    row037_layer044_checked,
    row037_layer045_checked,
    row037_layer046_checked,
    row037_layer047_checked,
    row037_layer048_checked,
    row037_layer049_checked,
    Bool.true_and]

theorem row037_checked : finiteCoverRowCheck row037 = true := by
  simp only [finiteCoverRowCheck, row037_registered, row037_goods_checked,
    row037_small_checked, row037_layerCover_checked, row037_layers_checked,
    Bool.true_and]

#print axioms B699LowIndex.row037_checked

end B699LowIndex

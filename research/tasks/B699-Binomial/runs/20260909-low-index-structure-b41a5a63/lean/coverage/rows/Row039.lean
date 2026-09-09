import research.tasks.«B699-Binomial».runs.«20260909-low-index-structure-b41a5a63».lean.FiniteCover

set_option maxRecDepth 65536
set_option maxHeartbeats 0
set_option exponentiation.threshold 1000000

namespace B699LowIndex

def row039_height : HeightCertificateDatum := { i := 39, r := 12, s := 26, n0Power10 := 29 }

def row039_goods : List GoodSegment := [
  { lower := 80, upper := 117, witness := RowWitness.topPrime 79 },
  { lower := 118, upper := 151, witness := RowWitness.topPrime 113 },
  { lower := 152, upper := 189, witness := RowWitness.topPrime 151 },
  { lower := 190, upper := 219, witness := RowWitness.topPrime 181 },
  { lower := 220, upper := 249, witness := RowWitness.topPrime 211 },
  { lower := 250, upper := 279, witness := RowWitness.topPrime 241 },
  { lower := 280, upper := 315, witness := RowWitness.topPrime 277 },
  { lower := 316, upper := 351, witness := RowWitness.topPrime 313 },
  { lower := 352, upper := 387, witness := RowWitness.topPrime 349 },
  { lower := 388, upper := 421, witness := RowWitness.topPrime 383 },
  { lower := 422, upper := 459, witness := RowWitness.topPrime 421 },
  { lower := 460, upper := 495, witness := RowWitness.topPrime 457 },
  { lower := 496, upper := 529, witness := RowWitness.topPrime 491 },
  { lower := 530, upper := 561, witness := RowWitness.topPrime 523 },
  { lower := 562, upper := 595, witness := RowWitness.topPrime 557 },
  { lower := 596, upper := 631, witness := RowWitness.topPrime 593 },
  { lower := 632, upper := 669, witness := RowWitness.topPrime 631 },
  { lower := 670, upper := 699, witness := RowWitness.topPrime 661 },
  { lower := 700, upper := 729, witness := RowWitness.topPrime 691 },
  { lower := 730, upper := 765, witness := RowWitness.topPrime 727 },
  { lower := 766, upper := 799, witness := RowWitness.topPrime 761 },
  { lower := 800, upper := 835, witness := RowWitness.topPrime 797 },
  { lower := 836, upper := 867, witness := RowWitness.topPrime 829 },
  { lower := 868, upper := 901, witness := RowWitness.topPrime 863 },
  { lower := 902, upper := 925, witness := RowWitness.topPrime 887 },
  { lower := 926, upper := 957, witness := RowWitness.topPrime 919 },
  { lower := 958, upper := 991, witness := RowWitness.topPrime 953 },
  { lower := 992, upper := 1029, witness := RowWitness.topPrime 991 },
  { lower := 1030, upper := 1059, witness := RowWitness.topPrime 1021 },
  { lower := 1060, upper := 1089, witness := RowWitness.topPrime 1051 },
  { lower := 1090, upper := 1125, witness := RowWitness.topPrime 1087 },
  { lower := 1126, upper := 1161, witness := RowWitness.topPrime 1123 },
  { lower := 1162, upper := 1191, witness := RowWitness.topPrime 1153 },
  { lower := 1192, upper := 1225, witness := RowWitness.topPrime 1187 },
  { lower := 1226, upper := 1261, witness := RowWitness.topPrime 1223 },
  { lower := 1262, upper := 1297, witness := RowWitness.topPrime 1259 },
  { lower := 1298, upper := 1335, witness := RowWitness.topPrime 1297 },
  { lower := 1336, upper := 1365, witness := RowWitness.topPrime 1327 },
  { lower := 1366, upper := 1399, witness := RowWitness.topPrime 1361 },
  { lower := 1400, upper := 1437, witness := RowWitness.topPrime 1399 },
  { lower := 1438, upper := 1471, witness := RowWitness.topPrime 1433 },
  { lower := 1472, upper := 1509, witness := RowWitness.topPrime 1471 },
  { lower := 1510, upper := 1510, witness := RowWitness.topPrime 1499 },
  { lower := 1519, upper := 1549, witness := RowWitness.topPrime 1511 },
  { lower := 1550, upper := 1557, witness := RowWitness.topPrime 1549 },
  { lower := 1568, upper := 1605, witness := RowWitness.topPrime 1567 },
  { lower := 1606, upper := 1639, witness := RowWitness.topPrime 1601 },
  { lower := 1640, upper := 1655, witness := RowWitness.topPrime 1637 },
  { lower := 1666, upper := 1701, witness := RowWitness.topPrime 1663 },
  { lower := 1702, upper := 1737, witness := RowWitness.topPrime 1699 },
  { lower := 1738, upper := 1771, witness := RowWitness.topPrime 1733 },
  { lower := 1772, upper := 1788, witness := RowWitness.topPrime 1759 },
  { lower := 1792, upper := 1802, witness := RowWitness.topPrime 1789 },
  { lower := 1805, upper := 1839, witness := RowWitness.topPrime 1801 },
  { lower := 1840, upper := 1843, witness := RowWitness.topPrime 1831 },
  { lower := 1875, upper := 1894, witness := RowWitness.topPrime 1873 },
  { lower := 1922, upper := 1951, witness := RowWitness.topPrime 1913 },
  { lower := 1952, upper := 1974, witness := RowWitness.topPrime 1951 },
  { lower := 2000, upper := 2037, witness := RowWitness.topPrime 1999 },
  { lower := 2038, upper := 2038, witness := RowWitness.topPrime 2029 },
  { lower := 2048, upper := 2077, witness := RowWitness.topPrime 2039 },
  { lower := 2078, upper := 2095, witness := RowWitness.topPrime 2069 },
  { lower := 2116, upper := 2151, witness := RowWitness.topPrime 2113 },
  { lower := 2152, upper := 2154, witness := RowWitness.topPrime 2143 },
  { lower := 2176, upper := 2199, witness := RowWitness.topPrime 2161 },
  { lower := 2200, upper := 2217, witness := RowWitness.topPrime 2179 },
  { lower := 2218, upper := 2225, witness := RowWitness.topPrime 2213 },
  { lower := 2250, upper := 2278, witness := RowWitness.topPrime 2243 },
  { lower := 2304, upper := 2335, witness := RowWitness.topPrime 2297 },
  { lower := 2336, upper := 2342, witness := RowWitness.topPrime 2333 },
  { lower := 2401, upper := 2413, witness := RowWitness.topPrime 2399 },
  { lower := 2420, upper := 2455, witness := RowWitness.topPrime 2417 },
  { lower := 2456, upper := 2468, witness := RowWitness.topPrime 2447 },
  { lower := 2523, upper := 2559, witness := RowWitness.topPrime 2521 },
  { lower := 2560, upper := 2579, witness := RowWitness.topPrime 2557 },
  { lower := 2625, upper := 2639, witness := RowWitness.topPrime 2621 },
  { lower := 2645, upper := 2671, witness := RowWitness.topPrime 2633 },
  { lower := 2672, upper := 2709, witness := RowWitness.topPrime 2671 },
  { lower := 2710, upper := 2711, witness := RowWitness.topPrime 2707 },
  { lower := 2744, upper := 2779, witness := RowWitness.topPrime 2741 },
  { lower := 2780, upper := 2788, witness := RowWitness.topPrime 2777 },
  { lower := 2816, upper := 2821, witness := RowWitness.topPrime 2803 },
  { lower := 2883, upper := 2917, witness := RowWitness.topPrime 2879 },
  { lower := 2918, upper := 2942, witness := RowWitness.topPrime 2917 },
  { lower := 2944, upper := 2954, witness := RowWitness.topPrime 2939 },
  { lower := 3025, upper := 3038, witness := RowWitness.topPrime 3023 },
  { lower := 3087, upper := 3110, witness := RowWitness.topPrime 3083 },
  { lower := 3125, upper := 3125, witness := RowWitness.topPrime 3121 },
  { lower := 3146, upper := 3163, witness := RowWitness.topPrime 3137 },
  { lower := 3174, upper := 3207, witness := RowWitness.topPrime 3169 },
  { lower := 3208, upper := 3217, witness := RowWitness.topPrime 3203 },
  { lower := 3250, upper := 3267, witness := RowWitness.topPrime 3229 },
  { lower := 3268, upper := 3288, witness := RowWitness.topPrime 3259 },
  { lower := 3364, upper := 3366, witness := RowWitness.topPrime 3361 },
  { lower := 3375, upper := 3411, witness := RowWitness.topPrime 3373 },
  { lower := 3412, upper := 3413, witness := RowWitness.topPrime 3407 },
  { lower := 3456, upper := 3487, witness := RowWitness.topPrime 3449 },
  { lower := 3488, upper := 3494, witness := RowWitness.topPrime 3469 },
  { lower := 3500, upper := 3506, witness := RowWitness.topPrime 3499 },
  { lower := 3509, upper := 3537, witness := RowWitness.topPrime 3499 },
  { lower := 3538, upper := 3538, witness := RowWitness.topPrime 3533 },
  { lower := 3610, upper := 3622, witness := RowWitness.topPrime 3607 },
  { lower := 3625, upper := 3661, witness := RowWitness.topPrime 3623 },
  { lower := 3662, upper := 3668, witness := RowWitness.topPrime 3659 },
  { lower := 3712, upper := 3741, witness := RowWitness.topPrime 3709 },
  { lower := 3750, upper := 3777, witness := RowWitness.topPrime 3739 },
  { lower := 3778, upper := 3795, witness := RowWitness.topPrime 3769 },
  { lower := 3844, upper := 3871, witness := RowWitness.topPrime 3833 },
  { lower := 3872, upper := 3901, witness := RowWitness.topPrime 3863 },
  { lower := 3902, upper := 3910, witness := RowWitness.topPrime 3889 },
  { lower := 3971, upper := 4005, witness := RowWitness.topPrime 3967 },
  { lower := 4006, upper := 4031, witness := RowWitness.topPrime 4003 },
  { lower := 4107, upper := 4137, witness := RowWitness.topPrime 4099 },
  { lower := 4138, upper := 4154, witness := RowWitness.topPrime 4133 },
  { lower := 4224, upper := 4257, witness := RowWitness.topPrime 4219 },
  { lower := 4258, upper := 4273, witness := RowWitness.topPrime 4253 },
  { lower := 4335, upper := 4365, witness := RowWitness.topPrime 4327 },
  { lower := 4366, upper := 4401, witness := RowWitness.topPrime 4363 },
  { lower := 4402, upper := 4413, witness := RowWitness.topPrime 4397 },
  { lower := 4480, upper := 4497, witness := RowWitness.topPrime 4463 },
  { lower := 4624, upper := 4646, witness := RowWitness.topPrime 4621 },
  { lower := 4805, upper := 4839, witness := RowWitness.topPrime 4801 },
  { lower := 4840, upper := 4840, witness := RowWitness.topPrime 4831 },
  { lower := 5054, upper := 5084, witness := RowWitness.topPrime 5051 },
  { lower := 5120, upper := 5141, witness := RowWitness.topPrime 5119 },
  { lower := 5145, upper := 5157, witness := RowWitness.topPrime 5119 },
  { lower := 5158, upper := 5158, witness := RowWitness.topPrime 5153 },
  { lower := 5324, upper := 5328, witness := RowWitness.topPrime 5323 },
  { lower := 5488, upper := 5521, witness := RowWitness.topPrime 5483 },
  { lower := 5522, upper := 5526, witness := RowWitness.topPrime 5521 },
  { lower := 5632, upper := 5661, witness := RowWitness.topPrime 5623 },
  { lower := 5662, upper := 5663, witness := RowWitness.topPrime 5659 },
  { lower := 5776, upper := 5787, witness := RowWitness.topPrime 5749 },
  { lower := 5788, upper := 5814, witness := RowWitness.topPrime 5783 },
  { lower := 5831, upper := 5865, witness := RowWitness.topPrime 5827 },
  { lower := 5866, upper := 5869, witness := RowWitness.topPrime 5861 },
  { lower := 5888, upper := 5919, witness := RowWitness.topPrime 5881 },
  { lower := 5920, upper := 5925, witness := RowWitness.topPrime 5903 },
  { lower := 6144, upper := 6181, witness := RowWitness.topPrime 6143 },
  { lower := 6182, upper := 6182, witness := RowWitness.topPrime 6173 },
  { lower := 6358, upper := 6386, witness := RowWitness.topPrime 6353 },
  { lower := 6517, upper := 6529, witness := RowWitness.topPrime 6491 },
  { lower := 6530, upper := 6536, witness := RowWitness.topPrime 6529 },
  { lower := 6655, upper := 6691, witness := RowWitness.topPrime 6653 },
  { lower := 6692, upper := 6693, witness := RowWitness.topPrime 6691 },
  { lower := 6728, upper := 6757, witness := RowWitness.topPrime 6719 },
  { lower := 6758, upper := 6765, witness := RowWitness.topPrime 6737 },
  { lower := 6859, upper := 6895, witness := RowWitness.topPrime 6857 },
  { lower := 6896, upper := 6915, witness := RowWitness.topPrime 6883 },
  { lower := 6936, upper := 6950, witness := RowWitness.topPrime 6917 },
  { lower := 7203, upper := 7206, witness := RowWitness.topPrime 7193 },
  { lower := 7220, upper := 7257, witness := RowWitness.topPrime 7219 },
  { lower := 7258, upper := 7258, witness := RowWitness.topPrime 7253 },
  { lower := 7424, upper := 7444, witness := RowWitness.topPrime 7417 },
  { lower := 7514, upper := 7538, witness := RowWitness.topPrime 7507 },
  { lower := 7546, upper := 7552, witness := RowWitness.topPrime 7541 },
  { lower := 7569, upper := 7599, witness := RowWitness.topPrime 7561 },
  { lower := 7600, upper := 7607, witness := RowWitness.topPrime 7591 },
  { lower := 7688, upper := 7718, witness := RowWitness.topPrime 7687 },
  { lower := 7936, upper := 7971, witness := RowWitness.topPrime 7933 },
  { lower := 7972, upper := 7974, witness := RowWitness.topPrime 7963 },
  { lower := 8019, upper := 8024, witness := RowWitness.topPrime 8017 },
  { lower := 8125, upper := 8130, witness := RowWitness.topPrime 8123 },
  { lower := 8214, upper := 8230, witness := RowWitness.topPrime 8209 },
  { lower := 8232, upper := 8252, witness := RowWitness.topPrime 8231 },
  { lower := 8410, upper := 8419, witness := RowWitness.topPrime 8389 },
  { lower := 8448, upper := 8448, witness := RowWitness.topPrime 8447 },
  { lower := 8464, upper := 8486, witness := RowWitness.topPrime 8461 },
  { lower := 8664, upper := 8701, witness := RowWitness.topPrime 8663 },
  { lower := 8702, upper := 8702, witness := RowWitness.topPrime 8699 },
  { lower := 8704, upper := 8708, witness := RowWitness.topPrime 8699 },
  { lower := 8750, upper := 8785, witness := RowWitness.topPrime 8747 },
  { lower := 8786, upper := 8786, witness := RowWitness.topPrime 8783 },
  { lower := 8993, upper := 8997, witness := RowWitness.topPrime 8971 },
  { lower := 9025, upper := 9031, witness := RowWitness.topPrime 9013 },
  { lower := 9248, upper := 9279, witness := RowWitness.topPrime 9241 },
  { lower := 9280, upper := 9289, witness := RowWitness.topPrime 9277 },
  { lower := 9386, upper := 9413, witness := RowWitness.topPrime 9377 },
  { lower := 9537, upper := 9560, witness := RowWitness.topPrime 9533 },
  { lower := 9604, upper := 9639, witness := RowWitness.topPrime 9601 },
  { lower := 9640, upper := 9642, witness := RowWitness.topPrime 9631 },
  { lower := 9747, upper := 9766, witness := RowWitness.topPrime 9743 },
  { lower := 10108, upper := 10130, witness := RowWitness.topPrime 10103 },
  { lower := 10580, upper := 10605, witness := RowWitness.topPrime 10567 },
  { lower := 10606, upper := 10609, witness := RowWitness.topPrime 10601 },
  { lower := 10633, upper := 10669, witness := RowWitness.topPrime 10631 },
  { lower := 10670, upper := 10671, witness := RowWitness.topPrime 10667 },
  { lower := 10935, upper := 10947, witness := RowWitness.topPrime 10909 },
  { lower := 10948, upper := 10973, witness := RowWitness.topPrime 10939 },
  { lower := 10976, upper := 10990, witness := RowWitness.topPrime 10973 },
  { lower := 11264, upper := 11288, witness := RowWitness.topPrime 11261 },
  { lower := 11552, upper := 11570, witness := RowWitness.topPrime 11551 },
  { lower := 11776, upper := 11781, witness := RowWitness.topPrime 11743 },
  { lower := 11782, upper := 11812, witness := RowWitness.topPrime 11779 },
  { lower := 12005, upper := 12017, witness := RowWitness.topPrime 11987 },
  { lower := 12321, upper := 12326, witness := RowWitness.topPrime 12301 },
  { lower := 12500, upper := 12531, witness := RowWitness.topPrime 12497 },
  { lower := 13125, upper := 13159, witness := RowWitness.topPrime 13121 },
  { lower := 13160, upper := 13160, witness := RowWitness.topPrime 13159 },
  { lower := 13312, upper := 13347, witness := RowWitness.topPrime 13309 },
  { lower := 13348, upper := 13348, witness := RowWitness.topPrime 13339 },
  { lower := 13456, upper := 13489, witness := RowWitness.topPrime 13451 },
  { lower := 13490, upper := 13492, witness := RowWitness.topPrime 13487 },
  { lower := 13718, upper := 13728, witness := RowWitness.topPrime 13711 },
  { lower := 13750, upper := 13767, witness := RowWitness.topPrime 13729 },
  { lower := 13768, upper := 13788, witness := RowWitness.topPrime 13763 },
  { lower := 14297, upper := 14321, witness := RowWitness.topPrime 14293 },
  { lower := 14406, upper := 14413, witness := RowWitness.topPrime 14401 },
  { lower := 14415, upper := 14444, witness := RowWitness.topPrime 14411 },
  { lower := 14848, upper := 14850, witness := RowWitness.topPrime 14843 },
  { lower := 15341, upper := 15347, witness := RowWitness.topPrime 15331 },
  { lower := 15360, upper := 15397, witness := RowWitness.topPrime 15359 },
  { lower := 15398, upper := 15398, witness := RowWitness.topPrime 15391 },
  { lower := 15872, upper := 15897, witness := RowWitness.topPrime 15859 },
  { lower := 15898, upper := 15908, witness := RowWitness.topPrime 15889 },
  { lower := 15979, upper := 16010, witness := RowWitness.topPrime 15973 },
  { lower := 16399, upper := 16419, witness := RowWitness.topPrime 16381 },
  { lower := 16420, upper := 16422, witness := RowWitness.topPrime 16417 },
  { lower := 16428, upper := 16437, witness := RowWitness.topPrime 16427 },
  { lower := 16820, upper := 16845, witness := RowWitness.topPrime 16811 },
  { lower := 17303, upper := 17336, witness := RowWitness.topPrime 17299 },
  { lower := 17500, upper := 17534, witness := RowWitness.topPrime 17497 },
  { lower := 19220, upper := 19246, witness := RowWitness.topPrime 19219 },
  { lower := 19375, upper := 19381, witness := RowWitness.topPrime 19373 },
  { lower := 19683, upper := 19690, witness := RowWitness.topPrime 19681 },
  { lower := 20000, upper := 20003, witness := RowWitness.topPrime 19997 },
  { lower := 20184, upper := 20219, witness := RowWitness.topPrime 20183 },
  { lower := 21870, upper := 21901, witness := RowWitness.topPrime 21863 },
  { lower := 21902, upper := 21913, witness := RowWitness.topPrime 21893 },
  { lower := 23552, upper := 23586, witness := RowWitness.topPrime 23549 },
  { lower := 24025, upper := 24048, witness := RowWitness.topPrime 24023 },
  { lower := 24576, upper := 24603, witness := RowWitness.topPrime 24571 },
  { lower := 25000, upper := 25024, witness := RowWitness.topPrime 24989 },
  { lower := 26624, upper := 26635, witness := RowWitness.topPrime 26597 },
  { lower := 26636, upper := 26658, witness := RowWitness.topPrime 26633 },
  { lower := 28830, upper := 28850, witness := RowWitness.topPrime 28817 },
  { lower := 31250, upper := 31251, witness := RowWitness.topPrime 31249 },
  { lower := 32805, upper := 32806, witness := RowWitness.topPrime 32803 },
  { lower := 34391, upper := 34413, witness := RowWitness.topPrime 34381 },
  { lower := 48020, upper := 48051, witness := RowWitness.topPrime 48017 },
  { lower := 49152, upper := 49168, witness := RowWitness.topPrime 49139 },
  { lower := 59392, upper := 59413, witness := RowWitness.topPrime 59387 },
  { lower := 68782, upper := 68788, witness := RowWitness.topPrime 68777 },
  { lower := 69632, upper := 69661, witness := RowWitness.topPrime 69623 },
  { lower := 69662, upper := 69667, witness := RowWitness.topPrime 69661 },
  { lower := 73205, upper := 73205, witness := RowWitness.topPrime 73189 },
  { lower := 73728, upper := 73733, witness := RowWitness.topPrime 73727 },
  { lower := 327701, upper := 327718, witness := RowWitness.topPrime 327689 }
]

def row039_layers : List CoverLayer := [
  { lower := 1482, upper := 2964, M := 36 },
  { lower := 2964, upper := 5928, M := 35 },
  { lower := 5928, upper := 11856, M := 33 },
  { lower := 11856, upper := 23712, M := 32 },
  { lower := 23712, upper := 47424, M := 31 },
  { lower := 47424, upper := 94848, M := 29 },
  { lower := 94848, upper := 189696, M := 28 },
  { lower := 189696, upper := 379392, M := 27 },
  { lower := 379392, upper := 758784, M := 26 },
  { lower := 758784, upper := 1517568, M := 25 },
  { lower := 1517568, upper := 3035136, M := 24 },
  { lower := 3035136, upper := 6070272, M := 23 },
  { lower := 6070272, upper := 12140544, M := 22 },
  { lower := 12140544, upper := 24281088, M := 21 },
  { lower := 24281088, upper := 48562176, M := 20 },
  { lower := 48562176, upper := 97124352, M := 19 },
  { lower := 97124352, upper := 194248704, M := 19 },
  { lower := 194248704, upper := 388497408, M := 18 },
  { lower := 388497408, upper := 776994816, M := 17 },
  { lower := 776994816, upper := 1553989632, M := 16 },
  { lower := 1553989632, upper := 3107979264, M := 16 },
  { lower := 3107979264, upper := 6215958528, M := 15 },
  { lower := 6215958528, upper := 12431917056, M := 14 },
  { lower := 12431917056, upper := 24863834112, M := 14 },
  { lower := 24863834112, upper := 49727668224, M := 13 },
  { lower := 49727668224, upper := 99455336448, M := 13 },
  { lower := 99455336448, upper := 198910672896, M := 12 },
  { lower := 198910672896, upper := 397821345792, M := 12 },
  { lower := 397821345792, upper := 795642691584, M := 11 },
  { lower := 795642691584, upper := 1591285383168, M := 11 },
  { lower := 1591285383168, upper := 3182570766336, M := 10 },
  { lower := 3182570766336, upper := 6365141532672, M := 10 },
  { lower := 6365141532672, upper := 12730283065344, M := 10 },
  { lower := 12730283065344, upper := 25460566130688, M := 9 },
  { lower := 25460566130688, upper := 50921132261376, M := 9 },
  { lower := 50921132261376, upper := 101842264522752, M := 9 },
  { lower := 101842264522752, upper := 203684529045504, M := 8 },
  { lower := 203684529045504, upper := 407369058091008, M := 8 },
  { lower := 407369058091008, upper := 814738116182016, M := 8 },
  { lower := 814738116182016, upper := 1629476232364032, M := 7 },
  { lower := 1629476232364032, upper := 3258952464728064, M := 7 },
  { lower := 3258952464728064, upper := 6517904929456128, M := 7 },
  { lower := 6517904929456128, upper := 13035809858912256, M := 6 },
  { lower := 13035809858912256, upper := 26071619717824512, M := 6 },
  { lower := 26071619717824512, upper := 52143239435649024, M := 6 },
  { lower := 52143239435649024, upper := 104286478871298048, M := 6 },
  { lower := 104286478871298048, upper := 208572957742596096, M := 6 },
  { lower := 208572957742596096, upper := 417145915485192192, M := 5 },
  { lower := 417145915485192192, upper := 834291830970384384, M := 5 },
  { lower := 834291830970384384, upper := 1668583661940768768, M := 5 },
  { lower := 1668583661940768768, upper := 3337167323881537536, M := 5 },
  { lower := 3337167323881537536, upper := 6674334647763075072, M := 5 },
  { lower := 6674334647763075072, upper := 13348669295526150144, M := 4 },
  { lower := 13348669295526150144, upper := 26697338591052300288, M := 4 },
  { lower := 26697338591052300288, upper := 53394677182104600576, M := 4 },
  { lower := 53394677182104600576, upper := 106789354364209201152, M := 4 },
  { lower := 106789354364209201152, upper := 213578708728418402304, M := 4 },
  { lower := 213578708728418402304, upper := 427157417456836804608, M := 4 },
  { lower := 427157417456836804608, upper := 854314834913673609216, M := 4 },
  { lower := 854314834913673609216, upper := 1708629669827347218432, M := 3 },
  { lower := 1708629669827347218432, upper := 3417259339654694436864, M := 3 },
  { lower := 3417259339654694436864, upper := 6834518679309388873728, M := 3 },
  { lower := 6834518679309388873728, upper := 13669037358618777747456, M := 3 },
  { lower := 13669037358618777747456, upper := 27338074717237555494912, M := 3 },
  { lower := 27338074717237555494912, upper := 54676149434475110989824, M := 3 },
  { lower := 54676149434475110989824, upper := 109352298868950221979648, M := 3 },
  { lower := 109352298868950221979648, upper := 218704597737900443959296, M := 3 },
  { lower := 218704597737900443959296, upper := 437409195475800887918592, M := 3 },
  { lower := 437409195475800887918592, upper := 874818390951601775837184, M := 2 },
  { lower := 874818390951601775837184, upper := 1749636781903203551674368, M := 2 },
  { lower := 1749636781903203551674368, upper := 3499273563806407103348736, M := 2 },
  { lower := 3499273563806407103348736, upper := 6998547127612814206697472, M := 2 },
  { lower := 6998547127612814206697472, upper := 13997094255225628413394944, M := 2 },
  { lower := 13997094255225628413394944, upper := 27994188510451256826789888, M := 2 },
  { lower := 27994188510451256826789888, upper := 55988377020902513653579776, M := 2 },
  { lower := 55988377020902513653579776, upper := 111976754041805027307159552, M := 2 },
  { lower := 111976754041805027307159552, upper := 223953508083610054614319104, M := 2 },
  { lower := 223953508083610054614319104, upper := 447907016167220109228638208, M := 2 },
  { lower := 447907016167220109228638208, upper := 895814032334440218457276416, M := 2 },
  { lower := 895814032334440218457276416, upper := 1791628064668880436914552832, M := 2 },
  { lower := 1791628064668880436914552832, upper := 3583256129337760873829105664, M := 2 },
  { lower := 3583256129337760873829105664, upper := 7166512258675521747658211328, M := 2 },
  { lower := 7166512258675521747658211328, upper := 14333024517351043495316422656, M := 2 },
  { lower := 14333024517351043495316422656, upper := 28666049034702086990632845312, M := 2 },
  { lower := 28666049034702086990632845312, upper := 57332098069404173981265690624, M := 2 },
  { lower := 57332098069404173981265690624, upper := 100000000000000000000000000000, M := 1 }
]

def row039 : FiniteCoverRow := {
  height := row039_height,
  goods := row039_goods,
  layers := row039_layers
}

theorem row039_registered :
    decide (row039.height ∈ heightCertificateData) = true := by
  decide +kernel

theorem row039_goods_checked :
    row039.goods.all (goodSegmentCheck row039.height.i row039.height.r row039.height.s) = true := by
  decide +kernel

theorem row039_small_checked :
    coverCheck (2 * row039.height.i + 2) (row039.height.i * (row039.height.i - 1) - 1)
      (row039.goods.map goodSegmentBounds) = true := by
  decide +kernel

theorem row039_layerCover_checked :
    coverCheck (row039.height.i * (row039.height.i - 1)) (row039.height.n0 - 1)
      (row039.layers.map CoverLayer.bounds) = true := by
  decide +kernel

theorem row039_layer000_checked :
    coverLayerCheck row039.height row039.goods { lower := 1482, upper := 2964, M := 36 } = true := by
  decide +kernel

theorem row039_layer001_checked :
    coverLayerCheck row039.height row039.goods { lower := 2964, upper := 5928, M := 35 } = true := by
  decide +kernel

theorem row039_layer002_checked :
    coverLayerCheck row039.height row039.goods { lower := 5928, upper := 11856, M := 33 } = true := by
  decide +kernel

theorem row039_layer003_checked :
    coverLayerCheck row039.height row039.goods { lower := 11856, upper := 23712, M := 32 } = true := by
  decide +kernel

theorem row039_layer004_checked :
    coverLayerCheck row039.height row039.goods { lower := 23712, upper := 47424, M := 31 } = true := by
  decide +kernel

theorem row039_layer005_checked :
    coverLayerCheck row039.height row039.goods { lower := 47424, upper := 94848, M := 29 } = true := by
  decide +kernel

theorem row039_layer006_checked :
    coverLayerCheck row039.height row039.goods { lower := 94848, upper := 189696, M := 28 } = true := by
  decide +kernel

theorem row039_layer007_checked :
    coverLayerCheck row039.height row039.goods { lower := 189696, upper := 379392, M := 27 } = true := by
  decide +kernel

theorem row039_layer008_checked :
    coverLayerCheck row039.height row039.goods { lower := 379392, upper := 758784, M := 26 } = true := by
  decide +kernel

theorem row039_layer009_checked :
    coverLayerCheck row039.height row039.goods { lower := 758784, upper := 1517568, M := 25 } = true := by
  decide +kernel

theorem row039_layer010_checked :
    coverLayerCheck row039.height row039.goods { lower := 1517568, upper := 3035136, M := 24 } = true := by
  decide +kernel

theorem row039_layer011_checked :
    coverLayerCheck row039.height row039.goods { lower := 3035136, upper := 6070272, M := 23 } = true := by
  decide +kernel

theorem row039_layer012_checked :
    coverLayerCheck row039.height row039.goods { lower := 6070272, upper := 12140544, M := 22 } = true := by
  decide +kernel

theorem row039_layer013_checked :
    coverLayerCheck row039.height row039.goods { lower := 12140544, upper := 24281088, M := 21 } = true := by
  decide +kernel

theorem row039_layer014_checked :
    coverLayerCheck row039.height row039.goods { lower := 24281088, upper := 48562176, M := 20 } = true := by
  decide +kernel

theorem row039_layer015_checked :
    coverLayerCheck row039.height row039.goods { lower := 48562176, upper := 97124352, M := 19 } = true := by
  decide +kernel

theorem row039_layer016_checked :
    coverLayerCheck row039.height row039.goods { lower := 97124352, upper := 194248704, M := 19 } = true := by
  decide +kernel

theorem row039_layer017_checked :
    coverLayerCheck row039.height row039.goods { lower := 194248704, upper := 388497408, M := 18 } = true := by
  decide +kernel

theorem row039_layer018_checked :
    coverLayerCheck row039.height row039.goods { lower := 388497408, upper := 776994816, M := 17 } = true := by
  decide +kernel

theorem row039_layer019_checked :
    coverLayerCheck row039.height row039.goods { lower := 776994816, upper := 1553989632, M := 16 } = true := by
  decide +kernel

theorem row039_layer020_checked :
    coverLayerCheck row039.height row039.goods { lower := 1553989632, upper := 3107979264, M := 16 } = true := by
  decide +kernel

theorem row039_layer021_checked :
    coverLayerCheck row039.height row039.goods { lower := 3107979264, upper := 6215958528, M := 15 } = true := by
  decide +kernel

theorem row039_layer022_checked :
    coverLayerCheck row039.height row039.goods { lower := 6215958528, upper := 12431917056, M := 14 } = true := by
  decide +kernel

theorem row039_layer023_checked :
    coverLayerCheck row039.height row039.goods { lower := 12431917056, upper := 24863834112, M := 14 } = true := by
  decide +kernel

theorem row039_layer024_checked :
    coverLayerCheck row039.height row039.goods { lower := 24863834112, upper := 49727668224, M := 13 } = true := by
  decide +kernel

theorem row039_layer025_checked :
    coverLayerCheck row039.height row039.goods { lower := 49727668224, upper := 99455336448, M := 13 } = true := by
  decide +kernel

theorem row039_layer026_checked :
    coverLayerCheck row039.height row039.goods { lower := 99455336448, upper := 198910672896, M := 12 } = true := by
  decide +kernel

theorem row039_layer027_checked :
    coverLayerCheck row039.height row039.goods { lower := 198910672896, upper := 397821345792, M := 12 } = true := by
  decide +kernel

theorem row039_layer028_checked :
    coverLayerCheck row039.height row039.goods { lower := 397821345792, upper := 795642691584, M := 11 } = true := by
  decide +kernel

theorem row039_layer029_checked :
    coverLayerCheck row039.height row039.goods { lower := 795642691584, upper := 1591285383168, M := 11 } = true := by
  decide +kernel

theorem row039_layer030_checked :
    coverLayerCheck row039.height row039.goods { lower := 1591285383168, upper := 3182570766336, M := 10 } = true := by
  decide +kernel

theorem row039_layer031_checked :
    coverLayerCheck row039.height row039.goods { lower := 3182570766336, upper := 6365141532672, M := 10 } = true := by
  decide +kernel

theorem row039_layer032_checked :
    coverLayerCheck row039.height row039.goods { lower := 6365141532672, upper := 12730283065344, M := 10 } = true := by
  decide +kernel

theorem row039_layer033_checked :
    coverLayerCheck row039.height row039.goods { lower := 12730283065344, upper := 25460566130688, M := 9 } = true := by
  decide +kernel

theorem row039_layer034_checked :
    coverLayerCheck row039.height row039.goods { lower := 25460566130688, upper := 50921132261376, M := 9 } = true := by
  decide +kernel

theorem row039_layer035_checked :
    coverLayerCheck row039.height row039.goods { lower := 50921132261376, upper := 101842264522752, M := 9 } = true := by
  decide +kernel

theorem row039_layer036_checked :
    coverLayerCheck row039.height row039.goods { lower := 101842264522752, upper := 203684529045504, M := 8 } = true := by
  decide +kernel

theorem row039_layer037_checked :
    coverLayerCheck row039.height row039.goods { lower := 203684529045504, upper := 407369058091008, M := 8 } = true := by
  decide +kernel

theorem row039_layer038_checked :
    coverLayerCheck row039.height row039.goods { lower := 407369058091008, upper := 814738116182016, M := 8 } = true := by
  decide +kernel

theorem row039_layer039_checked :
    coverLayerCheck row039.height row039.goods { lower := 814738116182016, upper := 1629476232364032, M := 7 } = true := by
  decide +kernel

theorem row039_layer040_checked :
    coverLayerCheck row039.height row039.goods { lower := 1629476232364032, upper := 3258952464728064, M := 7 } = true := by
  decide +kernel

theorem row039_layer041_checked :
    coverLayerCheck row039.height row039.goods { lower := 3258952464728064, upper := 6517904929456128, M := 7 } = true := by
  decide +kernel

theorem row039_layer042_checked :
    coverLayerCheck row039.height row039.goods { lower := 6517904929456128, upper := 13035809858912256, M := 6 } = true := by
  decide +kernel

theorem row039_layer043_checked :
    coverLayerCheck row039.height row039.goods { lower := 13035809858912256, upper := 26071619717824512, M := 6 } = true := by
  decide +kernel

theorem row039_layer044_checked :
    coverLayerCheck row039.height row039.goods { lower := 26071619717824512, upper := 52143239435649024, M := 6 } = true := by
  decide +kernel

theorem row039_layer045_checked :
    coverLayerCheck row039.height row039.goods { lower := 52143239435649024, upper := 104286478871298048, M := 6 } = true := by
  decide +kernel

theorem row039_layer046_checked :
    coverLayerCheck row039.height row039.goods { lower := 104286478871298048, upper := 208572957742596096, M := 6 } = true := by
  decide +kernel

theorem row039_layer047_checked :
    coverLayerCheck row039.height row039.goods { lower := 208572957742596096, upper := 417145915485192192, M := 5 } = true := by
  decide +kernel

theorem row039_layer048_checked :
    coverLayerCheck row039.height row039.goods { lower := 417145915485192192, upper := 834291830970384384, M := 5 } = true := by
  decide +kernel

theorem row039_layer049_checked :
    coverLayerCheck row039.height row039.goods { lower := 834291830970384384, upper := 1668583661940768768, M := 5 } = true := by
  decide +kernel

theorem row039_layer050_checked :
    coverLayerCheck row039.height row039.goods { lower := 1668583661940768768, upper := 3337167323881537536, M := 5 } = true := by
  decide +kernel

theorem row039_layer051_checked :
    coverLayerCheck row039.height row039.goods { lower := 3337167323881537536, upper := 6674334647763075072, M := 5 } = true := by
  decide +kernel

theorem row039_layer052_checked :
    coverLayerCheck row039.height row039.goods { lower := 6674334647763075072, upper := 13348669295526150144, M := 4 } = true := by
  decide +kernel

theorem row039_layer053_checked :
    coverLayerCheck row039.height row039.goods { lower := 13348669295526150144, upper := 26697338591052300288, M := 4 } = true := by
  decide +kernel

theorem row039_layer054_checked :
    coverLayerCheck row039.height row039.goods { lower := 26697338591052300288, upper := 53394677182104600576, M := 4 } = true := by
  decide +kernel

theorem row039_layer055_checked :
    coverLayerCheck row039.height row039.goods { lower := 53394677182104600576, upper := 106789354364209201152, M := 4 } = true := by
  decide +kernel

theorem row039_layer056_checked :
    coverLayerCheck row039.height row039.goods { lower := 106789354364209201152, upper := 213578708728418402304, M := 4 } = true := by
  decide +kernel

theorem row039_layer057_checked :
    coverLayerCheck row039.height row039.goods { lower := 213578708728418402304, upper := 427157417456836804608, M := 4 } = true := by
  decide +kernel

theorem row039_layer058_checked :
    coverLayerCheck row039.height row039.goods { lower := 427157417456836804608, upper := 854314834913673609216, M := 4 } = true := by
  decide +kernel

theorem row039_layer059_checked :
    coverLayerCheck row039.height row039.goods { lower := 854314834913673609216, upper := 1708629669827347218432, M := 3 } = true := by
  decide +kernel

theorem row039_layer060_checked :
    coverLayerCheck row039.height row039.goods { lower := 1708629669827347218432, upper := 3417259339654694436864, M := 3 } = true := by
  decide +kernel

theorem row039_layer061_checked :
    coverLayerCheck row039.height row039.goods { lower := 3417259339654694436864, upper := 6834518679309388873728, M := 3 } = true := by
  decide +kernel

theorem row039_layer062_checked :
    coverLayerCheck row039.height row039.goods { lower := 6834518679309388873728, upper := 13669037358618777747456, M := 3 } = true := by
  decide +kernel

theorem row039_layer063_checked :
    coverLayerCheck row039.height row039.goods { lower := 13669037358618777747456, upper := 27338074717237555494912, M := 3 } = true := by
  decide +kernel

theorem row039_layer064_checked :
    coverLayerCheck row039.height row039.goods { lower := 27338074717237555494912, upper := 54676149434475110989824, M := 3 } = true := by
  decide +kernel

theorem row039_layer065_checked :
    coverLayerCheck row039.height row039.goods { lower := 54676149434475110989824, upper := 109352298868950221979648, M := 3 } = true := by
  decide +kernel

theorem row039_layer066_checked :
    coverLayerCheck row039.height row039.goods { lower := 109352298868950221979648, upper := 218704597737900443959296, M := 3 } = true := by
  decide +kernel

theorem row039_layer067_checked :
    coverLayerCheck row039.height row039.goods { lower := 218704597737900443959296, upper := 437409195475800887918592, M := 3 } = true := by
  decide +kernel

theorem row039_layer068_checked :
    coverLayerCheck row039.height row039.goods { lower := 437409195475800887918592, upper := 874818390951601775837184, M := 2 } = true := by
  decide +kernel

theorem row039_layer069_checked :
    coverLayerCheck row039.height row039.goods { lower := 874818390951601775837184, upper := 1749636781903203551674368, M := 2 } = true := by
  decide +kernel

theorem row039_layer070_checked :
    coverLayerCheck row039.height row039.goods { lower := 1749636781903203551674368, upper := 3499273563806407103348736, M := 2 } = true := by
  decide +kernel

theorem row039_layer071_checked :
    coverLayerCheck row039.height row039.goods { lower := 3499273563806407103348736, upper := 6998547127612814206697472, M := 2 } = true := by
  decide +kernel

theorem row039_layer072_checked :
    coverLayerCheck row039.height row039.goods { lower := 6998547127612814206697472, upper := 13997094255225628413394944, M := 2 } = true := by
  decide +kernel

theorem row039_layer073_checked :
    coverLayerCheck row039.height row039.goods { lower := 13997094255225628413394944, upper := 27994188510451256826789888, M := 2 } = true := by
  decide +kernel

theorem row039_layer074_checked :
    coverLayerCheck row039.height row039.goods { lower := 27994188510451256826789888, upper := 55988377020902513653579776, M := 2 } = true := by
  decide +kernel

theorem row039_layer075_checked :
    coverLayerCheck row039.height row039.goods { lower := 55988377020902513653579776, upper := 111976754041805027307159552, M := 2 } = true := by
  decide +kernel

theorem row039_layer076_checked :
    coverLayerCheck row039.height row039.goods { lower := 111976754041805027307159552, upper := 223953508083610054614319104, M := 2 } = true := by
  decide +kernel

theorem row039_layer077_checked :
    coverLayerCheck row039.height row039.goods { lower := 223953508083610054614319104, upper := 447907016167220109228638208, M := 2 } = true := by
  decide +kernel

theorem row039_layer078_checked :
    coverLayerCheck row039.height row039.goods { lower := 447907016167220109228638208, upper := 895814032334440218457276416, M := 2 } = true := by
  decide +kernel

theorem row039_layer079_checked :
    coverLayerCheck row039.height row039.goods { lower := 895814032334440218457276416, upper := 1791628064668880436914552832, M := 2 } = true := by
  decide +kernel

theorem row039_layer080_checked :
    coverLayerCheck row039.height row039.goods { lower := 1791628064668880436914552832, upper := 3583256129337760873829105664, M := 2 } = true := by
  decide +kernel

theorem row039_layer081_checked :
    coverLayerCheck row039.height row039.goods { lower := 3583256129337760873829105664, upper := 7166512258675521747658211328, M := 2 } = true := by
  decide +kernel

theorem row039_layer082_checked :
    coverLayerCheck row039.height row039.goods { lower := 7166512258675521747658211328, upper := 14333024517351043495316422656, M := 2 } = true := by
  decide +kernel

theorem row039_layer083_checked :
    coverLayerCheck row039.height row039.goods { lower := 14333024517351043495316422656, upper := 28666049034702086990632845312, M := 2 } = true := by
  decide +kernel

theorem row039_layer084_checked :
    coverLayerCheck row039.height row039.goods { lower := 28666049034702086990632845312, upper := 57332098069404173981265690624, M := 2 } = true := by
  decide +kernel

theorem row039_layer085_checked :
    coverLayerCheck row039.height row039.goods { lower := 57332098069404173981265690624, upper := 100000000000000000000000000000, M := 1 } = true := by
  decide +kernel

theorem row039_layers_checked :
    row039.layers.all (coverLayerCheck row039.height row039.goods) = true := by
  change List.all [
    { lower := 1482, upper := 2964, M := 36 },
    { lower := 2964, upper := 5928, M := 35 },
    { lower := 5928, upper := 11856, M := 33 },
    { lower := 11856, upper := 23712, M := 32 },
    { lower := 23712, upper := 47424, M := 31 },
    { lower := 47424, upper := 94848, M := 29 },
    { lower := 94848, upper := 189696, M := 28 },
    { lower := 189696, upper := 379392, M := 27 },
    { lower := 379392, upper := 758784, M := 26 },
    { lower := 758784, upper := 1517568, M := 25 },
    { lower := 1517568, upper := 3035136, M := 24 },
    { lower := 3035136, upper := 6070272, M := 23 },
    { lower := 6070272, upper := 12140544, M := 22 },
    { lower := 12140544, upper := 24281088, M := 21 },
    { lower := 24281088, upper := 48562176, M := 20 },
    { lower := 48562176, upper := 97124352, M := 19 },
    { lower := 97124352, upper := 194248704, M := 19 },
    { lower := 194248704, upper := 388497408, M := 18 },
    { lower := 388497408, upper := 776994816, M := 17 },
    { lower := 776994816, upper := 1553989632, M := 16 },
    { lower := 1553989632, upper := 3107979264, M := 16 },
    { lower := 3107979264, upper := 6215958528, M := 15 },
    { lower := 6215958528, upper := 12431917056, M := 14 },
    { lower := 12431917056, upper := 24863834112, M := 14 },
    { lower := 24863834112, upper := 49727668224, M := 13 },
    { lower := 49727668224, upper := 99455336448, M := 13 },
    { lower := 99455336448, upper := 198910672896, M := 12 },
    { lower := 198910672896, upper := 397821345792, M := 12 },
    { lower := 397821345792, upper := 795642691584, M := 11 },
    { lower := 795642691584, upper := 1591285383168, M := 11 },
    { lower := 1591285383168, upper := 3182570766336, M := 10 },
    { lower := 3182570766336, upper := 6365141532672, M := 10 },
    { lower := 6365141532672, upper := 12730283065344, M := 10 },
    { lower := 12730283065344, upper := 25460566130688, M := 9 },
    { lower := 25460566130688, upper := 50921132261376, M := 9 },
    { lower := 50921132261376, upper := 101842264522752, M := 9 },
    { lower := 101842264522752, upper := 203684529045504, M := 8 },
    { lower := 203684529045504, upper := 407369058091008, M := 8 },
    { lower := 407369058091008, upper := 814738116182016, M := 8 },
    { lower := 814738116182016, upper := 1629476232364032, M := 7 },
    { lower := 1629476232364032, upper := 3258952464728064, M := 7 },
    { lower := 3258952464728064, upper := 6517904929456128, M := 7 },
    { lower := 6517904929456128, upper := 13035809858912256, M := 6 },
    { lower := 13035809858912256, upper := 26071619717824512, M := 6 },
    { lower := 26071619717824512, upper := 52143239435649024, M := 6 },
    { lower := 52143239435649024, upper := 104286478871298048, M := 6 },
    { lower := 104286478871298048, upper := 208572957742596096, M := 6 },
    { lower := 208572957742596096, upper := 417145915485192192, M := 5 },
    { lower := 417145915485192192, upper := 834291830970384384, M := 5 },
    { lower := 834291830970384384, upper := 1668583661940768768, M := 5 },
    { lower := 1668583661940768768, upper := 3337167323881537536, M := 5 },
    { lower := 3337167323881537536, upper := 6674334647763075072, M := 5 },
    { lower := 6674334647763075072, upper := 13348669295526150144, M := 4 },
    { lower := 13348669295526150144, upper := 26697338591052300288, M := 4 },
    { lower := 26697338591052300288, upper := 53394677182104600576, M := 4 },
    { lower := 53394677182104600576, upper := 106789354364209201152, M := 4 },
    { lower := 106789354364209201152, upper := 213578708728418402304, M := 4 },
    { lower := 213578708728418402304, upper := 427157417456836804608, M := 4 },
    { lower := 427157417456836804608, upper := 854314834913673609216, M := 4 },
    { lower := 854314834913673609216, upper := 1708629669827347218432, M := 3 },
    { lower := 1708629669827347218432, upper := 3417259339654694436864, M := 3 },
    { lower := 3417259339654694436864, upper := 6834518679309388873728, M := 3 },
    { lower := 6834518679309388873728, upper := 13669037358618777747456, M := 3 },
    { lower := 13669037358618777747456, upper := 27338074717237555494912, M := 3 },
    { lower := 27338074717237555494912, upper := 54676149434475110989824, M := 3 },
    { lower := 54676149434475110989824, upper := 109352298868950221979648, M := 3 },
    { lower := 109352298868950221979648, upper := 218704597737900443959296, M := 3 },
    { lower := 218704597737900443959296, upper := 437409195475800887918592, M := 3 },
    { lower := 437409195475800887918592, upper := 874818390951601775837184, M := 2 },
    { lower := 874818390951601775837184, upper := 1749636781903203551674368, M := 2 },
    { lower := 1749636781903203551674368, upper := 3499273563806407103348736, M := 2 },
    { lower := 3499273563806407103348736, upper := 6998547127612814206697472, M := 2 },
    { lower := 6998547127612814206697472, upper := 13997094255225628413394944, M := 2 },
    { lower := 13997094255225628413394944, upper := 27994188510451256826789888, M := 2 },
    { lower := 27994188510451256826789888, upper := 55988377020902513653579776, M := 2 },
    { lower := 55988377020902513653579776, upper := 111976754041805027307159552, M := 2 },
    { lower := 111976754041805027307159552, upper := 223953508083610054614319104, M := 2 },
    { lower := 223953508083610054614319104, upper := 447907016167220109228638208, M := 2 },
    { lower := 447907016167220109228638208, upper := 895814032334440218457276416, M := 2 },
    { lower := 895814032334440218457276416, upper := 1791628064668880436914552832, M := 2 },
    { lower := 1791628064668880436914552832, upper := 3583256129337760873829105664, M := 2 },
    { lower := 3583256129337760873829105664, upper := 7166512258675521747658211328, M := 2 },
    { lower := 7166512258675521747658211328, upper := 14333024517351043495316422656, M := 2 },
    { lower := 14333024517351043495316422656, upper := 28666049034702086990632845312, M := 2 },
    { lower := 28666049034702086990632845312, upper := 57332098069404173981265690624, M := 2 },
    { lower := 57332098069404173981265690624, upper := 100000000000000000000000000000, M := 1 }
  ] (coverLayerCheck row039.height row039.goods) = true
  simp only [List.all_cons, List.all_nil,
    row039_layer000_checked,
    row039_layer001_checked,
    row039_layer002_checked,
    row039_layer003_checked,
    row039_layer004_checked,
    row039_layer005_checked,
    row039_layer006_checked,
    row039_layer007_checked,
    row039_layer008_checked,
    row039_layer009_checked,
    row039_layer010_checked,
    row039_layer011_checked,
    row039_layer012_checked,
    row039_layer013_checked,
    row039_layer014_checked,
    row039_layer015_checked,
    row039_layer016_checked,
    row039_layer017_checked,
    row039_layer018_checked,
    row039_layer019_checked,
    row039_layer020_checked,
    row039_layer021_checked,
    row039_layer022_checked,
    row039_layer023_checked,
    row039_layer024_checked,
    row039_layer025_checked,
    row039_layer026_checked,
    row039_layer027_checked,
    row039_layer028_checked,
    row039_layer029_checked,
    row039_layer030_checked,
    row039_layer031_checked,
    row039_layer032_checked,
    row039_layer033_checked,
    row039_layer034_checked,
    row039_layer035_checked,
    row039_layer036_checked,
    row039_layer037_checked,
    row039_layer038_checked,
    row039_layer039_checked,
    row039_layer040_checked,
    row039_layer041_checked,
    row039_layer042_checked,
    row039_layer043_checked,
    row039_layer044_checked,
    row039_layer045_checked,
    row039_layer046_checked,
    row039_layer047_checked,
    row039_layer048_checked,
    row039_layer049_checked,
    row039_layer050_checked,
    row039_layer051_checked,
    row039_layer052_checked,
    row039_layer053_checked,
    row039_layer054_checked,
    row039_layer055_checked,
    row039_layer056_checked,
    row039_layer057_checked,
    row039_layer058_checked,
    row039_layer059_checked,
    row039_layer060_checked,
    row039_layer061_checked,
    row039_layer062_checked,
    row039_layer063_checked,
    row039_layer064_checked,
    row039_layer065_checked,
    row039_layer066_checked,
    row039_layer067_checked,
    row039_layer068_checked,
    row039_layer069_checked,
    row039_layer070_checked,
    row039_layer071_checked,
    row039_layer072_checked,
    row039_layer073_checked,
    row039_layer074_checked,
    row039_layer075_checked,
    row039_layer076_checked,
    row039_layer077_checked,
    row039_layer078_checked,
    row039_layer079_checked,
    row039_layer080_checked,
    row039_layer081_checked,
    row039_layer082_checked,
    row039_layer083_checked,
    row039_layer084_checked,
    row039_layer085_checked,
    Bool.true_and]

theorem row039_checked : finiteCoverRowCheck row039 = true := by
  simp only [finiteCoverRowCheck, row039_registered, row039_goods_checked,
    row039_small_checked, row039_layerCover_checked, row039_layers_checked,
    Bool.true_and]

#print axioms B699LowIndex.row039_checked

end B699LowIndex

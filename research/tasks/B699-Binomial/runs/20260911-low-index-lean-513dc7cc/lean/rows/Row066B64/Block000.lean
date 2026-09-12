import research.tasks.«B699-Binomial».runs.«20260909-low-index-structure-b41a5a63».lean.FiniteCover
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.WitnessBridge
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.LayerParts
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.PairChunks

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row066_height : HeightCertificateDatum := { i := 66, r := 21, s := 45, n0Power10 := 11 }

def row066_goods : List GoodSegment := [
  { lower := 134, upper := 196, witness := RowWitness.topPrime 131 },
  { lower := 197, upper := 262, witness := RowWitness.topPrime 197 },
  { lower := 263, upper := 328, witness := RowWitness.topPrime 263 },
  { lower := 329, upper := 382, witness := RowWitness.topPrime 317 },
  { lower := 383, upper := 448, witness := RowWitness.topPrime 383 },
  { lower := 449, upper := 514, witness := RowWitness.topPrime 449 },
  { lower := 515, upper := 574, witness := RowWitness.topPrime 509 },
  { lower := 575, upper := 636, witness := RowWitness.topPrime 571 },
  { lower := 637, upper := 696, witness := RowWitness.topPrime 631 },
  { lower := 697, upper := 756, witness := RowWitness.topPrime 691 },
  { lower := 757, upper := 822, witness := RowWitness.topPrime 757 },
  { lower := 823, upper := 888, witness := RowWitness.topPrime 823 },
  { lower := 889, upper := 952, witness := RowWitness.topPrime 887 },
  { lower := 953, upper := 1018, witness := RowWitness.topPrime 953 },
  { lower := 1019, upper := 1084, witness := RowWitness.topPrime 1019 },
  { lower := 1085, upper := 1134, witness := RowWitness.topPrime 1069 },
  { lower := 1135, upper := 1194, witness := RowWitness.topPrime 1129 },
  { lower := 1195, upper := 1258, witness := RowWitness.topPrime 1193 },
  { lower := 1259, upper := 1324, witness := RowWitness.topPrime 1259 },
  { lower := 1325, upper := 1386, witness := RowWitness.topPrime 1321 },
  { lower := 1387, upper := 1446, witness := RowWitness.topPrime 1381 },
  { lower := 1447, upper := 1512, witness := RowWitness.topPrime 1447 },
  { lower := 1513, upper := 1576, witness := RowWitness.topPrime 1511 },
  { lower := 1577, upper := 1636, witness := RowWitness.topPrime 1571 },
  { lower := 1637, upper := 1702, witness := RowWitness.topPrime 1637 },
  { lower := 1703, upper := 1764, witness := RowWitness.topPrime 1699 },
  { lower := 1765, upper := 1824, witness := RowWitness.topPrime 1759 },
  { lower := 1825, upper := 1888, witness := RowWitness.topPrime 1823 },
  { lower := 1889, upper := 1954, witness := RowWitness.topPrime 1889 },
  { lower := 1955, upper := 2016, witness := RowWitness.topPrime 1951 },
  { lower := 2017, upper := 2082, witness := RowWitness.topPrime 2017 },
  { lower := 2083, upper := 2148, witness := RowWitness.topPrime 2083 },
  { lower := 2149, upper := 2208, witness := RowWitness.topPrime 2143 },
  { lower := 2209, upper := 2272, witness := RowWitness.topPrime 2207 },
  { lower := 2273, upper := 2338, witness := RowWitness.topPrime 2273 },
  { lower := 2339, upper := 2404, witness := RowWitness.topPrime 2339 },
  { lower := 2405, upper := 2464, witness := RowWitness.topPrime 2399 },
  { lower := 2465, upper := 2524, witness := RowWitness.topPrime 2459 },
  { lower := 2525, upper := 2586, witness := RowWitness.topPrime 2521 },
  { lower := 2587, upper := 2644, witness := RowWitness.topPrime 2579 },
  { lower := 2645, upper := 2698, witness := RowWitness.topPrime 2633 },
  { lower := 2699, upper := 2764, witness := RowWitness.topPrime 2699 },
  { lower := 2765, upper := 2818, witness := RowWitness.topPrime 2753 },
  { lower := 2819, upper := 2884, witness := RowWitness.topPrime 2819 },
  { lower := 2885, upper := 2944, witness := RowWitness.topPrime 2879 },
  { lower := 2945, upper := 3004, witness := RowWitness.topPrime 2939 },
  { lower := 3005, upper := 3066, witness := RowWitness.topPrime 3001 },
  { lower := 3067, upper := 3132, witness := RowWitness.topPrime 3067 },
  { lower := 3133, upper := 3186, witness := RowWitness.topPrime 3121 },
  { lower := 3187, upper := 3252, witness := RowWitness.topPrime 3187 },
  { lower := 3253, upper := 3318, witness := RowWitness.topPrime 3253 },
  { lower := 3319, upper := 3384, witness := RowWitness.topPrime 3319 },
  { lower := 3385, upper := 3438, witness := RowWitness.topPrime 3373 },
  { lower := 3439, upper := 3498, witness := RowWitness.topPrime 3433 },
  { lower := 3499, upper := 3564, witness := RowWitness.topPrime 3499 },
  { lower := 3565, upper := 3624, witness := RowWitness.topPrime 3559 },
  { lower := 3625, upper := 3688, witness := RowWitness.topPrime 3623 },
  { lower := 3689, upper := 3742, witness := RowWitness.topPrime 3677 },
  { lower := 3743, upper := 3804, witness := RowWitness.topPrime 3739 },
  { lower := 3805, upper := 3868, witness := RowWitness.topPrime 3803 },
  { lower := 3869, upper := 3928, witness := RowWitness.topPrime 3863 },
  { lower := 3929, upper := 3994, witness := RowWitness.topPrime 3929 },
  { lower := 3995, upper := 4054, witness := RowWitness.topPrime 3989 },
  { lower := 4055, upper := 4116, witness := RowWitness.topPrime 4051 },
  { lower := 4117, upper := 4176, witness := RowWitness.topPrime 4111 },
  { lower := 4177, upper := 4242, witness := RowWitness.topPrime 4177 },
  { lower := 4243, upper := 4290, witness := RowWitness.topPrime 4243 },
  { lower := 4335, upper := 4392, witness := RowWitness.topPrime 4327 },
  { lower := 4393, upper := 4456, witness := RowWitness.topPrime 4391 },
  { lower := 4457, upper := 4483, witness := RowWitness.topPrime 4457 },
  { lower := 4608, upper := 4668, witness := RowWitness.topPrime 4603 },
  { lower := 4669, upper := 4673, witness := RowWitness.topPrime 4663 },
  { lower := 4802, upper := 4866, witness := RowWitness.topPrime 4801 },
  { lower := 4867, upper := 4867, witness := RowWitness.topPrime 4861 },
  { lower := 5043, upper := 5104, witness := RowWitness.topPrime 5039 },
  { lower := 5105, upper := 5166, witness := RowWitness.topPrime 5101 },
  { lower := 5167, upper := 5185, witness := RowWitness.topPrime 5167 },
  { lower := 5202, upper := 5210, witness := RowWitness.topPrime 5197 },
  { lower := 5476, upper := 5480, witness := RowWitness.topPrime 5471 },
  { lower := 5488, upper := 5548, witness := RowWitness.topPrime 5483 },
  { lower := 5549, upper := 5556, witness := RowWitness.topPrime 5531 },
  { lower := 5625, upper := 5688, witness := RowWitness.topPrime 5623 },
  { lower := 5689, upper := 5690, witness := RowWitness.topPrime 5689 },
  { lower := 5776, upper := 5814, witness := RowWitness.topPrime 5749 },
  { lower := 5815, upper := 5878, witness := RowWitness.topPrime 5813 },
  { lower := 5879, upper := 5897, witness := RowWitness.topPrime 5879 },
  { lower := 6144, upper := 6208, witness := RowWitness.topPrime 6143 },
  { lower := 6209, upper := 6209, witness := RowWitness.topPrime 6203 },
  { lower := 6358, upper := 6413, witness := RowWitness.topPrime 6353 },
  { lower := 6517, upper := 6556, witness := RowWitness.topPrime 6491 },
  { lower := 6557, upper := 6582, witness := RowWitness.topPrime 6553 },
  { lower := 6591, upper := 6646, witness := RowWitness.topPrime 6581 },
  { lower := 6647, upper := 6702, witness := RowWitness.topPrime 6637 },
  { lower := 6703, upper := 6712, witness := RowWitness.topPrime 6703 },
  { lower := 6727, upper := 6784, witness := RowWitness.topPrime 6719 },
  { lower := 6785, upper := 6792, witness := RowWitness.topPrime 6781 },
  { lower := 6859, upper := 6922, witness := RowWitness.topPrime 6857 },
  { lower := 6923, upper := 6942, witness := RowWitness.topPrime 6917 },
  { lower := 6962, upper := 7001, witness := RowWitness.topPrime 6961 },
  { lower := 7203, upper := 7258, witness := RowWitness.topPrime 7193 },
  { lower := 7259, upper := 7285, witness := RowWitness.topPrime 7253 },
  { lower := 7406, upper := 7458, witness := RowWitness.topPrime 7393 },
  { lower := 7459, upper := 7471, witness := RowWitness.topPrime 7459 },
  { lower := 7500, upper := 7507, witness := RowWitness.topPrime 7499 },
  { lower := 7514, upper := 7572, witness := RowWitness.topPrime 7507 },
  { lower := 7573, upper := 7634, witness := RowWitness.topPrime 7573 },
  { lower := 7935, upper := 7998, witness := RowWitness.topPrime 7933 },
  { lower := 7999, upper := 8000, witness := RowWitness.topPrime 7993 },
  { lower := 8214, upper := 8274, witness := RowWitness.topPrime 8209 },
  { lower := 8275, upper := 8279, witness := RowWitness.topPrime 8273 },
  { lower := 8410, upper := 8454, witness := RowWitness.topPrime 8389 },
  { lower := 8455, upper := 8492, witness := RowWitness.topPrime 8447 },
  { lower := 8750, upper := 8812, witness := RowWitness.topPrime 8747 },
  { lower := 8813, upper := 8815, witness := RowWitness.topPrime 8807 },
  { lower := 8836, upper := 8853, witness := RowWitness.topPrime 8831 },
  { lower := 9245, upper := 9306, witness := RowWitness.topPrime 9241 },
  { lower := 9307, upper := 9310, witness := RowWitness.topPrime 9293 },
  { lower := 9583, upper := 9587, witness := RowWitness.topPrime 9551 },
  { lower := 9604, upper := 9666, witness := RowWitness.topPrime 9601 },
  { lower := 9667, upper := 9669, witness := RowWitness.topPrime 9661 },
  { lower := 10051, upper := 10065, witness := RowWitness.topPrime 10039 },
  { lower := 10086, upper := 10144, witness := RowWitness.topPrime 10079 },
  { lower := 10145, upper := 10151, witness := RowWitness.topPrime 10141 },
  { lower := 10580, upper := 10632, witness := RowWitness.topPrime 10567 },
  { lower := 10633, upper := 10645, witness := RowWitness.topPrime 10631 },
  { lower := 10935, upper := 10974, witness := RowWitness.topPrime 10909 },
  { lower := 10975, upper := 11017, witness := RowWitness.topPrime 10973 },
  { lower := 11045, upper := 11050, witness := RowWitness.topPrime 11027 },
  { lower := 11094, upper := 11158, witness := RowWitness.topPrime 11093 },
  { lower := 11159, upper := 11159, witness := RowWitness.topPrime 11159 },
  { lower := 11163, upper := 11174, witness := RowWitness.topPrime 11161 },
  { lower := 11250, upper := 11308, witness := RowWitness.topPrime 11243 },
  { lower := 11309, upper := 11315, witness := RowWitness.topPrime 11299 },
  { lower := 11774, upper := 11808, witness := RowWitness.topPrime 11743 },
  { lower := 11809, upper := 11832, witness := RowWitness.topPrime 11807 },
  { lower := 12321, upper := 12353, witness := RowWitness.topPrime 12301 },
  { lower := 12500, upper := 12558, witness := RowWitness.topPrime 12497 },
  { lower := 13125, upper := 13186, witness := RowWitness.topPrime 13121 },
  { lower := 13187, upper := 13190, witness := RowWitness.topPrime 13187 },
  { lower := 13454, upper := 13516, witness := RowWitness.topPrime 13451 },
  { lower := 13517, upper := 13519, witness := RowWitness.topPrime 13513 },
  { lower := 13718, upper := 13776, witness := RowWitness.topPrime 13711 },
  { lower := 13777, upper := 13783, witness := RowWitness.topPrime 13763 },
  { lower := 14336, upper := 14362, witness := RowWitness.topPrime 14327 },
  { lower := 14375, upper := 14401, witness := RowWitness.topPrime 14369 },
  { lower := 14406, upper := 14466, witness := RowWitness.topPrime 14401 },
  { lower := 14467, upper := 14471, witness := RowWitness.topPrime 14461 },
  { lower := 14792, upper := 14804, witness := RowWitness.topPrime 14783 },
  { lower := 15138, upper := 15194, witness := RowWitness.topPrime 15137 },
  { lower := 15379, upper := 15441, witness := RowWitness.topPrime 15377 },
  { lower := 16384, upper := 16402, witness := RowWitness.topPrime 16381 },
  { lower := 16428, upper := 16449, witness := RowWitness.topPrime 16427 },
  { lower := 16810, upper := 16852, witness := RowWitness.topPrime 16787 },
  { lower := 16853, upper := 16885, witness := RowWitness.topPrime 16843 },
  { lower := 18490, upper := 18546, witness := RowWitness.topPrime 18481 },
  { lower := 18547, upper := 18555, witness := RowWitness.topPrime 18541 },
  { lower := 19208, upper := 19272, witness := RowWitness.topPrime 19207 },
  { lower := 19273, upper := 19273, witness := RowWitness.topPrime 19273 },
  { lower := 19663, upper := 19726, witness := RowWitness.topPrime 19661 },
  { lower := 19727, upper := 19728, witness := RowWitness.topPrime 19727 },
  { lower := 20535, upper := 20545, witness := RowWitness.topPrime 20533 },
  { lower := 20577, upper := 20600, witness := RowWitness.topPrime 20563 },
  { lower := 21875, upper := 21936, witness := RowWitness.topPrime 21871 },
  { lower := 21937, upper := 21940, witness := RowWitness.topPrime 21937 },
  { lower := 24037, upper := 24075, witness := RowWitness.topPrime 24029 },
  { lower := 24334, upper := 24364, witness := RowWitness.topPrime 24329 },
  { lower := 24367, upper := 24424, witness := RowWitness.topPrime 24359 },
  { lower := 24425, upper := 24432, witness := RowWitness.topPrime 24421 },
  { lower := 24576, upper := 24630, witness := RowWitness.topPrime 24571 },
  { lower := 26047, upper := 26076, witness := RowWitness.topPrime 26041 },
  { lower := 26411, upper := 26429, witness := RowWitness.topPrime 26407 },
  { lower := 27436, upper := 27445, witness := RowWitness.topPrime 27431 },
  { lower := 28125, upper := 28155, witness := RowWitness.topPrime 28123 },
  { lower := 28577, upper := 28626, witness := RowWitness.topPrime 28573 },
  { lower := 28717, upper := 28737, witness := RowWitness.topPrime 28711 },
  { lower := 29791, upper := 29833, witness := RowWitness.topPrime 29789 },
  { lower := 30926, upper := 30964, witness := RowWitness.topPrime 30911 },
  { lower := 31250, upper := 31278, witness := RowWitness.topPrime 31249 },
  { lower := 32805, upper := 32833, witness := RowWitness.topPrime 32803 },
  { lower := 33620, upper := 33679, witness := RowWitness.topPrime 33619 },
  { lower := 34391, upper := 34440, witness := RowWitness.topPrime 34381 },
  { lower := 36517, upper := 36562, witness := RowWitness.topPrime 36497 },
  { lower := 36563, upper := 36566, witness := RowWitness.topPrime 36563 },
  { lower := 37553, upper := 37565, witness := RowWitness.topPrime 37549 },
  { lower := 39326, upper := 39388, witness := RowWitness.topPrime 39323 },
  { lower := 39389, upper := 39391, witness := RowWitness.topPrime 39383 },
  { lower := 40960, upper := 40996, witness := RowWitness.topPrime 40949 },
  { lower := 48778, upper := 48799, witness := RowWitness.topPrime 48767 },
  { lower := 49152, upper := 49195, witness := RowWitness.topPrime 49139 },
  { lower := 59582, upper := 59601, witness := RowWitness.topPrime 59581 },
  { lower := 327701, upper := 327745, witness := RowWitness.topPrime 327689 }
]

def row066_layers : List CoverLayer := [
  { lower := 4290, upper := 8580, M := 27 },
  { lower := 8580, upper := 17160, M := 23 },
  { lower := 17160, upper := 34320, M := 20 },
  { lower := 34320, upper := 68640, M := 18 },
  { lower := 68640, upper := 137280, M := 15 },
  { lower := 137280, upper := 274560, M := 13 },
  { lower := 274560, upper := 549120, M := 11 },
  { lower := 549120, upper := 1098240, M := 10 },
  { lower := 1098240, upper := 2196480, M := 9 },
  { lower := 2196480, upper := 4392960, M := 7 },
  { lower := 4392960, upper := 8785920, M := 7 },
  { lower := 8785920, upper := 17571840, M := 6 },
  { lower := 17571840, upper := 35143680, M := 5 },
  { lower := 35143680, upper := 70287360, M := 4 },
  { lower := 70287360, upper := 140574720, M := 4 },
  { lower := 140574720, upper := 281149440, M := 3 },
  { lower := 281149440, upper := 562298880, M := 3 },
  { lower := 562298880, upper := 1124597760, M := 3 },
  { lower := 1124597760, upper := 2249195520, M := 2 },
  { lower := 2249195520, upper := 4498391040, M := 2 },
  { lower := 4498391040, upper := 8996782080, M := 2 },
  { lower := 8996782080, upper := 17993564160, M := 2 },
  { lower := 17993564160, upper := 35987128320, M := 2 },
  { lower := 35987128320, upper := 71974256640, M := 1 },
  { lower := 71974256640, upper := 100000000000, M := 1 }
]

def row066 : FiniteCoverRow := {
  height := row066_height,
  goods := row066_goods,
  layers := row066_layers
}


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row066

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row066_good000_checked :
    goodSegmentCheck 66 21 45
      { lower := 134, upper := 196, witness := RowWitness.topPrime 131 } = true := by
  exact good_top_prime_checked (i := 66) (r := 21) (s := 45) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row066_good001_checked :
    goodSegmentCheck 66 21 45
      { lower := 197, upper := 262, witness := RowWitness.topPrime 197 } = true := by
  exact good_top_prime_checked (i := 66) (r := 21) (s := 45) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row066_good002_checked :
    goodSegmentCheck 66 21 45
      { lower := 263, upper := 328, witness := RowWitness.topPrime 263 } = true := by
  exact good_top_prime_checked (i := 66) (r := 21) (s := 45) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row066_good003_checked :
    goodSegmentCheck 66 21 45
      { lower := 329, upper := 382, witness := RowWitness.topPrime 317 } = true := by
  exact good_top_prime_checked (i := 66) (r := 21) (s := 45) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row066_good004_checked :
    goodSegmentCheck 66 21 45
      { lower := 383, upper := 448, witness := RowWitness.topPrime 383 } = true := by
  exact good_top_prime_checked (i := 66) (r := 21) (s := 45) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row066_good005_checked :
    goodSegmentCheck 66 21 45
      { lower := 449, upper := 514, witness := RowWitness.topPrime 449 } = true := by
  exact good_top_prime_checked (i := 66) (r := 21) (s := 45) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row066_good006_checked :
    goodSegmentCheck 66 21 45
      { lower := 515, upper := 574, witness := RowWitness.topPrime 509 } = true := by
  exact good_top_prime_checked (i := 66) (r := 21) (s := 45) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row066_good007_checked :
    goodSegmentCheck 66 21 45
      { lower := 575, upper := 636, witness := RowWitness.topPrime 571 } = true := by
  exact good_top_prime_checked (i := 66) (r := 21) (s := 45) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row066_good008_checked :
    goodSegmentCheck 66 21 45
      { lower := 637, upper := 696, witness := RowWitness.topPrime 631 } = true := by
  exact good_top_prime_checked (i := 66) (r := 21) (s := 45) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row066_good009_checked :
    goodSegmentCheck 66 21 45
      { lower := 697, upper := 756, witness := RowWitness.topPrime 691 } = true := by
  exact good_top_prime_checked (i := 66) (r := 21) (s := 45) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row066_good010_checked :
    goodSegmentCheck 66 21 45
      { lower := 757, upper := 822, witness := RowWitness.topPrime 757 } = true := by
  exact good_top_prime_checked (i := 66) (r := 21) (s := 45) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row066_good011_checked :
    goodSegmentCheck 66 21 45
      { lower := 823, upper := 888, witness := RowWitness.topPrime 823 } = true := by
  exact good_top_prime_checked (i := 66) (r := 21) (s := 45) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row066_good012_checked :
    goodSegmentCheck 66 21 45
      { lower := 889, upper := 952, witness := RowWitness.topPrime 887 } = true := by
  exact good_top_prime_checked (i := 66) (r := 21) (s := 45) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row066_good013_checked :
    goodSegmentCheck 66 21 45
      { lower := 953, upper := 1018, witness := RowWitness.topPrime 953 } = true := by
  exact good_top_prime_checked (i := 66) (r := 21) (s := 45) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row066_good014_checked :
    goodSegmentCheck 66 21 45
      { lower := 1019, upper := 1084, witness := RowWitness.topPrime 1019 } = true := by
  exact good_top_prime_checked (i := 66) (r := 21) (s := 45) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row066_good015_checked :
    goodSegmentCheck 66 21 45
      { lower := 1085, upper := 1134, witness := RowWitness.topPrime 1069 } = true := by
  exact good_top_prime_checked (i := 66) (r := 21) (s := 45) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row066_good000_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row066_good001_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row066_good002_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row066_good003_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row066_good004_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row066_good005_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row066_good006_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row066_good007_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row066_good008_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row066_good009_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row066_good010_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row066_good011_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row066_good012_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row066_good013_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row066_good014_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row066_good015_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row066_good016_checked :
    goodSegmentCheck 66 21 45
      { lower := 1135, upper := 1194, witness := RowWitness.topPrime 1129 } = true := by
  exact good_top_prime_checked (i := 66) (r := 21) (s := 45) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row066_good017_checked :
    goodSegmentCheck 66 21 45
      { lower := 1195, upper := 1258, witness := RowWitness.topPrime 1193 } = true := by
  exact good_top_prime_checked (i := 66) (r := 21) (s := 45) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row066_good018_checked :
    goodSegmentCheck 66 21 45
      { lower := 1259, upper := 1324, witness := RowWitness.topPrime 1259 } = true := by
  exact good_top_prime_checked (i := 66) (r := 21) (s := 45) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row066_good019_checked :
    goodSegmentCheck 66 21 45
      { lower := 1325, upper := 1386, witness := RowWitness.topPrime 1321 } = true := by
  exact good_top_prime_checked (i := 66) (r := 21) (s := 45) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row066_good020_checked :
    goodSegmentCheck 66 21 45
      { lower := 1387, upper := 1446, witness := RowWitness.topPrime 1381 } = true := by
  exact good_top_prime_checked (i := 66) (r := 21) (s := 45) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row066_good021_checked :
    goodSegmentCheck 66 21 45
      { lower := 1447, upper := 1512, witness := RowWitness.topPrime 1447 } = true := by
  exact good_top_prime_checked (i := 66) (r := 21) (s := 45) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row066_good022_checked :
    goodSegmentCheck 66 21 45
      { lower := 1513, upper := 1576, witness := RowWitness.topPrime 1511 } = true := by
  exact good_top_prime_checked (i := 66) (r := 21) (s := 45) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row066_good023_checked :
    goodSegmentCheck 66 21 45
      { lower := 1577, upper := 1636, witness := RowWitness.topPrime 1571 } = true := by
  exact good_top_prime_checked (i := 66) (r := 21) (s := 45) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row066_good024_checked :
    goodSegmentCheck 66 21 45
      { lower := 1637, upper := 1702, witness := RowWitness.topPrime 1637 } = true := by
  exact good_top_prime_checked (i := 66) (r := 21) (s := 45) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row066_good025_checked :
    goodSegmentCheck 66 21 45
      { lower := 1703, upper := 1764, witness := RowWitness.topPrime 1699 } = true := by
  exact good_top_prime_checked (i := 66) (r := 21) (s := 45) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row066_good026_checked :
    goodSegmentCheck 66 21 45
      { lower := 1765, upper := 1824, witness := RowWitness.topPrime 1759 } = true := by
  exact good_top_prime_checked (i := 66) (r := 21) (s := 45) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row066_good027_checked :
    goodSegmentCheck 66 21 45
      { lower := 1825, upper := 1888, witness := RowWitness.topPrime 1823 } = true := by
  exact good_top_prime_checked (i := 66) (r := 21) (s := 45) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row066_good028_checked :
    goodSegmentCheck 66 21 45
      { lower := 1889, upper := 1954, witness := RowWitness.topPrime 1889 } = true := by
  exact good_top_prime_checked (i := 66) (r := 21) (s := 45) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row066_good029_checked :
    goodSegmentCheck 66 21 45
      { lower := 1955, upper := 2016, witness := RowWitness.topPrime 1951 } = true := by
  exact good_top_prime_checked (i := 66) (r := 21) (s := 45) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row066_good030_checked :
    goodSegmentCheck 66 21 45
      { lower := 2017, upper := 2082, witness := RowWitness.topPrime 2017 } = true := by
  exact good_top_prime_checked (i := 66) (r := 21) (s := 45) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row066_good031_checked :
    goodSegmentCheck 66 21 45
      { lower := 2083, upper := 2148, witness := RowWitness.topPrime 2083 } = true := by
  exact good_top_prime_checked (i := 66) (r := 21) (s := 45) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row066_good016_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row066_good017_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row066_good018_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row066_good019_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row066_good020_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row066_good021_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row066_good022_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row066_good023_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row066_good024_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row066_good025_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row066_good026_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row066_good027_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row066_good028_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row066_good029_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row066_good030_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row066_good031_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row066_good032_checked :
    goodSegmentCheck 66 21 45
      { lower := 2149, upper := 2208, witness := RowWitness.topPrime 2143 } = true := by
  exact good_top_prime_checked (i := 66) (r := 21) (s := 45) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row066_good033_checked :
    goodSegmentCheck 66 21 45
      { lower := 2209, upper := 2272, witness := RowWitness.topPrime 2207 } = true := by
  exact good_top_prime_checked (i := 66) (r := 21) (s := 45) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row066_good034_checked :
    goodSegmentCheck 66 21 45
      { lower := 2273, upper := 2338, witness := RowWitness.topPrime 2273 } = true := by
  exact good_top_prime_checked (i := 66) (r := 21) (s := 45) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row066_good035_checked :
    goodSegmentCheck 66 21 45
      { lower := 2339, upper := 2404, witness := RowWitness.topPrime 2339 } = true := by
  exact good_top_prime_checked (i := 66) (r := 21) (s := 45) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row066_good036_checked :
    goodSegmentCheck 66 21 45
      { lower := 2405, upper := 2464, witness := RowWitness.topPrime 2399 } = true := by
  exact good_top_prime_checked (i := 66) (r := 21) (s := 45) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row066_good037_checked :
    goodSegmentCheck 66 21 45
      { lower := 2465, upper := 2524, witness := RowWitness.topPrime 2459 } = true := by
  exact good_top_prime_checked (i := 66) (r := 21) (s := 45) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row066_good038_checked :
    goodSegmentCheck 66 21 45
      { lower := 2525, upper := 2586, witness := RowWitness.topPrime 2521 } = true := by
  exact good_top_prime_checked (i := 66) (r := 21) (s := 45) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row066_good039_checked :
    goodSegmentCheck 66 21 45
      { lower := 2587, upper := 2644, witness := RowWitness.topPrime 2579 } = true := by
  exact good_top_prime_checked (i := 66) (r := 21) (s := 45) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row066_good040_checked :
    goodSegmentCheck 66 21 45
      { lower := 2645, upper := 2698, witness := RowWitness.topPrime 2633 } = true := by
  exact good_top_prime_checked (i := 66) (r := 21) (s := 45) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row066_good041_checked :
    goodSegmentCheck 66 21 45
      { lower := 2699, upper := 2764, witness := RowWitness.topPrime 2699 } = true := by
  exact good_top_prime_checked (i := 66) (r := 21) (s := 45) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row066_good042_checked :
    goodSegmentCheck 66 21 45
      { lower := 2765, upper := 2818, witness := RowWitness.topPrime 2753 } = true := by
  exact good_top_prime_checked (i := 66) (r := 21) (s := 45) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row066_good043_checked :
    goodSegmentCheck 66 21 45
      { lower := 2819, upper := 2884, witness := RowWitness.topPrime 2819 } = true := by
  exact good_top_prime_checked (i := 66) (r := 21) (s := 45) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row066_good044_checked :
    goodSegmentCheck 66 21 45
      { lower := 2885, upper := 2944, witness := RowWitness.topPrime 2879 } = true := by
  exact good_top_prime_checked (i := 66) (r := 21) (s := 45) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row066_good045_checked :
    goodSegmentCheck 66 21 45
      { lower := 2945, upper := 3004, witness := RowWitness.topPrime 2939 } = true := by
  exact good_top_prime_checked (i := 66) (r := 21) (s := 45) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row066_good046_checked :
    goodSegmentCheck 66 21 45
      { lower := 3005, upper := 3066, witness := RowWitness.topPrime 3001 } = true := by
  exact good_top_prime_checked (i := 66) (r := 21) (s := 45) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row066_good047_checked :
    goodSegmentCheck 66 21 45
      { lower := 3067, upper := 3132, witness := RowWitness.topPrime 3067 } = true := by
  exact good_top_prime_checked (i := 66) (r := 21) (s := 45) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row066_good032_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row066_good033_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row066_good034_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row066_good035_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row066_good036_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row066_good037_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row066_good038_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row066_good039_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row066_good040_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row066_good041_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row066_good042_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row066_good043_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row066_good044_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row066_good045_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row066_good046_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row066_good047_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row066_good048_checked :
    goodSegmentCheck 66 21 45
      { lower := 3133, upper := 3186, witness := RowWitness.topPrime 3121 } = true := by
  exact good_top_prime_checked (i := 66) (r := 21) (s := 45) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row066_good049_checked :
    goodSegmentCheck 66 21 45
      { lower := 3187, upper := 3252, witness := RowWitness.topPrime 3187 } = true := by
  exact good_top_prime_checked (i := 66) (r := 21) (s := 45) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row066_good050_checked :
    goodSegmentCheck 66 21 45
      { lower := 3253, upper := 3318, witness := RowWitness.topPrime 3253 } = true := by
  exact good_top_prime_checked (i := 66) (r := 21) (s := 45) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row066_good051_checked :
    goodSegmentCheck 66 21 45
      { lower := 3319, upper := 3384, witness := RowWitness.topPrime 3319 } = true := by
  exact good_top_prime_checked (i := 66) (r := 21) (s := 45) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row066_good052_checked :
    goodSegmentCheck 66 21 45
      { lower := 3385, upper := 3438, witness := RowWitness.topPrime 3373 } = true := by
  exact good_top_prime_checked (i := 66) (r := 21) (s := 45) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row066_good053_checked :
    goodSegmentCheck 66 21 45
      { lower := 3439, upper := 3498, witness := RowWitness.topPrime 3433 } = true := by
  exact good_top_prime_checked (i := 66) (r := 21) (s := 45) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row066_good054_checked :
    goodSegmentCheck 66 21 45
      { lower := 3499, upper := 3564, witness := RowWitness.topPrime 3499 } = true := by
  exact good_top_prime_checked (i := 66) (r := 21) (s := 45) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row066_good055_checked :
    goodSegmentCheck 66 21 45
      { lower := 3565, upper := 3624, witness := RowWitness.topPrime 3559 } = true := by
  exact good_top_prime_checked (i := 66) (r := 21) (s := 45) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row066_good056_checked :
    goodSegmentCheck 66 21 45
      { lower := 3625, upper := 3688, witness := RowWitness.topPrime 3623 } = true := by
  exact good_top_prime_checked (i := 66) (r := 21) (s := 45) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row066_good057_checked :
    goodSegmentCheck 66 21 45
      { lower := 3689, upper := 3742, witness := RowWitness.topPrime 3677 } = true := by
  exact good_top_prime_checked (i := 66) (r := 21) (s := 45) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row066_good058_checked :
    goodSegmentCheck 66 21 45
      { lower := 3743, upper := 3804, witness := RowWitness.topPrime 3739 } = true := by
  exact good_top_prime_checked (i := 66) (r := 21) (s := 45) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row066_good059_checked :
    goodSegmentCheck 66 21 45
      { lower := 3805, upper := 3868, witness := RowWitness.topPrime 3803 } = true := by
  exact good_top_prime_checked (i := 66) (r := 21) (s := 45) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row066_good060_checked :
    goodSegmentCheck 66 21 45
      { lower := 3869, upper := 3928, witness := RowWitness.topPrime 3863 } = true := by
  exact good_top_prime_checked (i := 66) (r := 21) (s := 45) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row066_good061_checked :
    goodSegmentCheck 66 21 45
      { lower := 3929, upper := 3994, witness := RowWitness.topPrime 3929 } = true := by
  exact good_top_prime_checked (i := 66) (r := 21) (s := 45) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row066_good062_checked :
    goodSegmentCheck 66 21 45
      { lower := 3995, upper := 4054, witness := RowWitness.topPrime 3989 } = true := by
  exact good_top_prime_checked (i := 66) (r := 21) (s := 45) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row066_good063_checked :
    goodSegmentCheck 66 21 45
      { lower := 4055, upper := 4116, witness := RowWitness.topPrime 4051 } = true := by
  exact good_top_prime_checked (i := 66) (r := 21) (s := 45) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row066_good048_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row066_good049_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row066_good050_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row066_good051_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row066_good052_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row066_good053_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row066_good054_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row066_good055_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row066_good056_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row066_good057_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row066_good058_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row066_good059_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row066_good060_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row066_good061_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row066_good062_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row066_good063_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row066_good064_checked :
    goodSegmentCheck 66 21 45
      { lower := 4117, upper := 4176, witness := RowWitness.topPrime 4111 } = true := by
  exact good_top_prime_checked (i := 66) (r := 21) (s := 45) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row066_good065_checked :
    goodSegmentCheck 66 21 45
      { lower := 4177, upper := 4242, witness := RowWitness.topPrime 4177 } = true := by
  exact good_top_prime_checked (i := 66) (r := 21) (s := 45) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row066_good066_checked :
    goodSegmentCheck 66 21 45
      { lower := 4243, upper := 4290, witness := RowWitness.topPrime 4243 } = true := by
  exact good_top_prime_checked (i := 66) (r := 21) (s := 45) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row066_good067_checked :
    goodSegmentCheck 66 21 45
      { lower := 4335, upper := 4392, witness := RowWitness.topPrime 4327 } = true := by
  exact good_top_prime_checked (i := 66) (r := 21) (s := 45) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row066_good068_checked :
    goodSegmentCheck 66 21 45
      { lower := 4393, upper := 4456, witness := RowWitness.topPrime 4391 } = true := by
  exact good_top_prime_checked (i := 66) (r := 21) (s := 45) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row066_good069_checked :
    goodSegmentCheck 66 21 45
      { lower := 4457, upper := 4483, witness := RowWitness.topPrime 4457 } = true := by
  exact good_top_prime_checked (i := 66) (r := 21) (s := 45) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row066_good070_checked :
    goodSegmentCheck 66 21 45
      { lower := 4608, upper := 4668, witness := RowWitness.topPrime 4603 } = true := by
  exact good_top_prime_checked (i := 66) (r := 21) (s := 45) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row066_good071_checked :
    goodSegmentCheck 66 21 45
      { lower := 4669, upper := 4673, witness := RowWitness.topPrime 4663 } = true := by
  exact good_top_prime_checked (i := 66) (r := 21) (s := 45) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row066_good072_checked :
    goodSegmentCheck 66 21 45
      { lower := 4802, upper := 4866, witness := RowWitness.topPrime 4801 } = true := by
  exact good_top_prime_checked (i := 66) (r := 21) (s := 45) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row066_good073_checked :
    goodSegmentCheck 66 21 45
      { lower := 4867, upper := 4867, witness := RowWitness.topPrime 4861 } = true := by
  exact good_top_prime_checked (i := 66) (r := 21) (s := 45) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row066_good074_checked :
    goodSegmentCheck 66 21 45
      { lower := 5043, upper := 5104, witness := RowWitness.topPrime 5039 } = true := by
  exact good_top_prime_checked (i := 66) (r := 21) (s := 45) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row066_good075_checked :
    goodSegmentCheck 66 21 45
      { lower := 5105, upper := 5166, witness := RowWitness.topPrime 5101 } = true := by
  exact good_top_prime_checked (i := 66) (r := 21) (s := 45) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row066_good076_checked :
    goodSegmentCheck 66 21 45
      { lower := 5167, upper := 5185, witness := RowWitness.topPrime 5167 } = true := by
  exact good_top_prime_checked (i := 66) (r := 21) (s := 45) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row066_good077_checked :
    goodSegmentCheck 66 21 45
      { lower := 5202, upper := 5210, witness := RowWitness.topPrime 5197 } = true := by
  exact good_top_prime_checked (i := 66) (r := 21) (s := 45) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row066_good078_checked :
    goodSegmentCheck 66 21 45
      { lower := 5476, upper := 5480, witness := RowWitness.topPrime 5471 } = true := by
  exact good_top_prime_checked (i := 66) (r := 21) (s := 45) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row066_good079_checked :
    goodSegmentCheck 66 21 45
      { lower := 5488, upper := 5548, witness := RowWitness.topPrime 5483 } = true := by
  exact good_top_prime_checked (i := 66) (r := 21) (s := 45) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row066_good064_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row066_good065_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row066_good066_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row066_good067_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row066_good068_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row066_good069_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row066_good070_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row066_good071_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row066_good072_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row066_good073_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row066_good074_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row066_good075_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row066_good076_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row066_good077_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row066_good078_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row066_good079_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row066_good080_checked :
    goodSegmentCheck 66 21 45
      { lower := 5549, upper := 5556, witness := RowWitness.topPrime 5531 } = true := by
  exact good_top_prime_checked (i := 66) (r := 21) (s := 45) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row066_good081_checked :
    goodSegmentCheck 66 21 45
      { lower := 5625, upper := 5688, witness := RowWitness.topPrime 5623 } = true := by
  exact good_top_prime_checked (i := 66) (r := 21) (s := 45) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row066_good082_checked :
    goodSegmentCheck 66 21 45
      { lower := 5689, upper := 5690, witness := RowWitness.topPrime 5689 } = true := by
  exact good_top_prime_checked (i := 66) (r := 21) (s := 45) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row066_good083_checked :
    goodSegmentCheck 66 21 45
      { lower := 5776, upper := 5814, witness := RowWitness.topPrime 5749 } = true := by
  exact good_top_prime_checked (i := 66) (r := 21) (s := 45) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row066_good084_checked :
    goodSegmentCheck 66 21 45
      { lower := 5815, upper := 5878, witness := RowWitness.topPrime 5813 } = true := by
  exact good_top_prime_checked (i := 66) (r := 21) (s := 45) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row066_good085_checked :
    goodSegmentCheck 66 21 45
      { lower := 5879, upper := 5897, witness := RowWitness.topPrime 5879 } = true := by
  exact good_top_prime_checked (i := 66) (r := 21) (s := 45) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row066_good086_checked :
    goodSegmentCheck 66 21 45
      { lower := 6144, upper := 6208, witness := RowWitness.topPrime 6143 } = true := by
  exact good_top_prime_checked (i := 66) (r := 21) (s := 45) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row066_good087_checked :
    goodSegmentCheck 66 21 45
      { lower := 6209, upper := 6209, witness := RowWitness.topPrime 6203 } = true := by
  exact good_top_prime_checked (i := 66) (r := 21) (s := 45) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row066_good088_checked :
    goodSegmentCheck 66 21 45
      { lower := 6358, upper := 6413, witness := RowWitness.topPrime 6353 } = true := by
  exact good_top_prime_checked (i := 66) (r := 21) (s := 45) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row066_good089_checked :
    goodSegmentCheck 66 21 45
      { lower := 6517, upper := 6556, witness := RowWitness.topPrime 6491 } = true := by
  exact good_top_prime_checked (i := 66) (r := 21) (s := 45) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row066_good090_checked :
    goodSegmentCheck 66 21 45
      { lower := 6557, upper := 6582, witness := RowWitness.topPrime 6553 } = true := by
  exact good_top_prime_checked (i := 66) (r := 21) (s := 45) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row066_good091_checked :
    goodSegmentCheck 66 21 45
      { lower := 6591, upper := 6646, witness := RowWitness.topPrime 6581 } = true := by
  exact good_top_prime_checked (i := 66) (r := 21) (s := 45) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row066_good092_checked :
    goodSegmentCheck 66 21 45
      { lower := 6647, upper := 6702, witness := RowWitness.topPrime 6637 } = true := by
  exact good_top_prime_checked (i := 66) (r := 21) (s := 45) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row066_good093_checked :
    goodSegmentCheck 66 21 45
      { lower := 6703, upper := 6712, witness := RowWitness.topPrime 6703 } = true := by
  exact good_top_prime_checked (i := 66) (r := 21) (s := 45) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row066_good094_checked :
    goodSegmentCheck 66 21 45
      { lower := 6727, upper := 6784, witness := RowWitness.topPrime 6719 } = true := by
  exact good_top_prime_checked (i := 66) (r := 21) (s := 45) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row066_good095_checked :
    goodSegmentCheck 66 21 45
      { lower := 6785, upper := 6792, witness := RowWitness.topPrime 6781 } = true := by
  exact good_top_prime_checked (i := 66) (r := 21) (s := 45) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row066_good080_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row066_good081_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row066_good082_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row066_good083_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row066_good084_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row066_good085_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row066_good086_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row066_good087_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row066_good088_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row066_good089_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row066_good090_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row066_good091_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row066_good092_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row066_good093_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row066_good094_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row066_good095_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row066_good096_checked :
    goodSegmentCheck 66 21 45
      { lower := 6859, upper := 6922, witness := RowWitness.topPrime 6857 } = true := by
  exact good_top_prime_checked (i := 66) (r := 21) (s := 45) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row066_good097_checked :
    goodSegmentCheck 66 21 45
      { lower := 6923, upper := 6942, witness := RowWitness.topPrime 6917 } = true := by
  exact good_top_prime_checked (i := 66) (r := 21) (s := 45) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row066_good098_checked :
    goodSegmentCheck 66 21 45
      { lower := 6962, upper := 7001, witness := RowWitness.topPrime 6961 } = true := by
  exact good_top_prime_checked (i := 66) (r := 21) (s := 45) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row066_good099_checked :
    goodSegmentCheck 66 21 45
      { lower := 7203, upper := 7258, witness := RowWitness.topPrime 7193 } = true := by
  exact good_top_prime_checked (i := 66) (r := 21) (s := 45) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row066_good100_checked :
    goodSegmentCheck 66 21 45
      { lower := 7259, upper := 7285, witness := RowWitness.topPrime 7253 } = true := by
  exact good_top_prime_checked (i := 66) (r := 21) (s := 45) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row066_good101_checked :
    goodSegmentCheck 66 21 45
      { lower := 7406, upper := 7458, witness := RowWitness.topPrime 7393 } = true := by
  exact good_top_prime_checked (i := 66) (r := 21) (s := 45) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row066_good102_checked :
    goodSegmentCheck 66 21 45
      { lower := 7459, upper := 7471, witness := RowWitness.topPrime 7459 } = true := by
  exact good_top_prime_checked (i := 66) (r := 21) (s := 45) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row066_good103_checked :
    goodSegmentCheck 66 21 45
      { lower := 7500, upper := 7507, witness := RowWitness.topPrime 7499 } = true := by
  exact good_top_prime_checked (i := 66) (r := 21) (s := 45) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row066_good104_checked :
    goodSegmentCheck 66 21 45
      { lower := 7514, upper := 7572, witness := RowWitness.topPrime 7507 } = true := by
  exact good_top_prime_checked (i := 66) (r := 21) (s := 45) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row066_good105_checked :
    goodSegmentCheck 66 21 45
      { lower := 7573, upper := 7634, witness := RowWitness.topPrime 7573 } = true := by
  exact good_top_prime_checked (i := 66) (r := 21) (s := 45) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row066_good106_checked :
    goodSegmentCheck 66 21 45
      { lower := 7935, upper := 7998, witness := RowWitness.topPrime 7933 } = true := by
  exact good_top_prime_checked (i := 66) (r := 21) (s := 45) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row066_good107_checked :
    goodSegmentCheck 66 21 45
      { lower := 7999, upper := 8000, witness := RowWitness.topPrime 7993 } = true := by
  exact good_top_prime_checked (i := 66) (r := 21) (s := 45) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row066_good108_checked :
    goodSegmentCheck 66 21 45
      { lower := 8214, upper := 8274, witness := RowWitness.topPrime 8209 } = true := by
  exact good_top_prime_checked (i := 66) (r := 21) (s := 45) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row066_good109_checked :
    goodSegmentCheck 66 21 45
      { lower := 8275, upper := 8279, witness := RowWitness.topPrime 8273 } = true := by
  exact good_top_prime_checked (i := 66) (r := 21) (s := 45) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row066_good110_checked :
    goodSegmentCheck 66 21 45
      { lower := 8410, upper := 8454, witness := RowWitness.topPrime 8389 } = true := by
  exact good_top_prime_checked (i := 66) (r := 21) (s := 45) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row066_good111_checked :
    goodSegmentCheck 66 21 45
      { lower := 8455, upper := 8492, witness := RowWitness.topPrime 8447 } = true := by
  exact good_top_prime_checked (i := 66) (r := 21) (s := 45) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row066_good096_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row066_good097_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row066_good098_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row066_good099_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row066_good100_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row066_good101_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row066_good102_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row066_good103_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row066_good104_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row066_good105_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row066_good106_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row066_good107_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row066_good108_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row066_good109_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row066_good110_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row066_good111_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row066_good112_checked :
    goodSegmentCheck 66 21 45
      { lower := 8750, upper := 8812, witness := RowWitness.topPrime 8747 } = true := by
  exact good_top_prime_checked (i := 66) (r := 21) (s := 45) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row066_good113_checked :
    goodSegmentCheck 66 21 45
      { lower := 8813, upper := 8815, witness := RowWitness.topPrime 8807 } = true := by
  exact good_top_prime_checked (i := 66) (r := 21) (s := 45) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row066_good114_checked :
    goodSegmentCheck 66 21 45
      { lower := 8836, upper := 8853, witness := RowWitness.topPrime 8831 } = true := by
  exact good_top_prime_checked (i := 66) (r := 21) (s := 45) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row066_good115_checked :
    goodSegmentCheck 66 21 45
      { lower := 9245, upper := 9306, witness := RowWitness.topPrime 9241 } = true := by
  exact good_top_prime_checked (i := 66) (r := 21) (s := 45) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row066_good116_checked :
    goodSegmentCheck 66 21 45
      { lower := 9307, upper := 9310, witness := RowWitness.topPrime 9293 } = true := by
  exact good_top_prime_checked (i := 66) (r := 21) (s := 45) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row066_good117_checked :
    goodSegmentCheck 66 21 45
      { lower := 9583, upper := 9587, witness := RowWitness.topPrime 9551 } = true := by
  exact good_top_prime_checked (i := 66) (r := 21) (s := 45) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row066_good118_checked :
    goodSegmentCheck 66 21 45
      { lower := 9604, upper := 9666, witness := RowWitness.topPrime 9601 } = true := by
  exact good_top_prime_checked (i := 66) (r := 21) (s := 45) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row066_good119_checked :
    goodSegmentCheck 66 21 45
      { lower := 9667, upper := 9669, witness := RowWitness.topPrime 9661 } = true := by
  exact good_top_prime_checked (i := 66) (r := 21) (s := 45) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row066_good120_checked :
    goodSegmentCheck 66 21 45
      { lower := 10051, upper := 10065, witness := RowWitness.topPrime 10039 } = true := by
  exact good_top_prime_checked (i := 66) (r := 21) (s := 45) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row066_good121_checked :
    goodSegmentCheck 66 21 45
      { lower := 10086, upper := 10144, witness := RowWitness.topPrime 10079 } = true := by
  exact good_top_prime_checked (i := 66) (r := 21) (s := 45) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row066_good122_checked :
    goodSegmentCheck 66 21 45
      { lower := 10145, upper := 10151, witness := RowWitness.topPrime 10141 } = true := by
  exact good_top_prime_checked (i := 66) (r := 21) (s := 45) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row066_good123_checked :
    goodSegmentCheck 66 21 45
      { lower := 10580, upper := 10632, witness := RowWitness.topPrime 10567 } = true := by
  exact good_top_prime_checked (i := 66) (r := 21) (s := 45) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row066_good124_checked :
    goodSegmentCheck 66 21 45
      { lower := 10633, upper := 10645, witness := RowWitness.topPrime 10631 } = true := by
  exact good_top_prime_checked (i := 66) (r := 21) (s := 45) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row066_good125_checked :
    goodSegmentCheck 66 21 45
      { lower := 10935, upper := 10974, witness := RowWitness.topPrime 10909 } = true := by
  exact good_top_prime_checked (i := 66) (r := 21) (s := 45) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row066_good126_checked :
    goodSegmentCheck 66 21 45
      { lower := 10975, upper := 11017, witness := RowWitness.topPrime 10973 } = true := by
  exact good_top_prime_checked (i := 66) (r := 21) (s := 45) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row066_good127_checked :
    goodSegmentCheck 66 21 45
      { lower := 11045, upper := 11050, witness := RowWitness.topPrime 11027 } = true := by
  exact good_top_prime_checked (i := 66) (r := 21) (s := 45) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row066_good112_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row066_good113_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row066_good114_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row066_good115_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row066_good116_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row066_good117_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row066_good118_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row066_good119_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row066_good120_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row066_good121_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row066_good122_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row066_good123_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row066_good124_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row066_good125_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row066_good126_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row066_good127_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row066_good128_checked :
    goodSegmentCheck 66 21 45
      { lower := 11094, upper := 11158, witness := RowWitness.topPrime 11093 } = true := by
  exact good_top_prime_checked (i := 66) (r := 21) (s := 45) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row066_good129_checked :
    goodSegmentCheck 66 21 45
      { lower := 11159, upper := 11159, witness := RowWitness.topPrime 11159 } = true := by
  exact good_top_prime_checked (i := 66) (r := 21) (s := 45) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row066_good130_checked :
    goodSegmentCheck 66 21 45
      { lower := 11163, upper := 11174, witness := RowWitness.topPrime 11161 } = true := by
  exact good_top_prime_checked (i := 66) (r := 21) (s := 45) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row066_good131_checked :
    goodSegmentCheck 66 21 45
      { lower := 11250, upper := 11308, witness := RowWitness.topPrime 11243 } = true := by
  exact good_top_prime_checked (i := 66) (r := 21) (s := 45) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row066_good132_checked :
    goodSegmentCheck 66 21 45
      { lower := 11309, upper := 11315, witness := RowWitness.topPrime 11299 } = true := by
  exact good_top_prime_checked (i := 66) (r := 21) (s := 45) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row066_good133_checked :
    goodSegmentCheck 66 21 45
      { lower := 11774, upper := 11808, witness := RowWitness.topPrime 11743 } = true := by
  exact good_top_prime_checked (i := 66) (r := 21) (s := 45) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row066_good134_checked :
    goodSegmentCheck 66 21 45
      { lower := 11809, upper := 11832, witness := RowWitness.topPrime 11807 } = true := by
  exact good_top_prime_checked (i := 66) (r := 21) (s := 45) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row066_good135_checked :
    goodSegmentCheck 66 21 45
      { lower := 12321, upper := 12353, witness := RowWitness.topPrime 12301 } = true := by
  exact good_top_prime_checked (i := 66) (r := 21) (s := 45) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row066_good136_checked :
    goodSegmentCheck 66 21 45
      { lower := 12500, upper := 12558, witness := RowWitness.topPrime 12497 } = true := by
  exact good_top_prime_checked (i := 66) (r := 21) (s := 45) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row066_good137_checked :
    goodSegmentCheck 66 21 45
      { lower := 13125, upper := 13186, witness := RowWitness.topPrime 13121 } = true := by
  exact good_top_prime_checked (i := 66) (r := 21) (s := 45) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row066_good138_checked :
    goodSegmentCheck 66 21 45
      { lower := 13187, upper := 13190, witness := RowWitness.topPrime 13187 } = true := by
  exact good_top_prime_checked (i := 66) (r := 21) (s := 45) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row066_good139_checked :
    goodSegmentCheck 66 21 45
      { lower := 13454, upper := 13516, witness := RowWitness.topPrime 13451 } = true := by
  exact good_top_prime_checked (i := 66) (r := 21) (s := 45) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row066_good140_checked :
    goodSegmentCheck 66 21 45
      { lower := 13517, upper := 13519, witness := RowWitness.topPrime 13513 } = true := by
  exact good_top_prime_checked (i := 66) (r := 21) (s := 45) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row066_good141_checked :
    goodSegmentCheck 66 21 45
      { lower := 13718, upper := 13776, witness := RowWitness.topPrime 13711 } = true := by
  exact good_top_prime_checked (i := 66) (r := 21) (s := 45) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row066_good142_checked :
    goodSegmentCheck 66 21 45
      { lower := 13777, upper := 13783, witness := RowWitness.topPrime 13763 } = true := by
  exact good_top_prime_checked (i := 66) (r := 21) (s := 45) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row066_good143_checked :
    goodSegmentCheck 66 21 45
      { lower := 14336, upper := 14362, witness := RowWitness.topPrime 14327 } = true := by
  exact good_top_prime_checked (i := 66) (r := 21) (s := 45) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row066_good128_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row066_good129_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row066_good130_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row066_good131_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row066_good132_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row066_good133_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row066_good134_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row066_good135_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row066_good136_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row066_good137_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row066_good138_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row066_good139_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row066_good140_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row066_good141_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row066_good142_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row066_good143_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row066_good144_checked :
    goodSegmentCheck 66 21 45
      { lower := 14375, upper := 14401, witness := RowWitness.topPrime 14369 } = true := by
  exact good_top_prime_checked (i := 66) (r := 21) (s := 45) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row066_good145_checked :
    goodSegmentCheck 66 21 45
      { lower := 14406, upper := 14466, witness := RowWitness.topPrime 14401 } = true := by
  exact good_top_prime_checked (i := 66) (r := 21) (s := 45) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row066_good146_checked :
    goodSegmentCheck 66 21 45
      { lower := 14467, upper := 14471, witness := RowWitness.topPrime 14461 } = true := by
  exact good_top_prime_checked (i := 66) (r := 21) (s := 45) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row066_good147_checked :
    goodSegmentCheck 66 21 45
      { lower := 14792, upper := 14804, witness := RowWitness.topPrime 14783 } = true := by
  exact good_top_prime_checked (i := 66) (r := 21) (s := 45) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row066_good148_checked :
    goodSegmentCheck 66 21 45
      { lower := 15138, upper := 15194, witness := RowWitness.topPrime 15137 } = true := by
  exact good_top_prime_checked (i := 66) (r := 21) (s := 45) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row066_good149_checked :
    goodSegmentCheck 66 21 45
      { lower := 15379, upper := 15441, witness := RowWitness.topPrime 15377 } = true := by
  exact good_top_prime_checked (i := 66) (r := 21) (s := 45) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row066_good150_checked :
    goodSegmentCheck 66 21 45
      { lower := 16384, upper := 16402, witness := RowWitness.topPrime 16381 } = true := by
  exact good_top_prime_checked (i := 66) (r := 21) (s := 45) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row066_good151_checked :
    goodSegmentCheck 66 21 45
      { lower := 16428, upper := 16449, witness := RowWitness.topPrime 16427 } = true := by
  exact good_top_prime_checked (i := 66) (r := 21) (s := 45) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row066_good152_checked :
    goodSegmentCheck 66 21 45
      { lower := 16810, upper := 16852, witness := RowWitness.topPrime 16787 } = true := by
  exact good_top_prime_checked (i := 66) (r := 21) (s := 45) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row066_good153_checked :
    goodSegmentCheck 66 21 45
      { lower := 16853, upper := 16885, witness := RowWitness.topPrime 16843 } = true := by
  exact good_top_prime_checked (i := 66) (r := 21) (s := 45) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row066_good154_checked :
    goodSegmentCheck 66 21 45
      { lower := 18490, upper := 18546, witness := RowWitness.topPrime 18481 } = true := by
  exact good_top_prime_checked (i := 66) (r := 21) (s := 45) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row066_good155_checked :
    goodSegmentCheck 66 21 45
      { lower := 18547, upper := 18555, witness := RowWitness.topPrime 18541 } = true := by
  exact good_top_prime_checked (i := 66) (r := 21) (s := 45) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row066_good156_checked :
    goodSegmentCheck 66 21 45
      { lower := 19208, upper := 19272, witness := RowWitness.topPrime 19207 } = true := by
  exact good_top_prime_checked (i := 66) (r := 21) (s := 45) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row066_good157_checked :
    goodSegmentCheck 66 21 45
      { lower := 19273, upper := 19273, witness := RowWitness.topPrime 19273 } = true := by
  exact good_top_prime_checked (i := 66) (r := 21) (s := 45) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row066_good158_checked :
    goodSegmentCheck 66 21 45
      { lower := 19663, upper := 19726, witness := RowWitness.topPrime 19661 } = true := by
  exact good_top_prime_checked (i := 66) (r := 21) (s := 45) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row066_good159_checked :
    goodSegmentCheck 66 21 45
      { lower := 19727, upper := 19728, witness := RowWitness.topPrime 19727 } = true := by
  exact good_top_prime_checked (i := 66) (r := 21) (s := 45) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row066_good144_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row066_good145_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row066_good146_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row066_good147_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row066_good148_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row066_good149_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row066_good150_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row066_good151_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row066_good152_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row066_good153_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row066_good154_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row066_good155_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row066_good156_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row066_good157_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row066_good158_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row066_good159_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row066_good160_checked :
    goodSegmentCheck 66 21 45
      { lower := 20535, upper := 20545, witness := RowWitness.topPrime 20533 } = true := by
  exact good_top_prime_checked (i := 66) (r := 21) (s := 45) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row066_good161_checked :
    goodSegmentCheck 66 21 45
      { lower := 20577, upper := 20600, witness := RowWitness.topPrime 20563 } = true := by
  exact good_top_prime_checked (i := 66) (r := 21) (s := 45) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row066_good162_checked :
    goodSegmentCheck 66 21 45
      { lower := 21875, upper := 21936, witness := RowWitness.topPrime 21871 } = true := by
  exact good_top_prime_checked (i := 66) (r := 21) (s := 45) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row066_good163_checked :
    goodSegmentCheck 66 21 45
      { lower := 21937, upper := 21940, witness := RowWitness.topPrime 21937 } = true := by
  exact good_top_prime_checked (i := 66) (r := 21) (s := 45) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row066_good164_checked :
    goodSegmentCheck 66 21 45
      { lower := 24037, upper := 24075, witness := RowWitness.topPrime 24029 } = true := by
  exact good_top_prime_checked (i := 66) (r := 21) (s := 45) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row066_good165_checked :
    goodSegmentCheck 66 21 45
      { lower := 24334, upper := 24364, witness := RowWitness.topPrime 24329 } = true := by
  exact good_top_prime_checked (i := 66) (r := 21) (s := 45) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row066_good166_checked :
    goodSegmentCheck 66 21 45
      { lower := 24367, upper := 24424, witness := RowWitness.topPrime 24359 } = true := by
  exact good_top_prime_checked (i := 66) (r := 21) (s := 45) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row066_good167_checked :
    goodSegmentCheck 66 21 45
      { lower := 24425, upper := 24432, witness := RowWitness.topPrime 24421 } = true := by
  exact good_top_prime_checked (i := 66) (r := 21) (s := 45) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row066_good168_checked :
    goodSegmentCheck 66 21 45
      { lower := 24576, upper := 24630, witness := RowWitness.topPrime 24571 } = true := by
  exact good_top_prime_checked (i := 66) (r := 21) (s := 45) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row066_good169_checked :
    goodSegmentCheck 66 21 45
      { lower := 26047, upper := 26076, witness := RowWitness.topPrime 26041 } = true := by
  exact good_top_prime_checked (i := 66) (r := 21) (s := 45) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row066_good170_checked :
    goodSegmentCheck 66 21 45
      { lower := 26411, upper := 26429, witness := RowWitness.topPrime 26407 } = true := by
  exact good_top_prime_checked (i := 66) (r := 21) (s := 45) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row066_good171_checked :
    goodSegmentCheck 66 21 45
      { lower := 27436, upper := 27445, witness := RowWitness.topPrime 27431 } = true := by
  exact good_top_prime_checked (i := 66) (r := 21) (s := 45) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row066_good172_checked :
    goodSegmentCheck 66 21 45
      { lower := 28125, upper := 28155, witness := RowWitness.topPrime 28123 } = true := by
  exact good_top_prime_checked (i := 66) (r := 21) (s := 45) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row066_good173_checked :
    goodSegmentCheck 66 21 45
      { lower := 28577, upper := 28626, witness := RowWitness.topPrime 28573 } = true := by
  exact good_top_prime_checked (i := 66) (r := 21) (s := 45) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row066_good174_checked :
    goodSegmentCheck 66 21 45
      { lower := 28717, upper := 28737, witness := RowWitness.topPrime 28711 } = true := by
  exact good_top_prime_checked (i := 66) (r := 21) (s := 45) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row066_good175_checked :
    goodSegmentCheck 66 21 45
      { lower := 29791, upper := 29833, witness := RowWitness.topPrime 29789 } = true := by
  exact good_top_prime_checked (i := 66) (r := 21) (s := 45) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row066_good160_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row066_good161_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row066_good162_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row066_good163_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row066_good164_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row066_good165_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row066_good166_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row066_good167_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row066_good168_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row066_good169_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row066_good170_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row066_good171_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row066_good172_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row066_good173_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row066_good174_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row066_good175_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row066_good176_checked :
    goodSegmentCheck 66 21 45
      { lower := 30926, upper := 30964, witness := RowWitness.topPrime 30911 } = true := by
  exact good_top_prime_checked (i := 66) (r := 21) (s := 45) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row066_good177_checked :
    goodSegmentCheck 66 21 45
      { lower := 31250, upper := 31278, witness := RowWitness.topPrime 31249 } = true := by
  exact good_top_prime_checked (i := 66) (r := 21) (s := 45) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row066_good178_checked :
    goodSegmentCheck 66 21 45
      { lower := 32805, upper := 32833, witness := RowWitness.topPrime 32803 } = true := by
  exact good_top_prime_checked (i := 66) (r := 21) (s := 45) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row066_good179_checked :
    goodSegmentCheck 66 21 45
      { lower := 33620, upper := 33679, witness := RowWitness.topPrime 33619 } = true := by
  exact good_top_prime_checked (i := 66) (r := 21) (s := 45) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row066_good180_checked :
    goodSegmentCheck 66 21 45
      { lower := 34391, upper := 34440, witness := RowWitness.topPrime 34381 } = true := by
  exact good_top_prime_checked (i := 66) (r := 21) (s := 45) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row066_good181_checked :
    goodSegmentCheck 66 21 45
      { lower := 36517, upper := 36562, witness := RowWitness.topPrime 36497 } = true := by
  exact good_top_prime_checked (i := 66) (r := 21) (s := 45) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row066_good182_checked :
    goodSegmentCheck 66 21 45
      { lower := 36563, upper := 36566, witness := RowWitness.topPrime 36563 } = true := by
  exact good_top_prime_checked (i := 66) (r := 21) (s := 45) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row066_good183_checked :
    goodSegmentCheck 66 21 45
      { lower := 37553, upper := 37565, witness := RowWitness.topPrime 37549 } = true := by
  exact good_top_prime_checked (i := 66) (r := 21) (s := 45) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row066_good184_checked :
    goodSegmentCheck 66 21 45
      { lower := 39326, upper := 39388, witness := RowWitness.topPrime 39323 } = true := by
  exact good_top_prime_checked (i := 66) (r := 21) (s := 45) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row066_good185_checked :
    goodSegmentCheck 66 21 45
      { lower := 39389, upper := 39391, witness := RowWitness.topPrime 39383 } = true := by
  exact good_top_prime_checked (i := 66) (r := 21) (s := 45) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row066_good186_checked :
    goodSegmentCheck 66 21 45
      { lower := 40960, upper := 40996, witness := RowWitness.topPrime 40949 } = true := by
  exact good_top_prime_checked (i := 66) (r := 21) (s := 45) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row066_good187_checked :
    goodSegmentCheck 66 21 45
      { lower := 48778, upper := 48799, witness := RowWitness.topPrime 48767 } = true := by
  exact good_top_prime_checked (i := 66) (r := 21) (s := 45) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row066_good188_checked :
    goodSegmentCheck 66 21 45
      { lower := 49152, upper := 49195, witness := RowWitness.topPrime 49139 } = true := by
  exact good_top_prime_checked (i := 66) (r := 21) (s := 45) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row066_good189_checked :
    goodSegmentCheck 66 21 45
      { lower := 59582, upper := 59601, witness := RowWitness.topPrime 59581 } = true := by
  exact good_top_prime_checked (i := 66) (r := 21) (s := 45) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row066_good190_checked :
    goodSegmentCheck 66 21 45
      { lower := 327701, upper := 327745, witness := RowWitness.topPrime 327689 } = true := by
  exact good_top_prime_checked (i := 66) (r := 21) (s := 45) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row066_good176_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row066_good177_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row066_good178_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row066_good179_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row066_good180_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row066_good181_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row066_good182_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row066_good183_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row066_good184_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row066_good185_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row066_good186_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row066_good187_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row066_good188_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row066_good189_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row066_good190_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row066_goods_checked :
    row066.goods.all (goodSegmentCheck row066.height.i row066.height.r row066.height.s) = true := by
  change row066_goods.all (goodSegmentCheck 66 21 45) = true
  simp only [row066_goods, List.all_cons, List.all_nil,
    row066_good000_checked,
    row066_good001_checked,
    row066_good002_checked,
    row066_good003_checked,
    row066_good004_checked,
    row066_good005_checked,
    row066_good006_checked,
    row066_good007_checked,
    row066_good008_checked,
    row066_good009_checked,
    row066_good010_checked,
    row066_good011_checked,
    row066_good012_checked,
    row066_good013_checked,
    row066_good014_checked,
    row066_good015_checked,
    row066_good016_checked,
    row066_good017_checked,
    row066_good018_checked,
    row066_good019_checked,
    row066_good020_checked,
    row066_good021_checked,
    row066_good022_checked,
    row066_good023_checked,
    row066_good024_checked,
    row066_good025_checked,
    row066_good026_checked,
    row066_good027_checked,
    row066_good028_checked,
    row066_good029_checked,
    row066_good030_checked,
    row066_good031_checked,
    row066_good032_checked,
    row066_good033_checked,
    row066_good034_checked,
    row066_good035_checked,
    row066_good036_checked,
    row066_good037_checked,
    row066_good038_checked,
    row066_good039_checked,
    row066_good040_checked,
    row066_good041_checked,
    row066_good042_checked,
    row066_good043_checked,
    row066_good044_checked,
    row066_good045_checked,
    row066_good046_checked,
    row066_good047_checked,
    row066_good048_checked,
    row066_good049_checked,
    row066_good050_checked,
    row066_good051_checked,
    row066_good052_checked,
    row066_good053_checked,
    row066_good054_checked,
    row066_good055_checked,
    row066_good056_checked,
    row066_good057_checked,
    row066_good058_checked,
    row066_good059_checked,
    row066_good060_checked,
    row066_good061_checked,
    row066_good062_checked,
    row066_good063_checked,
    row066_good064_checked,
    row066_good065_checked,
    row066_good066_checked,
    row066_good067_checked,
    row066_good068_checked,
    row066_good069_checked,
    row066_good070_checked,
    row066_good071_checked,
    row066_good072_checked,
    row066_good073_checked,
    row066_good074_checked,
    row066_good075_checked,
    row066_good076_checked,
    row066_good077_checked,
    row066_good078_checked,
    row066_good079_checked,
    row066_good080_checked,
    row066_good081_checked,
    row066_good082_checked,
    row066_good083_checked,
    row066_good084_checked,
    row066_good085_checked,
    row066_good086_checked,
    row066_good087_checked,
    row066_good088_checked,
    row066_good089_checked,
    row066_good090_checked,
    row066_good091_checked,
    row066_good092_checked,
    row066_good093_checked,
    row066_good094_checked,
    row066_good095_checked,
    row066_good096_checked,
    row066_good097_checked,
    row066_good098_checked,
    row066_good099_checked,
    row066_good100_checked,
    row066_good101_checked,
    row066_good102_checked,
    row066_good103_checked,
    row066_good104_checked,
    row066_good105_checked,
    row066_good106_checked,
    row066_good107_checked,
    row066_good108_checked,
    row066_good109_checked,
    row066_good110_checked,
    row066_good111_checked,
    row066_good112_checked,
    row066_good113_checked,
    row066_good114_checked,
    row066_good115_checked,
    row066_good116_checked,
    row066_good117_checked,
    row066_good118_checked,
    row066_good119_checked,
    row066_good120_checked,
    row066_good121_checked,
    row066_good122_checked,
    row066_good123_checked,
    row066_good124_checked,
    row066_good125_checked,
    row066_good126_checked,
    row066_good127_checked,
    row066_good128_checked,
    row066_good129_checked,
    row066_good130_checked,
    row066_good131_checked,
    row066_good132_checked,
    row066_good133_checked,
    row066_good134_checked,
    row066_good135_checked,
    row066_good136_checked,
    row066_good137_checked,
    row066_good138_checked,
    row066_good139_checked,
    row066_good140_checked,
    row066_good141_checked,
    row066_good142_checked,
    row066_good143_checked,
    row066_good144_checked,
    row066_good145_checked,
    row066_good146_checked,
    row066_good147_checked,
    row066_good148_checked,
    row066_good149_checked,
    row066_good150_checked,
    row066_good151_checked,
    row066_good152_checked,
    row066_good153_checked,
    row066_good154_checked,
    row066_good155_checked,
    row066_good156_checked,
    row066_good157_checked,
    row066_good158_checked,
    row066_good159_checked,
    row066_good160_checked,
    row066_good161_checked,
    row066_good162_checked,
    row066_good163_checked,
    row066_good164_checked,
    row066_good165_checked,
    row066_good166_checked,
    row066_good167_checked,
    row066_good168_checked,
    row066_good169_checked,
    row066_good170_checked,
    row066_good171_checked,
    row066_good172_checked,
    row066_good173_checked,
    row066_good174_checked,
    row066_good175_checked,
    row066_good176_checked,
    row066_good177_checked,
    row066_good178_checked,
    row066_good179_checked,
    row066_good180_checked,
    row066_good181_checked,
    row066_good182_checked,
    row066_good183_checked,
    row066_good184_checked,
    row066_good185_checked,
    row066_good186_checked,
    row066_good187_checked,
    row066_good188_checked,
    row066_good189_checked,
    row066_good190_checked, Bool.true_and]

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row066_goods_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row066_registered :
    decide (row066.height ∈ heightCertificateData) = true := by
  decide +kernel

theorem row066_small_checked :
    coverCheck (2 * row066.height.i + 2) (row066.height.i * (row066.height.i - 1) - 1)
      (row066.goods.map goodSegmentBounds) = true := by
  decide +kernel

theorem row066_layerCover_checked :
    coverCheck (row066.height.i * (row066.height.i - 1)) (row066.height.n0 - 1)
      (row066.layers.map CoverLayer.bounds) = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row066_registered
#print axioms B699LowIndex.LowIndexLean513dc7cc.row066_small_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row066_layerCover_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row066_bounds : List NatInterval :=
  [(134, 196), (197, 262), (263, 328), (329, 382), (383, 448), (449, 514), (515, 574), (575, 636), (637, 696), (697, 756), (757, 822), (823, 888), (889, 952), (953, 1018), (1019, 1084), (1085, 1134), (1135, 1194), (1195, 1258), (1259, 1324), (1325, 1386), (1387, 1446), (1447, 1512), (1513, 1576), (1577, 1636), (1637, 1702), (1703, 1764), (1765, 1824), (1825, 1888), (1889, 1954), (1955, 2016), (2017, 2082), (2083, 2148), (2149, 2208), (2209, 2272), (2273, 2338), (2339, 2404), (2405, 2464), (2465, 2524), (2525, 2586), (2587, 2644), (2645, 2698), (2699, 2764), (2765, 2818), (2819, 2884), (2885, 2944), (2945, 3004), (3005, 3066), (3067, 3132), (3133, 3186), (3187, 3252), (3253, 3318), (3319, 3384), (3385, 3438), (3439, 3498), (3499, 3564), (3565, 3624), (3625, 3688), (3689, 3742), (3743, 3804), (3805, 3868), (3869, 3928), (3929, 3994), (3995, 4054), (4055, 4116), (4117, 4176), (4177, 4242), (4243, 4290), (4335, 4392), (4393, 4456), (4457, 4483), (4608, 4668), (4669, 4673), (4802, 4866), (4867, 4867), (5043, 5104), (5105, 5166), (5167, 5185), (5202, 5210), (5476, 5480), (5488, 5548), (5549, 5556), (5625, 5688), (5689, 5690), (5776, 5814), (5815, 5878), (5879, 5897), (6144, 6208), (6209, 6209), (6358, 6413), (6517, 6556), (6557, 6582), (6591, 6646), (6647, 6702), (6703, 6712), (6727, 6784), (6785, 6792), (6859, 6922), (6923, 6942), (6962, 7001), (7203, 7258), (7259, 7285), (7406, 7458), (7459, 7471), (7500, 7507), (7514, 7572), (7573, 7634), (7935, 7998), (7999, 8000), (8214, 8274), (8275, 8279), (8410, 8454), (8455, 8492), (8750, 8812), (8813, 8815), (8836, 8853), (9245, 9306), (9307, 9310), (9583, 9587), (9604, 9666), (9667, 9669), (10051, 10065), (10086, 10144), (10145, 10151), (10580, 10632), (10633, 10645), (10935, 10974), (10975, 11017), (11045, 11050), (11094, 11158), (11159, 11159), (11163, 11174), (11250, 11308), (11309, 11315), (11774, 11808), (11809, 11832), (12321, 12353), (12500, 12558), (13125, 13186), (13187, 13190), (13454, 13516), (13517, 13519), (13718, 13776), (13777, 13783), (14336, 14362), (14375, 14401), (14406, 14466), (14467, 14471), (14792, 14804), (15138, 15194), (15379, 15441), (16384, 16402), (16428, 16449), (16810, 16852), (16853, 16885), (18490, 18546), (18547, 18555), (19208, 19272), (19273, 19273), (19663, 19726), (19727, 19728), (20535, 20545), (20577, 20600), (21875, 21936), (21937, 21940), (24037, 24075), (24334, 24364), (24367, 24424), (24425, 24432), (24576, 24630), (26047, 26076), (26411, 26429), (27436, 27445), (28125, 28155), (28577, 28626), (28717, 28737), (29791, 29833), (30926, 30964), (31250, 31278), (32805, 32833), (33620, 33679), (34391, 34440), (36517, 36562), (36563, 36566), (37553, 37565), (39326, 39388), (39389, 39391), (40960, 40996), (48778, 48799), (49152, 49195), (59582, 59601), (327701, 327745)]

theorem row066_bounds_eq : row066.goods.map goodSegmentBounds = row066_bounds := by
  rfl

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row066_bounds_eq

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row066_layer000_intervals : List ColouredInterval :=
  [(2, 4608, 4673), (2, 5120, 5185), (2, 5632, 5697), (2, 6144, 6209), (2, 6656, 6721), (2, 5120, 5185), (2, 6144, 6209), (2, 7168, 7233), (2, 8192, 8257), (2, 6144, 6209), (2, 8192, 8257), (2, 8192, 8257), (2, 8192, 8257), (3, 4374, 4439), (3, 5103, 5168), (3, 5832, 5897), (3, 6561, 6626), (3, 4374, 4439), (3, 6561, 6626), (3, 6561, 6626), (5, 4375, 4440), (5, 5000, 5065), (5, 5625, 5690), (5, 6250, 6315), (5, 6875, 6940), (5, 7500, 7565), (5, 8125, 8190), (5, 6250, 6315), (7, 4459, 4524), (7, 4802, 4867), (7, 5145, 5210), (7, 5488, 5553), (7, 5831, 5896), (7, 6174, 6239), (7, 6517, 6582), (7, 6860, 6925), (7, 7203, 7268), (7, 7546, 7611), (7, 7889, 7954), (7, 8232, 8297), (7, 8575, 8579), (7, 4802, 4867), (7, 7203, 7268), (13, 4290, 4290), (13, 4394, 4459), (13, 4563, 4628), (13, 4394, 4459), (13, 6591, 6656), (17, 4335, 4400), (17, 4624, 4689), (17, 4913, 4978), (17, 5202, 5267), (17, 5491, 5556), (17, 5780, 5845), (17, 6069, 6134), (17, 6358, 6423), (17, 6647, 6712), (17, 6936, 7001), (17, 7225, 7290), (17, 7514, 7579), (17, 7803, 7868), (17, 4913, 4978), (19, 4332, 4397), (19, 4693, 4758), (19, 5054, 5119), (19, 5415, 5480), (19, 5776, 5841), (19, 6137, 6202), (19, 6498, 6563), (19, 6859, 6924), (19, 7220, 7285), (19, 7581, 7646), (19, 7942, 8007), (19, 8303, 8368), (19, 6859, 6924), (23, 4290, 4297), (23, 4761, 4826), (23, 5290, 5355), (23, 5819, 5884), (23, 6348, 6413), (23, 6877, 6942), (23, 7406, 7471), (23, 7935, 8000), (23, 8464, 8529), (29, 5046, 5111), (29, 5887, 5952), (29, 6728, 6793), (29, 7569, 7634), (29, 8410, 8475), (31, 4805, 4870), (31, 5766, 5831), (31, 6727, 6792), (31, 7688, 7753), (37, 5476, 5541), (37, 6845, 6910), (37, 8214, 8279), (41, 5043, 5108), (41, 6724, 6789), (41, 8405, 8470), (43, 5547, 5612), (43, 7396, 7461), (47, 4418, 4483), (47, 6627, 6692), (53, 5618, 5683), (53, 8427, 8492), (59, 6962, 7027), (61, 7442, 7507)]

def row066_layer000_block000 : List ColouredInterval :=
  [(2, 4608, 4673), (2, 5120, 5185), (2, 5632, 5697), (2, 6144, 6209), (2, 6656, 6721), (2, 5120, 5185), (2, 6144, 6209), (2, 7168, 7233), (2, 8192, 8257), (2, 6144, 6209), (2, 8192, 8257), (2, 8192, 8257), (2, 8192, 8257), (3, 4374, 4439), (3, 5103, 5168), (3, 5832, 5897)]

def row066_layer000_block001 : List ColouredInterval :=
  [(3, 6561, 6626), (3, 4374, 4439), (3, 6561, 6626), (3, 6561, 6626), (5, 4375, 4440), (5, 5000, 5065), (5, 5625, 5690), (5, 6250, 6315), (5, 6875, 6940), (5, 7500, 7565), (5, 8125, 8190), (5, 6250, 6315), (7, 4459, 4524), (7, 4802, 4867), (7, 5145, 5210), (7, 5488, 5553)]

def row066_layer000_block002 : List ColouredInterval :=
  [(7, 5831, 5896), (7, 6174, 6239), (7, 6517, 6582), (7, 6860, 6925), (7, 7203, 7268), (7, 7546, 7611), (7, 7889, 7954), (7, 8232, 8297), (7, 8575, 8579), (7, 4802, 4867), (7, 7203, 7268), (13, 4290, 4290), (13, 4394, 4459), (13, 4563, 4628), (13, 4394, 4459), (13, 6591, 6656)]

def row066_layer000_block003 : List ColouredInterval :=
  [(17, 4335, 4400), (17, 4624, 4689), (17, 4913, 4978), (17, 5202, 5267), (17, 5491, 5556), (17, 5780, 5845), (17, 6069, 6134), (17, 6358, 6423), (17, 6647, 6712), (17, 6936, 7001), (17, 7225, 7290), (17, 7514, 7579), (17, 7803, 7868), (17, 4913, 4978), (19, 4332, 4397), (19, 4693, 4758)]

def row066_layer000_block004 : List ColouredInterval :=
  [(19, 5054, 5119), (19, 5415, 5480), (19, 5776, 5841), (19, 6137, 6202), (19, 6498, 6563), (19, 6859, 6924), (19, 7220, 7285), (19, 7581, 7646), (19, 7942, 8007), (19, 8303, 8368), (19, 6859, 6924), (23, 4290, 4297), (23, 4761, 4826), (23, 5290, 5355), (23, 5819, 5884), (23, 6348, 6413)]

def row066_layer000_block005 : List ColouredInterval :=
  [(23, 6877, 6942), (23, 7406, 7471), (23, 7935, 8000), (23, 8464, 8529), (29, 5046, 5111), (29, 5887, 5952), (29, 6728, 6793), (29, 7569, 7634), (29, 8410, 8475), (31, 4805, 4870), (31, 5766, 5831), (31, 6727, 6792), (31, 7688, 7753), (37, 5476, 5541), (37, 6845, 6910), (37, 8214, 8279)]

def row066_layer000_block006 : List ColouredInterval :=
  [(41, 5043, 5108), (41, 6724, 6789), (41, 8405, 8470), (43, 5547, 5612), (43, 7396, 7461), (47, 4418, 4483), (47, 6627, 6692), (53, 5618, 5683), (53, 8427, 8492), (59, 6962, 7027), (61, 7442, 7507)]

def row066_layer000_chunks : List (List ColouredInterval) :=
  [row066_layer000_block000, row066_layer000_block001, row066_layer000_block002, row066_layer000_block003, row066_layer000_block004, row066_layer000_block005, row066_layer000_block006]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row066_layer000_intervals

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row066_layer000_arithmetic : LayerArithmeticValid row066.height { lower := 4290, upper := 8580, M := 27 } := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row066_layer000_arithmetic

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row066_layer000_enumeration :
    activePowerIntervalList 66 27 4290 8580 = row066_layer000_intervals := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row066_layer000_enumeration

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row066_layer000_pairs000 :
    row066_layer000_block000.all (fun I => row066_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row066_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row066_layer000_pairs000

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row066_layer000_pairs001 :
    row066_layer000_block001.all (fun I => row066_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row066_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row066_layer000_pairs001

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row066_layer000_pairs002 :
    row066_layer000_block002.all (fun I => row066_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row066_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row066_layer000_pairs002

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row066_layer000_pairs003 :
    row066_layer000_block003.all (fun I => row066_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row066_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row066_layer000_pairs003

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row066_layer000_pairs004 :
    row066_layer000_block004.all (fun I => row066_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row066_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row066_layer000_pairs004

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row066_layer000_pairs005 :
    row066_layer000_block005.all (fun I => row066_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row066_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row066_layer000_pairs005

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row066_layer000_pairs006 :
    row066_layer000_block006.all (fun I => row066_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row066_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row066_layer000_pairs006

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row066_layer000_chunks_eq : row066_layer000_chunks.flatten = row066_layer000_intervals := by
  rfl

theorem row066_layer000_pairs : pairCoverCheck row066_layer000_intervals row066_bounds = true := by
  apply pairCoverCheck_of_chunks row066_layer000_chunks_eq
  intro block hblock
  simp only [row066_layer000_chunks, List.mem_cons, List.mem_nil_iff, or_false] at hblock
  rcases hblock with rfl | rfl | rfl | rfl | rfl | rfl | rfl
  · exact row066_layer000_pairs000
  · exact row066_layer000_pairs001
  · exact row066_layer000_pairs002
  · exact row066_layer000_pairs003
  · exact row066_layer000_pairs004
  · exact row066_layer000_pairs005
  · exact row066_layer000_pairs006

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row066_layer000_chunks_eq
#print axioms B699LowIndex.LowIndexLean513dc7cc.row066_layer000_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row066_layer000_checked :
    coverLayerCheck row066.height row066.goods { lower := 4290, upper := 8580, M := 27 } = true := by
  exact coverLayerCheck_of_parts row066_layer000_arithmetic row066_layer000_enumeration row066_bounds_eq row066_layer000_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row066_layer000_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row066_layer001_intervals : List ColouredInterval :=
  [(2, 9216, 9281), (2, 10240, 10305), (2, 11264, 11329), (2, 10240, 10305), (2, 12288, 12353), (2, 14336, 14401), (2, 16384, 16449), (2, 12288, 12353), (2, 16384, 16449), (2, 16384, 16449), (2, 16384, 16449), (3, 8748, 8813), (3, 10935, 11000), (3, 13122, 13187), (3, 15309, 15374), (3, 13122, 13187), (5, 8750, 8815), (5, 9375, 9440), (5, 10000, 10065), (5, 10625, 10690), (5, 11250, 11315), (5, 11875, 11940), (5, 12500, 12565), (5, 13125, 13190), (5, 13750, 13815), (5, 14375, 14440), (5, 9375, 9440), (5, 12500, 12565), (5, 15625, 15690), (5, 15625, 15690), (7, 9604, 9669), (7, 12005, 12070), (7, 14406, 14471), (7, 16807, 16872), (7, 16807, 16872), (11, 14641, 14706), (13, 8788, 8853), (13, 10985, 11050), (13, 13182, 13247), (13, 15379, 15444), (17, 9826, 9891), (17, 14739, 14804), (19, 13718, 13783), (23, 8993, 9058), (23, 9522, 9587), (23, 10051, 10116), (23, 10580, 10645), (23, 11109, 11174), (23, 11638, 11703), (23, 12167, 12232), (23, 12167, 12232), (29, 9251, 9316), (29, 10092, 10157), (29, 10933, 10998), (29, 11774, 11839), (29, 12615, 12680), (29, 13456, 13521), (29, 14297, 14362), (29, 15138, 15203), (29, 15979, 16044), (29, 16820, 16885), (31, 8649, 8714), (31, 9610, 9675), (31, 10571, 10636), (31, 11532, 11597), (31, 12493, 12558), (31, 13454, 13519), (31, 14415, 14480), (31, 15376, 15441), (31, 16337, 16402), (37, 9583, 9648), (37, 10952, 11017), (37, 12321, 12386), (37, 13690, 13755), (37, 15059, 15124), (37, 16428, 16493), (41, 10086, 10151), (41, 11767, 11832), (41, 13448, 13513), (41, 15129, 15194), (41, 16810, 16875), (43, 9245, 9310), (43, 11094, 11159), (43, 12943, 13008), (43, 14792, 14857), (43, 16641, 16706), (47, 8836, 8901), (47, 11045, 11110), (47, 13254, 13319), (47, 15463, 15528), (53, 11236, 11301), (53, 14045, 14110), (53, 16854, 16919), (59, 10443, 10508), (59, 13924, 13989), (61, 11163, 11228), (61, 14884, 14949)]

def row066_layer001_block000 : List ColouredInterval :=
  [(2, 9216, 9281), (2, 10240, 10305), (2, 11264, 11329), (2, 10240, 10305), (2, 12288, 12353), (2, 14336, 14401), (2, 16384, 16449), (2, 12288, 12353), (2, 16384, 16449), (2, 16384, 16449), (2, 16384, 16449), (3, 8748, 8813), (3, 10935, 11000), (3, 13122, 13187), (3, 15309, 15374), (3, 13122, 13187)]

def row066_layer001_block001 : List ColouredInterval :=
  [(5, 8750, 8815), (5, 9375, 9440), (5, 10000, 10065), (5, 10625, 10690), (5, 11250, 11315), (5, 11875, 11940), (5, 12500, 12565), (5, 13125, 13190), (5, 13750, 13815), (5, 14375, 14440), (5, 9375, 9440), (5, 12500, 12565), (5, 15625, 15690), (5, 15625, 15690), (7, 9604, 9669), (7, 12005, 12070)]

def row066_layer001_block002 : List ColouredInterval :=
  [(7, 14406, 14471), (7, 16807, 16872), (7, 16807, 16872), (11, 14641, 14706), (13, 8788, 8853), (13, 10985, 11050), (13, 13182, 13247), (13, 15379, 15444), (17, 9826, 9891), (17, 14739, 14804), (19, 13718, 13783), (23, 8993, 9058), (23, 9522, 9587), (23, 10051, 10116), (23, 10580, 10645), (23, 11109, 11174)]

def row066_layer001_block003 : List ColouredInterval :=
  [(23, 11638, 11703), (23, 12167, 12232), (23, 12167, 12232), (29, 9251, 9316), (29, 10092, 10157), (29, 10933, 10998), (29, 11774, 11839), (29, 12615, 12680), (29, 13456, 13521), (29, 14297, 14362), (29, 15138, 15203), (29, 15979, 16044), (29, 16820, 16885), (31, 8649, 8714), (31, 9610, 9675), (31, 10571, 10636)]

def row066_layer001_block004 : List ColouredInterval :=
  [(31, 11532, 11597), (31, 12493, 12558), (31, 13454, 13519), (31, 14415, 14480), (31, 15376, 15441), (31, 16337, 16402), (37, 9583, 9648), (37, 10952, 11017), (37, 12321, 12386), (37, 13690, 13755), (37, 15059, 15124), (37, 16428, 16493), (41, 10086, 10151), (41, 11767, 11832), (41, 13448, 13513), (41, 15129, 15194)]

def row066_layer001_block005 : List ColouredInterval :=
  [(41, 16810, 16875), (43, 9245, 9310), (43, 11094, 11159), (43, 12943, 13008), (43, 14792, 14857), (43, 16641, 16706), (47, 8836, 8901), (47, 11045, 11110), (47, 13254, 13319), (47, 15463, 15528), (53, 11236, 11301), (53, 14045, 14110), (53, 16854, 16919), (59, 10443, 10508), (59, 13924, 13989), (61, 11163, 11228)]

def row066_layer001_block006 : List ColouredInterval :=
  [(61, 14884, 14949)]

def row066_layer001_chunks : List (List ColouredInterval) :=
  [row066_layer001_block000, row066_layer001_block001, row066_layer001_block002, row066_layer001_block003, row066_layer001_block004, row066_layer001_block005, row066_layer001_block006]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row066_layer001_intervals

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row066_layer001_arithmetic : LayerArithmeticValid row066.height { lower := 8580, upper := 17160, M := 23 } := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row066_layer001_arithmetic

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row066_layer001_enumeration :
    activePowerIntervalList 66 23 8580 17160 = row066_layer001_intervals := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row066_layer001_enumeration

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row066_layer001_pairs000 :
    row066_layer001_block000.all (fun I => row066_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row066_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row066_layer001_pairs000

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row066_layer001_pairs001 :
    row066_layer001_block001.all (fun I => row066_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row066_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row066_layer001_pairs001

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row066_layer001_pairs002 :
    row066_layer001_block002.all (fun I => row066_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row066_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row066_layer001_pairs002

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row066_layer001_pairs003 :
    row066_layer001_block003.all (fun I => row066_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row066_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row066_layer001_pairs003

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row066_layer001_pairs004 :
    row066_layer001_block004.all (fun I => row066_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row066_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row066_layer001_pairs004

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row066_layer001_pairs005 :
    row066_layer001_block005.all (fun I => row066_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row066_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row066_layer001_pairs005

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row066_layer001_pairs006 :
    row066_layer001_block006.all (fun I => row066_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row066_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row066_layer001_pairs006

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row066_layer001_chunks_eq : row066_layer001_chunks.flatten = row066_layer001_intervals := by
  rfl

theorem row066_layer001_pairs : pairCoverCheck row066_layer001_intervals row066_bounds = true := by
  apply pairCoverCheck_of_chunks row066_layer001_chunks_eq
  intro block hblock
  simp only [row066_layer001_chunks, List.mem_cons, List.mem_nil_iff, or_false] at hblock
  rcases hblock with rfl | rfl | rfl | rfl | rfl | rfl | rfl
  · exact row066_layer001_pairs000
  · exact row066_layer001_pairs001
  · exact row066_layer001_pairs002
  · exact row066_layer001_pairs003
  · exact row066_layer001_pairs004
  · exact row066_layer001_pairs005
  · exact row066_layer001_pairs006

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row066_layer001_chunks_eq
#print axioms B699LowIndex.LowIndexLean513dc7cc.row066_layer001_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row066_layer001_checked :
    coverLayerCheck row066.height row066.goods { lower := 8580, upper := 17160, M := 23 } = true := by
  exact coverLayerCheck_of_parts row066_layer001_arithmetic row066_layer001_enumeration row066_bounds_eq row066_layer001_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row066_layer001_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row066_layer002_intervals : List ColouredInterval :=
  [(2, 18432, 18497), (2, 20480, 20545), (2, 20480, 20545), (2, 24576, 24641), (2, 28672, 28737), (2, 32768, 32833), (2, 24576, 24641), (2, 32768, 32833), (2, 32768, 32833), (2, 32768, 32833), (3, 19683, 19748), (3, 26244, 26309), (3, 32805, 32870), (3, 19683, 19748), (5, 18750, 18815), (5, 21875, 21940), (5, 25000, 25065), (5, 28125, 28190), (5, 31250, 31315), (5, 31250, 31315), (7, 19208, 19273), (7, 21609, 21674), (7, 24010, 24075), (7, 26411, 26476), (7, 28812, 28877), (7, 31213, 31278), (7, 33614, 33679), (7, 33614, 33679), (13, 17576, 17641), (13, 19773, 19838), (13, 21970, 22035), (13, 24167, 24232), (13, 26364, 26429), (13, 28561, 28626), (13, 30758, 30823), (13, 32955, 33020), (13, 28561, 28626), (17, 19652, 19717), (17, 24565, 24630), (17, 29478, 29543), (19, 20577, 20642), (19, 27436, 27501), (19, 34295, 34319), (23, 24334, 24399), (29, 24389, 24454), (31, 17298, 17363), (31, 18259, 18324), (31, 19220, 19285), (31, 29791, 29856), (37, 17797, 17862), (37, 19166, 19231), (37, 20535, 20600), (37, 21904, 21969), (37, 23273, 23338), (37, 24642, 24707), (37, 26011, 26076), (37, 27380, 27445), (41, 18491, 18556), (41, 20172, 20237), (41, 21853, 21918), (41, 23534, 23599), (41, 25215, 25280), (41, 26896, 26961), (41, 28577, 28642), (41, 30258, 30323), (41, 31939, 32004), (41, 33620, 33685), (43, 18490, 18555), (43, 20339, 20404), (43, 22188, 22253), (43, 24037, 24102), (43, 25886, 25951), (43, 27735, 27800), (43, 29584, 29649), (43, 31433, 31498), (43, 33282, 33347), (47, 17672, 17737), (47, 19881, 19946), (47, 22090, 22155), (47, 24299, 24364), (47, 26508, 26573), (47, 28717, 28782), (47, 30926, 30991), (47, 33135, 33200), (53, 19663, 19728), (53, 22472, 22537), (53, 25281, 25346), (53, 28090, 28155), (53, 30899, 30964), (53, 33708, 33773), (59, 17405, 17470), (59, 20886, 20951), (59, 24367, 24432), (59, 27848, 27913), (59, 31329, 31394), (61, 18605, 18670), (61, 22326, 22391), (61, 26047, 26112), (61, 29768, 29833), (61, 33489, 33554)]

def row066_layer002_block000 : List ColouredInterval :=
  [(2, 18432, 18497), (2, 20480, 20545), (2, 20480, 20545), (2, 24576, 24641), (2, 28672, 28737), (2, 32768, 32833), (2, 24576, 24641), (2, 32768, 32833), (2, 32768, 32833), (2, 32768, 32833), (3, 19683, 19748), (3, 26244, 26309), (3, 32805, 32870), (3, 19683, 19748), (5, 18750, 18815), (5, 21875, 21940)]

def row066_layer002_block001 : List ColouredInterval :=
  [(5, 25000, 25065), (5, 28125, 28190), (5, 31250, 31315), (5, 31250, 31315), (7, 19208, 19273), (7, 21609, 21674), (7, 24010, 24075), (7, 26411, 26476), (7, 28812, 28877), (7, 31213, 31278), (7, 33614, 33679), (7, 33614, 33679), (13, 17576, 17641), (13, 19773, 19838), (13, 21970, 22035), (13, 24167, 24232)]

def row066_layer002_block002 : List ColouredInterval :=
  [(13, 26364, 26429), (13, 28561, 28626), (13, 30758, 30823), (13, 32955, 33020), (13, 28561, 28626), (17, 19652, 19717), (17, 24565, 24630), (17, 29478, 29543), (19, 20577, 20642), (19, 27436, 27501), (19, 34295, 34319), (23, 24334, 24399), (29, 24389, 24454), (31, 17298, 17363), (31, 18259, 18324), (31, 19220, 19285)]

def row066_layer002_block003 : List ColouredInterval :=
  [(31, 29791, 29856), (37, 17797, 17862), (37, 19166, 19231), (37, 20535, 20600), (37, 21904, 21969), (37, 23273, 23338), (37, 24642, 24707), (37, 26011, 26076), (37, 27380, 27445), (41, 18491, 18556), (41, 20172, 20237), (41, 21853, 21918), (41, 23534, 23599), (41, 25215, 25280), (41, 26896, 26961), (41, 28577, 28642)]

def row066_layer002_block004 : List ColouredInterval :=
  [(41, 30258, 30323), (41, 31939, 32004), (41, 33620, 33685), (43, 18490, 18555), (43, 20339, 20404), (43, 22188, 22253), (43, 24037, 24102), (43, 25886, 25951), (43, 27735, 27800), (43, 29584, 29649), (43, 31433, 31498), (43, 33282, 33347), (47, 17672, 17737), (47, 19881, 19946), (47, 22090, 22155), (47, 24299, 24364)]

def row066_layer002_block005 : List ColouredInterval :=
  [(47, 26508, 26573), (47, 28717, 28782), (47, 30926, 30991), (47, 33135, 33200), (53, 19663, 19728), (53, 22472, 22537), (53, 25281, 25346), (53, 28090, 28155), (53, 30899, 30964), (53, 33708, 33773), (59, 17405, 17470), (59, 20886, 20951), (59, 24367, 24432), (59, 27848, 27913), (59, 31329, 31394), (61, 18605, 18670)]

def row066_layer002_block006 : List ColouredInterval :=
  [(61, 22326, 22391), (61, 26047, 26112), (61, 29768, 29833), (61, 33489, 33554)]

def row066_layer002_chunks : List (List ColouredInterval) :=
  [row066_layer002_block000, row066_layer002_block001, row066_layer002_block002, row066_layer002_block003, row066_layer002_block004, row066_layer002_block005, row066_layer002_block006]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row066_layer002_intervals

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row066_layer002_arithmetic : LayerArithmeticValid row066.height { lower := 17160, upper := 34320, M := 20 } := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row066_layer002_arithmetic

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row066_layer002_enumeration :
    activePowerIntervalList 66 20 17160 34320 = row066_layer002_intervals := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row066_layer002_enumeration

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row066_layer002_pairs000 :
    row066_layer002_block000.all (fun I => row066_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row066_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row066_layer002_pairs000

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row066_layer002_pairs001 :
    row066_layer002_block001.all (fun I => row066_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row066_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row066_layer002_pairs001

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row066_layer002_pairs002 :
    row066_layer002_block002.all (fun I => row066_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row066_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row066_layer002_pairs002

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row066_layer002_pairs003 :
    row066_layer002_block003.all (fun I => row066_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row066_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row066_layer002_pairs003

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row066_layer002_pairs004 :
    row066_layer002_block004.all (fun I => row066_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row066_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row066_layer002_pairs004

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row066_layer002_pairs005 :
    row066_layer002_block005.all (fun I => row066_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row066_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row066_layer002_pairs005

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row066_layer002_pairs006 :
    row066_layer002_block006.all (fun I => row066_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row066_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row066_layer002_pairs006

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row066_layer002_chunks_eq : row066_layer002_chunks.flatten = row066_layer002_intervals := by
  rfl

theorem row066_layer002_pairs : pairCoverCheck row066_layer002_intervals row066_bounds = true := by
  apply pairCoverCheck_of_chunks row066_layer002_chunks_eq
  intro block hblock
  simp only [row066_layer002_chunks, List.mem_cons, List.mem_nil_iff, or_false] at hblock
  rcases hblock with rfl | rfl | rfl | rfl | rfl | rfl | rfl
  · exact row066_layer002_pairs000
  · exact row066_layer002_pairs001
  · exact row066_layer002_pairs002
  · exact row066_layer002_pairs003
  · exact row066_layer002_pairs004
  · exact row066_layer002_pairs005
  · exact row066_layer002_pairs006

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row066_layer002_chunks_eq
#print axioms B699LowIndex.LowIndexLean513dc7cc.row066_layer002_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row066_layer002_checked :
    coverLayerCheck row066.height row066.goods { lower := 17160, upper := 34320, M := 20 } = true := by
  exact coverLayerCheck_of_parts row066_layer002_arithmetic row066_layer002_enumeration row066_bounds_eq row066_layer002_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row066_layer002_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row066_layer003_intervals : List ColouredInterval :=
  [(2, 36864, 36929), (2, 40960, 41025), (2, 49152, 49217), (2, 57344, 57409), (2, 65536, 65601), (2, 49152, 49217), (2, 65536, 65601), (2, 65536, 65601), (2, 65536, 65601), (3, 39366, 39431), (3, 39366, 39431), (3, 59049, 59114), (3, 59049, 59114), (5, 34375, 34440), (5, 37500, 37565), (5, 40625, 40690), (5, 43750, 43815), (5, 46875, 46940), (5, 50000, 50065), (5, 53125, 53190), (5, 56250, 56315), (5, 46875, 46940), (5, 62500, 62565), (7, 36015, 36080), (7, 38416, 38481), (7, 40817, 40882), (7, 43218, 43283), (7, 50421, 50486), (7, 67228, 67293), (13, 35152, 35217), (13, 37349, 37414), (13, 39546, 39611), (13, 57122, 57187), (17, 34391, 34456), (17, 39304, 39369), (17, 44217, 44282), (17, 49130, 49195), (17, 54043, 54108), (17, 58956, 59021), (17, 63869, 63934), (19, 34320, 34360), (19, 41154, 41219), (19, 48013, 48078), (19, 54872, 54937), (19, 61731, 61796), (19, 68590, 68639), (23, 36501, 36566), (23, 48668, 48733), (23, 60835, 60900), (29, 48778, 48843), (31, 59582, 59647), (37, 50653, 50718), (47, 35344, 35409), (47, 37553, 37618), (47, 39762, 39827), (53, 36517, 36582), (53, 39326, 39391), (53, 42135, 42200), (53, 44944, 45009), (53, 47753, 47818), (53, 50562, 50627), (59, 34810, 34875), (59, 38291, 38356), (59, 41772, 41837), (59, 45253, 45318), (59, 48734, 48799), (59, 52215, 52280), (59, 55696, 55761), (59, 59177, 59242), (59, 62658, 62723), (61, 37210, 37275), (61, 40931, 40996), (61, 44652, 44717), (61, 48373, 48438), (61, 52094, 52159), (61, 55815, 55880), (61, 59536, 59601), (61, 63257, 63322), (61, 66978, 67043)]

def row066_layer003_block000 : List ColouredInterval :=
  [(2, 36864, 36929), (2, 40960, 41025), (2, 49152, 49217), (2, 57344, 57409), (2, 65536, 65601), (2, 49152, 49217), (2, 65536, 65601), (2, 65536, 65601), (2, 65536, 65601), (3, 39366, 39431), (3, 39366, 39431), (3, 59049, 59114), (3, 59049, 59114), (5, 34375, 34440), (5, 37500, 37565), (5, 40625, 40690)]

def row066_layer003_block001 : List ColouredInterval :=
  [(5, 43750, 43815), (5, 46875, 46940), (5, 50000, 50065), (5, 53125, 53190), (5, 56250, 56315), (5, 46875, 46940), (5, 62500, 62565), (7, 36015, 36080), (7, 38416, 38481), (7, 40817, 40882), (7, 43218, 43283), (7, 50421, 50486), (7, 67228, 67293), (13, 35152, 35217), (13, 37349, 37414), (13, 39546, 39611)]

def row066_layer003_block002 : List ColouredInterval :=
  [(13, 57122, 57187), (17, 34391, 34456), (17, 39304, 39369), (17, 44217, 44282), (17, 49130, 49195), (17, 54043, 54108), (17, 58956, 59021), (17, 63869, 63934), (19, 34320, 34360), (19, 41154, 41219), (19, 48013, 48078), (19, 54872, 54937), (19, 61731, 61796), (19, 68590, 68639), (23, 36501, 36566), (23, 48668, 48733)]

def row066_layer003_block003 : List ColouredInterval :=
  [(23, 60835, 60900), (29, 48778, 48843), (31, 59582, 59647), (37, 50653, 50718), (47, 35344, 35409), (47, 37553, 37618), (47, 39762, 39827), (53, 36517, 36582), (53, 39326, 39391), (53, 42135, 42200), (53, 44944, 45009), (53, 47753, 47818), (53, 50562, 50627), (59, 34810, 34875), (59, 38291, 38356), (59, 41772, 41837)]

def row066_layer003_block004 : List ColouredInterval :=
  [(59, 45253, 45318), (59, 48734, 48799), (59, 52215, 52280), (59, 55696, 55761), (59, 59177, 59242), (59, 62658, 62723), (61, 37210, 37275), (61, 40931, 40996), (61, 44652, 44717), (61, 48373, 48438), (61, 52094, 52159), (61, 55815, 55880), (61, 59536, 59601), (61, 63257, 63322), (61, 66978, 67043)]

def row066_layer003_chunks : List (List ColouredInterval) :=
  [row066_layer003_block000, row066_layer003_block001, row066_layer003_block002, row066_layer003_block003, row066_layer003_block004]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row066_layer003_intervals

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row066_layer003_arithmetic : LayerArithmeticValid row066.height { lower := 34320, upper := 68640, M := 18 } := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row066_layer003_arithmetic

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row066_layer003_enumeration :
    activePowerIntervalList 66 18 34320 68640 = row066_layer003_intervals := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row066_layer003_enumeration

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row066_layer003_pairs000 :
    row066_layer003_block000.all (fun I => row066_layer003_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row066_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row066_layer003_pairs000

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row066_layer003_pairs001 :
    row066_layer003_block001.all (fun I => row066_layer003_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row066_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row066_layer003_pairs001

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row066_layer003_pairs002 :
    row066_layer003_block002.all (fun I => row066_layer003_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row066_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row066_layer003_pairs002

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row066_layer003_pairs003 :
    row066_layer003_block003.all (fun I => row066_layer003_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row066_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row066_layer003_pairs003

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row066_layer003_pairs004 :
    row066_layer003_block004.all (fun I => row066_layer003_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row066_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row066_layer003_pairs004

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row066_layer003_chunks_eq : row066_layer003_chunks.flatten = row066_layer003_intervals := by
  rfl

theorem row066_layer003_pairs : pairCoverCheck row066_layer003_intervals row066_bounds = true := by
  apply pairCoverCheck_of_chunks row066_layer003_chunks_eq
  intro block hblock
  simp only [row066_layer003_chunks, List.mem_cons, List.mem_nil_iff, or_false] at hblock
  rcases hblock with rfl | rfl | rfl | rfl | rfl
  · exact row066_layer003_pairs000
  · exact row066_layer003_pairs001
  · exact row066_layer003_pairs002
  · exact row066_layer003_pairs003
  · exact row066_layer003_pairs004

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row066_layer003_chunks_eq
#print axioms B699LowIndex.LowIndexLean513dc7cc.row066_layer003_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row066_layer003_checked :
    coverLayerCheck row066.height row066.goods { lower := 34320, upper := 68640, M := 18 } = true := by
  exact coverLayerCheck_of_parts row066_layer003_arithmetic row066_layer003_enumeration row066_bounds_eq row066_layer003_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row066_layer003_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row066_layer000_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row066_layer001_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row066_layer002_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row066_layer003_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row066_layer004_checked :
    coverLayerCheck row066.height row066.goods { lower := 68640, upper := 137280, M := 15 } = true := by
  decide +kernel

theorem row066_layer005_checked :
    coverLayerCheck row066.height row066.goods { lower := 137280, upper := 274560, M := 13 } = true := by
  decide +kernel

theorem row066_layer006_checked :
    coverLayerCheck row066.height row066.goods { lower := 274560, upper := 549120, M := 11 } = true := by
  decide +kernel

theorem row066_layer007_checked :
    coverLayerCheck row066.height row066.goods { lower := 549120, upper := 1098240, M := 10 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row066_layer004_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row066_layer005_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row066_layer006_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row066_layer007_checked

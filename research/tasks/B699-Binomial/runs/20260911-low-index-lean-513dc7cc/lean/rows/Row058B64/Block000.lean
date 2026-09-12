import research.tasks.«B699-Binomial».runs.«20260909-low-index-structure-b41a5a63».lean.FiniteCover
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.WitnessBridge
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.LayerParts
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.PairChunks

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row058_height : HeightCertificateDatum := { i := 58, r := 19, s := 40, n0Power10 := 11 }

def row058_goods : List GoodSegment := [
  { lower := 118, upper := 170, witness := RowWitness.topPrime 113 },
  { lower := 171, upper := 224, witness := RowWitness.topPrime 167 },
  { lower := 225, upper := 280, witness := RowWitness.topPrime 223 },
  { lower := 281, upper := 338, witness := RowWitness.topPrime 281 },
  { lower := 339, upper := 394, witness := RowWitness.topPrime 337 },
  { lower := 395, upper := 446, witness := RowWitness.topPrime 389 },
  { lower := 447, upper := 500, witness := RowWitness.topPrime 443 },
  { lower := 501, upper := 556, witness := RowWitness.topPrime 499 },
  { lower := 557, upper := 614, witness := RowWitness.topPrime 557 },
  { lower := 615, upper := 670, witness := RowWitness.topPrime 613 },
  { lower := 671, upper := 718, witness := RowWitness.topPrime 661 },
  { lower := 719, upper := 776, witness := RowWitness.topPrime 719 },
  { lower := 777, upper := 830, witness := RowWitness.topPrime 773 },
  { lower := 831, upper := 886, witness := RowWitness.topPrime 829 },
  { lower := 887, upper := 944, witness := RowWitness.topPrime 887 },
  { lower := 945, upper := 998, witness := RowWitness.topPrime 941 },
  { lower := 999, upper := 1054, witness := RowWitness.topPrime 997 },
  { lower := 1055, upper := 1108, witness := RowWitness.topPrime 1051 },
  { lower := 1109, upper := 1166, witness := RowWitness.topPrime 1109 },
  { lower := 1167, upper := 1220, witness := RowWitness.topPrime 1163 },
  { lower := 1221, upper := 1274, witness := RowWitness.topPrime 1217 },
  { lower := 1275, upper := 1316, witness := RowWitness.topPrime 1259 },
  { lower := 1317, upper := 1364, witness := RowWitness.topPrime 1307 },
  { lower := 1365, upper := 1418, witness := RowWitness.topPrime 1361 },
  { lower := 1419, upper := 1466, witness := RowWitness.topPrime 1409 },
  { lower := 1467, upper := 1516, witness := RowWitness.topPrime 1459 },
  { lower := 1517, upper := 1568, witness := RowWitness.topPrime 1511 },
  { lower := 1569, upper := 1624, witness := RowWitness.topPrime 1567 },
  { lower := 1625, upper := 1678, witness := RowWitness.topPrime 1621 },
  { lower := 1679, upper := 1726, witness := RowWitness.topPrime 1669 },
  { lower := 1727, upper := 1780, witness := RowWitness.topPrime 1723 },
  { lower := 1781, upper := 1834, witness := RowWitness.topPrime 1777 },
  { lower := 1835, upper := 1888, witness := RowWitness.topPrime 1831 },
  { lower := 1889, upper := 1946, witness := RowWitness.topPrime 1889 },
  { lower := 1947, upper := 1990, witness := RowWitness.topPrime 1933 },
  { lower := 1991, upper := 2044, witness := RowWitness.topPrime 1987 },
  { lower := 2045, upper := 2096, witness := RowWitness.topPrime 2039 },
  { lower := 2097, upper := 2146, witness := RowWitness.topPrime 2089 },
  { lower := 2147, upper := 2200, witness := RowWitness.topPrime 2143 },
  { lower := 2201, upper := 2236, witness := RowWitness.topPrime 2179 },
  { lower := 2237, upper := 2294, witness := RowWitness.topPrime 2237 },
  { lower := 2295, upper := 2350, witness := RowWitness.topPrime 2293 },
  { lower := 2351, upper := 2408, witness := RowWitness.topPrime 2351 },
  { lower := 2409, upper := 2456, witness := RowWitness.topPrime 2399 },
  { lower := 2457, upper := 2504, witness := RowWitness.topPrime 2447 },
  { lower := 2505, upper := 2560, witness := RowWitness.topPrime 2503 },
  { lower := 2561, upper := 2614, witness := RowWitness.topPrime 2557 },
  { lower := 2615, upper := 2666, witness := RowWitness.topPrime 2609 },
  { lower := 2667, upper := 2720, witness := RowWitness.topPrime 2663 },
  { lower := 2721, upper := 2776, witness := RowWitness.topPrime 2719 },
  { lower := 2777, upper := 2834, witness := RowWitness.topPrime 2777 },
  { lower := 2835, upper := 2890, witness := RowWitness.topPrime 2833 },
  { lower := 2891, upper := 2944, witness := RowWitness.topPrime 2887 },
  { lower := 2945, upper := 2996, witness := RowWitness.topPrime 2939 },
  { lower := 2997, upper := 3028, witness := RowWitness.topPrime 2971 },
  { lower := 3029, upper := 3080, witness := RowWitness.topPrime 3023 },
  { lower := 3081, upper := 3136, witness := RowWitness.topPrime 3079 },
  { lower := 3137, upper := 3194, witness := RowWitness.topPrime 3137 },
  { lower := 3195, upper := 3248, witness := RowWitness.topPrime 3191 },
  { lower := 3249, upper := 3286, witness := RowWitness.topPrime 3229 },
  { lower := 3287, upper := 3306, witness := RowWitness.topPrime 3271 },
  { lower := 3362, upper := 3418, witness := RowWitness.topPrime 3361 },
  { lower := 3419, upper := 3459, witness := RowWitness.topPrime 3413 },
  { lower := 3468, upper := 3487, witness := RowWitness.topPrime 3467 },
  { lower := 3584, upper := 3606, witness := RowWitness.topPrime 3583 },
  { lower := 3610, upper := 3641, witness := RowWitness.topPrime 3607 },
  { lower := 3645, upper := 3667, witness := RowWitness.topPrime 3643 },
  { lower := 3698, upper := 3754, witness := RowWitness.topPrime 3697 },
  { lower := 3755, upper := 3796, witness := RowWitness.topPrime 3739 },
  { lower := 3797, upper := 3814, witness := RowWitness.topPrime 3797 },
  { lower := 3887, upper := 3938, witness := RowWitness.topPrime 3881 },
  { lower := 3939, upper := 3944, witness := RowWitness.topPrime 3931 },
  { lower := 3993, upper := 4028, witness := RowWitness.topPrime 3989 },
  { lower := 4046, upper := 4050, witness := RowWitness.topPrime 4027 },
  { lower := 4056, upper := 4108, witness := RowWitness.topPrime 4051 },
  { lower := 4109, upper := 4156, witness := RowWitness.topPrime 4099 },
  { lower := 4157, upper := 4173, witness := RowWitness.topPrime 4157 },
  { lower := 4232, upper := 4282, witness := RowWitness.topPrime 4231 },
  { lower := 4335, upper := 4384, witness := RowWitness.topPrime 4327 },
  { lower := 4385, upper := 4430, witness := RowWitness.topPrime 4373 },
  { lower := 4431, upper := 4451, witness := RowWitness.topPrime 4423 },
  { lower := 4459, upper := 4475, witness := RowWitness.topPrime 4457 },
  { lower := 4617, upper := 4660, witness := RowWitness.topPrime 4603 },
  { lower := 4661, upper := 4674, witness := RowWitness.topPrime 4657 },
  { lower := 4802, upper := 4858, witness := RowWitness.topPrime 4801 },
  { lower := 4859, upper := 4862, witness := RowWitness.topPrime 4831 },
  { lower := 4913, upper := 4917, witness := RowWitness.topPrime 4909 },
  { lower := 5043, upper := 5096, witness := RowWitness.topPrime 5039 },
  { lower := 5097, upper := 5100, witness := RowWitness.topPrime 5087 },
  { lower := 5103, upper := 5111, witness := RowWitness.topPrime 5101 },
  { lower := 5120, upper := 5176, witness := RowWitness.topPrime 5119 },
  { lower := 5177, upper := 5177, witness := RowWitness.topPrime 5171 },
  { lower := 5202, upper := 5202, witness := RowWitness.topPrime 5197 },
  { lower := 5324, upper := 5380, witness := RowWitness.topPrime 5323 },
  { lower := 5381, upper := 5381, witness := RowWitness.topPrime 5381 },
  { lower := 5488, upper := 5540, witness := RowWitness.topPrime 5483 },
  { lower := 5541, upper := 5545, witness := RowWitness.topPrime 5531 },
  { lower := 5547, upper := 5548, witness := RowWitness.topPrime 5531 },
  { lower := 5589, upper := 5604, witness := RowWitness.topPrime 5581 },
  { lower := 5618, upper := 5648, witness := RowWitness.topPrime 5591 },
  { lower := 5649, upper := 5682, witness := RowWitness.topPrime 5647 },
  { lower := 5776, upper := 5806, witness := RowWitness.topPrime 5749 },
  { lower := 5807, upper := 5864, witness := RowWitness.topPrime 5807 },
  { lower := 5865, upper := 5888, witness := RowWitness.topPrime 5861 },
  { lower := 6075, upper := 6126, witness := RowWitness.topPrime 6073 },
  { lower := 6144, upper := 6200, witness := RowWitness.topPrime 6143 },
  { lower := 6201, upper := 6201, witness := RowWitness.topPrime 6199 },
  { lower := 6348, upper := 6400, witness := RowWitness.topPrime 6343 },
  { lower := 6401, upper := 6405, witness := RowWitness.topPrime 6397 },
  { lower := 6517, upper := 6548, witness := RowWitness.topPrime 6491 },
  { lower := 6549, upper := 6555, witness := RowWitness.topPrime 6547 },
  { lower := 6561, upper := 6574, witness := RowWitness.topPrime 6553 },
  { lower := 6591, upper := 6618, witness := RowWitness.topPrime 6581 },
  { lower := 6627, upper := 6676, witness := RowWitness.topPrime 6619 },
  { lower := 6677, upper := 6704, witness := RowWitness.topPrime 6673 },
  { lower := 6727, upper := 6776, witness := RowWitness.topPrime 6719 },
  { lower := 6777, upper := 6781, witness := RowWitness.topPrime 6763 },
  { lower := 6859, upper := 6914, witness := RowWitness.topPrime 6857 },
  { lower := 6915, upper := 6932, witness := RowWitness.topPrime 6911 },
  { lower := 7203, upper := 7250, witness := RowWitness.topPrime 7193 },
  { lower := 7251, upper := 7260, witness := RowWitness.topPrime 7247 },
  { lower := 7406, upper := 7450, witness := RowWitness.topPrime 7393 },
  { lower := 7451, upper := 7453, witness := RowWitness.topPrime 7451 },
  { lower := 7546, upper := 7557, witness := RowWitness.topPrime 7541 },
  { lower := 7581, upper := 7603, witness := RowWitness.topPrime 7577 },
  { lower := 7935, upper := 7990, witness := RowWitness.topPrime 7933 },
  { lower := 7991, upper := 7999, witness := RowWitness.topPrime 7963 },
  { lower := 8019, upper := 8043, witness := RowWitness.topPrime 8017 },
  { lower := 8214, upper := 8249, witness := RowWitness.topPrime 8209 },
  { lower := 8427, upper := 8462, witness := RowWitness.topPrime 8423 },
  { lower := 8464, upper := 8484, witness := RowWitness.topPrime 8461 },
  { lower := 8750, upper := 8804, witness := RowWitness.topPrime 8747 },
  { lower := 8805, upper := 8807, witness := RowWitness.topPrime 8803 },
  { lower := 8836, upper := 8845, witness := RowWitness.topPrime 8831 },
  { lower := 9245, upper := 9273, witness := RowWitness.topPrime 9241 },
  { lower := 9522, upper := 9534, witness := RowWitness.topPrime 9521 },
  { lower := 9604, upper := 9658, witness := RowWitness.topPrime 9601 },
  { lower := 9659, upper := 9661, witness := RowWitness.topPrime 9649 },
  { lower := 10051, upper := 10057, witness := RowWitness.topPrime 10039 },
  { lower := 10086, upper := 10108, witness := RowWitness.topPrime 10079 },
  { lower := 10240, upper := 10263, witness := RowWitness.topPrime 10223 },
  { lower := 10580, upper := 10624, witness := RowWitness.topPrime 10567 },
  { lower := 10625, upper := 10637, witness := RowWitness.topPrime 10613 },
  { lower := 10648, upper := 10682, witness := RowWitness.topPrime 10639 },
  { lower := 10952, upper := 11006, witness := RowWitness.topPrime 10949 },
  { lower := 11007, upper := 11009, witness := RowWitness.topPrime 11003 },
  { lower := 11094, upper := 11102, witness := RowWitness.topPrime 11093 },
  { lower := 11109, upper := 11150, witness := RowWitness.topPrime 11093 },
  { lower := 11151, upper := 11151, witness := RowWitness.topPrime 11149 },
  { lower := 11250, upper := 11300, witness := RowWitness.topPrime 11243 },
  { lower := 11301, upper := 11307, witness := RowWitness.topPrime 11299 },
  { lower := 11664, upper := 11695, witness := RowWitness.topPrime 11657 },
  { lower := 12005, upper := 12036, witness := RowWitness.topPrime 11987 },
  { lower := 12321, upper := 12345, witness := RowWitness.topPrime 12301 },
  { lower := 12500, upper := 12550, witness := RowWitness.topPrime 12497 },
  { lower := 13125, upper := 13178, witness := RowWitness.topPrime 13121 },
  { lower := 13179, upper := 13179, witness := RowWitness.topPrime 13177 },
  { lower := 13182, upper := 13182, witness := RowWitness.topPrime 13177 },
  { lower := 13310, upper := 13311, witness := RowWitness.topPrime 13309 },
  { lower := 13454, upper := 13505, witness := RowWitness.topPrime 13451 },
  { lower := 13718, upper := 13747, witness := RowWitness.topPrime 13711 },
  { lower := 14415, upper := 14463, witness := RowWitness.topPrime 14411 },
  { lower := 14792, upper := 14796, witness := RowWitness.topPrime 14783 },
  { lower := 15379, upper := 15433, witness := RowWitness.topPrime 15377 },
  { lower := 16384, upper := 16394, witness := RowWitness.topPrime 16381 },
  { lower := 16428, upper := 16441, witness := RowWitness.topPrime 16427 },
  { lower := 16810, upper := 16844, witness := RowWitness.topPrime 16787 },
  { lower := 16845, upper := 16867, witness := RowWitness.topPrime 16843 },
  { lower := 17303, upper := 17355, witness := RowWitness.topPrime 17299 },
  { lower := 18491, upper := 18538, witness := RowWitness.topPrime 18481 },
  { lower := 18539, upper := 18547, witness := RowWitness.topPrime 18539 },
  { lower := 19208, upper := 19264, witness := RowWitness.topPrime 19207 },
  { lower := 19265, upper := 19265, witness := RowWitness.topPrime 19259 },
  { lower := 19663, upper := 19718, witness := RowWitness.topPrime 19661 },
  { lower := 19719, upper := 19720, witness := RowWitness.topPrime 19717 },
  { lower := 20535, upper := 20537, witness := RowWitness.topPrime 20533 },
  { lower := 20577, upper := 20592, witness := RowWitness.topPrime 20563 },
  { lower := 21870, upper := 21920, witness := RowWitness.topPrime 21863 },
  { lower := 21921, upper := 21932, witness := RowWitness.topPrime 21911 },
  { lower := 24010, upper := 24015, witness := RowWitness.topPrime 24007 },
  { lower := 24037, upper := 24086, witness := RowWitness.topPrime 24029 },
  { lower := 24087, upper := 24094, witness := RowWitness.topPrime 24083 },
  { lower := 24334, upper := 24356, witness := RowWitness.topPrime 24329 },
  { lower := 24576, upper := 24622, witness := RowWitness.topPrime 24571 },
  { lower := 25289, upper := 25318, witness := RowWitness.topPrime 25261 },
  { lower := 25319, upper := 25338, witness := RowWitness.topPrime 25309 },
  { lower := 26411, upper := 26421, witness := RowWitness.topPrime 26407 },
  { lower := 28125, upper := 28147, witness := RowWitness.topPrime 28123 },
  { lower := 28577, upper := 28618, witness := RowWitness.topPrime 28573 },
  { lower := 28717, upper := 28729, witness := RowWitness.topPrime 28711 },
  { lower := 30926, upper := 30956, witness := RowWitness.topPrime 30911 },
  { lower := 31250, upper := 31270, witness := RowWitness.topPrime 31249 },
  { lower := 32805, upper := 32825, witness := RowWitness.topPrime 32803 },
  { lower := 34391, upper := 34432, witness := RowWitness.topPrime 34381 },
  { lower := 36517, upper := 36554, witness := RowWitness.topPrime 36497 },
  { lower := 36555, upper := 36558, witness := RowWitness.topPrime 36551 },
  { lower := 37553, upper := 37557, witness := RowWitness.topPrime 37549 },
  { lower := 39326, upper := 39361, witness := RowWitness.topPrime 39323 },
  { lower := 39366, upper := 39383, witness := RowWitness.topPrime 39359 },
  { lower := 49152, upper := 49187, witness := RowWitness.topPrime 49139 },
  { lower := 327701, upper := 327737, witness := RowWitness.topPrime 327689 }
]

def row058_layers : List CoverLayer := [
  { lower := 3306, upper := 6612, M := 26 },
  { lower := 6612, upper := 13224, M := 23 },
  { lower := 13224, upper := 26448, M := 20 },
  { lower := 26448, upper := 52896, M := 18 },
  { lower := 52896, upper := 105792, M := 15 },
  { lower := 105792, upper := 211584, M := 13 },
  { lower := 211584, upper := 423168, M := 12 },
  { lower := 423168, upper := 846336, M := 10 },
  { lower := 846336, upper := 1692672, M := 9 },
  { lower := 1692672, upper := 3385344, M := 8 },
  { lower := 3385344, upper := 6770688, M := 7 },
  { lower := 6770688, upper := 13541376, M := 6 },
  { lower := 13541376, upper := 27082752, M := 5 },
  { lower := 27082752, upper := 54165504, M := 5 },
  { lower := 54165504, upper := 108331008, M := 4 },
  { lower := 108331008, upper := 216662016, M := 4 },
  { lower := 216662016, upper := 433324032, M := 3 },
  { lower := 433324032, upper := 866648064, M := 3 },
  { lower := 866648064, upper := 1733296128, M := 3 },
  { lower := 1733296128, upper := 3466592256, M := 2 },
  { lower := 3466592256, upper := 6933184512, M := 2 },
  { lower := 6933184512, upper := 13866369024, M := 2 },
  { lower := 13866369024, upper := 27732738048, M := 2 },
  { lower := 27732738048, upper := 55465476096, M := 2 },
  { lower := 55465476096, upper := 100000000000, M := 1 }
]

def row058 : FiniteCoverRow := {
  height := row058_height,
  goods := row058_goods,
  layers := row058_layers
}


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row058

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row058_good000_checked :
    goodSegmentCheck 58 19 40
      { lower := 118, upper := 170, witness := RowWitness.topPrime 113 } = true := by
  exact good_top_prime_checked (i := 58) (r := 19) (s := 40) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row058_good001_checked :
    goodSegmentCheck 58 19 40
      { lower := 171, upper := 224, witness := RowWitness.topPrime 167 } = true := by
  exact good_top_prime_checked (i := 58) (r := 19) (s := 40) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row058_good002_checked :
    goodSegmentCheck 58 19 40
      { lower := 225, upper := 280, witness := RowWitness.topPrime 223 } = true := by
  exact good_top_prime_checked (i := 58) (r := 19) (s := 40) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row058_good003_checked :
    goodSegmentCheck 58 19 40
      { lower := 281, upper := 338, witness := RowWitness.topPrime 281 } = true := by
  exact good_top_prime_checked (i := 58) (r := 19) (s := 40) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row058_good004_checked :
    goodSegmentCheck 58 19 40
      { lower := 339, upper := 394, witness := RowWitness.topPrime 337 } = true := by
  exact good_top_prime_checked (i := 58) (r := 19) (s := 40) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row058_good005_checked :
    goodSegmentCheck 58 19 40
      { lower := 395, upper := 446, witness := RowWitness.topPrime 389 } = true := by
  exact good_top_prime_checked (i := 58) (r := 19) (s := 40) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row058_good006_checked :
    goodSegmentCheck 58 19 40
      { lower := 447, upper := 500, witness := RowWitness.topPrime 443 } = true := by
  exact good_top_prime_checked (i := 58) (r := 19) (s := 40) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row058_good007_checked :
    goodSegmentCheck 58 19 40
      { lower := 501, upper := 556, witness := RowWitness.topPrime 499 } = true := by
  exact good_top_prime_checked (i := 58) (r := 19) (s := 40) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row058_good008_checked :
    goodSegmentCheck 58 19 40
      { lower := 557, upper := 614, witness := RowWitness.topPrime 557 } = true := by
  exact good_top_prime_checked (i := 58) (r := 19) (s := 40) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row058_good009_checked :
    goodSegmentCheck 58 19 40
      { lower := 615, upper := 670, witness := RowWitness.topPrime 613 } = true := by
  exact good_top_prime_checked (i := 58) (r := 19) (s := 40) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row058_good010_checked :
    goodSegmentCheck 58 19 40
      { lower := 671, upper := 718, witness := RowWitness.topPrime 661 } = true := by
  exact good_top_prime_checked (i := 58) (r := 19) (s := 40) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row058_good011_checked :
    goodSegmentCheck 58 19 40
      { lower := 719, upper := 776, witness := RowWitness.topPrime 719 } = true := by
  exact good_top_prime_checked (i := 58) (r := 19) (s := 40) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row058_good012_checked :
    goodSegmentCheck 58 19 40
      { lower := 777, upper := 830, witness := RowWitness.topPrime 773 } = true := by
  exact good_top_prime_checked (i := 58) (r := 19) (s := 40) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row058_good013_checked :
    goodSegmentCheck 58 19 40
      { lower := 831, upper := 886, witness := RowWitness.topPrime 829 } = true := by
  exact good_top_prime_checked (i := 58) (r := 19) (s := 40) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row058_good014_checked :
    goodSegmentCheck 58 19 40
      { lower := 887, upper := 944, witness := RowWitness.topPrime 887 } = true := by
  exact good_top_prime_checked (i := 58) (r := 19) (s := 40) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row058_good015_checked :
    goodSegmentCheck 58 19 40
      { lower := 945, upper := 998, witness := RowWitness.topPrime 941 } = true := by
  exact good_top_prime_checked (i := 58) (r := 19) (s := 40) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row058_good000_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row058_good001_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row058_good002_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row058_good003_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row058_good004_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row058_good005_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row058_good006_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row058_good007_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row058_good008_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row058_good009_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row058_good010_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row058_good011_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row058_good012_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row058_good013_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row058_good014_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row058_good015_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row058_good016_checked :
    goodSegmentCheck 58 19 40
      { lower := 999, upper := 1054, witness := RowWitness.topPrime 997 } = true := by
  exact good_top_prime_checked (i := 58) (r := 19) (s := 40) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row058_good017_checked :
    goodSegmentCheck 58 19 40
      { lower := 1055, upper := 1108, witness := RowWitness.topPrime 1051 } = true := by
  exact good_top_prime_checked (i := 58) (r := 19) (s := 40) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row058_good018_checked :
    goodSegmentCheck 58 19 40
      { lower := 1109, upper := 1166, witness := RowWitness.topPrime 1109 } = true := by
  exact good_top_prime_checked (i := 58) (r := 19) (s := 40) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row058_good019_checked :
    goodSegmentCheck 58 19 40
      { lower := 1167, upper := 1220, witness := RowWitness.topPrime 1163 } = true := by
  exact good_top_prime_checked (i := 58) (r := 19) (s := 40) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row058_good020_checked :
    goodSegmentCheck 58 19 40
      { lower := 1221, upper := 1274, witness := RowWitness.topPrime 1217 } = true := by
  exact good_top_prime_checked (i := 58) (r := 19) (s := 40) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row058_good021_checked :
    goodSegmentCheck 58 19 40
      { lower := 1275, upper := 1316, witness := RowWitness.topPrime 1259 } = true := by
  exact good_top_prime_checked (i := 58) (r := 19) (s := 40) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row058_good022_checked :
    goodSegmentCheck 58 19 40
      { lower := 1317, upper := 1364, witness := RowWitness.topPrime 1307 } = true := by
  exact good_top_prime_checked (i := 58) (r := 19) (s := 40) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row058_good023_checked :
    goodSegmentCheck 58 19 40
      { lower := 1365, upper := 1418, witness := RowWitness.topPrime 1361 } = true := by
  exact good_top_prime_checked (i := 58) (r := 19) (s := 40) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row058_good024_checked :
    goodSegmentCheck 58 19 40
      { lower := 1419, upper := 1466, witness := RowWitness.topPrime 1409 } = true := by
  exact good_top_prime_checked (i := 58) (r := 19) (s := 40) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row058_good025_checked :
    goodSegmentCheck 58 19 40
      { lower := 1467, upper := 1516, witness := RowWitness.topPrime 1459 } = true := by
  exact good_top_prime_checked (i := 58) (r := 19) (s := 40) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row058_good026_checked :
    goodSegmentCheck 58 19 40
      { lower := 1517, upper := 1568, witness := RowWitness.topPrime 1511 } = true := by
  exact good_top_prime_checked (i := 58) (r := 19) (s := 40) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row058_good027_checked :
    goodSegmentCheck 58 19 40
      { lower := 1569, upper := 1624, witness := RowWitness.topPrime 1567 } = true := by
  exact good_top_prime_checked (i := 58) (r := 19) (s := 40) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row058_good028_checked :
    goodSegmentCheck 58 19 40
      { lower := 1625, upper := 1678, witness := RowWitness.topPrime 1621 } = true := by
  exact good_top_prime_checked (i := 58) (r := 19) (s := 40) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row058_good029_checked :
    goodSegmentCheck 58 19 40
      { lower := 1679, upper := 1726, witness := RowWitness.topPrime 1669 } = true := by
  exact good_top_prime_checked (i := 58) (r := 19) (s := 40) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row058_good030_checked :
    goodSegmentCheck 58 19 40
      { lower := 1727, upper := 1780, witness := RowWitness.topPrime 1723 } = true := by
  exact good_top_prime_checked (i := 58) (r := 19) (s := 40) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row058_good031_checked :
    goodSegmentCheck 58 19 40
      { lower := 1781, upper := 1834, witness := RowWitness.topPrime 1777 } = true := by
  exact good_top_prime_checked (i := 58) (r := 19) (s := 40) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row058_good016_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row058_good017_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row058_good018_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row058_good019_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row058_good020_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row058_good021_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row058_good022_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row058_good023_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row058_good024_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row058_good025_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row058_good026_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row058_good027_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row058_good028_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row058_good029_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row058_good030_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row058_good031_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row058_good032_checked :
    goodSegmentCheck 58 19 40
      { lower := 1835, upper := 1888, witness := RowWitness.topPrime 1831 } = true := by
  exact good_top_prime_checked (i := 58) (r := 19) (s := 40) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row058_good033_checked :
    goodSegmentCheck 58 19 40
      { lower := 1889, upper := 1946, witness := RowWitness.topPrime 1889 } = true := by
  exact good_top_prime_checked (i := 58) (r := 19) (s := 40) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row058_good034_checked :
    goodSegmentCheck 58 19 40
      { lower := 1947, upper := 1990, witness := RowWitness.topPrime 1933 } = true := by
  exact good_top_prime_checked (i := 58) (r := 19) (s := 40) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row058_good035_checked :
    goodSegmentCheck 58 19 40
      { lower := 1991, upper := 2044, witness := RowWitness.topPrime 1987 } = true := by
  exact good_top_prime_checked (i := 58) (r := 19) (s := 40) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row058_good036_checked :
    goodSegmentCheck 58 19 40
      { lower := 2045, upper := 2096, witness := RowWitness.topPrime 2039 } = true := by
  exact good_top_prime_checked (i := 58) (r := 19) (s := 40) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row058_good037_checked :
    goodSegmentCheck 58 19 40
      { lower := 2097, upper := 2146, witness := RowWitness.topPrime 2089 } = true := by
  exact good_top_prime_checked (i := 58) (r := 19) (s := 40) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row058_good038_checked :
    goodSegmentCheck 58 19 40
      { lower := 2147, upper := 2200, witness := RowWitness.topPrime 2143 } = true := by
  exact good_top_prime_checked (i := 58) (r := 19) (s := 40) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row058_good039_checked :
    goodSegmentCheck 58 19 40
      { lower := 2201, upper := 2236, witness := RowWitness.topPrime 2179 } = true := by
  exact good_top_prime_checked (i := 58) (r := 19) (s := 40) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row058_good040_checked :
    goodSegmentCheck 58 19 40
      { lower := 2237, upper := 2294, witness := RowWitness.topPrime 2237 } = true := by
  exact good_top_prime_checked (i := 58) (r := 19) (s := 40) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row058_good041_checked :
    goodSegmentCheck 58 19 40
      { lower := 2295, upper := 2350, witness := RowWitness.topPrime 2293 } = true := by
  exact good_top_prime_checked (i := 58) (r := 19) (s := 40) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row058_good042_checked :
    goodSegmentCheck 58 19 40
      { lower := 2351, upper := 2408, witness := RowWitness.topPrime 2351 } = true := by
  exact good_top_prime_checked (i := 58) (r := 19) (s := 40) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row058_good043_checked :
    goodSegmentCheck 58 19 40
      { lower := 2409, upper := 2456, witness := RowWitness.topPrime 2399 } = true := by
  exact good_top_prime_checked (i := 58) (r := 19) (s := 40) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row058_good044_checked :
    goodSegmentCheck 58 19 40
      { lower := 2457, upper := 2504, witness := RowWitness.topPrime 2447 } = true := by
  exact good_top_prime_checked (i := 58) (r := 19) (s := 40) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row058_good045_checked :
    goodSegmentCheck 58 19 40
      { lower := 2505, upper := 2560, witness := RowWitness.topPrime 2503 } = true := by
  exact good_top_prime_checked (i := 58) (r := 19) (s := 40) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row058_good046_checked :
    goodSegmentCheck 58 19 40
      { lower := 2561, upper := 2614, witness := RowWitness.topPrime 2557 } = true := by
  exact good_top_prime_checked (i := 58) (r := 19) (s := 40) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row058_good047_checked :
    goodSegmentCheck 58 19 40
      { lower := 2615, upper := 2666, witness := RowWitness.topPrime 2609 } = true := by
  exact good_top_prime_checked (i := 58) (r := 19) (s := 40) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row058_good032_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row058_good033_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row058_good034_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row058_good035_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row058_good036_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row058_good037_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row058_good038_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row058_good039_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row058_good040_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row058_good041_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row058_good042_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row058_good043_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row058_good044_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row058_good045_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row058_good046_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row058_good047_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row058_good048_checked :
    goodSegmentCheck 58 19 40
      { lower := 2667, upper := 2720, witness := RowWitness.topPrime 2663 } = true := by
  exact good_top_prime_checked (i := 58) (r := 19) (s := 40) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row058_good049_checked :
    goodSegmentCheck 58 19 40
      { lower := 2721, upper := 2776, witness := RowWitness.topPrime 2719 } = true := by
  exact good_top_prime_checked (i := 58) (r := 19) (s := 40) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row058_good050_checked :
    goodSegmentCheck 58 19 40
      { lower := 2777, upper := 2834, witness := RowWitness.topPrime 2777 } = true := by
  exact good_top_prime_checked (i := 58) (r := 19) (s := 40) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row058_good051_checked :
    goodSegmentCheck 58 19 40
      { lower := 2835, upper := 2890, witness := RowWitness.topPrime 2833 } = true := by
  exact good_top_prime_checked (i := 58) (r := 19) (s := 40) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row058_good052_checked :
    goodSegmentCheck 58 19 40
      { lower := 2891, upper := 2944, witness := RowWitness.topPrime 2887 } = true := by
  exact good_top_prime_checked (i := 58) (r := 19) (s := 40) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row058_good053_checked :
    goodSegmentCheck 58 19 40
      { lower := 2945, upper := 2996, witness := RowWitness.topPrime 2939 } = true := by
  exact good_top_prime_checked (i := 58) (r := 19) (s := 40) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row058_good054_checked :
    goodSegmentCheck 58 19 40
      { lower := 2997, upper := 3028, witness := RowWitness.topPrime 2971 } = true := by
  exact good_top_prime_checked (i := 58) (r := 19) (s := 40) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row058_good055_checked :
    goodSegmentCheck 58 19 40
      { lower := 3029, upper := 3080, witness := RowWitness.topPrime 3023 } = true := by
  exact good_top_prime_checked (i := 58) (r := 19) (s := 40) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row058_good056_checked :
    goodSegmentCheck 58 19 40
      { lower := 3081, upper := 3136, witness := RowWitness.topPrime 3079 } = true := by
  exact good_top_prime_checked (i := 58) (r := 19) (s := 40) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row058_good057_checked :
    goodSegmentCheck 58 19 40
      { lower := 3137, upper := 3194, witness := RowWitness.topPrime 3137 } = true := by
  exact good_top_prime_checked (i := 58) (r := 19) (s := 40) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row058_good058_checked :
    goodSegmentCheck 58 19 40
      { lower := 3195, upper := 3248, witness := RowWitness.topPrime 3191 } = true := by
  exact good_top_prime_checked (i := 58) (r := 19) (s := 40) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row058_good059_checked :
    goodSegmentCheck 58 19 40
      { lower := 3249, upper := 3286, witness := RowWitness.topPrime 3229 } = true := by
  exact good_top_prime_checked (i := 58) (r := 19) (s := 40) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row058_good060_checked :
    goodSegmentCheck 58 19 40
      { lower := 3287, upper := 3306, witness := RowWitness.topPrime 3271 } = true := by
  exact good_top_prime_checked (i := 58) (r := 19) (s := 40) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row058_good061_checked :
    goodSegmentCheck 58 19 40
      { lower := 3362, upper := 3418, witness := RowWitness.topPrime 3361 } = true := by
  exact good_top_prime_checked (i := 58) (r := 19) (s := 40) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row058_good062_checked :
    goodSegmentCheck 58 19 40
      { lower := 3419, upper := 3459, witness := RowWitness.topPrime 3413 } = true := by
  exact good_top_prime_checked (i := 58) (r := 19) (s := 40) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row058_good063_checked :
    goodSegmentCheck 58 19 40
      { lower := 3468, upper := 3487, witness := RowWitness.topPrime 3467 } = true := by
  exact good_top_prime_checked (i := 58) (r := 19) (s := 40) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row058_good048_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row058_good049_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row058_good050_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row058_good051_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row058_good052_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row058_good053_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row058_good054_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row058_good055_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row058_good056_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row058_good057_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row058_good058_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row058_good059_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row058_good060_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row058_good061_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row058_good062_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row058_good063_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row058_good064_checked :
    goodSegmentCheck 58 19 40
      { lower := 3584, upper := 3606, witness := RowWitness.topPrime 3583 } = true := by
  exact good_top_prime_checked (i := 58) (r := 19) (s := 40) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row058_good065_checked :
    goodSegmentCheck 58 19 40
      { lower := 3610, upper := 3641, witness := RowWitness.topPrime 3607 } = true := by
  exact good_top_prime_checked (i := 58) (r := 19) (s := 40) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row058_good066_checked :
    goodSegmentCheck 58 19 40
      { lower := 3645, upper := 3667, witness := RowWitness.topPrime 3643 } = true := by
  exact good_top_prime_checked (i := 58) (r := 19) (s := 40) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row058_good067_checked :
    goodSegmentCheck 58 19 40
      { lower := 3698, upper := 3754, witness := RowWitness.topPrime 3697 } = true := by
  exact good_top_prime_checked (i := 58) (r := 19) (s := 40) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row058_good068_checked :
    goodSegmentCheck 58 19 40
      { lower := 3755, upper := 3796, witness := RowWitness.topPrime 3739 } = true := by
  exact good_top_prime_checked (i := 58) (r := 19) (s := 40) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row058_good069_checked :
    goodSegmentCheck 58 19 40
      { lower := 3797, upper := 3814, witness := RowWitness.topPrime 3797 } = true := by
  exact good_top_prime_checked (i := 58) (r := 19) (s := 40) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row058_good070_checked :
    goodSegmentCheck 58 19 40
      { lower := 3887, upper := 3938, witness := RowWitness.topPrime 3881 } = true := by
  exact good_top_prime_checked (i := 58) (r := 19) (s := 40) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row058_good071_checked :
    goodSegmentCheck 58 19 40
      { lower := 3939, upper := 3944, witness := RowWitness.topPrime 3931 } = true := by
  exact good_top_prime_checked (i := 58) (r := 19) (s := 40) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row058_good072_checked :
    goodSegmentCheck 58 19 40
      { lower := 3993, upper := 4028, witness := RowWitness.topPrime 3989 } = true := by
  exact good_top_prime_checked (i := 58) (r := 19) (s := 40) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row058_good073_checked :
    goodSegmentCheck 58 19 40
      { lower := 4046, upper := 4050, witness := RowWitness.topPrime 4027 } = true := by
  exact good_top_prime_checked (i := 58) (r := 19) (s := 40) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row058_good074_checked :
    goodSegmentCheck 58 19 40
      { lower := 4056, upper := 4108, witness := RowWitness.topPrime 4051 } = true := by
  exact good_top_prime_checked (i := 58) (r := 19) (s := 40) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row058_good075_checked :
    goodSegmentCheck 58 19 40
      { lower := 4109, upper := 4156, witness := RowWitness.topPrime 4099 } = true := by
  exact good_top_prime_checked (i := 58) (r := 19) (s := 40) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row058_good076_checked :
    goodSegmentCheck 58 19 40
      { lower := 4157, upper := 4173, witness := RowWitness.topPrime 4157 } = true := by
  exact good_top_prime_checked (i := 58) (r := 19) (s := 40) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row058_good077_checked :
    goodSegmentCheck 58 19 40
      { lower := 4232, upper := 4282, witness := RowWitness.topPrime 4231 } = true := by
  exact good_top_prime_checked (i := 58) (r := 19) (s := 40) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row058_good078_checked :
    goodSegmentCheck 58 19 40
      { lower := 4335, upper := 4384, witness := RowWitness.topPrime 4327 } = true := by
  exact good_top_prime_checked (i := 58) (r := 19) (s := 40) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row058_good079_checked :
    goodSegmentCheck 58 19 40
      { lower := 4385, upper := 4430, witness := RowWitness.topPrime 4373 } = true := by
  exact good_top_prime_checked (i := 58) (r := 19) (s := 40) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row058_good064_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row058_good065_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row058_good066_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row058_good067_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row058_good068_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row058_good069_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row058_good070_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row058_good071_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row058_good072_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row058_good073_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row058_good074_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row058_good075_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row058_good076_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row058_good077_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row058_good078_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row058_good079_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row058_good080_checked :
    goodSegmentCheck 58 19 40
      { lower := 4431, upper := 4451, witness := RowWitness.topPrime 4423 } = true := by
  exact good_top_prime_checked (i := 58) (r := 19) (s := 40) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row058_good081_checked :
    goodSegmentCheck 58 19 40
      { lower := 4459, upper := 4475, witness := RowWitness.topPrime 4457 } = true := by
  exact good_top_prime_checked (i := 58) (r := 19) (s := 40) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row058_good082_checked :
    goodSegmentCheck 58 19 40
      { lower := 4617, upper := 4660, witness := RowWitness.topPrime 4603 } = true := by
  exact good_top_prime_checked (i := 58) (r := 19) (s := 40) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row058_good083_checked :
    goodSegmentCheck 58 19 40
      { lower := 4661, upper := 4674, witness := RowWitness.topPrime 4657 } = true := by
  exact good_top_prime_checked (i := 58) (r := 19) (s := 40) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row058_good084_checked :
    goodSegmentCheck 58 19 40
      { lower := 4802, upper := 4858, witness := RowWitness.topPrime 4801 } = true := by
  exact good_top_prime_checked (i := 58) (r := 19) (s := 40) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row058_good085_checked :
    goodSegmentCheck 58 19 40
      { lower := 4859, upper := 4862, witness := RowWitness.topPrime 4831 } = true := by
  exact good_top_prime_checked (i := 58) (r := 19) (s := 40) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row058_good086_checked :
    goodSegmentCheck 58 19 40
      { lower := 4913, upper := 4917, witness := RowWitness.topPrime 4909 } = true := by
  exact good_top_prime_checked (i := 58) (r := 19) (s := 40) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row058_good087_checked :
    goodSegmentCheck 58 19 40
      { lower := 5043, upper := 5096, witness := RowWitness.topPrime 5039 } = true := by
  exact good_top_prime_checked (i := 58) (r := 19) (s := 40) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row058_good088_checked :
    goodSegmentCheck 58 19 40
      { lower := 5097, upper := 5100, witness := RowWitness.topPrime 5087 } = true := by
  exact good_top_prime_checked (i := 58) (r := 19) (s := 40) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row058_good089_checked :
    goodSegmentCheck 58 19 40
      { lower := 5103, upper := 5111, witness := RowWitness.topPrime 5101 } = true := by
  exact good_top_prime_checked (i := 58) (r := 19) (s := 40) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row058_good090_checked :
    goodSegmentCheck 58 19 40
      { lower := 5120, upper := 5176, witness := RowWitness.topPrime 5119 } = true := by
  exact good_top_prime_checked (i := 58) (r := 19) (s := 40) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row058_good091_checked :
    goodSegmentCheck 58 19 40
      { lower := 5177, upper := 5177, witness := RowWitness.topPrime 5171 } = true := by
  exact good_top_prime_checked (i := 58) (r := 19) (s := 40) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row058_good092_checked :
    goodSegmentCheck 58 19 40
      { lower := 5202, upper := 5202, witness := RowWitness.topPrime 5197 } = true := by
  exact good_top_prime_checked (i := 58) (r := 19) (s := 40) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row058_good093_checked :
    goodSegmentCheck 58 19 40
      { lower := 5324, upper := 5380, witness := RowWitness.topPrime 5323 } = true := by
  exact good_top_prime_checked (i := 58) (r := 19) (s := 40) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row058_good094_checked :
    goodSegmentCheck 58 19 40
      { lower := 5381, upper := 5381, witness := RowWitness.topPrime 5381 } = true := by
  exact good_top_prime_checked (i := 58) (r := 19) (s := 40) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row058_good095_checked :
    goodSegmentCheck 58 19 40
      { lower := 5488, upper := 5540, witness := RowWitness.topPrime 5483 } = true := by
  exact good_top_prime_checked (i := 58) (r := 19) (s := 40) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row058_good080_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row058_good081_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row058_good082_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row058_good083_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row058_good084_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row058_good085_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row058_good086_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row058_good087_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row058_good088_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row058_good089_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row058_good090_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row058_good091_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row058_good092_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row058_good093_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row058_good094_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row058_good095_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row058_good096_checked :
    goodSegmentCheck 58 19 40
      { lower := 5541, upper := 5545, witness := RowWitness.topPrime 5531 } = true := by
  exact good_top_prime_checked (i := 58) (r := 19) (s := 40) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row058_good097_checked :
    goodSegmentCheck 58 19 40
      { lower := 5547, upper := 5548, witness := RowWitness.topPrime 5531 } = true := by
  exact good_top_prime_checked (i := 58) (r := 19) (s := 40) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row058_good098_checked :
    goodSegmentCheck 58 19 40
      { lower := 5589, upper := 5604, witness := RowWitness.topPrime 5581 } = true := by
  exact good_top_prime_checked (i := 58) (r := 19) (s := 40) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row058_good099_checked :
    goodSegmentCheck 58 19 40
      { lower := 5618, upper := 5648, witness := RowWitness.topPrime 5591 } = true := by
  exact good_top_prime_checked (i := 58) (r := 19) (s := 40) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row058_good100_checked :
    goodSegmentCheck 58 19 40
      { lower := 5649, upper := 5682, witness := RowWitness.topPrime 5647 } = true := by
  exact good_top_prime_checked (i := 58) (r := 19) (s := 40) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row058_good101_checked :
    goodSegmentCheck 58 19 40
      { lower := 5776, upper := 5806, witness := RowWitness.topPrime 5749 } = true := by
  exact good_top_prime_checked (i := 58) (r := 19) (s := 40) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row058_good102_checked :
    goodSegmentCheck 58 19 40
      { lower := 5807, upper := 5864, witness := RowWitness.topPrime 5807 } = true := by
  exact good_top_prime_checked (i := 58) (r := 19) (s := 40) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row058_good103_checked :
    goodSegmentCheck 58 19 40
      { lower := 5865, upper := 5888, witness := RowWitness.topPrime 5861 } = true := by
  exact good_top_prime_checked (i := 58) (r := 19) (s := 40) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row058_good104_checked :
    goodSegmentCheck 58 19 40
      { lower := 6075, upper := 6126, witness := RowWitness.topPrime 6073 } = true := by
  exact good_top_prime_checked (i := 58) (r := 19) (s := 40) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row058_good105_checked :
    goodSegmentCheck 58 19 40
      { lower := 6144, upper := 6200, witness := RowWitness.topPrime 6143 } = true := by
  exact good_top_prime_checked (i := 58) (r := 19) (s := 40) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row058_good106_checked :
    goodSegmentCheck 58 19 40
      { lower := 6201, upper := 6201, witness := RowWitness.topPrime 6199 } = true := by
  exact good_top_prime_checked (i := 58) (r := 19) (s := 40) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row058_good107_checked :
    goodSegmentCheck 58 19 40
      { lower := 6348, upper := 6400, witness := RowWitness.topPrime 6343 } = true := by
  exact good_top_prime_checked (i := 58) (r := 19) (s := 40) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row058_good108_checked :
    goodSegmentCheck 58 19 40
      { lower := 6401, upper := 6405, witness := RowWitness.topPrime 6397 } = true := by
  exact good_top_prime_checked (i := 58) (r := 19) (s := 40) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row058_good109_checked :
    goodSegmentCheck 58 19 40
      { lower := 6517, upper := 6548, witness := RowWitness.topPrime 6491 } = true := by
  exact good_top_prime_checked (i := 58) (r := 19) (s := 40) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row058_good110_checked :
    goodSegmentCheck 58 19 40
      { lower := 6549, upper := 6555, witness := RowWitness.topPrime 6547 } = true := by
  exact good_top_prime_checked (i := 58) (r := 19) (s := 40) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row058_good111_checked :
    goodSegmentCheck 58 19 40
      { lower := 6561, upper := 6574, witness := RowWitness.topPrime 6553 } = true := by
  exact good_top_prime_checked (i := 58) (r := 19) (s := 40) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row058_good096_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row058_good097_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row058_good098_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row058_good099_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row058_good100_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row058_good101_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row058_good102_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row058_good103_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row058_good104_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row058_good105_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row058_good106_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row058_good107_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row058_good108_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row058_good109_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row058_good110_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row058_good111_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row058_good112_checked :
    goodSegmentCheck 58 19 40
      { lower := 6591, upper := 6618, witness := RowWitness.topPrime 6581 } = true := by
  exact good_top_prime_checked (i := 58) (r := 19) (s := 40) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row058_good113_checked :
    goodSegmentCheck 58 19 40
      { lower := 6627, upper := 6676, witness := RowWitness.topPrime 6619 } = true := by
  exact good_top_prime_checked (i := 58) (r := 19) (s := 40) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row058_good114_checked :
    goodSegmentCheck 58 19 40
      { lower := 6677, upper := 6704, witness := RowWitness.topPrime 6673 } = true := by
  exact good_top_prime_checked (i := 58) (r := 19) (s := 40) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row058_good115_checked :
    goodSegmentCheck 58 19 40
      { lower := 6727, upper := 6776, witness := RowWitness.topPrime 6719 } = true := by
  exact good_top_prime_checked (i := 58) (r := 19) (s := 40) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row058_good116_checked :
    goodSegmentCheck 58 19 40
      { lower := 6777, upper := 6781, witness := RowWitness.topPrime 6763 } = true := by
  exact good_top_prime_checked (i := 58) (r := 19) (s := 40) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row058_good117_checked :
    goodSegmentCheck 58 19 40
      { lower := 6859, upper := 6914, witness := RowWitness.topPrime 6857 } = true := by
  exact good_top_prime_checked (i := 58) (r := 19) (s := 40) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row058_good118_checked :
    goodSegmentCheck 58 19 40
      { lower := 6915, upper := 6932, witness := RowWitness.topPrime 6911 } = true := by
  exact good_top_prime_checked (i := 58) (r := 19) (s := 40) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row058_good119_checked :
    goodSegmentCheck 58 19 40
      { lower := 7203, upper := 7250, witness := RowWitness.topPrime 7193 } = true := by
  exact good_top_prime_checked (i := 58) (r := 19) (s := 40) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row058_good120_checked :
    goodSegmentCheck 58 19 40
      { lower := 7251, upper := 7260, witness := RowWitness.topPrime 7247 } = true := by
  exact good_top_prime_checked (i := 58) (r := 19) (s := 40) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row058_good121_checked :
    goodSegmentCheck 58 19 40
      { lower := 7406, upper := 7450, witness := RowWitness.topPrime 7393 } = true := by
  exact good_top_prime_checked (i := 58) (r := 19) (s := 40) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row058_good122_checked :
    goodSegmentCheck 58 19 40
      { lower := 7451, upper := 7453, witness := RowWitness.topPrime 7451 } = true := by
  exact good_top_prime_checked (i := 58) (r := 19) (s := 40) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row058_good123_checked :
    goodSegmentCheck 58 19 40
      { lower := 7546, upper := 7557, witness := RowWitness.topPrime 7541 } = true := by
  exact good_top_prime_checked (i := 58) (r := 19) (s := 40) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row058_good124_checked :
    goodSegmentCheck 58 19 40
      { lower := 7581, upper := 7603, witness := RowWitness.topPrime 7577 } = true := by
  exact good_top_prime_checked (i := 58) (r := 19) (s := 40) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row058_good125_checked :
    goodSegmentCheck 58 19 40
      { lower := 7935, upper := 7990, witness := RowWitness.topPrime 7933 } = true := by
  exact good_top_prime_checked (i := 58) (r := 19) (s := 40) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row058_good126_checked :
    goodSegmentCheck 58 19 40
      { lower := 7991, upper := 7999, witness := RowWitness.topPrime 7963 } = true := by
  exact good_top_prime_checked (i := 58) (r := 19) (s := 40) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row058_good127_checked :
    goodSegmentCheck 58 19 40
      { lower := 8019, upper := 8043, witness := RowWitness.topPrime 8017 } = true := by
  exact good_top_prime_checked (i := 58) (r := 19) (s := 40) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row058_good112_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row058_good113_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row058_good114_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row058_good115_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row058_good116_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row058_good117_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row058_good118_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row058_good119_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row058_good120_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row058_good121_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row058_good122_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row058_good123_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row058_good124_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row058_good125_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row058_good126_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row058_good127_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row058_good128_checked :
    goodSegmentCheck 58 19 40
      { lower := 8214, upper := 8249, witness := RowWitness.topPrime 8209 } = true := by
  exact good_top_prime_checked (i := 58) (r := 19) (s := 40) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row058_good129_checked :
    goodSegmentCheck 58 19 40
      { lower := 8427, upper := 8462, witness := RowWitness.topPrime 8423 } = true := by
  exact good_top_prime_checked (i := 58) (r := 19) (s := 40) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row058_good130_checked :
    goodSegmentCheck 58 19 40
      { lower := 8464, upper := 8484, witness := RowWitness.topPrime 8461 } = true := by
  exact good_top_prime_checked (i := 58) (r := 19) (s := 40) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row058_good131_checked :
    goodSegmentCheck 58 19 40
      { lower := 8750, upper := 8804, witness := RowWitness.topPrime 8747 } = true := by
  exact good_top_prime_checked (i := 58) (r := 19) (s := 40) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row058_good132_checked :
    goodSegmentCheck 58 19 40
      { lower := 8805, upper := 8807, witness := RowWitness.topPrime 8803 } = true := by
  exact good_top_prime_checked (i := 58) (r := 19) (s := 40) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row058_good133_checked :
    goodSegmentCheck 58 19 40
      { lower := 8836, upper := 8845, witness := RowWitness.topPrime 8831 } = true := by
  exact good_top_prime_checked (i := 58) (r := 19) (s := 40) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row058_good134_checked :
    goodSegmentCheck 58 19 40
      { lower := 9245, upper := 9273, witness := RowWitness.topPrime 9241 } = true := by
  exact good_top_prime_checked (i := 58) (r := 19) (s := 40) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row058_good135_checked :
    goodSegmentCheck 58 19 40
      { lower := 9522, upper := 9534, witness := RowWitness.topPrime 9521 } = true := by
  exact good_top_prime_checked (i := 58) (r := 19) (s := 40) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row058_good136_checked :
    goodSegmentCheck 58 19 40
      { lower := 9604, upper := 9658, witness := RowWitness.topPrime 9601 } = true := by
  exact good_top_prime_checked (i := 58) (r := 19) (s := 40) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row058_good137_checked :
    goodSegmentCheck 58 19 40
      { lower := 9659, upper := 9661, witness := RowWitness.topPrime 9649 } = true := by
  exact good_top_prime_checked (i := 58) (r := 19) (s := 40) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row058_good138_checked :
    goodSegmentCheck 58 19 40
      { lower := 10051, upper := 10057, witness := RowWitness.topPrime 10039 } = true := by
  exact good_top_prime_checked (i := 58) (r := 19) (s := 40) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row058_good139_checked :
    goodSegmentCheck 58 19 40
      { lower := 10086, upper := 10108, witness := RowWitness.topPrime 10079 } = true := by
  exact good_top_prime_checked (i := 58) (r := 19) (s := 40) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row058_good140_checked :
    goodSegmentCheck 58 19 40
      { lower := 10240, upper := 10263, witness := RowWitness.topPrime 10223 } = true := by
  exact good_top_prime_checked (i := 58) (r := 19) (s := 40) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row058_good141_checked :
    goodSegmentCheck 58 19 40
      { lower := 10580, upper := 10624, witness := RowWitness.topPrime 10567 } = true := by
  exact good_top_prime_checked (i := 58) (r := 19) (s := 40) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row058_good142_checked :
    goodSegmentCheck 58 19 40
      { lower := 10625, upper := 10637, witness := RowWitness.topPrime 10613 } = true := by
  exact good_top_prime_checked (i := 58) (r := 19) (s := 40) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row058_good143_checked :
    goodSegmentCheck 58 19 40
      { lower := 10648, upper := 10682, witness := RowWitness.topPrime 10639 } = true := by
  exact good_top_prime_checked (i := 58) (r := 19) (s := 40) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row058_good128_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row058_good129_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row058_good130_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row058_good131_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row058_good132_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row058_good133_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row058_good134_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row058_good135_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row058_good136_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row058_good137_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row058_good138_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row058_good139_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row058_good140_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row058_good141_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row058_good142_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row058_good143_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row058_good144_checked :
    goodSegmentCheck 58 19 40
      { lower := 10952, upper := 11006, witness := RowWitness.topPrime 10949 } = true := by
  exact good_top_prime_checked (i := 58) (r := 19) (s := 40) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row058_good145_checked :
    goodSegmentCheck 58 19 40
      { lower := 11007, upper := 11009, witness := RowWitness.topPrime 11003 } = true := by
  exact good_top_prime_checked (i := 58) (r := 19) (s := 40) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row058_good146_checked :
    goodSegmentCheck 58 19 40
      { lower := 11094, upper := 11102, witness := RowWitness.topPrime 11093 } = true := by
  exact good_top_prime_checked (i := 58) (r := 19) (s := 40) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row058_good147_checked :
    goodSegmentCheck 58 19 40
      { lower := 11109, upper := 11150, witness := RowWitness.topPrime 11093 } = true := by
  exact good_top_prime_checked (i := 58) (r := 19) (s := 40) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row058_good148_checked :
    goodSegmentCheck 58 19 40
      { lower := 11151, upper := 11151, witness := RowWitness.topPrime 11149 } = true := by
  exact good_top_prime_checked (i := 58) (r := 19) (s := 40) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row058_good149_checked :
    goodSegmentCheck 58 19 40
      { lower := 11250, upper := 11300, witness := RowWitness.topPrime 11243 } = true := by
  exact good_top_prime_checked (i := 58) (r := 19) (s := 40) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row058_good150_checked :
    goodSegmentCheck 58 19 40
      { lower := 11301, upper := 11307, witness := RowWitness.topPrime 11299 } = true := by
  exact good_top_prime_checked (i := 58) (r := 19) (s := 40) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row058_good151_checked :
    goodSegmentCheck 58 19 40
      { lower := 11664, upper := 11695, witness := RowWitness.topPrime 11657 } = true := by
  exact good_top_prime_checked (i := 58) (r := 19) (s := 40) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row058_good152_checked :
    goodSegmentCheck 58 19 40
      { lower := 12005, upper := 12036, witness := RowWitness.topPrime 11987 } = true := by
  exact good_top_prime_checked (i := 58) (r := 19) (s := 40) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row058_good153_checked :
    goodSegmentCheck 58 19 40
      { lower := 12321, upper := 12345, witness := RowWitness.topPrime 12301 } = true := by
  exact good_top_prime_checked (i := 58) (r := 19) (s := 40) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row058_good154_checked :
    goodSegmentCheck 58 19 40
      { lower := 12500, upper := 12550, witness := RowWitness.topPrime 12497 } = true := by
  exact good_top_prime_checked (i := 58) (r := 19) (s := 40) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row058_good155_checked :
    goodSegmentCheck 58 19 40
      { lower := 13125, upper := 13178, witness := RowWitness.topPrime 13121 } = true := by
  exact good_top_prime_checked (i := 58) (r := 19) (s := 40) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row058_good156_checked :
    goodSegmentCheck 58 19 40
      { lower := 13179, upper := 13179, witness := RowWitness.topPrime 13177 } = true := by
  exact good_top_prime_checked (i := 58) (r := 19) (s := 40) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row058_good157_checked :
    goodSegmentCheck 58 19 40
      { lower := 13182, upper := 13182, witness := RowWitness.topPrime 13177 } = true := by
  exact good_top_prime_checked (i := 58) (r := 19) (s := 40) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row058_good158_checked :
    goodSegmentCheck 58 19 40
      { lower := 13310, upper := 13311, witness := RowWitness.topPrime 13309 } = true := by
  exact good_top_prime_checked (i := 58) (r := 19) (s := 40) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row058_good159_checked :
    goodSegmentCheck 58 19 40
      { lower := 13454, upper := 13505, witness := RowWitness.topPrime 13451 } = true := by
  exact good_top_prime_checked (i := 58) (r := 19) (s := 40) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row058_good144_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row058_good145_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row058_good146_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row058_good147_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row058_good148_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row058_good149_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row058_good150_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row058_good151_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row058_good152_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row058_good153_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row058_good154_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row058_good155_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row058_good156_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row058_good157_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row058_good158_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row058_good159_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row058_good160_checked :
    goodSegmentCheck 58 19 40
      { lower := 13718, upper := 13747, witness := RowWitness.topPrime 13711 } = true := by
  exact good_top_prime_checked (i := 58) (r := 19) (s := 40) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row058_good161_checked :
    goodSegmentCheck 58 19 40
      { lower := 14415, upper := 14463, witness := RowWitness.topPrime 14411 } = true := by
  exact good_top_prime_checked (i := 58) (r := 19) (s := 40) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row058_good162_checked :
    goodSegmentCheck 58 19 40
      { lower := 14792, upper := 14796, witness := RowWitness.topPrime 14783 } = true := by
  exact good_top_prime_checked (i := 58) (r := 19) (s := 40) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row058_good163_checked :
    goodSegmentCheck 58 19 40
      { lower := 15379, upper := 15433, witness := RowWitness.topPrime 15377 } = true := by
  exact good_top_prime_checked (i := 58) (r := 19) (s := 40) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row058_good164_checked :
    goodSegmentCheck 58 19 40
      { lower := 16384, upper := 16394, witness := RowWitness.topPrime 16381 } = true := by
  exact good_top_prime_checked (i := 58) (r := 19) (s := 40) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row058_good165_checked :
    goodSegmentCheck 58 19 40
      { lower := 16428, upper := 16441, witness := RowWitness.topPrime 16427 } = true := by
  exact good_top_prime_checked (i := 58) (r := 19) (s := 40) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row058_good166_checked :
    goodSegmentCheck 58 19 40
      { lower := 16810, upper := 16844, witness := RowWitness.topPrime 16787 } = true := by
  exact good_top_prime_checked (i := 58) (r := 19) (s := 40) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row058_good167_checked :
    goodSegmentCheck 58 19 40
      { lower := 16845, upper := 16867, witness := RowWitness.topPrime 16843 } = true := by
  exact good_top_prime_checked (i := 58) (r := 19) (s := 40) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row058_good168_checked :
    goodSegmentCheck 58 19 40
      { lower := 17303, upper := 17355, witness := RowWitness.topPrime 17299 } = true := by
  exact good_top_prime_checked (i := 58) (r := 19) (s := 40) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row058_good169_checked :
    goodSegmentCheck 58 19 40
      { lower := 18491, upper := 18538, witness := RowWitness.topPrime 18481 } = true := by
  exact good_top_prime_checked (i := 58) (r := 19) (s := 40) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row058_good170_checked :
    goodSegmentCheck 58 19 40
      { lower := 18539, upper := 18547, witness := RowWitness.topPrime 18539 } = true := by
  exact good_top_prime_checked (i := 58) (r := 19) (s := 40) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row058_good171_checked :
    goodSegmentCheck 58 19 40
      { lower := 19208, upper := 19264, witness := RowWitness.topPrime 19207 } = true := by
  exact good_top_prime_checked (i := 58) (r := 19) (s := 40) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row058_good172_checked :
    goodSegmentCheck 58 19 40
      { lower := 19265, upper := 19265, witness := RowWitness.topPrime 19259 } = true := by
  exact good_top_prime_checked (i := 58) (r := 19) (s := 40) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row058_good173_checked :
    goodSegmentCheck 58 19 40
      { lower := 19663, upper := 19718, witness := RowWitness.topPrime 19661 } = true := by
  exact good_top_prime_checked (i := 58) (r := 19) (s := 40) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row058_good174_checked :
    goodSegmentCheck 58 19 40
      { lower := 19719, upper := 19720, witness := RowWitness.topPrime 19717 } = true := by
  exact good_top_prime_checked (i := 58) (r := 19) (s := 40) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row058_good175_checked :
    goodSegmentCheck 58 19 40
      { lower := 20535, upper := 20537, witness := RowWitness.topPrime 20533 } = true := by
  exact good_top_prime_checked (i := 58) (r := 19) (s := 40) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row058_good160_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row058_good161_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row058_good162_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row058_good163_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row058_good164_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row058_good165_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row058_good166_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row058_good167_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row058_good168_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row058_good169_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row058_good170_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row058_good171_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row058_good172_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row058_good173_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row058_good174_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row058_good175_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row058_good176_checked :
    goodSegmentCheck 58 19 40
      { lower := 20577, upper := 20592, witness := RowWitness.topPrime 20563 } = true := by
  exact good_top_prime_checked (i := 58) (r := 19) (s := 40) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row058_good177_checked :
    goodSegmentCheck 58 19 40
      { lower := 21870, upper := 21920, witness := RowWitness.topPrime 21863 } = true := by
  exact good_top_prime_checked (i := 58) (r := 19) (s := 40) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row058_good178_checked :
    goodSegmentCheck 58 19 40
      { lower := 21921, upper := 21932, witness := RowWitness.topPrime 21911 } = true := by
  exact good_top_prime_checked (i := 58) (r := 19) (s := 40) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row058_good179_checked :
    goodSegmentCheck 58 19 40
      { lower := 24010, upper := 24015, witness := RowWitness.topPrime 24007 } = true := by
  exact good_top_prime_checked (i := 58) (r := 19) (s := 40) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row058_good180_checked :
    goodSegmentCheck 58 19 40
      { lower := 24037, upper := 24086, witness := RowWitness.topPrime 24029 } = true := by
  exact good_top_prime_checked (i := 58) (r := 19) (s := 40) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row058_good181_checked :
    goodSegmentCheck 58 19 40
      { lower := 24087, upper := 24094, witness := RowWitness.topPrime 24083 } = true := by
  exact good_top_prime_checked (i := 58) (r := 19) (s := 40) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row058_good182_checked :
    goodSegmentCheck 58 19 40
      { lower := 24334, upper := 24356, witness := RowWitness.topPrime 24329 } = true := by
  exact good_top_prime_checked (i := 58) (r := 19) (s := 40) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row058_good183_checked :
    goodSegmentCheck 58 19 40
      { lower := 24576, upper := 24622, witness := RowWitness.topPrime 24571 } = true := by
  exact good_top_prime_checked (i := 58) (r := 19) (s := 40) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row058_good184_checked :
    goodSegmentCheck 58 19 40
      { lower := 25289, upper := 25318, witness := RowWitness.topPrime 25261 } = true := by
  exact good_top_prime_checked (i := 58) (r := 19) (s := 40) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row058_good185_checked :
    goodSegmentCheck 58 19 40
      { lower := 25319, upper := 25338, witness := RowWitness.topPrime 25309 } = true := by
  exact good_top_prime_checked (i := 58) (r := 19) (s := 40) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row058_good186_checked :
    goodSegmentCheck 58 19 40
      { lower := 26411, upper := 26421, witness := RowWitness.topPrime 26407 } = true := by
  exact good_top_prime_checked (i := 58) (r := 19) (s := 40) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row058_good187_checked :
    goodSegmentCheck 58 19 40
      { lower := 28125, upper := 28147, witness := RowWitness.topPrime 28123 } = true := by
  exact good_top_prime_checked (i := 58) (r := 19) (s := 40) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row058_good188_checked :
    goodSegmentCheck 58 19 40
      { lower := 28577, upper := 28618, witness := RowWitness.topPrime 28573 } = true := by
  exact good_top_prime_checked (i := 58) (r := 19) (s := 40) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row058_good189_checked :
    goodSegmentCheck 58 19 40
      { lower := 28717, upper := 28729, witness := RowWitness.topPrime 28711 } = true := by
  exact good_top_prime_checked (i := 58) (r := 19) (s := 40) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row058_good190_checked :
    goodSegmentCheck 58 19 40
      { lower := 30926, upper := 30956, witness := RowWitness.topPrime 30911 } = true := by
  exact good_top_prime_checked (i := 58) (r := 19) (s := 40) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row058_good191_checked :
    goodSegmentCheck 58 19 40
      { lower := 31250, upper := 31270, witness := RowWitness.topPrime 31249 } = true := by
  exact good_top_prime_checked (i := 58) (r := 19) (s := 40) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row058_good176_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row058_good177_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row058_good178_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row058_good179_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row058_good180_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row058_good181_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row058_good182_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row058_good183_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row058_good184_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row058_good185_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row058_good186_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row058_good187_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row058_good188_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row058_good189_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row058_good190_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row058_good191_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row058_good192_checked :
    goodSegmentCheck 58 19 40
      { lower := 32805, upper := 32825, witness := RowWitness.topPrime 32803 } = true := by
  exact good_top_prime_checked (i := 58) (r := 19) (s := 40) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row058_good193_checked :
    goodSegmentCheck 58 19 40
      { lower := 34391, upper := 34432, witness := RowWitness.topPrime 34381 } = true := by
  exact good_top_prime_checked (i := 58) (r := 19) (s := 40) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row058_good194_checked :
    goodSegmentCheck 58 19 40
      { lower := 36517, upper := 36554, witness := RowWitness.topPrime 36497 } = true := by
  exact good_top_prime_checked (i := 58) (r := 19) (s := 40) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row058_good195_checked :
    goodSegmentCheck 58 19 40
      { lower := 36555, upper := 36558, witness := RowWitness.topPrime 36551 } = true := by
  exact good_top_prime_checked (i := 58) (r := 19) (s := 40) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row058_good196_checked :
    goodSegmentCheck 58 19 40
      { lower := 37553, upper := 37557, witness := RowWitness.topPrime 37549 } = true := by
  exact good_top_prime_checked (i := 58) (r := 19) (s := 40) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row058_good197_checked :
    goodSegmentCheck 58 19 40
      { lower := 39326, upper := 39361, witness := RowWitness.topPrime 39323 } = true := by
  exact good_top_prime_checked (i := 58) (r := 19) (s := 40) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row058_good198_checked :
    goodSegmentCheck 58 19 40
      { lower := 39366, upper := 39383, witness := RowWitness.topPrime 39359 } = true := by
  exact good_top_prime_checked (i := 58) (r := 19) (s := 40) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row058_good199_checked :
    goodSegmentCheck 58 19 40
      { lower := 49152, upper := 49187, witness := RowWitness.topPrime 49139 } = true := by
  exact good_top_prime_checked (i := 58) (r := 19) (s := 40) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row058_good200_checked :
    goodSegmentCheck 58 19 40
      { lower := 327701, upper := 327737, witness := RowWitness.topPrime 327689 } = true := by
  exact good_top_prime_checked (i := 58) (r := 19) (s := 40) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row058_good192_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row058_good193_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row058_good194_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row058_good195_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row058_good196_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row058_good197_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row058_good198_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row058_good199_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row058_good200_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row058_goods_checked :
    row058.goods.all (goodSegmentCheck row058.height.i row058.height.r row058.height.s) = true := by
  change row058_goods.all (goodSegmentCheck 58 19 40) = true
  simp only [row058_goods, List.all_cons, List.all_nil,
    row058_good000_checked,
    row058_good001_checked,
    row058_good002_checked,
    row058_good003_checked,
    row058_good004_checked,
    row058_good005_checked,
    row058_good006_checked,
    row058_good007_checked,
    row058_good008_checked,
    row058_good009_checked,
    row058_good010_checked,
    row058_good011_checked,
    row058_good012_checked,
    row058_good013_checked,
    row058_good014_checked,
    row058_good015_checked,
    row058_good016_checked,
    row058_good017_checked,
    row058_good018_checked,
    row058_good019_checked,
    row058_good020_checked,
    row058_good021_checked,
    row058_good022_checked,
    row058_good023_checked,
    row058_good024_checked,
    row058_good025_checked,
    row058_good026_checked,
    row058_good027_checked,
    row058_good028_checked,
    row058_good029_checked,
    row058_good030_checked,
    row058_good031_checked,
    row058_good032_checked,
    row058_good033_checked,
    row058_good034_checked,
    row058_good035_checked,
    row058_good036_checked,
    row058_good037_checked,
    row058_good038_checked,
    row058_good039_checked,
    row058_good040_checked,
    row058_good041_checked,
    row058_good042_checked,
    row058_good043_checked,
    row058_good044_checked,
    row058_good045_checked,
    row058_good046_checked,
    row058_good047_checked,
    row058_good048_checked,
    row058_good049_checked,
    row058_good050_checked,
    row058_good051_checked,
    row058_good052_checked,
    row058_good053_checked,
    row058_good054_checked,
    row058_good055_checked,
    row058_good056_checked,
    row058_good057_checked,
    row058_good058_checked,
    row058_good059_checked,
    row058_good060_checked,
    row058_good061_checked,
    row058_good062_checked,
    row058_good063_checked,
    row058_good064_checked,
    row058_good065_checked,
    row058_good066_checked,
    row058_good067_checked,
    row058_good068_checked,
    row058_good069_checked,
    row058_good070_checked,
    row058_good071_checked,
    row058_good072_checked,
    row058_good073_checked,
    row058_good074_checked,
    row058_good075_checked,
    row058_good076_checked,
    row058_good077_checked,
    row058_good078_checked,
    row058_good079_checked,
    row058_good080_checked,
    row058_good081_checked,
    row058_good082_checked,
    row058_good083_checked,
    row058_good084_checked,
    row058_good085_checked,
    row058_good086_checked,
    row058_good087_checked,
    row058_good088_checked,
    row058_good089_checked,
    row058_good090_checked,
    row058_good091_checked,
    row058_good092_checked,
    row058_good093_checked,
    row058_good094_checked,
    row058_good095_checked,
    row058_good096_checked,
    row058_good097_checked,
    row058_good098_checked,
    row058_good099_checked,
    row058_good100_checked,
    row058_good101_checked,
    row058_good102_checked,
    row058_good103_checked,
    row058_good104_checked,
    row058_good105_checked,
    row058_good106_checked,
    row058_good107_checked,
    row058_good108_checked,
    row058_good109_checked,
    row058_good110_checked,
    row058_good111_checked,
    row058_good112_checked,
    row058_good113_checked,
    row058_good114_checked,
    row058_good115_checked,
    row058_good116_checked,
    row058_good117_checked,
    row058_good118_checked,
    row058_good119_checked,
    row058_good120_checked,
    row058_good121_checked,
    row058_good122_checked,
    row058_good123_checked,
    row058_good124_checked,
    row058_good125_checked,
    row058_good126_checked,
    row058_good127_checked,
    row058_good128_checked,
    row058_good129_checked,
    row058_good130_checked,
    row058_good131_checked,
    row058_good132_checked,
    row058_good133_checked,
    row058_good134_checked,
    row058_good135_checked,
    row058_good136_checked,
    row058_good137_checked,
    row058_good138_checked,
    row058_good139_checked,
    row058_good140_checked,
    row058_good141_checked,
    row058_good142_checked,
    row058_good143_checked,
    row058_good144_checked,
    row058_good145_checked,
    row058_good146_checked,
    row058_good147_checked,
    row058_good148_checked,
    row058_good149_checked,
    row058_good150_checked,
    row058_good151_checked,
    row058_good152_checked,
    row058_good153_checked,
    row058_good154_checked,
    row058_good155_checked,
    row058_good156_checked,
    row058_good157_checked,
    row058_good158_checked,
    row058_good159_checked,
    row058_good160_checked,
    row058_good161_checked,
    row058_good162_checked,
    row058_good163_checked,
    row058_good164_checked,
    row058_good165_checked,
    row058_good166_checked,
    row058_good167_checked,
    row058_good168_checked,
    row058_good169_checked,
    row058_good170_checked,
    row058_good171_checked,
    row058_good172_checked,
    row058_good173_checked,
    row058_good174_checked,
    row058_good175_checked,
    row058_good176_checked,
    row058_good177_checked,
    row058_good178_checked,
    row058_good179_checked,
    row058_good180_checked,
    row058_good181_checked,
    row058_good182_checked,
    row058_good183_checked,
    row058_good184_checked,
    row058_good185_checked,
    row058_good186_checked,
    row058_good187_checked,
    row058_good188_checked,
    row058_good189_checked,
    row058_good190_checked,
    row058_good191_checked,
    row058_good192_checked,
    row058_good193_checked,
    row058_good194_checked,
    row058_good195_checked,
    row058_good196_checked,
    row058_good197_checked,
    row058_good198_checked,
    row058_good199_checked,
    row058_good200_checked, Bool.true_and]

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row058_goods_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row058_registered :
    decide (row058.height ∈ heightCertificateData) = true := by
  decide +kernel

theorem row058_small_checked :
    coverCheck (2 * row058.height.i + 2) (row058.height.i * (row058.height.i - 1) - 1)
      (row058.goods.map goodSegmentBounds) = true := by
  decide +kernel

theorem row058_layerCover_checked :
    coverCheck (row058.height.i * (row058.height.i - 1)) (row058.height.n0 - 1)
      (row058.layers.map CoverLayer.bounds) = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row058_registered
#print axioms B699LowIndex.LowIndexLean513dc7cc.row058_small_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row058_layerCover_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row058_bounds : List NatInterval :=
  [(118, 170), (171, 224), (225, 280), (281, 338), (339, 394), (395, 446), (447, 500), (501, 556), (557, 614), (615, 670), (671, 718), (719, 776), (777, 830), (831, 886), (887, 944), (945, 998), (999, 1054), (1055, 1108), (1109, 1166), (1167, 1220), (1221, 1274), (1275, 1316), (1317, 1364), (1365, 1418), (1419, 1466), (1467, 1516), (1517, 1568), (1569, 1624), (1625, 1678), (1679, 1726), (1727, 1780), (1781, 1834), (1835, 1888), (1889, 1946), (1947, 1990), (1991, 2044), (2045, 2096), (2097, 2146), (2147, 2200), (2201, 2236), (2237, 2294), (2295, 2350), (2351, 2408), (2409, 2456), (2457, 2504), (2505, 2560), (2561, 2614), (2615, 2666), (2667, 2720), (2721, 2776), (2777, 2834), (2835, 2890), (2891, 2944), (2945, 2996), (2997, 3028), (3029, 3080), (3081, 3136), (3137, 3194), (3195, 3248), (3249, 3286), (3287, 3306), (3362, 3418), (3419, 3459), (3468, 3487), (3584, 3606), (3610, 3641), (3645, 3667), (3698, 3754), (3755, 3796), (3797, 3814), (3887, 3938), (3939, 3944), (3993, 4028), (4046, 4050), (4056, 4108), (4109, 4156), (4157, 4173), (4232, 4282), (4335, 4384), (4385, 4430), (4431, 4451), (4459, 4475), (4617, 4660), (4661, 4674), (4802, 4858), (4859, 4862), (4913, 4917), (5043, 5096), (5097, 5100), (5103, 5111), (5120, 5176), (5177, 5177), (5202, 5202), (5324, 5380), (5381, 5381), (5488, 5540), (5541, 5545), (5547, 5548), (5589, 5604), (5618, 5648), (5649, 5682), (5776, 5806), (5807, 5864), (5865, 5888), (6075, 6126), (6144, 6200), (6201, 6201), (6348, 6400), (6401, 6405), (6517, 6548), (6549, 6555), (6561, 6574), (6591, 6618), (6627, 6676), (6677, 6704), (6727, 6776), (6777, 6781), (6859, 6914), (6915, 6932), (7203, 7250), (7251, 7260), (7406, 7450), (7451, 7453), (7546, 7557), (7581, 7603), (7935, 7990), (7991, 7999), (8019, 8043), (8214, 8249), (8427, 8462), (8464, 8484), (8750, 8804), (8805, 8807), (8836, 8845), (9245, 9273), (9522, 9534), (9604, 9658), (9659, 9661), (10051, 10057), (10086, 10108), (10240, 10263), (10580, 10624), (10625, 10637), (10648, 10682), (10952, 11006), (11007, 11009), (11094, 11102), (11109, 11150), (11151, 11151), (11250, 11300), (11301, 11307), (11664, 11695), (12005, 12036), (12321, 12345), (12500, 12550), (13125, 13178), (13179, 13179), (13182, 13182), (13310, 13311), (13454, 13505), (13718, 13747), (14415, 14463), (14792, 14796), (15379, 15433), (16384, 16394), (16428, 16441), (16810, 16844), (16845, 16867), (17303, 17355), (18491, 18538), (18539, 18547), (19208, 19264), (19265, 19265), (19663, 19718), (19719, 19720), (20535, 20537), (20577, 20592), (21870, 21920), (21921, 21932), (24010, 24015), (24037, 24086), (24087, 24094), (24334, 24356), (24576, 24622), (25289, 25318), (25319, 25338), (26411, 26421), (28125, 28147), (28577, 28618), (28717, 28729), (30926, 30956), (31250, 31270), (32805, 32825), (34391, 34432), (36517, 36554), (36555, 36558), (37553, 37557), (39326, 39361), (39366, 39383), (49152, 49187), (327701, 327737)]

theorem row058_bounds_eq : row058.goods.map goodSegmentBounds = row058_bounds := by
  rfl

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row058_bounds_eq

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row058_layer000_intervals : List ColouredInterval :=
  [(2, 3328, 3385), (2, 3584, 3641), (2, 4096, 4153), (2, 4608, 4665), (2, 5120, 5177), (2, 5632, 5689), (2, 6144, 6201), (2, 4096, 4153), (2, 5120, 5177), (2, 6144, 6201), (2, 4096, 4153), (2, 6144, 6201), (2, 4096, 4153), (3, 3402, 3459), (3, 3645, 3702), (3, 3888, 3945), (3, 4131, 4188), (3, 4374, 4431), (3, 4617, 4674), (3, 4860, 4917), (3, 5103, 5160), (3, 5346, 5403), (3, 5589, 5646), (3, 5832, 5889), (3, 6075, 6132), (3, 6318, 6375), (3, 3645, 3702), (3, 4374, 4431), (3, 5103, 5160), (3, 5832, 5889), (3, 6561, 6611), (3, 4374, 4431), (3, 6561, 6611), (3, 6561, 6611), (5, 3306, 3307), (5, 3750, 3807), (5, 4375, 4432), (5, 5000, 5057), (5, 5625, 5682), (5, 6250, 6307), (5, 6250, 6307), (7, 3430, 3487), (7, 3773, 3830), (7, 4116, 4173), (7, 4459, 4516), (7, 4802, 4859), (7, 5145, 5202), (7, 5488, 5545), (7, 5831, 5888), (7, 6174, 6231), (7, 6517, 6574), (7, 4802, 4859), (11, 3993, 4050), (11, 5324, 5381), (13, 3380, 3437), (13, 3549, 3606), (13, 3718, 3775), (13, 3887, 3944), (13, 4056, 4113), (13, 4225, 4282), (13, 4394, 4451), (13, 4394, 4451), (13, 6591, 6611), (17, 3468, 3525), (17, 3757, 3814), (17, 4046, 4103), (17, 4335, 4392), (17, 4624, 4681), (17, 4913, 4970), (17, 5202, 5259), (17, 5491, 5548), (17, 5780, 5837), (17, 6069, 6126), (17, 6358, 6415), (17, 4913, 4970), (19, 3306, 3306), (19, 3610, 3667), (19, 3971, 4028), (19, 4332, 4389), (19, 4693, 4750), (19, 5054, 5111), (19, 5415, 5472), (19, 5776, 5833), (19, 6137, 6194), (19, 6498, 6555), (23, 3703, 3760), (23, 4232, 4289), (23, 4761, 4818), (23, 5290, 5347), (23, 5819, 5876), (23, 6348, 6405), (31, 3844, 3901), (31, 4805, 4862), (31, 5766, 5823), (37, 4107, 4164), (37, 5476, 5533), (41, 3362, 3419), (41, 5043, 5100), (43, 3698, 3755), (43, 5547, 5604), (47, 4418, 4475), (53, 5618, 5675)]

def row058_layer000_block000 : List ColouredInterval :=
  [(2, 3328, 3385), (2, 3584, 3641), (2, 4096, 4153), (2, 4608, 4665), (2, 5120, 5177), (2, 5632, 5689), (2, 6144, 6201), (2, 4096, 4153), (2, 5120, 5177), (2, 6144, 6201), (2, 4096, 4153), (2, 6144, 6201), (2, 4096, 4153), (3, 3402, 3459), (3, 3645, 3702), (3, 3888, 3945)]

def row058_layer000_block001 : List ColouredInterval :=
  [(3, 4131, 4188), (3, 4374, 4431), (3, 4617, 4674), (3, 4860, 4917), (3, 5103, 5160), (3, 5346, 5403), (3, 5589, 5646), (3, 5832, 5889), (3, 6075, 6132), (3, 6318, 6375), (3, 3645, 3702), (3, 4374, 4431), (3, 5103, 5160), (3, 5832, 5889), (3, 6561, 6611), (3, 4374, 4431)]

def row058_layer000_block002 : List ColouredInterval :=
  [(3, 6561, 6611), (3, 6561, 6611), (5, 3306, 3307), (5, 3750, 3807), (5, 4375, 4432), (5, 5000, 5057), (5, 5625, 5682), (5, 6250, 6307), (5, 6250, 6307), (7, 3430, 3487), (7, 3773, 3830), (7, 4116, 4173), (7, 4459, 4516), (7, 4802, 4859), (7, 5145, 5202), (7, 5488, 5545)]

def row058_layer000_block003 : List ColouredInterval :=
  [(7, 5831, 5888), (7, 6174, 6231), (7, 6517, 6574), (7, 4802, 4859), (11, 3993, 4050), (11, 5324, 5381), (13, 3380, 3437), (13, 3549, 3606), (13, 3718, 3775), (13, 3887, 3944), (13, 4056, 4113), (13, 4225, 4282), (13, 4394, 4451), (13, 4394, 4451), (13, 6591, 6611), (17, 3468, 3525)]

def row058_layer000_block004 : List ColouredInterval :=
  [(17, 3757, 3814), (17, 4046, 4103), (17, 4335, 4392), (17, 4624, 4681), (17, 4913, 4970), (17, 5202, 5259), (17, 5491, 5548), (17, 5780, 5837), (17, 6069, 6126), (17, 6358, 6415), (17, 4913, 4970), (19, 3306, 3306), (19, 3610, 3667), (19, 3971, 4028), (19, 4332, 4389), (19, 4693, 4750)]

def row058_layer000_block005 : List ColouredInterval :=
  [(19, 5054, 5111), (19, 5415, 5472), (19, 5776, 5833), (19, 6137, 6194), (19, 6498, 6555), (23, 3703, 3760), (23, 4232, 4289), (23, 4761, 4818), (23, 5290, 5347), (23, 5819, 5876), (23, 6348, 6405), (31, 3844, 3901), (31, 4805, 4862), (31, 5766, 5823), (37, 4107, 4164), (37, 5476, 5533)]

def row058_layer000_block006 : List ColouredInterval :=
  [(41, 3362, 3419), (41, 5043, 5100), (43, 3698, 3755), (43, 5547, 5604), (47, 4418, 4475), (53, 5618, 5675)]

def row058_layer000_chunks : List (List ColouredInterval) :=
  [row058_layer000_block000, row058_layer000_block001, row058_layer000_block002, row058_layer000_block003, row058_layer000_block004, row058_layer000_block005, row058_layer000_block006]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row058_layer000_intervals

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row058_layer000_arithmetic : LayerArithmeticValid row058.height { lower := 3306, upper := 6612, M := 26 } := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row058_layer000_arithmetic

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row058_layer000_enumeration :
    activePowerIntervalList 58 26 3306 6612 = row058_layer000_intervals := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row058_layer000_enumeration

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row058_layer000_pairs000 :
    row058_layer000_block000.all (fun I => row058_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row058_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row058_layer000_pairs000

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row058_layer000_pairs001 :
    row058_layer000_block001.all (fun I => row058_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row058_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row058_layer000_pairs001

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row058_layer000_pairs002 :
    row058_layer000_block002.all (fun I => row058_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row058_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row058_layer000_pairs002

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row058_layer000_pairs003 :
    row058_layer000_block003.all (fun I => row058_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row058_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row058_layer000_pairs003

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row058_layer000_pairs004 :
    row058_layer000_block004.all (fun I => row058_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row058_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row058_layer000_pairs004

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row058_layer000_pairs005 :
    row058_layer000_block005.all (fun I => row058_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row058_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row058_layer000_pairs005

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row058_layer000_pairs006 :
    row058_layer000_block006.all (fun I => row058_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row058_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row058_layer000_pairs006

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row058_layer000_chunks_eq : row058_layer000_chunks.flatten = row058_layer000_intervals := by
  rfl

theorem row058_layer000_pairs : pairCoverCheck row058_layer000_intervals row058_bounds = true := by
  apply pairCoverCheck_of_chunks row058_layer000_chunks_eq
  intro block hblock
  simp only [row058_layer000_chunks, List.mem_cons, List.mem_nil_iff, or_false] at hblock
  rcases hblock with rfl | rfl | rfl | rfl | rfl | rfl | rfl
  · exact row058_layer000_pairs000
  · exact row058_layer000_pairs001
  · exact row058_layer000_pairs002
  · exact row058_layer000_pairs003
  · exact row058_layer000_pairs004
  · exact row058_layer000_pairs005
  · exact row058_layer000_pairs006

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row058_layer000_chunks_eq
#print axioms B699LowIndex.LowIndexLean513dc7cc.row058_layer000_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row058_layer000_checked :
    coverLayerCheck row058.height row058.goods { lower := 3306, upper := 6612, M := 26 } = true := by
  exact coverLayerCheck_of_parts row058_layer000_arithmetic row058_layer000_enumeration row058_bounds_eq row058_layer000_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row058_layer000_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row058_layer001_intervals : List ColouredInterval :=
  [(2, 7168, 7225), (2, 8192, 8249), (2, 9216, 9273), (2, 10240, 10297), (2, 11264, 11321), (2, 8192, 8249), (2, 10240, 10297), (2, 12288, 12345), (2, 8192, 8249), (2, 12288, 12345), (2, 8192, 8249), (3, 6612, 6618), (3, 7290, 7347), (3, 8019, 8076), (3, 8748, 8805), (3, 9477, 9534), (3, 10206, 10263), (3, 10935, 10992), (3, 11664, 11721), (3, 12393, 12450), (3, 13122, 13179), (3, 6612, 6618), (3, 8748, 8805), (3, 10935, 10992), (3, 13122, 13179), (3, 6612, 6618), (3, 13122, 13179), (5, 6875, 6932), (5, 7500, 7557), (5, 8125, 8182), (5, 8750, 8807), (5, 9375, 9432), (5, 10000, 10057), (5, 10625, 10682), (5, 11250, 11307), (5, 11875, 11932), (5, 12500, 12557), (5, 13125, 13182), (5, 9375, 9432), (5, 12500, 12557), (7, 6860, 6917), (7, 7203, 7260), (7, 7546, 7603), (7, 7889, 7946), (7, 7203, 7260), (7, 9604, 9661), (7, 12005, 12062), (11, 6655, 6712), (11, 7986, 8043), (11, 9317, 9374), (11, 10648, 10705), (11, 11979, 12036), (13, 6612, 6648), (13, 8788, 8845), (13, 10985, 11042), (13, 13182, 13223), (17, 6647, 6704), (17, 9826, 9883), (19, 6859, 6916), (19, 7220, 7277), (19, 7581, 7638), (19, 7942, 7999), (19, 8303, 8360), (19, 6859, 6916), (23, 6877, 6934), (23, 7406, 7463), (23, 7935, 7992), (23, 8464, 8521), (23, 8993, 9050), (23, 9522, 9579), (23, 10051, 10108), (23, 10580, 10637), (23, 11109, 11166), (23, 11638, 11695), (23, 12167, 12224), (23, 12167, 12224), (31, 6727, 6784), (31, 7688, 7745), (31, 8649, 8706), (31, 9610, 9667), (31, 10571, 10628), (31, 11532, 11589), (31, 12493, 12550), (37, 6845, 6902), (37, 8214, 8271), (37, 9583, 9640), (37, 10952, 11009), (37, 12321, 12378), (41, 6724, 6781), (41, 8405, 8462), (41, 10086, 10143), (41, 11767, 11824), (43, 7396, 7453), (43, 9245, 9302), (43, 11094, 11151), (43, 12943, 13000), (47, 6627, 6684), (47, 8836, 8893), (47, 11045, 11102), (53, 8427, 8484), (53, 11236, 11293)]

def row058_layer001_block000 : List ColouredInterval :=
  [(2, 7168, 7225), (2, 8192, 8249), (2, 9216, 9273), (2, 10240, 10297), (2, 11264, 11321), (2, 8192, 8249), (2, 10240, 10297), (2, 12288, 12345), (2, 8192, 8249), (2, 12288, 12345), (2, 8192, 8249), (3, 6612, 6618), (3, 7290, 7347), (3, 8019, 8076), (3, 8748, 8805), (3, 9477, 9534)]

def row058_layer001_block001 : List ColouredInterval :=
  [(3, 10206, 10263), (3, 10935, 10992), (3, 11664, 11721), (3, 12393, 12450), (3, 13122, 13179), (3, 6612, 6618), (3, 8748, 8805), (3, 10935, 10992), (3, 13122, 13179), (3, 6612, 6618), (3, 13122, 13179), (5, 6875, 6932), (5, 7500, 7557), (5, 8125, 8182), (5, 8750, 8807), (5, 9375, 9432)]

def row058_layer001_block002 : List ColouredInterval :=
  [(5, 10000, 10057), (5, 10625, 10682), (5, 11250, 11307), (5, 11875, 11932), (5, 12500, 12557), (5, 13125, 13182), (5, 9375, 9432), (5, 12500, 12557), (7, 6860, 6917), (7, 7203, 7260), (7, 7546, 7603), (7, 7889, 7946), (7, 7203, 7260), (7, 9604, 9661), (7, 12005, 12062), (11, 6655, 6712)]

def row058_layer001_block003 : List ColouredInterval :=
  [(11, 7986, 8043), (11, 9317, 9374), (11, 10648, 10705), (11, 11979, 12036), (13, 6612, 6648), (13, 8788, 8845), (13, 10985, 11042), (13, 13182, 13223), (17, 6647, 6704), (17, 9826, 9883), (19, 6859, 6916), (19, 7220, 7277), (19, 7581, 7638), (19, 7942, 7999), (19, 8303, 8360), (19, 6859, 6916)]

def row058_layer001_block004 : List ColouredInterval :=
  [(23, 6877, 6934), (23, 7406, 7463), (23, 7935, 7992), (23, 8464, 8521), (23, 8993, 9050), (23, 9522, 9579), (23, 10051, 10108), (23, 10580, 10637), (23, 11109, 11166), (23, 11638, 11695), (23, 12167, 12224), (23, 12167, 12224), (31, 6727, 6784), (31, 7688, 7745), (31, 8649, 8706), (31, 9610, 9667)]

def row058_layer001_block005 : List ColouredInterval :=
  [(31, 10571, 10628), (31, 11532, 11589), (31, 12493, 12550), (37, 6845, 6902), (37, 8214, 8271), (37, 9583, 9640), (37, 10952, 11009), (37, 12321, 12378), (41, 6724, 6781), (41, 8405, 8462), (41, 10086, 10143), (41, 11767, 11824), (43, 7396, 7453), (43, 9245, 9302), (43, 11094, 11151), (43, 12943, 13000)]

def row058_layer001_block006 : List ColouredInterval :=
  [(47, 6627, 6684), (47, 8836, 8893), (47, 11045, 11102), (53, 8427, 8484), (53, 11236, 11293)]

def row058_layer001_chunks : List (List ColouredInterval) :=
  [row058_layer001_block000, row058_layer001_block001, row058_layer001_block002, row058_layer001_block003, row058_layer001_block004, row058_layer001_block005, row058_layer001_block006]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row058_layer001_intervals

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row058_layer001_arithmetic : LayerArithmeticValid row058.height { lower := 6612, upper := 13224, M := 23 } := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row058_layer001_arithmetic

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row058_layer001_enumeration :
    activePowerIntervalList 58 23 6612 13224 = row058_layer001_intervals := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row058_layer001_enumeration

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row058_layer001_pairs000 :
    row058_layer001_block000.all (fun I => row058_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row058_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row058_layer001_pairs000

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row058_layer001_pairs001 :
    row058_layer001_block001.all (fun I => row058_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row058_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row058_layer001_pairs001

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row058_layer001_pairs002 :
    row058_layer001_block002.all (fun I => row058_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row058_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row058_layer001_pairs002

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row058_layer001_pairs003 :
    row058_layer001_block003.all (fun I => row058_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row058_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row058_layer001_pairs003

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row058_layer001_pairs004 :
    row058_layer001_block004.all (fun I => row058_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row058_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row058_layer001_pairs004

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row058_layer001_pairs005 :
    row058_layer001_block005.all (fun I => row058_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row058_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row058_layer001_pairs005

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row058_layer001_pairs006 :
    row058_layer001_block006.all (fun I => row058_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row058_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row058_layer001_pairs006

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row058_layer001_chunks_eq : row058_layer001_chunks.flatten = row058_layer001_intervals := by
  rfl

theorem row058_layer001_pairs : pairCoverCheck row058_layer001_intervals row058_bounds = true := by
  apply pairCoverCheck_of_chunks row058_layer001_chunks_eq
  intro block hblock
  simp only [row058_layer001_chunks, List.mem_cons, List.mem_nil_iff, or_false] at hblock
  rcases hblock with rfl | rfl | rfl | rfl | rfl | rfl | rfl
  · exact row058_layer001_pairs000
  · exact row058_layer001_pairs001
  · exact row058_layer001_pairs002
  · exact row058_layer001_pairs003
  · exact row058_layer001_pairs004
  · exact row058_layer001_pairs005
  · exact row058_layer001_pairs006

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row058_layer001_chunks_eq
#print axioms B699LowIndex.LowIndexLean513dc7cc.row058_layer001_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row058_layer001_checked :
    coverLayerCheck row058.height row058.goods { lower := 6612, upper := 13224, M := 23 } = true := by
  exact coverLayerCheck_of_parts row058_layer001_arithmetic row058_layer001_enumeration row058_bounds_eq row058_layer001_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row058_layer001_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row058_layer002_intervals : List ColouredInterval :=
  [(2, 14336, 14393), (2, 16384, 16441), (2, 18432, 18489), (2, 20480, 20537), (2, 16384, 16441), (2, 20480, 20537), (2, 24576, 24633), (2, 16384, 16441), (2, 24576, 24633), (2, 16384, 16441), (3, 13851, 13908), (3, 14580, 14637), (3, 15309, 15366), (3, 17496, 17553), (3, 19683, 19740), (3, 21870, 21927), (3, 24057, 24114), (3, 26244, 26301), (3, 19683, 19740), (3, 26244, 26301), (3, 19683, 19740), (5, 15625, 15682), (5, 18750, 18807), (5, 21875, 21932), (5, 25000, 25057), (5, 15625, 15682), (7, 14406, 14463), (7, 16807, 16864), (7, 19208, 19265), (7, 21609, 21666), (7, 24010, 24067), (7, 26411, 26447), (7, 16807, 16864), (11, 13310, 13367), (11, 14641, 14698), (11, 15972, 16029), (11, 17303, 17360), (11, 18634, 18691), (11, 19965, 20022), (11, 21296, 21353), (11, 22627, 22684), (11, 23958, 24015), (11, 25289, 25346), (11, 14641, 14698), (13, 13224, 13239), (13, 15379, 15436), (13, 17576, 17633), (13, 19773, 19830), (13, 21970, 22027), (13, 24167, 24224), (13, 26364, 26421), (17, 14739, 14796), (17, 19652, 19709), (17, 24565, 24622), (19, 13718, 13775), (19, 20577, 20634), (23, 24334, 24391), (31, 13454, 13511), (31, 14415, 14472), (31, 15376, 15433), (31, 16337, 16394), (31, 17298, 17355), (31, 18259, 18316), (31, 19220, 19277), (37, 13690, 13747), (37, 15059, 15116), (37, 16428, 16485), (37, 17797, 17854), (37, 19166, 19223), (37, 20535, 20592), (37, 21904, 21961), (37, 23273, 23330), (37, 24642, 24699), (37, 26011, 26068), (41, 13448, 13505), (41, 15129, 15186), (41, 16810, 16867), (41, 18491, 18548), (41, 20172, 20229), (41, 21853, 21910), (41, 23534, 23591), (41, 25215, 25272), (43, 14792, 14849), (43, 16641, 16698), (43, 18490, 18547), (43, 20339, 20396), (43, 22188, 22245), (43, 24037, 24094), (43, 25886, 25943), (47, 13254, 13311), (47, 15463, 15520), (47, 17672, 17729), (47, 19881, 19938), (47, 22090, 22147), (47, 24299, 24356), (53, 14045, 14102), (53, 16854, 16911), (53, 19663, 19720), (53, 22472, 22529), (53, 25281, 25338)]

def row058_layer002_block000 : List ColouredInterval :=
  [(2, 14336, 14393), (2, 16384, 16441), (2, 18432, 18489), (2, 20480, 20537), (2, 16384, 16441), (2, 20480, 20537), (2, 24576, 24633), (2, 16384, 16441), (2, 24576, 24633), (2, 16384, 16441), (3, 13851, 13908), (3, 14580, 14637), (3, 15309, 15366), (3, 17496, 17553), (3, 19683, 19740), (3, 21870, 21927)]

def row058_layer002_block001 : List ColouredInterval :=
  [(3, 24057, 24114), (3, 26244, 26301), (3, 19683, 19740), (3, 26244, 26301), (3, 19683, 19740), (5, 15625, 15682), (5, 18750, 18807), (5, 21875, 21932), (5, 25000, 25057), (5, 15625, 15682), (7, 14406, 14463), (7, 16807, 16864), (7, 19208, 19265), (7, 21609, 21666), (7, 24010, 24067), (7, 26411, 26447)]

def row058_layer002_block002 : List ColouredInterval :=
  [(7, 16807, 16864), (11, 13310, 13367), (11, 14641, 14698), (11, 15972, 16029), (11, 17303, 17360), (11, 18634, 18691), (11, 19965, 20022), (11, 21296, 21353), (11, 22627, 22684), (11, 23958, 24015), (11, 25289, 25346), (11, 14641, 14698), (13, 13224, 13239), (13, 15379, 15436), (13, 17576, 17633), (13, 19773, 19830)]

def row058_layer002_block003 : List ColouredInterval :=
  [(13, 21970, 22027), (13, 24167, 24224), (13, 26364, 26421), (17, 14739, 14796), (17, 19652, 19709), (17, 24565, 24622), (19, 13718, 13775), (19, 20577, 20634), (23, 24334, 24391), (31, 13454, 13511), (31, 14415, 14472), (31, 15376, 15433), (31, 16337, 16394), (31, 17298, 17355), (31, 18259, 18316), (31, 19220, 19277)]

def row058_layer002_block004 : List ColouredInterval :=
  [(37, 13690, 13747), (37, 15059, 15116), (37, 16428, 16485), (37, 17797, 17854), (37, 19166, 19223), (37, 20535, 20592), (37, 21904, 21961), (37, 23273, 23330), (37, 24642, 24699), (37, 26011, 26068), (41, 13448, 13505), (41, 15129, 15186), (41, 16810, 16867), (41, 18491, 18548), (41, 20172, 20229), (41, 21853, 21910)]

def row058_layer002_block005 : List ColouredInterval :=
  [(41, 23534, 23591), (41, 25215, 25272), (43, 14792, 14849), (43, 16641, 16698), (43, 18490, 18547), (43, 20339, 20396), (43, 22188, 22245), (43, 24037, 24094), (43, 25886, 25943), (47, 13254, 13311), (47, 15463, 15520), (47, 17672, 17729), (47, 19881, 19938), (47, 22090, 22147), (47, 24299, 24356), (53, 14045, 14102)]

def row058_layer002_block006 : List ColouredInterval :=
  [(53, 16854, 16911), (53, 19663, 19720), (53, 22472, 22529), (53, 25281, 25338)]

def row058_layer002_chunks : List (List ColouredInterval) :=
  [row058_layer002_block000, row058_layer002_block001, row058_layer002_block002, row058_layer002_block003, row058_layer002_block004, row058_layer002_block005, row058_layer002_block006]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row058_layer002_intervals

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row058_layer002_arithmetic : LayerArithmeticValid row058.height { lower := 13224, upper := 26448, M := 20 } := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row058_layer002_arithmetic

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row058_layer002_enumeration :
    activePowerIntervalList 58 20 13224 26448 = row058_layer002_intervals := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row058_layer002_enumeration

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row058_layer002_pairs000 :
    row058_layer002_block000.all (fun I => row058_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row058_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row058_layer002_pairs000

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row058_layer002_pairs001 :
    row058_layer002_block001.all (fun I => row058_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row058_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row058_layer002_pairs001

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row058_layer002_pairs002 :
    row058_layer002_block002.all (fun I => row058_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row058_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row058_layer002_pairs002

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row058_layer002_pairs003 :
    row058_layer002_block003.all (fun I => row058_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row058_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row058_layer002_pairs003

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row058_layer002_pairs004 :
    row058_layer002_block004.all (fun I => row058_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row058_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row058_layer002_pairs004

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row058_layer002_pairs005 :
    row058_layer002_block005.all (fun I => row058_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row058_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row058_layer002_pairs005

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row058_layer002_pairs006 :
    row058_layer002_block006.all (fun I => row058_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row058_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row058_layer002_pairs006

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row058_layer002_chunks_eq : row058_layer002_chunks.flatten = row058_layer002_intervals := by
  rfl

theorem row058_layer002_pairs : pairCoverCheck row058_layer002_intervals row058_bounds = true := by
  apply pairCoverCheck_of_chunks row058_layer002_chunks_eq
  intro block hblock
  simp only [row058_layer002_chunks, List.mem_cons, List.mem_nil_iff, or_false] at hblock
  rcases hblock with rfl | rfl | rfl | rfl | rfl | rfl | rfl
  · exact row058_layer002_pairs000
  · exact row058_layer002_pairs001
  · exact row058_layer002_pairs002
  · exact row058_layer002_pairs003
  · exact row058_layer002_pairs004
  · exact row058_layer002_pairs005
  · exact row058_layer002_pairs006

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row058_layer002_chunks_eq
#print axioms B699LowIndex.LowIndexLean513dc7cc.row058_layer002_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row058_layer002_checked :
    coverLayerCheck row058.height row058.goods { lower := 13224, upper := 26448, M := 20 } = true := by
  exact coverLayerCheck_of_parts row058_layer002_arithmetic row058_layer002_enumeration row058_bounds_eq row058_layer002_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row058_layer002_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row058_layer003_intervals : List ColouredInterval :=
  [(2, 28672, 28729), (2, 32768, 32825), (2, 36864, 36921), (2, 32768, 32825), (2, 40960, 41017), (2, 49152, 49209), (2, 32768, 32825), (2, 49152, 49209), (2, 32768, 32825), (3, 28431, 28488), (3, 30618, 30675), (3, 32805, 32862), (3, 34992, 35049), (3, 37179, 37236), (3, 39366, 39423), (3, 32805, 32862), (3, 39366, 39423), (3, 45927, 45984), (3, 52488, 52545), (3, 39366, 39423), (5, 28125, 28182), (5, 31250, 31307), (5, 34375, 34432), (5, 37500, 37557), (5, 40625, 40682), (5, 43750, 43807), (5, 46875, 46932), (5, 50000, 50057), (5, 31250, 31307), (5, 46875, 46932), (7, 26448, 26468), (7, 28812, 28869), (7, 31213, 31270), (7, 33614, 33671), (7, 36015, 36072), (7, 38416, 38473), (7, 40817, 40874), (7, 43218, 43275), (7, 33614, 33671), (7, 50421, 50478), (11, 29282, 29339), (11, 43923, 43980), (13, 28561, 28618), (13, 30758, 30815), (13, 32955, 33012), (13, 35152, 35209), (13, 37349, 37406), (13, 39546, 39603), (13, 28561, 28618), (17, 29478, 29535), (17, 34391, 34448), (17, 39304, 39361), (17, 44217, 44274), (17, 49130, 49187), (19, 27436, 27493), (19, 34295, 34352), (19, 41154, 41211), (19, 48013, 48070), (23, 36501, 36558), (23, 48668, 48725), (31, 29791, 29848), (37, 50653, 50710), (41, 26896, 26953), (41, 28577, 28634), (41, 30258, 30315), (43, 27735, 27792), (43, 29584, 29641), (43, 31433, 31490), (43, 33282, 33339), (47, 26508, 26565), (47, 28717, 28774), (47, 30926, 30983), (47, 33135, 33192), (47, 35344, 35401), (47, 37553, 37610), (47, 39762, 39819), (53, 28090, 28147), (53, 30899, 30956), (53, 33708, 33765), (53, 36517, 36574), (53, 39326, 39383), (53, 42135, 42192), (53, 44944, 45001), (53, 47753, 47810), (53, 50562, 50619)]

def row058_layer003_block000 : List ColouredInterval :=
  [(2, 28672, 28729), (2, 32768, 32825), (2, 36864, 36921), (2, 32768, 32825), (2, 40960, 41017), (2, 49152, 49209), (2, 32768, 32825), (2, 49152, 49209), (2, 32768, 32825), (3, 28431, 28488), (3, 30618, 30675), (3, 32805, 32862), (3, 34992, 35049), (3, 37179, 37236), (3, 39366, 39423), (3, 32805, 32862)]

def row058_layer003_block001 : List ColouredInterval :=
  [(3, 39366, 39423), (3, 45927, 45984), (3, 52488, 52545), (3, 39366, 39423), (5, 28125, 28182), (5, 31250, 31307), (5, 34375, 34432), (5, 37500, 37557), (5, 40625, 40682), (5, 43750, 43807), (5, 46875, 46932), (5, 50000, 50057), (5, 31250, 31307), (5, 46875, 46932), (7, 26448, 26468), (7, 28812, 28869)]

def row058_layer003_block002 : List ColouredInterval :=
  [(7, 31213, 31270), (7, 33614, 33671), (7, 36015, 36072), (7, 38416, 38473), (7, 40817, 40874), (7, 43218, 43275), (7, 33614, 33671), (7, 50421, 50478), (11, 29282, 29339), (11, 43923, 43980), (13, 28561, 28618), (13, 30758, 30815), (13, 32955, 33012), (13, 35152, 35209), (13, 37349, 37406), (13, 39546, 39603)]

def row058_layer003_block003 : List ColouredInterval :=
  [(13, 28561, 28618), (17, 29478, 29535), (17, 34391, 34448), (17, 39304, 39361), (17, 44217, 44274), (17, 49130, 49187), (19, 27436, 27493), (19, 34295, 34352), (19, 41154, 41211), (19, 48013, 48070), (23, 36501, 36558), (23, 48668, 48725), (31, 29791, 29848), (37, 50653, 50710), (41, 26896, 26953), (41, 28577, 28634)]

def row058_layer003_block004 : List ColouredInterval :=
  [(41, 30258, 30315), (43, 27735, 27792), (43, 29584, 29641), (43, 31433, 31490), (43, 33282, 33339), (47, 26508, 26565), (47, 28717, 28774), (47, 30926, 30983), (47, 33135, 33192), (47, 35344, 35401), (47, 37553, 37610), (47, 39762, 39819), (53, 28090, 28147), (53, 30899, 30956), (53, 33708, 33765), (53, 36517, 36574)]

def row058_layer003_block005 : List ColouredInterval :=
  [(53, 39326, 39383), (53, 42135, 42192), (53, 44944, 45001), (53, 47753, 47810), (53, 50562, 50619)]

def row058_layer003_chunks : List (List ColouredInterval) :=
  [row058_layer003_block000, row058_layer003_block001, row058_layer003_block002, row058_layer003_block003, row058_layer003_block004, row058_layer003_block005]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row058_layer003_intervals

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row058_layer003_arithmetic : LayerArithmeticValid row058.height { lower := 26448, upper := 52896, M := 18 } := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row058_layer003_arithmetic

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row058_layer003_enumeration :
    activePowerIntervalList 58 18 26448 52896 = row058_layer003_intervals := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row058_layer003_enumeration

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row058_layer003_pairs000 :
    row058_layer003_block000.all (fun I => row058_layer003_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row058_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row058_layer003_pairs000

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row058_layer003_pairs001 :
    row058_layer003_block001.all (fun I => row058_layer003_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row058_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row058_layer003_pairs001

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row058_layer003_pairs002 :
    row058_layer003_block002.all (fun I => row058_layer003_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row058_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row058_layer003_pairs002

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row058_layer003_pairs003 :
    row058_layer003_block003.all (fun I => row058_layer003_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row058_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row058_layer003_pairs003

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row058_layer003_pairs004 :
    row058_layer003_block004.all (fun I => row058_layer003_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row058_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row058_layer003_pairs004

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row058_layer003_pairs005 :
    row058_layer003_block005.all (fun I => row058_layer003_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row058_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row058_layer003_pairs005

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row058_layer003_chunks_eq : row058_layer003_chunks.flatten = row058_layer003_intervals := by
  rfl

theorem row058_layer003_pairs : pairCoverCheck row058_layer003_intervals row058_bounds = true := by
  apply pairCoverCheck_of_chunks row058_layer003_chunks_eq
  intro block hblock
  simp only [row058_layer003_chunks, List.mem_cons, List.mem_nil_iff, or_false] at hblock
  rcases hblock with rfl | rfl | rfl | rfl | rfl | rfl
  · exact row058_layer003_pairs000
  · exact row058_layer003_pairs001
  · exact row058_layer003_pairs002
  · exact row058_layer003_pairs003
  · exact row058_layer003_pairs004
  · exact row058_layer003_pairs005

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row058_layer003_chunks_eq
#print axioms B699LowIndex.LowIndexLean513dc7cc.row058_layer003_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row058_layer003_checked :
    coverLayerCheck row058.height row058.goods { lower := 26448, upper := 52896, M := 18 } = true := by
  exact coverLayerCheck_of_parts row058_layer003_arithmetic row058_layer003_enumeration row058_bounds_eq row058_layer003_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row058_layer003_checked

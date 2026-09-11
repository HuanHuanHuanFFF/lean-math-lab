import research.tasks.«B699-Binomial».runs.«20260909-low-index-structure-b41a5a63».lean.FiniteCover
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.WitnessBridge
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.LayerParts
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.PairChunks

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row088_height : HeightCertificateDatum := { i := 88, r := 29, s := 61, n0Power10 := 9 }

def row088_goods : List GoodSegment := [
  { lower := 178, upper := 260, witness := RowWitness.topPrime 173 },
  { lower := 261, upper := 344, witness := RowWitness.topPrime 257 },
  { lower := 345, upper := 424, witness := RowWitness.topPrime 337 },
  { lower := 425, upper := 508, witness := RowWitness.topPrime 421 },
  { lower := 509, upper := 596, witness := RowWitness.topPrime 509 },
  { lower := 597, upper := 680, witness := RowWitness.topPrime 593 },
  { lower := 681, upper := 764, witness := RowWitness.topPrime 677 },
  { lower := 765, upper := 848, witness := RowWitness.topPrime 761 },
  { lower := 849, upper := 926, witness := RowWitness.topPrime 839 },
  { lower := 927, upper := 1006, witness := RowWitness.topPrime 919 },
  { lower := 1007, upper := 1084, witness := RowWitness.topPrime 997 },
  { lower := 1085, upper := 1156, witness := RowWitness.topPrime 1069 },
  { lower := 1157, upper := 1240, witness := RowWitness.topPrime 1153 },
  { lower := 1241, upper := 1324, witness := RowWitness.topPrime 1237 },
  { lower := 1325, upper := 1408, witness := RowWitness.topPrime 1321 },
  { lower := 1409, upper := 1496, witness := RowWitness.topPrime 1409 },
  { lower := 1497, upper := 1580, witness := RowWitness.topPrime 1493 },
  { lower := 1581, upper := 1666, witness := RowWitness.topPrime 1579 },
  { lower := 1667, upper := 1754, witness := RowWitness.topPrime 1667 },
  { lower := 1755, upper := 1840, witness := RowWitness.topPrime 1753 },
  { lower := 1841, upper := 1918, witness := RowWitness.topPrime 1831 },
  { lower := 1919, upper := 2000, witness := RowWitness.topPrime 1913 },
  { lower := 2001, upper := 2086, witness := RowWitness.topPrime 1999 },
  { lower := 2087, upper := 2174, witness := RowWitness.topPrime 2087 },
  { lower := 2175, upper := 2248, witness := RowWitness.topPrime 2161 },
  { lower := 2249, upper := 2330, witness := RowWitness.topPrime 2243 },
  { lower := 2331, upper := 2398, witness := RowWitness.topPrime 2311 },
  { lower := 2399, upper := 2486, witness := RowWitness.topPrime 2399 },
  { lower := 2487, upper := 2564, witness := RowWitness.topPrime 2477 },
  { lower := 2565, upper := 2644, witness := RowWitness.topPrime 2557 },
  { lower := 2645, upper := 2720, witness := RowWitness.topPrime 2633 },
  { lower := 2721, upper := 2806, witness := RowWitness.topPrime 2719 },
  { lower := 2807, upper := 2890, witness := RowWitness.topPrime 2803 },
  { lower := 2891, upper := 2974, witness := RowWitness.topPrime 2887 },
  { lower := 2975, upper := 3058, witness := RowWitness.topPrime 2971 },
  { lower := 3059, upper := 3136, witness := RowWitness.topPrime 3049 },
  { lower := 3137, upper := 3224, witness := RowWitness.topPrime 3137 },
  { lower := 3225, upper := 3308, witness := RowWitness.topPrime 3221 },
  { lower := 3309, upper := 3394, witness := RowWitness.topPrime 3307 },
  { lower := 3395, upper := 3478, witness := RowWitness.topPrime 3391 },
  { lower := 3479, upper := 3556, witness := RowWitness.topPrime 3469 },
  { lower := 3557, upper := 3644, witness := RowWitness.topPrime 3557 },
  { lower := 3645, upper := 3730, witness := RowWitness.topPrime 3643 },
  { lower := 3731, upper := 3814, witness := RowWitness.topPrime 3727 },
  { lower := 3815, upper := 3890, witness := RowWitness.topPrime 3803 },
  { lower := 3891, upper := 3976, witness := RowWitness.topPrime 3889 },
  { lower := 3977, upper := 4054, witness := RowWitness.topPrime 3967 },
  { lower := 4055, upper := 4138, witness := RowWitness.topPrime 4051 },
  { lower := 4139, upper := 4226, witness := RowWitness.topPrime 4139 },
  { lower := 4227, upper := 4306, witness := RowWitness.topPrime 4219 },
  { lower := 4307, upper := 4384, witness := RowWitness.topPrime 4297 },
  { lower := 4385, upper := 4460, witness := RowWitness.topPrime 4373 },
  { lower := 4461, upper := 4544, witness := RowWitness.topPrime 4457 },
  { lower := 4545, upper := 4610, witness := RowWitness.topPrime 4523 },
  { lower := 4611, upper := 4690, witness := RowWitness.topPrime 4603 },
  { lower := 4691, upper := 4778, witness := RowWitness.topPrime 4691 },
  { lower := 4779, upper := 4846, witness := RowWitness.topPrime 4759 },
  { lower := 4847, upper := 4918, witness := RowWitness.topPrime 4831 },
  { lower := 4919, upper := 5006, witness := RowWitness.topPrime 4919 },
  { lower := 5007, upper := 5090, witness := RowWitness.topPrime 5003 },
  { lower := 5091, upper := 5174, witness := RowWitness.topPrime 5087 },
  { lower := 5175, upper := 5258, witness := RowWitness.topPrime 5171 },
  { lower := 5259, upper := 5324, witness := RowWitness.topPrime 5237 },
  { lower := 5325, upper := 5410, witness := RowWitness.topPrime 5323 },
  { lower := 5411, upper := 5494, witness := RowWitness.topPrime 5407 },
  { lower := 5495, upper := 5570, witness := RowWitness.topPrime 5483 },
  { lower := 5571, upper := 5656, witness := RowWitness.topPrime 5569 },
  { lower := 5657, upper := 5744, witness := RowWitness.topPrime 5657 },
  { lower := 5745, upper := 5830, witness := RowWitness.topPrime 5743 },
  { lower := 5831, upper := 5914, witness := RowWitness.topPrime 5827 },
  { lower := 5915, upper := 5990, witness := RowWitness.topPrime 5903 },
  { lower := 5991, upper := 6074, witness := RowWitness.topPrime 5987 },
  { lower := 6075, upper := 6160, witness := RowWitness.topPrime 6073 },
  { lower := 6161, upper := 6238, witness := RowWitness.topPrime 6151 },
  { lower := 6239, upper := 6316, witness := RowWitness.topPrime 6229 },
  { lower := 6317, upper := 6404, witness := RowWitness.topPrime 6317 },
  { lower := 6405, upper := 6484, witness := RowWitness.topPrime 6397 },
  { lower := 6485, upper := 6568, witness := RowWitness.topPrime 6481 },
  { lower := 6569, upper := 6656, witness := RowWitness.topPrime 6569 },
  { lower := 6657, upper := 6740, witness := RowWitness.topPrime 6653 },
  { lower := 6741, upper := 6824, witness := RowWitness.topPrime 6737 },
  { lower := 6825, upper := 6910, witness := RowWitness.topPrime 6823 },
  { lower := 6911, upper := 6998, witness := RowWitness.topPrime 6911 },
  { lower := 6999, upper := 7084, witness := RowWitness.topPrime 6997 },
  { lower := 7085, upper := 7166, witness := RowWitness.topPrime 7079 },
  { lower := 7167, upper := 7246, witness := RowWitness.topPrime 7159 },
  { lower := 7247, upper := 7334, witness := RowWitness.topPrime 7247 },
  { lower := 7335, upper := 7420, witness := RowWitness.topPrime 7333 },
  { lower := 7421, upper := 7504, witness := RowWitness.topPrime 7417 },
  { lower := 7505, upper := 7586, witness := RowWitness.topPrime 7499 },
  { lower := 7587, upper := 7656, witness := RowWitness.topPrime 7583 },
  { lower := 7935, upper := 8020, witness := RowWitness.topPrime 7933 },
  { lower := 8021, upper := 8029, witness := RowWitness.topPrime 8017 },
  { lower := 8192, upper := 8212, witness := RowWitness.topPrime 8191 },
  { lower := 8214, upper := 8296, witness := RowWitness.topPrime 8209 },
  { lower := 8297, upper := 8301, witness := RowWitness.topPrime 8297 },
  { lower := 8303, upper := 8319, witness := RowWitness.topPrime 8297 },
  { lower := 8410, upper := 8476, witness := RowWitness.topPrime 8389 },
  { lower := 8477, upper := 8514, witness := RowWitness.topPrime 8467 },
  { lower := 8649, upper := 8662, witness := RowWitness.topPrime 8647 },
  { lower := 8664, upper := 8736, witness := RowWitness.topPrime 8663 },
  { lower := 8748, upper := 8834, witness := RowWitness.topPrime 8747 },
  { lower := 8835, upper := 8875, witness := RowWitness.topPrime 8831 },
  { lower := 8993, upper := 9058, witness := RowWitness.topPrime 8971 },
  { lower := 9059, upper := 9080, witness := RowWitness.topPrime 9059 },
  { lower := 9251, upper := 9328, witness := RowWitness.topPrime 9241 },
  { lower := 9329, upper := 9332, witness := RowWitness.topPrime 9323 },
  { lower := 9522, upper := 9564, witness := RowWitness.topPrime 9521 },
  { lower := 9583, upper := 9638, witness := RowWitness.topPrime 9551 },
  { lower := 9639, upper := 9691, witness := RowWitness.topPrime 9631 },
  { lower := 10051, upper := 10126, witness := RowWitness.topPrime 10039 },
  { lower := 10127, upper := 10173, witness := RowWitness.topPrime 10111 },
  { lower := 10580, upper := 10654, witness := RowWitness.topPrime 10567 },
  { lower := 10655, upper := 10712, witness := RowWitness.topPrime 10651 },
  { lower := 10935, upper := 10996, witness := RowWitness.topPrime 10909 },
  { lower := 10997, upper := 11039, witness := RowWitness.topPrime 10993 },
  { lower := 11045, upper := 11072, witness := RowWitness.topPrime 11027 },
  { lower := 11094, upper := 11180, witness := RowWitness.topPrime 11093 },
  { lower := 11181, upper := 11196, witness := RowWitness.topPrime 11177 },
  { lower := 11236, upper := 11300, witness := RowWitness.topPrime 11213 },
  { lower := 11301, upper := 11323, witness := RowWitness.topPrime 11299 },
  { lower := 11664, upper := 11725, witness := RowWitness.topPrime 11657 },
  { lower := 11774, upper := 11830, witness := RowWitness.topPrime 11743 },
  { lower := 11831, upper := 11854, witness := RowWitness.topPrime 11831 },
  { lower := 12321, upper := 12375, witness := RowWitness.topPrime 12301 },
  { lower := 12393, upper := 12408, witness := RowWitness.topPrime 12391 },
  { lower := 12493, upper := 12578, witness := RowWitness.topPrime 12491 },
  { lower := 12579, upper := 12580, witness := RowWitness.topPrime 12577 },
  { lower := 12696, upper := 12702, witness := RowWitness.topPrime 12689 },
  { lower := 13125, upper := 13208, witness := RowWitness.topPrime 13121 },
  { lower := 13209, upper := 13212, witness := RowWitness.topPrime 13187 },
  { lower := 13225, upper := 13306, witness := RowWitness.topPrime 13219 },
  { lower := 13307, upper := 13312, witness := RowWitness.topPrime 13297 },
  { lower := 13454, upper := 13538, witness := RowWitness.topPrime 13451 },
  { lower := 13539, upper := 13543, witness := RowWitness.topPrime 13537 },
  { lower := 13718, upper := 13798, witness := RowWitness.topPrime 13711 },
  { lower := 13799, upper := 13837, witness := RowWitness.topPrime 13799 },
  { lower := 13851, upper := 13865, witness := RowWitness.topPrime 13841 },
  { lower := 13924, upper := 13938, witness := RowWitness.topPrime 13921 },
  { lower := 14375, upper := 14384, witness := RowWitness.topPrime 14369 },
  { lower := 14406, upper := 14488, witness := RowWitness.topPrime 14401 },
  { lower := 14489, upper := 14493, witness := RowWitness.topPrime 14489 },
  { lower := 14641, upper := 14667, witness := RowWitness.topPrime 14639 },
  { lower := 14792, upper := 14826, witness := RowWitness.topPrime 14783 },
  { lower := 15059, upper := 15087, witness := RowWitness.topPrime 15053 },
  { lower := 15123, upper := 15208, witness := RowWitness.topPrime 15121 },
  { lower := 15209, upper := 15216, witness := RowWitness.topPrime 15199 },
  { lower := 15376, upper := 15460, witness := RowWitness.topPrime 15373 },
  { lower := 15461, upper := 15466, witness := RowWitness.topPrime 15461 },
  { lower := 15987, upper := 16060, witness := RowWitness.topPrime 15973 },
  { lower := 16061, upper := 16066, witness := RowWitness.topPrime 16061 },
  { lower := 16384, upper := 16424, witness := RowWitness.topPrime 16381 },
  { lower := 16428, upper := 16471, witness := RowWitness.topPrime 16427 },
  { lower := 16810, upper := 16874, witness := RowWitness.topPrime 16787 },
  { lower := 16875, upper := 16907, witness := RowWitness.topPrime 16871 },
  { lower := 17576, upper := 17583, witness := RowWitness.topPrime 17573 },
  { lower := 18491, upper := 18568, witness := RowWitness.topPrime 18481 },
  { lower := 18569, upper := 18577, witness := RowWitness.topPrime 18553 },
  { lower := 18750, upper := 18810, witness := RowWitness.topPrime 18749 },
  { lower := 19208, upper := 19294, witness := RowWitness.topPrime 19207 },
  { lower := 19295, upper := 19295, witness := RowWitness.topPrime 19289 },
  { lower := 19663, upper := 19748, witness := RowWitness.topPrime 19661 },
  { lower := 19749, upper := 19750, witness := RowWitness.topPrime 19739 },
  { lower := 20172, upper := 20248, witness := RowWitness.topPrime 20161 },
  { lower := 20249, upper := 20251, witness := RowWitness.topPrime 20249 },
  { lower := 20577, upper := 20622, witness := RowWitness.topPrime 20563 },
  { lower := 21870, upper := 21950, witness := RowWitness.topPrime 21863 },
  { lower := 21951, upper := 21962, witness := RowWitness.topPrime 21943 },
  { lower := 21970, upper := 21991, witness := RowWitness.topPrime 21961 },
  { lower := 22472, upper := 22532, witness := RowWitness.topPrime 22469 },
  { lower := 24037, upper := 24116, witness := RowWitness.topPrime 24029 },
  { lower := 24117, upper := 24124, witness := RowWitness.topPrime 24113 },
  { lower := 24334, upper := 24416, witness := RowWitness.topPrime 24329 },
  { lower := 24417, upper := 24454, witness := RowWitness.topPrime 24413 },
  { lower := 24642, upper := 24652, witness := RowWitness.topPrime 24631 },
  { lower := 25000, upper := 25051, witness := RowWitness.topPrime 24989 },
  { lower := 25215, upper := 25276, witness := RowWitness.topPrime 25189 },
  { lower := 25277, upper := 25302, witness := RowWitness.topPrime 25261 },
  { lower := 26047, upper := 26098, witness := RowWitness.topPrime 26041 },
  { lower := 26411, upper := 26451, witness := RowWitness.topPrime 26407 },
  { lower := 26934, upper := 26983, witness := RowWitness.topPrime 26927 },
  { lower := 27436, upper := 27467, witness := RowWitness.topPrime 27431 },
  { lower := 28125, upper := 28177, witness := RowWitness.topPrime 28123 },
  { lower := 28577, upper := 28648, witness := RowWitness.topPrime 28573 },
  { lower := 29791, upper := 29855, witness := RowWitness.topPrime 29789 },
  { lower := 30258, upper := 30333, witness := RowWitness.topPrime 30253 },
  { lower := 30926, upper := 30986, witness := RowWitness.topPrime 30911 },
  { lower := 31213, upper := 31280, witness := RowWitness.topPrime 31193 },
  { lower := 31281, upper := 31300, witness := RowWitness.topPrime 31277 },
  { lower := 31329, upper := 31337, witness := RowWitness.topPrime 31327 },
  { lower := 31433, upper := 31484, witness := RowWitness.topPrime 31397 },
  { lower := 31485, upper := 31510, witness := RowWitness.topPrime 31481 },
  { lower := 32805, upper := 32855, witness := RowWitness.topPrime 32803 },
  { lower := 34375, upper := 34382, witness := RowWitness.topPrime 34369 },
  { lower := 34391, upper := 34468, witness := RowWitness.topPrime 34381 },
  { lower := 34469, upper := 34478, witness := RowWitness.topPrime 34469 },
  { lower := 35344, upper := 35374, witness := RowWitness.topPrime 35339 },
  { lower := 36517, upper := 36584, witness := RowWitness.topPrime 36497 },
  { lower := 36585, upper := 36588, witness := RowWitness.topPrime 36583 },
  { lower := 37210, upper := 37266, witness := RowWitness.topPrime 37201 },
  { lower := 37349, upper := 37390, witness := RowWitness.topPrime 37339 },
  { lower := 37500, upper := 37533, witness := RowWitness.topPrime 37493 },
  { lower := 37553, upper := 37587, witness := RowWitness.topPrime 37549 },
  { lower := 39326, upper := 39410, witness := RowWitness.topPrime 39323 },
  { lower := 39411, upper := 39413, witness := RowWitness.topPrime 39409 },
  { lower := 40401, upper := 40415, witness := RowWitness.topPrime 40387 },
  { lower := 43750, upper := 43774, witness := RowWitness.topPrime 43721 },
  { lower := 44944, upper := 44977, witness := RowWitness.topPrime 44939 },
  { lower := 48013, upper := 48048, witness := RowWitness.topPrime 47981 },
  { lower := 48734, upper := 48755, witness := RowWitness.topPrime 48733 },
  { lower := 48778, upper := 48821, witness := RowWitness.topPrime 48767 },
  { lower := 50000, upper := 50015, witness := RowWitness.topPrime 49999 },
  { lower := 50421, upper := 50497, witness := RowWitness.topPrime 50417 },
  { lower := 59582, upper := 59623, witness := RowWitness.topPrime 59581 },
  { lower := 63948, upper := 63956, witness := RowWitness.topPrime 63929 },
  { lower := 65536, upper := 65608, witness := RowWitness.topPrime 65521 },
  { lower := 65609, upper := 65623, witness := RowWitness.topPrime 65609 },
  { lower := 68651, upper := 68677, witness := RowWitness.topPrime 68639 },
  { lower := 68921, upper := 68977, witness := RowWitness.topPrime 68917 },
  { lower := 137842, upper := 137868, witness := RowWitness.topPrime 137831 },
  { lower := 148955, upper := 148964, witness := RowWitness.topPrime 148949 }
]

def row088_layers : List CoverLayer := [
  { lower := 7656, upper := 15312, M := 25 },
  { lower := 15312, upper := 30624, M := 20 },
  { lower := 30624, upper := 61248, M := 17 },
  { lower := 61248, upper := 122496, M := 14 },
  { lower := 122496, upper := 244992, M := 12 },
  { lower := 244992, upper := 489984, M := 10 },
  { lower := 489984, upper := 979968, M := 8 },
  { lower := 979968, upper := 1959936, M := 7 },
  { lower := 1959936, upper := 3919872, M := 6 },
  { lower := 3919872, upper := 7839744, M := 5 },
  { lower := 7839744, upper := 15679488, M := 4 },
  { lower := 15679488, upper := 31358976, M := 4 },
  { lower := 31358976, upper := 62717952, M := 3 },
  { lower := 62717952, upper := 125435904, M := 3 },
  { lower := 125435904, upper := 250871808, M := 2 },
  { lower := 250871808, upper := 501743616, M := 2 },
  { lower := 501743616, upper := 1000000000, M := 2 }
]

def row088 : FiniteCoverRow := {
  height := row088_height,
  goods := row088_goods,
  layers := row088_layers
}


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row088

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row088_good000_checked :
    goodSegmentCheck 88 29 61
      { lower := 178, upper := 260, witness := RowWitness.topPrime 173 } = true := by
  exact good_top_prime_checked (i := 88) (r := 29) (s := 61) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row088_good001_checked :
    goodSegmentCheck 88 29 61
      { lower := 261, upper := 344, witness := RowWitness.topPrime 257 } = true := by
  exact good_top_prime_checked (i := 88) (r := 29) (s := 61) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row088_good002_checked :
    goodSegmentCheck 88 29 61
      { lower := 345, upper := 424, witness := RowWitness.topPrime 337 } = true := by
  exact good_top_prime_checked (i := 88) (r := 29) (s := 61) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row088_good003_checked :
    goodSegmentCheck 88 29 61
      { lower := 425, upper := 508, witness := RowWitness.topPrime 421 } = true := by
  exact good_top_prime_checked (i := 88) (r := 29) (s := 61) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row088_good004_checked :
    goodSegmentCheck 88 29 61
      { lower := 509, upper := 596, witness := RowWitness.topPrime 509 } = true := by
  exact good_top_prime_checked (i := 88) (r := 29) (s := 61) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row088_good005_checked :
    goodSegmentCheck 88 29 61
      { lower := 597, upper := 680, witness := RowWitness.topPrime 593 } = true := by
  exact good_top_prime_checked (i := 88) (r := 29) (s := 61) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row088_good006_checked :
    goodSegmentCheck 88 29 61
      { lower := 681, upper := 764, witness := RowWitness.topPrime 677 } = true := by
  exact good_top_prime_checked (i := 88) (r := 29) (s := 61) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row088_good007_checked :
    goodSegmentCheck 88 29 61
      { lower := 765, upper := 848, witness := RowWitness.topPrime 761 } = true := by
  exact good_top_prime_checked (i := 88) (r := 29) (s := 61) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row088_good008_checked :
    goodSegmentCheck 88 29 61
      { lower := 849, upper := 926, witness := RowWitness.topPrime 839 } = true := by
  exact good_top_prime_checked (i := 88) (r := 29) (s := 61) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row088_good009_checked :
    goodSegmentCheck 88 29 61
      { lower := 927, upper := 1006, witness := RowWitness.topPrime 919 } = true := by
  exact good_top_prime_checked (i := 88) (r := 29) (s := 61) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row088_good010_checked :
    goodSegmentCheck 88 29 61
      { lower := 1007, upper := 1084, witness := RowWitness.topPrime 997 } = true := by
  exact good_top_prime_checked (i := 88) (r := 29) (s := 61) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row088_good011_checked :
    goodSegmentCheck 88 29 61
      { lower := 1085, upper := 1156, witness := RowWitness.topPrime 1069 } = true := by
  exact good_top_prime_checked (i := 88) (r := 29) (s := 61) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row088_good012_checked :
    goodSegmentCheck 88 29 61
      { lower := 1157, upper := 1240, witness := RowWitness.topPrime 1153 } = true := by
  exact good_top_prime_checked (i := 88) (r := 29) (s := 61) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row088_good013_checked :
    goodSegmentCheck 88 29 61
      { lower := 1241, upper := 1324, witness := RowWitness.topPrime 1237 } = true := by
  exact good_top_prime_checked (i := 88) (r := 29) (s := 61) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row088_good014_checked :
    goodSegmentCheck 88 29 61
      { lower := 1325, upper := 1408, witness := RowWitness.topPrime 1321 } = true := by
  exact good_top_prime_checked (i := 88) (r := 29) (s := 61) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row088_good015_checked :
    goodSegmentCheck 88 29 61
      { lower := 1409, upper := 1496, witness := RowWitness.topPrime 1409 } = true := by
  exact good_top_prime_checked (i := 88) (r := 29) (s := 61) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row088_good000_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row088_good001_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row088_good002_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row088_good003_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row088_good004_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row088_good005_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row088_good006_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row088_good007_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row088_good008_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row088_good009_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row088_good010_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row088_good011_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row088_good012_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row088_good013_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row088_good014_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row088_good015_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row088_good016_checked :
    goodSegmentCheck 88 29 61
      { lower := 1497, upper := 1580, witness := RowWitness.topPrime 1493 } = true := by
  exact good_top_prime_checked (i := 88) (r := 29) (s := 61) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row088_good017_checked :
    goodSegmentCheck 88 29 61
      { lower := 1581, upper := 1666, witness := RowWitness.topPrime 1579 } = true := by
  exact good_top_prime_checked (i := 88) (r := 29) (s := 61) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row088_good018_checked :
    goodSegmentCheck 88 29 61
      { lower := 1667, upper := 1754, witness := RowWitness.topPrime 1667 } = true := by
  exact good_top_prime_checked (i := 88) (r := 29) (s := 61) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row088_good019_checked :
    goodSegmentCheck 88 29 61
      { lower := 1755, upper := 1840, witness := RowWitness.topPrime 1753 } = true := by
  exact good_top_prime_checked (i := 88) (r := 29) (s := 61) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row088_good020_checked :
    goodSegmentCheck 88 29 61
      { lower := 1841, upper := 1918, witness := RowWitness.topPrime 1831 } = true := by
  exact good_top_prime_checked (i := 88) (r := 29) (s := 61) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row088_good021_checked :
    goodSegmentCheck 88 29 61
      { lower := 1919, upper := 2000, witness := RowWitness.topPrime 1913 } = true := by
  exact good_top_prime_checked (i := 88) (r := 29) (s := 61) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row088_good022_checked :
    goodSegmentCheck 88 29 61
      { lower := 2001, upper := 2086, witness := RowWitness.topPrime 1999 } = true := by
  exact good_top_prime_checked (i := 88) (r := 29) (s := 61) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row088_good023_checked :
    goodSegmentCheck 88 29 61
      { lower := 2087, upper := 2174, witness := RowWitness.topPrime 2087 } = true := by
  exact good_top_prime_checked (i := 88) (r := 29) (s := 61) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row088_good024_checked :
    goodSegmentCheck 88 29 61
      { lower := 2175, upper := 2248, witness := RowWitness.topPrime 2161 } = true := by
  exact good_top_prime_checked (i := 88) (r := 29) (s := 61) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row088_good025_checked :
    goodSegmentCheck 88 29 61
      { lower := 2249, upper := 2330, witness := RowWitness.topPrime 2243 } = true := by
  exact good_top_prime_checked (i := 88) (r := 29) (s := 61) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row088_good026_checked :
    goodSegmentCheck 88 29 61
      { lower := 2331, upper := 2398, witness := RowWitness.topPrime 2311 } = true := by
  exact good_top_prime_checked (i := 88) (r := 29) (s := 61) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row088_good027_checked :
    goodSegmentCheck 88 29 61
      { lower := 2399, upper := 2486, witness := RowWitness.topPrime 2399 } = true := by
  exact good_top_prime_checked (i := 88) (r := 29) (s := 61) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row088_good028_checked :
    goodSegmentCheck 88 29 61
      { lower := 2487, upper := 2564, witness := RowWitness.topPrime 2477 } = true := by
  exact good_top_prime_checked (i := 88) (r := 29) (s := 61) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row088_good029_checked :
    goodSegmentCheck 88 29 61
      { lower := 2565, upper := 2644, witness := RowWitness.topPrime 2557 } = true := by
  exact good_top_prime_checked (i := 88) (r := 29) (s := 61) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row088_good030_checked :
    goodSegmentCheck 88 29 61
      { lower := 2645, upper := 2720, witness := RowWitness.topPrime 2633 } = true := by
  exact good_top_prime_checked (i := 88) (r := 29) (s := 61) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row088_good031_checked :
    goodSegmentCheck 88 29 61
      { lower := 2721, upper := 2806, witness := RowWitness.topPrime 2719 } = true := by
  exact good_top_prime_checked (i := 88) (r := 29) (s := 61) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row088_good016_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row088_good017_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row088_good018_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row088_good019_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row088_good020_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row088_good021_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row088_good022_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row088_good023_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row088_good024_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row088_good025_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row088_good026_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row088_good027_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row088_good028_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row088_good029_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row088_good030_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row088_good031_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row088_good032_checked :
    goodSegmentCheck 88 29 61
      { lower := 2807, upper := 2890, witness := RowWitness.topPrime 2803 } = true := by
  exact good_top_prime_checked (i := 88) (r := 29) (s := 61) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row088_good033_checked :
    goodSegmentCheck 88 29 61
      { lower := 2891, upper := 2974, witness := RowWitness.topPrime 2887 } = true := by
  exact good_top_prime_checked (i := 88) (r := 29) (s := 61) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row088_good034_checked :
    goodSegmentCheck 88 29 61
      { lower := 2975, upper := 3058, witness := RowWitness.topPrime 2971 } = true := by
  exact good_top_prime_checked (i := 88) (r := 29) (s := 61) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row088_good035_checked :
    goodSegmentCheck 88 29 61
      { lower := 3059, upper := 3136, witness := RowWitness.topPrime 3049 } = true := by
  exact good_top_prime_checked (i := 88) (r := 29) (s := 61) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row088_good036_checked :
    goodSegmentCheck 88 29 61
      { lower := 3137, upper := 3224, witness := RowWitness.topPrime 3137 } = true := by
  exact good_top_prime_checked (i := 88) (r := 29) (s := 61) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row088_good037_checked :
    goodSegmentCheck 88 29 61
      { lower := 3225, upper := 3308, witness := RowWitness.topPrime 3221 } = true := by
  exact good_top_prime_checked (i := 88) (r := 29) (s := 61) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row088_good038_checked :
    goodSegmentCheck 88 29 61
      { lower := 3309, upper := 3394, witness := RowWitness.topPrime 3307 } = true := by
  exact good_top_prime_checked (i := 88) (r := 29) (s := 61) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row088_good039_checked :
    goodSegmentCheck 88 29 61
      { lower := 3395, upper := 3478, witness := RowWitness.topPrime 3391 } = true := by
  exact good_top_prime_checked (i := 88) (r := 29) (s := 61) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row088_good040_checked :
    goodSegmentCheck 88 29 61
      { lower := 3479, upper := 3556, witness := RowWitness.topPrime 3469 } = true := by
  exact good_top_prime_checked (i := 88) (r := 29) (s := 61) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row088_good041_checked :
    goodSegmentCheck 88 29 61
      { lower := 3557, upper := 3644, witness := RowWitness.topPrime 3557 } = true := by
  exact good_top_prime_checked (i := 88) (r := 29) (s := 61) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row088_good042_checked :
    goodSegmentCheck 88 29 61
      { lower := 3645, upper := 3730, witness := RowWitness.topPrime 3643 } = true := by
  exact good_top_prime_checked (i := 88) (r := 29) (s := 61) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row088_good043_checked :
    goodSegmentCheck 88 29 61
      { lower := 3731, upper := 3814, witness := RowWitness.topPrime 3727 } = true := by
  exact good_top_prime_checked (i := 88) (r := 29) (s := 61) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row088_good044_checked :
    goodSegmentCheck 88 29 61
      { lower := 3815, upper := 3890, witness := RowWitness.topPrime 3803 } = true := by
  exact good_top_prime_checked (i := 88) (r := 29) (s := 61) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row088_good045_checked :
    goodSegmentCheck 88 29 61
      { lower := 3891, upper := 3976, witness := RowWitness.topPrime 3889 } = true := by
  exact good_top_prime_checked (i := 88) (r := 29) (s := 61) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row088_good046_checked :
    goodSegmentCheck 88 29 61
      { lower := 3977, upper := 4054, witness := RowWitness.topPrime 3967 } = true := by
  exact good_top_prime_checked (i := 88) (r := 29) (s := 61) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row088_good047_checked :
    goodSegmentCheck 88 29 61
      { lower := 4055, upper := 4138, witness := RowWitness.topPrime 4051 } = true := by
  exact good_top_prime_checked (i := 88) (r := 29) (s := 61) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row088_good032_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row088_good033_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row088_good034_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row088_good035_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row088_good036_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row088_good037_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row088_good038_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row088_good039_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row088_good040_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row088_good041_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row088_good042_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row088_good043_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row088_good044_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row088_good045_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row088_good046_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row088_good047_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row088_good048_checked :
    goodSegmentCheck 88 29 61
      { lower := 4139, upper := 4226, witness := RowWitness.topPrime 4139 } = true := by
  exact good_top_prime_checked (i := 88) (r := 29) (s := 61) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row088_good049_checked :
    goodSegmentCheck 88 29 61
      { lower := 4227, upper := 4306, witness := RowWitness.topPrime 4219 } = true := by
  exact good_top_prime_checked (i := 88) (r := 29) (s := 61) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row088_good050_checked :
    goodSegmentCheck 88 29 61
      { lower := 4307, upper := 4384, witness := RowWitness.topPrime 4297 } = true := by
  exact good_top_prime_checked (i := 88) (r := 29) (s := 61) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row088_good051_checked :
    goodSegmentCheck 88 29 61
      { lower := 4385, upper := 4460, witness := RowWitness.topPrime 4373 } = true := by
  exact good_top_prime_checked (i := 88) (r := 29) (s := 61) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row088_good052_checked :
    goodSegmentCheck 88 29 61
      { lower := 4461, upper := 4544, witness := RowWitness.topPrime 4457 } = true := by
  exact good_top_prime_checked (i := 88) (r := 29) (s := 61) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row088_good053_checked :
    goodSegmentCheck 88 29 61
      { lower := 4545, upper := 4610, witness := RowWitness.topPrime 4523 } = true := by
  exact good_top_prime_checked (i := 88) (r := 29) (s := 61) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row088_good054_checked :
    goodSegmentCheck 88 29 61
      { lower := 4611, upper := 4690, witness := RowWitness.topPrime 4603 } = true := by
  exact good_top_prime_checked (i := 88) (r := 29) (s := 61) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row088_good055_checked :
    goodSegmentCheck 88 29 61
      { lower := 4691, upper := 4778, witness := RowWitness.topPrime 4691 } = true := by
  exact good_top_prime_checked (i := 88) (r := 29) (s := 61) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row088_good056_checked :
    goodSegmentCheck 88 29 61
      { lower := 4779, upper := 4846, witness := RowWitness.topPrime 4759 } = true := by
  exact good_top_prime_checked (i := 88) (r := 29) (s := 61) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row088_good057_checked :
    goodSegmentCheck 88 29 61
      { lower := 4847, upper := 4918, witness := RowWitness.topPrime 4831 } = true := by
  exact good_top_prime_checked (i := 88) (r := 29) (s := 61) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row088_good058_checked :
    goodSegmentCheck 88 29 61
      { lower := 4919, upper := 5006, witness := RowWitness.topPrime 4919 } = true := by
  exact good_top_prime_checked (i := 88) (r := 29) (s := 61) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row088_good059_checked :
    goodSegmentCheck 88 29 61
      { lower := 5007, upper := 5090, witness := RowWitness.topPrime 5003 } = true := by
  exact good_top_prime_checked (i := 88) (r := 29) (s := 61) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row088_good060_checked :
    goodSegmentCheck 88 29 61
      { lower := 5091, upper := 5174, witness := RowWitness.topPrime 5087 } = true := by
  exact good_top_prime_checked (i := 88) (r := 29) (s := 61) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row088_good061_checked :
    goodSegmentCheck 88 29 61
      { lower := 5175, upper := 5258, witness := RowWitness.topPrime 5171 } = true := by
  exact good_top_prime_checked (i := 88) (r := 29) (s := 61) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row088_good062_checked :
    goodSegmentCheck 88 29 61
      { lower := 5259, upper := 5324, witness := RowWitness.topPrime 5237 } = true := by
  exact good_top_prime_checked (i := 88) (r := 29) (s := 61) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row088_good063_checked :
    goodSegmentCheck 88 29 61
      { lower := 5325, upper := 5410, witness := RowWitness.topPrime 5323 } = true := by
  exact good_top_prime_checked (i := 88) (r := 29) (s := 61) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row088_good048_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row088_good049_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row088_good050_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row088_good051_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row088_good052_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row088_good053_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row088_good054_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row088_good055_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row088_good056_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row088_good057_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row088_good058_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row088_good059_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row088_good060_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row088_good061_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row088_good062_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row088_good063_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row088_good064_checked :
    goodSegmentCheck 88 29 61
      { lower := 5411, upper := 5494, witness := RowWitness.topPrime 5407 } = true := by
  exact good_top_prime_checked (i := 88) (r := 29) (s := 61) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row088_good065_checked :
    goodSegmentCheck 88 29 61
      { lower := 5495, upper := 5570, witness := RowWitness.topPrime 5483 } = true := by
  exact good_top_prime_checked (i := 88) (r := 29) (s := 61) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row088_good066_checked :
    goodSegmentCheck 88 29 61
      { lower := 5571, upper := 5656, witness := RowWitness.topPrime 5569 } = true := by
  exact good_top_prime_checked (i := 88) (r := 29) (s := 61) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row088_good067_checked :
    goodSegmentCheck 88 29 61
      { lower := 5657, upper := 5744, witness := RowWitness.topPrime 5657 } = true := by
  exact good_top_prime_checked (i := 88) (r := 29) (s := 61) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row088_good068_checked :
    goodSegmentCheck 88 29 61
      { lower := 5745, upper := 5830, witness := RowWitness.topPrime 5743 } = true := by
  exact good_top_prime_checked (i := 88) (r := 29) (s := 61) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row088_good069_checked :
    goodSegmentCheck 88 29 61
      { lower := 5831, upper := 5914, witness := RowWitness.topPrime 5827 } = true := by
  exact good_top_prime_checked (i := 88) (r := 29) (s := 61) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row088_good070_checked :
    goodSegmentCheck 88 29 61
      { lower := 5915, upper := 5990, witness := RowWitness.topPrime 5903 } = true := by
  exact good_top_prime_checked (i := 88) (r := 29) (s := 61) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row088_good071_checked :
    goodSegmentCheck 88 29 61
      { lower := 5991, upper := 6074, witness := RowWitness.topPrime 5987 } = true := by
  exact good_top_prime_checked (i := 88) (r := 29) (s := 61) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row088_good072_checked :
    goodSegmentCheck 88 29 61
      { lower := 6075, upper := 6160, witness := RowWitness.topPrime 6073 } = true := by
  exact good_top_prime_checked (i := 88) (r := 29) (s := 61) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row088_good073_checked :
    goodSegmentCheck 88 29 61
      { lower := 6161, upper := 6238, witness := RowWitness.topPrime 6151 } = true := by
  exact good_top_prime_checked (i := 88) (r := 29) (s := 61) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row088_good074_checked :
    goodSegmentCheck 88 29 61
      { lower := 6239, upper := 6316, witness := RowWitness.topPrime 6229 } = true := by
  exact good_top_prime_checked (i := 88) (r := 29) (s := 61) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row088_good075_checked :
    goodSegmentCheck 88 29 61
      { lower := 6317, upper := 6404, witness := RowWitness.topPrime 6317 } = true := by
  exact good_top_prime_checked (i := 88) (r := 29) (s := 61) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row088_good076_checked :
    goodSegmentCheck 88 29 61
      { lower := 6405, upper := 6484, witness := RowWitness.topPrime 6397 } = true := by
  exact good_top_prime_checked (i := 88) (r := 29) (s := 61) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row088_good077_checked :
    goodSegmentCheck 88 29 61
      { lower := 6485, upper := 6568, witness := RowWitness.topPrime 6481 } = true := by
  exact good_top_prime_checked (i := 88) (r := 29) (s := 61) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row088_good078_checked :
    goodSegmentCheck 88 29 61
      { lower := 6569, upper := 6656, witness := RowWitness.topPrime 6569 } = true := by
  exact good_top_prime_checked (i := 88) (r := 29) (s := 61) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row088_good079_checked :
    goodSegmentCheck 88 29 61
      { lower := 6657, upper := 6740, witness := RowWitness.topPrime 6653 } = true := by
  exact good_top_prime_checked (i := 88) (r := 29) (s := 61) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row088_good064_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row088_good065_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row088_good066_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row088_good067_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row088_good068_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row088_good069_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row088_good070_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row088_good071_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row088_good072_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row088_good073_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row088_good074_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row088_good075_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row088_good076_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row088_good077_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row088_good078_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row088_good079_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row088_good080_checked :
    goodSegmentCheck 88 29 61
      { lower := 6741, upper := 6824, witness := RowWitness.topPrime 6737 } = true := by
  exact good_top_prime_checked (i := 88) (r := 29) (s := 61) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row088_good081_checked :
    goodSegmentCheck 88 29 61
      { lower := 6825, upper := 6910, witness := RowWitness.topPrime 6823 } = true := by
  exact good_top_prime_checked (i := 88) (r := 29) (s := 61) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row088_good082_checked :
    goodSegmentCheck 88 29 61
      { lower := 6911, upper := 6998, witness := RowWitness.topPrime 6911 } = true := by
  exact good_top_prime_checked (i := 88) (r := 29) (s := 61) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row088_good083_checked :
    goodSegmentCheck 88 29 61
      { lower := 6999, upper := 7084, witness := RowWitness.topPrime 6997 } = true := by
  exact good_top_prime_checked (i := 88) (r := 29) (s := 61) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row088_good084_checked :
    goodSegmentCheck 88 29 61
      { lower := 7085, upper := 7166, witness := RowWitness.topPrime 7079 } = true := by
  exact good_top_prime_checked (i := 88) (r := 29) (s := 61) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row088_good085_checked :
    goodSegmentCheck 88 29 61
      { lower := 7167, upper := 7246, witness := RowWitness.topPrime 7159 } = true := by
  exact good_top_prime_checked (i := 88) (r := 29) (s := 61) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row088_good086_checked :
    goodSegmentCheck 88 29 61
      { lower := 7247, upper := 7334, witness := RowWitness.topPrime 7247 } = true := by
  exact good_top_prime_checked (i := 88) (r := 29) (s := 61) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row088_good087_checked :
    goodSegmentCheck 88 29 61
      { lower := 7335, upper := 7420, witness := RowWitness.topPrime 7333 } = true := by
  exact good_top_prime_checked (i := 88) (r := 29) (s := 61) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row088_good088_checked :
    goodSegmentCheck 88 29 61
      { lower := 7421, upper := 7504, witness := RowWitness.topPrime 7417 } = true := by
  exact good_top_prime_checked (i := 88) (r := 29) (s := 61) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row088_good089_checked :
    goodSegmentCheck 88 29 61
      { lower := 7505, upper := 7586, witness := RowWitness.topPrime 7499 } = true := by
  exact good_top_prime_checked (i := 88) (r := 29) (s := 61) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row088_good090_checked :
    goodSegmentCheck 88 29 61
      { lower := 7587, upper := 7656, witness := RowWitness.topPrime 7583 } = true := by
  exact good_top_prime_checked (i := 88) (r := 29) (s := 61) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row088_good091_checked :
    goodSegmentCheck 88 29 61
      { lower := 7935, upper := 8020, witness := RowWitness.topPrime 7933 } = true := by
  exact good_top_prime_checked (i := 88) (r := 29) (s := 61) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row088_good092_checked :
    goodSegmentCheck 88 29 61
      { lower := 8021, upper := 8029, witness := RowWitness.topPrime 8017 } = true := by
  exact good_top_prime_checked (i := 88) (r := 29) (s := 61) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row088_good093_checked :
    goodSegmentCheck 88 29 61
      { lower := 8192, upper := 8212, witness := RowWitness.topPrime 8191 } = true := by
  exact good_top_prime_checked (i := 88) (r := 29) (s := 61) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row088_good094_checked :
    goodSegmentCheck 88 29 61
      { lower := 8214, upper := 8296, witness := RowWitness.topPrime 8209 } = true := by
  exact good_top_prime_checked (i := 88) (r := 29) (s := 61) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row088_good095_checked :
    goodSegmentCheck 88 29 61
      { lower := 8297, upper := 8301, witness := RowWitness.topPrime 8297 } = true := by
  exact good_top_prime_checked (i := 88) (r := 29) (s := 61) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row088_good080_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row088_good081_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row088_good082_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row088_good083_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row088_good084_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row088_good085_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row088_good086_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row088_good087_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row088_good088_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row088_good089_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row088_good090_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row088_good091_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row088_good092_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row088_good093_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row088_good094_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row088_good095_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row088_good096_checked :
    goodSegmentCheck 88 29 61
      { lower := 8303, upper := 8319, witness := RowWitness.topPrime 8297 } = true := by
  exact good_top_prime_checked (i := 88) (r := 29) (s := 61) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row088_good097_checked :
    goodSegmentCheck 88 29 61
      { lower := 8410, upper := 8476, witness := RowWitness.topPrime 8389 } = true := by
  exact good_top_prime_checked (i := 88) (r := 29) (s := 61) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row088_good098_checked :
    goodSegmentCheck 88 29 61
      { lower := 8477, upper := 8514, witness := RowWitness.topPrime 8467 } = true := by
  exact good_top_prime_checked (i := 88) (r := 29) (s := 61) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row088_good099_checked :
    goodSegmentCheck 88 29 61
      { lower := 8649, upper := 8662, witness := RowWitness.topPrime 8647 } = true := by
  exact good_top_prime_checked (i := 88) (r := 29) (s := 61) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row088_good100_checked :
    goodSegmentCheck 88 29 61
      { lower := 8664, upper := 8736, witness := RowWitness.topPrime 8663 } = true := by
  exact good_top_prime_checked (i := 88) (r := 29) (s := 61) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row088_good101_checked :
    goodSegmentCheck 88 29 61
      { lower := 8748, upper := 8834, witness := RowWitness.topPrime 8747 } = true := by
  exact good_top_prime_checked (i := 88) (r := 29) (s := 61) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row088_good102_checked :
    goodSegmentCheck 88 29 61
      { lower := 8835, upper := 8875, witness := RowWitness.topPrime 8831 } = true := by
  exact good_top_prime_checked (i := 88) (r := 29) (s := 61) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row088_good103_checked :
    goodSegmentCheck 88 29 61
      { lower := 8993, upper := 9058, witness := RowWitness.topPrime 8971 } = true := by
  exact good_top_prime_checked (i := 88) (r := 29) (s := 61) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row088_good104_checked :
    goodSegmentCheck 88 29 61
      { lower := 9059, upper := 9080, witness := RowWitness.topPrime 9059 } = true := by
  exact good_top_prime_checked (i := 88) (r := 29) (s := 61) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row088_good105_checked :
    goodSegmentCheck 88 29 61
      { lower := 9251, upper := 9328, witness := RowWitness.topPrime 9241 } = true := by
  exact good_top_prime_checked (i := 88) (r := 29) (s := 61) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row088_good106_checked :
    goodSegmentCheck 88 29 61
      { lower := 9329, upper := 9332, witness := RowWitness.topPrime 9323 } = true := by
  exact good_top_prime_checked (i := 88) (r := 29) (s := 61) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row088_good107_checked :
    goodSegmentCheck 88 29 61
      { lower := 9522, upper := 9564, witness := RowWitness.topPrime 9521 } = true := by
  exact good_top_prime_checked (i := 88) (r := 29) (s := 61) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row088_good108_checked :
    goodSegmentCheck 88 29 61
      { lower := 9583, upper := 9638, witness := RowWitness.topPrime 9551 } = true := by
  exact good_top_prime_checked (i := 88) (r := 29) (s := 61) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row088_good109_checked :
    goodSegmentCheck 88 29 61
      { lower := 9639, upper := 9691, witness := RowWitness.topPrime 9631 } = true := by
  exact good_top_prime_checked (i := 88) (r := 29) (s := 61) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row088_good110_checked :
    goodSegmentCheck 88 29 61
      { lower := 10051, upper := 10126, witness := RowWitness.topPrime 10039 } = true := by
  exact good_top_prime_checked (i := 88) (r := 29) (s := 61) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row088_good111_checked :
    goodSegmentCheck 88 29 61
      { lower := 10127, upper := 10173, witness := RowWitness.topPrime 10111 } = true := by
  exact good_top_prime_checked (i := 88) (r := 29) (s := 61) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row088_good096_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row088_good097_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row088_good098_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row088_good099_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row088_good100_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row088_good101_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row088_good102_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row088_good103_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row088_good104_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row088_good105_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row088_good106_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row088_good107_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row088_good108_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row088_good109_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row088_good110_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row088_good111_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row088_good112_checked :
    goodSegmentCheck 88 29 61
      { lower := 10580, upper := 10654, witness := RowWitness.topPrime 10567 } = true := by
  exact good_top_prime_checked (i := 88) (r := 29) (s := 61) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row088_good113_checked :
    goodSegmentCheck 88 29 61
      { lower := 10655, upper := 10712, witness := RowWitness.topPrime 10651 } = true := by
  exact good_top_prime_checked (i := 88) (r := 29) (s := 61) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row088_good114_checked :
    goodSegmentCheck 88 29 61
      { lower := 10935, upper := 10996, witness := RowWitness.topPrime 10909 } = true := by
  exact good_top_prime_checked (i := 88) (r := 29) (s := 61) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row088_good115_checked :
    goodSegmentCheck 88 29 61
      { lower := 10997, upper := 11039, witness := RowWitness.topPrime 10993 } = true := by
  exact good_top_prime_checked (i := 88) (r := 29) (s := 61) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row088_good116_checked :
    goodSegmentCheck 88 29 61
      { lower := 11045, upper := 11072, witness := RowWitness.topPrime 11027 } = true := by
  exact good_top_prime_checked (i := 88) (r := 29) (s := 61) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row088_good117_checked :
    goodSegmentCheck 88 29 61
      { lower := 11094, upper := 11180, witness := RowWitness.topPrime 11093 } = true := by
  exact good_top_prime_checked (i := 88) (r := 29) (s := 61) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row088_good118_checked :
    goodSegmentCheck 88 29 61
      { lower := 11181, upper := 11196, witness := RowWitness.topPrime 11177 } = true := by
  exact good_top_prime_checked (i := 88) (r := 29) (s := 61) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row088_good119_checked :
    goodSegmentCheck 88 29 61
      { lower := 11236, upper := 11300, witness := RowWitness.topPrime 11213 } = true := by
  exact good_top_prime_checked (i := 88) (r := 29) (s := 61) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row088_good120_checked :
    goodSegmentCheck 88 29 61
      { lower := 11301, upper := 11323, witness := RowWitness.topPrime 11299 } = true := by
  exact good_top_prime_checked (i := 88) (r := 29) (s := 61) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row088_good121_checked :
    goodSegmentCheck 88 29 61
      { lower := 11664, upper := 11725, witness := RowWitness.topPrime 11657 } = true := by
  exact good_top_prime_checked (i := 88) (r := 29) (s := 61) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row088_good122_checked :
    goodSegmentCheck 88 29 61
      { lower := 11774, upper := 11830, witness := RowWitness.topPrime 11743 } = true := by
  exact good_top_prime_checked (i := 88) (r := 29) (s := 61) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row088_good123_checked :
    goodSegmentCheck 88 29 61
      { lower := 11831, upper := 11854, witness := RowWitness.topPrime 11831 } = true := by
  exact good_top_prime_checked (i := 88) (r := 29) (s := 61) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row088_good124_checked :
    goodSegmentCheck 88 29 61
      { lower := 12321, upper := 12375, witness := RowWitness.topPrime 12301 } = true := by
  exact good_top_prime_checked (i := 88) (r := 29) (s := 61) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row088_good125_checked :
    goodSegmentCheck 88 29 61
      { lower := 12393, upper := 12408, witness := RowWitness.topPrime 12391 } = true := by
  exact good_top_prime_checked (i := 88) (r := 29) (s := 61) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row088_good126_checked :
    goodSegmentCheck 88 29 61
      { lower := 12493, upper := 12578, witness := RowWitness.topPrime 12491 } = true := by
  exact good_top_prime_checked (i := 88) (r := 29) (s := 61) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row088_good127_checked :
    goodSegmentCheck 88 29 61
      { lower := 12579, upper := 12580, witness := RowWitness.topPrime 12577 } = true := by
  exact good_top_prime_checked (i := 88) (r := 29) (s := 61) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row088_good112_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row088_good113_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row088_good114_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row088_good115_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row088_good116_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row088_good117_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row088_good118_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row088_good119_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row088_good120_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row088_good121_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row088_good122_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row088_good123_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row088_good124_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row088_good125_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row088_good126_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row088_good127_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row088_good128_checked :
    goodSegmentCheck 88 29 61
      { lower := 12696, upper := 12702, witness := RowWitness.topPrime 12689 } = true := by
  exact good_top_prime_checked (i := 88) (r := 29) (s := 61) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row088_good129_checked :
    goodSegmentCheck 88 29 61
      { lower := 13125, upper := 13208, witness := RowWitness.topPrime 13121 } = true := by
  exact good_top_prime_checked (i := 88) (r := 29) (s := 61) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row088_good130_checked :
    goodSegmentCheck 88 29 61
      { lower := 13209, upper := 13212, witness := RowWitness.topPrime 13187 } = true := by
  exact good_top_prime_checked (i := 88) (r := 29) (s := 61) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row088_good131_checked :
    goodSegmentCheck 88 29 61
      { lower := 13225, upper := 13306, witness := RowWitness.topPrime 13219 } = true := by
  exact good_top_prime_checked (i := 88) (r := 29) (s := 61) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row088_good132_checked :
    goodSegmentCheck 88 29 61
      { lower := 13307, upper := 13312, witness := RowWitness.topPrime 13297 } = true := by
  exact good_top_prime_checked (i := 88) (r := 29) (s := 61) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row088_good133_checked :
    goodSegmentCheck 88 29 61
      { lower := 13454, upper := 13538, witness := RowWitness.topPrime 13451 } = true := by
  exact good_top_prime_checked (i := 88) (r := 29) (s := 61) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row088_good134_checked :
    goodSegmentCheck 88 29 61
      { lower := 13539, upper := 13543, witness := RowWitness.topPrime 13537 } = true := by
  exact good_top_prime_checked (i := 88) (r := 29) (s := 61) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row088_good135_checked :
    goodSegmentCheck 88 29 61
      { lower := 13718, upper := 13798, witness := RowWitness.topPrime 13711 } = true := by
  exact good_top_prime_checked (i := 88) (r := 29) (s := 61) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row088_good136_checked :
    goodSegmentCheck 88 29 61
      { lower := 13799, upper := 13837, witness := RowWitness.topPrime 13799 } = true := by
  exact good_top_prime_checked (i := 88) (r := 29) (s := 61) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row088_good137_checked :
    goodSegmentCheck 88 29 61
      { lower := 13851, upper := 13865, witness := RowWitness.topPrime 13841 } = true := by
  exact good_top_prime_checked (i := 88) (r := 29) (s := 61) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row088_good138_checked :
    goodSegmentCheck 88 29 61
      { lower := 13924, upper := 13938, witness := RowWitness.topPrime 13921 } = true := by
  exact good_top_prime_checked (i := 88) (r := 29) (s := 61) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row088_good139_checked :
    goodSegmentCheck 88 29 61
      { lower := 14375, upper := 14384, witness := RowWitness.topPrime 14369 } = true := by
  exact good_top_prime_checked (i := 88) (r := 29) (s := 61) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row088_good140_checked :
    goodSegmentCheck 88 29 61
      { lower := 14406, upper := 14488, witness := RowWitness.topPrime 14401 } = true := by
  exact good_top_prime_checked (i := 88) (r := 29) (s := 61) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row088_good141_checked :
    goodSegmentCheck 88 29 61
      { lower := 14489, upper := 14493, witness := RowWitness.topPrime 14489 } = true := by
  exact good_top_prime_checked (i := 88) (r := 29) (s := 61) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row088_good142_checked :
    goodSegmentCheck 88 29 61
      { lower := 14641, upper := 14667, witness := RowWitness.topPrime 14639 } = true := by
  exact good_top_prime_checked (i := 88) (r := 29) (s := 61) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row088_good143_checked :
    goodSegmentCheck 88 29 61
      { lower := 14792, upper := 14826, witness := RowWitness.topPrime 14783 } = true := by
  exact good_top_prime_checked (i := 88) (r := 29) (s := 61) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row088_good128_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row088_good129_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row088_good130_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row088_good131_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row088_good132_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row088_good133_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row088_good134_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row088_good135_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row088_good136_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row088_good137_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row088_good138_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row088_good139_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row088_good140_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row088_good141_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row088_good142_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row088_good143_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row088_good144_checked :
    goodSegmentCheck 88 29 61
      { lower := 15059, upper := 15087, witness := RowWitness.topPrime 15053 } = true := by
  exact good_top_prime_checked (i := 88) (r := 29) (s := 61) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row088_good145_checked :
    goodSegmentCheck 88 29 61
      { lower := 15123, upper := 15208, witness := RowWitness.topPrime 15121 } = true := by
  exact good_top_prime_checked (i := 88) (r := 29) (s := 61) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row088_good146_checked :
    goodSegmentCheck 88 29 61
      { lower := 15209, upper := 15216, witness := RowWitness.topPrime 15199 } = true := by
  exact good_top_prime_checked (i := 88) (r := 29) (s := 61) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row088_good147_checked :
    goodSegmentCheck 88 29 61
      { lower := 15376, upper := 15460, witness := RowWitness.topPrime 15373 } = true := by
  exact good_top_prime_checked (i := 88) (r := 29) (s := 61) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row088_good148_checked :
    goodSegmentCheck 88 29 61
      { lower := 15461, upper := 15466, witness := RowWitness.topPrime 15461 } = true := by
  exact good_top_prime_checked (i := 88) (r := 29) (s := 61) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row088_good149_checked :
    goodSegmentCheck 88 29 61
      { lower := 15987, upper := 16060, witness := RowWitness.topPrime 15973 } = true := by
  exact good_top_prime_checked (i := 88) (r := 29) (s := 61) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row088_good150_checked :
    goodSegmentCheck 88 29 61
      { lower := 16061, upper := 16066, witness := RowWitness.topPrime 16061 } = true := by
  exact good_top_prime_checked (i := 88) (r := 29) (s := 61) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row088_good151_checked :
    goodSegmentCheck 88 29 61
      { lower := 16384, upper := 16424, witness := RowWitness.topPrime 16381 } = true := by
  exact good_top_prime_checked (i := 88) (r := 29) (s := 61) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row088_good152_checked :
    goodSegmentCheck 88 29 61
      { lower := 16428, upper := 16471, witness := RowWitness.topPrime 16427 } = true := by
  exact good_top_prime_checked (i := 88) (r := 29) (s := 61) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row088_good153_checked :
    goodSegmentCheck 88 29 61
      { lower := 16810, upper := 16874, witness := RowWitness.topPrime 16787 } = true := by
  exact good_top_prime_checked (i := 88) (r := 29) (s := 61) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row088_good154_checked :
    goodSegmentCheck 88 29 61
      { lower := 16875, upper := 16907, witness := RowWitness.topPrime 16871 } = true := by
  exact good_top_prime_checked (i := 88) (r := 29) (s := 61) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row088_good155_checked :
    goodSegmentCheck 88 29 61
      { lower := 17576, upper := 17583, witness := RowWitness.topPrime 17573 } = true := by
  exact good_top_prime_checked (i := 88) (r := 29) (s := 61) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row088_good156_checked :
    goodSegmentCheck 88 29 61
      { lower := 18491, upper := 18568, witness := RowWitness.topPrime 18481 } = true := by
  exact good_top_prime_checked (i := 88) (r := 29) (s := 61) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row088_good157_checked :
    goodSegmentCheck 88 29 61
      { lower := 18569, upper := 18577, witness := RowWitness.topPrime 18553 } = true := by
  exact good_top_prime_checked (i := 88) (r := 29) (s := 61) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row088_good158_checked :
    goodSegmentCheck 88 29 61
      { lower := 18750, upper := 18810, witness := RowWitness.topPrime 18749 } = true := by
  exact good_top_prime_checked (i := 88) (r := 29) (s := 61) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row088_good159_checked :
    goodSegmentCheck 88 29 61
      { lower := 19208, upper := 19294, witness := RowWitness.topPrime 19207 } = true := by
  exact good_top_prime_checked (i := 88) (r := 29) (s := 61) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row088_good144_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row088_good145_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row088_good146_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row088_good147_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row088_good148_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row088_good149_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row088_good150_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row088_good151_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row088_good152_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row088_good153_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row088_good154_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row088_good155_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row088_good156_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row088_good157_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row088_good158_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row088_good159_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row088_good160_checked :
    goodSegmentCheck 88 29 61
      { lower := 19295, upper := 19295, witness := RowWitness.topPrime 19289 } = true := by
  exact good_top_prime_checked (i := 88) (r := 29) (s := 61) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row088_good161_checked :
    goodSegmentCheck 88 29 61
      { lower := 19663, upper := 19748, witness := RowWitness.topPrime 19661 } = true := by
  exact good_top_prime_checked (i := 88) (r := 29) (s := 61) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row088_good162_checked :
    goodSegmentCheck 88 29 61
      { lower := 19749, upper := 19750, witness := RowWitness.topPrime 19739 } = true := by
  exact good_top_prime_checked (i := 88) (r := 29) (s := 61) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row088_good163_checked :
    goodSegmentCheck 88 29 61
      { lower := 20172, upper := 20248, witness := RowWitness.topPrime 20161 } = true := by
  exact good_top_prime_checked (i := 88) (r := 29) (s := 61) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row088_good164_checked :
    goodSegmentCheck 88 29 61
      { lower := 20249, upper := 20251, witness := RowWitness.topPrime 20249 } = true := by
  exact good_top_prime_checked (i := 88) (r := 29) (s := 61) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row088_good165_checked :
    goodSegmentCheck 88 29 61
      { lower := 20577, upper := 20622, witness := RowWitness.topPrime 20563 } = true := by
  exact good_top_prime_checked (i := 88) (r := 29) (s := 61) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row088_good166_checked :
    goodSegmentCheck 88 29 61
      { lower := 21870, upper := 21950, witness := RowWitness.topPrime 21863 } = true := by
  exact good_top_prime_checked (i := 88) (r := 29) (s := 61) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row088_good167_checked :
    goodSegmentCheck 88 29 61
      { lower := 21951, upper := 21962, witness := RowWitness.topPrime 21943 } = true := by
  exact good_top_prime_checked (i := 88) (r := 29) (s := 61) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row088_good168_checked :
    goodSegmentCheck 88 29 61
      { lower := 21970, upper := 21991, witness := RowWitness.topPrime 21961 } = true := by
  exact good_top_prime_checked (i := 88) (r := 29) (s := 61) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row088_good169_checked :
    goodSegmentCheck 88 29 61
      { lower := 22472, upper := 22532, witness := RowWitness.topPrime 22469 } = true := by
  exact good_top_prime_checked (i := 88) (r := 29) (s := 61) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row088_good170_checked :
    goodSegmentCheck 88 29 61
      { lower := 24037, upper := 24116, witness := RowWitness.topPrime 24029 } = true := by
  exact good_top_prime_checked (i := 88) (r := 29) (s := 61) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row088_good171_checked :
    goodSegmentCheck 88 29 61
      { lower := 24117, upper := 24124, witness := RowWitness.topPrime 24113 } = true := by
  exact good_top_prime_checked (i := 88) (r := 29) (s := 61) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row088_good172_checked :
    goodSegmentCheck 88 29 61
      { lower := 24334, upper := 24416, witness := RowWitness.topPrime 24329 } = true := by
  exact good_top_prime_checked (i := 88) (r := 29) (s := 61) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row088_good173_checked :
    goodSegmentCheck 88 29 61
      { lower := 24417, upper := 24454, witness := RowWitness.topPrime 24413 } = true := by
  exact good_top_prime_checked (i := 88) (r := 29) (s := 61) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row088_good174_checked :
    goodSegmentCheck 88 29 61
      { lower := 24642, upper := 24652, witness := RowWitness.topPrime 24631 } = true := by
  exact good_top_prime_checked (i := 88) (r := 29) (s := 61) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row088_good175_checked :
    goodSegmentCheck 88 29 61
      { lower := 25000, upper := 25051, witness := RowWitness.topPrime 24989 } = true := by
  exact good_top_prime_checked (i := 88) (r := 29) (s := 61) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row088_good160_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row088_good161_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row088_good162_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row088_good163_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row088_good164_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row088_good165_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row088_good166_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row088_good167_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row088_good168_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row088_good169_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row088_good170_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row088_good171_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row088_good172_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row088_good173_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row088_good174_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row088_good175_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row088_good176_checked :
    goodSegmentCheck 88 29 61
      { lower := 25215, upper := 25276, witness := RowWitness.topPrime 25189 } = true := by
  exact good_top_prime_checked (i := 88) (r := 29) (s := 61) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row088_good177_checked :
    goodSegmentCheck 88 29 61
      { lower := 25277, upper := 25302, witness := RowWitness.topPrime 25261 } = true := by
  exact good_top_prime_checked (i := 88) (r := 29) (s := 61) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row088_good178_checked :
    goodSegmentCheck 88 29 61
      { lower := 26047, upper := 26098, witness := RowWitness.topPrime 26041 } = true := by
  exact good_top_prime_checked (i := 88) (r := 29) (s := 61) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row088_good179_checked :
    goodSegmentCheck 88 29 61
      { lower := 26411, upper := 26451, witness := RowWitness.topPrime 26407 } = true := by
  exact good_top_prime_checked (i := 88) (r := 29) (s := 61) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row088_good180_checked :
    goodSegmentCheck 88 29 61
      { lower := 26934, upper := 26983, witness := RowWitness.topPrime 26927 } = true := by
  exact good_top_prime_checked (i := 88) (r := 29) (s := 61) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row088_good181_checked :
    goodSegmentCheck 88 29 61
      { lower := 27436, upper := 27467, witness := RowWitness.topPrime 27431 } = true := by
  exact good_top_prime_checked (i := 88) (r := 29) (s := 61) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row088_good182_checked :
    goodSegmentCheck 88 29 61
      { lower := 28125, upper := 28177, witness := RowWitness.topPrime 28123 } = true := by
  exact good_top_prime_checked (i := 88) (r := 29) (s := 61) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row088_good183_checked :
    goodSegmentCheck 88 29 61
      { lower := 28577, upper := 28648, witness := RowWitness.topPrime 28573 } = true := by
  exact good_top_prime_checked (i := 88) (r := 29) (s := 61) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row088_good184_checked :
    goodSegmentCheck 88 29 61
      { lower := 29791, upper := 29855, witness := RowWitness.topPrime 29789 } = true := by
  exact good_top_prime_checked (i := 88) (r := 29) (s := 61) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row088_good185_checked :
    goodSegmentCheck 88 29 61
      { lower := 30258, upper := 30333, witness := RowWitness.topPrime 30253 } = true := by
  exact good_top_prime_checked (i := 88) (r := 29) (s := 61) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row088_good186_checked :
    goodSegmentCheck 88 29 61
      { lower := 30926, upper := 30986, witness := RowWitness.topPrime 30911 } = true := by
  exact good_top_prime_checked (i := 88) (r := 29) (s := 61) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row088_good187_checked :
    goodSegmentCheck 88 29 61
      { lower := 31213, upper := 31280, witness := RowWitness.topPrime 31193 } = true := by
  exact good_top_prime_checked (i := 88) (r := 29) (s := 61) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row088_good188_checked :
    goodSegmentCheck 88 29 61
      { lower := 31281, upper := 31300, witness := RowWitness.topPrime 31277 } = true := by
  exact good_top_prime_checked (i := 88) (r := 29) (s := 61) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row088_good189_checked :
    goodSegmentCheck 88 29 61
      { lower := 31329, upper := 31337, witness := RowWitness.topPrime 31327 } = true := by
  exact good_top_prime_checked (i := 88) (r := 29) (s := 61) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row088_good190_checked :
    goodSegmentCheck 88 29 61
      { lower := 31433, upper := 31484, witness := RowWitness.topPrime 31397 } = true := by
  exact good_top_prime_checked (i := 88) (r := 29) (s := 61) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row088_good191_checked :
    goodSegmentCheck 88 29 61
      { lower := 31485, upper := 31510, witness := RowWitness.topPrime 31481 } = true := by
  exact good_top_prime_checked (i := 88) (r := 29) (s := 61) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row088_good176_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row088_good177_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row088_good178_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row088_good179_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row088_good180_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row088_good181_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row088_good182_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row088_good183_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row088_good184_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row088_good185_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row088_good186_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row088_good187_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row088_good188_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row088_good189_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row088_good190_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row088_good191_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row088_good192_checked :
    goodSegmentCheck 88 29 61
      { lower := 32805, upper := 32855, witness := RowWitness.topPrime 32803 } = true := by
  exact good_top_prime_checked (i := 88) (r := 29) (s := 61) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row088_good193_checked :
    goodSegmentCheck 88 29 61
      { lower := 34375, upper := 34382, witness := RowWitness.topPrime 34369 } = true := by
  exact good_top_prime_checked (i := 88) (r := 29) (s := 61) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row088_good194_checked :
    goodSegmentCheck 88 29 61
      { lower := 34391, upper := 34468, witness := RowWitness.topPrime 34381 } = true := by
  exact good_top_prime_checked (i := 88) (r := 29) (s := 61) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row088_good195_checked :
    goodSegmentCheck 88 29 61
      { lower := 34469, upper := 34478, witness := RowWitness.topPrime 34469 } = true := by
  exact good_top_prime_checked (i := 88) (r := 29) (s := 61) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row088_good196_checked :
    goodSegmentCheck 88 29 61
      { lower := 35344, upper := 35374, witness := RowWitness.topPrime 35339 } = true := by
  exact good_top_prime_checked (i := 88) (r := 29) (s := 61) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row088_good197_checked :
    goodSegmentCheck 88 29 61
      { lower := 36517, upper := 36584, witness := RowWitness.topPrime 36497 } = true := by
  exact good_top_prime_checked (i := 88) (r := 29) (s := 61) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row088_good198_checked :
    goodSegmentCheck 88 29 61
      { lower := 36585, upper := 36588, witness := RowWitness.topPrime 36583 } = true := by
  exact good_top_prime_checked (i := 88) (r := 29) (s := 61) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row088_good199_checked :
    goodSegmentCheck 88 29 61
      { lower := 37210, upper := 37266, witness := RowWitness.topPrime 37201 } = true := by
  exact good_top_prime_checked (i := 88) (r := 29) (s := 61) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row088_good200_checked :
    goodSegmentCheck 88 29 61
      { lower := 37349, upper := 37390, witness := RowWitness.topPrime 37339 } = true := by
  exact good_top_prime_checked (i := 88) (r := 29) (s := 61) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row088_good201_checked :
    goodSegmentCheck 88 29 61
      { lower := 37500, upper := 37533, witness := RowWitness.topPrime 37493 } = true := by
  exact good_top_prime_checked (i := 88) (r := 29) (s := 61) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row088_good202_checked :
    goodSegmentCheck 88 29 61
      { lower := 37553, upper := 37587, witness := RowWitness.topPrime 37549 } = true := by
  exact good_top_prime_checked (i := 88) (r := 29) (s := 61) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row088_good203_checked :
    goodSegmentCheck 88 29 61
      { lower := 39326, upper := 39410, witness := RowWitness.topPrime 39323 } = true := by
  exact good_top_prime_checked (i := 88) (r := 29) (s := 61) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row088_good204_checked :
    goodSegmentCheck 88 29 61
      { lower := 39411, upper := 39413, witness := RowWitness.topPrime 39409 } = true := by
  exact good_top_prime_checked (i := 88) (r := 29) (s := 61) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row088_good205_checked :
    goodSegmentCheck 88 29 61
      { lower := 40401, upper := 40415, witness := RowWitness.topPrime 40387 } = true := by
  exact good_top_prime_checked (i := 88) (r := 29) (s := 61) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row088_good206_checked :
    goodSegmentCheck 88 29 61
      { lower := 43750, upper := 43774, witness := RowWitness.topPrime 43721 } = true := by
  exact good_top_prime_checked (i := 88) (r := 29) (s := 61) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row088_good207_checked :
    goodSegmentCheck 88 29 61
      { lower := 44944, upper := 44977, witness := RowWitness.topPrime 44939 } = true := by
  exact good_top_prime_checked (i := 88) (r := 29) (s := 61) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row088_good192_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row088_good193_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row088_good194_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row088_good195_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row088_good196_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row088_good197_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row088_good198_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row088_good199_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row088_good200_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row088_good201_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row088_good202_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row088_good203_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row088_good204_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row088_good205_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row088_good206_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row088_good207_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row088_good208_checked :
    goodSegmentCheck 88 29 61
      { lower := 48013, upper := 48048, witness := RowWitness.topPrime 47981 } = true := by
  exact good_top_prime_checked (i := 88) (r := 29) (s := 61) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row088_good209_checked :
    goodSegmentCheck 88 29 61
      { lower := 48734, upper := 48755, witness := RowWitness.topPrime 48733 } = true := by
  exact good_top_prime_checked (i := 88) (r := 29) (s := 61) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row088_good210_checked :
    goodSegmentCheck 88 29 61
      { lower := 48778, upper := 48821, witness := RowWitness.topPrime 48767 } = true := by
  exact good_top_prime_checked (i := 88) (r := 29) (s := 61) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row088_good211_checked :
    goodSegmentCheck 88 29 61
      { lower := 50000, upper := 50015, witness := RowWitness.topPrime 49999 } = true := by
  exact good_top_prime_checked (i := 88) (r := 29) (s := 61) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row088_good212_checked :
    goodSegmentCheck 88 29 61
      { lower := 50421, upper := 50497, witness := RowWitness.topPrime 50417 } = true := by
  exact good_top_prime_checked (i := 88) (r := 29) (s := 61) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row088_good213_checked :
    goodSegmentCheck 88 29 61
      { lower := 59582, upper := 59623, witness := RowWitness.topPrime 59581 } = true := by
  exact good_top_prime_checked (i := 88) (r := 29) (s := 61) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row088_good214_checked :
    goodSegmentCheck 88 29 61
      { lower := 63948, upper := 63956, witness := RowWitness.topPrime 63929 } = true := by
  exact good_top_prime_checked (i := 88) (r := 29) (s := 61) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row088_good215_checked :
    goodSegmentCheck 88 29 61
      { lower := 65536, upper := 65608, witness := RowWitness.topPrime 65521 } = true := by
  exact good_top_prime_checked (i := 88) (r := 29) (s := 61) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row088_good216_checked :
    goodSegmentCheck 88 29 61
      { lower := 65609, upper := 65623, witness := RowWitness.topPrime 65609 } = true := by
  exact good_top_prime_checked (i := 88) (r := 29) (s := 61) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row088_good217_checked :
    goodSegmentCheck 88 29 61
      { lower := 68651, upper := 68677, witness := RowWitness.topPrime 68639 } = true := by
  exact good_top_prime_checked (i := 88) (r := 29) (s := 61) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row088_good218_checked :
    goodSegmentCheck 88 29 61
      { lower := 68921, upper := 68977, witness := RowWitness.topPrime 68917 } = true := by
  exact good_top_prime_checked (i := 88) (r := 29) (s := 61) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row088_good219_checked :
    goodSegmentCheck 88 29 61
      { lower := 137842, upper := 137868, witness := RowWitness.topPrime 137831 } = true := by
  exact good_top_prime_checked (i := 88) (r := 29) (s := 61) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row088_good220_checked :
    goodSegmentCheck 88 29 61
      { lower := 148955, upper := 148964, witness := RowWitness.topPrime 148949 } = true := by
  exact good_top_prime_checked (i := 88) (r := 29) (s := 61) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row088_good208_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row088_good209_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row088_good210_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row088_good211_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row088_good212_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row088_good213_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row088_good214_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row088_good215_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row088_good216_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row088_good217_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row088_good218_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row088_good219_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row088_good220_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row088_goods_checked :
    row088.goods.all (goodSegmentCheck row088.height.i row088.height.r row088.height.s) = true := by
  change row088_goods.all (goodSegmentCheck 88 29 61) = true
  simp only [row088_goods, List.all_cons, List.all_nil,
    row088_good000_checked,
    row088_good001_checked,
    row088_good002_checked,
    row088_good003_checked,
    row088_good004_checked,
    row088_good005_checked,
    row088_good006_checked,
    row088_good007_checked,
    row088_good008_checked,
    row088_good009_checked,
    row088_good010_checked,
    row088_good011_checked,
    row088_good012_checked,
    row088_good013_checked,
    row088_good014_checked,
    row088_good015_checked,
    row088_good016_checked,
    row088_good017_checked,
    row088_good018_checked,
    row088_good019_checked,
    row088_good020_checked,
    row088_good021_checked,
    row088_good022_checked,
    row088_good023_checked,
    row088_good024_checked,
    row088_good025_checked,
    row088_good026_checked,
    row088_good027_checked,
    row088_good028_checked,
    row088_good029_checked,
    row088_good030_checked,
    row088_good031_checked,
    row088_good032_checked,
    row088_good033_checked,
    row088_good034_checked,
    row088_good035_checked,
    row088_good036_checked,
    row088_good037_checked,
    row088_good038_checked,
    row088_good039_checked,
    row088_good040_checked,
    row088_good041_checked,
    row088_good042_checked,
    row088_good043_checked,
    row088_good044_checked,
    row088_good045_checked,
    row088_good046_checked,
    row088_good047_checked,
    row088_good048_checked,
    row088_good049_checked,
    row088_good050_checked,
    row088_good051_checked,
    row088_good052_checked,
    row088_good053_checked,
    row088_good054_checked,
    row088_good055_checked,
    row088_good056_checked,
    row088_good057_checked,
    row088_good058_checked,
    row088_good059_checked,
    row088_good060_checked,
    row088_good061_checked,
    row088_good062_checked,
    row088_good063_checked,
    row088_good064_checked,
    row088_good065_checked,
    row088_good066_checked,
    row088_good067_checked,
    row088_good068_checked,
    row088_good069_checked,
    row088_good070_checked,
    row088_good071_checked,
    row088_good072_checked,
    row088_good073_checked,
    row088_good074_checked,
    row088_good075_checked,
    row088_good076_checked,
    row088_good077_checked,
    row088_good078_checked,
    row088_good079_checked,
    row088_good080_checked,
    row088_good081_checked,
    row088_good082_checked,
    row088_good083_checked,
    row088_good084_checked,
    row088_good085_checked,
    row088_good086_checked,
    row088_good087_checked,
    row088_good088_checked,
    row088_good089_checked,
    row088_good090_checked,
    row088_good091_checked,
    row088_good092_checked,
    row088_good093_checked,
    row088_good094_checked,
    row088_good095_checked,
    row088_good096_checked,
    row088_good097_checked,
    row088_good098_checked,
    row088_good099_checked,
    row088_good100_checked,
    row088_good101_checked,
    row088_good102_checked,
    row088_good103_checked,
    row088_good104_checked,
    row088_good105_checked,
    row088_good106_checked,
    row088_good107_checked,
    row088_good108_checked,
    row088_good109_checked,
    row088_good110_checked,
    row088_good111_checked,
    row088_good112_checked,
    row088_good113_checked,
    row088_good114_checked,
    row088_good115_checked,
    row088_good116_checked,
    row088_good117_checked,
    row088_good118_checked,
    row088_good119_checked,
    row088_good120_checked,
    row088_good121_checked,
    row088_good122_checked,
    row088_good123_checked,
    row088_good124_checked,
    row088_good125_checked,
    row088_good126_checked,
    row088_good127_checked,
    row088_good128_checked,
    row088_good129_checked,
    row088_good130_checked,
    row088_good131_checked,
    row088_good132_checked,
    row088_good133_checked,
    row088_good134_checked,
    row088_good135_checked,
    row088_good136_checked,
    row088_good137_checked,
    row088_good138_checked,
    row088_good139_checked,
    row088_good140_checked,
    row088_good141_checked,
    row088_good142_checked,
    row088_good143_checked,
    row088_good144_checked,
    row088_good145_checked,
    row088_good146_checked,
    row088_good147_checked,
    row088_good148_checked,
    row088_good149_checked,
    row088_good150_checked,
    row088_good151_checked,
    row088_good152_checked,
    row088_good153_checked,
    row088_good154_checked,
    row088_good155_checked,
    row088_good156_checked,
    row088_good157_checked,
    row088_good158_checked,
    row088_good159_checked,
    row088_good160_checked,
    row088_good161_checked,
    row088_good162_checked,
    row088_good163_checked,
    row088_good164_checked,
    row088_good165_checked,
    row088_good166_checked,
    row088_good167_checked,
    row088_good168_checked,
    row088_good169_checked,
    row088_good170_checked,
    row088_good171_checked,
    row088_good172_checked,
    row088_good173_checked,
    row088_good174_checked,
    row088_good175_checked,
    row088_good176_checked,
    row088_good177_checked,
    row088_good178_checked,
    row088_good179_checked,
    row088_good180_checked,
    row088_good181_checked,
    row088_good182_checked,
    row088_good183_checked,
    row088_good184_checked,
    row088_good185_checked,
    row088_good186_checked,
    row088_good187_checked,
    row088_good188_checked,
    row088_good189_checked,
    row088_good190_checked,
    row088_good191_checked,
    row088_good192_checked,
    row088_good193_checked,
    row088_good194_checked,
    row088_good195_checked,
    row088_good196_checked,
    row088_good197_checked,
    row088_good198_checked,
    row088_good199_checked,
    row088_good200_checked,
    row088_good201_checked,
    row088_good202_checked,
    row088_good203_checked,
    row088_good204_checked,
    row088_good205_checked,
    row088_good206_checked,
    row088_good207_checked,
    row088_good208_checked,
    row088_good209_checked,
    row088_good210_checked,
    row088_good211_checked,
    row088_good212_checked,
    row088_good213_checked,
    row088_good214_checked,
    row088_good215_checked,
    row088_good216_checked,
    row088_good217_checked,
    row088_good218_checked,
    row088_good219_checked,
    row088_good220_checked, Bool.true_and]

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row088_goods_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row088_registered :
    decide (row088.height ∈ heightCertificateData) = true := by
  decide +kernel

theorem row088_small_checked :
    coverCheck (2 * row088.height.i + 2) (row088.height.i * (row088.height.i - 1) - 1)
      (row088.goods.map goodSegmentBounds) = true := by
  decide +kernel

theorem row088_layerCover_checked :
    coverCheck (row088.height.i * (row088.height.i - 1)) (row088.height.n0 - 1)
      (row088.layers.map CoverLayer.bounds) = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row088_registered
#print axioms B699LowIndex.LowIndexLean513dc7cc.row088_small_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row088_layerCover_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row088_bounds : List NatInterval :=
  [(178, 260), (261, 344), (345, 424), (425, 508), (509, 596), (597, 680), (681, 764), (765, 848), (849, 926), (927, 1006), (1007, 1084), (1085, 1156), (1157, 1240), (1241, 1324), (1325, 1408), (1409, 1496), (1497, 1580), (1581, 1666), (1667, 1754), (1755, 1840), (1841, 1918), (1919, 2000), (2001, 2086), (2087, 2174), (2175, 2248), (2249, 2330), (2331, 2398), (2399, 2486), (2487, 2564), (2565, 2644), (2645, 2720), (2721, 2806), (2807, 2890), (2891, 2974), (2975, 3058), (3059, 3136), (3137, 3224), (3225, 3308), (3309, 3394), (3395, 3478), (3479, 3556), (3557, 3644), (3645, 3730), (3731, 3814), (3815, 3890), (3891, 3976), (3977, 4054), (4055, 4138), (4139, 4226), (4227, 4306), (4307, 4384), (4385, 4460), (4461, 4544), (4545, 4610), (4611, 4690), (4691, 4778), (4779, 4846), (4847, 4918), (4919, 5006), (5007, 5090), (5091, 5174), (5175, 5258), (5259, 5324), (5325, 5410), (5411, 5494), (5495, 5570), (5571, 5656), (5657, 5744), (5745, 5830), (5831, 5914), (5915, 5990), (5991, 6074), (6075, 6160), (6161, 6238), (6239, 6316), (6317, 6404), (6405, 6484), (6485, 6568), (6569, 6656), (6657, 6740), (6741, 6824), (6825, 6910), (6911, 6998), (6999, 7084), (7085, 7166), (7167, 7246), (7247, 7334), (7335, 7420), (7421, 7504), (7505, 7586), (7587, 7656), (7935, 8020), (8021, 8029), (8192, 8212), (8214, 8296), (8297, 8301), (8303, 8319), (8410, 8476), (8477, 8514), (8649, 8662), (8664, 8736), (8748, 8834), (8835, 8875), (8993, 9058), (9059, 9080), (9251, 9328), (9329, 9332), (9522, 9564), (9583, 9638), (9639, 9691), (10051, 10126), (10127, 10173), (10580, 10654), (10655, 10712), (10935, 10996), (10997, 11039), (11045, 11072), (11094, 11180), (11181, 11196), (11236, 11300), (11301, 11323), (11664, 11725), (11774, 11830), (11831, 11854), (12321, 12375), (12393, 12408), (12493, 12578), (12579, 12580), (12696, 12702), (13125, 13208), (13209, 13212), (13225, 13306), (13307, 13312), (13454, 13538), (13539, 13543), (13718, 13798), (13799, 13837), (13851, 13865), (13924, 13938), (14375, 14384), (14406, 14488), (14489, 14493), (14641, 14667), (14792, 14826), (15059, 15087), (15123, 15208), (15209, 15216), (15376, 15460), (15461, 15466), (15987, 16060), (16061, 16066), (16384, 16424), (16428, 16471), (16810, 16874), (16875, 16907), (17576, 17583), (18491, 18568), (18569, 18577), (18750, 18810), (19208, 19294), (19295, 19295), (19663, 19748), (19749, 19750), (20172, 20248), (20249, 20251), (20577, 20622), (21870, 21950), (21951, 21962), (21970, 21991), (22472, 22532), (24037, 24116), (24117, 24124), (24334, 24416), (24417, 24454), (24642, 24652), (25000, 25051), (25215, 25276), (25277, 25302), (26047, 26098), (26411, 26451), (26934, 26983), (27436, 27467), (28125, 28177), (28577, 28648), (29791, 29855), (30258, 30333), (30926, 30986), (31213, 31280), (31281, 31300), (31329, 31337), (31433, 31484), (31485, 31510), (32805, 32855), (34375, 34382), (34391, 34468), (34469, 34478), (35344, 35374), (36517, 36584), (36585, 36588), (37210, 37266), (37349, 37390), (37500, 37533), (37553, 37587), (39326, 39410), (39411, 39413), (40401, 40415), (43750, 43774), (44944, 44977), (48013, 48048), (48734, 48755), (48778, 48821), (50000, 50015), (50421, 50497), (59582, 59623), (63948, 63956), (65536, 65608), (65609, 65623), (68651, 68677), (68921, 68977), (137842, 137868), (148955, 148964)]

theorem row088_bounds_eq : row088.goods.map goodSegmentBounds = row088_bounds := by
  rfl

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row088_bounds_eq

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row088_layer000_intervals : List ColouredInterval :=
  [(2, 8192, 8279), (2, 12288, 12375), (2, 8192, 8279), (3, 8019, 8106), (3, 8748, 8835), (3, 9477, 9564), (3, 10206, 10293), (3, 10935, 11022), (3, 11664, 11751), (3, 12393, 12480), (3, 13122, 13209), (3, 13851, 13938), (3, 14580, 14667), (3, 15309, 15311), (3, 8748, 8835), (3, 10935, 11022), (3, 13122, 13209), (3, 15309, 15311), (3, 13122, 13209), (5, 8125, 8212), (5, 8750, 8837), (5, 9375, 9462), (5, 10000, 10087), (5, 10625, 10712), (5, 11250, 11337), (5, 11875, 11962), (5, 12500, 12587), (5, 13125, 13212), (5, 13750, 13837), (5, 14375, 14462), (5, 15000, 15087), (5, 9375, 9462), (5, 12500, 12587), (7, 7889, 7976), (7, 8232, 8319), (7, 8575, 8662), (7, 9604, 9691), (7, 12005, 12092), (7, 14406, 14493), (11, 14641, 14728), (13, 8788, 8875), (13, 10985, 11072), (13, 13182, 13269), (17, 9826, 9913), (17, 14739, 14826), (19, 7656, 7668), (19, 7942, 8029), (19, 8303, 8390), (19, 8664, 8751), (19, 9025, 9112), (19, 13718, 13805), (23, 7935, 8022), (23, 8464, 8551), (23, 8993, 9080), (23, 9522, 9609), (23, 10051, 10138), (23, 10580, 10667), (23, 11109, 11196), (23, 11638, 11725), (23, 12167, 12254), (23, 12696, 12783), (23, 13225, 13312), (23, 12167, 12254), (29, 7656, 7656), (29, 8410, 8497), (29, 9251, 9338), (29, 10092, 10179), (29, 10933, 11020), (29, 11774, 11861), (29, 12615, 12702), (29, 13456, 13543), (29, 14297, 14384), (29, 15138, 15225), (31, 7688, 7775), (31, 8649, 8736), (31, 9610, 9697), (31, 10571, 10658), (31, 11532, 11619), (31, 12493, 12580), (31, 13454, 13541), (31, 14415, 14502), (37, 8214, 8301), (37, 9583, 9670), (37, 10952, 11039), (37, 12321, 12408), (37, 13690, 13777), (37, 15059, 15146), (41, 8405, 8492), (41, 10086, 10173), (41, 11767, 11854), (41, 13448, 13535), (41, 15129, 15216), (43, 9245, 9332), (43, 11094, 11181), (43, 12943, 13030), (43, 14792, 14879), (47, 8836, 8923), (47, 11045, 11132), (47, 13254, 13341), (53, 8427, 8514), (53, 11236, 11323), (53, 14045, 14132), (59, 10443, 10530), (59, 13924, 14011), (61, 11163, 11250), (61, 14884, 14971), (67, 8978, 9065), (67, 13467, 13554), (71, 10082, 10169), (71, 15123, 15210), (73, 10658, 10745), (79, 12482, 12569), (83, 13778, 13865)]

def row088_layer000_block000 : List ColouredInterval :=
  [(2, 8192, 8279), (2, 12288, 12375), (2, 8192, 8279), (3, 8019, 8106), (3, 8748, 8835), (3, 9477, 9564), (3, 10206, 10293), (3, 10935, 11022), (3, 11664, 11751), (3, 12393, 12480), (3, 13122, 13209), (3, 13851, 13938), (3, 14580, 14667), (3, 15309, 15311), (3, 8748, 8835), (3, 10935, 11022)]

def row088_layer000_block001 : List ColouredInterval :=
  [(3, 13122, 13209), (3, 15309, 15311), (3, 13122, 13209), (5, 8125, 8212), (5, 8750, 8837), (5, 9375, 9462), (5, 10000, 10087), (5, 10625, 10712), (5, 11250, 11337), (5, 11875, 11962), (5, 12500, 12587), (5, 13125, 13212), (5, 13750, 13837), (5, 14375, 14462), (5, 15000, 15087), (5, 9375, 9462)]

def row088_layer000_block002 : List ColouredInterval :=
  [(5, 12500, 12587), (7, 7889, 7976), (7, 8232, 8319), (7, 8575, 8662), (7, 9604, 9691), (7, 12005, 12092), (7, 14406, 14493), (11, 14641, 14728), (13, 8788, 8875), (13, 10985, 11072), (13, 13182, 13269), (17, 9826, 9913), (17, 14739, 14826), (19, 7656, 7668), (19, 7942, 8029), (19, 8303, 8390)]

def row088_layer000_block003 : List ColouredInterval :=
  [(19, 8664, 8751), (19, 9025, 9112), (19, 13718, 13805), (23, 7935, 8022), (23, 8464, 8551), (23, 8993, 9080), (23, 9522, 9609), (23, 10051, 10138), (23, 10580, 10667), (23, 11109, 11196), (23, 11638, 11725), (23, 12167, 12254), (23, 12696, 12783), (23, 13225, 13312), (23, 12167, 12254), (29, 7656, 7656)]

def row088_layer000_block004 : List ColouredInterval :=
  [(29, 8410, 8497), (29, 9251, 9338), (29, 10092, 10179), (29, 10933, 11020), (29, 11774, 11861), (29, 12615, 12702), (29, 13456, 13543), (29, 14297, 14384), (29, 15138, 15225), (31, 7688, 7775), (31, 8649, 8736), (31, 9610, 9697), (31, 10571, 10658), (31, 11532, 11619), (31, 12493, 12580), (31, 13454, 13541)]

def row088_layer000_block005 : List ColouredInterval :=
  [(31, 14415, 14502), (37, 8214, 8301), (37, 9583, 9670), (37, 10952, 11039), (37, 12321, 12408), (37, 13690, 13777), (37, 15059, 15146), (41, 8405, 8492), (41, 10086, 10173), (41, 11767, 11854), (41, 13448, 13535), (41, 15129, 15216), (43, 9245, 9332), (43, 11094, 11181), (43, 12943, 13030), (43, 14792, 14879)]

def row088_layer000_block006 : List ColouredInterval :=
  [(47, 8836, 8923), (47, 11045, 11132), (47, 13254, 13341), (53, 8427, 8514), (53, 11236, 11323), (53, 14045, 14132), (59, 10443, 10530), (59, 13924, 14011), (61, 11163, 11250), (61, 14884, 14971), (67, 8978, 9065), (67, 13467, 13554), (71, 10082, 10169), (71, 15123, 15210), (73, 10658, 10745), (79, 12482, 12569)]

def row088_layer000_block007 : List ColouredInterval :=
  [(83, 13778, 13865)]

def row088_layer000_chunks : List (List ColouredInterval) :=
  [row088_layer000_block000, row088_layer000_block001, row088_layer000_block002, row088_layer000_block003, row088_layer000_block004, row088_layer000_block005, row088_layer000_block006, row088_layer000_block007]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row088_layer000_intervals

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row088_layer000_arithmetic : LayerArithmeticValid row088.height { lower := 7656, upper := 15312, M := 25 } := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row088_layer000_arithmetic

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row088_layer000_enumeration :
    activePowerIntervalList 88 25 7656 15312 = row088_layer000_intervals := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row088_layer000_enumeration

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row088_layer000_pairs000 :
    row088_layer000_block000.all (fun I => row088_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row088_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row088_layer000_pairs000

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row088_layer000_pairs001 :
    row088_layer000_block001.all (fun I => row088_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row088_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row088_layer000_pairs001

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row088_layer000_pairs002 :
    row088_layer000_block002.all (fun I => row088_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row088_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row088_layer000_pairs002

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row088_layer000_pairs003 :
    row088_layer000_block003.all (fun I => row088_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row088_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row088_layer000_pairs003

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row088_layer000_pairs004 :
    row088_layer000_block004.all (fun I => row088_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row088_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row088_layer000_pairs004

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row088_layer000_pairs005 :
    row088_layer000_block005.all (fun I => row088_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row088_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row088_layer000_pairs005

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row088_layer000_pairs006 :
    row088_layer000_block006.all (fun I => row088_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row088_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row088_layer000_pairs006

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row088_layer000_pairs007 :
    row088_layer000_block007.all (fun I => row088_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row088_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row088_layer000_pairs007

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row088_layer000_chunks_eq : row088_layer000_chunks.flatten = row088_layer000_intervals := by
  rfl

theorem row088_layer000_pairs : pairCoverCheck row088_layer000_intervals row088_bounds = true := by
  apply pairCoverCheck_of_chunks row088_layer000_chunks_eq
  intro block hblock
  simp only [row088_layer000_chunks, List.mem_cons, List.mem_nil_iff, or_false] at hblock
  rcases hblock with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
  · exact row088_layer000_pairs000
  · exact row088_layer000_pairs001
  · exact row088_layer000_pairs002
  · exact row088_layer000_pairs003
  · exact row088_layer000_pairs004
  · exact row088_layer000_pairs005
  · exact row088_layer000_pairs006
  · exact row088_layer000_pairs007

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row088_layer000_chunks_eq
#print axioms B699LowIndex.LowIndexLean513dc7cc.row088_layer000_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row088_layer000_checked :
    coverLayerCheck row088.height row088.goods { lower := 7656, upper := 15312, M := 25 } = true := by
  exact coverLayerCheck_of_parts row088_layer000_arithmetic row088_layer000_enumeration row088_bounds_eq row088_layer000_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row088_layer000_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row088_layer001_intervals : List ColouredInterval :=
  [(2, 16384, 16471), (2, 16384, 16471), (3, 15312, 15396), (3, 17496, 17583), (3, 19683, 19770), (3, 21870, 21957), (3, 24057, 24144), (3, 26244, 26331), (3, 28431, 28518), (3, 30618, 30623), (3, 19683, 19770), (3, 26244, 26331), (3, 19683, 19770), (5, 15625, 15712), (5, 18750, 18837), (5, 21875, 21962), (5, 25000, 25087), (5, 28125, 28212), (5, 15625, 15712), (7, 16807, 16894), (7, 19208, 19295), (7, 21609, 21696), (7, 24010, 24097), (7, 26411, 26498), (7, 28812, 28899), (7, 16807, 16894), (13, 15379, 15466), (13, 17576, 17663), (13, 19773, 19860), (13, 21970, 22057), (13, 24167, 24254), (13, 26364, 26451), (13, 28561, 28648), (13, 28561, 28648), (17, 19652, 19739), (17, 24565, 24652), (17, 29478, 29565), (19, 20577, 20664), (19, 27436, 27523), (23, 24334, 24421), (29, 15979, 16066), (29, 16820, 16907), (29, 24389, 24476), (31, 15376, 15463), (31, 16337, 16424), (31, 17298, 17385), (31, 18259, 18346), (31, 19220, 19307), (31, 29791, 29878), (37, 16428, 16515), (37, 17797, 17884), (37, 19166, 19253), (37, 20535, 20622), (37, 21904, 21991), (37, 23273, 23360), (37, 24642, 24729), (37, 26011, 26098), (37, 27380, 27467), (41, 16810, 16897), (41, 18491, 18578), (41, 20172, 20259), (41, 21853, 21940), (41, 23534, 23621), (41, 25215, 25302), (41, 26896, 26983), (41, 28577, 28664), (41, 30258, 30345), (43, 16641, 16728), (43, 18490, 18577), (43, 20339, 20426), (43, 22188, 22275), (43, 24037, 24124), (43, 25886, 25973), (43, 27735, 27822), (43, 29584, 29671), (47, 15463, 15550), (47, 17672, 17759), (47, 19881, 19968), (47, 22090, 22177), (47, 24299, 24386), (47, 26508, 26595), (47, 28717, 28804), (53, 16854, 16941), (53, 19663, 19750), (53, 22472, 22559), (53, 25281, 25368), (53, 28090, 28177), (59, 17405, 17492), (59, 20886, 20973), (59, 24367, 24454), (59, 27848, 27935), (61, 18605, 18692), (61, 22326, 22413), (61, 26047, 26134), (61, 29768, 29855), (67, 17956, 18043), (67, 22445, 22532), (67, 26934, 27021), (71, 20164, 20251), (71, 25205, 25292), (71, 30246, 30333), (73, 15987, 16074), (73, 21316, 21403), (73, 26645, 26732), (79, 18723, 18810), (79, 24964, 25051), (83, 20667, 20754), (83, 27556, 27643)]

def row088_layer001_block000 : List ColouredInterval :=
  [(2, 16384, 16471), (2, 16384, 16471), (3, 15312, 15396), (3, 17496, 17583), (3, 19683, 19770), (3, 21870, 21957), (3, 24057, 24144), (3, 26244, 26331), (3, 28431, 28518), (3, 30618, 30623), (3, 19683, 19770), (3, 26244, 26331), (3, 19683, 19770), (5, 15625, 15712), (5, 18750, 18837), (5, 21875, 21962)]

def row088_layer001_block001 : List ColouredInterval :=
  [(5, 25000, 25087), (5, 28125, 28212), (5, 15625, 15712), (7, 16807, 16894), (7, 19208, 19295), (7, 21609, 21696), (7, 24010, 24097), (7, 26411, 26498), (7, 28812, 28899), (7, 16807, 16894), (13, 15379, 15466), (13, 17576, 17663), (13, 19773, 19860), (13, 21970, 22057), (13, 24167, 24254), (13, 26364, 26451)]

def row088_layer001_block002 : List ColouredInterval :=
  [(13, 28561, 28648), (13, 28561, 28648), (17, 19652, 19739), (17, 24565, 24652), (17, 29478, 29565), (19, 20577, 20664), (19, 27436, 27523), (23, 24334, 24421), (29, 15979, 16066), (29, 16820, 16907), (29, 24389, 24476), (31, 15376, 15463), (31, 16337, 16424), (31, 17298, 17385), (31, 18259, 18346), (31, 19220, 19307)]

def row088_layer001_block003 : List ColouredInterval :=
  [(31, 29791, 29878), (37, 16428, 16515), (37, 17797, 17884), (37, 19166, 19253), (37, 20535, 20622), (37, 21904, 21991), (37, 23273, 23360), (37, 24642, 24729), (37, 26011, 26098), (37, 27380, 27467), (41, 16810, 16897), (41, 18491, 18578), (41, 20172, 20259), (41, 21853, 21940), (41, 23534, 23621), (41, 25215, 25302)]

def row088_layer001_block004 : List ColouredInterval :=
  [(41, 26896, 26983), (41, 28577, 28664), (41, 30258, 30345), (43, 16641, 16728), (43, 18490, 18577), (43, 20339, 20426), (43, 22188, 22275), (43, 24037, 24124), (43, 25886, 25973), (43, 27735, 27822), (43, 29584, 29671), (47, 15463, 15550), (47, 17672, 17759), (47, 19881, 19968), (47, 22090, 22177), (47, 24299, 24386)]

def row088_layer001_block005 : List ColouredInterval :=
  [(47, 26508, 26595), (47, 28717, 28804), (53, 16854, 16941), (53, 19663, 19750), (53, 22472, 22559), (53, 25281, 25368), (53, 28090, 28177), (59, 17405, 17492), (59, 20886, 20973), (59, 24367, 24454), (59, 27848, 27935), (61, 18605, 18692), (61, 22326, 22413), (61, 26047, 26134), (61, 29768, 29855), (67, 17956, 18043)]

def row088_layer001_block006 : List ColouredInterval :=
  [(67, 22445, 22532), (67, 26934, 27021), (71, 20164, 20251), (71, 25205, 25292), (71, 30246, 30333), (73, 15987, 16074), (73, 21316, 21403), (73, 26645, 26732), (79, 18723, 18810), (79, 24964, 25051), (83, 20667, 20754), (83, 27556, 27643)]

def row088_layer001_chunks : List (List ColouredInterval) :=
  [row088_layer001_block000, row088_layer001_block001, row088_layer001_block002, row088_layer001_block003, row088_layer001_block004, row088_layer001_block005, row088_layer001_block006]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row088_layer001_intervals

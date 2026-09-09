import research.tasks.«B699-Binomial».runs.«20260909-low-index-structure-b41a5a63».lean.FiniteCover

set_option maxRecDepth 65536
set_option maxHeartbeats 0
set_option exponentiation.threshold 1000000

namespace B699LowIndex

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

theorem row088_registered :
    decide (row088.height ∈ heightCertificateData) = true := by
  decide +kernel

theorem row088_goods_checked :
    row088.goods.all (goodSegmentCheck row088.height.i row088.height.r row088.height.s) = true := by
  decide +kernel

theorem row088_small_checked :
    coverCheck (2 * row088.height.i + 2) (row088.height.i * (row088.height.i - 1) - 1)
      (row088.goods.map goodSegmentBounds) = true := by
  decide +kernel

theorem row088_layerCover_checked :
    coverCheck (row088.height.i * (row088.height.i - 1)) (row088.height.n0 - 1)
      (row088.layers.map CoverLayer.bounds) = true := by
  decide +kernel

theorem row088_layer000_checked :
    coverLayerCheck row088.height row088.goods { lower := 7656, upper := 15312, M := 25 } = true := by
  decide +kernel

theorem row088_layer001_checked :
    coverLayerCheck row088.height row088.goods { lower := 15312, upper := 30624, M := 20 } = true := by
  decide +kernel

theorem row088_layer002_checked :
    coverLayerCheck row088.height row088.goods { lower := 30624, upper := 61248, M := 17 } = true := by
  decide +kernel

theorem row088_layer003_checked :
    coverLayerCheck row088.height row088.goods { lower := 61248, upper := 122496, M := 14 } = true := by
  decide +kernel

theorem row088_layer004_checked :
    coverLayerCheck row088.height row088.goods { lower := 122496, upper := 244992, M := 12 } = true := by
  decide +kernel

theorem row088_layer005_checked :
    coverLayerCheck row088.height row088.goods { lower := 244992, upper := 489984, M := 10 } = true := by
  decide +kernel

theorem row088_layer006_checked :
    coverLayerCheck row088.height row088.goods { lower := 489984, upper := 979968, M := 8 } = true := by
  decide +kernel

theorem row088_layer007_checked :
    coverLayerCheck row088.height row088.goods { lower := 979968, upper := 1959936, M := 7 } = true := by
  decide +kernel

theorem row088_layer008_checked :
    coverLayerCheck row088.height row088.goods { lower := 1959936, upper := 3919872, M := 6 } = true := by
  decide +kernel

theorem row088_layer009_checked :
    coverLayerCheck row088.height row088.goods { lower := 3919872, upper := 7839744, M := 5 } = true := by
  decide +kernel

theorem row088_layer010_checked :
    coverLayerCheck row088.height row088.goods { lower := 7839744, upper := 15679488, M := 4 } = true := by
  decide +kernel

theorem row088_layer011_checked :
    coverLayerCheck row088.height row088.goods { lower := 15679488, upper := 31358976, M := 4 } = true := by
  decide +kernel

theorem row088_layer012_checked :
    coverLayerCheck row088.height row088.goods { lower := 31358976, upper := 62717952, M := 3 } = true := by
  decide +kernel

theorem row088_layer013_checked :
    coverLayerCheck row088.height row088.goods { lower := 62717952, upper := 125435904, M := 3 } = true := by
  decide +kernel

theorem row088_layer014_checked :
    coverLayerCheck row088.height row088.goods { lower := 125435904, upper := 250871808, M := 2 } = true := by
  decide +kernel

theorem row088_layer015_checked :
    coverLayerCheck row088.height row088.goods { lower := 250871808, upper := 501743616, M := 2 } = true := by
  decide +kernel

theorem row088_layer016_checked :
    coverLayerCheck row088.height row088.goods { lower := 501743616, upper := 1000000000, M := 2 } = true := by
  decide +kernel

theorem row088_layers_checked :
    row088.layers.all (coverLayerCheck row088.height row088.goods) = true := by
  change List.all [
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
  ] (coverLayerCheck row088.height row088.goods) = true
  simp only [List.all_cons, List.all_nil,
    row088_layer000_checked,
    row088_layer001_checked,
    row088_layer002_checked,
    row088_layer003_checked,
    row088_layer004_checked,
    row088_layer005_checked,
    row088_layer006_checked,
    row088_layer007_checked,
    row088_layer008_checked,
    row088_layer009_checked,
    row088_layer010_checked,
    row088_layer011_checked,
    row088_layer012_checked,
    row088_layer013_checked,
    row088_layer014_checked,
    row088_layer015_checked,
    row088_layer016_checked,
    Bool.true_and]

theorem row088_checked : finiteCoverRowCheck row088 = true := by
  simp only [finiteCoverRowCheck, row088_registered, row088_goods_checked,
    row088_small_checked, row088_layerCover_checked, row088_layers_checked,
    Bool.true_and]

#print axioms B699LowIndex.row088_checked

end B699LowIndex

import research.tasks.«B699-Binomial».runs.«20260909-low-index-structure-b41a5a63».lean.FiniteCover

set_option maxRecDepth 65536
set_option maxHeartbeats 0
set_option exponentiation.threshold 1000000

namespace B699LowIndex

def row095_height : HeightCertificateDatum := { i := 95, r := 31, s := 66, n0Power10 := 9 }

def row095_goods : List GoodSegment := [
  { lower := 192, upper := 285, witness := RowWitness.topPrime 191 },
  { lower := 286, upper := 377, witness := RowWitness.topPrime 283 },
  { lower := 378, upper := 467, witness := RowWitness.topPrime 373 },
  { lower := 468, upper := 561, witness := RowWitness.topPrime 467 },
  { lower := 562, upper := 651, witness := RowWitness.topPrime 557 },
  { lower := 652, upper := 741, witness := RowWitness.topPrime 647 },
  { lower := 742, upper := 833, witness := RowWitness.topPrime 739 },
  { lower := 834, upper := 923, witness := RowWitness.topPrime 829 },
  { lower := 924, upper := 1013, witness := RowWitness.topPrime 919 },
  { lower := 1014, upper := 1107, witness := RowWitness.topPrime 1013 },
  { lower := 1108, upper := 1197, witness := RowWitness.topPrime 1103 },
  { lower := 1198, upper := 1287, witness := RowWitness.topPrime 1193 },
  { lower := 1288, upper := 1377, witness := RowWitness.topPrime 1283 },
  { lower := 1378, upper := 1467, witness := RowWitness.topPrime 1373 },
  { lower := 1468, upper := 1553, witness := RowWitness.topPrime 1459 },
  { lower := 1554, upper := 1647, witness := RowWitness.topPrime 1553 },
  { lower := 1648, upper := 1731, witness := RowWitness.topPrime 1637 },
  { lower := 1732, upper := 1817, witness := RowWitness.topPrime 1723 },
  { lower := 1818, upper := 1905, witness := RowWitness.topPrime 1811 },
  { lower := 1906, upper := 1995, witness := RowWitness.topPrime 1901 },
  { lower := 1996, upper := 2087, witness := RowWitness.topPrime 1993 },
  { lower := 2088, upper := 2181, witness := RowWitness.topPrime 2087 },
  { lower := 2182, upper := 2273, witness := RowWitness.topPrime 2179 },
  { lower := 2274, upper := 2367, witness := RowWitness.topPrime 2273 },
  { lower := 2368, upper := 2451, witness := RowWitness.topPrime 2357 },
  { lower := 2452, upper := 2541, witness := RowWitness.topPrime 2447 },
  { lower := 2542, upper := 2633, witness := RowWitness.topPrime 2539 },
  { lower := 2634, upper := 2727, witness := RowWitness.topPrime 2633 },
  { lower := 2728, upper := 2813, witness := RowWitness.topPrime 2719 },
  { lower := 2814, upper := 2897, witness := RowWitness.topPrime 2803 },
  { lower := 2898, upper := 2991, witness := RowWitness.topPrime 2897 },
  { lower := 2992, upper := 3065, witness := RowWitness.topPrime 2971 },
  { lower := 3066, upper := 3155, witness := RowWitness.topPrime 3061 },
  { lower := 3156, upper := 3231, witness := RowWitness.topPrime 3137 },
  { lower := 3232, upper := 3323, witness := RowWitness.topPrime 3229 },
  { lower := 3324, upper := 3417, witness := RowWitness.topPrime 3323 },
  { lower := 3418, upper := 3507, witness := RowWitness.topPrime 3413 },
  { lower := 3508, upper := 3593, witness := RowWitness.topPrime 3499 },
  { lower := 3594, upper := 3687, witness := RowWitness.topPrime 3593 },
  { lower := 3688, upper := 3771, witness := RowWitness.topPrime 3677 },
  { lower := 3772, upper := 3863, witness := RowWitness.topPrime 3769 },
  { lower := 3864, upper := 3957, witness := RowWitness.topPrime 3863 },
  { lower := 3958, upper := 4041, witness := RowWitness.topPrime 3947 },
  { lower := 4042, upper := 4121, witness := RowWitness.topPrime 4027 },
  { lower := 4122, upper := 4205, witness := RowWitness.topPrime 4111 },
  { lower := 4206, upper := 4295, witness := RowWitness.topPrime 4201 },
  { lower := 4296, upper := 4383, witness := RowWitness.topPrime 4289 },
  { lower := 4384, upper := 4467, witness := RowWitness.topPrime 4373 },
  { lower := 4468, upper := 4557, witness := RowWitness.topPrime 4463 },
  { lower := 4558, upper := 4643, witness := RowWitness.topPrime 4549 },
  { lower := 4644, upper := 4737, witness := RowWitness.topPrime 4643 },
  { lower := 4738, upper := 4827, witness := RowWitness.topPrime 4733 },
  { lower := 4828, upper := 4911, witness := RowWitness.topPrime 4817 },
  { lower := 4912, upper := 5003, witness := RowWitness.topPrime 4909 },
  { lower := 5004, upper := 5097, witness := RowWitness.topPrime 5003 },
  { lower := 5098, upper := 5181, witness := RowWitness.topPrime 5087 },
  { lower := 5182, upper := 5273, witness := RowWitness.topPrime 5179 },
  { lower := 5274, upper := 5367, witness := RowWitness.topPrime 5273 },
  { lower := 5368, upper := 5445, witness := RowWitness.topPrime 5351 },
  { lower := 5446, upper := 5537, witness := RowWitness.topPrime 5443 },
  { lower := 5538, upper := 5625, witness := RowWitness.topPrime 5531 },
  { lower := 5626, upper := 5717, witness := RowWitness.topPrime 5623 },
  { lower := 5718, upper := 5811, witness := RowWitness.topPrime 5717 },
  { lower := 5812, upper := 5901, witness := RowWitness.topPrime 5807 },
  { lower := 5902, upper := 5991, witness := RowWitness.topPrime 5897 },
  { lower := 5992, upper := 6081, witness := RowWitness.topPrime 5987 },
  { lower := 6082, upper := 6173, witness := RowWitness.topPrime 6079 },
  { lower := 6174, upper := 6267, witness := RowWitness.topPrime 6173 },
  { lower := 6268, upper := 6357, witness := RowWitness.topPrime 6263 },
  { lower := 6358, upper := 6447, witness := RowWitness.topPrime 6353 },
  { lower := 6448, upper := 6521, witness := RowWitness.topPrime 6427 },
  { lower := 6522, upper := 6615, witness := RowWitness.topPrime 6521 },
  { lower := 6616, upper := 6701, witness := RowWitness.topPrime 6607 },
  { lower := 6702, upper := 6795, witness := RowWitness.topPrime 6701 },
  { lower := 6796, upper := 6887, witness := RowWitness.topPrime 6793 },
  { lower := 6888, upper := 6977, witness := RowWitness.topPrime 6883 },
  { lower := 6978, upper := 7071, witness := RowWitness.topPrime 6977 },
  { lower := 7072, upper := 7163, witness := RowWitness.topPrime 7069 },
  { lower := 7164, upper := 7253, witness := RowWitness.topPrime 7159 },
  { lower := 7254, upper := 7347, witness := RowWitness.topPrime 7253 },
  { lower := 7348, upper := 7427, witness := RowWitness.topPrime 7333 },
  { lower := 7428, upper := 7511, witness := RowWitness.topPrime 7417 },
  { lower := 7512, upper := 7601, witness := RowWitness.topPrime 7507 },
  { lower := 7602, upper := 7685, witness := RowWitness.topPrime 7591 },
  { lower := 7686, upper := 7775, witness := RowWitness.topPrime 7681 },
  { lower := 7776, upper := 7853, witness := RowWitness.topPrime 7759 },
  { lower := 7854, upper := 7947, witness := RowWitness.topPrime 7853 },
  { lower := 7948, upper := 8031, witness := RowWitness.topPrime 7937 },
  { lower := 8032, upper := 8111, witness := RowWitness.topPrime 8017 },
  { lower := 8112, upper := 8205, witness := RowWitness.topPrime 8111 },
  { lower := 8206, upper := 8285, witness := RowWitness.topPrime 8191 },
  { lower := 8286, upper := 8367, witness := RowWitness.topPrime 8273 },
  { lower := 8368, upper := 8457, witness := RowWitness.topPrime 8363 },
  { lower := 8458, upper := 8541, witness := RowWitness.topPrime 8447 },
  { lower := 8542, upper := 8633, witness := RowWitness.topPrime 8539 },
  { lower := 8634, upper := 8723, witness := RowWitness.topPrime 8629 },
  { lower := 8724, upper := 8813, witness := RowWitness.topPrime 8719 },
  { lower := 8814, upper := 8901, witness := RowWitness.topPrime 8807 },
  { lower := 8902, upper := 8929, witness := RowWitness.topPrime 8893 },
  { lower := 8993, upper := 9065, witness := RowWitness.topPrime 8971 },
  { lower := 9066, upper := 9072, witness := RowWitness.topPrime 9059 },
  { lower := 9245, upper := 9335, witness := RowWitness.topPrime 9241 },
  { lower := 9336, upper := 9345, witness := RowWitness.topPrime 9323 },
  { lower := 9375, upper := 9411, witness := RowWitness.topPrime 9371 },
  { lower := 9522, upper := 9571, witness := RowWitness.topPrime 9521 },
  { lower := 9583, upper := 9645, witness := RowWitness.topPrime 9551 },
  { lower := 9646, upper := 9698, witness := RowWitness.topPrime 9643 },
  { lower := 10082, upper := 10173, witness := RowWitness.topPrime 10079 },
  { lower := 10174, upper := 10180, witness := RowWitness.topPrime 10169 },
  { lower := 10240, upper := 10300, witness := RowWitness.topPrime 10223 },
  { lower := 10580, upper := 10661, witness := RowWitness.topPrime 10567 },
  { lower := 10662, upper := 10742, witness := RowWitness.topPrime 10657 },
  { lower := 10752, upper := 10752, witness := RowWitness.topPrime 10739 },
  { lower := 10935, upper := 11003, witness := RowWitness.topPrime 10909 },
  { lower := 11004, upper := 11079, witness := RowWitness.topPrime 11003 },
  { lower := 11094, upper := 11187, witness := RowWitness.topPrime 11093 },
  { lower := 11188, upper := 11203, witness := RowWitness.topPrime 11177 },
  { lower := 11236, upper := 11257, witness := RowWitness.topPrime 11213 },
  { lower := 11264, upper := 11330, witness := RowWitness.topPrime 11261 },
  { lower := 11774, upper := 11837, witness := RowWitness.topPrime 11743 },
  { lower := 11838, upper := 11861, witness := RowWitness.topPrime 11833 },
  { lower := 12005, upper := 12073, witness := RowWitness.topPrime 11987 },
  { lower := 12321, upper := 12382, witness := RowWitness.topPrime 12301 },
  { lower := 12393, upper := 12415, witness := RowWitness.topPrime 12391 },
  { lower := 12482, upper := 12487, witness := RowWitness.topPrime 12479 },
  { lower := 12493, upper := 12585, witness := RowWitness.topPrime 12491 },
  { lower := 12586, upper := 12587, witness := RowWitness.topPrime 12583 },
  { lower := 13182, upper := 13216, witness := RowWitness.topPrime 13177 },
  { lower := 13254, upper := 13276, witness := RowWitness.topPrime 13249 },
  { lower := 13310, upper := 13403, witness := RowWitness.topPrime 13309 },
  { lower := 13404, upper := 13404, witness := RowWitness.topPrime 13399 },
  { lower := 13454, upper := 13545, witness := RowWitness.topPrime 13451 },
  { lower := 13546, upper := 13550, witness := RowWitness.topPrime 13537 },
  { lower := 13778, upper := 13784, witness := RowWitness.topPrime 13763 },
  { lower := 13851, upper := 13872, witness := RowWitness.topPrime 13841 },
  { lower := 13924, upper := 13945, witness := RowWitness.topPrime 13921 },
  { lower := 14336, upper := 14391, witness := RowWitness.topPrime 14327 },
  { lower := 14406, upper := 14495, witness := RowWitness.topPrime 14401 },
  { lower := 14496, upper := 14500, witness := RowWitness.topPrime 14489 },
  { lower := 14641, upper := 14674, witness := RowWitness.topPrime 14639 },
  { lower := 14792, upper := 14833, witness := RowWitness.topPrime 14783 },
  { lower := 14884, upper := 14886, witness := RowWitness.topPrime 14879 },
  { lower := 15123, upper := 15215, witness := RowWitness.topPrime 15121 },
  { lower := 15216, upper := 15223, witness := RowWitness.topPrime 15199 },
  { lower := 15360, upper := 15453, witness := RowWitness.topPrime 15359 },
  { lower := 15454, upper := 15473, witness := RowWitness.topPrime 15451 },
  { lower := 15979, upper := 16067, witness := RowWitness.topPrime 15973 },
  { lower := 16068, upper := 16073, witness := RowWitness.topPrime 16067 },
  { lower := 16384, upper := 16475, witness := RowWitness.topPrime 16381 },
  { lower := 16476, upper := 16478, witness := RowWitness.topPrime 16453 },
  { lower := 16810, upper := 16881, witness := RowWitness.topPrime 16787 },
  { lower := 16882, upper := 16914, witness := RowWitness.topPrime 16879 },
  { lower := 17303, upper := 17392, witness := RowWitness.topPrime 17299 },
  { lower := 17408, upper := 17495, witness := RowWitness.topPrime 17401 },
  { lower := 17496, upper := 17502, witness := RowWitness.topPrime 17491 },
  { lower := 17576, upper := 17590, witness := RowWitness.topPrime 17573 },
  { lower := 17661, upper := 17670, witness := RowWitness.topPrime 17659 },
  { lower := 17672, upper := 17755, witness := RowWitness.topPrime 17669 },
  { lower := 18490, upper := 18575, witness := RowWitness.topPrime 18481 },
  { lower := 18576, upper := 18584, witness := RowWitness.topPrime 18553 },
  { lower := 18634, upper := 18699, witness := RowWitness.topPrime 18617 },
  { lower := 18723, upper := 18728, witness := RowWitness.topPrime 18719 },
  { lower := 19208, upper := 19260, witness := RowWitness.topPrime 19207 },
  { lower := 19663, upper := 19755, witness := RowWitness.topPrime 19661 },
  { lower := 19756, upper := 19757, witness := RowWitness.topPrime 19753 },
  { lower := 19773, upper := 19777, witness := RowWitness.topPrime 19763 },
  { lower := 19965, upper := 19975, witness := RowWitness.topPrime 19963 },
  { lower := 20172, upper := 20255, witness := RowWitness.topPrime 20161 },
  { lower := 20256, upper := 20258, witness := RowWitness.topPrime 20249 },
  { lower := 20535, upper := 20574, witness := RowWitness.topPrime 20533 },
  { lower := 21316, upper := 21390, witness := RowWitness.topPrime 21313 },
  { lower := 21870, upper := 21957, witness := RowWitness.topPrime 21863 },
  { lower := 21958, upper := 21964, witness := RowWitness.topPrime 21943 },
  { lower := 21970, upper := 21998, witness := RowWitness.topPrime 21961 },
  { lower := 22472, upper := 22563, witness := RowWitness.topPrime 22469 },
  { lower := 22564, upper := 22566, witness := RowWitness.topPrime 22549 },
  { lower := 24037, upper := 24123, witness := RowWitness.topPrime 24029 },
  { lower := 24124, upper := 24131, witness := RowWitness.topPrime 24121 },
  { lower := 24334, upper := 24423, witness := RowWitness.topPrime 24329 },
  { lower := 24424, upper := 24461, witness := RowWitness.topPrime 24421 },
  { lower := 24576, upper := 24659, witness := RowWitness.topPrime 24571 },
  { lower := 25215, upper := 25283, witness := RowWitness.topPrime 25189 },
  { lower := 25284, upper := 25309, witness := RowWitness.topPrime 25261 },
  { lower := 26411, upper := 26458, witness := RowWitness.topPrime 26407 },
  { lower := 26645, upper := 26718, witness := RowWitness.topPrime 26641 },
  { lower := 26934, upper := 26990, witness := RowWitness.topPrime 26927 },
  { lower := 28577, upper := 28655, witness := RowWitness.topPrime 28573 },
  { lower := 28717, upper := 28766, witness := RowWitness.topPrime 28711 },
  { lower := 29791, upper := 29862, witness := RowWitness.topPrime 29789 },
  { lower := 30758, upper := 30814, witness := RowWitness.topPrime 30757 },
  { lower := 30926, upper := 30993, witness := RowWitness.topPrime 30911 },
  { lower := 31213, upper := 31287, witness := RowWitness.topPrime 31193 },
  { lower := 31288, upper := 31307, witness := RowWitness.topPrime 31277 },
  { lower := 31329, upper := 31344, witness := RowWitness.topPrime 31327 },
  { lower := 31423, upper := 31423, witness := RowWitness.topPrime 31397 },
  { lower := 31433, upper := 31491, witness := RowWitness.topPrime 31397 },
  { lower := 31492, upper := 31517, witness := RowWitness.topPrime 31489 },
  { lower := 32805, upper := 32862, witness := RowWitness.topPrime 32803 },
  { lower := 33708, upper := 33708, witness := RowWitness.topPrime 33703 },
  { lower := 34445, upper := 34485, witness := RowWitness.topPrime 34439 },
  { lower := 34816, upper := 34901, witness := RowWitness.topPrime 34807 },
  { lower := 34902, upper := 34904, witness := RowWitness.topPrime 34897 },
  { lower := 35344, upper := 35381, witness := RowWitness.topPrime 35339 },
  { lower := 36517, upper := 36591, witness := RowWitness.topPrime 36497 },
  { lower := 36592, upper := 36595, witness := RowWitness.topPrime 36587 },
  { lower := 37303, upper := 37304, witness := RowWitness.topPrime 37277 },
  { lower := 39326, upper := 39417, witness := RowWitness.topPrime 39323 },
  { lower := 39418, upper := 39420, witness := RowWitness.topPrime 39409 },
  { lower := 40401, upper := 40422, witness := RowWitness.topPrime 40387 },
  { lower := 40960, upper := 41025, witness := RowWitness.topPrime 40949 },
  { lower := 48734, upper := 48762, witness := RowWitness.topPrime 48733 },
  { lower := 48778, upper := 48828, witness := RowWitness.topPrime 48767 },
  { lower := 49152, upper := 49224, witness := RowWitness.topPrime 49139 },
  { lower := 50421, upper := 50504, witness := RowWitness.topPrime 50417 },
  { lower := 53290, upper := 53342, witness := RowWitness.topPrime 53281 },
  { lower := 55451, upper := 55535, witness := RowWitness.topPrime 55441 },
  { lower := 55536, upper := 55541, witness := RowWitness.topPrime 55529 },
  { lower := 58619, upper := 58658, witness := RowWitness.topPrime 58613 },
  { lower := 59049, upper := 59050, witness := RowWitness.topPrime 59029 },
  { lower := 63948, upper := 63963, witness := RowWitness.topPrime 63929 },
  { lower := 65536, upper := 65615, witness := RowWitness.topPrime 65521 },
  { lower := 65616, upper := 65630, witness := RowWitness.topPrime 65609 },
  { lower := 68921, upper := 68984, witness := RowWitness.topPrime 68917 },
  { lower := 73205, upper := 73261, witness := RowWitness.topPrime 73189 },
  { lower := 137842, upper := 137875, witness := RowWitness.topPrime 137831 },
  { lower := 148955, upper := 148971, witness := RowWitness.topPrime 148949 }
]

def row095_layers : List CoverLayer := [
  { lower := 8930, upper := 17860, M := 21 },
  { lower := 17860, upper := 35720, M := 17 },
  { lower := 35720, upper := 71440, M := 14 },
  { lower := 71440, upper := 142880, M := 11 },
  { lower := 142880, upper := 285760, M := 9 },
  { lower := 285760, upper := 571520, M := 7 },
  { lower := 571520, upper := 1143040, M := 6 },
  { lower := 1143040, upper := 2286080, M := 5 },
  { lower := 2286080, upper := 4572160, M := 4 },
  { lower := 4572160, upper := 9144320, M := 3 },
  { lower := 9144320, upper := 18288640, M := 3 },
  { lower := 18288640, upper := 36577280, M := 2 },
  { lower := 36577280, upper := 73154560, M := 2 },
  { lower := 73154560, upper := 146309120, M := 2 },
  { lower := 146309120, upper := 292618240, M := 1 },
  { lower := 292618240, upper := 585236480, M := 1 },
  { lower := 585236480, upper := 1000000000, M := 1 }
]

def row095 : FiniteCoverRow := {
  height := row095_height,
  goods := row095_goods,
  layers := row095_layers
}

theorem row095_registered :
    decide (row095.height ∈ heightCertificateData) = true := by
  decide +kernel

theorem row095_goods_checked :
    row095.goods.all (goodSegmentCheck row095.height.i row095.height.r row095.height.s) = true := by
  decide +kernel

theorem row095_small_checked :
    coverCheck (2 * row095.height.i + 2) (row095.height.i * (row095.height.i - 1) - 1)
      (row095.goods.map goodSegmentBounds) = true := by
  decide +kernel

theorem row095_layerCover_checked :
    coverCheck (row095.height.i * (row095.height.i - 1)) (row095.height.n0 - 1)
      (row095.layers.map CoverLayer.bounds) = true := by
  decide +kernel

theorem row095_layer000_checked :
    coverLayerCheck row095.height row095.goods { lower := 8930, upper := 17860, M := 21 } = true := by
  decide +kernel

theorem row095_layer001_checked :
    coverLayerCheck row095.height row095.goods { lower := 17860, upper := 35720, M := 17 } = true := by
  decide +kernel

theorem row095_layer002_checked :
    coverLayerCheck row095.height row095.goods { lower := 35720, upper := 71440, M := 14 } = true := by
  decide +kernel

theorem row095_layer003_checked :
    coverLayerCheck row095.height row095.goods { lower := 71440, upper := 142880, M := 11 } = true := by
  decide +kernel

theorem row095_layer004_checked :
    coverLayerCheck row095.height row095.goods { lower := 142880, upper := 285760, M := 9 } = true := by
  decide +kernel

theorem row095_layer005_checked :
    coverLayerCheck row095.height row095.goods { lower := 285760, upper := 571520, M := 7 } = true := by
  decide +kernel

theorem row095_layer006_checked :
    coverLayerCheck row095.height row095.goods { lower := 571520, upper := 1143040, M := 6 } = true := by
  decide +kernel

theorem row095_layer007_checked :
    coverLayerCheck row095.height row095.goods { lower := 1143040, upper := 2286080, M := 5 } = true := by
  decide +kernel

theorem row095_layer008_checked :
    coverLayerCheck row095.height row095.goods { lower := 2286080, upper := 4572160, M := 4 } = true := by
  decide +kernel

theorem row095_layer009_checked :
    coverLayerCheck row095.height row095.goods { lower := 4572160, upper := 9144320, M := 3 } = true := by
  decide +kernel

theorem row095_layer010_checked :
    coverLayerCheck row095.height row095.goods { lower := 9144320, upper := 18288640, M := 3 } = true := by
  decide +kernel

theorem row095_layer011_checked :
    coverLayerCheck row095.height row095.goods { lower := 18288640, upper := 36577280, M := 2 } = true := by
  decide +kernel

theorem row095_layer012_checked :
    coverLayerCheck row095.height row095.goods { lower := 36577280, upper := 73154560, M := 2 } = true := by
  decide +kernel

theorem row095_layer013_checked :
    coverLayerCheck row095.height row095.goods { lower := 73154560, upper := 146309120, M := 2 } = true := by
  decide +kernel

theorem row095_layer014_checked :
    coverLayerCheck row095.height row095.goods { lower := 146309120, upper := 292618240, M := 1 } = true := by
  decide +kernel

theorem row095_layer015_checked :
    coverLayerCheck row095.height row095.goods { lower := 292618240, upper := 585236480, M := 1 } = true := by
  decide +kernel

theorem row095_layer016_checked :
    coverLayerCheck row095.height row095.goods { lower := 585236480, upper := 1000000000, M := 1 } = true := by
  decide +kernel

theorem row095_layers_checked :
    row095.layers.all (coverLayerCheck row095.height row095.goods) = true := by
  change List.all [
    { lower := 8930, upper := 17860, M := 21 },
    { lower := 17860, upper := 35720, M := 17 },
    { lower := 35720, upper := 71440, M := 14 },
    { lower := 71440, upper := 142880, M := 11 },
    { lower := 142880, upper := 285760, M := 9 },
    { lower := 285760, upper := 571520, M := 7 },
    { lower := 571520, upper := 1143040, M := 6 },
    { lower := 1143040, upper := 2286080, M := 5 },
    { lower := 2286080, upper := 4572160, M := 4 },
    { lower := 4572160, upper := 9144320, M := 3 },
    { lower := 9144320, upper := 18288640, M := 3 },
    { lower := 18288640, upper := 36577280, M := 2 },
    { lower := 36577280, upper := 73154560, M := 2 },
    { lower := 73154560, upper := 146309120, M := 2 },
    { lower := 146309120, upper := 292618240, M := 1 },
    { lower := 292618240, upper := 585236480, M := 1 },
    { lower := 585236480, upper := 1000000000, M := 1 }
  ] (coverLayerCheck row095.height row095.goods) = true
  simp only [List.all_cons, List.all_nil,
    row095_layer000_checked,
    row095_layer001_checked,
    row095_layer002_checked,
    row095_layer003_checked,
    row095_layer004_checked,
    row095_layer005_checked,
    row095_layer006_checked,
    row095_layer007_checked,
    row095_layer008_checked,
    row095_layer009_checked,
    row095_layer010_checked,
    row095_layer011_checked,
    row095_layer012_checked,
    row095_layer013_checked,
    row095_layer014_checked,
    row095_layer015_checked,
    row095_layer016_checked,
    Bool.true_and]

theorem row095_checked : finiteCoverRowCheck row095 = true := by
  simp only [finiteCoverRowCheck, row095_registered, row095_goods_checked,
    row095_small_checked, row095_layerCover_checked, row095_layers_checked,
    Bool.true_and]

#print axioms B699LowIndex.row095_checked

end B699LowIndex

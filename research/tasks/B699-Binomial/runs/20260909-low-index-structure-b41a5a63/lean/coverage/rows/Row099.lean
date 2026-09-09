import research.tasks.«B699-Binomial».runs.«20260909-low-index-structure-b41a5a63».lean.FiniteCover

set_option maxRecDepth 65536
set_option maxHeartbeats 0
set_option exponentiation.threshold 1000000

namespace B699LowIndex

def row099_height : HeightCertificateDatum := { i := 99, r := 32, s := 69, n0Power10 := 9 }

def row099_goods : List GoodSegment := [
  { lower := 200, upper := 297, witness := RowWitness.topPrime 199 },
  { lower := 298, upper := 391, witness := RowWitness.topPrime 293 },
  { lower := 392, upper := 487, witness := RowWitness.topPrime 389 },
  { lower := 488, upper := 585, witness := RowWitness.topPrime 487 },
  { lower := 586, upper := 675, witness := RowWitness.topPrime 577 },
  { lower := 676, upper := 771, witness := RowWitness.topPrime 673 },
  { lower := 772, upper := 867, witness := RowWitness.topPrime 769 },
  { lower := 868, upper := 961, witness := RowWitness.topPrime 863 },
  { lower := 962, upper := 1051, witness := RowWitness.topPrime 953 },
  { lower := 1052, upper := 1149, witness := RowWitness.topPrime 1051 },
  { lower := 1150, upper := 1227, witness := RowWitness.topPrime 1129 },
  { lower := 1228, upper := 1321, witness := RowWitness.topPrime 1223 },
  { lower := 1322, upper := 1419, witness := RowWitness.topPrime 1321 },
  { lower := 1420, upper := 1507, witness := RowWitness.topPrime 1409 },
  { lower := 1508, upper := 1597, witness := RowWitness.topPrime 1499 },
  { lower := 1598, upper := 1695, witness := RowWitness.topPrime 1597 },
  { lower := 1696, upper := 1791, witness := RowWitness.topPrime 1693 },
  { lower := 1792, upper := 1887, witness := RowWitness.topPrime 1789 },
  { lower := 1888, upper := 1977, witness := RowWitness.topPrime 1879 },
  { lower := 1978, upper := 2071, witness := RowWitness.topPrime 1973 },
  { lower := 2072, upper := 2167, witness := RowWitness.topPrime 2069 },
  { lower := 2168, upper := 2259, witness := RowWitness.topPrime 2161 },
  { lower := 2260, upper := 2349, witness := RowWitness.topPrime 2251 },
  { lower := 2350, upper := 2445, witness := RowWitness.topPrime 2347 },
  { lower := 2446, upper := 2539, witness := RowWitness.topPrime 2441 },
  { lower := 2540, upper := 2637, witness := RowWitness.topPrime 2539 },
  { lower := 2638, upper := 2731, witness := RowWitness.topPrime 2633 },
  { lower := 2732, upper := 2829, witness := RowWitness.topPrime 2731 },
  { lower := 2830, upper := 2917, witness := RowWitness.topPrime 2819 },
  { lower := 2918, upper := 3015, witness := RowWitness.topPrime 2917 },
  { lower := 3016, upper := 3109, witness := RowWitness.topPrime 3011 },
  { lower := 3110, upper := 3207, witness := RowWitness.topPrime 3109 },
  { lower := 3208, upper := 3301, witness := RowWitness.topPrime 3203 },
  { lower := 3302, upper := 3399, witness := RowWitness.topPrime 3301 },
  { lower := 3400, upper := 3489, witness := RowWitness.topPrime 3391 },
  { lower := 3490, upper := 3567, witness := RowWitness.topPrime 3469 },
  { lower := 3568, upper := 3657, witness := RowWitness.topPrime 3559 },
  { lower := 3658, upper := 3741, witness := RowWitness.topPrime 3643 },
  { lower := 3742, upper := 3837, witness := RowWitness.topPrime 3739 },
  { lower := 3838, upper := 3931, witness := RowWitness.topPrime 3833 },
  { lower := 3932, upper := 4029, witness := RowWitness.topPrime 3931 },
  { lower := 4030, upper := 4125, witness := RowWitness.topPrime 4027 },
  { lower := 4126, upper := 4209, witness := RowWitness.topPrime 4111 },
  { lower := 4210, upper := 4299, witness := RowWitness.topPrime 4201 },
  { lower := 4300, upper := 4395, witness := RowWitness.topPrime 4297 },
  { lower := 4396, upper := 4489, witness := RowWitness.topPrime 4391 },
  { lower := 4490, upper := 4581, witness := RowWitness.topPrime 4483 },
  { lower := 4582, upper := 4665, witness := RowWitness.topPrime 4567 },
  { lower := 4666, upper := 4761, witness := RowWitness.topPrime 4663 },
  { lower := 4762, upper := 4857, witness := RowWitness.topPrime 4759 },
  { lower := 4858, upper := 4929, witness := RowWitness.topPrime 4831 },
  { lower := 4930, upper := 5017, witness := RowWitness.topPrime 4919 },
  { lower := 5018, upper := 5109, witness := RowWitness.topPrime 5011 },
  { lower := 5110, upper := 5205, witness := RowWitness.topPrime 5107 },
  { lower := 5206, upper := 5295, witness := RowWitness.topPrime 5197 },
  { lower := 5296, upper := 5379, witness := RowWitness.topPrime 5281 },
  { lower := 5380, upper := 5449, witness := RowWitness.topPrime 5351 },
  { lower := 5450, upper := 5547, witness := RowWitness.topPrime 5449 },
  { lower := 5548, upper := 5629, witness := RowWitness.topPrime 5531 },
  { lower := 5630, upper := 5721, witness := RowWitness.topPrime 5623 },
  { lower := 5722, upper := 5815, witness := RowWitness.topPrime 5717 },
  { lower := 5816, upper := 5911, witness := RowWitness.topPrime 5813 },
  { lower := 5912, upper := 6001, witness := RowWitness.topPrime 5903 },
  { lower := 6002, upper := 6085, witness := RowWitness.topPrime 5987 },
  { lower := 6086, upper := 6177, witness := RowWitness.topPrime 6079 },
  { lower := 6178, upper := 6271, witness := RowWitness.topPrime 6173 },
  { lower := 6272, upper := 6369, witness := RowWitness.topPrime 6271 },
  { lower := 6370, upper := 6465, witness := RowWitness.topPrime 6367 },
  { lower := 6466, upper := 6549, witness := RowWitness.topPrime 6451 },
  { lower := 6550, upper := 6645, witness := RowWitness.topPrime 6547 },
  { lower := 6646, upper := 6735, witness := RowWitness.topPrime 6637 },
  { lower := 6736, upper := 6831, witness := RowWitness.topPrime 6733 },
  { lower := 6832, upper := 6927, witness := RowWitness.topPrime 6829 },
  { lower := 6928, upper := 7015, witness := RowWitness.topPrime 6917 },
  { lower := 7016, upper := 7111, witness := RowWitness.topPrime 7013 },
  { lower := 7112, upper := 7207, witness := RowWitness.topPrime 7109 },
  { lower := 7208, upper := 7305, witness := RowWitness.topPrime 7207 },
  { lower := 7306, upper := 7395, witness := RowWitness.topPrime 7297 },
  { lower := 7396, upper := 7491, witness := RowWitness.topPrime 7393 },
  { lower := 7492, upper := 7587, witness := RowWitness.topPrime 7489 },
  { lower := 7588, upper := 7681, witness := RowWitness.topPrime 7583 },
  { lower := 7682, upper := 7779, witness := RowWitness.topPrime 7681 },
  { lower := 7780, upper := 7857, witness := RowWitness.topPrime 7759 },
  { lower := 7858, upper := 7951, witness := RowWitness.topPrime 7853 },
  { lower := 7952, upper := 8049, witness := RowWitness.topPrime 7951 },
  { lower := 8050, upper := 8137, witness := RowWitness.topPrime 8039 },
  { lower := 8138, upper := 8221, witness := RowWitness.topPrime 8123 },
  { lower := 8222, upper := 8319, witness := RowWitness.topPrime 8221 },
  { lower := 8320, upper := 8415, witness := RowWitness.topPrime 8317 },
  { lower := 8416, upper := 8487, witness := RowWitness.topPrime 8389 },
  { lower := 8488, upper := 8565, witness := RowWitness.topPrime 8467 },
  { lower := 8566, upper := 8661, witness := RowWitness.topPrime 8563 },
  { lower := 8662, upper := 8745, witness := RowWitness.topPrime 8647 },
  { lower := 8746, upper := 8839, witness := RowWitness.topPrime 8741 },
  { lower := 8840, upper := 8937, witness := RowWitness.topPrime 8839 },
  { lower := 8938, upper := 9031, witness := RowWitness.topPrime 8933 },
  { lower := 9032, upper := 9127, witness := RowWitness.topPrime 9029 },
  { lower := 9128, upper := 9225, witness := RowWitness.topPrime 9127 },
  { lower := 9226, upper := 9319, witness := RowWitness.topPrime 9221 },
  { lower := 9320, upper := 9417, witness := RowWitness.topPrime 9319 },
  { lower := 9418, upper := 9511, witness := RowWitness.topPrime 9413 },
  { lower := 9512, upper := 9609, witness := RowWitness.topPrime 9511 },
  { lower := 9610, upper := 9699, witness := RowWitness.topPrime 9601 },
  { lower := 9700, upper := 9702, witness := RowWitness.topPrime 9697 },
  { lower := 9826, upper := 9826, witness := RowWitness.topPrime 9817 },
  { lower := 10051, upper := 10137, witness := RowWitness.topPrime 10039 },
  { lower := 10138, upper := 10184, witness := RowWitness.topPrime 10133 },
  { lower := 10580, upper := 10665, witness := RowWitness.topPrime 10567 },
  { lower := 10666, upper := 10723, witness := RowWitness.topPrime 10663 },
  { lower := 10752, upper := 10756, witness := RowWitness.topPrime 10739 },
  { lower := 10952, upper := 11047, witness := RowWitness.topPrime 10949 },
  { lower := 11048, upper := 11083, witness := RowWitness.topPrime 11047 },
  { lower := 11094, upper := 11191, witness := RowWitness.topPrime 11093 },
  { lower := 11192, upper := 11207, witness := RowWitness.topPrime 11177 },
  { lower := 11236, upper := 11311, witness := RowWitness.topPrime 11213 },
  { lower := 11312, upper := 11348, witness := RowWitness.topPrime 11311 },
  { lower := 11774, upper := 11841, witness := RowWitness.topPrime 11743 },
  { lower := 11842, upper := 11865, witness := RowWitness.topPrime 11839 },
  { lower := 12321, upper := 12386, witness := RowWitness.topPrime 12301 },
  { lower := 12493, upper := 12589, witness := RowWitness.topPrime 12491 },
  { lower := 12590, upper := 12591, witness := RowWitness.topPrime 12589 },
  { lower := 13125, upper := 13219, witness := RowWitness.topPrime 13121 },
  { lower := 13220, upper := 13223, witness := RowWitness.topPrime 13219 },
  { lower := 13254, upper := 13280, witness := RowWitness.topPrime 13249 },
  { lower := 13312, upper := 13352, witness := RowWitness.topPrime 13309 },
  { lower := 13454, upper := 13549, witness := RowWitness.topPrime 13451 },
  { lower := 13550, upper := 13554, witness := RowWitness.topPrime 13537 },
  { lower := 13718, upper := 13809, witness := RowWitness.topPrime 13711 },
  { lower := 13810, upper := 13816, witness := RowWitness.topPrime 13807 },
  { lower := 14336, upper := 14395, witness := RowWitness.topPrime 14327 },
  { lower := 14406, upper := 14499, witness := RowWitness.topPrime 14401 },
  { lower := 14500, upper := 14504, witness := RowWitness.topPrime 14489 },
  { lower := 14739, upper := 14739, witness := RowWitness.topPrime 14737 },
  { lower := 14792, upper := 14837, witness := RowWitness.topPrime 14783 },
  { lower := 14884, upper := 14890, witness := RowWitness.topPrime 14879 },
  { lower := 15123, upper := 15219, witness := RowWitness.topPrime 15121 },
  { lower := 15220, upper := 15227, witness := RowWitness.topPrime 15217 },
  { lower := 15376, upper := 15471, witness := RowWitness.topPrime 15373 },
  { lower := 15472, upper := 15477, witness := RowWitness.topPrime 15467 },
  { lower := 15987, upper := 16071, witness := RowWitness.topPrime 15973 },
  { lower := 16072, upper := 16077, witness := RowWitness.topPrime 16069 },
  { lower := 16384, upper := 16479, witness := RowWitness.topPrime 16381 },
  { lower := 16480, upper := 16482, witness := RowWitness.topPrime 16477 },
  { lower := 16810, upper := 16885, witness := RowWitness.topPrime 16787 },
  { lower := 16886, upper := 16918, witness := RowWitness.topPrime 16883 },
  { lower := 17408, upper := 17499, witness := RowWitness.topPrime 17401 },
  { lower := 17500, upper := 17503, witness := RowWitness.topPrime 17497 },
  { lower := 17661, upper := 17757, witness := RowWitness.topPrime 17659 },
  { lower := 17758, upper := 17759, witness := RowWitness.topPrime 17749 },
  { lower := 18490, upper := 18579, witness := RowWitness.topPrime 18481 },
  { lower := 18580, upper := 18588, witness := RowWitness.topPrime 18553 },
  { lower := 18750, upper := 18847, witness := RowWitness.topPrime 18749 },
  { lower := 18848, upper := 18848, witness := RowWitness.topPrime 18839 },
  { lower := 19208, upper := 19305, witness := RowWitness.topPrime 19207 },
  { lower := 19306, upper := 19306, witness := RowWitness.topPrime 19301 },
  { lower := 19663, upper := 19759, witness := RowWitness.topPrime 19661 },
  { lower := 19760, upper := 19761, witness := RowWitness.topPrime 19759 },
  { lower := 19773, upper := 19781, witness := RowWitness.topPrime 19763 },
  { lower := 20172, upper := 20259, witness := RowWitness.topPrime 20161 },
  { lower := 20260, upper := 20262, witness := RowWitness.topPrime 20249 },
  { lower := 20535, upper := 20631, witness := RowWitness.topPrime 20533 },
  { lower := 20632, upper := 20633, witness := RowWitness.topPrime 20627 },
  { lower := 20667, upper := 20675, witness := RowWitness.topPrime 20663 },
  { lower := 21875, upper := 21969, witness := RowWitness.topPrime 21871 },
  { lower := 21970, upper := 22002, witness := RowWitness.topPrime 21961 },
  { lower := 22188, upper := 22188, witness := RowWitness.topPrime 22171 },
  { lower := 22472, upper := 22567, witness := RowWitness.topPrime 22469 },
  { lower := 22568, upper := 22570, witness := RowWitness.topPrime 22567 },
  { lower := 24037, upper := 24108, witness := RowWitness.topPrime 24029 },
  { lower := 24334, upper := 24427, witness := RowWitness.topPrime 24329 },
  { lower := 24428, upper := 24465, witness := RowWitness.topPrime 24421 },
  { lower := 24576, upper := 24663, witness := RowWitness.topPrime 24571 },
  { lower := 25000, upper := 25062, witness := RowWitness.topPrime 24989 },
  { lower := 25215, upper := 25287, witness := RowWitness.topPrime 25189 },
  { lower := 25288, upper := 25313, witness := RowWitness.topPrime 25261 },
  { lower := 26411, upper := 26462, witness := RowWitness.topPrime 26407 },
  { lower := 26508, upper := 26509, witness := RowWitness.topPrime 26501 },
  { lower := 26645, upper := 26722, witness := RowWitness.topPrime 26641 },
  { lower := 26934, upper := 26994, witness := RowWitness.topPrime 26927 },
  { lower := 28125, upper := 28188, witness := RowWitness.topPrime 28123 },
  { lower := 28577, upper := 28659, witness := RowWitness.topPrime 28573 },
  { lower := 28672, upper := 28675, witness := RowWitness.topPrime 28669 },
  { lower := 28717, upper := 28770, witness := RowWitness.topPrime 28711 },
  { lower := 28812, upper := 28815, witness := RowWitness.topPrime 28807 },
  { lower := 29791, upper := 29866, witness := RowWitness.topPrime 29789 },
  { lower := 30758, upper := 30818, witness := RowWitness.topPrime 30757 },
  { lower := 30926, upper := 30997, witness := RowWitness.topPrime 30911 },
  { lower := 31213, upper := 31291, witness := RowWitness.topPrime 31193 },
  { lower := 31292, upper := 31311, witness := RowWitness.topPrime 31277 },
  { lower := 31329, upper := 31348, witness := RowWitness.topPrime 31327 },
  { lower := 31423, upper := 31427, witness := RowWitness.topPrime 31397 },
  { lower := 31433, upper := 31495, witness := RowWitness.topPrime 31397 },
  { lower := 31496, upper := 31521, witness := RowWitness.topPrime 31489 },
  { lower := 33708, upper := 33712, witness := RowWitness.topPrime 33703 },
  { lower := 34375, upper := 34467, witness := RowWitness.topPrime 34369 },
  { lower := 34468, upper := 34489, witness := RowWitness.topPrime 34457 },
  { lower := 34816, upper := 34905, witness := RowWitness.topPrime 34807 },
  { lower := 34906, upper := 34908, witness := RowWitness.topPrime 34897 },
  { lower := 35344, upper := 35385, witness := RowWitness.topPrime 35339 },
  { lower := 36517, upper := 36595, witness := RowWitness.topPrime 36497 },
  { lower := 36596, upper := 36599, witness := RowWitness.topPrime 36587 },
  { lower := 37303, upper := 37308, witness := RowWitness.topPrime 37277 },
  { lower := 37349, upper := 37401, witness := RowWitness.topPrime 37339 },
  { lower := 37446, upper := 37447, witness := RowWitness.topPrime 37441 },
  { lower := 37500, upper := 37544, witness := RowWitness.topPrime 37493 },
  { lower := 37553, upper := 37598, witness := RowWitness.topPrime 37549 },
  { lower := 37636, upper := 37651, witness := RowWitness.topPrime 37633 },
  { lower := 39326, upper := 39402, witness := RowWitness.topPrime 39323 },
  { lower := 40401, upper := 40426, witness := RowWitness.topPrime 40387 },
  { lower := 40960, upper := 41029, witness := RowWitness.topPrime 40949 },
  { lower := 43750, upper := 43785, witness := RowWitness.topPrime 43721 },
  { lower := 48013, upper := 48059, witness := RowWitness.topPrime 47981 },
  { lower := 48734, upper := 48766, witness := RowWitness.topPrime 48733 },
  { lower := 48778, upper := 48832, witness := RowWitness.topPrime 48767 },
  { lower := 49152, upper := 49228, witness := RowWitness.topPrime 49139 },
  { lower := 50421, upper := 50508, witness := RowWitness.topPrime 50417 },
  { lower := 53290, upper := 53346, witness := RowWitness.topPrime 53281 },
  { lower := 55451, upper := 55539, witness := RowWitness.topPrime 55441 },
  { lower := 55540, upper := 55545, witness := RowWitness.topPrime 55529 },
  { lower := 59049, upper := 59054, witness := RowWitness.topPrime 59029 },
  { lower := 62500, upper := 62508, witness := RowWitness.topPrime 62497 },
  { lower := 63948, upper := 63967, witness := RowWitness.topPrime 63929 },
  { lower := 65536, upper := 65619, witness := RowWitness.topPrime 65521 },
  { lower := 65620, upper := 65631, witness := RowWitness.topPrime 65617 },
  { lower := 68651, upper := 68688, witness := RowWitness.topPrime 68639 },
  { lower := 68921, upper := 68988, witness := RowWitness.topPrime 68917 },
  { lower := 148955, upper := 148975, witness := RowWitness.topPrime 148949 }
]

def row099_layers : List CoverLayer := [
  { lower := 9702, upper := 19404, M := 21 },
  { lower := 19404, upper := 38808, M := 17 },
  { lower := 38808, upper := 77616, M := 14 },
  { lower := 77616, upper := 155232, M := 11 },
  { lower := 155232, upper := 310464, M := 9 },
  { lower := 310464, upper := 620928, M := 7 },
  { lower := 620928, upper := 1241856, M := 6 },
  { lower := 1241856, upper := 2483712, M := 5 },
  { lower := 2483712, upper := 4967424, M := 4 },
  { lower := 4967424, upper := 9934848, M := 3 },
  { lower := 9934848, upper := 19869696, M := 3 },
  { lower := 19869696, upper := 39739392, M := 2 },
  { lower := 39739392, upper := 79478784, M := 2 },
  { lower := 79478784, upper := 158957568, M := 2 },
  { lower := 158957568, upper := 317915136, M := 1 },
  { lower := 317915136, upper := 635830272, M := 1 },
  { lower := 635830272, upper := 1000000000, M := 1 }
]

def row099 : FiniteCoverRow := {
  height := row099_height,
  goods := row099_goods,
  layers := row099_layers
}

theorem row099_registered :
    decide (row099.height ∈ heightCertificateData) = true := by
  decide +kernel

theorem row099_goods_checked :
    row099.goods.all (goodSegmentCheck row099.height.i row099.height.r row099.height.s) = true := by
  decide +kernel

theorem row099_small_checked :
    coverCheck (2 * row099.height.i + 2) (row099.height.i * (row099.height.i - 1) - 1)
      (row099.goods.map goodSegmentBounds) = true := by
  decide +kernel

theorem row099_layerCover_checked :
    coverCheck (row099.height.i * (row099.height.i - 1)) (row099.height.n0 - 1)
      (row099.layers.map CoverLayer.bounds) = true := by
  decide +kernel

theorem row099_layer000_checked :
    coverLayerCheck row099.height row099.goods { lower := 9702, upper := 19404, M := 21 } = true := by
  decide +kernel

theorem row099_layer001_checked :
    coverLayerCheck row099.height row099.goods { lower := 19404, upper := 38808, M := 17 } = true := by
  decide +kernel

theorem row099_layer002_checked :
    coverLayerCheck row099.height row099.goods { lower := 38808, upper := 77616, M := 14 } = true := by
  decide +kernel

theorem row099_layer003_checked :
    coverLayerCheck row099.height row099.goods { lower := 77616, upper := 155232, M := 11 } = true := by
  decide +kernel

theorem row099_layer004_checked :
    coverLayerCheck row099.height row099.goods { lower := 155232, upper := 310464, M := 9 } = true := by
  decide +kernel

theorem row099_layer005_checked :
    coverLayerCheck row099.height row099.goods { lower := 310464, upper := 620928, M := 7 } = true := by
  decide +kernel

theorem row099_layer006_checked :
    coverLayerCheck row099.height row099.goods { lower := 620928, upper := 1241856, M := 6 } = true := by
  decide +kernel

theorem row099_layer007_checked :
    coverLayerCheck row099.height row099.goods { lower := 1241856, upper := 2483712, M := 5 } = true := by
  decide +kernel

theorem row099_layer008_checked :
    coverLayerCheck row099.height row099.goods { lower := 2483712, upper := 4967424, M := 4 } = true := by
  decide +kernel

theorem row099_layer009_checked :
    coverLayerCheck row099.height row099.goods { lower := 4967424, upper := 9934848, M := 3 } = true := by
  decide +kernel

theorem row099_layer010_checked :
    coverLayerCheck row099.height row099.goods { lower := 9934848, upper := 19869696, M := 3 } = true := by
  decide +kernel

theorem row099_layer011_checked :
    coverLayerCheck row099.height row099.goods { lower := 19869696, upper := 39739392, M := 2 } = true := by
  decide +kernel

theorem row099_layer012_checked :
    coverLayerCheck row099.height row099.goods { lower := 39739392, upper := 79478784, M := 2 } = true := by
  decide +kernel

theorem row099_layer013_checked :
    coverLayerCheck row099.height row099.goods { lower := 79478784, upper := 158957568, M := 2 } = true := by
  decide +kernel

theorem row099_layer014_checked :
    coverLayerCheck row099.height row099.goods { lower := 158957568, upper := 317915136, M := 1 } = true := by
  decide +kernel

theorem row099_layer015_checked :
    coverLayerCheck row099.height row099.goods { lower := 317915136, upper := 635830272, M := 1 } = true := by
  decide +kernel

theorem row099_layer016_checked :
    coverLayerCheck row099.height row099.goods { lower := 635830272, upper := 1000000000, M := 1 } = true := by
  decide +kernel

theorem row099_layers_checked :
    row099.layers.all (coverLayerCheck row099.height row099.goods) = true := by
  change List.all [
    { lower := 9702, upper := 19404, M := 21 },
    { lower := 19404, upper := 38808, M := 17 },
    { lower := 38808, upper := 77616, M := 14 },
    { lower := 77616, upper := 155232, M := 11 },
    { lower := 155232, upper := 310464, M := 9 },
    { lower := 310464, upper := 620928, M := 7 },
    { lower := 620928, upper := 1241856, M := 6 },
    { lower := 1241856, upper := 2483712, M := 5 },
    { lower := 2483712, upper := 4967424, M := 4 },
    { lower := 4967424, upper := 9934848, M := 3 },
    { lower := 9934848, upper := 19869696, M := 3 },
    { lower := 19869696, upper := 39739392, M := 2 },
    { lower := 39739392, upper := 79478784, M := 2 },
    { lower := 79478784, upper := 158957568, M := 2 },
    { lower := 158957568, upper := 317915136, M := 1 },
    { lower := 317915136, upper := 635830272, M := 1 },
    { lower := 635830272, upper := 1000000000, M := 1 }
  ] (coverLayerCheck row099.height row099.goods) = true
  simp only [List.all_cons, List.all_nil,
    row099_layer000_checked,
    row099_layer001_checked,
    row099_layer002_checked,
    row099_layer003_checked,
    row099_layer004_checked,
    row099_layer005_checked,
    row099_layer006_checked,
    row099_layer007_checked,
    row099_layer008_checked,
    row099_layer009_checked,
    row099_layer010_checked,
    row099_layer011_checked,
    row099_layer012_checked,
    row099_layer013_checked,
    row099_layer014_checked,
    row099_layer015_checked,
    row099_layer016_checked,
    Bool.true_and]

theorem row099_checked : finiteCoverRowCheck row099 = true := by
  simp only [finiteCoverRowCheck, row099_registered, row099_goods_checked,
    row099_small_checked, row099_layerCover_checked, row099_layers_checked,
    Bool.true_and]

#print axioms B699LowIndex.row099_checked

end B699LowIndex

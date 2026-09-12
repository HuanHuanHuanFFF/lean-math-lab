import research.tasks.«B699-Binomial».runs.«20260909-low-index-structure-b41a5a63».lean.FiniteCover
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.WitnessBridge
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.LayerParts
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.PairChunks

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

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


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row099

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row099_good000_checked :
    goodSegmentCheck 99 32 69
      { lower := 200, upper := 297, witness := RowWitness.topPrime 199 } = true := by
  exact good_top_prime_checked (i := 99) (r := 32) (s := 69) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row099_good001_checked :
    goodSegmentCheck 99 32 69
      { lower := 298, upper := 391, witness := RowWitness.topPrime 293 } = true := by
  exact good_top_prime_checked (i := 99) (r := 32) (s := 69) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row099_good002_checked :
    goodSegmentCheck 99 32 69
      { lower := 392, upper := 487, witness := RowWitness.topPrime 389 } = true := by
  exact good_top_prime_checked (i := 99) (r := 32) (s := 69) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row099_good003_checked :
    goodSegmentCheck 99 32 69
      { lower := 488, upper := 585, witness := RowWitness.topPrime 487 } = true := by
  exact good_top_prime_checked (i := 99) (r := 32) (s := 69) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row099_good004_checked :
    goodSegmentCheck 99 32 69
      { lower := 586, upper := 675, witness := RowWitness.topPrime 577 } = true := by
  exact good_top_prime_checked (i := 99) (r := 32) (s := 69) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row099_good005_checked :
    goodSegmentCheck 99 32 69
      { lower := 676, upper := 771, witness := RowWitness.topPrime 673 } = true := by
  exact good_top_prime_checked (i := 99) (r := 32) (s := 69) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row099_good006_checked :
    goodSegmentCheck 99 32 69
      { lower := 772, upper := 867, witness := RowWitness.topPrime 769 } = true := by
  exact good_top_prime_checked (i := 99) (r := 32) (s := 69) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row099_good007_checked :
    goodSegmentCheck 99 32 69
      { lower := 868, upper := 961, witness := RowWitness.topPrime 863 } = true := by
  exact good_top_prime_checked (i := 99) (r := 32) (s := 69) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row099_good008_checked :
    goodSegmentCheck 99 32 69
      { lower := 962, upper := 1051, witness := RowWitness.topPrime 953 } = true := by
  exact good_top_prime_checked (i := 99) (r := 32) (s := 69) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row099_good009_checked :
    goodSegmentCheck 99 32 69
      { lower := 1052, upper := 1149, witness := RowWitness.topPrime 1051 } = true := by
  exact good_top_prime_checked (i := 99) (r := 32) (s := 69) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row099_good010_checked :
    goodSegmentCheck 99 32 69
      { lower := 1150, upper := 1227, witness := RowWitness.topPrime 1129 } = true := by
  exact good_top_prime_checked (i := 99) (r := 32) (s := 69) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row099_good011_checked :
    goodSegmentCheck 99 32 69
      { lower := 1228, upper := 1321, witness := RowWitness.topPrime 1223 } = true := by
  exact good_top_prime_checked (i := 99) (r := 32) (s := 69) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row099_good012_checked :
    goodSegmentCheck 99 32 69
      { lower := 1322, upper := 1419, witness := RowWitness.topPrime 1321 } = true := by
  exact good_top_prime_checked (i := 99) (r := 32) (s := 69) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row099_good013_checked :
    goodSegmentCheck 99 32 69
      { lower := 1420, upper := 1507, witness := RowWitness.topPrime 1409 } = true := by
  exact good_top_prime_checked (i := 99) (r := 32) (s := 69) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row099_good014_checked :
    goodSegmentCheck 99 32 69
      { lower := 1508, upper := 1597, witness := RowWitness.topPrime 1499 } = true := by
  exact good_top_prime_checked (i := 99) (r := 32) (s := 69) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row099_good015_checked :
    goodSegmentCheck 99 32 69
      { lower := 1598, upper := 1695, witness := RowWitness.topPrime 1597 } = true := by
  exact good_top_prime_checked (i := 99) (r := 32) (s := 69) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row099_good000_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row099_good001_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row099_good002_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row099_good003_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row099_good004_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row099_good005_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row099_good006_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row099_good007_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row099_good008_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row099_good009_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row099_good010_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row099_good011_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row099_good012_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row099_good013_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row099_good014_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row099_good015_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row099_good016_checked :
    goodSegmentCheck 99 32 69
      { lower := 1696, upper := 1791, witness := RowWitness.topPrime 1693 } = true := by
  exact good_top_prime_checked (i := 99) (r := 32) (s := 69) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row099_good017_checked :
    goodSegmentCheck 99 32 69
      { lower := 1792, upper := 1887, witness := RowWitness.topPrime 1789 } = true := by
  exact good_top_prime_checked (i := 99) (r := 32) (s := 69) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row099_good018_checked :
    goodSegmentCheck 99 32 69
      { lower := 1888, upper := 1977, witness := RowWitness.topPrime 1879 } = true := by
  exact good_top_prime_checked (i := 99) (r := 32) (s := 69) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row099_good019_checked :
    goodSegmentCheck 99 32 69
      { lower := 1978, upper := 2071, witness := RowWitness.topPrime 1973 } = true := by
  exact good_top_prime_checked (i := 99) (r := 32) (s := 69) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row099_good020_checked :
    goodSegmentCheck 99 32 69
      { lower := 2072, upper := 2167, witness := RowWitness.topPrime 2069 } = true := by
  exact good_top_prime_checked (i := 99) (r := 32) (s := 69) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row099_good021_checked :
    goodSegmentCheck 99 32 69
      { lower := 2168, upper := 2259, witness := RowWitness.topPrime 2161 } = true := by
  exact good_top_prime_checked (i := 99) (r := 32) (s := 69) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row099_good022_checked :
    goodSegmentCheck 99 32 69
      { lower := 2260, upper := 2349, witness := RowWitness.topPrime 2251 } = true := by
  exact good_top_prime_checked (i := 99) (r := 32) (s := 69) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row099_good023_checked :
    goodSegmentCheck 99 32 69
      { lower := 2350, upper := 2445, witness := RowWitness.topPrime 2347 } = true := by
  exact good_top_prime_checked (i := 99) (r := 32) (s := 69) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row099_good024_checked :
    goodSegmentCheck 99 32 69
      { lower := 2446, upper := 2539, witness := RowWitness.topPrime 2441 } = true := by
  exact good_top_prime_checked (i := 99) (r := 32) (s := 69) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row099_good025_checked :
    goodSegmentCheck 99 32 69
      { lower := 2540, upper := 2637, witness := RowWitness.topPrime 2539 } = true := by
  exact good_top_prime_checked (i := 99) (r := 32) (s := 69) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row099_good026_checked :
    goodSegmentCheck 99 32 69
      { lower := 2638, upper := 2731, witness := RowWitness.topPrime 2633 } = true := by
  exact good_top_prime_checked (i := 99) (r := 32) (s := 69) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row099_good027_checked :
    goodSegmentCheck 99 32 69
      { lower := 2732, upper := 2829, witness := RowWitness.topPrime 2731 } = true := by
  exact good_top_prime_checked (i := 99) (r := 32) (s := 69) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row099_good028_checked :
    goodSegmentCheck 99 32 69
      { lower := 2830, upper := 2917, witness := RowWitness.topPrime 2819 } = true := by
  exact good_top_prime_checked (i := 99) (r := 32) (s := 69) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row099_good029_checked :
    goodSegmentCheck 99 32 69
      { lower := 2918, upper := 3015, witness := RowWitness.topPrime 2917 } = true := by
  exact good_top_prime_checked (i := 99) (r := 32) (s := 69) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row099_good030_checked :
    goodSegmentCheck 99 32 69
      { lower := 3016, upper := 3109, witness := RowWitness.topPrime 3011 } = true := by
  exact good_top_prime_checked (i := 99) (r := 32) (s := 69) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row099_good031_checked :
    goodSegmentCheck 99 32 69
      { lower := 3110, upper := 3207, witness := RowWitness.topPrime 3109 } = true := by
  exact good_top_prime_checked (i := 99) (r := 32) (s := 69) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row099_good016_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row099_good017_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row099_good018_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row099_good019_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row099_good020_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row099_good021_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row099_good022_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row099_good023_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row099_good024_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row099_good025_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row099_good026_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row099_good027_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row099_good028_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row099_good029_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row099_good030_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row099_good031_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row099_good032_checked :
    goodSegmentCheck 99 32 69
      { lower := 3208, upper := 3301, witness := RowWitness.topPrime 3203 } = true := by
  exact good_top_prime_checked (i := 99) (r := 32) (s := 69) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row099_good033_checked :
    goodSegmentCheck 99 32 69
      { lower := 3302, upper := 3399, witness := RowWitness.topPrime 3301 } = true := by
  exact good_top_prime_checked (i := 99) (r := 32) (s := 69) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row099_good034_checked :
    goodSegmentCheck 99 32 69
      { lower := 3400, upper := 3489, witness := RowWitness.topPrime 3391 } = true := by
  exact good_top_prime_checked (i := 99) (r := 32) (s := 69) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row099_good035_checked :
    goodSegmentCheck 99 32 69
      { lower := 3490, upper := 3567, witness := RowWitness.topPrime 3469 } = true := by
  exact good_top_prime_checked (i := 99) (r := 32) (s := 69) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row099_good036_checked :
    goodSegmentCheck 99 32 69
      { lower := 3568, upper := 3657, witness := RowWitness.topPrime 3559 } = true := by
  exact good_top_prime_checked (i := 99) (r := 32) (s := 69) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row099_good037_checked :
    goodSegmentCheck 99 32 69
      { lower := 3658, upper := 3741, witness := RowWitness.topPrime 3643 } = true := by
  exact good_top_prime_checked (i := 99) (r := 32) (s := 69) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row099_good038_checked :
    goodSegmentCheck 99 32 69
      { lower := 3742, upper := 3837, witness := RowWitness.topPrime 3739 } = true := by
  exact good_top_prime_checked (i := 99) (r := 32) (s := 69) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row099_good039_checked :
    goodSegmentCheck 99 32 69
      { lower := 3838, upper := 3931, witness := RowWitness.topPrime 3833 } = true := by
  exact good_top_prime_checked (i := 99) (r := 32) (s := 69) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row099_good040_checked :
    goodSegmentCheck 99 32 69
      { lower := 3932, upper := 4029, witness := RowWitness.topPrime 3931 } = true := by
  exact good_top_prime_checked (i := 99) (r := 32) (s := 69) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row099_good041_checked :
    goodSegmentCheck 99 32 69
      { lower := 4030, upper := 4125, witness := RowWitness.topPrime 4027 } = true := by
  exact good_top_prime_checked (i := 99) (r := 32) (s := 69) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row099_good042_checked :
    goodSegmentCheck 99 32 69
      { lower := 4126, upper := 4209, witness := RowWitness.topPrime 4111 } = true := by
  exact good_top_prime_checked (i := 99) (r := 32) (s := 69) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row099_good043_checked :
    goodSegmentCheck 99 32 69
      { lower := 4210, upper := 4299, witness := RowWitness.topPrime 4201 } = true := by
  exact good_top_prime_checked (i := 99) (r := 32) (s := 69) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row099_good044_checked :
    goodSegmentCheck 99 32 69
      { lower := 4300, upper := 4395, witness := RowWitness.topPrime 4297 } = true := by
  exact good_top_prime_checked (i := 99) (r := 32) (s := 69) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row099_good045_checked :
    goodSegmentCheck 99 32 69
      { lower := 4396, upper := 4489, witness := RowWitness.topPrime 4391 } = true := by
  exact good_top_prime_checked (i := 99) (r := 32) (s := 69) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row099_good046_checked :
    goodSegmentCheck 99 32 69
      { lower := 4490, upper := 4581, witness := RowWitness.topPrime 4483 } = true := by
  exact good_top_prime_checked (i := 99) (r := 32) (s := 69) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row099_good047_checked :
    goodSegmentCheck 99 32 69
      { lower := 4582, upper := 4665, witness := RowWitness.topPrime 4567 } = true := by
  exact good_top_prime_checked (i := 99) (r := 32) (s := 69) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row099_good032_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row099_good033_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row099_good034_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row099_good035_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row099_good036_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row099_good037_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row099_good038_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row099_good039_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row099_good040_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row099_good041_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row099_good042_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row099_good043_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row099_good044_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row099_good045_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row099_good046_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row099_good047_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row099_good048_checked :
    goodSegmentCheck 99 32 69
      { lower := 4666, upper := 4761, witness := RowWitness.topPrime 4663 } = true := by
  exact good_top_prime_checked (i := 99) (r := 32) (s := 69) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row099_good049_checked :
    goodSegmentCheck 99 32 69
      { lower := 4762, upper := 4857, witness := RowWitness.topPrime 4759 } = true := by
  exact good_top_prime_checked (i := 99) (r := 32) (s := 69) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row099_good050_checked :
    goodSegmentCheck 99 32 69
      { lower := 4858, upper := 4929, witness := RowWitness.topPrime 4831 } = true := by
  exact good_top_prime_checked (i := 99) (r := 32) (s := 69) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row099_good051_checked :
    goodSegmentCheck 99 32 69
      { lower := 4930, upper := 5017, witness := RowWitness.topPrime 4919 } = true := by
  exact good_top_prime_checked (i := 99) (r := 32) (s := 69) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row099_good052_checked :
    goodSegmentCheck 99 32 69
      { lower := 5018, upper := 5109, witness := RowWitness.topPrime 5011 } = true := by
  exact good_top_prime_checked (i := 99) (r := 32) (s := 69) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row099_good053_checked :
    goodSegmentCheck 99 32 69
      { lower := 5110, upper := 5205, witness := RowWitness.topPrime 5107 } = true := by
  exact good_top_prime_checked (i := 99) (r := 32) (s := 69) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row099_good054_checked :
    goodSegmentCheck 99 32 69
      { lower := 5206, upper := 5295, witness := RowWitness.topPrime 5197 } = true := by
  exact good_top_prime_checked (i := 99) (r := 32) (s := 69) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row099_good055_checked :
    goodSegmentCheck 99 32 69
      { lower := 5296, upper := 5379, witness := RowWitness.topPrime 5281 } = true := by
  exact good_top_prime_checked (i := 99) (r := 32) (s := 69) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row099_good056_checked :
    goodSegmentCheck 99 32 69
      { lower := 5380, upper := 5449, witness := RowWitness.topPrime 5351 } = true := by
  exact good_top_prime_checked (i := 99) (r := 32) (s := 69) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row099_good057_checked :
    goodSegmentCheck 99 32 69
      { lower := 5450, upper := 5547, witness := RowWitness.topPrime 5449 } = true := by
  exact good_top_prime_checked (i := 99) (r := 32) (s := 69) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row099_good058_checked :
    goodSegmentCheck 99 32 69
      { lower := 5548, upper := 5629, witness := RowWitness.topPrime 5531 } = true := by
  exact good_top_prime_checked (i := 99) (r := 32) (s := 69) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row099_good059_checked :
    goodSegmentCheck 99 32 69
      { lower := 5630, upper := 5721, witness := RowWitness.topPrime 5623 } = true := by
  exact good_top_prime_checked (i := 99) (r := 32) (s := 69) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row099_good060_checked :
    goodSegmentCheck 99 32 69
      { lower := 5722, upper := 5815, witness := RowWitness.topPrime 5717 } = true := by
  exact good_top_prime_checked (i := 99) (r := 32) (s := 69) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row099_good061_checked :
    goodSegmentCheck 99 32 69
      { lower := 5816, upper := 5911, witness := RowWitness.topPrime 5813 } = true := by
  exact good_top_prime_checked (i := 99) (r := 32) (s := 69) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row099_good062_checked :
    goodSegmentCheck 99 32 69
      { lower := 5912, upper := 6001, witness := RowWitness.topPrime 5903 } = true := by
  exact good_top_prime_checked (i := 99) (r := 32) (s := 69) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row099_good063_checked :
    goodSegmentCheck 99 32 69
      { lower := 6002, upper := 6085, witness := RowWitness.topPrime 5987 } = true := by
  exact good_top_prime_checked (i := 99) (r := 32) (s := 69) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row099_good048_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row099_good049_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row099_good050_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row099_good051_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row099_good052_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row099_good053_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row099_good054_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row099_good055_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row099_good056_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row099_good057_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row099_good058_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row099_good059_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row099_good060_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row099_good061_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row099_good062_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row099_good063_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row099_good064_checked :
    goodSegmentCheck 99 32 69
      { lower := 6086, upper := 6177, witness := RowWitness.topPrime 6079 } = true := by
  exact good_top_prime_checked (i := 99) (r := 32) (s := 69) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row099_good065_checked :
    goodSegmentCheck 99 32 69
      { lower := 6178, upper := 6271, witness := RowWitness.topPrime 6173 } = true := by
  exact good_top_prime_checked (i := 99) (r := 32) (s := 69) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row099_good066_checked :
    goodSegmentCheck 99 32 69
      { lower := 6272, upper := 6369, witness := RowWitness.topPrime 6271 } = true := by
  exact good_top_prime_checked (i := 99) (r := 32) (s := 69) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row099_good067_checked :
    goodSegmentCheck 99 32 69
      { lower := 6370, upper := 6465, witness := RowWitness.topPrime 6367 } = true := by
  exact good_top_prime_checked (i := 99) (r := 32) (s := 69) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row099_good068_checked :
    goodSegmentCheck 99 32 69
      { lower := 6466, upper := 6549, witness := RowWitness.topPrime 6451 } = true := by
  exact good_top_prime_checked (i := 99) (r := 32) (s := 69) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row099_good069_checked :
    goodSegmentCheck 99 32 69
      { lower := 6550, upper := 6645, witness := RowWitness.topPrime 6547 } = true := by
  exact good_top_prime_checked (i := 99) (r := 32) (s := 69) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row099_good070_checked :
    goodSegmentCheck 99 32 69
      { lower := 6646, upper := 6735, witness := RowWitness.topPrime 6637 } = true := by
  exact good_top_prime_checked (i := 99) (r := 32) (s := 69) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row099_good071_checked :
    goodSegmentCheck 99 32 69
      { lower := 6736, upper := 6831, witness := RowWitness.topPrime 6733 } = true := by
  exact good_top_prime_checked (i := 99) (r := 32) (s := 69) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row099_good072_checked :
    goodSegmentCheck 99 32 69
      { lower := 6832, upper := 6927, witness := RowWitness.topPrime 6829 } = true := by
  exact good_top_prime_checked (i := 99) (r := 32) (s := 69) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row099_good073_checked :
    goodSegmentCheck 99 32 69
      { lower := 6928, upper := 7015, witness := RowWitness.topPrime 6917 } = true := by
  exact good_top_prime_checked (i := 99) (r := 32) (s := 69) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row099_good074_checked :
    goodSegmentCheck 99 32 69
      { lower := 7016, upper := 7111, witness := RowWitness.topPrime 7013 } = true := by
  exact good_top_prime_checked (i := 99) (r := 32) (s := 69) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row099_good075_checked :
    goodSegmentCheck 99 32 69
      { lower := 7112, upper := 7207, witness := RowWitness.topPrime 7109 } = true := by
  exact good_top_prime_checked (i := 99) (r := 32) (s := 69) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row099_good076_checked :
    goodSegmentCheck 99 32 69
      { lower := 7208, upper := 7305, witness := RowWitness.topPrime 7207 } = true := by
  exact good_top_prime_checked (i := 99) (r := 32) (s := 69) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row099_good077_checked :
    goodSegmentCheck 99 32 69
      { lower := 7306, upper := 7395, witness := RowWitness.topPrime 7297 } = true := by
  exact good_top_prime_checked (i := 99) (r := 32) (s := 69) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row099_good078_checked :
    goodSegmentCheck 99 32 69
      { lower := 7396, upper := 7491, witness := RowWitness.topPrime 7393 } = true := by
  exact good_top_prime_checked (i := 99) (r := 32) (s := 69) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row099_good079_checked :
    goodSegmentCheck 99 32 69
      { lower := 7492, upper := 7587, witness := RowWitness.topPrime 7489 } = true := by
  exact good_top_prime_checked (i := 99) (r := 32) (s := 69) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row099_good064_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row099_good065_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row099_good066_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row099_good067_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row099_good068_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row099_good069_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row099_good070_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row099_good071_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row099_good072_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row099_good073_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row099_good074_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row099_good075_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row099_good076_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row099_good077_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row099_good078_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row099_good079_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row099_good080_checked :
    goodSegmentCheck 99 32 69
      { lower := 7588, upper := 7681, witness := RowWitness.topPrime 7583 } = true := by
  exact good_top_prime_checked (i := 99) (r := 32) (s := 69) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row099_good081_checked :
    goodSegmentCheck 99 32 69
      { lower := 7682, upper := 7779, witness := RowWitness.topPrime 7681 } = true := by
  exact good_top_prime_checked (i := 99) (r := 32) (s := 69) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row099_good082_checked :
    goodSegmentCheck 99 32 69
      { lower := 7780, upper := 7857, witness := RowWitness.topPrime 7759 } = true := by
  exact good_top_prime_checked (i := 99) (r := 32) (s := 69) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row099_good083_checked :
    goodSegmentCheck 99 32 69
      { lower := 7858, upper := 7951, witness := RowWitness.topPrime 7853 } = true := by
  exact good_top_prime_checked (i := 99) (r := 32) (s := 69) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row099_good084_checked :
    goodSegmentCheck 99 32 69
      { lower := 7952, upper := 8049, witness := RowWitness.topPrime 7951 } = true := by
  exact good_top_prime_checked (i := 99) (r := 32) (s := 69) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row099_good085_checked :
    goodSegmentCheck 99 32 69
      { lower := 8050, upper := 8137, witness := RowWitness.topPrime 8039 } = true := by
  exact good_top_prime_checked (i := 99) (r := 32) (s := 69) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row099_good086_checked :
    goodSegmentCheck 99 32 69
      { lower := 8138, upper := 8221, witness := RowWitness.topPrime 8123 } = true := by
  exact good_top_prime_checked (i := 99) (r := 32) (s := 69) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row099_good087_checked :
    goodSegmentCheck 99 32 69
      { lower := 8222, upper := 8319, witness := RowWitness.topPrime 8221 } = true := by
  exact good_top_prime_checked (i := 99) (r := 32) (s := 69) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row099_good088_checked :
    goodSegmentCheck 99 32 69
      { lower := 8320, upper := 8415, witness := RowWitness.topPrime 8317 } = true := by
  exact good_top_prime_checked (i := 99) (r := 32) (s := 69) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row099_good089_checked :
    goodSegmentCheck 99 32 69
      { lower := 8416, upper := 8487, witness := RowWitness.topPrime 8389 } = true := by
  exact good_top_prime_checked (i := 99) (r := 32) (s := 69) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row099_good090_checked :
    goodSegmentCheck 99 32 69
      { lower := 8488, upper := 8565, witness := RowWitness.topPrime 8467 } = true := by
  exact good_top_prime_checked (i := 99) (r := 32) (s := 69) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row099_good091_checked :
    goodSegmentCheck 99 32 69
      { lower := 8566, upper := 8661, witness := RowWitness.topPrime 8563 } = true := by
  exact good_top_prime_checked (i := 99) (r := 32) (s := 69) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row099_good092_checked :
    goodSegmentCheck 99 32 69
      { lower := 8662, upper := 8745, witness := RowWitness.topPrime 8647 } = true := by
  exact good_top_prime_checked (i := 99) (r := 32) (s := 69) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row099_good093_checked :
    goodSegmentCheck 99 32 69
      { lower := 8746, upper := 8839, witness := RowWitness.topPrime 8741 } = true := by
  exact good_top_prime_checked (i := 99) (r := 32) (s := 69) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row099_good094_checked :
    goodSegmentCheck 99 32 69
      { lower := 8840, upper := 8937, witness := RowWitness.topPrime 8839 } = true := by
  exact good_top_prime_checked (i := 99) (r := 32) (s := 69) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row099_good095_checked :
    goodSegmentCheck 99 32 69
      { lower := 8938, upper := 9031, witness := RowWitness.topPrime 8933 } = true := by
  exact good_top_prime_checked (i := 99) (r := 32) (s := 69) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row099_good080_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row099_good081_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row099_good082_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row099_good083_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row099_good084_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row099_good085_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row099_good086_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row099_good087_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row099_good088_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row099_good089_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row099_good090_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row099_good091_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row099_good092_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row099_good093_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row099_good094_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row099_good095_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row099_good096_checked :
    goodSegmentCheck 99 32 69
      { lower := 9032, upper := 9127, witness := RowWitness.topPrime 9029 } = true := by
  exact good_top_prime_checked (i := 99) (r := 32) (s := 69) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row099_good097_checked :
    goodSegmentCheck 99 32 69
      { lower := 9128, upper := 9225, witness := RowWitness.topPrime 9127 } = true := by
  exact good_top_prime_checked (i := 99) (r := 32) (s := 69) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row099_good098_checked :
    goodSegmentCheck 99 32 69
      { lower := 9226, upper := 9319, witness := RowWitness.topPrime 9221 } = true := by
  exact good_top_prime_checked (i := 99) (r := 32) (s := 69) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row099_good099_checked :
    goodSegmentCheck 99 32 69
      { lower := 9320, upper := 9417, witness := RowWitness.topPrime 9319 } = true := by
  exact good_top_prime_checked (i := 99) (r := 32) (s := 69) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row099_good100_checked :
    goodSegmentCheck 99 32 69
      { lower := 9418, upper := 9511, witness := RowWitness.topPrime 9413 } = true := by
  exact good_top_prime_checked (i := 99) (r := 32) (s := 69) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row099_good101_checked :
    goodSegmentCheck 99 32 69
      { lower := 9512, upper := 9609, witness := RowWitness.topPrime 9511 } = true := by
  exact good_top_prime_checked (i := 99) (r := 32) (s := 69) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row099_good102_checked :
    goodSegmentCheck 99 32 69
      { lower := 9610, upper := 9699, witness := RowWitness.topPrime 9601 } = true := by
  exact good_top_prime_checked (i := 99) (r := 32) (s := 69) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row099_good103_checked :
    goodSegmentCheck 99 32 69
      { lower := 9700, upper := 9702, witness := RowWitness.topPrime 9697 } = true := by
  exact good_top_prime_checked (i := 99) (r := 32) (s := 69) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row099_good104_checked :
    goodSegmentCheck 99 32 69
      { lower := 9826, upper := 9826, witness := RowWitness.topPrime 9817 } = true := by
  exact good_top_prime_checked (i := 99) (r := 32) (s := 69) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row099_good105_checked :
    goodSegmentCheck 99 32 69
      { lower := 10051, upper := 10137, witness := RowWitness.topPrime 10039 } = true := by
  exact good_top_prime_checked (i := 99) (r := 32) (s := 69) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row099_good106_checked :
    goodSegmentCheck 99 32 69
      { lower := 10138, upper := 10184, witness := RowWitness.topPrime 10133 } = true := by
  exact good_top_prime_checked (i := 99) (r := 32) (s := 69) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row099_good107_checked :
    goodSegmentCheck 99 32 69
      { lower := 10580, upper := 10665, witness := RowWitness.topPrime 10567 } = true := by
  exact good_top_prime_checked (i := 99) (r := 32) (s := 69) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row099_good108_checked :
    goodSegmentCheck 99 32 69
      { lower := 10666, upper := 10723, witness := RowWitness.topPrime 10663 } = true := by
  exact good_top_prime_checked (i := 99) (r := 32) (s := 69) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row099_good109_checked :
    goodSegmentCheck 99 32 69
      { lower := 10752, upper := 10756, witness := RowWitness.topPrime 10739 } = true := by
  exact good_top_prime_checked (i := 99) (r := 32) (s := 69) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row099_good110_checked :
    goodSegmentCheck 99 32 69
      { lower := 10952, upper := 11047, witness := RowWitness.topPrime 10949 } = true := by
  exact good_top_prime_checked (i := 99) (r := 32) (s := 69) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row099_good111_checked :
    goodSegmentCheck 99 32 69
      { lower := 11048, upper := 11083, witness := RowWitness.topPrime 11047 } = true := by
  exact good_top_prime_checked (i := 99) (r := 32) (s := 69) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row099_good096_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row099_good097_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row099_good098_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row099_good099_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row099_good100_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row099_good101_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row099_good102_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row099_good103_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row099_good104_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row099_good105_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row099_good106_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row099_good107_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row099_good108_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row099_good109_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row099_good110_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row099_good111_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row099_good112_checked :
    goodSegmentCheck 99 32 69
      { lower := 11094, upper := 11191, witness := RowWitness.topPrime 11093 } = true := by
  exact good_top_prime_checked (i := 99) (r := 32) (s := 69) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row099_good113_checked :
    goodSegmentCheck 99 32 69
      { lower := 11192, upper := 11207, witness := RowWitness.topPrime 11177 } = true := by
  exact good_top_prime_checked (i := 99) (r := 32) (s := 69) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row099_good114_checked :
    goodSegmentCheck 99 32 69
      { lower := 11236, upper := 11311, witness := RowWitness.topPrime 11213 } = true := by
  exact good_top_prime_checked (i := 99) (r := 32) (s := 69) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row099_good115_checked :
    goodSegmentCheck 99 32 69
      { lower := 11312, upper := 11348, witness := RowWitness.topPrime 11311 } = true := by
  exact good_top_prime_checked (i := 99) (r := 32) (s := 69) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row099_good116_checked :
    goodSegmentCheck 99 32 69
      { lower := 11774, upper := 11841, witness := RowWitness.topPrime 11743 } = true := by
  exact good_top_prime_checked (i := 99) (r := 32) (s := 69) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row099_good117_checked :
    goodSegmentCheck 99 32 69
      { lower := 11842, upper := 11865, witness := RowWitness.topPrime 11839 } = true := by
  exact good_top_prime_checked (i := 99) (r := 32) (s := 69) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row099_good118_checked :
    goodSegmentCheck 99 32 69
      { lower := 12321, upper := 12386, witness := RowWitness.topPrime 12301 } = true := by
  exact good_top_prime_checked (i := 99) (r := 32) (s := 69) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row099_good119_checked :
    goodSegmentCheck 99 32 69
      { lower := 12493, upper := 12589, witness := RowWitness.topPrime 12491 } = true := by
  exact good_top_prime_checked (i := 99) (r := 32) (s := 69) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row099_good120_checked :
    goodSegmentCheck 99 32 69
      { lower := 12590, upper := 12591, witness := RowWitness.topPrime 12589 } = true := by
  exact good_top_prime_checked (i := 99) (r := 32) (s := 69) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row099_good121_checked :
    goodSegmentCheck 99 32 69
      { lower := 13125, upper := 13219, witness := RowWitness.topPrime 13121 } = true := by
  exact good_top_prime_checked (i := 99) (r := 32) (s := 69) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row099_good122_checked :
    goodSegmentCheck 99 32 69
      { lower := 13220, upper := 13223, witness := RowWitness.topPrime 13219 } = true := by
  exact good_top_prime_checked (i := 99) (r := 32) (s := 69) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row099_good123_checked :
    goodSegmentCheck 99 32 69
      { lower := 13254, upper := 13280, witness := RowWitness.topPrime 13249 } = true := by
  exact good_top_prime_checked (i := 99) (r := 32) (s := 69) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row099_good124_checked :
    goodSegmentCheck 99 32 69
      { lower := 13312, upper := 13352, witness := RowWitness.topPrime 13309 } = true := by
  exact good_top_prime_checked (i := 99) (r := 32) (s := 69) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row099_good125_checked :
    goodSegmentCheck 99 32 69
      { lower := 13454, upper := 13549, witness := RowWitness.topPrime 13451 } = true := by
  exact good_top_prime_checked (i := 99) (r := 32) (s := 69) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row099_good126_checked :
    goodSegmentCheck 99 32 69
      { lower := 13550, upper := 13554, witness := RowWitness.topPrime 13537 } = true := by
  exact good_top_prime_checked (i := 99) (r := 32) (s := 69) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row099_good127_checked :
    goodSegmentCheck 99 32 69
      { lower := 13718, upper := 13809, witness := RowWitness.topPrime 13711 } = true := by
  exact good_top_prime_checked (i := 99) (r := 32) (s := 69) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row099_good112_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row099_good113_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row099_good114_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row099_good115_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row099_good116_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row099_good117_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row099_good118_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row099_good119_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row099_good120_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row099_good121_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row099_good122_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row099_good123_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row099_good124_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row099_good125_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row099_good126_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row099_good127_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row099_good128_checked :
    goodSegmentCheck 99 32 69
      { lower := 13810, upper := 13816, witness := RowWitness.topPrime 13807 } = true := by
  exact good_top_prime_checked (i := 99) (r := 32) (s := 69) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row099_good129_checked :
    goodSegmentCheck 99 32 69
      { lower := 14336, upper := 14395, witness := RowWitness.topPrime 14327 } = true := by
  exact good_top_prime_checked (i := 99) (r := 32) (s := 69) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row099_good130_checked :
    goodSegmentCheck 99 32 69
      { lower := 14406, upper := 14499, witness := RowWitness.topPrime 14401 } = true := by
  exact good_top_prime_checked (i := 99) (r := 32) (s := 69) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row099_good131_checked :
    goodSegmentCheck 99 32 69
      { lower := 14500, upper := 14504, witness := RowWitness.topPrime 14489 } = true := by
  exact good_top_prime_checked (i := 99) (r := 32) (s := 69) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row099_good132_checked :
    goodSegmentCheck 99 32 69
      { lower := 14739, upper := 14739, witness := RowWitness.topPrime 14737 } = true := by
  exact good_top_prime_checked (i := 99) (r := 32) (s := 69) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row099_good133_checked :
    goodSegmentCheck 99 32 69
      { lower := 14792, upper := 14837, witness := RowWitness.topPrime 14783 } = true := by
  exact good_top_prime_checked (i := 99) (r := 32) (s := 69) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row099_good134_checked :
    goodSegmentCheck 99 32 69
      { lower := 14884, upper := 14890, witness := RowWitness.topPrime 14879 } = true := by
  exact good_top_prime_checked (i := 99) (r := 32) (s := 69) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row099_good135_checked :
    goodSegmentCheck 99 32 69
      { lower := 15123, upper := 15219, witness := RowWitness.topPrime 15121 } = true := by
  exact good_top_prime_checked (i := 99) (r := 32) (s := 69) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row099_good136_checked :
    goodSegmentCheck 99 32 69
      { lower := 15220, upper := 15227, witness := RowWitness.topPrime 15217 } = true := by
  exact good_top_prime_checked (i := 99) (r := 32) (s := 69) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row099_good137_checked :
    goodSegmentCheck 99 32 69
      { lower := 15376, upper := 15471, witness := RowWitness.topPrime 15373 } = true := by
  exact good_top_prime_checked (i := 99) (r := 32) (s := 69) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row099_good138_checked :
    goodSegmentCheck 99 32 69
      { lower := 15472, upper := 15477, witness := RowWitness.topPrime 15467 } = true := by
  exact good_top_prime_checked (i := 99) (r := 32) (s := 69) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row099_good139_checked :
    goodSegmentCheck 99 32 69
      { lower := 15987, upper := 16071, witness := RowWitness.topPrime 15973 } = true := by
  exact good_top_prime_checked (i := 99) (r := 32) (s := 69) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row099_good140_checked :
    goodSegmentCheck 99 32 69
      { lower := 16072, upper := 16077, witness := RowWitness.topPrime 16069 } = true := by
  exact good_top_prime_checked (i := 99) (r := 32) (s := 69) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row099_good141_checked :
    goodSegmentCheck 99 32 69
      { lower := 16384, upper := 16479, witness := RowWitness.topPrime 16381 } = true := by
  exact good_top_prime_checked (i := 99) (r := 32) (s := 69) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row099_good142_checked :
    goodSegmentCheck 99 32 69
      { lower := 16480, upper := 16482, witness := RowWitness.topPrime 16477 } = true := by
  exact good_top_prime_checked (i := 99) (r := 32) (s := 69) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row099_good143_checked :
    goodSegmentCheck 99 32 69
      { lower := 16810, upper := 16885, witness := RowWitness.topPrime 16787 } = true := by
  exact good_top_prime_checked (i := 99) (r := 32) (s := 69) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row099_good128_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row099_good129_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row099_good130_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row099_good131_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row099_good132_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row099_good133_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row099_good134_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row099_good135_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row099_good136_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row099_good137_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row099_good138_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row099_good139_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row099_good140_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row099_good141_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row099_good142_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row099_good143_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row099_good144_checked :
    goodSegmentCheck 99 32 69
      { lower := 16886, upper := 16918, witness := RowWitness.topPrime 16883 } = true := by
  exact good_top_prime_checked (i := 99) (r := 32) (s := 69) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row099_good145_checked :
    goodSegmentCheck 99 32 69
      { lower := 17408, upper := 17499, witness := RowWitness.topPrime 17401 } = true := by
  exact good_top_prime_checked (i := 99) (r := 32) (s := 69) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row099_good146_checked :
    goodSegmentCheck 99 32 69
      { lower := 17500, upper := 17503, witness := RowWitness.topPrime 17497 } = true := by
  exact good_top_prime_checked (i := 99) (r := 32) (s := 69) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row099_good147_checked :
    goodSegmentCheck 99 32 69
      { lower := 17661, upper := 17757, witness := RowWitness.topPrime 17659 } = true := by
  exact good_top_prime_checked (i := 99) (r := 32) (s := 69) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row099_good148_checked :
    goodSegmentCheck 99 32 69
      { lower := 17758, upper := 17759, witness := RowWitness.topPrime 17749 } = true := by
  exact good_top_prime_checked (i := 99) (r := 32) (s := 69) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row099_good149_checked :
    goodSegmentCheck 99 32 69
      { lower := 18490, upper := 18579, witness := RowWitness.topPrime 18481 } = true := by
  exact good_top_prime_checked (i := 99) (r := 32) (s := 69) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row099_good150_checked :
    goodSegmentCheck 99 32 69
      { lower := 18580, upper := 18588, witness := RowWitness.topPrime 18553 } = true := by
  exact good_top_prime_checked (i := 99) (r := 32) (s := 69) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row099_good151_checked :
    goodSegmentCheck 99 32 69
      { lower := 18750, upper := 18847, witness := RowWitness.topPrime 18749 } = true := by
  exact good_top_prime_checked (i := 99) (r := 32) (s := 69) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row099_good152_checked :
    goodSegmentCheck 99 32 69
      { lower := 18848, upper := 18848, witness := RowWitness.topPrime 18839 } = true := by
  exact good_top_prime_checked (i := 99) (r := 32) (s := 69) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row099_good153_checked :
    goodSegmentCheck 99 32 69
      { lower := 19208, upper := 19305, witness := RowWitness.topPrime 19207 } = true := by
  exact good_top_prime_checked (i := 99) (r := 32) (s := 69) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row099_good154_checked :
    goodSegmentCheck 99 32 69
      { lower := 19306, upper := 19306, witness := RowWitness.topPrime 19301 } = true := by
  exact good_top_prime_checked (i := 99) (r := 32) (s := 69) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row099_good155_checked :
    goodSegmentCheck 99 32 69
      { lower := 19663, upper := 19759, witness := RowWitness.topPrime 19661 } = true := by
  exact good_top_prime_checked (i := 99) (r := 32) (s := 69) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row099_good156_checked :
    goodSegmentCheck 99 32 69
      { lower := 19760, upper := 19761, witness := RowWitness.topPrime 19759 } = true := by
  exact good_top_prime_checked (i := 99) (r := 32) (s := 69) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row099_good157_checked :
    goodSegmentCheck 99 32 69
      { lower := 19773, upper := 19781, witness := RowWitness.topPrime 19763 } = true := by
  exact good_top_prime_checked (i := 99) (r := 32) (s := 69) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row099_good158_checked :
    goodSegmentCheck 99 32 69
      { lower := 20172, upper := 20259, witness := RowWitness.topPrime 20161 } = true := by
  exact good_top_prime_checked (i := 99) (r := 32) (s := 69) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row099_good159_checked :
    goodSegmentCheck 99 32 69
      { lower := 20260, upper := 20262, witness := RowWitness.topPrime 20249 } = true := by
  exact good_top_prime_checked (i := 99) (r := 32) (s := 69) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row099_good144_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row099_good145_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row099_good146_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row099_good147_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row099_good148_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row099_good149_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row099_good150_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row099_good151_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row099_good152_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row099_good153_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row099_good154_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row099_good155_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row099_good156_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row099_good157_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row099_good158_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row099_good159_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row099_good160_checked :
    goodSegmentCheck 99 32 69
      { lower := 20535, upper := 20631, witness := RowWitness.topPrime 20533 } = true := by
  exact good_top_prime_checked (i := 99) (r := 32) (s := 69) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row099_good161_checked :
    goodSegmentCheck 99 32 69
      { lower := 20632, upper := 20633, witness := RowWitness.topPrime 20627 } = true := by
  exact good_top_prime_checked (i := 99) (r := 32) (s := 69) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row099_good162_checked :
    goodSegmentCheck 99 32 69
      { lower := 20667, upper := 20675, witness := RowWitness.topPrime 20663 } = true := by
  exact good_top_prime_checked (i := 99) (r := 32) (s := 69) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row099_good163_checked :
    goodSegmentCheck 99 32 69
      { lower := 21875, upper := 21969, witness := RowWitness.topPrime 21871 } = true := by
  exact good_top_prime_checked (i := 99) (r := 32) (s := 69) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row099_good164_checked :
    goodSegmentCheck 99 32 69
      { lower := 21970, upper := 22002, witness := RowWitness.topPrime 21961 } = true := by
  exact good_top_prime_checked (i := 99) (r := 32) (s := 69) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row099_good165_checked :
    goodSegmentCheck 99 32 69
      { lower := 22188, upper := 22188, witness := RowWitness.topPrime 22171 } = true := by
  exact good_top_prime_checked (i := 99) (r := 32) (s := 69) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row099_good166_checked :
    goodSegmentCheck 99 32 69
      { lower := 22472, upper := 22567, witness := RowWitness.topPrime 22469 } = true := by
  exact good_top_prime_checked (i := 99) (r := 32) (s := 69) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row099_good167_checked :
    goodSegmentCheck 99 32 69
      { lower := 22568, upper := 22570, witness := RowWitness.topPrime 22567 } = true := by
  exact good_top_prime_checked (i := 99) (r := 32) (s := 69) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row099_good168_checked :
    goodSegmentCheck 99 32 69
      { lower := 24037, upper := 24108, witness := RowWitness.topPrime 24029 } = true := by
  exact good_top_prime_checked (i := 99) (r := 32) (s := 69) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row099_good169_checked :
    goodSegmentCheck 99 32 69
      { lower := 24334, upper := 24427, witness := RowWitness.topPrime 24329 } = true := by
  exact good_top_prime_checked (i := 99) (r := 32) (s := 69) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row099_good170_checked :
    goodSegmentCheck 99 32 69
      { lower := 24428, upper := 24465, witness := RowWitness.topPrime 24421 } = true := by
  exact good_top_prime_checked (i := 99) (r := 32) (s := 69) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row099_good171_checked :
    goodSegmentCheck 99 32 69
      { lower := 24576, upper := 24663, witness := RowWitness.topPrime 24571 } = true := by
  exact good_top_prime_checked (i := 99) (r := 32) (s := 69) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row099_good172_checked :
    goodSegmentCheck 99 32 69
      { lower := 25000, upper := 25062, witness := RowWitness.topPrime 24989 } = true := by
  exact good_top_prime_checked (i := 99) (r := 32) (s := 69) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row099_good173_checked :
    goodSegmentCheck 99 32 69
      { lower := 25215, upper := 25287, witness := RowWitness.topPrime 25189 } = true := by
  exact good_top_prime_checked (i := 99) (r := 32) (s := 69) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row099_good174_checked :
    goodSegmentCheck 99 32 69
      { lower := 25288, upper := 25313, witness := RowWitness.topPrime 25261 } = true := by
  exact good_top_prime_checked (i := 99) (r := 32) (s := 69) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row099_good175_checked :
    goodSegmentCheck 99 32 69
      { lower := 26411, upper := 26462, witness := RowWitness.topPrime 26407 } = true := by
  exact good_top_prime_checked (i := 99) (r := 32) (s := 69) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row099_good160_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row099_good161_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row099_good162_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row099_good163_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row099_good164_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row099_good165_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row099_good166_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row099_good167_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row099_good168_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row099_good169_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row099_good170_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row099_good171_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row099_good172_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row099_good173_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row099_good174_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row099_good175_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row099_good176_checked :
    goodSegmentCheck 99 32 69
      { lower := 26508, upper := 26509, witness := RowWitness.topPrime 26501 } = true := by
  exact good_top_prime_checked (i := 99) (r := 32) (s := 69) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row099_good177_checked :
    goodSegmentCheck 99 32 69
      { lower := 26645, upper := 26722, witness := RowWitness.topPrime 26641 } = true := by
  exact good_top_prime_checked (i := 99) (r := 32) (s := 69) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row099_good178_checked :
    goodSegmentCheck 99 32 69
      { lower := 26934, upper := 26994, witness := RowWitness.topPrime 26927 } = true := by
  exact good_top_prime_checked (i := 99) (r := 32) (s := 69) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row099_good179_checked :
    goodSegmentCheck 99 32 69
      { lower := 28125, upper := 28188, witness := RowWitness.topPrime 28123 } = true := by
  exact good_top_prime_checked (i := 99) (r := 32) (s := 69) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row099_good180_checked :
    goodSegmentCheck 99 32 69
      { lower := 28577, upper := 28659, witness := RowWitness.topPrime 28573 } = true := by
  exact good_top_prime_checked (i := 99) (r := 32) (s := 69) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row099_good181_checked :
    goodSegmentCheck 99 32 69
      { lower := 28672, upper := 28675, witness := RowWitness.topPrime 28669 } = true := by
  exact good_top_prime_checked (i := 99) (r := 32) (s := 69) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row099_good182_checked :
    goodSegmentCheck 99 32 69
      { lower := 28717, upper := 28770, witness := RowWitness.topPrime 28711 } = true := by
  exact good_top_prime_checked (i := 99) (r := 32) (s := 69) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row099_good183_checked :
    goodSegmentCheck 99 32 69
      { lower := 28812, upper := 28815, witness := RowWitness.topPrime 28807 } = true := by
  exact good_top_prime_checked (i := 99) (r := 32) (s := 69) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row099_good184_checked :
    goodSegmentCheck 99 32 69
      { lower := 29791, upper := 29866, witness := RowWitness.topPrime 29789 } = true := by
  exact good_top_prime_checked (i := 99) (r := 32) (s := 69) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row099_good185_checked :
    goodSegmentCheck 99 32 69
      { lower := 30758, upper := 30818, witness := RowWitness.topPrime 30757 } = true := by
  exact good_top_prime_checked (i := 99) (r := 32) (s := 69) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row099_good186_checked :
    goodSegmentCheck 99 32 69
      { lower := 30926, upper := 30997, witness := RowWitness.topPrime 30911 } = true := by
  exact good_top_prime_checked (i := 99) (r := 32) (s := 69) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row099_good187_checked :
    goodSegmentCheck 99 32 69
      { lower := 31213, upper := 31291, witness := RowWitness.topPrime 31193 } = true := by
  exact good_top_prime_checked (i := 99) (r := 32) (s := 69) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row099_good188_checked :
    goodSegmentCheck 99 32 69
      { lower := 31292, upper := 31311, witness := RowWitness.topPrime 31277 } = true := by
  exact good_top_prime_checked (i := 99) (r := 32) (s := 69) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row099_good189_checked :
    goodSegmentCheck 99 32 69
      { lower := 31329, upper := 31348, witness := RowWitness.topPrime 31327 } = true := by
  exact good_top_prime_checked (i := 99) (r := 32) (s := 69) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row099_good190_checked :
    goodSegmentCheck 99 32 69
      { lower := 31423, upper := 31427, witness := RowWitness.topPrime 31397 } = true := by
  exact good_top_prime_checked (i := 99) (r := 32) (s := 69) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row099_good191_checked :
    goodSegmentCheck 99 32 69
      { lower := 31433, upper := 31495, witness := RowWitness.topPrime 31397 } = true := by
  exact good_top_prime_checked (i := 99) (r := 32) (s := 69) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row099_good176_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row099_good177_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row099_good178_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row099_good179_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row099_good180_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row099_good181_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row099_good182_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row099_good183_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row099_good184_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row099_good185_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row099_good186_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row099_good187_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row099_good188_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row099_good189_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row099_good190_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row099_good191_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row099_good192_checked :
    goodSegmentCheck 99 32 69
      { lower := 31496, upper := 31521, witness := RowWitness.topPrime 31489 } = true := by
  exact good_top_prime_checked (i := 99) (r := 32) (s := 69) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row099_good193_checked :
    goodSegmentCheck 99 32 69
      { lower := 33708, upper := 33712, witness := RowWitness.topPrime 33703 } = true := by
  exact good_top_prime_checked (i := 99) (r := 32) (s := 69) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row099_good194_checked :
    goodSegmentCheck 99 32 69
      { lower := 34375, upper := 34467, witness := RowWitness.topPrime 34369 } = true := by
  exact good_top_prime_checked (i := 99) (r := 32) (s := 69) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row099_good195_checked :
    goodSegmentCheck 99 32 69
      { lower := 34468, upper := 34489, witness := RowWitness.topPrime 34457 } = true := by
  exact good_top_prime_checked (i := 99) (r := 32) (s := 69) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row099_good196_checked :
    goodSegmentCheck 99 32 69
      { lower := 34816, upper := 34905, witness := RowWitness.topPrime 34807 } = true := by
  exact good_top_prime_checked (i := 99) (r := 32) (s := 69) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row099_good197_checked :
    goodSegmentCheck 99 32 69
      { lower := 34906, upper := 34908, witness := RowWitness.topPrime 34897 } = true := by
  exact good_top_prime_checked (i := 99) (r := 32) (s := 69) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row099_good198_checked :
    goodSegmentCheck 99 32 69
      { lower := 35344, upper := 35385, witness := RowWitness.topPrime 35339 } = true := by
  exact good_top_prime_checked (i := 99) (r := 32) (s := 69) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row099_good199_checked :
    goodSegmentCheck 99 32 69
      { lower := 36517, upper := 36595, witness := RowWitness.topPrime 36497 } = true := by
  exact good_top_prime_checked (i := 99) (r := 32) (s := 69) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row099_good200_checked :
    goodSegmentCheck 99 32 69
      { lower := 36596, upper := 36599, witness := RowWitness.topPrime 36587 } = true := by
  exact good_top_prime_checked (i := 99) (r := 32) (s := 69) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row099_good201_checked :
    goodSegmentCheck 99 32 69
      { lower := 37303, upper := 37308, witness := RowWitness.topPrime 37277 } = true := by
  exact good_top_prime_checked (i := 99) (r := 32) (s := 69) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row099_good202_checked :
    goodSegmentCheck 99 32 69
      { lower := 37349, upper := 37401, witness := RowWitness.topPrime 37339 } = true := by
  exact good_top_prime_checked (i := 99) (r := 32) (s := 69) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row099_good203_checked :
    goodSegmentCheck 99 32 69
      { lower := 37446, upper := 37447, witness := RowWitness.topPrime 37441 } = true := by
  exact good_top_prime_checked (i := 99) (r := 32) (s := 69) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row099_good204_checked :
    goodSegmentCheck 99 32 69
      { lower := 37500, upper := 37544, witness := RowWitness.topPrime 37493 } = true := by
  exact good_top_prime_checked (i := 99) (r := 32) (s := 69) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row099_good205_checked :
    goodSegmentCheck 99 32 69
      { lower := 37553, upper := 37598, witness := RowWitness.topPrime 37549 } = true := by
  exact good_top_prime_checked (i := 99) (r := 32) (s := 69) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row099_good206_checked :
    goodSegmentCheck 99 32 69
      { lower := 37636, upper := 37651, witness := RowWitness.topPrime 37633 } = true := by
  exact good_top_prime_checked (i := 99) (r := 32) (s := 69) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row099_good207_checked :
    goodSegmentCheck 99 32 69
      { lower := 39326, upper := 39402, witness := RowWitness.topPrime 39323 } = true := by
  exact good_top_prime_checked (i := 99) (r := 32) (s := 69) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row099_good192_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row099_good193_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row099_good194_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row099_good195_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row099_good196_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row099_good197_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row099_good198_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row099_good199_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row099_good200_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row099_good201_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row099_good202_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row099_good203_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row099_good204_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row099_good205_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row099_good206_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row099_good207_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row099_good208_checked :
    goodSegmentCheck 99 32 69
      { lower := 40401, upper := 40426, witness := RowWitness.topPrime 40387 } = true := by
  exact good_top_prime_checked (i := 99) (r := 32) (s := 69) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row099_good209_checked :
    goodSegmentCheck 99 32 69
      { lower := 40960, upper := 41029, witness := RowWitness.topPrime 40949 } = true := by
  exact good_top_prime_checked (i := 99) (r := 32) (s := 69) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row099_good210_checked :
    goodSegmentCheck 99 32 69
      { lower := 43750, upper := 43785, witness := RowWitness.topPrime 43721 } = true := by
  exact good_top_prime_checked (i := 99) (r := 32) (s := 69) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row099_good211_checked :
    goodSegmentCheck 99 32 69
      { lower := 48013, upper := 48059, witness := RowWitness.topPrime 47981 } = true := by
  exact good_top_prime_checked (i := 99) (r := 32) (s := 69) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row099_good212_checked :
    goodSegmentCheck 99 32 69
      { lower := 48734, upper := 48766, witness := RowWitness.topPrime 48733 } = true := by
  exact good_top_prime_checked (i := 99) (r := 32) (s := 69) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row099_good213_checked :
    goodSegmentCheck 99 32 69
      { lower := 48778, upper := 48832, witness := RowWitness.topPrime 48767 } = true := by
  exact good_top_prime_checked (i := 99) (r := 32) (s := 69) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row099_good214_checked :
    goodSegmentCheck 99 32 69
      { lower := 49152, upper := 49228, witness := RowWitness.topPrime 49139 } = true := by
  exact good_top_prime_checked (i := 99) (r := 32) (s := 69) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row099_good215_checked :
    goodSegmentCheck 99 32 69
      { lower := 50421, upper := 50508, witness := RowWitness.topPrime 50417 } = true := by
  exact good_top_prime_checked (i := 99) (r := 32) (s := 69) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row099_good216_checked :
    goodSegmentCheck 99 32 69
      { lower := 53290, upper := 53346, witness := RowWitness.topPrime 53281 } = true := by
  exact good_top_prime_checked (i := 99) (r := 32) (s := 69) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row099_good217_checked :
    goodSegmentCheck 99 32 69
      { lower := 55451, upper := 55539, witness := RowWitness.topPrime 55441 } = true := by
  exact good_top_prime_checked (i := 99) (r := 32) (s := 69) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row099_good218_checked :
    goodSegmentCheck 99 32 69
      { lower := 55540, upper := 55545, witness := RowWitness.topPrime 55529 } = true := by
  exact good_top_prime_checked (i := 99) (r := 32) (s := 69) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row099_good219_checked :
    goodSegmentCheck 99 32 69
      { lower := 59049, upper := 59054, witness := RowWitness.topPrime 59029 } = true := by
  exact good_top_prime_checked (i := 99) (r := 32) (s := 69) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row099_good220_checked :
    goodSegmentCheck 99 32 69
      { lower := 62500, upper := 62508, witness := RowWitness.topPrime 62497 } = true := by
  exact good_top_prime_checked (i := 99) (r := 32) (s := 69) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row099_good221_checked :
    goodSegmentCheck 99 32 69
      { lower := 63948, upper := 63967, witness := RowWitness.topPrime 63929 } = true := by
  exact good_top_prime_checked (i := 99) (r := 32) (s := 69) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row099_good222_checked :
    goodSegmentCheck 99 32 69
      { lower := 65536, upper := 65619, witness := RowWitness.topPrime 65521 } = true := by
  exact good_top_prime_checked (i := 99) (r := 32) (s := 69) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row099_good223_checked :
    goodSegmentCheck 99 32 69
      { lower := 65620, upper := 65631, witness := RowWitness.topPrime 65617 } = true := by
  exact good_top_prime_checked (i := 99) (r := 32) (s := 69) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row099_good208_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row099_good209_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row099_good210_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row099_good211_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row099_good212_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row099_good213_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row099_good214_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row099_good215_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row099_good216_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row099_good217_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row099_good218_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row099_good219_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row099_good220_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row099_good221_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row099_good222_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row099_good223_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row099_good224_checked :
    goodSegmentCheck 99 32 69
      { lower := 68651, upper := 68688, witness := RowWitness.topPrime 68639 } = true := by
  exact good_top_prime_checked (i := 99) (r := 32) (s := 69) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row099_good225_checked :
    goodSegmentCheck 99 32 69
      { lower := 68921, upper := 68988, witness := RowWitness.topPrime 68917 } = true := by
  exact good_top_prime_checked (i := 99) (r := 32) (s := 69) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row099_good226_checked :
    goodSegmentCheck 99 32 69
      { lower := 148955, upper := 148975, witness := RowWitness.topPrime 148949 } = true := by
  exact good_top_prime_checked (i := 99) (r := 32) (s := 69) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row099_good224_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row099_good225_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row099_good226_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row099_goods_checked :
    row099.goods.all (goodSegmentCheck row099.height.i row099.height.r row099.height.s) = true := by
  change row099_goods.all (goodSegmentCheck 99 32 69) = true
  simp only [row099_goods, List.all_cons, List.all_nil,
    row099_good000_checked,
    row099_good001_checked,
    row099_good002_checked,
    row099_good003_checked,
    row099_good004_checked,
    row099_good005_checked,
    row099_good006_checked,
    row099_good007_checked,
    row099_good008_checked,
    row099_good009_checked,
    row099_good010_checked,
    row099_good011_checked,
    row099_good012_checked,
    row099_good013_checked,
    row099_good014_checked,
    row099_good015_checked,
    row099_good016_checked,
    row099_good017_checked,
    row099_good018_checked,
    row099_good019_checked,
    row099_good020_checked,
    row099_good021_checked,
    row099_good022_checked,
    row099_good023_checked,
    row099_good024_checked,
    row099_good025_checked,
    row099_good026_checked,
    row099_good027_checked,
    row099_good028_checked,
    row099_good029_checked,
    row099_good030_checked,
    row099_good031_checked,
    row099_good032_checked,
    row099_good033_checked,
    row099_good034_checked,
    row099_good035_checked,
    row099_good036_checked,
    row099_good037_checked,
    row099_good038_checked,
    row099_good039_checked,
    row099_good040_checked,
    row099_good041_checked,
    row099_good042_checked,
    row099_good043_checked,
    row099_good044_checked,
    row099_good045_checked,
    row099_good046_checked,
    row099_good047_checked,
    row099_good048_checked,
    row099_good049_checked,
    row099_good050_checked,
    row099_good051_checked,
    row099_good052_checked,
    row099_good053_checked,
    row099_good054_checked,
    row099_good055_checked,
    row099_good056_checked,
    row099_good057_checked,
    row099_good058_checked,
    row099_good059_checked,
    row099_good060_checked,
    row099_good061_checked,
    row099_good062_checked,
    row099_good063_checked,
    row099_good064_checked,
    row099_good065_checked,
    row099_good066_checked,
    row099_good067_checked,
    row099_good068_checked,
    row099_good069_checked,
    row099_good070_checked,
    row099_good071_checked,
    row099_good072_checked,
    row099_good073_checked,
    row099_good074_checked,
    row099_good075_checked,
    row099_good076_checked,
    row099_good077_checked,
    row099_good078_checked,
    row099_good079_checked,
    row099_good080_checked,
    row099_good081_checked,
    row099_good082_checked,
    row099_good083_checked,
    row099_good084_checked,
    row099_good085_checked,
    row099_good086_checked,
    row099_good087_checked,
    row099_good088_checked,
    row099_good089_checked,
    row099_good090_checked,
    row099_good091_checked,
    row099_good092_checked,
    row099_good093_checked,
    row099_good094_checked,
    row099_good095_checked,
    row099_good096_checked,
    row099_good097_checked,
    row099_good098_checked,
    row099_good099_checked,
    row099_good100_checked,
    row099_good101_checked,
    row099_good102_checked,
    row099_good103_checked,
    row099_good104_checked,
    row099_good105_checked,
    row099_good106_checked,
    row099_good107_checked,
    row099_good108_checked,
    row099_good109_checked,
    row099_good110_checked,
    row099_good111_checked,
    row099_good112_checked,
    row099_good113_checked,
    row099_good114_checked,
    row099_good115_checked,
    row099_good116_checked,
    row099_good117_checked,
    row099_good118_checked,
    row099_good119_checked,
    row099_good120_checked,
    row099_good121_checked,
    row099_good122_checked,
    row099_good123_checked,
    row099_good124_checked,
    row099_good125_checked,
    row099_good126_checked,
    row099_good127_checked,
    row099_good128_checked,
    row099_good129_checked,
    row099_good130_checked,
    row099_good131_checked,
    row099_good132_checked,
    row099_good133_checked,
    row099_good134_checked,
    row099_good135_checked,
    row099_good136_checked,
    row099_good137_checked,
    row099_good138_checked,
    row099_good139_checked,
    row099_good140_checked,
    row099_good141_checked,
    row099_good142_checked,
    row099_good143_checked,
    row099_good144_checked,
    row099_good145_checked,
    row099_good146_checked,
    row099_good147_checked,
    row099_good148_checked,
    row099_good149_checked,
    row099_good150_checked,
    row099_good151_checked,
    row099_good152_checked,
    row099_good153_checked,
    row099_good154_checked,
    row099_good155_checked,
    row099_good156_checked,
    row099_good157_checked,
    row099_good158_checked,
    row099_good159_checked,
    row099_good160_checked,
    row099_good161_checked,
    row099_good162_checked,
    row099_good163_checked,
    row099_good164_checked,
    row099_good165_checked,
    row099_good166_checked,
    row099_good167_checked,
    row099_good168_checked,
    row099_good169_checked,
    row099_good170_checked,
    row099_good171_checked,
    row099_good172_checked,
    row099_good173_checked,
    row099_good174_checked,
    row099_good175_checked,
    row099_good176_checked,
    row099_good177_checked,
    row099_good178_checked,
    row099_good179_checked,
    row099_good180_checked,
    row099_good181_checked,
    row099_good182_checked,
    row099_good183_checked,
    row099_good184_checked,
    row099_good185_checked,
    row099_good186_checked,
    row099_good187_checked,
    row099_good188_checked,
    row099_good189_checked,
    row099_good190_checked,
    row099_good191_checked,
    row099_good192_checked,
    row099_good193_checked,
    row099_good194_checked,
    row099_good195_checked,
    row099_good196_checked,
    row099_good197_checked,
    row099_good198_checked,
    row099_good199_checked,
    row099_good200_checked,
    row099_good201_checked,
    row099_good202_checked,
    row099_good203_checked,
    row099_good204_checked,
    row099_good205_checked,
    row099_good206_checked,
    row099_good207_checked,
    row099_good208_checked,
    row099_good209_checked,
    row099_good210_checked,
    row099_good211_checked,
    row099_good212_checked,
    row099_good213_checked,
    row099_good214_checked,
    row099_good215_checked,
    row099_good216_checked,
    row099_good217_checked,
    row099_good218_checked,
    row099_good219_checked,
    row099_good220_checked,
    row099_good221_checked,
    row099_good222_checked,
    row099_good223_checked,
    row099_good224_checked,
    row099_good225_checked,
    row099_good226_checked, Bool.true_and]

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row099_goods_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row099_registered :
    decide (row099.height ∈ heightCertificateData) = true := by
  decide +kernel

theorem row099_small_checked :
    coverCheck (2 * row099.height.i + 2) (row099.height.i * (row099.height.i - 1) - 1)
      (row099.goods.map goodSegmentBounds) = true := by
  decide +kernel

theorem row099_layerCover_checked :
    coverCheck (row099.height.i * (row099.height.i - 1)) (row099.height.n0 - 1)
      (row099.layers.map CoverLayer.bounds) = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row099_registered
#print axioms B699LowIndex.LowIndexLean513dc7cc.row099_small_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row099_layerCover_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row099_bounds : List NatInterval :=
  [(200, 297), (298, 391), (392, 487), (488, 585), (586, 675), (676, 771), (772, 867), (868, 961), (962, 1051), (1052, 1149), (1150, 1227), (1228, 1321), (1322, 1419), (1420, 1507), (1508, 1597), (1598, 1695), (1696, 1791), (1792, 1887), (1888, 1977), (1978, 2071), (2072, 2167), (2168, 2259), (2260, 2349), (2350, 2445), (2446, 2539), (2540, 2637), (2638, 2731), (2732, 2829), (2830, 2917), (2918, 3015), (3016, 3109), (3110, 3207), (3208, 3301), (3302, 3399), (3400, 3489), (3490, 3567), (3568, 3657), (3658, 3741), (3742, 3837), (3838, 3931), (3932, 4029), (4030, 4125), (4126, 4209), (4210, 4299), (4300, 4395), (4396, 4489), (4490, 4581), (4582, 4665), (4666, 4761), (4762, 4857), (4858, 4929), (4930, 5017), (5018, 5109), (5110, 5205), (5206, 5295), (5296, 5379), (5380, 5449), (5450, 5547), (5548, 5629), (5630, 5721), (5722, 5815), (5816, 5911), (5912, 6001), (6002, 6085), (6086, 6177), (6178, 6271), (6272, 6369), (6370, 6465), (6466, 6549), (6550, 6645), (6646, 6735), (6736, 6831), (6832, 6927), (6928, 7015), (7016, 7111), (7112, 7207), (7208, 7305), (7306, 7395), (7396, 7491), (7492, 7587), (7588, 7681), (7682, 7779), (7780, 7857), (7858, 7951), (7952, 8049), (8050, 8137), (8138, 8221), (8222, 8319), (8320, 8415), (8416, 8487), (8488, 8565), (8566, 8661), (8662, 8745), (8746, 8839), (8840, 8937), (8938, 9031), (9032, 9127), (9128, 9225), (9226, 9319), (9320, 9417), (9418, 9511), (9512, 9609), (9610, 9699), (9700, 9702), (9826, 9826), (10051, 10137), (10138, 10184), (10580, 10665), (10666, 10723), (10752, 10756), (10952, 11047), (11048, 11083), (11094, 11191), (11192, 11207), (11236, 11311), (11312, 11348), (11774, 11841), (11842, 11865), (12321, 12386), (12493, 12589), (12590, 12591), (13125, 13219), (13220, 13223), (13254, 13280), (13312, 13352), (13454, 13549), (13550, 13554), (13718, 13809), (13810, 13816), (14336, 14395), (14406, 14499), (14500, 14504), (14739, 14739), (14792, 14837), (14884, 14890), (15123, 15219), (15220, 15227), (15376, 15471), (15472, 15477), (15987, 16071), (16072, 16077), (16384, 16479), (16480, 16482), (16810, 16885), (16886, 16918), (17408, 17499), (17500, 17503), (17661, 17757), (17758, 17759), (18490, 18579), (18580, 18588), (18750, 18847), (18848, 18848), (19208, 19305), (19306, 19306), (19663, 19759), (19760, 19761), (19773, 19781), (20172, 20259), (20260, 20262), (20535, 20631), (20632, 20633), (20667, 20675), (21875, 21969), (21970, 22002), (22188, 22188), (22472, 22567), (22568, 22570), (24037, 24108), (24334, 24427), (24428, 24465), (24576, 24663), (25000, 25062), (25215, 25287), (25288, 25313), (26411, 26462), (26508, 26509), (26645, 26722), (26934, 26994), (28125, 28188), (28577, 28659), (28672, 28675), (28717, 28770), (28812, 28815), (29791, 29866), (30758, 30818), (30926, 30997), (31213, 31291), (31292, 31311), (31329, 31348), (31423, 31427), (31433, 31495), (31496, 31521), (33708, 33712), (34375, 34467), (34468, 34489), (34816, 34905), (34906, 34908), (35344, 35385), (36517, 36595), (36596, 36599), (37303, 37308), (37349, 37401), (37446, 37447), (37500, 37544), (37553, 37598), (37636, 37651), (39326, 39402), (40401, 40426), (40960, 41029), (43750, 43785), (48013, 48059), (48734, 48766), (48778, 48832), (49152, 49228), (50421, 50508), (53290, 53346), (55451, 55539), (55540, 55545), (59049, 59054), (62500, 62508), (63948, 63967), (65536, 65619), (65620, 65631), (68651, 68688), (68921, 68988), (148955, 148975)]

theorem row099_bounds_eq : row099.goods.map goodSegmentBounds = row099_bounds := by
  rfl

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row099_bounds_eq

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row099_layer000_intervals : List ColouredInterval :=
  [(2, 9728, 9826), (2, 10240, 10338), (2, 10752, 10850), (2, 10240, 10338), (2, 11264, 11362), (2, 12288, 12386), (2, 13312, 13410), (2, 14336, 14434), (2, 15360, 15458), (2, 16384, 16482), (2, 17408, 17506), (2, 18432, 18530), (2, 10240, 10338), (2, 12288, 12386), (2, 14336, 14434), (2, 16384, 16482), (2, 18432, 18530), (2, 12288, 12386), (2, 16384, 16482), (2, 16384, 16482), (2, 16384, 16482), (3, 13122, 13220), (5, 10000, 10098), (5, 10625, 10723), (5, 11250, 11348), (5, 11875, 11973), (5, 12500, 12598), (5, 13125, 13223), (5, 12500, 12598), (5, 15625, 15723), (5, 18750, 18848), (5, 15625, 15723), (7, 9702, 9702), (7, 12005, 12103), (7, 14406, 14504), (7, 16807, 16905), (7, 19208, 19306), (7, 16807, 16905), (11, 14641, 14739), (13, 10985, 11083), (13, 13182, 13280), (13, 15379, 15477), (13, 17576, 17674), (17, 9826, 9924), (17, 14739, 14837), (19, 13718, 13816), (23, 10051, 10149), (23, 10580, 10678), (23, 11109, 11207), (23, 12167, 12265), (29, 10092, 10190), (29, 10933, 11031), (29, 11774, 11872), (29, 12615, 12713), (29, 13456, 13554), (29, 14297, 14395), (29, 15138, 15236), (29, 15979, 16077), (29, 16820, 16918), (29, 17661, 17759), (31, 9702, 9708), (31, 10571, 10669), (31, 11532, 11630), (31, 12493, 12591), (31, 13454, 13552), (31, 14415, 14513), (31, 15376, 15474), (31, 16337, 16435), (31, 17298, 17396), (31, 18259, 18357), (31, 19220, 19318), (37, 10952, 11050), (37, 12321, 12419), (37, 13690, 13788), (37, 15059, 15157), (37, 16428, 16526), (37, 17797, 17895), (37, 19166, 19264), (41, 10086, 10184), (41, 11767, 11865), (41, 13448, 13546), (41, 15129, 15227), (41, 16810, 16908), (41, 18491, 18589), (43, 11094, 11192), (43, 12943, 13041), (43, 14792, 14890), (43, 16641, 16739), (43, 18490, 18588), (47, 11045, 11143), (47, 13254, 13352), (47, 15463, 15561), (47, 17672, 17770), (53, 11236, 11334), (53, 14045, 14143), (53, 16854, 16952), (59, 10443, 10541), (59, 13924, 14022), (59, 17405, 17503), (61, 11163, 11261), (61, 14884, 14982), (61, 18605, 18703), (67, 13467, 13565), (67, 17956, 18054), (71, 10082, 10180), (71, 15123, 15221), (73, 10658, 10756), (73, 15987, 16085), (79, 12482, 12580), (79, 18723, 18821), (83, 13778, 13876), (89, 15842, 15940), (97, 18818, 18916)]

def row099_layer000_block000 : List ColouredInterval :=
  [(2, 9728, 9826), (2, 10240, 10338), (2, 10752, 10850), (2, 10240, 10338), (2, 11264, 11362), (2, 12288, 12386), (2, 13312, 13410), (2, 14336, 14434), (2, 15360, 15458), (2, 16384, 16482), (2, 17408, 17506), (2, 18432, 18530), (2, 10240, 10338), (2, 12288, 12386), (2, 14336, 14434), (2, 16384, 16482)]

def row099_layer000_block001 : List ColouredInterval :=
  [(2, 18432, 18530), (2, 12288, 12386), (2, 16384, 16482), (2, 16384, 16482), (2, 16384, 16482), (3, 13122, 13220), (5, 10000, 10098), (5, 10625, 10723), (5, 11250, 11348), (5, 11875, 11973), (5, 12500, 12598), (5, 13125, 13223), (5, 12500, 12598), (5, 15625, 15723), (5, 18750, 18848), (5, 15625, 15723)]

def row099_layer000_block002 : List ColouredInterval :=
  [(7, 9702, 9702), (7, 12005, 12103), (7, 14406, 14504), (7, 16807, 16905), (7, 19208, 19306), (7, 16807, 16905), (11, 14641, 14739), (13, 10985, 11083), (13, 13182, 13280), (13, 15379, 15477), (13, 17576, 17674), (17, 9826, 9924), (17, 14739, 14837), (19, 13718, 13816), (23, 10051, 10149), (23, 10580, 10678)]

def row099_layer000_block003 : List ColouredInterval :=
  [(23, 11109, 11207), (23, 12167, 12265), (29, 10092, 10190), (29, 10933, 11031), (29, 11774, 11872), (29, 12615, 12713), (29, 13456, 13554), (29, 14297, 14395), (29, 15138, 15236), (29, 15979, 16077), (29, 16820, 16918), (29, 17661, 17759), (31, 9702, 9708), (31, 10571, 10669), (31, 11532, 11630), (31, 12493, 12591)]

def row099_layer000_block004 : List ColouredInterval :=
  [(31, 13454, 13552), (31, 14415, 14513), (31, 15376, 15474), (31, 16337, 16435), (31, 17298, 17396), (31, 18259, 18357), (31, 19220, 19318), (37, 10952, 11050), (37, 12321, 12419), (37, 13690, 13788), (37, 15059, 15157), (37, 16428, 16526), (37, 17797, 17895), (37, 19166, 19264), (41, 10086, 10184), (41, 11767, 11865)]

def row099_layer000_block005 : List ColouredInterval :=
  [(41, 13448, 13546), (41, 15129, 15227), (41, 16810, 16908), (41, 18491, 18589), (43, 11094, 11192), (43, 12943, 13041), (43, 14792, 14890), (43, 16641, 16739), (43, 18490, 18588), (47, 11045, 11143), (47, 13254, 13352), (47, 15463, 15561), (47, 17672, 17770), (53, 11236, 11334), (53, 14045, 14143), (53, 16854, 16952)]

def row099_layer000_block006 : List ColouredInterval :=
  [(59, 10443, 10541), (59, 13924, 14022), (59, 17405, 17503), (61, 11163, 11261), (61, 14884, 14982), (61, 18605, 18703), (67, 13467, 13565), (67, 17956, 18054), (71, 10082, 10180), (71, 15123, 15221), (73, 10658, 10756), (73, 15987, 16085), (79, 12482, 12580), (79, 18723, 18821), (83, 13778, 13876), (89, 15842, 15940)]

def row099_layer000_block007 : List ColouredInterval :=
  [(97, 18818, 18916)]

def row099_layer000_chunks : List (List ColouredInterval) :=
  [row099_layer000_block000, row099_layer000_block001, row099_layer000_block002, row099_layer000_block003, row099_layer000_block004, row099_layer000_block005, row099_layer000_block006, row099_layer000_block007]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row099_layer000_intervals

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row099_layer000_arithmetic : LayerArithmeticValid row099.height { lower := 9702, upper := 19404, M := 21 } := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row099_layer000_arithmetic

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row099_layer000_enumeration :
    activePowerIntervalList 99 21 9702 19404 = row099_layer000_intervals := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row099_layer000_enumeration

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row099_layer000_pairs000 :
    row099_layer000_block000.all (fun I => row099_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row099_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row099_layer000_pairs000

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row099_layer000_pairs001 :
    row099_layer000_block001.all (fun I => row099_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row099_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row099_layer000_pairs001

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row099_layer000_pairs002 :
    row099_layer000_block002.all (fun I => row099_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row099_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row099_layer000_pairs002

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row099_layer000_pairs003 :
    row099_layer000_block003.all (fun I => row099_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row099_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row099_layer000_pairs003

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row099_layer000_pairs004 :
    row099_layer000_block004.all (fun I => row099_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row099_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row099_layer000_pairs004

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row099_layer000_pairs005 :
    row099_layer000_block005.all (fun I => row099_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row099_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row099_layer000_pairs005

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row099_layer000_pairs006 :
    row099_layer000_block006.all (fun I => row099_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row099_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row099_layer000_pairs006

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row099_layer000_pairs007 :
    row099_layer000_block007.all (fun I => row099_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row099_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row099_layer000_pairs007

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row099_layer000_chunks_eq : row099_layer000_chunks.flatten = row099_layer000_intervals := by
  rfl

theorem row099_layer000_pairs : pairCoverCheck row099_layer000_intervals row099_bounds = true := by
  apply pairCoverCheck_of_chunks row099_layer000_chunks_eq
  intro block hblock
  simp only [row099_layer000_chunks, List.mem_cons, List.mem_nil_iff, or_false] at hblock
  rcases hblock with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
  · exact row099_layer000_pairs000
  · exact row099_layer000_pairs001
  · exact row099_layer000_pairs002
  · exact row099_layer000_pairs003
  · exact row099_layer000_pairs004
  · exact row099_layer000_pairs005
  · exact row099_layer000_pairs006
  · exact row099_layer000_pairs007

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row099_layer000_chunks_eq
#print axioms B699LowIndex.LowIndexLean513dc7cc.row099_layer000_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row099_layer000_checked :
    coverLayerCheck row099.height row099.goods { lower := 9702, upper := 19404, M := 21 } = true := by
  exact coverLayerCheck_of_parts row099_layer000_arithmetic row099_layer000_enumeration row099_bounds_eq row099_layer000_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row099_layer000_checked

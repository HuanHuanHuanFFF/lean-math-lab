import research.tasks.«B699-Binomial».runs.«20260909-low-index-structure-b41a5a63».lean.FiniteCover
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.WitnessBridge

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row098_height : HeightCertificateDatum := { i := 98, r := 32, s := 68, n0Power10 := 9 }

def row098_goods : List GoodSegment := [
  { lower := 198, upper := 294, witness := RowWitness.topPrime 197 },
  { lower := 295, upper := 390, witness := RowWitness.topPrime 293 },
  { lower := 391, upper := 486, witness := RowWitness.topPrime 389 },
  { lower := 487, upper := 584, witness := RowWitness.topPrime 487 },
  { lower := 585, upper := 674, witness := RowWitness.topPrime 577 },
  { lower := 675, upper := 770, witness := RowWitness.topPrime 673 },
  { lower := 771, upper := 866, witness := RowWitness.topPrime 769 },
  { lower := 867, upper := 960, witness := RowWitness.topPrime 863 },
  { lower := 961, upper := 1050, witness := RowWitness.topPrime 953 },
  { lower := 1051, upper := 1148, witness := RowWitness.topPrime 1051 },
  { lower := 1149, upper := 1226, witness := RowWitness.topPrime 1129 },
  { lower := 1227, upper := 1320, witness := RowWitness.topPrime 1223 },
  { lower := 1321, upper := 1418, witness := RowWitness.topPrime 1321 },
  { lower := 1419, upper := 1506, witness := RowWitness.topPrime 1409 },
  { lower := 1507, upper := 1596, witness := RowWitness.topPrime 1499 },
  { lower := 1597, upper := 1694, witness := RowWitness.topPrime 1597 },
  { lower := 1695, upper := 1790, witness := RowWitness.topPrime 1693 },
  { lower := 1791, upper := 1886, witness := RowWitness.topPrime 1789 },
  { lower := 1887, upper := 1976, witness := RowWitness.topPrime 1879 },
  { lower := 1977, upper := 2070, witness := RowWitness.topPrime 1973 },
  { lower := 2071, upper := 2166, witness := RowWitness.topPrime 2069 },
  { lower := 2167, upper := 2258, witness := RowWitness.topPrime 2161 },
  { lower := 2259, upper := 2348, witness := RowWitness.topPrime 2251 },
  { lower := 2349, upper := 2444, witness := RowWitness.topPrime 2347 },
  { lower := 2445, upper := 2538, witness := RowWitness.topPrime 2441 },
  { lower := 2539, upper := 2636, witness := RowWitness.topPrime 2539 },
  { lower := 2637, upper := 2730, witness := RowWitness.topPrime 2633 },
  { lower := 2731, upper := 2828, witness := RowWitness.topPrime 2731 },
  { lower := 2829, upper := 2916, witness := RowWitness.topPrime 2819 },
  { lower := 2917, upper := 3014, witness := RowWitness.topPrime 2917 },
  { lower := 3015, upper := 3108, witness := RowWitness.topPrime 3011 },
  { lower := 3109, upper := 3206, witness := RowWitness.topPrime 3109 },
  { lower := 3207, upper := 3300, witness := RowWitness.topPrime 3203 },
  { lower := 3301, upper := 3398, witness := RowWitness.topPrime 3301 },
  { lower := 3399, upper := 3488, witness := RowWitness.topPrime 3391 },
  { lower := 3489, upper := 3566, witness := RowWitness.topPrime 3469 },
  { lower := 3567, upper := 3656, witness := RowWitness.topPrime 3559 },
  { lower := 3657, upper := 3740, witness := RowWitness.topPrime 3643 },
  { lower := 3741, upper := 3836, witness := RowWitness.topPrime 3739 },
  { lower := 3837, upper := 3930, witness := RowWitness.topPrime 3833 },
  { lower := 3931, upper := 4028, witness := RowWitness.topPrime 3931 },
  { lower := 4029, upper := 4124, witness := RowWitness.topPrime 4027 },
  { lower := 4125, upper := 4208, witness := RowWitness.topPrime 4111 },
  { lower := 4209, upper := 4298, witness := RowWitness.topPrime 4201 },
  { lower := 4299, upper := 4394, witness := RowWitness.topPrime 4297 },
  { lower := 4395, upper := 4488, witness := RowWitness.topPrime 4391 },
  { lower := 4489, upper := 4580, witness := RowWitness.topPrime 4483 },
  { lower := 4581, upper := 4664, witness := RowWitness.topPrime 4567 },
  { lower := 4665, upper := 4760, witness := RowWitness.topPrime 4663 },
  { lower := 4761, upper := 4856, witness := RowWitness.topPrime 4759 },
  { lower := 4857, upper := 4928, witness := RowWitness.topPrime 4831 },
  { lower := 4929, upper := 5016, witness := RowWitness.topPrime 4919 },
  { lower := 5017, upper := 5108, witness := RowWitness.topPrime 5011 },
  { lower := 5109, upper := 5204, witness := RowWitness.topPrime 5107 },
  { lower := 5205, upper := 5294, witness := RowWitness.topPrime 5197 },
  { lower := 5295, upper := 5378, witness := RowWitness.topPrime 5281 },
  { lower := 5379, upper := 5448, witness := RowWitness.topPrime 5351 },
  { lower := 5449, upper := 5546, witness := RowWitness.topPrime 5449 },
  { lower := 5547, upper := 5628, witness := RowWitness.topPrime 5531 },
  { lower := 5629, upper := 5720, witness := RowWitness.topPrime 5623 },
  { lower := 5721, upper := 5814, witness := RowWitness.topPrime 5717 },
  { lower := 5815, upper := 5910, witness := RowWitness.topPrime 5813 },
  { lower := 5911, upper := 6000, witness := RowWitness.topPrime 5903 },
  { lower := 6001, upper := 6084, witness := RowWitness.topPrime 5987 },
  { lower := 6085, upper := 6176, witness := RowWitness.topPrime 6079 },
  { lower := 6177, upper := 6270, witness := RowWitness.topPrime 6173 },
  { lower := 6271, upper := 6368, witness := RowWitness.topPrime 6271 },
  { lower := 6369, upper := 6464, witness := RowWitness.topPrime 6367 },
  { lower := 6465, upper := 6548, witness := RowWitness.topPrime 6451 },
  { lower := 6549, upper := 6644, witness := RowWitness.topPrime 6547 },
  { lower := 6645, upper := 6734, witness := RowWitness.topPrime 6637 },
  { lower := 6735, upper := 6830, witness := RowWitness.topPrime 6733 },
  { lower := 6831, upper := 6926, witness := RowWitness.topPrime 6829 },
  { lower := 6927, upper := 7014, witness := RowWitness.topPrime 6917 },
  { lower := 7015, upper := 7110, witness := RowWitness.topPrime 7013 },
  { lower := 7111, upper := 7206, witness := RowWitness.topPrime 7109 },
  { lower := 7207, upper := 7304, witness := RowWitness.topPrime 7207 },
  { lower := 7305, upper := 7394, witness := RowWitness.topPrime 7297 },
  { lower := 7395, upper := 7490, witness := RowWitness.topPrime 7393 },
  { lower := 7491, upper := 7586, witness := RowWitness.topPrime 7489 },
  { lower := 7587, upper := 7680, witness := RowWitness.topPrime 7583 },
  { lower := 7681, upper := 7778, witness := RowWitness.topPrime 7681 },
  { lower := 7779, upper := 7856, witness := RowWitness.topPrime 7759 },
  { lower := 7857, upper := 7950, witness := RowWitness.topPrime 7853 },
  { lower := 7951, upper := 8048, witness := RowWitness.topPrime 7951 },
  { lower := 8049, upper := 8136, witness := RowWitness.topPrime 8039 },
  { lower := 8137, upper := 8220, witness := RowWitness.topPrime 8123 },
  { lower := 8221, upper := 8318, witness := RowWitness.topPrime 8221 },
  { lower := 8319, upper := 8414, witness := RowWitness.topPrime 8317 },
  { lower := 8415, upper := 8486, witness := RowWitness.topPrime 8389 },
  { lower := 8487, upper := 8564, witness := RowWitness.topPrime 8467 },
  { lower := 8565, upper := 8660, witness := RowWitness.topPrime 8563 },
  { lower := 8661, upper := 8744, witness := RowWitness.topPrime 8647 },
  { lower := 8745, upper := 8838, witness := RowWitness.topPrime 8741 },
  { lower := 8839, upper := 8936, witness := RowWitness.topPrime 8839 },
  { lower := 8937, upper := 9030, witness := RowWitness.topPrime 8933 },
  { lower := 9031, upper := 9126, witness := RowWitness.topPrime 9029 },
  { lower := 9127, upper := 9224, witness := RowWitness.topPrime 9127 },
  { lower := 9225, upper := 9318, witness := RowWitness.topPrime 9221 },
  { lower := 9319, upper := 9416, witness := RowWitness.topPrime 9319 },
  { lower := 9417, upper := 9506, witness := RowWitness.topPrime 9413 },
  { lower := 9522, upper := 9574, witness := RowWitness.topPrime 9521 },
  { lower := 9583, upper := 9648, witness := RowWitness.topPrime 9551 },
  { lower := 9649, upper := 9680, witness := RowWitness.topPrime 9649 },
  { lower := 10051, upper := 10136, witness := RowWitness.topPrime 10039 },
  { lower := 10137, upper := 10183, witness := RowWitness.topPrime 10133 },
  { lower := 10240, upper := 10303, witness := RowWitness.topPrime 10223 },
  { lower := 10580, upper := 10664, witness := RowWitness.topPrime 10567 },
  { lower := 10665, upper := 10745, witness := RowWitness.topPrime 10663 },
  { lower := 10935, upper := 11006, witness := RowWitness.topPrime 10909 },
  { lower := 11007, upper := 11082, witness := RowWitness.topPrime 11003 },
  { lower := 11094, upper := 11190, witness := RowWitness.topPrime 11093 },
  { lower := 11191, upper := 11206, witness := RowWitness.topPrime 11177 },
  { lower := 11236, upper := 11310, witness := RowWitness.topPrime 11213 },
  { lower := 11311, upper := 11347, witness := RowWitness.topPrime 11311 },
  { lower := 11664, upper := 11735, witness := RowWitness.topPrime 11657 },
  { lower := 11774, upper := 11840, witness := RowWitness.topPrime 11743 },
  { lower := 11841, upper := 11864, witness := RowWitness.topPrime 11839 },
  { lower := 12321, upper := 12385, witness := RowWitness.topPrime 12301 },
  { lower := 12393, upper := 12418, witness := RowWitness.topPrime 12391 },
  { lower := 12482, upper := 12490, witness := RowWitness.topPrime 12479 },
  { lower := 12493, upper := 12588, witness := RowWitness.topPrime 12491 },
  { lower := 12589, upper := 12590, witness := RowWitness.topPrime 12589 },
  { lower := 13125, upper := 13218, witness := RowWitness.topPrime 13121 },
  { lower := 13219, upper := 13222, witness := RowWitness.topPrime 13219 },
  { lower := 13254, upper := 13279, witness := RowWitness.topPrime 13249 },
  { lower := 13310, upper := 13351, witness := RowWitness.topPrime 13309 },
  { lower := 13454, upper := 13548, witness := RowWitness.topPrime 13451 },
  { lower := 13549, upper := 13553, witness := RowWitness.topPrime 13537 },
  { lower := 13718, upper := 13808, witness := RowWitness.topPrime 13711 },
  { lower := 13809, upper := 13847, witness := RowWitness.topPrime 13807 },
  { lower := 13851, upper := 13875, witness := RowWitness.topPrime 13841 },
  { lower := 13924, upper := 13948, witness := RowWitness.topPrime 13921 },
  { lower := 14336, upper := 14424, witness := RowWitness.topPrime 14327 },
  { lower := 14425, upper := 14472, witness := RowWitness.topPrime 14423 },
  { lower := 14641, upper := 14677, witness := RowWitness.topPrime 14639 },
  { lower := 14792, upper := 14836, witness := RowWitness.topPrime 14783 },
  { lower := 14884, upper := 14889, witness := RowWitness.topPrime 14879 },
  { lower := 15123, upper := 15218, witness := RowWitness.topPrime 15121 },
  { lower := 15219, upper := 15226, witness := RowWitness.topPrime 15217 },
  { lower := 15376, upper := 15470, witness := RowWitness.topPrime 15373 },
  { lower := 15471, upper := 15476, witness := RowWitness.topPrime 15467 },
  { lower := 15979, upper := 16070, witness := RowWitness.topPrime 15973 },
  { lower := 16071, upper := 16084, witness := RowWitness.topPrime 16069 },
  { lower := 16384, upper := 16478, witness := RowWitness.topPrime 16381 },
  { lower := 16479, upper := 16481, witness := RowWitness.topPrime 16477 },
  { lower := 16810, upper := 16884, witness := RowWitness.topPrime 16787 },
  { lower := 16885, upper := 16917, witness := RowWitness.topPrime 16883 },
  { lower := 17303, upper := 17395, witness := RowWitness.topPrime 17299 },
  { lower := 17496, upper := 17502, witness := RowWitness.topPrime 17491 },
  { lower := 17576, upper := 17593, witness := RowWitness.topPrime 17573 },
  { lower := 17661, upper := 17756, witness := RowWitness.topPrime 17659 },
  { lower := 17757, upper := 17758, witness := RowWitness.topPrime 17749 },
  { lower := 18490, upper := 18578, witness := RowWitness.topPrime 18481 },
  { lower := 18579, upper := 18588, witness := RowWitness.topPrime 18553 },
  { lower := 18634, upper := 18702, witness := RowWitness.topPrime 18617 },
  { lower := 18723, upper := 18731, witness := RowWitness.topPrime 18719 },
  { lower := 18750, upper := 18846, witness := RowWitness.topPrime 18749 },
  { lower := 18847, upper := 18847, witness := RowWitness.topPrime 18839 },
  { lower := 19663, upper := 19758, witness := RowWitness.topPrime 19661 },
  { lower := 19759, upper := 19760, witness := RowWitness.topPrime 19759 },
  { lower := 19773, upper := 19780, witness := RowWitness.topPrime 19763 },
  { lower := 19965, upper := 19978, witness := RowWitness.topPrime 19963 },
  { lower := 20172, upper := 20258, witness := RowWitness.topPrime 20161 },
  { lower := 20259, upper := 20261, witness := RowWitness.topPrime 20249 },
  { lower := 20535, upper := 20630, witness := RowWitness.topPrime 20533 },
  { lower := 20631, upper := 20632, witness := RowWitness.topPrime 20627 },
  { lower := 20667, upper := 20674, witness := RowWitness.topPrime 20663 },
  { lower := 21316, upper := 21393, witness := RowWitness.topPrime 21313 },
  { lower := 21870, upper := 21960, witness := RowWitness.topPrime 21863 },
  { lower := 21961, upper := 22001, witness := RowWitness.topPrime 21961 },
  { lower := 22472, upper := 22542, witness := RowWitness.topPrime 22469 },
  { lower := 24037, upper := 24055, witness := RowWitness.topPrime 24029 },
  { lower := 24057, upper := 24134, witness := RowWitness.topPrime 24049 },
  { lower := 24334, upper := 24426, witness := RowWitness.topPrime 24329 },
  { lower := 24427, upper := 24464, witness := RowWitness.topPrime 24421 },
  { lower := 24576, upper := 24668, witness := RowWitness.topPrime 24571 },
  { lower := 24669, upper := 24673, witness := RowWitness.topPrime 24659 },
  { lower := 25000, upper := 25061, witness := RowWitness.topPrime 24989 },
  { lower := 25215, upper := 25286, witness := RowWitness.topPrime 25189 },
  { lower := 25287, upper := 25312, witness := RowWitness.topPrime 25261 },
  { lower := 26934, upper := 26993, witness := RowWitness.topPrime 26927 },
  { lower := 28125, upper := 28187, witness := RowWitness.topPrime 28123 },
  { lower := 28577, upper := 28658, witness := RowWitness.topPrime 28573 },
  { lower := 28672, upper := 28674, witness := RowWitness.topPrime 28669 },
  { lower := 28717, upper := 28769, witness := RowWitness.topPrime 28711 },
  { lower := 29791, upper := 29865, witness := RowWitness.topPrime 29789 },
  { lower := 30258, upper := 30343, witness := RowWitness.topPrime 30253 },
  { lower := 30926, upper := 30996, witness := RowWitness.topPrime 30911 },
  { lower := 31250, upper := 31302, witness := RowWitness.topPrime 31249 },
  { lower := 31329, upper := 31347, witness := RowWitness.topPrime 31327 },
  { lower := 31423, upper := 31426, witness := RowWitness.topPrime 31397 },
  { lower := 31433, upper := 31494, witness := RowWitness.topPrime 31397 },
  { lower := 31495, upper := 31520, witness := RowWitness.topPrime 31489 },
  { lower := 32805, upper := 32865, witness := RowWitness.topPrime 32803 },
  { lower := 34375, upper := 34466, witness := RowWitness.topPrime 34369 },
  { lower := 34467, upper := 34488, witness := RowWitness.topPrime 34457 },
  { lower := 35344, upper := 35384, witness := RowWitness.topPrime 35339 },
  { lower := 36517, upper := 36594, witness := RowWitness.topPrime 36497 },
  { lower := 36595, upper := 36598, witness := RowWitness.topPrime 36587 },
  { lower := 37210, upper := 37276, witness := RowWitness.topPrime 37201 },
  { lower := 37303, upper := 37307, witness := RowWitness.topPrime 37277 },
  { lower := 37349, upper := 37400, witness := RowWitness.topPrime 37339 },
  { lower := 37446, upper := 37446, witness := RowWitness.topPrime 37441 },
  { lower := 37500, upper := 37543, witness := RowWitness.topPrime 37493 },
  { lower := 37553, upper := 37597, witness := RowWitness.topPrime 37549 },
  { lower := 37636, upper := 37650, witness := RowWitness.topPrime 37633 },
  { lower := 39326, upper := 39420, witness := RowWitness.topPrime 39323 },
  { lower := 39421, upper := 39423, witness := RowWitness.topPrime 39419 },
  { lower := 40401, upper := 40425, witness := RowWitness.topPrime 40387 },
  { lower := 40960, upper := 41028, witness := RowWitness.topPrime 40949 },
  { lower := 43750, upper := 43784, witness := RowWitness.topPrime 43721 },
  { lower := 48013, upper := 48058, witness := RowWitness.topPrime 47981 },
  { lower := 48734, upper := 48765, witness := RowWitness.topPrime 48733 },
  { lower := 48778, upper := 48831, witness := RowWitness.topPrime 48767 },
  { lower := 49152, upper := 49227, witness := RowWitness.topPrime 49139 },
  { lower := 55451, upper := 55538, witness := RowWitness.topPrime 55441 },
  { lower := 55539, upper := 55544, witness := RowWitness.topPrime 55529 },
  { lower := 58619, upper := 58661, witness := RowWitness.topPrime 58613 },
  { lower := 59049, upper := 59053, witness := RowWitness.topPrime 59029 },
  { lower := 62500, upper := 62507, witness := RowWitness.topPrime 62497 },
  { lower := 63948, upper := 63966, witness := RowWitness.topPrime 63929 },
  { lower := 65536, upper := 65618, witness := RowWitness.topPrime 65521 },
  { lower := 65619, upper := 65633, witness := RowWitness.topPrime 65617 },
  { lower := 68651, upper := 68687, witness := RowWitness.topPrime 68639 },
  { lower := 68921, upper := 68987, witness := RowWitness.topPrime 68917 },
  { lower := 73205, upper := 73264, witness := RowWitness.topPrime 73189 },
  { lower := 137842, upper := 137878, witness := RowWitness.topPrime 137831 },
  { lower := 146410, upper := 146431, witness := RowWitness.topPrime 146407 },
  { lower := 148955, upper := 148974, witness := RowWitness.topPrime 148949 }
]

def row098_layers : List CoverLayer := [
  { lower := 9506, upper := 19012, M := 23 },
  { lower := 19012, upper := 38024, M := 18 },
  { lower := 38024, upper := 76048, M := 15 },
  { lower := 76048, upper := 152096, M := 12 },
  { lower := 152096, upper := 304192, M := 10 },
  { lower := 304192, upper := 608384, M := 8 },
  { lower := 608384, upper := 1216768, M := 7 },
  { lower := 1216768, upper := 2433536, M := 6 },
  { lower := 2433536, upper := 4867072, M := 5 },
  { lower := 4867072, upper := 9734144, M := 4 },
  { lower := 9734144, upper := 19468288, M := 3 },
  { lower := 19468288, upper := 38936576, M := 3 },
  { lower := 38936576, upper := 77873152, M := 2 },
  { lower := 77873152, upper := 155746304, M := 2 },
  { lower := 155746304, upper := 311492608, M := 2 },
  { lower := 311492608, upper := 622985216, M := 1 },
  { lower := 622985216, upper := 1000000000, M := 1 }
]

def row098 : FiniteCoverRow := {
  height := row098_height,
  goods := row098_goods,
  layers := row098_layers
}


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row098

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row098_good000_checked :
    goodSegmentCheck 98 32 68
      { lower := 198, upper := 294, witness := RowWitness.topPrime 197 } = true := by
  exact good_top_prime_checked (i := 98) (r := 32) (s := 68) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row098_good001_checked :
    goodSegmentCheck 98 32 68
      { lower := 295, upper := 390, witness := RowWitness.topPrime 293 } = true := by
  exact good_top_prime_checked (i := 98) (r := 32) (s := 68) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row098_good002_checked :
    goodSegmentCheck 98 32 68
      { lower := 391, upper := 486, witness := RowWitness.topPrime 389 } = true := by
  exact good_top_prime_checked (i := 98) (r := 32) (s := 68) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row098_good003_checked :
    goodSegmentCheck 98 32 68
      { lower := 487, upper := 584, witness := RowWitness.topPrime 487 } = true := by
  exact good_top_prime_checked (i := 98) (r := 32) (s := 68) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row098_good004_checked :
    goodSegmentCheck 98 32 68
      { lower := 585, upper := 674, witness := RowWitness.topPrime 577 } = true := by
  exact good_top_prime_checked (i := 98) (r := 32) (s := 68) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row098_good005_checked :
    goodSegmentCheck 98 32 68
      { lower := 675, upper := 770, witness := RowWitness.topPrime 673 } = true := by
  exact good_top_prime_checked (i := 98) (r := 32) (s := 68) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row098_good006_checked :
    goodSegmentCheck 98 32 68
      { lower := 771, upper := 866, witness := RowWitness.topPrime 769 } = true := by
  exact good_top_prime_checked (i := 98) (r := 32) (s := 68) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row098_good007_checked :
    goodSegmentCheck 98 32 68
      { lower := 867, upper := 960, witness := RowWitness.topPrime 863 } = true := by
  exact good_top_prime_checked (i := 98) (r := 32) (s := 68) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row098_good008_checked :
    goodSegmentCheck 98 32 68
      { lower := 961, upper := 1050, witness := RowWitness.topPrime 953 } = true := by
  exact good_top_prime_checked (i := 98) (r := 32) (s := 68) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row098_good009_checked :
    goodSegmentCheck 98 32 68
      { lower := 1051, upper := 1148, witness := RowWitness.topPrime 1051 } = true := by
  exact good_top_prime_checked (i := 98) (r := 32) (s := 68) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row098_good010_checked :
    goodSegmentCheck 98 32 68
      { lower := 1149, upper := 1226, witness := RowWitness.topPrime 1129 } = true := by
  exact good_top_prime_checked (i := 98) (r := 32) (s := 68) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row098_good011_checked :
    goodSegmentCheck 98 32 68
      { lower := 1227, upper := 1320, witness := RowWitness.topPrime 1223 } = true := by
  exact good_top_prime_checked (i := 98) (r := 32) (s := 68) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row098_good012_checked :
    goodSegmentCheck 98 32 68
      { lower := 1321, upper := 1418, witness := RowWitness.topPrime 1321 } = true := by
  exact good_top_prime_checked (i := 98) (r := 32) (s := 68) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row098_good013_checked :
    goodSegmentCheck 98 32 68
      { lower := 1419, upper := 1506, witness := RowWitness.topPrime 1409 } = true := by
  exact good_top_prime_checked (i := 98) (r := 32) (s := 68) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row098_good014_checked :
    goodSegmentCheck 98 32 68
      { lower := 1507, upper := 1596, witness := RowWitness.topPrime 1499 } = true := by
  exact good_top_prime_checked (i := 98) (r := 32) (s := 68) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row098_good015_checked :
    goodSegmentCheck 98 32 68
      { lower := 1597, upper := 1694, witness := RowWitness.topPrime 1597 } = true := by
  exact good_top_prime_checked (i := 98) (r := 32) (s := 68) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row098_good000_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row098_good001_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row098_good002_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row098_good003_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row098_good004_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row098_good005_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row098_good006_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row098_good007_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row098_good008_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row098_good009_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row098_good010_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row098_good011_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row098_good012_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row098_good013_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row098_good014_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row098_good015_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row098_good016_checked :
    goodSegmentCheck 98 32 68
      { lower := 1695, upper := 1790, witness := RowWitness.topPrime 1693 } = true := by
  exact good_top_prime_checked (i := 98) (r := 32) (s := 68) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row098_good017_checked :
    goodSegmentCheck 98 32 68
      { lower := 1791, upper := 1886, witness := RowWitness.topPrime 1789 } = true := by
  exact good_top_prime_checked (i := 98) (r := 32) (s := 68) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row098_good018_checked :
    goodSegmentCheck 98 32 68
      { lower := 1887, upper := 1976, witness := RowWitness.topPrime 1879 } = true := by
  exact good_top_prime_checked (i := 98) (r := 32) (s := 68) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row098_good019_checked :
    goodSegmentCheck 98 32 68
      { lower := 1977, upper := 2070, witness := RowWitness.topPrime 1973 } = true := by
  exact good_top_prime_checked (i := 98) (r := 32) (s := 68) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row098_good020_checked :
    goodSegmentCheck 98 32 68
      { lower := 2071, upper := 2166, witness := RowWitness.topPrime 2069 } = true := by
  exact good_top_prime_checked (i := 98) (r := 32) (s := 68) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row098_good021_checked :
    goodSegmentCheck 98 32 68
      { lower := 2167, upper := 2258, witness := RowWitness.topPrime 2161 } = true := by
  exact good_top_prime_checked (i := 98) (r := 32) (s := 68) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row098_good022_checked :
    goodSegmentCheck 98 32 68
      { lower := 2259, upper := 2348, witness := RowWitness.topPrime 2251 } = true := by
  exact good_top_prime_checked (i := 98) (r := 32) (s := 68) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row098_good023_checked :
    goodSegmentCheck 98 32 68
      { lower := 2349, upper := 2444, witness := RowWitness.topPrime 2347 } = true := by
  exact good_top_prime_checked (i := 98) (r := 32) (s := 68) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row098_good024_checked :
    goodSegmentCheck 98 32 68
      { lower := 2445, upper := 2538, witness := RowWitness.topPrime 2441 } = true := by
  exact good_top_prime_checked (i := 98) (r := 32) (s := 68) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row098_good025_checked :
    goodSegmentCheck 98 32 68
      { lower := 2539, upper := 2636, witness := RowWitness.topPrime 2539 } = true := by
  exact good_top_prime_checked (i := 98) (r := 32) (s := 68) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row098_good026_checked :
    goodSegmentCheck 98 32 68
      { lower := 2637, upper := 2730, witness := RowWitness.topPrime 2633 } = true := by
  exact good_top_prime_checked (i := 98) (r := 32) (s := 68) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row098_good027_checked :
    goodSegmentCheck 98 32 68
      { lower := 2731, upper := 2828, witness := RowWitness.topPrime 2731 } = true := by
  exact good_top_prime_checked (i := 98) (r := 32) (s := 68) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row098_good028_checked :
    goodSegmentCheck 98 32 68
      { lower := 2829, upper := 2916, witness := RowWitness.topPrime 2819 } = true := by
  exact good_top_prime_checked (i := 98) (r := 32) (s := 68) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row098_good029_checked :
    goodSegmentCheck 98 32 68
      { lower := 2917, upper := 3014, witness := RowWitness.topPrime 2917 } = true := by
  exact good_top_prime_checked (i := 98) (r := 32) (s := 68) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row098_good030_checked :
    goodSegmentCheck 98 32 68
      { lower := 3015, upper := 3108, witness := RowWitness.topPrime 3011 } = true := by
  exact good_top_prime_checked (i := 98) (r := 32) (s := 68) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row098_good031_checked :
    goodSegmentCheck 98 32 68
      { lower := 3109, upper := 3206, witness := RowWitness.topPrime 3109 } = true := by
  exact good_top_prime_checked (i := 98) (r := 32) (s := 68) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row098_good016_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row098_good017_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row098_good018_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row098_good019_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row098_good020_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row098_good021_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row098_good022_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row098_good023_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row098_good024_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row098_good025_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row098_good026_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row098_good027_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row098_good028_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row098_good029_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row098_good030_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row098_good031_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row098_good032_checked :
    goodSegmentCheck 98 32 68
      { lower := 3207, upper := 3300, witness := RowWitness.topPrime 3203 } = true := by
  exact good_top_prime_checked (i := 98) (r := 32) (s := 68) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row098_good033_checked :
    goodSegmentCheck 98 32 68
      { lower := 3301, upper := 3398, witness := RowWitness.topPrime 3301 } = true := by
  exact good_top_prime_checked (i := 98) (r := 32) (s := 68) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row098_good034_checked :
    goodSegmentCheck 98 32 68
      { lower := 3399, upper := 3488, witness := RowWitness.topPrime 3391 } = true := by
  exact good_top_prime_checked (i := 98) (r := 32) (s := 68) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row098_good035_checked :
    goodSegmentCheck 98 32 68
      { lower := 3489, upper := 3566, witness := RowWitness.topPrime 3469 } = true := by
  exact good_top_prime_checked (i := 98) (r := 32) (s := 68) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row098_good036_checked :
    goodSegmentCheck 98 32 68
      { lower := 3567, upper := 3656, witness := RowWitness.topPrime 3559 } = true := by
  exact good_top_prime_checked (i := 98) (r := 32) (s := 68) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row098_good037_checked :
    goodSegmentCheck 98 32 68
      { lower := 3657, upper := 3740, witness := RowWitness.topPrime 3643 } = true := by
  exact good_top_prime_checked (i := 98) (r := 32) (s := 68) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row098_good038_checked :
    goodSegmentCheck 98 32 68
      { lower := 3741, upper := 3836, witness := RowWitness.topPrime 3739 } = true := by
  exact good_top_prime_checked (i := 98) (r := 32) (s := 68) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row098_good039_checked :
    goodSegmentCheck 98 32 68
      { lower := 3837, upper := 3930, witness := RowWitness.topPrime 3833 } = true := by
  exact good_top_prime_checked (i := 98) (r := 32) (s := 68) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row098_good040_checked :
    goodSegmentCheck 98 32 68
      { lower := 3931, upper := 4028, witness := RowWitness.topPrime 3931 } = true := by
  exact good_top_prime_checked (i := 98) (r := 32) (s := 68) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row098_good041_checked :
    goodSegmentCheck 98 32 68
      { lower := 4029, upper := 4124, witness := RowWitness.topPrime 4027 } = true := by
  exact good_top_prime_checked (i := 98) (r := 32) (s := 68) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row098_good042_checked :
    goodSegmentCheck 98 32 68
      { lower := 4125, upper := 4208, witness := RowWitness.topPrime 4111 } = true := by
  exact good_top_prime_checked (i := 98) (r := 32) (s := 68) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row098_good043_checked :
    goodSegmentCheck 98 32 68
      { lower := 4209, upper := 4298, witness := RowWitness.topPrime 4201 } = true := by
  exact good_top_prime_checked (i := 98) (r := 32) (s := 68) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row098_good044_checked :
    goodSegmentCheck 98 32 68
      { lower := 4299, upper := 4394, witness := RowWitness.topPrime 4297 } = true := by
  exact good_top_prime_checked (i := 98) (r := 32) (s := 68) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row098_good045_checked :
    goodSegmentCheck 98 32 68
      { lower := 4395, upper := 4488, witness := RowWitness.topPrime 4391 } = true := by
  exact good_top_prime_checked (i := 98) (r := 32) (s := 68) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row098_good046_checked :
    goodSegmentCheck 98 32 68
      { lower := 4489, upper := 4580, witness := RowWitness.topPrime 4483 } = true := by
  exact good_top_prime_checked (i := 98) (r := 32) (s := 68) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row098_good047_checked :
    goodSegmentCheck 98 32 68
      { lower := 4581, upper := 4664, witness := RowWitness.topPrime 4567 } = true := by
  exact good_top_prime_checked (i := 98) (r := 32) (s := 68) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row098_good032_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row098_good033_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row098_good034_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row098_good035_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row098_good036_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row098_good037_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row098_good038_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row098_good039_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row098_good040_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row098_good041_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row098_good042_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row098_good043_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row098_good044_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row098_good045_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row098_good046_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row098_good047_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row098_good048_checked :
    goodSegmentCheck 98 32 68
      { lower := 4665, upper := 4760, witness := RowWitness.topPrime 4663 } = true := by
  exact good_top_prime_checked (i := 98) (r := 32) (s := 68) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row098_good049_checked :
    goodSegmentCheck 98 32 68
      { lower := 4761, upper := 4856, witness := RowWitness.topPrime 4759 } = true := by
  exact good_top_prime_checked (i := 98) (r := 32) (s := 68) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row098_good050_checked :
    goodSegmentCheck 98 32 68
      { lower := 4857, upper := 4928, witness := RowWitness.topPrime 4831 } = true := by
  exact good_top_prime_checked (i := 98) (r := 32) (s := 68) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row098_good051_checked :
    goodSegmentCheck 98 32 68
      { lower := 4929, upper := 5016, witness := RowWitness.topPrime 4919 } = true := by
  exact good_top_prime_checked (i := 98) (r := 32) (s := 68) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row098_good052_checked :
    goodSegmentCheck 98 32 68
      { lower := 5017, upper := 5108, witness := RowWitness.topPrime 5011 } = true := by
  exact good_top_prime_checked (i := 98) (r := 32) (s := 68) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row098_good053_checked :
    goodSegmentCheck 98 32 68
      { lower := 5109, upper := 5204, witness := RowWitness.topPrime 5107 } = true := by
  exact good_top_prime_checked (i := 98) (r := 32) (s := 68) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row098_good054_checked :
    goodSegmentCheck 98 32 68
      { lower := 5205, upper := 5294, witness := RowWitness.topPrime 5197 } = true := by
  exact good_top_prime_checked (i := 98) (r := 32) (s := 68) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row098_good055_checked :
    goodSegmentCheck 98 32 68
      { lower := 5295, upper := 5378, witness := RowWitness.topPrime 5281 } = true := by
  exact good_top_prime_checked (i := 98) (r := 32) (s := 68) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row098_good056_checked :
    goodSegmentCheck 98 32 68
      { lower := 5379, upper := 5448, witness := RowWitness.topPrime 5351 } = true := by
  exact good_top_prime_checked (i := 98) (r := 32) (s := 68) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row098_good057_checked :
    goodSegmentCheck 98 32 68
      { lower := 5449, upper := 5546, witness := RowWitness.topPrime 5449 } = true := by
  exact good_top_prime_checked (i := 98) (r := 32) (s := 68) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row098_good058_checked :
    goodSegmentCheck 98 32 68
      { lower := 5547, upper := 5628, witness := RowWitness.topPrime 5531 } = true := by
  exact good_top_prime_checked (i := 98) (r := 32) (s := 68) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row098_good059_checked :
    goodSegmentCheck 98 32 68
      { lower := 5629, upper := 5720, witness := RowWitness.topPrime 5623 } = true := by
  exact good_top_prime_checked (i := 98) (r := 32) (s := 68) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row098_good060_checked :
    goodSegmentCheck 98 32 68
      { lower := 5721, upper := 5814, witness := RowWitness.topPrime 5717 } = true := by
  exact good_top_prime_checked (i := 98) (r := 32) (s := 68) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row098_good061_checked :
    goodSegmentCheck 98 32 68
      { lower := 5815, upper := 5910, witness := RowWitness.topPrime 5813 } = true := by
  exact good_top_prime_checked (i := 98) (r := 32) (s := 68) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row098_good062_checked :
    goodSegmentCheck 98 32 68
      { lower := 5911, upper := 6000, witness := RowWitness.topPrime 5903 } = true := by
  exact good_top_prime_checked (i := 98) (r := 32) (s := 68) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row098_good063_checked :
    goodSegmentCheck 98 32 68
      { lower := 6001, upper := 6084, witness := RowWitness.topPrime 5987 } = true := by
  exact good_top_prime_checked (i := 98) (r := 32) (s := 68) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row098_good048_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row098_good049_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row098_good050_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row098_good051_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row098_good052_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row098_good053_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row098_good054_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row098_good055_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row098_good056_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row098_good057_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row098_good058_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row098_good059_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row098_good060_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row098_good061_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row098_good062_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row098_good063_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row098_good064_checked :
    goodSegmentCheck 98 32 68
      { lower := 6085, upper := 6176, witness := RowWitness.topPrime 6079 } = true := by
  exact good_top_prime_checked (i := 98) (r := 32) (s := 68) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row098_good065_checked :
    goodSegmentCheck 98 32 68
      { lower := 6177, upper := 6270, witness := RowWitness.topPrime 6173 } = true := by
  exact good_top_prime_checked (i := 98) (r := 32) (s := 68) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row098_good066_checked :
    goodSegmentCheck 98 32 68
      { lower := 6271, upper := 6368, witness := RowWitness.topPrime 6271 } = true := by
  exact good_top_prime_checked (i := 98) (r := 32) (s := 68) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row098_good067_checked :
    goodSegmentCheck 98 32 68
      { lower := 6369, upper := 6464, witness := RowWitness.topPrime 6367 } = true := by
  exact good_top_prime_checked (i := 98) (r := 32) (s := 68) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row098_good068_checked :
    goodSegmentCheck 98 32 68
      { lower := 6465, upper := 6548, witness := RowWitness.topPrime 6451 } = true := by
  exact good_top_prime_checked (i := 98) (r := 32) (s := 68) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row098_good069_checked :
    goodSegmentCheck 98 32 68
      { lower := 6549, upper := 6644, witness := RowWitness.topPrime 6547 } = true := by
  exact good_top_prime_checked (i := 98) (r := 32) (s := 68) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row098_good070_checked :
    goodSegmentCheck 98 32 68
      { lower := 6645, upper := 6734, witness := RowWitness.topPrime 6637 } = true := by
  exact good_top_prime_checked (i := 98) (r := 32) (s := 68) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row098_good071_checked :
    goodSegmentCheck 98 32 68
      { lower := 6735, upper := 6830, witness := RowWitness.topPrime 6733 } = true := by
  exact good_top_prime_checked (i := 98) (r := 32) (s := 68) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row098_good072_checked :
    goodSegmentCheck 98 32 68
      { lower := 6831, upper := 6926, witness := RowWitness.topPrime 6829 } = true := by
  exact good_top_prime_checked (i := 98) (r := 32) (s := 68) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row098_good073_checked :
    goodSegmentCheck 98 32 68
      { lower := 6927, upper := 7014, witness := RowWitness.topPrime 6917 } = true := by
  exact good_top_prime_checked (i := 98) (r := 32) (s := 68) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row098_good074_checked :
    goodSegmentCheck 98 32 68
      { lower := 7015, upper := 7110, witness := RowWitness.topPrime 7013 } = true := by
  exact good_top_prime_checked (i := 98) (r := 32) (s := 68) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row098_good075_checked :
    goodSegmentCheck 98 32 68
      { lower := 7111, upper := 7206, witness := RowWitness.topPrime 7109 } = true := by
  exact good_top_prime_checked (i := 98) (r := 32) (s := 68) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row098_good076_checked :
    goodSegmentCheck 98 32 68
      { lower := 7207, upper := 7304, witness := RowWitness.topPrime 7207 } = true := by
  exact good_top_prime_checked (i := 98) (r := 32) (s := 68) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row098_good077_checked :
    goodSegmentCheck 98 32 68
      { lower := 7305, upper := 7394, witness := RowWitness.topPrime 7297 } = true := by
  exact good_top_prime_checked (i := 98) (r := 32) (s := 68) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row098_good078_checked :
    goodSegmentCheck 98 32 68
      { lower := 7395, upper := 7490, witness := RowWitness.topPrime 7393 } = true := by
  exact good_top_prime_checked (i := 98) (r := 32) (s := 68) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row098_good079_checked :
    goodSegmentCheck 98 32 68
      { lower := 7491, upper := 7586, witness := RowWitness.topPrime 7489 } = true := by
  exact good_top_prime_checked (i := 98) (r := 32) (s := 68) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row098_good064_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row098_good065_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row098_good066_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row098_good067_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row098_good068_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row098_good069_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row098_good070_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row098_good071_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row098_good072_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row098_good073_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row098_good074_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row098_good075_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row098_good076_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row098_good077_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row098_good078_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row098_good079_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row098_good080_checked :
    goodSegmentCheck 98 32 68
      { lower := 7587, upper := 7680, witness := RowWitness.topPrime 7583 } = true := by
  exact good_top_prime_checked (i := 98) (r := 32) (s := 68) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row098_good081_checked :
    goodSegmentCheck 98 32 68
      { lower := 7681, upper := 7778, witness := RowWitness.topPrime 7681 } = true := by
  exact good_top_prime_checked (i := 98) (r := 32) (s := 68) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row098_good082_checked :
    goodSegmentCheck 98 32 68
      { lower := 7779, upper := 7856, witness := RowWitness.topPrime 7759 } = true := by
  exact good_top_prime_checked (i := 98) (r := 32) (s := 68) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row098_good083_checked :
    goodSegmentCheck 98 32 68
      { lower := 7857, upper := 7950, witness := RowWitness.topPrime 7853 } = true := by
  exact good_top_prime_checked (i := 98) (r := 32) (s := 68) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row098_good084_checked :
    goodSegmentCheck 98 32 68
      { lower := 7951, upper := 8048, witness := RowWitness.topPrime 7951 } = true := by
  exact good_top_prime_checked (i := 98) (r := 32) (s := 68) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row098_good085_checked :
    goodSegmentCheck 98 32 68
      { lower := 8049, upper := 8136, witness := RowWitness.topPrime 8039 } = true := by
  exact good_top_prime_checked (i := 98) (r := 32) (s := 68) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row098_good086_checked :
    goodSegmentCheck 98 32 68
      { lower := 8137, upper := 8220, witness := RowWitness.topPrime 8123 } = true := by
  exact good_top_prime_checked (i := 98) (r := 32) (s := 68) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row098_good087_checked :
    goodSegmentCheck 98 32 68
      { lower := 8221, upper := 8318, witness := RowWitness.topPrime 8221 } = true := by
  exact good_top_prime_checked (i := 98) (r := 32) (s := 68) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row098_good088_checked :
    goodSegmentCheck 98 32 68
      { lower := 8319, upper := 8414, witness := RowWitness.topPrime 8317 } = true := by
  exact good_top_prime_checked (i := 98) (r := 32) (s := 68) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row098_good089_checked :
    goodSegmentCheck 98 32 68
      { lower := 8415, upper := 8486, witness := RowWitness.topPrime 8389 } = true := by
  exact good_top_prime_checked (i := 98) (r := 32) (s := 68) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row098_good090_checked :
    goodSegmentCheck 98 32 68
      { lower := 8487, upper := 8564, witness := RowWitness.topPrime 8467 } = true := by
  exact good_top_prime_checked (i := 98) (r := 32) (s := 68) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row098_good091_checked :
    goodSegmentCheck 98 32 68
      { lower := 8565, upper := 8660, witness := RowWitness.topPrime 8563 } = true := by
  exact good_top_prime_checked (i := 98) (r := 32) (s := 68) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row098_good092_checked :
    goodSegmentCheck 98 32 68
      { lower := 8661, upper := 8744, witness := RowWitness.topPrime 8647 } = true := by
  exact good_top_prime_checked (i := 98) (r := 32) (s := 68) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row098_good093_checked :
    goodSegmentCheck 98 32 68
      { lower := 8745, upper := 8838, witness := RowWitness.topPrime 8741 } = true := by
  exact good_top_prime_checked (i := 98) (r := 32) (s := 68) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row098_good094_checked :
    goodSegmentCheck 98 32 68
      { lower := 8839, upper := 8936, witness := RowWitness.topPrime 8839 } = true := by
  exact good_top_prime_checked (i := 98) (r := 32) (s := 68) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row098_good095_checked :
    goodSegmentCheck 98 32 68
      { lower := 8937, upper := 9030, witness := RowWitness.topPrime 8933 } = true := by
  exact good_top_prime_checked (i := 98) (r := 32) (s := 68) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row098_good080_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row098_good081_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row098_good082_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row098_good083_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row098_good084_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row098_good085_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row098_good086_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row098_good087_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row098_good088_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row098_good089_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row098_good090_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row098_good091_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row098_good092_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row098_good093_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row098_good094_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row098_good095_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row098_good096_checked :
    goodSegmentCheck 98 32 68
      { lower := 9031, upper := 9126, witness := RowWitness.topPrime 9029 } = true := by
  exact good_top_prime_checked (i := 98) (r := 32) (s := 68) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row098_good097_checked :
    goodSegmentCheck 98 32 68
      { lower := 9127, upper := 9224, witness := RowWitness.topPrime 9127 } = true := by
  exact good_top_prime_checked (i := 98) (r := 32) (s := 68) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row098_good098_checked :
    goodSegmentCheck 98 32 68
      { lower := 9225, upper := 9318, witness := RowWitness.topPrime 9221 } = true := by
  exact good_top_prime_checked (i := 98) (r := 32) (s := 68) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row098_good099_checked :
    goodSegmentCheck 98 32 68
      { lower := 9319, upper := 9416, witness := RowWitness.topPrime 9319 } = true := by
  exact good_top_prime_checked (i := 98) (r := 32) (s := 68) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row098_good100_checked :
    goodSegmentCheck 98 32 68
      { lower := 9417, upper := 9506, witness := RowWitness.topPrime 9413 } = true := by
  exact good_top_prime_checked (i := 98) (r := 32) (s := 68) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row098_good101_checked :
    goodSegmentCheck 98 32 68
      { lower := 9522, upper := 9574, witness := RowWitness.topPrime 9521 } = true := by
  exact good_top_prime_checked (i := 98) (r := 32) (s := 68) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row098_good102_checked :
    goodSegmentCheck 98 32 68
      { lower := 9583, upper := 9648, witness := RowWitness.topPrime 9551 } = true := by
  exact good_top_prime_checked (i := 98) (r := 32) (s := 68) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row098_good103_checked :
    goodSegmentCheck 98 32 68
      { lower := 9649, upper := 9680, witness := RowWitness.topPrime 9649 } = true := by
  exact good_top_prime_checked (i := 98) (r := 32) (s := 68) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row098_good104_checked :
    goodSegmentCheck 98 32 68
      { lower := 10051, upper := 10136, witness := RowWitness.topPrime 10039 } = true := by
  exact good_top_prime_checked (i := 98) (r := 32) (s := 68) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row098_good105_checked :
    goodSegmentCheck 98 32 68
      { lower := 10137, upper := 10183, witness := RowWitness.topPrime 10133 } = true := by
  exact good_top_prime_checked (i := 98) (r := 32) (s := 68) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row098_good106_checked :
    goodSegmentCheck 98 32 68
      { lower := 10240, upper := 10303, witness := RowWitness.topPrime 10223 } = true := by
  exact good_top_prime_checked (i := 98) (r := 32) (s := 68) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row098_good107_checked :
    goodSegmentCheck 98 32 68
      { lower := 10580, upper := 10664, witness := RowWitness.topPrime 10567 } = true := by
  exact good_top_prime_checked (i := 98) (r := 32) (s := 68) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row098_good108_checked :
    goodSegmentCheck 98 32 68
      { lower := 10665, upper := 10745, witness := RowWitness.topPrime 10663 } = true := by
  exact good_top_prime_checked (i := 98) (r := 32) (s := 68) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row098_good109_checked :
    goodSegmentCheck 98 32 68
      { lower := 10935, upper := 11006, witness := RowWitness.topPrime 10909 } = true := by
  exact good_top_prime_checked (i := 98) (r := 32) (s := 68) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row098_good110_checked :
    goodSegmentCheck 98 32 68
      { lower := 11007, upper := 11082, witness := RowWitness.topPrime 11003 } = true := by
  exact good_top_prime_checked (i := 98) (r := 32) (s := 68) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row098_good111_checked :
    goodSegmentCheck 98 32 68
      { lower := 11094, upper := 11190, witness := RowWitness.topPrime 11093 } = true := by
  exact good_top_prime_checked (i := 98) (r := 32) (s := 68) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row098_good096_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row098_good097_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row098_good098_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row098_good099_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row098_good100_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row098_good101_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row098_good102_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row098_good103_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row098_good104_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row098_good105_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row098_good106_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row098_good107_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row098_good108_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row098_good109_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row098_good110_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row098_good111_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row098_good112_checked :
    goodSegmentCheck 98 32 68
      { lower := 11191, upper := 11206, witness := RowWitness.topPrime 11177 } = true := by
  exact good_top_prime_checked (i := 98) (r := 32) (s := 68) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row098_good113_checked :
    goodSegmentCheck 98 32 68
      { lower := 11236, upper := 11310, witness := RowWitness.topPrime 11213 } = true := by
  exact good_top_prime_checked (i := 98) (r := 32) (s := 68) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row098_good114_checked :
    goodSegmentCheck 98 32 68
      { lower := 11311, upper := 11347, witness := RowWitness.topPrime 11311 } = true := by
  exact good_top_prime_checked (i := 98) (r := 32) (s := 68) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row098_good115_checked :
    goodSegmentCheck 98 32 68
      { lower := 11664, upper := 11735, witness := RowWitness.topPrime 11657 } = true := by
  exact good_top_prime_checked (i := 98) (r := 32) (s := 68) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row098_good116_checked :
    goodSegmentCheck 98 32 68
      { lower := 11774, upper := 11840, witness := RowWitness.topPrime 11743 } = true := by
  exact good_top_prime_checked (i := 98) (r := 32) (s := 68) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row098_good117_checked :
    goodSegmentCheck 98 32 68
      { lower := 11841, upper := 11864, witness := RowWitness.topPrime 11839 } = true := by
  exact good_top_prime_checked (i := 98) (r := 32) (s := 68) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row098_good118_checked :
    goodSegmentCheck 98 32 68
      { lower := 12321, upper := 12385, witness := RowWitness.topPrime 12301 } = true := by
  exact good_top_prime_checked (i := 98) (r := 32) (s := 68) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row098_good119_checked :
    goodSegmentCheck 98 32 68
      { lower := 12393, upper := 12418, witness := RowWitness.topPrime 12391 } = true := by
  exact good_top_prime_checked (i := 98) (r := 32) (s := 68) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row098_good120_checked :
    goodSegmentCheck 98 32 68
      { lower := 12482, upper := 12490, witness := RowWitness.topPrime 12479 } = true := by
  exact good_top_prime_checked (i := 98) (r := 32) (s := 68) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row098_good121_checked :
    goodSegmentCheck 98 32 68
      { lower := 12493, upper := 12588, witness := RowWitness.topPrime 12491 } = true := by
  exact good_top_prime_checked (i := 98) (r := 32) (s := 68) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row098_good122_checked :
    goodSegmentCheck 98 32 68
      { lower := 12589, upper := 12590, witness := RowWitness.topPrime 12589 } = true := by
  exact good_top_prime_checked (i := 98) (r := 32) (s := 68) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row098_good123_checked :
    goodSegmentCheck 98 32 68
      { lower := 13125, upper := 13218, witness := RowWitness.topPrime 13121 } = true := by
  exact good_top_prime_checked (i := 98) (r := 32) (s := 68) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row098_good124_checked :
    goodSegmentCheck 98 32 68
      { lower := 13219, upper := 13222, witness := RowWitness.topPrime 13219 } = true := by
  exact good_top_prime_checked (i := 98) (r := 32) (s := 68) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row098_good125_checked :
    goodSegmentCheck 98 32 68
      { lower := 13254, upper := 13279, witness := RowWitness.topPrime 13249 } = true := by
  exact good_top_prime_checked (i := 98) (r := 32) (s := 68) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row098_good126_checked :
    goodSegmentCheck 98 32 68
      { lower := 13310, upper := 13351, witness := RowWitness.topPrime 13309 } = true := by
  exact good_top_prime_checked (i := 98) (r := 32) (s := 68) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row098_good127_checked :
    goodSegmentCheck 98 32 68
      { lower := 13454, upper := 13548, witness := RowWitness.topPrime 13451 } = true := by
  exact good_top_prime_checked (i := 98) (r := 32) (s := 68) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row098_good112_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row098_good113_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row098_good114_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row098_good115_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row098_good116_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row098_good117_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row098_good118_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row098_good119_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row098_good120_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row098_good121_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row098_good122_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row098_good123_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row098_good124_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row098_good125_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row098_good126_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row098_good127_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row098_good128_checked :
    goodSegmentCheck 98 32 68
      { lower := 13549, upper := 13553, witness := RowWitness.topPrime 13537 } = true := by
  exact good_top_prime_checked (i := 98) (r := 32) (s := 68) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row098_good129_checked :
    goodSegmentCheck 98 32 68
      { lower := 13718, upper := 13808, witness := RowWitness.topPrime 13711 } = true := by
  exact good_top_prime_checked (i := 98) (r := 32) (s := 68) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row098_good130_checked :
    goodSegmentCheck 98 32 68
      { lower := 13809, upper := 13847, witness := RowWitness.topPrime 13807 } = true := by
  exact good_top_prime_checked (i := 98) (r := 32) (s := 68) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row098_good131_checked :
    goodSegmentCheck 98 32 68
      { lower := 13851, upper := 13875, witness := RowWitness.topPrime 13841 } = true := by
  exact good_top_prime_checked (i := 98) (r := 32) (s := 68) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row098_good132_checked :
    goodSegmentCheck 98 32 68
      { lower := 13924, upper := 13948, witness := RowWitness.topPrime 13921 } = true := by
  exact good_top_prime_checked (i := 98) (r := 32) (s := 68) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row098_good133_checked :
    goodSegmentCheck 98 32 68
      { lower := 14336, upper := 14424, witness := RowWitness.topPrime 14327 } = true := by
  exact good_top_prime_checked (i := 98) (r := 32) (s := 68) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row098_good134_checked :
    goodSegmentCheck 98 32 68
      { lower := 14425, upper := 14472, witness := RowWitness.topPrime 14423 } = true := by
  exact good_top_prime_checked (i := 98) (r := 32) (s := 68) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row098_good135_checked :
    goodSegmentCheck 98 32 68
      { lower := 14641, upper := 14677, witness := RowWitness.topPrime 14639 } = true := by
  exact good_top_prime_checked (i := 98) (r := 32) (s := 68) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row098_good136_checked :
    goodSegmentCheck 98 32 68
      { lower := 14792, upper := 14836, witness := RowWitness.topPrime 14783 } = true := by
  exact good_top_prime_checked (i := 98) (r := 32) (s := 68) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row098_good137_checked :
    goodSegmentCheck 98 32 68
      { lower := 14884, upper := 14889, witness := RowWitness.topPrime 14879 } = true := by
  exact good_top_prime_checked (i := 98) (r := 32) (s := 68) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row098_good138_checked :
    goodSegmentCheck 98 32 68
      { lower := 15123, upper := 15218, witness := RowWitness.topPrime 15121 } = true := by
  exact good_top_prime_checked (i := 98) (r := 32) (s := 68) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row098_good139_checked :
    goodSegmentCheck 98 32 68
      { lower := 15219, upper := 15226, witness := RowWitness.topPrime 15217 } = true := by
  exact good_top_prime_checked (i := 98) (r := 32) (s := 68) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row098_good140_checked :
    goodSegmentCheck 98 32 68
      { lower := 15376, upper := 15470, witness := RowWitness.topPrime 15373 } = true := by
  exact good_top_prime_checked (i := 98) (r := 32) (s := 68) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row098_good141_checked :
    goodSegmentCheck 98 32 68
      { lower := 15471, upper := 15476, witness := RowWitness.topPrime 15467 } = true := by
  exact good_top_prime_checked (i := 98) (r := 32) (s := 68) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row098_good142_checked :
    goodSegmentCheck 98 32 68
      { lower := 15979, upper := 16070, witness := RowWitness.topPrime 15973 } = true := by
  exact good_top_prime_checked (i := 98) (r := 32) (s := 68) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row098_good143_checked :
    goodSegmentCheck 98 32 68
      { lower := 16071, upper := 16084, witness := RowWitness.topPrime 16069 } = true := by
  exact good_top_prime_checked (i := 98) (r := 32) (s := 68) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row098_good128_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row098_good129_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row098_good130_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row098_good131_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row098_good132_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row098_good133_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row098_good134_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row098_good135_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row098_good136_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row098_good137_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row098_good138_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row098_good139_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row098_good140_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row098_good141_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row098_good142_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row098_good143_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row098_good144_checked :
    goodSegmentCheck 98 32 68
      { lower := 16384, upper := 16478, witness := RowWitness.topPrime 16381 } = true := by
  exact good_top_prime_checked (i := 98) (r := 32) (s := 68) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row098_good145_checked :
    goodSegmentCheck 98 32 68
      { lower := 16479, upper := 16481, witness := RowWitness.topPrime 16477 } = true := by
  exact good_top_prime_checked (i := 98) (r := 32) (s := 68) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row098_good146_checked :
    goodSegmentCheck 98 32 68
      { lower := 16810, upper := 16884, witness := RowWitness.topPrime 16787 } = true := by
  exact good_top_prime_checked (i := 98) (r := 32) (s := 68) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row098_good147_checked :
    goodSegmentCheck 98 32 68
      { lower := 16885, upper := 16917, witness := RowWitness.topPrime 16883 } = true := by
  exact good_top_prime_checked (i := 98) (r := 32) (s := 68) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row098_good148_checked :
    goodSegmentCheck 98 32 68
      { lower := 17303, upper := 17395, witness := RowWitness.topPrime 17299 } = true := by
  exact good_top_prime_checked (i := 98) (r := 32) (s := 68) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row098_good149_checked :
    goodSegmentCheck 98 32 68
      { lower := 17496, upper := 17502, witness := RowWitness.topPrime 17491 } = true := by
  exact good_top_prime_checked (i := 98) (r := 32) (s := 68) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row098_good150_checked :
    goodSegmentCheck 98 32 68
      { lower := 17576, upper := 17593, witness := RowWitness.topPrime 17573 } = true := by
  exact good_top_prime_checked (i := 98) (r := 32) (s := 68) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row098_good151_checked :
    goodSegmentCheck 98 32 68
      { lower := 17661, upper := 17756, witness := RowWitness.topPrime 17659 } = true := by
  exact good_top_prime_checked (i := 98) (r := 32) (s := 68) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row098_good152_checked :
    goodSegmentCheck 98 32 68
      { lower := 17757, upper := 17758, witness := RowWitness.topPrime 17749 } = true := by
  exact good_top_prime_checked (i := 98) (r := 32) (s := 68) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row098_good153_checked :
    goodSegmentCheck 98 32 68
      { lower := 18490, upper := 18578, witness := RowWitness.topPrime 18481 } = true := by
  exact good_top_prime_checked (i := 98) (r := 32) (s := 68) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row098_good154_checked :
    goodSegmentCheck 98 32 68
      { lower := 18579, upper := 18588, witness := RowWitness.topPrime 18553 } = true := by
  exact good_top_prime_checked (i := 98) (r := 32) (s := 68) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row098_good155_checked :
    goodSegmentCheck 98 32 68
      { lower := 18634, upper := 18702, witness := RowWitness.topPrime 18617 } = true := by
  exact good_top_prime_checked (i := 98) (r := 32) (s := 68) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row098_good156_checked :
    goodSegmentCheck 98 32 68
      { lower := 18723, upper := 18731, witness := RowWitness.topPrime 18719 } = true := by
  exact good_top_prime_checked (i := 98) (r := 32) (s := 68) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row098_good157_checked :
    goodSegmentCheck 98 32 68
      { lower := 18750, upper := 18846, witness := RowWitness.topPrime 18749 } = true := by
  exact good_top_prime_checked (i := 98) (r := 32) (s := 68) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row098_good158_checked :
    goodSegmentCheck 98 32 68
      { lower := 18847, upper := 18847, witness := RowWitness.topPrime 18839 } = true := by
  exact good_top_prime_checked (i := 98) (r := 32) (s := 68) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row098_good159_checked :
    goodSegmentCheck 98 32 68
      { lower := 19663, upper := 19758, witness := RowWitness.topPrime 19661 } = true := by
  exact good_top_prime_checked (i := 98) (r := 32) (s := 68) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row098_good144_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row098_good145_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row098_good146_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row098_good147_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row098_good148_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row098_good149_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row098_good150_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row098_good151_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row098_good152_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row098_good153_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row098_good154_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row098_good155_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row098_good156_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row098_good157_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row098_good158_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row098_good159_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row098_good160_checked :
    goodSegmentCheck 98 32 68
      { lower := 19759, upper := 19760, witness := RowWitness.topPrime 19759 } = true := by
  exact good_top_prime_checked (i := 98) (r := 32) (s := 68) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row098_good161_checked :
    goodSegmentCheck 98 32 68
      { lower := 19773, upper := 19780, witness := RowWitness.topPrime 19763 } = true := by
  exact good_top_prime_checked (i := 98) (r := 32) (s := 68) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row098_good162_checked :
    goodSegmentCheck 98 32 68
      { lower := 19965, upper := 19978, witness := RowWitness.topPrime 19963 } = true := by
  exact good_top_prime_checked (i := 98) (r := 32) (s := 68) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row098_good163_checked :
    goodSegmentCheck 98 32 68
      { lower := 20172, upper := 20258, witness := RowWitness.topPrime 20161 } = true := by
  exact good_top_prime_checked (i := 98) (r := 32) (s := 68) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row098_good164_checked :
    goodSegmentCheck 98 32 68
      { lower := 20259, upper := 20261, witness := RowWitness.topPrime 20249 } = true := by
  exact good_top_prime_checked (i := 98) (r := 32) (s := 68) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row098_good165_checked :
    goodSegmentCheck 98 32 68
      { lower := 20535, upper := 20630, witness := RowWitness.topPrime 20533 } = true := by
  exact good_top_prime_checked (i := 98) (r := 32) (s := 68) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row098_good166_checked :
    goodSegmentCheck 98 32 68
      { lower := 20631, upper := 20632, witness := RowWitness.topPrime 20627 } = true := by
  exact good_top_prime_checked (i := 98) (r := 32) (s := 68) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row098_good167_checked :
    goodSegmentCheck 98 32 68
      { lower := 20667, upper := 20674, witness := RowWitness.topPrime 20663 } = true := by
  exact good_top_prime_checked (i := 98) (r := 32) (s := 68) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row098_good168_checked :
    goodSegmentCheck 98 32 68
      { lower := 21316, upper := 21393, witness := RowWitness.topPrime 21313 } = true := by
  exact good_top_prime_checked (i := 98) (r := 32) (s := 68) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row098_good169_checked :
    goodSegmentCheck 98 32 68
      { lower := 21870, upper := 21960, witness := RowWitness.topPrime 21863 } = true := by
  exact good_top_prime_checked (i := 98) (r := 32) (s := 68) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row098_good170_checked :
    goodSegmentCheck 98 32 68
      { lower := 21961, upper := 22001, witness := RowWitness.topPrime 21961 } = true := by
  exact good_top_prime_checked (i := 98) (r := 32) (s := 68) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row098_good171_checked :
    goodSegmentCheck 98 32 68
      { lower := 22472, upper := 22542, witness := RowWitness.topPrime 22469 } = true := by
  exact good_top_prime_checked (i := 98) (r := 32) (s := 68) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row098_good172_checked :
    goodSegmentCheck 98 32 68
      { lower := 24037, upper := 24055, witness := RowWitness.topPrime 24029 } = true := by
  exact good_top_prime_checked (i := 98) (r := 32) (s := 68) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row098_good173_checked :
    goodSegmentCheck 98 32 68
      { lower := 24057, upper := 24134, witness := RowWitness.topPrime 24049 } = true := by
  exact good_top_prime_checked (i := 98) (r := 32) (s := 68) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row098_good174_checked :
    goodSegmentCheck 98 32 68
      { lower := 24334, upper := 24426, witness := RowWitness.topPrime 24329 } = true := by
  exact good_top_prime_checked (i := 98) (r := 32) (s := 68) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row098_good175_checked :
    goodSegmentCheck 98 32 68
      { lower := 24427, upper := 24464, witness := RowWitness.topPrime 24421 } = true := by
  exact good_top_prime_checked (i := 98) (r := 32) (s := 68) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row098_good160_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row098_good161_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row098_good162_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row098_good163_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row098_good164_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row098_good165_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row098_good166_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row098_good167_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row098_good168_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row098_good169_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row098_good170_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row098_good171_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row098_good172_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row098_good173_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row098_good174_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row098_good175_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row098_good176_checked :
    goodSegmentCheck 98 32 68
      { lower := 24576, upper := 24668, witness := RowWitness.topPrime 24571 } = true := by
  exact good_top_prime_checked (i := 98) (r := 32) (s := 68) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row098_good177_checked :
    goodSegmentCheck 98 32 68
      { lower := 24669, upper := 24673, witness := RowWitness.topPrime 24659 } = true := by
  exact good_top_prime_checked (i := 98) (r := 32) (s := 68) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row098_good178_checked :
    goodSegmentCheck 98 32 68
      { lower := 25000, upper := 25061, witness := RowWitness.topPrime 24989 } = true := by
  exact good_top_prime_checked (i := 98) (r := 32) (s := 68) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row098_good179_checked :
    goodSegmentCheck 98 32 68
      { lower := 25215, upper := 25286, witness := RowWitness.topPrime 25189 } = true := by
  exact good_top_prime_checked (i := 98) (r := 32) (s := 68) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row098_good180_checked :
    goodSegmentCheck 98 32 68
      { lower := 25287, upper := 25312, witness := RowWitness.topPrime 25261 } = true := by
  exact good_top_prime_checked (i := 98) (r := 32) (s := 68) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row098_good181_checked :
    goodSegmentCheck 98 32 68
      { lower := 26934, upper := 26993, witness := RowWitness.topPrime 26927 } = true := by
  exact good_top_prime_checked (i := 98) (r := 32) (s := 68) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row098_good182_checked :
    goodSegmentCheck 98 32 68
      { lower := 28125, upper := 28187, witness := RowWitness.topPrime 28123 } = true := by
  exact good_top_prime_checked (i := 98) (r := 32) (s := 68) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row098_good183_checked :
    goodSegmentCheck 98 32 68
      { lower := 28577, upper := 28658, witness := RowWitness.topPrime 28573 } = true := by
  exact good_top_prime_checked (i := 98) (r := 32) (s := 68) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row098_good184_checked :
    goodSegmentCheck 98 32 68
      { lower := 28672, upper := 28674, witness := RowWitness.topPrime 28669 } = true := by
  exact good_top_prime_checked (i := 98) (r := 32) (s := 68) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row098_good185_checked :
    goodSegmentCheck 98 32 68
      { lower := 28717, upper := 28769, witness := RowWitness.topPrime 28711 } = true := by
  exact good_top_prime_checked (i := 98) (r := 32) (s := 68) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row098_good186_checked :
    goodSegmentCheck 98 32 68
      { lower := 29791, upper := 29865, witness := RowWitness.topPrime 29789 } = true := by
  exact good_top_prime_checked (i := 98) (r := 32) (s := 68) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row098_good187_checked :
    goodSegmentCheck 98 32 68
      { lower := 30258, upper := 30343, witness := RowWitness.topPrime 30253 } = true := by
  exact good_top_prime_checked (i := 98) (r := 32) (s := 68) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row098_good188_checked :
    goodSegmentCheck 98 32 68
      { lower := 30926, upper := 30996, witness := RowWitness.topPrime 30911 } = true := by
  exact good_top_prime_checked (i := 98) (r := 32) (s := 68) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row098_good189_checked :
    goodSegmentCheck 98 32 68
      { lower := 31250, upper := 31302, witness := RowWitness.topPrime 31249 } = true := by
  exact good_top_prime_checked (i := 98) (r := 32) (s := 68) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row098_good190_checked :
    goodSegmentCheck 98 32 68
      { lower := 31329, upper := 31347, witness := RowWitness.topPrime 31327 } = true := by
  exact good_top_prime_checked (i := 98) (r := 32) (s := 68) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row098_good191_checked :
    goodSegmentCheck 98 32 68
      { lower := 31423, upper := 31426, witness := RowWitness.topPrime 31397 } = true := by
  exact good_top_prime_checked (i := 98) (r := 32) (s := 68) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row098_good176_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row098_good177_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row098_good178_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row098_good179_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row098_good180_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row098_good181_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row098_good182_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row098_good183_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row098_good184_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row098_good185_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row098_good186_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row098_good187_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row098_good188_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row098_good189_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row098_good190_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row098_good191_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row098_good192_checked :
    goodSegmentCheck 98 32 68
      { lower := 31433, upper := 31494, witness := RowWitness.topPrime 31397 } = true := by
  exact good_top_prime_checked (i := 98) (r := 32) (s := 68) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row098_good193_checked :
    goodSegmentCheck 98 32 68
      { lower := 31495, upper := 31520, witness := RowWitness.topPrime 31489 } = true := by
  exact good_top_prime_checked (i := 98) (r := 32) (s := 68) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row098_good194_checked :
    goodSegmentCheck 98 32 68
      { lower := 32805, upper := 32865, witness := RowWitness.topPrime 32803 } = true := by
  exact good_top_prime_checked (i := 98) (r := 32) (s := 68) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row098_good195_checked :
    goodSegmentCheck 98 32 68
      { lower := 34375, upper := 34466, witness := RowWitness.topPrime 34369 } = true := by
  exact good_top_prime_checked (i := 98) (r := 32) (s := 68) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row098_good196_checked :
    goodSegmentCheck 98 32 68
      { lower := 34467, upper := 34488, witness := RowWitness.topPrime 34457 } = true := by
  exact good_top_prime_checked (i := 98) (r := 32) (s := 68) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row098_good197_checked :
    goodSegmentCheck 98 32 68
      { lower := 35344, upper := 35384, witness := RowWitness.topPrime 35339 } = true := by
  exact good_top_prime_checked (i := 98) (r := 32) (s := 68) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row098_good198_checked :
    goodSegmentCheck 98 32 68
      { lower := 36517, upper := 36594, witness := RowWitness.topPrime 36497 } = true := by
  exact good_top_prime_checked (i := 98) (r := 32) (s := 68) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row098_good199_checked :
    goodSegmentCheck 98 32 68
      { lower := 36595, upper := 36598, witness := RowWitness.topPrime 36587 } = true := by
  exact good_top_prime_checked (i := 98) (r := 32) (s := 68) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row098_good200_checked :
    goodSegmentCheck 98 32 68
      { lower := 37210, upper := 37276, witness := RowWitness.topPrime 37201 } = true := by
  exact good_top_prime_checked (i := 98) (r := 32) (s := 68) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row098_good201_checked :
    goodSegmentCheck 98 32 68
      { lower := 37303, upper := 37307, witness := RowWitness.topPrime 37277 } = true := by
  exact good_top_prime_checked (i := 98) (r := 32) (s := 68) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row098_good202_checked :
    goodSegmentCheck 98 32 68
      { lower := 37349, upper := 37400, witness := RowWitness.topPrime 37339 } = true := by
  exact good_top_prime_checked (i := 98) (r := 32) (s := 68) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row098_good203_checked :
    goodSegmentCheck 98 32 68
      { lower := 37446, upper := 37446, witness := RowWitness.topPrime 37441 } = true := by
  exact good_top_prime_checked (i := 98) (r := 32) (s := 68) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row098_good204_checked :
    goodSegmentCheck 98 32 68
      { lower := 37500, upper := 37543, witness := RowWitness.topPrime 37493 } = true := by
  exact good_top_prime_checked (i := 98) (r := 32) (s := 68) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row098_good205_checked :
    goodSegmentCheck 98 32 68
      { lower := 37553, upper := 37597, witness := RowWitness.topPrime 37549 } = true := by
  exact good_top_prime_checked (i := 98) (r := 32) (s := 68) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row098_good206_checked :
    goodSegmentCheck 98 32 68
      { lower := 37636, upper := 37650, witness := RowWitness.topPrime 37633 } = true := by
  exact good_top_prime_checked (i := 98) (r := 32) (s := 68) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row098_good207_checked :
    goodSegmentCheck 98 32 68
      { lower := 39326, upper := 39420, witness := RowWitness.topPrime 39323 } = true := by
  exact good_top_prime_checked (i := 98) (r := 32) (s := 68) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row098_good192_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row098_good193_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row098_good194_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row098_good195_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row098_good196_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row098_good197_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row098_good198_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row098_good199_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row098_good200_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row098_good201_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row098_good202_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row098_good203_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row098_good204_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row098_good205_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row098_good206_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row098_good207_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row098_good208_checked :
    goodSegmentCheck 98 32 68
      { lower := 39421, upper := 39423, witness := RowWitness.topPrime 39419 } = true := by
  exact good_top_prime_checked (i := 98) (r := 32) (s := 68) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row098_good209_checked :
    goodSegmentCheck 98 32 68
      { lower := 40401, upper := 40425, witness := RowWitness.topPrime 40387 } = true := by
  exact good_top_prime_checked (i := 98) (r := 32) (s := 68) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row098_good210_checked :
    goodSegmentCheck 98 32 68
      { lower := 40960, upper := 41028, witness := RowWitness.topPrime 40949 } = true := by
  exact good_top_prime_checked (i := 98) (r := 32) (s := 68) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row098_good211_checked :
    goodSegmentCheck 98 32 68
      { lower := 43750, upper := 43784, witness := RowWitness.topPrime 43721 } = true := by
  exact good_top_prime_checked (i := 98) (r := 32) (s := 68) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row098_good212_checked :
    goodSegmentCheck 98 32 68
      { lower := 48013, upper := 48058, witness := RowWitness.topPrime 47981 } = true := by
  exact good_top_prime_checked (i := 98) (r := 32) (s := 68) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row098_good213_checked :
    goodSegmentCheck 98 32 68
      { lower := 48734, upper := 48765, witness := RowWitness.topPrime 48733 } = true := by
  exact good_top_prime_checked (i := 98) (r := 32) (s := 68) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row098_good214_checked :
    goodSegmentCheck 98 32 68
      { lower := 48778, upper := 48831, witness := RowWitness.topPrime 48767 } = true := by
  exact good_top_prime_checked (i := 98) (r := 32) (s := 68) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row098_good215_checked :
    goodSegmentCheck 98 32 68
      { lower := 49152, upper := 49227, witness := RowWitness.topPrime 49139 } = true := by
  exact good_top_prime_checked (i := 98) (r := 32) (s := 68) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row098_good216_checked :
    goodSegmentCheck 98 32 68
      { lower := 55451, upper := 55538, witness := RowWitness.topPrime 55441 } = true := by
  exact good_top_prime_checked (i := 98) (r := 32) (s := 68) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row098_good217_checked :
    goodSegmentCheck 98 32 68
      { lower := 55539, upper := 55544, witness := RowWitness.topPrime 55529 } = true := by
  exact good_top_prime_checked (i := 98) (r := 32) (s := 68) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row098_good218_checked :
    goodSegmentCheck 98 32 68
      { lower := 58619, upper := 58661, witness := RowWitness.topPrime 58613 } = true := by
  exact good_top_prime_checked (i := 98) (r := 32) (s := 68) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row098_good219_checked :
    goodSegmentCheck 98 32 68
      { lower := 59049, upper := 59053, witness := RowWitness.topPrime 59029 } = true := by
  exact good_top_prime_checked (i := 98) (r := 32) (s := 68) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row098_good220_checked :
    goodSegmentCheck 98 32 68
      { lower := 62500, upper := 62507, witness := RowWitness.topPrime 62497 } = true := by
  exact good_top_prime_checked (i := 98) (r := 32) (s := 68) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row098_good221_checked :
    goodSegmentCheck 98 32 68
      { lower := 63948, upper := 63966, witness := RowWitness.topPrime 63929 } = true := by
  exact good_top_prime_checked (i := 98) (r := 32) (s := 68) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row098_good222_checked :
    goodSegmentCheck 98 32 68
      { lower := 65536, upper := 65618, witness := RowWitness.topPrime 65521 } = true := by
  exact good_top_prime_checked (i := 98) (r := 32) (s := 68) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row098_good223_checked :
    goodSegmentCheck 98 32 68
      { lower := 65619, upper := 65633, witness := RowWitness.topPrime 65617 } = true := by
  exact good_top_prime_checked (i := 98) (r := 32) (s := 68) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row098_good208_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row098_good209_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row098_good210_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row098_good211_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row098_good212_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row098_good213_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row098_good214_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row098_good215_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row098_good216_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row098_good217_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row098_good218_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row098_good219_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row098_good220_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row098_good221_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row098_good222_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row098_good223_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row098_good224_checked :
    goodSegmentCheck 98 32 68
      { lower := 68651, upper := 68687, witness := RowWitness.topPrime 68639 } = true := by
  exact good_top_prime_checked (i := 98) (r := 32) (s := 68) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row098_good225_checked :
    goodSegmentCheck 98 32 68
      { lower := 68921, upper := 68987, witness := RowWitness.topPrime 68917 } = true := by
  exact good_top_prime_checked (i := 98) (r := 32) (s := 68) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row098_good226_checked :
    goodSegmentCheck 98 32 68
      { lower := 73205, upper := 73264, witness := RowWitness.topPrime 73189 } = true := by
  exact good_top_prime_checked (i := 98) (r := 32) (s := 68) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row098_good227_checked :
    goodSegmentCheck 98 32 68
      { lower := 137842, upper := 137878, witness := RowWitness.topPrime 137831 } = true := by
  exact good_top_prime_checked (i := 98) (r := 32) (s := 68) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row098_good228_checked :
    goodSegmentCheck 98 32 68
      { lower := 146410, upper := 146431, witness := RowWitness.topPrime 146407 } = true := by
  exact good_top_prime_checked (i := 98) (r := 32) (s := 68) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row098_good229_checked :
    goodSegmentCheck 98 32 68
      { lower := 148955, upper := 148974, witness := RowWitness.topPrime 148949 } = true := by
  exact good_top_prime_checked (i := 98) (r := 32) (s := 68) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row098_good224_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row098_good225_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row098_good226_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row098_good227_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row098_good228_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row098_good229_checked

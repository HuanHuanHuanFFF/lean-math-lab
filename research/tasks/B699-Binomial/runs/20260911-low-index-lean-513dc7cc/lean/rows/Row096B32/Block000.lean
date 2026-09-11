import research.tasks.«B699-Binomial».runs.«20260909-low-index-structure-b41a5a63».lean.FiniteCover
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.WitnessBridge
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.LayerParts
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.PairChunks

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row096_height : HeightCertificateDatum := { i := 96, r := 31, s := 67, n0Power10 := 8 }

def row096_goods : List GoodSegment := [
  { lower := 194, upper := 288, witness := RowWitness.topPrime 193 },
  { lower := 289, upper := 378, witness := RowWitness.topPrime 283 },
  { lower := 379, upper := 474, witness := RowWitness.topPrime 379 },
  { lower := 475, upper := 562, witness := RowWitness.topPrime 467 },
  { lower := 563, upper := 658, witness := RowWitness.topPrime 563 },
  { lower := 659, upper := 754, witness := RowWitness.topPrime 659 },
  { lower := 755, upper := 846, witness := RowWitness.topPrime 751 },
  { lower := 847, upper := 934, witness := RowWitness.topPrime 839 },
  { lower := 935, upper := 1024, witness := RowWitness.topPrime 929 },
  { lower := 1025, upper := 1116, witness := RowWitness.topPrime 1021 },
  { lower := 1117, upper := 1212, witness := RowWitness.topPrime 1117 },
  { lower := 1213, upper := 1308, witness := RowWitness.topPrime 1213 },
  { lower := 1309, upper := 1402, witness := RowWitness.topPrime 1307 },
  { lower := 1403, upper := 1494, witness := RowWitness.topPrime 1399 },
  { lower := 1495, upper := 1588, witness := RowWitness.topPrime 1493 },
  { lower := 1589, upper := 1678, witness := RowWitness.topPrime 1583 },
  { lower := 1679, upper := 1764, witness := RowWitness.topPrime 1669 },
  { lower := 1765, upper := 1854, witness := RowWitness.topPrime 1759 },
  { lower := 1855, upper := 1942, witness := RowWitness.topPrime 1847 },
  { lower := 1943, upper := 2028, witness := RowWitness.topPrime 1933 },
  { lower := 2029, upper := 2124, witness := RowWitness.topPrime 2029 },
  { lower := 2125, upper := 2208, witness := RowWitness.topPrime 2113 },
  { lower := 2209, upper := 2302, witness := RowWitness.topPrime 2207 },
  { lower := 2303, upper := 2392, witness := RowWitness.topPrime 2297 },
  { lower := 2393, upper := 2488, witness := RowWitness.topPrime 2393 },
  { lower := 2489, upper := 2572, witness := RowWitness.topPrime 2477 },
  { lower := 2573, upper := 2652, witness := RowWitness.topPrime 2557 },
  { lower := 2653, upper := 2742, witness := RowWitness.topPrime 2647 },
  { lower := 2743, upper := 2836, witness := RowWitness.topPrime 2741 },
  { lower := 2837, upper := 2932, witness := RowWitness.topPrime 2837 },
  { lower := 2933, upper := 3022, witness := RowWitness.topPrime 2927 },
  { lower := 3023, upper := 3118, witness := RowWitness.topPrime 3023 },
  { lower := 3119, upper := 3214, witness := RowWitness.topPrime 3119 },
  { lower := 3215, upper := 3304, witness := RowWitness.topPrime 3209 },
  { lower := 3305, upper := 3396, witness := RowWitness.topPrime 3301 },
  { lower := 3397, upper := 3486, witness := RowWitness.topPrime 3391 },
  { lower := 3487, upper := 3564, witness := RowWitness.topPrime 3469 },
  { lower := 3565, upper := 3654, witness := RowWitness.topPrime 3559 },
  { lower := 3655, upper := 3738, witness := RowWitness.topPrime 3643 },
  { lower := 3739, upper := 3834, witness := RowWitness.topPrime 3739 },
  { lower := 3835, upper := 3928, witness := RowWitness.topPrime 3833 },
  { lower := 3929, upper := 4024, witness := RowWitness.topPrime 3929 },
  { lower := 4025, upper := 4116, witness := RowWitness.topPrime 4021 },
  { lower := 4117, upper := 4206, witness := RowWitness.topPrime 4111 },
  { lower := 4207, upper := 4296, witness := RowWitness.topPrime 4201 },
  { lower := 4297, upper := 4392, witness := RowWitness.topPrime 4297 },
  { lower := 4393, upper := 4486, witness := RowWitness.topPrime 4391 },
  { lower := 4487, upper := 4578, witness := RowWitness.topPrime 4483 },
  { lower := 4579, upper := 4662, witness := RowWitness.topPrime 4567 },
  { lower := 4663, upper := 4758, witness := RowWitness.topPrime 4663 },
  { lower := 4759, upper := 4854, witness := RowWitness.topPrime 4759 },
  { lower := 4855, upper := 4926, witness := RowWitness.topPrime 4831 },
  { lower := 4927, upper := 5014, witness := RowWitness.topPrime 4919 },
  { lower := 5015, upper := 5106, witness := RowWitness.topPrime 5011 },
  { lower := 5107, upper := 5202, witness := RowWitness.topPrime 5107 },
  { lower := 5203, upper := 5292, witness := RowWitness.topPrime 5197 },
  { lower := 5293, upper := 5376, witness := RowWitness.topPrime 5281 },
  { lower := 5377, upper := 5446, witness := RowWitness.topPrime 5351 },
  { lower := 5447, upper := 5538, witness := RowWitness.topPrime 5443 },
  { lower := 5539, upper := 5626, witness := RowWitness.topPrime 5531 },
  { lower := 5627, upper := 5718, witness := RowWitness.topPrime 5623 },
  { lower := 5719, upper := 5812, witness := RowWitness.topPrime 5717 },
  { lower := 5813, upper := 5908, witness := RowWitness.topPrime 5813 },
  { lower := 5909, upper := 5998, witness := RowWitness.topPrime 5903 },
  { lower := 5999, upper := 6082, witness := RowWitness.topPrime 5987 },
  { lower := 6083, upper := 6174, witness := RowWitness.topPrime 6079 },
  { lower := 6175, upper := 6268, witness := RowWitness.topPrime 6173 },
  { lower := 6269, upper := 6364, witness := RowWitness.topPrime 6269 },
  { lower := 6365, upper := 6456, witness := RowWitness.topPrime 6361 },
  { lower := 6457, upper := 6546, witness := RowWitness.topPrime 6451 },
  { lower := 6547, upper := 6642, witness := RowWitness.topPrime 6547 },
  { lower := 6643, upper := 6732, witness := RowWitness.topPrime 6637 },
  { lower := 6733, upper := 6828, witness := RowWitness.topPrime 6733 },
  { lower := 6829, upper := 6924, witness := RowWitness.topPrime 6829 },
  { lower := 6925, upper := 7012, witness := RowWitness.topPrime 6917 },
  { lower := 7013, upper := 7108, witness := RowWitness.topPrime 7013 },
  { lower := 7109, upper := 7204, witness := RowWitness.topPrime 7109 },
  { lower := 7205, upper := 7288, witness := RowWitness.topPrime 7193 },
  { lower := 7289, upper := 7378, witness := RowWitness.topPrime 7283 },
  { lower := 7379, upper := 7464, witness := RowWitness.topPrime 7369 },
  { lower := 7465, upper := 7554, witness := RowWitness.topPrime 7459 },
  { lower := 7555, upper := 7644, witness := RowWitness.topPrime 7549 },
  { lower := 7645, upper := 7738, witness := RowWitness.topPrime 7643 },
  { lower := 7739, upper := 7822, witness := RowWitness.topPrime 7727 },
  { lower := 7823, upper := 7918, witness := RowWitness.topPrime 7823 },
  { lower := 7919, upper := 8014, witness := RowWitness.topPrime 7919 },
  { lower := 8015, upper := 8106, witness := RowWitness.topPrime 8011 },
  { lower := 8107, upper := 8196, witness := RowWitness.topPrime 8101 },
  { lower := 8197, upper := 8286, witness := RowWitness.topPrime 8191 },
  { lower := 8287, upper := 8382, witness := RowWitness.topPrime 8287 },
  { lower := 8383, upper := 8472, witness := RowWitness.topPrime 8377 },
  { lower := 8473, upper := 8562, witness := RowWitness.topPrime 8467 },
  { lower := 8563, upper := 8658, witness := RowWitness.topPrime 8563 },
  { lower := 8659, upper := 8742, witness := RowWitness.topPrime 8647 },
  { lower := 8743, upper := 8836, witness := RowWitness.topPrime 8741 },
  { lower := 8837, upper := 8932, witness := RowWitness.topPrime 8837 },
  { lower := 8933, upper := 9028, witness := RowWitness.topPrime 8933 },
  { lower := 9029, upper := 9119, witness := RowWitness.topPrime 9029 },
  { lower := 9251, upper := 9336, witness := RowWitness.topPrime 9241 },
  { lower := 9337, upper := 9346, witness := RowWitness.topPrime 9337 },
  { lower := 9375, upper := 9412, witness := RowWitness.topPrime 9371 },
  { lower := 9583, upper := 9646, witness := RowWitness.topPrime 9551 },
  { lower := 9647, upper := 9699, witness := RowWitness.topPrime 9643 },
  { lower := 10051, upper := 10134, witness := RowWitness.topPrime 10039 },
  { lower := 10135, upper := 10181, witness := RowWitness.topPrime 10133 },
  { lower := 10625, upper := 10708, witness := RowWitness.topPrime 10613 },
  { lower := 10709, upper := 10743, witness := RowWitness.topPrime 10709 },
  { lower := 10935, upper := 11004, witness := RowWitness.topPrime 10909 },
  { lower := 11005, upper := 11080, witness := RowWitness.topPrime 11003 },
  { lower := 11094, upper := 11140, witness := RowWitness.topPrime 11093 },
  { lower := 11163, upper := 11189, witness := RowWitness.topPrime 11161 },
  { lower := 11236, upper := 11308, witness := RowWitness.topPrime 11213 },
  { lower := 11309, upper := 11331, witness := RowWitness.topPrime 11299 },
  { lower := 11774, upper := 11838, witness := RowWitness.topPrime 11743 },
  { lower := 11839, upper := 11862, witness := RowWitness.topPrime 11839 },
  { lower := 12005, upper := 12074, witness := RowWitness.topPrime 11987 },
  { lower := 12493, upper := 12586, witness := RowWitness.topPrime 12491 },
  { lower := 12587, upper := 12588, witness := RowWitness.topPrime 12583 },
  { lower := 13182, upper := 13217, witness := RowWitness.topPrime 13177 },
  { lower := 13254, upper := 13277, witness := RowWitness.topPrime 13249 },
  { lower := 13310, upper := 13349, witness := RowWitness.topPrime 13309 },
  { lower := 13454, upper := 13546, witness := RowWitness.topPrime 13451 },
  { lower := 13547, upper := 13551, witness := RowWitness.topPrime 13537 },
  { lower := 13718, upper := 13806, witness := RowWitness.topPrime 13711 },
  { lower := 13807, upper := 13813, witness := RowWitness.topPrime 13807 },
  { lower := 14415, upper := 14501, witness := RowWitness.topPrime 14411 },
  { lower := 14792, upper := 14834, witness := RowWitness.topPrime 14783 },
  { lower := 14884, upper := 14887, witness := RowWitness.topPrime 14879 },
  { lower := 15123, upper := 15216, witness := RowWitness.topPrime 15121 },
  { lower := 15217, upper := 15224, witness := RowWitness.topPrime 15217 },
  { lower := 15379, upper := 15472, witness := RowWitness.topPrime 15377 },
  { lower := 15473, upper := 15474, witness := RowWitness.topPrime 15473 },
  { lower := 15979, upper := 16068, witness := RowWitness.topPrime 15973 },
  { lower := 16069, upper := 16074, witness := RowWitness.topPrime 16069 },
  { lower := 16428, upper := 16432, witness := RowWitness.topPrime 16427 },
  { lower := 16810, upper := 16882, witness := RowWitness.topPrime 16787 },
  { lower := 16883, upper := 16905, witness := RowWitness.topPrime 16883 },
  { lower := 17303, upper := 17393, witness := RowWitness.topPrime 17299 },
  { lower := 18491, upper := 18576, witness := RowWitness.topPrime 18481 },
  { lower := 18577, upper := 18585, witness := RowWitness.topPrime 18553 },
  { lower := 18634, upper := 18700, witness := RowWitness.topPrime 18617 },
  { lower := 18723, upper := 18729, witness := RowWitness.topPrime 18719 },
  { lower := 18750, upper := 18818, witness := RowWitness.topPrime 18749 },
  { lower := 19208, upper := 19261, witness := RowWitness.topPrime 19207 },
  { lower := 19663, upper := 19756, witness := RowWitness.topPrime 19661 },
  { lower := 19757, upper := 19758, witness := RowWitness.topPrime 19753 },
  { lower := 19773, upper := 19778, witness := RowWitness.topPrime 19763 },
  { lower := 19965, upper := 19976, witness := RowWitness.topPrime 19963 },
  { lower := 20172, upper := 20256, witness := RowWitness.topPrime 20161 },
  { lower := 20257, upper := 20259, witness := RowWitness.topPrime 20249 },
  { lower := 20577, upper := 20630, witness := RowWitness.topPrime 20563 },
  { lower := 20667, upper := 20672, witness := RowWitness.topPrime 20663 },
  { lower := 21316, upper := 21391, witness := RowWitness.topPrime 21313 },
  { lower := 21875, upper := 21966, witness := RowWitness.topPrime 21871 },
  { lower := 21967, upper := 21999, witness := RowWitness.topPrime 21961 },
  { lower := 22472, upper := 22540, witness := RowWitness.topPrime 22469 },
  { lower := 24037, upper := 24105, witness := RowWitness.topPrime 24029 },
  { lower := 24334, upper := 24424, witness := RowWitness.topPrime 24329 },
  { lower := 24425, upper := 24462, witness := RowWitness.topPrime 24421 },
  { lower := 25000, upper := 25059, witness := RowWitness.topPrime 24989 },
  { lower := 25215, upper := 25284, witness := RowWitness.topPrime 25189 },
  { lower := 25285, upper := 25310, witness := RowWitness.topPrime 25261 },
  { lower := 26411, upper := 26459, witness := RowWitness.topPrime 26407 },
  { lower := 26934, upper := 26991, witness := RowWitness.topPrime 26927 },
  { lower := 28125, upper := 28185, witness := RowWitness.topPrime 28123 },
  { lower := 28812, upper := 28812, witness := RowWitness.topPrime 28807 },
  { lower := 29791, upper := 29863, witness := RowWitness.topPrime 29789 },
  { lower := 30926, upper := 30994, witness := RowWitness.topPrime 30911 },
  { lower := 31213, upper := 31288, witness := RowWitness.topPrime 31193 },
  { lower := 31289, upper := 31308, witness := RowWitness.topPrime 31277 },
  { lower := 31329, upper := 31345, witness := RowWitness.topPrime 31327 },
  { lower := 31423, upper := 31424, witness := RowWitness.topPrime 31397 },
  { lower := 33708, upper := 33709, witness := RowWitness.topPrime 33703 },
  { lower := 34375, upper := 34464, witness := RowWitness.topPrime 34369 },
  { lower := 34465, upper := 34486, witness := RowWitness.topPrime 34457 },
  { lower := 35344, upper := 35382, witness := RowWitness.topPrime 35339 },
  { lower := 37303, upper := 37305, witness := RowWitness.topPrime 37277 },
  { lower := 37500, upper := 37541, witness := RowWitness.topPrime 37493 },
  { lower := 39366, upper := 39399, witness := RowWitness.topPrime 39359 },
  { lower := 40401, upper := 40423, witness := RowWitness.topPrime 40387 },
  { lower := 48013, upper := 48056, witness := RowWitness.topPrime 47981 },
  { lower := 50421, upper := 50505, witness := RowWitness.topPrime 50417 },
  { lower := 55451, upper := 55536, witness := RowWitness.topPrime 55441 },
  { lower := 55537, upper := 55542, witness := RowWitness.topPrime 55529 },
  { lower := 58619, upper := 58659, witness := RowWitness.topPrime 58613 },
  { lower := 59049, upper := 59051, witness := RowWitness.topPrime 59029 },
  { lower := 62500, upper := 62505, witness := RowWitness.topPrime 62497 },
  { lower := 68651, upper := 68685, witness := RowWitness.topPrime 68639 },
  { lower := 68921, upper := 68985, witness := RowWitness.topPrime 68917 },
  { lower := 73205, upper := 73262, witness := RowWitness.topPrime 73189 },
  { lower := 148955, upper := 148972, witness := RowWitness.topPrime 148949 }
]

def row096_layers : List CoverLayer := [
  { lower := 9120, upper := 18240, M := 19 },
  { lower := 18240, upper := 36480, M := 16 },
  { lower := 36480, upper := 72960, M := 12 },
  { lower := 72960, upper := 145920, M := 10 },
  { lower := 145920, upper := 291840, M := 8 },
  { lower := 291840, upper := 583680, M := 7 },
  { lower := 583680, upper := 1167360, M := 5 },
  { lower := 1167360, upper := 2334720, M := 4 },
  { lower := 2334720, upper := 4669440, M := 4 },
  { lower := 4669440, upper := 9338880, M := 3 },
  { lower := 9338880, upper := 18677760, M := 2 },
  { lower := 18677760, upper := 37355520, M := 2 },
  { lower := 37355520, upper := 74711040, M := 2 },
  { lower := 74711040, upper := 100000000, M := 1 }
]

def row096 : FiniteCoverRow := {
  height := row096_height,
  goods := row096_goods,
  layers := row096_layers
}


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row096

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row096_good000_checked :
    goodSegmentCheck 96 31 67
      { lower := 194, upper := 288, witness := RowWitness.topPrime 193 } = true := by
  exact good_top_prime_checked (i := 96) (r := 31) (s := 67) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row096_good001_checked :
    goodSegmentCheck 96 31 67
      { lower := 289, upper := 378, witness := RowWitness.topPrime 283 } = true := by
  exact good_top_prime_checked (i := 96) (r := 31) (s := 67) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row096_good002_checked :
    goodSegmentCheck 96 31 67
      { lower := 379, upper := 474, witness := RowWitness.topPrime 379 } = true := by
  exact good_top_prime_checked (i := 96) (r := 31) (s := 67) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row096_good003_checked :
    goodSegmentCheck 96 31 67
      { lower := 475, upper := 562, witness := RowWitness.topPrime 467 } = true := by
  exact good_top_prime_checked (i := 96) (r := 31) (s := 67) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row096_good004_checked :
    goodSegmentCheck 96 31 67
      { lower := 563, upper := 658, witness := RowWitness.topPrime 563 } = true := by
  exact good_top_prime_checked (i := 96) (r := 31) (s := 67) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row096_good005_checked :
    goodSegmentCheck 96 31 67
      { lower := 659, upper := 754, witness := RowWitness.topPrime 659 } = true := by
  exact good_top_prime_checked (i := 96) (r := 31) (s := 67) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row096_good006_checked :
    goodSegmentCheck 96 31 67
      { lower := 755, upper := 846, witness := RowWitness.topPrime 751 } = true := by
  exact good_top_prime_checked (i := 96) (r := 31) (s := 67) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row096_good007_checked :
    goodSegmentCheck 96 31 67
      { lower := 847, upper := 934, witness := RowWitness.topPrime 839 } = true := by
  exact good_top_prime_checked (i := 96) (r := 31) (s := 67) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row096_good008_checked :
    goodSegmentCheck 96 31 67
      { lower := 935, upper := 1024, witness := RowWitness.topPrime 929 } = true := by
  exact good_top_prime_checked (i := 96) (r := 31) (s := 67) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row096_good009_checked :
    goodSegmentCheck 96 31 67
      { lower := 1025, upper := 1116, witness := RowWitness.topPrime 1021 } = true := by
  exact good_top_prime_checked (i := 96) (r := 31) (s := 67) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row096_good010_checked :
    goodSegmentCheck 96 31 67
      { lower := 1117, upper := 1212, witness := RowWitness.topPrime 1117 } = true := by
  exact good_top_prime_checked (i := 96) (r := 31) (s := 67) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row096_good011_checked :
    goodSegmentCheck 96 31 67
      { lower := 1213, upper := 1308, witness := RowWitness.topPrime 1213 } = true := by
  exact good_top_prime_checked (i := 96) (r := 31) (s := 67) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row096_good012_checked :
    goodSegmentCheck 96 31 67
      { lower := 1309, upper := 1402, witness := RowWitness.topPrime 1307 } = true := by
  exact good_top_prime_checked (i := 96) (r := 31) (s := 67) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row096_good013_checked :
    goodSegmentCheck 96 31 67
      { lower := 1403, upper := 1494, witness := RowWitness.topPrime 1399 } = true := by
  exact good_top_prime_checked (i := 96) (r := 31) (s := 67) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row096_good014_checked :
    goodSegmentCheck 96 31 67
      { lower := 1495, upper := 1588, witness := RowWitness.topPrime 1493 } = true := by
  exact good_top_prime_checked (i := 96) (r := 31) (s := 67) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row096_good015_checked :
    goodSegmentCheck 96 31 67
      { lower := 1589, upper := 1678, witness := RowWitness.topPrime 1583 } = true := by
  exact good_top_prime_checked (i := 96) (r := 31) (s := 67) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row096_good000_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row096_good001_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row096_good002_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row096_good003_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row096_good004_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row096_good005_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row096_good006_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row096_good007_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row096_good008_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row096_good009_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row096_good010_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row096_good011_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row096_good012_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row096_good013_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row096_good014_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row096_good015_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row096_good016_checked :
    goodSegmentCheck 96 31 67
      { lower := 1679, upper := 1764, witness := RowWitness.topPrime 1669 } = true := by
  exact good_top_prime_checked (i := 96) (r := 31) (s := 67) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row096_good017_checked :
    goodSegmentCheck 96 31 67
      { lower := 1765, upper := 1854, witness := RowWitness.topPrime 1759 } = true := by
  exact good_top_prime_checked (i := 96) (r := 31) (s := 67) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row096_good018_checked :
    goodSegmentCheck 96 31 67
      { lower := 1855, upper := 1942, witness := RowWitness.topPrime 1847 } = true := by
  exact good_top_prime_checked (i := 96) (r := 31) (s := 67) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row096_good019_checked :
    goodSegmentCheck 96 31 67
      { lower := 1943, upper := 2028, witness := RowWitness.topPrime 1933 } = true := by
  exact good_top_prime_checked (i := 96) (r := 31) (s := 67) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row096_good020_checked :
    goodSegmentCheck 96 31 67
      { lower := 2029, upper := 2124, witness := RowWitness.topPrime 2029 } = true := by
  exact good_top_prime_checked (i := 96) (r := 31) (s := 67) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row096_good021_checked :
    goodSegmentCheck 96 31 67
      { lower := 2125, upper := 2208, witness := RowWitness.topPrime 2113 } = true := by
  exact good_top_prime_checked (i := 96) (r := 31) (s := 67) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row096_good022_checked :
    goodSegmentCheck 96 31 67
      { lower := 2209, upper := 2302, witness := RowWitness.topPrime 2207 } = true := by
  exact good_top_prime_checked (i := 96) (r := 31) (s := 67) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row096_good023_checked :
    goodSegmentCheck 96 31 67
      { lower := 2303, upper := 2392, witness := RowWitness.topPrime 2297 } = true := by
  exact good_top_prime_checked (i := 96) (r := 31) (s := 67) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row096_good024_checked :
    goodSegmentCheck 96 31 67
      { lower := 2393, upper := 2488, witness := RowWitness.topPrime 2393 } = true := by
  exact good_top_prime_checked (i := 96) (r := 31) (s := 67) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row096_good025_checked :
    goodSegmentCheck 96 31 67
      { lower := 2489, upper := 2572, witness := RowWitness.topPrime 2477 } = true := by
  exact good_top_prime_checked (i := 96) (r := 31) (s := 67) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row096_good026_checked :
    goodSegmentCheck 96 31 67
      { lower := 2573, upper := 2652, witness := RowWitness.topPrime 2557 } = true := by
  exact good_top_prime_checked (i := 96) (r := 31) (s := 67) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row096_good027_checked :
    goodSegmentCheck 96 31 67
      { lower := 2653, upper := 2742, witness := RowWitness.topPrime 2647 } = true := by
  exact good_top_prime_checked (i := 96) (r := 31) (s := 67) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row096_good028_checked :
    goodSegmentCheck 96 31 67
      { lower := 2743, upper := 2836, witness := RowWitness.topPrime 2741 } = true := by
  exact good_top_prime_checked (i := 96) (r := 31) (s := 67) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row096_good029_checked :
    goodSegmentCheck 96 31 67
      { lower := 2837, upper := 2932, witness := RowWitness.topPrime 2837 } = true := by
  exact good_top_prime_checked (i := 96) (r := 31) (s := 67) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row096_good030_checked :
    goodSegmentCheck 96 31 67
      { lower := 2933, upper := 3022, witness := RowWitness.topPrime 2927 } = true := by
  exact good_top_prime_checked (i := 96) (r := 31) (s := 67) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row096_good031_checked :
    goodSegmentCheck 96 31 67
      { lower := 3023, upper := 3118, witness := RowWitness.topPrime 3023 } = true := by
  exact good_top_prime_checked (i := 96) (r := 31) (s := 67) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row096_good016_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row096_good017_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row096_good018_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row096_good019_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row096_good020_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row096_good021_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row096_good022_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row096_good023_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row096_good024_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row096_good025_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row096_good026_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row096_good027_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row096_good028_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row096_good029_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row096_good030_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row096_good031_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row096_good032_checked :
    goodSegmentCheck 96 31 67
      { lower := 3119, upper := 3214, witness := RowWitness.topPrime 3119 } = true := by
  exact good_top_prime_checked (i := 96) (r := 31) (s := 67) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row096_good033_checked :
    goodSegmentCheck 96 31 67
      { lower := 3215, upper := 3304, witness := RowWitness.topPrime 3209 } = true := by
  exact good_top_prime_checked (i := 96) (r := 31) (s := 67) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row096_good034_checked :
    goodSegmentCheck 96 31 67
      { lower := 3305, upper := 3396, witness := RowWitness.topPrime 3301 } = true := by
  exact good_top_prime_checked (i := 96) (r := 31) (s := 67) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row096_good035_checked :
    goodSegmentCheck 96 31 67
      { lower := 3397, upper := 3486, witness := RowWitness.topPrime 3391 } = true := by
  exact good_top_prime_checked (i := 96) (r := 31) (s := 67) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row096_good036_checked :
    goodSegmentCheck 96 31 67
      { lower := 3487, upper := 3564, witness := RowWitness.topPrime 3469 } = true := by
  exact good_top_prime_checked (i := 96) (r := 31) (s := 67) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row096_good037_checked :
    goodSegmentCheck 96 31 67
      { lower := 3565, upper := 3654, witness := RowWitness.topPrime 3559 } = true := by
  exact good_top_prime_checked (i := 96) (r := 31) (s := 67) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row096_good038_checked :
    goodSegmentCheck 96 31 67
      { lower := 3655, upper := 3738, witness := RowWitness.topPrime 3643 } = true := by
  exact good_top_prime_checked (i := 96) (r := 31) (s := 67) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row096_good039_checked :
    goodSegmentCheck 96 31 67
      { lower := 3739, upper := 3834, witness := RowWitness.topPrime 3739 } = true := by
  exact good_top_prime_checked (i := 96) (r := 31) (s := 67) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row096_good040_checked :
    goodSegmentCheck 96 31 67
      { lower := 3835, upper := 3928, witness := RowWitness.topPrime 3833 } = true := by
  exact good_top_prime_checked (i := 96) (r := 31) (s := 67) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row096_good041_checked :
    goodSegmentCheck 96 31 67
      { lower := 3929, upper := 4024, witness := RowWitness.topPrime 3929 } = true := by
  exact good_top_prime_checked (i := 96) (r := 31) (s := 67) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row096_good042_checked :
    goodSegmentCheck 96 31 67
      { lower := 4025, upper := 4116, witness := RowWitness.topPrime 4021 } = true := by
  exact good_top_prime_checked (i := 96) (r := 31) (s := 67) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row096_good043_checked :
    goodSegmentCheck 96 31 67
      { lower := 4117, upper := 4206, witness := RowWitness.topPrime 4111 } = true := by
  exact good_top_prime_checked (i := 96) (r := 31) (s := 67) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row096_good044_checked :
    goodSegmentCheck 96 31 67
      { lower := 4207, upper := 4296, witness := RowWitness.topPrime 4201 } = true := by
  exact good_top_prime_checked (i := 96) (r := 31) (s := 67) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row096_good045_checked :
    goodSegmentCheck 96 31 67
      { lower := 4297, upper := 4392, witness := RowWitness.topPrime 4297 } = true := by
  exact good_top_prime_checked (i := 96) (r := 31) (s := 67) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row096_good046_checked :
    goodSegmentCheck 96 31 67
      { lower := 4393, upper := 4486, witness := RowWitness.topPrime 4391 } = true := by
  exact good_top_prime_checked (i := 96) (r := 31) (s := 67) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row096_good047_checked :
    goodSegmentCheck 96 31 67
      { lower := 4487, upper := 4578, witness := RowWitness.topPrime 4483 } = true := by
  exact good_top_prime_checked (i := 96) (r := 31) (s := 67) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row096_good032_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row096_good033_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row096_good034_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row096_good035_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row096_good036_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row096_good037_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row096_good038_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row096_good039_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row096_good040_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row096_good041_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row096_good042_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row096_good043_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row096_good044_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row096_good045_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row096_good046_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row096_good047_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row096_good048_checked :
    goodSegmentCheck 96 31 67
      { lower := 4579, upper := 4662, witness := RowWitness.topPrime 4567 } = true := by
  exact good_top_prime_checked (i := 96) (r := 31) (s := 67) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row096_good049_checked :
    goodSegmentCheck 96 31 67
      { lower := 4663, upper := 4758, witness := RowWitness.topPrime 4663 } = true := by
  exact good_top_prime_checked (i := 96) (r := 31) (s := 67) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row096_good050_checked :
    goodSegmentCheck 96 31 67
      { lower := 4759, upper := 4854, witness := RowWitness.topPrime 4759 } = true := by
  exact good_top_prime_checked (i := 96) (r := 31) (s := 67) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row096_good051_checked :
    goodSegmentCheck 96 31 67
      { lower := 4855, upper := 4926, witness := RowWitness.topPrime 4831 } = true := by
  exact good_top_prime_checked (i := 96) (r := 31) (s := 67) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row096_good052_checked :
    goodSegmentCheck 96 31 67
      { lower := 4927, upper := 5014, witness := RowWitness.topPrime 4919 } = true := by
  exact good_top_prime_checked (i := 96) (r := 31) (s := 67) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row096_good053_checked :
    goodSegmentCheck 96 31 67
      { lower := 5015, upper := 5106, witness := RowWitness.topPrime 5011 } = true := by
  exact good_top_prime_checked (i := 96) (r := 31) (s := 67) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row096_good054_checked :
    goodSegmentCheck 96 31 67
      { lower := 5107, upper := 5202, witness := RowWitness.topPrime 5107 } = true := by
  exact good_top_prime_checked (i := 96) (r := 31) (s := 67) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row096_good055_checked :
    goodSegmentCheck 96 31 67
      { lower := 5203, upper := 5292, witness := RowWitness.topPrime 5197 } = true := by
  exact good_top_prime_checked (i := 96) (r := 31) (s := 67) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row096_good056_checked :
    goodSegmentCheck 96 31 67
      { lower := 5293, upper := 5376, witness := RowWitness.topPrime 5281 } = true := by
  exact good_top_prime_checked (i := 96) (r := 31) (s := 67) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row096_good057_checked :
    goodSegmentCheck 96 31 67
      { lower := 5377, upper := 5446, witness := RowWitness.topPrime 5351 } = true := by
  exact good_top_prime_checked (i := 96) (r := 31) (s := 67) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row096_good058_checked :
    goodSegmentCheck 96 31 67
      { lower := 5447, upper := 5538, witness := RowWitness.topPrime 5443 } = true := by
  exact good_top_prime_checked (i := 96) (r := 31) (s := 67) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row096_good059_checked :
    goodSegmentCheck 96 31 67
      { lower := 5539, upper := 5626, witness := RowWitness.topPrime 5531 } = true := by
  exact good_top_prime_checked (i := 96) (r := 31) (s := 67) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row096_good060_checked :
    goodSegmentCheck 96 31 67
      { lower := 5627, upper := 5718, witness := RowWitness.topPrime 5623 } = true := by
  exact good_top_prime_checked (i := 96) (r := 31) (s := 67) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row096_good061_checked :
    goodSegmentCheck 96 31 67
      { lower := 5719, upper := 5812, witness := RowWitness.topPrime 5717 } = true := by
  exact good_top_prime_checked (i := 96) (r := 31) (s := 67) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row096_good062_checked :
    goodSegmentCheck 96 31 67
      { lower := 5813, upper := 5908, witness := RowWitness.topPrime 5813 } = true := by
  exact good_top_prime_checked (i := 96) (r := 31) (s := 67) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row096_good063_checked :
    goodSegmentCheck 96 31 67
      { lower := 5909, upper := 5998, witness := RowWitness.topPrime 5903 } = true := by
  exact good_top_prime_checked (i := 96) (r := 31) (s := 67) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row096_good048_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row096_good049_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row096_good050_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row096_good051_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row096_good052_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row096_good053_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row096_good054_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row096_good055_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row096_good056_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row096_good057_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row096_good058_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row096_good059_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row096_good060_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row096_good061_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row096_good062_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row096_good063_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row096_good064_checked :
    goodSegmentCheck 96 31 67
      { lower := 5999, upper := 6082, witness := RowWitness.topPrime 5987 } = true := by
  exact good_top_prime_checked (i := 96) (r := 31) (s := 67) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row096_good065_checked :
    goodSegmentCheck 96 31 67
      { lower := 6083, upper := 6174, witness := RowWitness.topPrime 6079 } = true := by
  exact good_top_prime_checked (i := 96) (r := 31) (s := 67) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row096_good066_checked :
    goodSegmentCheck 96 31 67
      { lower := 6175, upper := 6268, witness := RowWitness.topPrime 6173 } = true := by
  exact good_top_prime_checked (i := 96) (r := 31) (s := 67) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row096_good067_checked :
    goodSegmentCheck 96 31 67
      { lower := 6269, upper := 6364, witness := RowWitness.topPrime 6269 } = true := by
  exact good_top_prime_checked (i := 96) (r := 31) (s := 67) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row096_good068_checked :
    goodSegmentCheck 96 31 67
      { lower := 6365, upper := 6456, witness := RowWitness.topPrime 6361 } = true := by
  exact good_top_prime_checked (i := 96) (r := 31) (s := 67) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row096_good069_checked :
    goodSegmentCheck 96 31 67
      { lower := 6457, upper := 6546, witness := RowWitness.topPrime 6451 } = true := by
  exact good_top_prime_checked (i := 96) (r := 31) (s := 67) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row096_good070_checked :
    goodSegmentCheck 96 31 67
      { lower := 6547, upper := 6642, witness := RowWitness.topPrime 6547 } = true := by
  exact good_top_prime_checked (i := 96) (r := 31) (s := 67) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row096_good071_checked :
    goodSegmentCheck 96 31 67
      { lower := 6643, upper := 6732, witness := RowWitness.topPrime 6637 } = true := by
  exact good_top_prime_checked (i := 96) (r := 31) (s := 67) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row096_good072_checked :
    goodSegmentCheck 96 31 67
      { lower := 6733, upper := 6828, witness := RowWitness.topPrime 6733 } = true := by
  exact good_top_prime_checked (i := 96) (r := 31) (s := 67) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row096_good073_checked :
    goodSegmentCheck 96 31 67
      { lower := 6829, upper := 6924, witness := RowWitness.topPrime 6829 } = true := by
  exact good_top_prime_checked (i := 96) (r := 31) (s := 67) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row096_good074_checked :
    goodSegmentCheck 96 31 67
      { lower := 6925, upper := 7012, witness := RowWitness.topPrime 6917 } = true := by
  exact good_top_prime_checked (i := 96) (r := 31) (s := 67) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row096_good075_checked :
    goodSegmentCheck 96 31 67
      { lower := 7013, upper := 7108, witness := RowWitness.topPrime 7013 } = true := by
  exact good_top_prime_checked (i := 96) (r := 31) (s := 67) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row096_good076_checked :
    goodSegmentCheck 96 31 67
      { lower := 7109, upper := 7204, witness := RowWitness.topPrime 7109 } = true := by
  exact good_top_prime_checked (i := 96) (r := 31) (s := 67) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row096_good077_checked :
    goodSegmentCheck 96 31 67
      { lower := 7205, upper := 7288, witness := RowWitness.topPrime 7193 } = true := by
  exact good_top_prime_checked (i := 96) (r := 31) (s := 67) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row096_good078_checked :
    goodSegmentCheck 96 31 67
      { lower := 7289, upper := 7378, witness := RowWitness.topPrime 7283 } = true := by
  exact good_top_prime_checked (i := 96) (r := 31) (s := 67) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row096_good079_checked :
    goodSegmentCheck 96 31 67
      { lower := 7379, upper := 7464, witness := RowWitness.topPrime 7369 } = true := by
  exact good_top_prime_checked (i := 96) (r := 31) (s := 67) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row096_good064_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row096_good065_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row096_good066_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row096_good067_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row096_good068_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row096_good069_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row096_good070_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row096_good071_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row096_good072_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row096_good073_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row096_good074_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row096_good075_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row096_good076_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row096_good077_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row096_good078_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row096_good079_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row096_good080_checked :
    goodSegmentCheck 96 31 67
      { lower := 7465, upper := 7554, witness := RowWitness.topPrime 7459 } = true := by
  exact good_top_prime_checked (i := 96) (r := 31) (s := 67) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row096_good081_checked :
    goodSegmentCheck 96 31 67
      { lower := 7555, upper := 7644, witness := RowWitness.topPrime 7549 } = true := by
  exact good_top_prime_checked (i := 96) (r := 31) (s := 67) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row096_good082_checked :
    goodSegmentCheck 96 31 67
      { lower := 7645, upper := 7738, witness := RowWitness.topPrime 7643 } = true := by
  exact good_top_prime_checked (i := 96) (r := 31) (s := 67) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row096_good083_checked :
    goodSegmentCheck 96 31 67
      { lower := 7739, upper := 7822, witness := RowWitness.topPrime 7727 } = true := by
  exact good_top_prime_checked (i := 96) (r := 31) (s := 67) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row096_good084_checked :
    goodSegmentCheck 96 31 67
      { lower := 7823, upper := 7918, witness := RowWitness.topPrime 7823 } = true := by
  exact good_top_prime_checked (i := 96) (r := 31) (s := 67) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row096_good085_checked :
    goodSegmentCheck 96 31 67
      { lower := 7919, upper := 8014, witness := RowWitness.topPrime 7919 } = true := by
  exact good_top_prime_checked (i := 96) (r := 31) (s := 67) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row096_good086_checked :
    goodSegmentCheck 96 31 67
      { lower := 8015, upper := 8106, witness := RowWitness.topPrime 8011 } = true := by
  exact good_top_prime_checked (i := 96) (r := 31) (s := 67) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row096_good087_checked :
    goodSegmentCheck 96 31 67
      { lower := 8107, upper := 8196, witness := RowWitness.topPrime 8101 } = true := by
  exact good_top_prime_checked (i := 96) (r := 31) (s := 67) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row096_good088_checked :
    goodSegmentCheck 96 31 67
      { lower := 8197, upper := 8286, witness := RowWitness.topPrime 8191 } = true := by
  exact good_top_prime_checked (i := 96) (r := 31) (s := 67) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row096_good089_checked :
    goodSegmentCheck 96 31 67
      { lower := 8287, upper := 8382, witness := RowWitness.topPrime 8287 } = true := by
  exact good_top_prime_checked (i := 96) (r := 31) (s := 67) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row096_good090_checked :
    goodSegmentCheck 96 31 67
      { lower := 8383, upper := 8472, witness := RowWitness.topPrime 8377 } = true := by
  exact good_top_prime_checked (i := 96) (r := 31) (s := 67) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row096_good091_checked :
    goodSegmentCheck 96 31 67
      { lower := 8473, upper := 8562, witness := RowWitness.topPrime 8467 } = true := by
  exact good_top_prime_checked (i := 96) (r := 31) (s := 67) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row096_good092_checked :
    goodSegmentCheck 96 31 67
      { lower := 8563, upper := 8658, witness := RowWitness.topPrime 8563 } = true := by
  exact good_top_prime_checked (i := 96) (r := 31) (s := 67) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row096_good093_checked :
    goodSegmentCheck 96 31 67
      { lower := 8659, upper := 8742, witness := RowWitness.topPrime 8647 } = true := by
  exact good_top_prime_checked (i := 96) (r := 31) (s := 67) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row096_good094_checked :
    goodSegmentCheck 96 31 67
      { lower := 8743, upper := 8836, witness := RowWitness.topPrime 8741 } = true := by
  exact good_top_prime_checked (i := 96) (r := 31) (s := 67) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row096_good095_checked :
    goodSegmentCheck 96 31 67
      { lower := 8837, upper := 8932, witness := RowWitness.topPrime 8837 } = true := by
  exact good_top_prime_checked (i := 96) (r := 31) (s := 67) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row096_good080_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row096_good081_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row096_good082_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row096_good083_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row096_good084_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row096_good085_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row096_good086_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row096_good087_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row096_good088_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row096_good089_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row096_good090_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row096_good091_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row096_good092_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row096_good093_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row096_good094_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row096_good095_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row096_good096_checked :
    goodSegmentCheck 96 31 67
      { lower := 8933, upper := 9028, witness := RowWitness.topPrime 8933 } = true := by
  exact good_top_prime_checked (i := 96) (r := 31) (s := 67) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row096_good097_checked :
    goodSegmentCheck 96 31 67
      { lower := 9029, upper := 9119, witness := RowWitness.topPrime 9029 } = true := by
  exact good_top_prime_checked (i := 96) (r := 31) (s := 67) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row096_good098_checked :
    goodSegmentCheck 96 31 67
      { lower := 9251, upper := 9336, witness := RowWitness.topPrime 9241 } = true := by
  exact good_top_prime_checked (i := 96) (r := 31) (s := 67) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row096_good099_checked :
    goodSegmentCheck 96 31 67
      { lower := 9337, upper := 9346, witness := RowWitness.topPrime 9337 } = true := by
  exact good_top_prime_checked (i := 96) (r := 31) (s := 67) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row096_good100_checked :
    goodSegmentCheck 96 31 67
      { lower := 9375, upper := 9412, witness := RowWitness.topPrime 9371 } = true := by
  exact good_top_prime_checked (i := 96) (r := 31) (s := 67) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row096_good101_checked :
    goodSegmentCheck 96 31 67
      { lower := 9583, upper := 9646, witness := RowWitness.topPrime 9551 } = true := by
  exact good_top_prime_checked (i := 96) (r := 31) (s := 67) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row096_good102_checked :
    goodSegmentCheck 96 31 67
      { lower := 9647, upper := 9699, witness := RowWitness.topPrime 9643 } = true := by
  exact good_top_prime_checked (i := 96) (r := 31) (s := 67) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row096_good103_checked :
    goodSegmentCheck 96 31 67
      { lower := 10051, upper := 10134, witness := RowWitness.topPrime 10039 } = true := by
  exact good_top_prime_checked (i := 96) (r := 31) (s := 67) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row096_good104_checked :
    goodSegmentCheck 96 31 67
      { lower := 10135, upper := 10181, witness := RowWitness.topPrime 10133 } = true := by
  exact good_top_prime_checked (i := 96) (r := 31) (s := 67) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row096_good105_checked :
    goodSegmentCheck 96 31 67
      { lower := 10625, upper := 10708, witness := RowWitness.topPrime 10613 } = true := by
  exact good_top_prime_checked (i := 96) (r := 31) (s := 67) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row096_good106_checked :
    goodSegmentCheck 96 31 67
      { lower := 10709, upper := 10743, witness := RowWitness.topPrime 10709 } = true := by
  exact good_top_prime_checked (i := 96) (r := 31) (s := 67) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row096_good107_checked :
    goodSegmentCheck 96 31 67
      { lower := 10935, upper := 11004, witness := RowWitness.topPrime 10909 } = true := by
  exact good_top_prime_checked (i := 96) (r := 31) (s := 67) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row096_good108_checked :
    goodSegmentCheck 96 31 67
      { lower := 11005, upper := 11080, witness := RowWitness.topPrime 11003 } = true := by
  exact good_top_prime_checked (i := 96) (r := 31) (s := 67) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row096_good109_checked :
    goodSegmentCheck 96 31 67
      { lower := 11094, upper := 11140, witness := RowWitness.topPrime 11093 } = true := by
  exact good_top_prime_checked (i := 96) (r := 31) (s := 67) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row096_good110_checked :
    goodSegmentCheck 96 31 67
      { lower := 11163, upper := 11189, witness := RowWitness.topPrime 11161 } = true := by
  exact good_top_prime_checked (i := 96) (r := 31) (s := 67) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row096_good111_checked :
    goodSegmentCheck 96 31 67
      { lower := 11236, upper := 11308, witness := RowWitness.topPrime 11213 } = true := by
  exact good_top_prime_checked (i := 96) (r := 31) (s := 67) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row096_good096_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row096_good097_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row096_good098_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row096_good099_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row096_good100_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row096_good101_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row096_good102_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row096_good103_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row096_good104_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row096_good105_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row096_good106_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row096_good107_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row096_good108_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row096_good109_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row096_good110_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row096_good111_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row096_good112_checked :
    goodSegmentCheck 96 31 67
      { lower := 11309, upper := 11331, witness := RowWitness.topPrime 11299 } = true := by
  exact good_top_prime_checked (i := 96) (r := 31) (s := 67) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row096_good113_checked :
    goodSegmentCheck 96 31 67
      { lower := 11774, upper := 11838, witness := RowWitness.topPrime 11743 } = true := by
  exact good_top_prime_checked (i := 96) (r := 31) (s := 67) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row096_good114_checked :
    goodSegmentCheck 96 31 67
      { lower := 11839, upper := 11862, witness := RowWitness.topPrime 11839 } = true := by
  exact good_top_prime_checked (i := 96) (r := 31) (s := 67) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row096_good115_checked :
    goodSegmentCheck 96 31 67
      { lower := 12005, upper := 12074, witness := RowWitness.topPrime 11987 } = true := by
  exact good_top_prime_checked (i := 96) (r := 31) (s := 67) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row096_good116_checked :
    goodSegmentCheck 96 31 67
      { lower := 12493, upper := 12586, witness := RowWitness.topPrime 12491 } = true := by
  exact good_top_prime_checked (i := 96) (r := 31) (s := 67) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row096_good117_checked :
    goodSegmentCheck 96 31 67
      { lower := 12587, upper := 12588, witness := RowWitness.topPrime 12583 } = true := by
  exact good_top_prime_checked (i := 96) (r := 31) (s := 67) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row096_good118_checked :
    goodSegmentCheck 96 31 67
      { lower := 13182, upper := 13217, witness := RowWitness.topPrime 13177 } = true := by
  exact good_top_prime_checked (i := 96) (r := 31) (s := 67) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row096_good119_checked :
    goodSegmentCheck 96 31 67
      { lower := 13254, upper := 13277, witness := RowWitness.topPrime 13249 } = true := by
  exact good_top_prime_checked (i := 96) (r := 31) (s := 67) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row096_good120_checked :
    goodSegmentCheck 96 31 67
      { lower := 13310, upper := 13349, witness := RowWitness.topPrime 13309 } = true := by
  exact good_top_prime_checked (i := 96) (r := 31) (s := 67) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row096_good121_checked :
    goodSegmentCheck 96 31 67
      { lower := 13454, upper := 13546, witness := RowWitness.topPrime 13451 } = true := by
  exact good_top_prime_checked (i := 96) (r := 31) (s := 67) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row096_good122_checked :
    goodSegmentCheck 96 31 67
      { lower := 13547, upper := 13551, witness := RowWitness.topPrime 13537 } = true := by
  exact good_top_prime_checked (i := 96) (r := 31) (s := 67) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row096_good123_checked :
    goodSegmentCheck 96 31 67
      { lower := 13718, upper := 13806, witness := RowWitness.topPrime 13711 } = true := by
  exact good_top_prime_checked (i := 96) (r := 31) (s := 67) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row096_good124_checked :
    goodSegmentCheck 96 31 67
      { lower := 13807, upper := 13813, witness := RowWitness.topPrime 13807 } = true := by
  exact good_top_prime_checked (i := 96) (r := 31) (s := 67) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row096_good125_checked :
    goodSegmentCheck 96 31 67
      { lower := 14415, upper := 14501, witness := RowWitness.topPrime 14411 } = true := by
  exact good_top_prime_checked (i := 96) (r := 31) (s := 67) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row096_good126_checked :
    goodSegmentCheck 96 31 67
      { lower := 14792, upper := 14834, witness := RowWitness.topPrime 14783 } = true := by
  exact good_top_prime_checked (i := 96) (r := 31) (s := 67) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row096_good127_checked :
    goodSegmentCheck 96 31 67
      { lower := 14884, upper := 14887, witness := RowWitness.topPrime 14879 } = true := by
  exact good_top_prime_checked (i := 96) (r := 31) (s := 67) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row096_good112_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row096_good113_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row096_good114_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row096_good115_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row096_good116_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row096_good117_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row096_good118_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row096_good119_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row096_good120_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row096_good121_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row096_good122_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row096_good123_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row096_good124_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row096_good125_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row096_good126_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row096_good127_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row096_good128_checked :
    goodSegmentCheck 96 31 67
      { lower := 15123, upper := 15216, witness := RowWitness.topPrime 15121 } = true := by
  exact good_top_prime_checked (i := 96) (r := 31) (s := 67) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row096_good129_checked :
    goodSegmentCheck 96 31 67
      { lower := 15217, upper := 15224, witness := RowWitness.topPrime 15217 } = true := by
  exact good_top_prime_checked (i := 96) (r := 31) (s := 67) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row096_good130_checked :
    goodSegmentCheck 96 31 67
      { lower := 15379, upper := 15472, witness := RowWitness.topPrime 15377 } = true := by
  exact good_top_prime_checked (i := 96) (r := 31) (s := 67) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row096_good131_checked :
    goodSegmentCheck 96 31 67
      { lower := 15473, upper := 15474, witness := RowWitness.topPrime 15473 } = true := by
  exact good_top_prime_checked (i := 96) (r := 31) (s := 67) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row096_good132_checked :
    goodSegmentCheck 96 31 67
      { lower := 15979, upper := 16068, witness := RowWitness.topPrime 15973 } = true := by
  exact good_top_prime_checked (i := 96) (r := 31) (s := 67) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row096_good133_checked :
    goodSegmentCheck 96 31 67
      { lower := 16069, upper := 16074, witness := RowWitness.topPrime 16069 } = true := by
  exact good_top_prime_checked (i := 96) (r := 31) (s := 67) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row096_good134_checked :
    goodSegmentCheck 96 31 67
      { lower := 16428, upper := 16432, witness := RowWitness.topPrime 16427 } = true := by
  exact good_top_prime_checked (i := 96) (r := 31) (s := 67) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row096_good135_checked :
    goodSegmentCheck 96 31 67
      { lower := 16810, upper := 16882, witness := RowWitness.topPrime 16787 } = true := by
  exact good_top_prime_checked (i := 96) (r := 31) (s := 67) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row096_good136_checked :
    goodSegmentCheck 96 31 67
      { lower := 16883, upper := 16905, witness := RowWitness.topPrime 16883 } = true := by
  exact good_top_prime_checked (i := 96) (r := 31) (s := 67) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row096_good137_checked :
    goodSegmentCheck 96 31 67
      { lower := 17303, upper := 17393, witness := RowWitness.topPrime 17299 } = true := by
  exact good_top_prime_checked (i := 96) (r := 31) (s := 67) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row096_good138_checked :
    goodSegmentCheck 96 31 67
      { lower := 18491, upper := 18576, witness := RowWitness.topPrime 18481 } = true := by
  exact good_top_prime_checked (i := 96) (r := 31) (s := 67) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row096_good139_checked :
    goodSegmentCheck 96 31 67
      { lower := 18577, upper := 18585, witness := RowWitness.topPrime 18553 } = true := by
  exact good_top_prime_checked (i := 96) (r := 31) (s := 67) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row096_good140_checked :
    goodSegmentCheck 96 31 67
      { lower := 18634, upper := 18700, witness := RowWitness.topPrime 18617 } = true := by
  exact good_top_prime_checked (i := 96) (r := 31) (s := 67) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row096_good141_checked :
    goodSegmentCheck 96 31 67
      { lower := 18723, upper := 18729, witness := RowWitness.topPrime 18719 } = true := by
  exact good_top_prime_checked (i := 96) (r := 31) (s := 67) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row096_good142_checked :
    goodSegmentCheck 96 31 67
      { lower := 18750, upper := 18818, witness := RowWitness.topPrime 18749 } = true := by
  exact good_top_prime_checked (i := 96) (r := 31) (s := 67) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row096_good143_checked :
    goodSegmentCheck 96 31 67
      { lower := 19208, upper := 19261, witness := RowWitness.topPrime 19207 } = true := by
  exact good_top_prime_checked (i := 96) (r := 31) (s := 67) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row096_good128_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row096_good129_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row096_good130_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row096_good131_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row096_good132_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row096_good133_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row096_good134_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row096_good135_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row096_good136_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row096_good137_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row096_good138_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row096_good139_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row096_good140_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row096_good141_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row096_good142_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row096_good143_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row096_good144_checked :
    goodSegmentCheck 96 31 67
      { lower := 19663, upper := 19756, witness := RowWitness.topPrime 19661 } = true := by
  exact good_top_prime_checked (i := 96) (r := 31) (s := 67) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row096_good145_checked :
    goodSegmentCheck 96 31 67
      { lower := 19757, upper := 19758, witness := RowWitness.topPrime 19753 } = true := by
  exact good_top_prime_checked (i := 96) (r := 31) (s := 67) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row096_good146_checked :
    goodSegmentCheck 96 31 67
      { lower := 19773, upper := 19778, witness := RowWitness.topPrime 19763 } = true := by
  exact good_top_prime_checked (i := 96) (r := 31) (s := 67) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row096_good147_checked :
    goodSegmentCheck 96 31 67
      { lower := 19965, upper := 19976, witness := RowWitness.topPrime 19963 } = true := by
  exact good_top_prime_checked (i := 96) (r := 31) (s := 67) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row096_good148_checked :
    goodSegmentCheck 96 31 67
      { lower := 20172, upper := 20256, witness := RowWitness.topPrime 20161 } = true := by
  exact good_top_prime_checked (i := 96) (r := 31) (s := 67) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row096_good149_checked :
    goodSegmentCheck 96 31 67
      { lower := 20257, upper := 20259, witness := RowWitness.topPrime 20249 } = true := by
  exact good_top_prime_checked (i := 96) (r := 31) (s := 67) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row096_good150_checked :
    goodSegmentCheck 96 31 67
      { lower := 20577, upper := 20630, witness := RowWitness.topPrime 20563 } = true := by
  exact good_top_prime_checked (i := 96) (r := 31) (s := 67) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row096_good151_checked :
    goodSegmentCheck 96 31 67
      { lower := 20667, upper := 20672, witness := RowWitness.topPrime 20663 } = true := by
  exact good_top_prime_checked (i := 96) (r := 31) (s := 67) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row096_good152_checked :
    goodSegmentCheck 96 31 67
      { lower := 21316, upper := 21391, witness := RowWitness.topPrime 21313 } = true := by
  exact good_top_prime_checked (i := 96) (r := 31) (s := 67) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row096_good153_checked :
    goodSegmentCheck 96 31 67
      { lower := 21875, upper := 21966, witness := RowWitness.topPrime 21871 } = true := by
  exact good_top_prime_checked (i := 96) (r := 31) (s := 67) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row096_good154_checked :
    goodSegmentCheck 96 31 67
      { lower := 21967, upper := 21999, witness := RowWitness.topPrime 21961 } = true := by
  exact good_top_prime_checked (i := 96) (r := 31) (s := 67) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row096_good155_checked :
    goodSegmentCheck 96 31 67
      { lower := 22472, upper := 22540, witness := RowWitness.topPrime 22469 } = true := by
  exact good_top_prime_checked (i := 96) (r := 31) (s := 67) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row096_good156_checked :
    goodSegmentCheck 96 31 67
      { lower := 24037, upper := 24105, witness := RowWitness.topPrime 24029 } = true := by
  exact good_top_prime_checked (i := 96) (r := 31) (s := 67) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row096_good157_checked :
    goodSegmentCheck 96 31 67
      { lower := 24334, upper := 24424, witness := RowWitness.topPrime 24329 } = true := by
  exact good_top_prime_checked (i := 96) (r := 31) (s := 67) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row096_good158_checked :
    goodSegmentCheck 96 31 67
      { lower := 24425, upper := 24462, witness := RowWitness.topPrime 24421 } = true := by
  exact good_top_prime_checked (i := 96) (r := 31) (s := 67) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row096_good159_checked :
    goodSegmentCheck 96 31 67
      { lower := 25000, upper := 25059, witness := RowWitness.topPrime 24989 } = true := by
  exact good_top_prime_checked (i := 96) (r := 31) (s := 67) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row096_good144_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row096_good145_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row096_good146_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row096_good147_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row096_good148_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row096_good149_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row096_good150_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row096_good151_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row096_good152_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row096_good153_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row096_good154_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row096_good155_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row096_good156_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row096_good157_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row096_good158_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row096_good159_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row096_good160_checked :
    goodSegmentCheck 96 31 67
      { lower := 25215, upper := 25284, witness := RowWitness.topPrime 25189 } = true := by
  exact good_top_prime_checked (i := 96) (r := 31) (s := 67) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row096_good161_checked :
    goodSegmentCheck 96 31 67
      { lower := 25285, upper := 25310, witness := RowWitness.topPrime 25261 } = true := by
  exact good_top_prime_checked (i := 96) (r := 31) (s := 67) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row096_good162_checked :
    goodSegmentCheck 96 31 67
      { lower := 26411, upper := 26459, witness := RowWitness.topPrime 26407 } = true := by
  exact good_top_prime_checked (i := 96) (r := 31) (s := 67) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row096_good163_checked :
    goodSegmentCheck 96 31 67
      { lower := 26934, upper := 26991, witness := RowWitness.topPrime 26927 } = true := by
  exact good_top_prime_checked (i := 96) (r := 31) (s := 67) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row096_good164_checked :
    goodSegmentCheck 96 31 67
      { lower := 28125, upper := 28185, witness := RowWitness.topPrime 28123 } = true := by
  exact good_top_prime_checked (i := 96) (r := 31) (s := 67) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row096_good165_checked :
    goodSegmentCheck 96 31 67
      { lower := 28812, upper := 28812, witness := RowWitness.topPrime 28807 } = true := by
  exact good_top_prime_checked (i := 96) (r := 31) (s := 67) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row096_good166_checked :
    goodSegmentCheck 96 31 67
      { lower := 29791, upper := 29863, witness := RowWitness.topPrime 29789 } = true := by
  exact good_top_prime_checked (i := 96) (r := 31) (s := 67) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row096_good167_checked :
    goodSegmentCheck 96 31 67
      { lower := 30926, upper := 30994, witness := RowWitness.topPrime 30911 } = true := by
  exact good_top_prime_checked (i := 96) (r := 31) (s := 67) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row096_good168_checked :
    goodSegmentCheck 96 31 67
      { lower := 31213, upper := 31288, witness := RowWitness.topPrime 31193 } = true := by
  exact good_top_prime_checked (i := 96) (r := 31) (s := 67) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row096_good169_checked :
    goodSegmentCheck 96 31 67
      { lower := 31289, upper := 31308, witness := RowWitness.topPrime 31277 } = true := by
  exact good_top_prime_checked (i := 96) (r := 31) (s := 67) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row096_good170_checked :
    goodSegmentCheck 96 31 67
      { lower := 31329, upper := 31345, witness := RowWitness.topPrime 31327 } = true := by
  exact good_top_prime_checked (i := 96) (r := 31) (s := 67) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row096_good171_checked :
    goodSegmentCheck 96 31 67
      { lower := 31423, upper := 31424, witness := RowWitness.topPrime 31397 } = true := by
  exact good_top_prime_checked (i := 96) (r := 31) (s := 67) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row096_good172_checked :
    goodSegmentCheck 96 31 67
      { lower := 33708, upper := 33709, witness := RowWitness.topPrime 33703 } = true := by
  exact good_top_prime_checked (i := 96) (r := 31) (s := 67) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row096_good173_checked :
    goodSegmentCheck 96 31 67
      { lower := 34375, upper := 34464, witness := RowWitness.topPrime 34369 } = true := by
  exact good_top_prime_checked (i := 96) (r := 31) (s := 67) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row096_good174_checked :
    goodSegmentCheck 96 31 67
      { lower := 34465, upper := 34486, witness := RowWitness.topPrime 34457 } = true := by
  exact good_top_prime_checked (i := 96) (r := 31) (s := 67) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row096_good175_checked :
    goodSegmentCheck 96 31 67
      { lower := 35344, upper := 35382, witness := RowWitness.topPrime 35339 } = true := by
  exact good_top_prime_checked (i := 96) (r := 31) (s := 67) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row096_good160_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row096_good161_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row096_good162_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row096_good163_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row096_good164_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row096_good165_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row096_good166_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row096_good167_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row096_good168_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row096_good169_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row096_good170_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row096_good171_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row096_good172_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row096_good173_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row096_good174_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row096_good175_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row096_good176_checked :
    goodSegmentCheck 96 31 67
      { lower := 37303, upper := 37305, witness := RowWitness.topPrime 37277 } = true := by
  exact good_top_prime_checked (i := 96) (r := 31) (s := 67) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row096_good177_checked :
    goodSegmentCheck 96 31 67
      { lower := 37500, upper := 37541, witness := RowWitness.topPrime 37493 } = true := by
  exact good_top_prime_checked (i := 96) (r := 31) (s := 67) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row096_good178_checked :
    goodSegmentCheck 96 31 67
      { lower := 39366, upper := 39399, witness := RowWitness.topPrime 39359 } = true := by
  exact good_top_prime_checked (i := 96) (r := 31) (s := 67) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row096_good179_checked :
    goodSegmentCheck 96 31 67
      { lower := 40401, upper := 40423, witness := RowWitness.topPrime 40387 } = true := by
  exact good_top_prime_checked (i := 96) (r := 31) (s := 67) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row096_good180_checked :
    goodSegmentCheck 96 31 67
      { lower := 48013, upper := 48056, witness := RowWitness.topPrime 47981 } = true := by
  exact good_top_prime_checked (i := 96) (r := 31) (s := 67) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row096_good181_checked :
    goodSegmentCheck 96 31 67
      { lower := 50421, upper := 50505, witness := RowWitness.topPrime 50417 } = true := by
  exact good_top_prime_checked (i := 96) (r := 31) (s := 67) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row096_good182_checked :
    goodSegmentCheck 96 31 67
      { lower := 55451, upper := 55536, witness := RowWitness.topPrime 55441 } = true := by
  exact good_top_prime_checked (i := 96) (r := 31) (s := 67) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row096_good183_checked :
    goodSegmentCheck 96 31 67
      { lower := 55537, upper := 55542, witness := RowWitness.topPrime 55529 } = true := by
  exact good_top_prime_checked (i := 96) (r := 31) (s := 67) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row096_good184_checked :
    goodSegmentCheck 96 31 67
      { lower := 58619, upper := 58659, witness := RowWitness.topPrime 58613 } = true := by
  exact good_top_prime_checked (i := 96) (r := 31) (s := 67) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row096_good185_checked :
    goodSegmentCheck 96 31 67
      { lower := 59049, upper := 59051, witness := RowWitness.topPrime 59029 } = true := by
  exact good_top_prime_checked (i := 96) (r := 31) (s := 67) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row096_good186_checked :
    goodSegmentCheck 96 31 67
      { lower := 62500, upper := 62505, witness := RowWitness.topPrime 62497 } = true := by
  exact good_top_prime_checked (i := 96) (r := 31) (s := 67) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row096_good187_checked :
    goodSegmentCheck 96 31 67
      { lower := 68651, upper := 68685, witness := RowWitness.topPrime 68639 } = true := by
  exact good_top_prime_checked (i := 96) (r := 31) (s := 67) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row096_good188_checked :
    goodSegmentCheck 96 31 67
      { lower := 68921, upper := 68985, witness := RowWitness.topPrime 68917 } = true := by
  exact good_top_prime_checked (i := 96) (r := 31) (s := 67) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row096_good189_checked :
    goodSegmentCheck 96 31 67
      { lower := 73205, upper := 73262, witness := RowWitness.topPrime 73189 } = true := by
  exact good_top_prime_checked (i := 96) (r := 31) (s := 67) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row096_good190_checked :
    goodSegmentCheck 96 31 67
      { lower := 148955, upper := 148972, witness := RowWitness.topPrime 148949 } = true := by
  exact good_top_prime_checked (i := 96) (r := 31) (s := 67) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row096_good176_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row096_good177_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row096_good178_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row096_good179_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row096_good180_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row096_good181_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row096_good182_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row096_good183_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row096_good184_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row096_good185_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row096_good186_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row096_good187_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row096_good188_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row096_good189_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row096_good190_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row096_goods_checked :
    row096.goods.all (goodSegmentCheck row096.height.i row096.height.r row096.height.s) = true := by
  change row096_goods.all (goodSegmentCheck 96 31 67) = true
  simp only [row096_goods, List.all_cons, List.all_nil,
    row096_good000_checked,
    row096_good001_checked,
    row096_good002_checked,
    row096_good003_checked,
    row096_good004_checked,
    row096_good005_checked,
    row096_good006_checked,
    row096_good007_checked,
    row096_good008_checked,
    row096_good009_checked,
    row096_good010_checked,
    row096_good011_checked,
    row096_good012_checked,
    row096_good013_checked,
    row096_good014_checked,
    row096_good015_checked,
    row096_good016_checked,
    row096_good017_checked,
    row096_good018_checked,
    row096_good019_checked,
    row096_good020_checked,
    row096_good021_checked,
    row096_good022_checked,
    row096_good023_checked,
    row096_good024_checked,
    row096_good025_checked,
    row096_good026_checked,
    row096_good027_checked,
    row096_good028_checked,
    row096_good029_checked,
    row096_good030_checked,
    row096_good031_checked,
    row096_good032_checked,
    row096_good033_checked,
    row096_good034_checked,
    row096_good035_checked,
    row096_good036_checked,
    row096_good037_checked,
    row096_good038_checked,
    row096_good039_checked,
    row096_good040_checked,
    row096_good041_checked,
    row096_good042_checked,
    row096_good043_checked,
    row096_good044_checked,
    row096_good045_checked,
    row096_good046_checked,
    row096_good047_checked,
    row096_good048_checked,
    row096_good049_checked,
    row096_good050_checked,
    row096_good051_checked,
    row096_good052_checked,
    row096_good053_checked,
    row096_good054_checked,
    row096_good055_checked,
    row096_good056_checked,
    row096_good057_checked,
    row096_good058_checked,
    row096_good059_checked,
    row096_good060_checked,
    row096_good061_checked,
    row096_good062_checked,
    row096_good063_checked,
    row096_good064_checked,
    row096_good065_checked,
    row096_good066_checked,
    row096_good067_checked,
    row096_good068_checked,
    row096_good069_checked,
    row096_good070_checked,
    row096_good071_checked,
    row096_good072_checked,
    row096_good073_checked,
    row096_good074_checked,
    row096_good075_checked,
    row096_good076_checked,
    row096_good077_checked,
    row096_good078_checked,
    row096_good079_checked,
    row096_good080_checked,
    row096_good081_checked,
    row096_good082_checked,
    row096_good083_checked,
    row096_good084_checked,
    row096_good085_checked,
    row096_good086_checked,
    row096_good087_checked,
    row096_good088_checked,
    row096_good089_checked,
    row096_good090_checked,
    row096_good091_checked,
    row096_good092_checked,
    row096_good093_checked,
    row096_good094_checked,
    row096_good095_checked,
    row096_good096_checked,
    row096_good097_checked,
    row096_good098_checked,
    row096_good099_checked,
    row096_good100_checked,
    row096_good101_checked,
    row096_good102_checked,
    row096_good103_checked,
    row096_good104_checked,
    row096_good105_checked,
    row096_good106_checked,
    row096_good107_checked,
    row096_good108_checked,
    row096_good109_checked,
    row096_good110_checked,
    row096_good111_checked,
    row096_good112_checked,
    row096_good113_checked,
    row096_good114_checked,
    row096_good115_checked,
    row096_good116_checked,
    row096_good117_checked,
    row096_good118_checked,
    row096_good119_checked,
    row096_good120_checked,
    row096_good121_checked,
    row096_good122_checked,
    row096_good123_checked,
    row096_good124_checked,
    row096_good125_checked,
    row096_good126_checked,
    row096_good127_checked,
    row096_good128_checked,
    row096_good129_checked,
    row096_good130_checked,
    row096_good131_checked,
    row096_good132_checked,
    row096_good133_checked,
    row096_good134_checked,
    row096_good135_checked,
    row096_good136_checked,
    row096_good137_checked,
    row096_good138_checked,
    row096_good139_checked,
    row096_good140_checked,
    row096_good141_checked,
    row096_good142_checked,
    row096_good143_checked,
    row096_good144_checked,
    row096_good145_checked,
    row096_good146_checked,
    row096_good147_checked,
    row096_good148_checked,
    row096_good149_checked,
    row096_good150_checked,
    row096_good151_checked,
    row096_good152_checked,
    row096_good153_checked,
    row096_good154_checked,
    row096_good155_checked,
    row096_good156_checked,
    row096_good157_checked,
    row096_good158_checked,
    row096_good159_checked,
    row096_good160_checked,
    row096_good161_checked,
    row096_good162_checked,
    row096_good163_checked,
    row096_good164_checked,
    row096_good165_checked,
    row096_good166_checked,
    row096_good167_checked,
    row096_good168_checked,
    row096_good169_checked,
    row096_good170_checked,
    row096_good171_checked,
    row096_good172_checked,
    row096_good173_checked,
    row096_good174_checked,
    row096_good175_checked,
    row096_good176_checked,
    row096_good177_checked,
    row096_good178_checked,
    row096_good179_checked,
    row096_good180_checked,
    row096_good181_checked,
    row096_good182_checked,
    row096_good183_checked,
    row096_good184_checked,
    row096_good185_checked,
    row096_good186_checked,
    row096_good187_checked,
    row096_good188_checked,
    row096_good189_checked,
    row096_good190_checked, Bool.true_and]

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row096_goods_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row096_registered :
    decide (row096.height ∈ heightCertificateData) = true := by
  decide +kernel

theorem row096_small_checked :
    coverCheck (2 * row096.height.i + 2) (row096.height.i * (row096.height.i - 1) - 1)
      (row096.goods.map goodSegmentBounds) = true := by
  decide +kernel

theorem row096_layerCover_checked :
    coverCheck (row096.height.i * (row096.height.i - 1)) (row096.height.n0 - 1)
      (row096.layers.map CoverLayer.bounds) = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row096_registered
#print axioms B699LowIndex.LowIndexLean513dc7cc.row096_small_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row096_layerCover_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row096_bounds : List NatInterval :=
  [(194, 288), (289, 378), (379, 474), (475, 562), (563, 658), (659, 754), (755, 846), (847, 934), (935, 1024), (1025, 1116), (1117, 1212), (1213, 1308), (1309, 1402), (1403, 1494), (1495, 1588), (1589, 1678), (1679, 1764), (1765, 1854), (1855, 1942), (1943, 2028), (2029, 2124), (2125, 2208), (2209, 2302), (2303, 2392), (2393, 2488), (2489, 2572), (2573, 2652), (2653, 2742), (2743, 2836), (2837, 2932), (2933, 3022), (3023, 3118), (3119, 3214), (3215, 3304), (3305, 3396), (3397, 3486), (3487, 3564), (3565, 3654), (3655, 3738), (3739, 3834), (3835, 3928), (3929, 4024), (4025, 4116), (4117, 4206), (4207, 4296), (4297, 4392), (4393, 4486), (4487, 4578), (4579, 4662), (4663, 4758), (4759, 4854), (4855, 4926), (4927, 5014), (5015, 5106), (5107, 5202), (5203, 5292), (5293, 5376), (5377, 5446), (5447, 5538), (5539, 5626), (5627, 5718), (5719, 5812), (5813, 5908), (5909, 5998), (5999, 6082), (6083, 6174), (6175, 6268), (6269, 6364), (6365, 6456), (6457, 6546), (6547, 6642), (6643, 6732), (6733, 6828), (6829, 6924), (6925, 7012), (7013, 7108), (7109, 7204), (7205, 7288), (7289, 7378), (7379, 7464), (7465, 7554), (7555, 7644), (7645, 7738), (7739, 7822), (7823, 7918), (7919, 8014), (8015, 8106), (8107, 8196), (8197, 8286), (8287, 8382), (8383, 8472), (8473, 8562), (8563, 8658), (8659, 8742), (8743, 8836), (8837, 8932), (8933, 9028), (9029, 9119), (9251, 9336), (9337, 9346), (9375, 9412), (9583, 9646), (9647, 9699), (10051, 10134), (10135, 10181), (10625, 10708), (10709, 10743), (10935, 11004), (11005, 11080), (11094, 11140), (11163, 11189), (11236, 11308), (11309, 11331), (11774, 11838), (11839, 11862), (12005, 12074), (12493, 12586), (12587, 12588), (13182, 13217), (13254, 13277), (13310, 13349), (13454, 13546), (13547, 13551), (13718, 13806), (13807, 13813), (14415, 14501), (14792, 14834), (14884, 14887), (15123, 15216), (15217, 15224), (15379, 15472), (15473, 15474), (15979, 16068), (16069, 16074), (16428, 16432), (16810, 16882), (16883, 16905), (17303, 17393), (18491, 18576), (18577, 18585), (18634, 18700), (18723, 18729), (18750, 18818), (19208, 19261), (19663, 19756), (19757, 19758), (19773, 19778), (19965, 19976), (20172, 20256), (20257, 20259), (20577, 20630), (20667, 20672), (21316, 21391), (21875, 21966), (21967, 21999), (22472, 22540), (24037, 24105), (24334, 24424), (24425, 24462), (25000, 25059), (25215, 25284), (25285, 25310), (26411, 26459), (26934, 26991), (28125, 28185), (28812, 28812), (29791, 29863), (30926, 30994), (31213, 31288), (31289, 31308), (31329, 31345), (31423, 31424), (33708, 33709), (34375, 34464), (34465, 34486), (35344, 35382), (37303, 37305), (37500, 37541), (39366, 39399), (40401, 40423), (48013, 48056), (50421, 50505), (55451, 55536), (55537, 55542), (58619, 58659), (59049, 59051), (62500, 62505), (68651, 68685), (68921, 68985), (73205, 73262), (148955, 148972)]

theorem row096_bounds_eq : row096.goods.map goodSegmentBounds = row096_bounds := by
  rfl

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row096_bounds_eq

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row096_layer000_intervals : List ColouredInterval :=
  [(3, 10935, 11030), (3, 13122, 13217), (3, 13122, 13217), (5, 9375, 9470), (5, 10000, 10095), (5, 10625, 10720), (5, 11250, 11345), (5, 11875, 11970), (5, 9375, 9470), (5, 12500, 12595), (5, 15625, 15720), (5, 15625, 15720), (7, 9604, 9699), (7, 12005, 12100), (7, 14406, 14501), (7, 16807, 16902), (7, 16807, 16902), (11, 9317, 9412), (11, 10648, 10743), (11, 11979, 12074), (11, 13310, 13405), (11, 14641, 14736), (11, 15972, 16067), (11, 17303, 17398), (11, 14641, 14736), (13, 10985, 11080), (13, 13182, 13277), (13, 15379, 15474), (13, 17576, 17671), (17, 9826, 9921), (17, 14739, 14834), (19, 13718, 13813), (23, 9522, 9617), (23, 10051, 10146), (23, 12167, 12262), (29, 9251, 9346), (29, 10092, 10187), (29, 10933, 11028), (29, 11774, 11869), (29, 12615, 12710), (29, 13456, 13551), (29, 14297, 14392), (29, 15138, 15233), (29, 15979, 16074), (31, 9610, 9705), (31, 10571, 10666), (31, 11532, 11627), (31, 12493, 12588), (31, 13454, 13549), (31, 14415, 14510), (31, 15376, 15471), (31, 16337, 16432), (31, 17298, 17393), (37, 9583, 9678), (37, 10952, 11047), (37, 12321, 12416), (37, 13690, 13785), (37, 15059, 15154), (37, 16428, 16523), (37, 17797, 17892), (41, 10086, 10181), (41, 11767, 11862), (41, 13448, 13543), (41, 15129, 15224), (41, 16810, 16905), (43, 9245, 9340), (43, 11094, 11189), (43, 12943, 13038), (43, 14792, 14887), (43, 16641, 16736), (47, 11045, 11140), (47, 13254, 13349), (47, 15463, 15558), (47, 17672, 17767), (53, 11236, 11331), (53, 14045, 14140), (53, 16854, 16949), (59, 10443, 10538), (59, 13924, 14019), (59, 17405, 17500), (61, 11163, 11258), (61, 14884, 14979), (67, 13467, 13562), (67, 17956, 18051), (71, 10082, 10177), (71, 15123, 15218), (73, 10658, 10753), (73, 15987, 16082), (79, 12482, 12577), (83, 13778, 13873), (89, 15842, 15937)]

def row096_layer000_block000 : List ColouredInterval :=
  [(3, 10935, 11030), (3, 13122, 13217), (3, 13122, 13217), (5, 9375, 9470), (5, 10000, 10095), (5, 10625, 10720), (5, 11250, 11345), (5, 11875, 11970), (5, 9375, 9470), (5, 12500, 12595), (5, 15625, 15720), (5, 15625, 15720), (7, 9604, 9699), (7, 12005, 12100), (7, 14406, 14501), (7, 16807, 16902)]

def row096_layer000_block001 : List ColouredInterval :=
  [(7, 16807, 16902), (11, 9317, 9412), (11, 10648, 10743), (11, 11979, 12074), (11, 13310, 13405), (11, 14641, 14736), (11, 15972, 16067), (11, 17303, 17398), (11, 14641, 14736), (13, 10985, 11080), (13, 13182, 13277), (13, 15379, 15474), (13, 17576, 17671), (17, 9826, 9921), (17, 14739, 14834), (19, 13718, 13813)]

def row096_layer000_block002 : List ColouredInterval :=
  [(23, 9522, 9617), (23, 10051, 10146), (23, 12167, 12262), (29, 9251, 9346), (29, 10092, 10187), (29, 10933, 11028), (29, 11774, 11869), (29, 12615, 12710), (29, 13456, 13551), (29, 14297, 14392), (29, 15138, 15233), (29, 15979, 16074), (31, 9610, 9705), (31, 10571, 10666), (31, 11532, 11627), (31, 12493, 12588)]

def row096_layer000_block003 : List ColouredInterval :=
  [(31, 13454, 13549), (31, 14415, 14510), (31, 15376, 15471), (31, 16337, 16432), (31, 17298, 17393), (37, 9583, 9678), (37, 10952, 11047), (37, 12321, 12416), (37, 13690, 13785), (37, 15059, 15154), (37, 16428, 16523), (37, 17797, 17892), (41, 10086, 10181), (41, 11767, 11862), (41, 13448, 13543), (41, 15129, 15224)]

def row096_layer000_block004 : List ColouredInterval :=
  [(41, 16810, 16905), (43, 9245, 9340), (43, 11094, 11189), (43, 12943, 13038), (43, 14792, 14887), (43, 16641, 16736), (47, 11045, 11140), (47, 13254, 13349), (47, 15463, 15558), (47, 17672, 17767), (53, 11236, 11331), (53, 14045, 14140), (53, 16854, 16949), (59, 10443, 10538), (59, 13924, 14019), (59, 17405, 17500)]

def row096_layer000_block005 : List ColouredInterval :=
  [(61, 11163, 11258), (61, 14884, 14979), (67, 13467, 13562), (67, 17956, 18051), (71, 10082, 10177), (71, 15123, 15218), (73, 10658, 10753), (73, 15987, 16082), (79, 12482, 12577), (83, 13778, 13873), (89, 15842, 15937)]

def row096_layer000_chunks : List (List ColouredInterval) :=
  [row096_layer000_block000, row096_layer000_block001, row096_layer000_block002, row096_layer000_block003, row096_layer000_block004, row096_layer000_block005]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row096_layer000_intervals

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row096_layer000_arithmetic : LayerArithmeticValid row096.height { lower := 9120, upper := 18240, M := 19 } := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row096_layer000_arithmetic

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row096_layer000_enumeration :
    activePowerIntervalList 96 19 9120 18240 = row096_layer000_intervals := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row096_layer000_enumeration

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row096_layer000_pairs000 :
    row096_layer000_block000.all (fun I => row096_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row096_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row096_layer000_pairs000

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row096_layer000_pairs001 :
    row096_layer000_block001.all (fun I => row096_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row096_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row096_layer000_pairs001

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row096_layer000_pairs002 :
    row096_layer000_block002.all (fun I => row096_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row096_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row096_layer000_pairs002

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row096_layer000_pairs003 :
    row096_layer000_block003.all (fun I => row096_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row096_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row096_layer000_pairs003

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row096_layer000_pairs004 :
    row096_layer000_block004.all (fun I => row096_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row096_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row096_layer000_pairs004

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row096_layer000_pairs005 :
    row096_layer000_block005.all (fun I => row096_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row096_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row096_layer000_pairs005

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row096_layer000_chunks_eq : row096_layer000_chunks.flatten = row096_layer000_intervals := by
  rfl

theorem row096_layer000_pairs : pairCoverCheck row096_layer000_intervals row096_bounds = true := by
  apply pairCoverCheck_of_chunks row096_layer000_chunks_eq
  intro block hblock
  simp only [row096_layer000_chunks, List.mem_cons, List.mem_nil_iff, or_false] at hblock
  rcases hblock with rfl | rfl | rfl | rfl | rfl | rfl
  · exact row096_layer000_pairs000
  · exact row096_layer000_pairs001
  · exact row096_layer000_pairs002
  · exact row096_layer000_pairs003
  · exact row096_layer000_pairs004
  · exact row096_layer000_pairs005

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row096_layer000_chunks_eq
#print axioms B699LowIndex.LowIndexLean513dc7cc.row096_layer000_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row096_layer000_checked :
    coverLayerCheck row096.height row096.goods { lower := 9120, upper := 18240, M := 19 } = true := by
  exact coverLayerCheck_of_parts row096_layer000_arithmetic row096_layer000_enumeration row096_bounds_eq row096_layer000_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row096_layer000_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row096_layer001_intervals : List ColouredInterval :=
  [(3, 19683, 19778), (3, 26244, 26339), (3, 32805, 32900), (3, 19683, 19778), (5, 18750, 18845), (5, 21875, 21970), (5, 25000, 25095), (5, 28125, 28220), (5, 31250, 31345), (5, 34375, 34470), (5, 31250, 31345), (7, 19208, 19303), (7, 21609, 21704), (7, 24010, 24105), (7, 26411, 26506), (7, 28812, 28907), (7, 31213, 31308), (7, 33614, 33709), (7, 36015, 36110), (7, 33614, 33709), (11, 18634, 18729), (11, 19965, 20060), (11, 21296, 21391), (11, 29282, 29377), (13, 19773, 19868), (13, 21970, 22065), (13, 24167, 24262), (13, 26364, 26459), (13, 28561, 28656), (13, 30758, 30853), (13, 32955, 33050), (13, 35152, 35247), (13, 28561, 28656), (17, 19652, 19747), (17, 24565, 24660), (17, 29478, 29573), (17, 34391, 34486), (19, 20577, 20672), (19, 27436, 27531), (19, 34295, 34390), (23, 24334, 24429), (29, 24389, 24484), (31, 29791, 29886), (37, 19166, 19261), (37, 20535, 20630), (37, 21904, 21999), (41, 18491, 18586), (41, 20172, 20267), (41, 21853, 21948), (41, 23534, 23629), (41, 25215, 25310), (41, 26896, 26991), (43, 18490, 18585), (43, 20339, 20434), (43, 22188, 22283), (43, 24037, 24132), (43, 25886, 25981), (43, 27735, 27830), (43, 29584, 29679), (47, 19881, 19976), (47, 22090, 22185), (47, 24299, 24394), (47, 26508, 26603), (47, 28717, 28812), (47, 30926, 31021), (47, 33135, 33230), (47, 35344, 35439), (53, 19663, 19758), (53, 22472, 22567), (53, 25281, 25376), (53, 28090, 28185), (53, 30899, 30994), (53, 33708, 33803), (59, 20886, 20981), (59, 24367, 24462), (59, 27848, 27943), (59, 31329, 31424), (59, 34810, 34905), (61, 18605, 18700), (61, 22326, 22421), (61, 26047, 26142), (61, 29768, 29863), (61, 33489, 33584), (67, 22445, 22540), (67, 26934, 27029), (67, 31423, 31518), (67, 35912, 36007), (71, 20164, 20259), (71, 25205, 25300), (71, 30246, 30341), (71, 35287, 35382), (73, 21316, 21411), (73, 26645, 26740), (73, 31974, 32069), (79, 18723, 18818), (79, 24964, 25059), (79, 31205, 31300), (83, 20667, 20762), (83, 27556, 27651), (83, 34445, 34540), (89, 23763, 23858), (89, 31684, 31779)]

def row096_layer001_block000 : List ColouredInterval :=
  [(3, 19683, 19778), (3, 26244, 26339), (3, 32805, 32900), (3, 19683, 19778), (5, 18750, 18845), (5, 21875, 21970), (5, 25000, 25095), (5, 28125, 28220), (5, 31250, 31345), (5, 34375, 34470), (5, 31250, 31345), (7, 19208, 19303), (7, 21609, 21704), (7, 24010, 24105), (7, 26411, 26506), (7, 28812, 28907)]

def row096_layer001_block001 : List ColouredInterval :=
  [(7, 31213, 31308), (7, 33614, 33709), (7, 36015, 36110), (7, 33614, 33709), (11, 18634, 18729), (11, 19965, 20060), (11, 21296, 21391), (11, 29282, 29377), (13, 19773, 19868), (13, 21970, 22065), (13, 24167, 24262), (13, 26364, 26459), (13, 28561, 28656), (13, 30758, 30853), (13, 32955, 33050), (13, 35152, 35247)]

def row096_layer001_block002 : List ColouredInterval :=
  [(13, 28561, 28656), (17, 19652, 19747), (17, 24565, 24660), (17, 29478, 29573), (17, 34391, 34486), (19, 20577, 20672), (19, 27436, 27531), (19, 34295, 34390), (23, 24334, 24429), (29, 24389, 24484), (31, 29791, 29886), (37, 19166, 19261), (37, 20535, 20630), (37, 21904, 21999), (41, 18491, 18586), (41, 20172, 20267)]

def row096_layer001_block003 : List ColouredInterval :=
  [(41, 21853, 21948), (41, 23534, 23629), (41, 25215, 25310), (41, 26896, 26991), (43, 18490, 18585), (43, 20339, 20434), (43, 22188, 22283), (43, 24037, 24132), (43, 25886, 25981), (43, 27735, 27830), (43, 29584, 29679), (47, 19881, 19976), (47, 22090, 22185), (47, 24299, 24394), (47, 26508, 26603), (47, 28717, 28812)]

def row096_layer001_block004 : List ColouredInterval :=
  [(47, 30926, 31021), (47, 33135, 33230), (47, 35344, 35439), (53, 19663, 19758), (53, 22472, 22567), (53, 25281, 25376), (53, 28090, 28185), (53, 30899, 30994), (53, 33708, 33803), (59, 20886, 20981), (59, 24367, 24462), (59, 27848, 27943), (59, 31329, 31424), (59, 34810, 34905), (61, 18605, 18700), (61, 22326, 22421)]

def row096_layer001_block005 : List ColouredInterval :=
  [(61, 26047, 26142), (61, 29768, 29863), (61, 33489, 33584), (67, 22445, 22540), (67, 26934, 27029), (67, 31423, 31518), (67, 35912, 36007), (71, 20164, 20259), (71, 25205, 25300), (71, 30246, 30341), (71, 35287, 35382), (73, 21316, 21411), (73, 26645, 26740), (73, 31974, 32069), (79, 18723, 18818), (79, 24964, 25059)]

def row096_layer001_block006 : List ColouredInterval :=
  [(79, 31205, 31300), (83, 20667, 20762), (83, 27556, 27651), (83, 34445, 34540), (89, 23763, 23858), (89, 31684, 31779)]

def row096_layer001_chunks : List (List ColouredInterval) :=
  [row096_layer001_block000, row096_layer001_block001, row096_layer001_block002, row096_layer001_block003, row096_layer001_block004, row096_layer001_block005, row096_layer001_block006]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row096_layer001_intervals

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row096_layer001_arithmetic : LayerArithmeticValid row096.height { lower := 18240, upper := 36480, M := 16 } := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row096_layer001_arithmetic

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row096_layer001_enumeration :
    activePowerIntervalList 96 16 18240 36480 = row096_layer001_intervals := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row096_layer001_enumeration

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row096_layer001_pairs000 :
    row096_layer001_block000.all (fun I => row096_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row096_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row096_layer001_pairs000

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row096_layer001_pairs001 :
    row096_layer001_block001.all (fun I => row096_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row096_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row096_layer001_pairs001

import research.tasks.«B699-Binomial».runs.«20260909-low-index-structure-b41a5a63».lean.FiniteCover
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.WitnessBridge
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.LayerParts
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.PairChunks

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row094_height : HeightCertificateDatum := { i := 94, r := 31, s := 65, n0Power10 := 9 }

def row094_goods : List GoodSegment := [
  { lower := 190, upper := 274, witness := RowWitness.topPrime 181 },
  { lower := 275, upper := 364, witness := RowWitness.topPrime 271 },
  { lower := 365, upper := 452, witness := RowWitness.topPrime 359 },
  { lower := 453, upper := 542, witness := RowWitness.topPrime 449 },
  { lower := 543, upper := 634, witness := RowWitness.topPrime 541 },
  { lower := 635, upper := 724, witness := RowWitness.topPrime 631 },
  { lower := 725, upper := 812, witness := RowWitness.topPrime 719 },
  { lower := 813, upper := 904, witness := RowWitness.topPrime 811 },
  { lower := 905, upper := 980, witness := RowWitness.topPrime 887 },
  { lower := 981, upper := 1070, witness := RowWitness.topPrime 977 },
  { lower := 1071, upper := 1162, witness := RowWitness.topPrime 1069 },
  { lower := 1163, upper := 1256, witness := RowWitness.topPrime 1163 },
  { lower := 1257, upper := 1342, witness := RowWitness.topPrime 1249 },
  { lower := 1343, upper := 1420, witness := RowWitness.topPrime 1327 },
  { lower := 1421, upper := 1502, witness := RowWitness.topPrime 1409 },
  { lower := 1503, upper := 1592, witness := RowWitness.topPrime 1499 },
  { lower := 1593, upper := 1676, witness := RowWitness.topPrime 1583 },
  { lower := 1677, upper := 1762, witness := RowWitness.topPrime 1669 },
  { lower := 1763, upper := 1852, witness := RowWitness.topPrime 1759 },
  { lower := 1853, upper := 1940, witness := RowWitness.topPrime 1847 },
  { lower := 1941, upper := 2026, witness := RowWitness.topPrime 1933 },
  { lower := 2027, upper := 2120, witness := RowWitness.topPrime 2027 },
  { lower := 2121, upper := 2206, witness := RowWitness.topPrime 2113 },
  { lower := 2207, upper := 2300, witness := RowWitness.topPrime 2207 },
  { lower := 2301, upper := 2390, witness := RowWitness.topPrime 2297 },
  { lower := 2391, upper := 2482, witness := RowWitness.topPrime 2389 },
  { lower := 2483, upper := 2570, witness := RowWitness.topPrime 2477 },
  { lower := 2571, upper := 2650, witness := RowWitness.topPrime 2557 },
  { lower := 2651, upper := 2740, witness := RowWitness.topPrime 2647 },
  { lower := 2741, upper := 2834, witness := RowWitness.topPrime 2741 },
  { lower := 2835, upper := 2926, witness := RowWitness.topPrime 2833 },
  { lower := 2927, upper := 3020, witness := RowWitness.topPrime 2927 },
  { lower := 3021, upper := 3112, witness := RowWitness.topPrime 3019 },
  { lower := 3113, upper := 3202, witness := RowWitness.topPrime 3109 },
  { lower := 3203, upper := 3296, witness := RowWitness.topPrime 3203 },
  { lower := 3297, upper := 3364, witness := RowWitness.topPrime 3271 },
  { lower := 3365, upper := 3454, witness := RowWitness.topPrime 3361 },
  { lower := 3455, upper := 3542, witness := RowWitness.topPrime 3449 },
  { lower := 3543, upper := 3634, witness := RowWitness.topPrime 3541 },
  { lower := 3635, upper := 3724, witness := RowWitness.topPrime 3631 },
  { lower := 3725, upper := 3812, witness := RowWitness.topPrime 3719 },
  { lower := 3813, upper := 3896, witness := RowWitness.topPrime 3803 },
  { lower := 3897, upper := 3982, witness := RowWitness.topPrime 3889 },
  { lower := 3983, upper := 4060, witness := RowWitness.topPrime 3967 },
  { lower := 4061, upper := 4150, witness := RowWitness.topPrime 4057 },
  { lower := 4151, upper := 4232, witness := RowWitness.topPrime 4139 },
  { lower := 4233, upper := 4324, witness := RowWitness.topPrime 4231 },
  { lower := 4325, upper := 4390, witness := RowWitness.topPrime 4297 },
  { lower := 4391, upper := 4484, witness := RowWitness.topPrime 4391 },
  { lower := 4485, upper := 4576, witness := RowWitness.topPrime 4483 },
  { lower := 4577, upper := 4660, witness := RowWitness.topPrime 4567 },
  { lower := 4661, upper := 4750, witness := RowWitness.topPrime 4657 },
  { lower := 4751, upper := 4844, witness := RowWitness.topPrime 4751 },
  { lower := 4845, upper := 4924, witness := RowWitness.topPrime 4831 },
  { lower := 4925, upper := 5012, witness := RowWitness.topPrime 4919 },
  { lower := 5013, upper := 5104, witness := RowWitness.topPrime 5011 },
  { lower := 5105, upper := 5194, witness := RowWitness.topPrime 5101 },
  { lower := 5195, upper := 5282, witness := RowWitness.topPrime 5189 },
  { lower := 5283, upper := 5374, witness := RowWitness.topPrime 5281 },
  { lower := 5375, upper := 5444, witness := RowWitness.topPrime 5351 },
  { lower := 5445, upper := 5536, witness := RowWitness.topPrime 5443 },
  { lower := 5537, upper := 5624, witness := RowWitness.topPrime 5531 },
  { lower := 5625, upper := 5716, witness := RowWitness.topPrime 5623 },
  { lower := 5717, upper := 5810, witness := RowWitness.topPrime 5717 },
  { lower := 5811, upper := 5900, witness := RowWitness.topPrime 5807 },
  { lower := 5901, upper := 5990, witness := RowWitness.topPrime 5897 },
  { lower := 5991, upper := 6080, witness := RowWitness.topPrime 5987 },
  { lower := 6081, upper := 6172, witness := RowWitness.topPrime 6079 },
  { lower := 6173, upper := 6266, witness := RowWitness.topPrime 6173 },
  { lower := 6267, upper := 6356, witness := RowWitness.topPrime 6263 },
  { lower := 6357, upper := 6446, witness := RowWitness.topPrime 6353 },
  { lower := 6447, upper := 6520, witness := RowWitness.topPrime 6427 },
  { lower := 6521, upper := 6614, witness := RowWitness.topPrime 6521 },
  { lower := 6615, upper := 6700, witness := RowWitness.topPrime 6607 },
  { lower := 6701, upper := 6794, witness := RowWitness.topPrime 6701 },
  { lower := 6795, upper := 6886, witness := RowWitness.topPrime 6793 },
  { lower := 6887, upper := 6976, witness := RowWitness.topPrime 6883 },
  { lower := 6977, upper := 7070, witness := RowWitness.topPrime 6977 },
  { lower := 7071, upper := 7162, witness := RowWitness.topPrime 7069 },
  { lower := 7163, upper := 7252, witness := RowWitness.topPrime 7159 },
  { lower := 7253, upper := 7346, witness := RowWitness.topPrime 7253 },
  { lower := 7347, upper := 7426, witness := RowWitness.topPrime 7333 },
  { lower := 7427, upper := 7510, witness := RowWitness.topPrime 7417 },
  { lower := 7511, upper := 7600, witness := RowWitness.topPrime 7507 },
  { lower := 7601, upper := 7684, witness := RowWitness.topPrime 7591 },
  { lower := 7685, upper := 7774, witness := RowWitness.topPrime 7681 },
  { lower := 7775, upper := 7852, witness := RowWitness.topPrime 7759 },
  { lower := 7853, upper := 7946, witness := RowWitness.topPrime 7853 },
  { lower := 7947, upper := 8030, witness := RowWitness.topPrime 7937 },
  { lower := 8031, upper := 8110, witness := RowWitness.topPrime 8017 },
  { lower := 8111, upper := 8204, witness := RowWitness.topPrime 8111 },
  { lower := 8205, upper := 8284, witness := RowWitness.topPrime 8191 },
  { lower := 8285, upper := 8366, witness := RowWitness.topPrime 8273 },
  { lower := 8367, upper := 8456, witness := RowWitness.topPrime 8363 },
  { lower := 8457, upper := 8540, witness := RowWitness.topPrime 8447 },
  { lower := 8541, upper := 8632, witness := RowWitness.topPrime 8539 },
  { lower := 8633, upper := 8722, witness := RowWitness.topPrime 8629 },
  { lower := 8723, upper := 8741, witness := RowWitness.topPrime 8719 },
  { lower := 8750, upper := 8840, witness := RowWitness.topPrime 8747 },
  { lower := 8841, upper := 8843, witness := RowWitness.topPrime 8839 },
  { lower := 8993, upper := 9064, witness := RowWitness.topPrime 8971 },
  { lower := 9065, upper := 9071, witness := RowWitness.topPrime 9059 },
  { lower := 9245, upper := 9334, witness := RowWitness.topPrime 9241 },
  { lower := 9335, upper := 9344, witness := RowWitness.topPrime 9323 },
  { lower := 9375, upper := 9410, witness := RowWitness.topPrime 9371 },
  { lower := 9522, upper := 9570, witness := RowWitness.topPrime 9521 },
  { lower := 9583, upper := 9644, witness := RowWitness.topPrime 9551 },
  { lower := 9645, upper := 9697, witness := RowWitness.topPrime 9643 },
  { lower := 10051, upper := 10132, witness := RowWitness.topPrime 10039 },
  { lower := 10133, upper := 10179, witness := RowWitness.topPrime 10133 },
  { lower := 10240, upper := 10299, witness := RowWitness.topPrime 10223 },
  { lower := 10580, upper := 10660, witness := RowWitness.topPrime 10567 },
  { lower := 10661, upper := 10741, witness := RowWitness.topPrime 10657 },
  { lower := 10935, upper := 11002, witness := RowWitness.topPrime 10909 },
  { lower := 11003, upper := 11045, witness := RowWitness.topPrime 11003 },
  { lower := 11109, upper := 11186, witness := RowWitness.topPrime 11093 },
  { lower := 11187, upper := 11202, witness := RowWitness.topPrime 11177 },
  { lower := 11236, upper := 11306, witness := RowWitness.topPrime 11213 },
  { lower := 11307, upper := 11343, witness := RowWitness.topPrime 11299 },
  { lower := 11664, upper := 11731, witness := RowWitness.topPrime 11657 },
  { lower := 11774, upper := 11836, witness := RowWitness.topPrime 11743 },
  { lower := 11837, upper := 11860, witness := RowWitness.topPrime 11833 },
  { lower := 12005, upper := 12072, witness := RowWitness.topPrime 11987 },
  { lower := 12321, upper := 12381, witness := RowWitness.topPrime 12301 },
  { lower := 12393, upper := 12414, witness := RowWitness.topPrime 12391 },
  { lower := 12482, upper := 12486, witness := RowWitness.topPrime 12479 },
  { lower := 12493, upper := 12584, witness := RowWitness.topPrime 12491 },
  { lower := 12585, upper := 12586, witness := RowWitness.topPrime 12583 },
  { lower := 13125, upper := 13214, witness := RowWitness.topPrime 13121 },
  { lower := 13215, upper := 13218, witness := RowWitness.topPrime 13187 },
  { lower := 13454, upper := 13544, witness := RowWitness.topPrime 13451 },
  { lower := 13545, upper := 13549, witness := RowWitness.topPrime 13537 },
  { lower := 13718, upper := 13804, witness := RowWitness.topPrime 13711 },
  { lower := 13805, upper := 13843, witness := RowWitness.topPrime 13799 },
  { lower := 13851, upper := 13871, witness := RowWitness.topPrime 13841 },
  { lower := 13924, upper := 13944, witness := RowWitness.topPrime 13921 },
  { lower := 14336, upper := 14390, witness := RowWitness.topPrime 14327 },
  { lower := 14406, upper := 14494, witness := RowWitness.topPrime 14401 },
  { lower := 14495, upper := 14499, witness := RowWitness.topPrime 14489 },
  { lower := 14641, upper := 14673, witness := RowWitness.topPrime 14639 },
  { lower := 14792, upper := 14832, witness := RowWitness.topPrime 14783 },
  { lower := 14884, upper := 14885, witness := RowWitness.topPrime 14879 },
  { lower := 15123, upper := 15214, witness := RowWitness.topPrime 15121 },
  { lower := 15215, upper := 15222, witness := RowWitness.topPrime 15199 },
  { lower := 15376, upper := 15466, witness := RowWitness.topPrime 15373 },
  { lower := 15467, upper := 15469, witness := RowWitness.topPrime 15467 },
  { lower := 15979, upper := 16066, witness := RowWitness.topPrime 15973 },
  { lower := 16067, upper := 16080, witness := RowWitness.topPrime 16067 },
  { lower := 16384, upper := 16474, witness := RowWitness.topPrime 16381 },
  { lower := 16475, upper := 16477, witness := RowWitness.topPrime 16453 },
  { lower := 16810, upper := 16880, witness := RowWitness.topPrime 16787 },
  { lower := 16881, upper := 16913, witness := RowWitness.topPrime 16879 },
  { lower := 17303, upper := 17391, witness := RowWitness.topPrime 17299 },
  { lower := 17496, upper := 17498, witness := RowWitness.topPrime 17491 },
  { lower := 17576, upper := 17589, witness := RowWitness.topPrime 17573 },
  { lower := 18490, upper := 18574, witness := RowWitness.topPrime 18481 },
  { lower := 18575, upper := 18583, witness := RowWitness.topPrime 18553 },
  { lower := 18634, upper := 18698, witness := RowWitness.topPrime 18617 },
  { lower := 18723, upper := 18727, witness := RowWitness.topPrime 18719 },
  { lower := 18750, upper := 18816, witness := RowWitness.topPrime 18749 },
  { lower := 19208, upper := 19259, witness := RowWitness.topPrime 19207 },
  { lower := 19663, upper := 19754, witness := RowWitness.topPrime 19661 },
  { lower := 19755, upper := 19756, witness := RowWitness.topPrime 19753 },
  { lower := 19773, upper := 19776, witness := RowWitness.topPrime 19763 },
  { lower := 20172, upper := 20254, witness := RowWitness.topPrime 20161 },
  { lower := 20255, upper := 20257, witness := RowWitness.topPrime 20249 },
  { lower := 20535, upper := 20573, witness := RowWitness.topPrime 20533 },
  { lower := 20577, upper := 20628, witness := RowWitness.topPrime 20563 },
  { lower := 20667, upper := 20670, witness := RowWitness.topPrime 20663 },
  { lower := 21316, upper := 21389, witness := RowWitness.topPrime 21313 },
  { lower := 21870, upper := 21956, witness := RowWitness.topPrime 21863 },
  { lower := 21957, upper := 21968, witness := RowWitness.topPrime 21943 },
  { lower := 21970, upper := 21997, witness := RowWitness.topPrime 21961 },
  { lower := 22472, upper := 22538, witness := RowWitness.topPrime 22469 },
  { lower := 24010, upper := 24100, witness := RowWitness.topPrime 24007 },
  { lower := 24101, upper := 24130, witness := RowWitness.topPrime 24097 },
  { lower := 24367, upper := 24452, witness := RowWitness.topPrime 24359 },
  { lower := 24453, upper := 24460, witness := RowWitness.topPrime 24443 },
  { lower := 24576, upper := 24664, witness := RowWitness.topPrime 24571 },
  { lower := 24665, upper := 24669, witness := RowWitness.topPrime 24659 },
  { lower := 25000, upper := 25057, witness := RowWitness.topPrime 24989 },
  { lower := 25215, upper := 25282, witness := RowWitness.topPrime 25189 },
  { lower := 25283, upper := 25308, witness := RowWitness.topPrime 25261 },
  { lower := 26411, upper := 26457, witness := RowWitness.topPrime 26407 },
  { lower := 26934, upper := 26989, witness := RowWitness.topPrime 26927 },
  { lower := 28125, upper := 28183, witness := RowWitness.topPrime 28123 },
  { lower := 28577, upper := 28654, witness := RowWitness.topPrime 28573 },
  { lower := 29791, upper := 29861, witness := RowWitness.topPrime 29789 },
  { lower := 30258, upper := 30339, witness := RowWitness.topPrime 30253 },
  { lower := 31213, upper := 31286, witness := RowWitness.topPrime 31193 },
  { lower := 31287, upper := 31306, witness := RowWitness.topPrime 31277 },
  { lower := 31329, upper := 31343, witness := RowWitness.topPrime 31327 },
  { lower := 31433, upper := 31490, witness := RowWitness.topPrime 31397 },
  { lower := 31491, upper := 31516, witness := RowWitness.topPrime 31489 },
  { lower := 32805, upper := 32861, witness := RowWitness.topPrime 32803 },
  { lower := 34375, upper := 34388, witness := RowWitness.topPrime 34369 },
  { lower := 34391, upper := 34474, witness := RowWitness.topPrime 34381 },
  { lower := 34475, upper := 34484, witness := RowWitness.topPrime 34471 },
  { lower := 36517, upper := 36590, witness := RowWitness.topPrime 36497 },
  { lower := 36591, upper := 36594, witness := RowWitness.topPrime 36587 },
  { lower := 37303, upper := 37303, witness := RowWitness.topPrime 37277 },
  { lower := 37500, upper := 37539, witness := RowWitness.topPrime 37493 },
  { lower := 39326, upper := 39416, witness := RowWitness.topPrime 39323 },
  { lower := 39417, upper := 39419, witness := RowWitness.topPrime 39409 },
  { lower := 40401, upper := 40421, witness := RowWitness.topPrime 40387 },
  { lower := 40960, upper := 41024, witness := RowWitness.topPrime 40949 },
  { lower := 43750, upper := 43780, witness := RowWitness.topPrime 43721 },
  { lower := 48013, upper := 48054, witness := RowWitness.topPrime 47981 },
  { lower := 48734, upper := 48761, witness := RowWitness.topPrime 48733 },
  { lower := 48778, upper := 48827, witness := RowWitness.topPrime 48767 },
  { lower := 49152, upper := 49223, witness := RowWitness.topPrime 49139 },
  { lower := 50421, upper := 50503, witness := RowWitness.topPrime 50417 },
  { lower := 55451, upper := 55534, witness := RowWitness.topPrime 55441 },
  { lower := 55535, upper := 55540, witness := RowWitness.topPrime 55529 },
  { lower := 58619, upper := 58657, witness := RowWitness.topPrime 58613 },
  { lower := 59049, upper := 59049, witness := RowWitness.topPrime 59029 },
  { lower := 62500, upper := 62503, witness := RowWitness.topPrime 62497 },
  { lower := 63948, upper := 63962, witness := RowWitness.topPrime 63929 },
  { lower := 65536, upper := 65614, witness := RowWitness.topPrime 65521 },
  { lower := 65615, upper := 65629, witness := RowWitness.topPrime 65609 },
  { lower := 68651, upper := 68683, witness := RowWitness.topPrime 68639 },
  { lower := 68921, upper := 68983, witness := RowWitness.topPrime 68917 },
  { lower := 73205, upper := 73260, witness := RowWitness.topPrime 73189 },
  { lower := 137842, upper := 137874, witness := RowWitness.topPrime 137831 },
  { lower := 146410, upper := 146427, witness := RowWitness.topPrime 146407 },
  { lower := 148955, upper := 148970, witness := RowWitness.topPrime 148949 }
]

def row094_layers : List CoverLayer := [
  { lower := 8742, upper := 17484, M := 22 },
  { lower := 17484, upper := 34968, M := 18 },
  { lower := 34968, upper := 69936, M := 15 },
  { lower := 69936, upper := 139872, M := 12 },
  { lower := 139872, upper := 279744, M := 10 },
  { lower := 279744, upper := 559488, M := 8 },
  { lower := 559488, upper := 1118976, M := 7 },
  { lower := 1118976, upper := 2237952, M := 6 },
  { lower := 2237952, upper := 4475904, M := 5 },
  { lower := 4475904, upper := 8951808, M := 4 },
  { lower := 8951808, upper := 17903616, M := 3 },
  { lower := 17903616, upper := 35807232, M := 3 },
  { lower := 35807232, upper := 71614464, M := 2 },
  { lower := 71614464, upper := 143228928, M := 2 },
  { lower := 143228928, upper := 286457856, M := 2 },
  { lower := 286457856, upper := 572915712, M := 1 },
  { lower := 572915712, upper := 1000000000, M := 1 }
]

def row094 : FiniteCoverRow := {
  height := row094_height,
  goods := row094_goods,
  layers := row094_layers
}


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row094

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row094_good000_checked :
    goodSegmentCheck 94 31 65
      { lower := 190, upper := 274, witness := RowWitness.topPrime 181 } = true := by
  exact good_top_prime_checked (i := 94) (r := 31) (s := 65) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row094_good001_checked :
    goodSegmentCheck 94 31 65
      { lower := 275, upper := 364, witness := RowWitness.topPrime 271 } = true := by
  exact good_top_prime_checked (i := 94) (r := 31) (s := 65) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row094_good002_checked :
    goodSegmentCheck 94 31 65
      { lower := 365, upper := 452, witness := RowWitness.topPrime 359 } = true := by
  exact good_top_prime_checked (i := 94) (r := 31) (s := 65) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row094_good003_checked :
    goodSegmentCheck 94 31 65
      { lower := 453, upper := 542, witness := RowWitness.topPrime 449 } = true := by
  exact good_top_prime_checked (i := 94) (r := 31) (s := 65) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row094_good004_checked :
    goodSegmentCheck 94 31 65
      { lower := 543, upper := 634, witness := RowWitness.topPrime 541 } = true := by
  exact good_top_prime_checked (i := 94) (r := 31) (s := 65) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row094_good005_checked :
    goodSegmentCheck 94 31 65
      { lower := 635, upper := 724, witness := RowWitness.topPrime 631 } = true := by
  exact good_top_prime_checked (i := 94) (r := 31) (s := 65) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row094_good006_checked :
    goodSegmentCheck 94 31 65
      { lower := 725, upper := 812, witness := RowWitness.topPrime 719 } = true := by
  exact good_top_prime_checked (i := 94) (r := 31) (s := 65) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row094_good007_checked :
    goodSegmentCheck 94 31 65
      { lower := 813, upper := 904, witness := RowWitness.topPrime 811 } = true := by
  exact good_top_prime_checked (i := 94) (r := 31) (s := 65) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row094_good008_checked :
    goodSegmentCheck 94 31 65
      { lower := 905, upper := 980, witness := RowWitness.topPrime 887 } = true := by
  exact good_top_prime_checked (i := 94) (r := 31) (s := 65) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row094_good009_checked :
    goodSegmentCheck 94 31 65
      { lower := 981, upper := 1070, witness := RowWitness.topPrime 977 } = true := by
  exact good_top_prime_checked (i := 94) (r := 31) (s := 65) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row094_good010_checked :
    goodSegmentCheck 94 31 65
      { lower := 1071, upper := 1162, witness := RowWitness.topPrime 1069 } = true := by
  exact good_top_prime_checked (i := 94) (r := 31) (s := 65) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row094_good011_checked :
    goodSegmentCheck 94 31 65
      { lower := 1163, upper := 1256, witness := RowWitness.topPrime 1163 } = true := by
  exact good_top_prime_checked (i := 94) (r := 31) (s := 65) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row094_good012_checked :
    goodSegmentCheck 94 31 65
      { lower := 1257, upper := 1342, witness := RowWitness.topPrime 1249 } = true := by
  exact good_top_prime_checked (i := 94) (r := 31) (s := 65) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row094_good013_checked :
    goodSegmentCheck 94 31 65
      { lower := 1343, upper := 1420, witness := RowWitness.topPrime 1327 } = true := by
  exact good_top_prime_checked (i := 94) (r := 31) (s := 65) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row094_good014_checked :
    goodSegmentCheck 94 31 65
      { lower := 1421, upper := 1502, witness := RowWitness.topPrime 1409 } = true := by
  exact good_top_prime_checked (i := 94) (r := 31) (s := 65) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row094_good015_checked :
    goodSegmentCheck 94 31 65
      { lower := 1503, upper := 1592, witness := RowWitness.topPrime 1499 } = true := by
  exact good_top_prime_checked (i := 94) (r := 31) (s := 65) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row094_good000_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row094_good001_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row094_good002_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row094_good003_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row094_good004_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row094_good005_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row094_good006_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row094_good007_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row094_good008_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row094_good009_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row094_good010_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row094_good011_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row094_good012_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row094_good013_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row094_good014_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row094_good015_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row094_good016_checked :
    goodSegmentCheck 94 31 65
      { lower := 1593, upper := 1676, witness := RowWitness.topPrime 1583 } = true := by
  exact good_top_prime_checked (i := 94) (r := 31) (s := 65) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row094_good017_checked :
    goodSegmentCheck 94 31 65
      { lower := 1677, upper := 1762, witness := RowWitness.topPrime 1669 } = true := by
  exact good_top_prime_checked (i := 94) (r := 31) (s := 65) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row094_good018_checked :
    goodSegmentCheck 94 31 65
      { lower := 1763, upper := 1852, witness := RowWitness.topPrime 1759 } = true := by
  exact good_top_prime_checked (i := 94) (r := 31) (s := 65) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row094_good019_checked :
    goodSegmentCheck 94 31 65
      { lower := 1853, upper := 1940, witness := RowWitness.topPrime 1847 } = true := by
  exact good_top_prime_checked (i := 94) (r := 31) (s := 65) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row094_good020_checked :
    goodSegmentCheck 94 31 65
      { lower := 1941, upper := 2026, witness := RowWitness.topPrime 1933 } = true := by
  exact good_top_prime_checked (i := 94) (r := 31) (s := 65) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row094_good021_checked :
    goodSegmentCheck 94 31 65
      { lower := 2027, upper := 2120, witness := RowWitness.topPrime 2027 } = true := by
  exact good_top_prime_checked (i := 94) (r := 31) (s := 65) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row094_good022_checked :
    goodSegmentCheck 94 31 65
      { lower := 2121, upper := 2206, witness := RowWitness.topPrime 2113 } = true := by
  exact good_top_prime_checked (i := 94) (r := 31) (s := 65) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row094_good023_checked :
    goodSegmentCheck 94 31 65
      { lower := 2207, upper := 2300, witness := RowWitness.topPrime 2207 } = true := by
  exact good_top_prime_checked (i := 94) (r := 31) (s := 65) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row094_good024_checked :
    goodSegmentCheck 94 31 65
      { lower := 2301, upper := 2390, witness := RowWitness.topPrime 2297 } = true := by
  exact good_top_prime_checked (i := 94) (r := 31) (s := 65) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row094_good025_checked :
    goodSegmentCheck 94 31 65
      { lower := 2391, upper := 2482, witness := RowWitness.topPrime 2389 } = true := by
  exact good_top_prime_checked (i := 94) (r := 31) (s := 65) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row094_good026_checked :
    goodSegmentCheck 94 31 65
      { lower := 2483, upper := 2570, witness := RowWitness.topPrime 2477 } = true := by
  exact good_top_prime_checked (i := 94) (r := 31) (s := 65) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row094_good027_checked :
    goodSegmentCheck 94 31 65
      { lower := 2571, upper := 2650, witness := RowWitness.topPrime 2557 } = true := by
  exact good_top_prime_checked (i := 94) (r := 31) (s := 65) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row094_good028_checked :
    goodSegmentCheck 94 31 65
      { lower := 2651, upper := 2740, witness := RowWitness.topPrime 2647 } = true := by
  exact good_top_prime_checked (i := 94) (r := 31) (s := 65) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row094_good029_checked :
    goodSegmentCheck 94 31 65
      { lower := 2741, upper := 2834, witness := RowWitness.topPrime 2741 } = true := by
  exact good_top_prime_checked (i := 94) (r := 31) (s := 65) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row094_good030_checked :
    goodSegmentCheck 94 31 65
      { lower := 2835, upper := 2926, witness := RowWitness.topPrime 2833 } = true := by
  exact good_top_prime_checked (i := 94) (r := 31) (s := 65) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row094_good031_checked :
    goodSegmentCheck 94 31 65
      { lower := 2927, upper := 3020, witness := RowWitness.topPrime 2927 } = true := by
  exact good_top_prime_checked (i := 94) (r := 31) (s := 65) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row094_good016_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row094_good017_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row094_good018_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row094_good019_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row094_good020_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row094_good021_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row094_good022_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row094_good023_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row094_good024_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row094_good025_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row094_good026_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row094_good027_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row094_good028_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row094_good029_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row094_good030_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row094_good031_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row094_good032_checked :
    goodSegmentCheck 94 31 65
      { lower := 3021, upper := 3112, witness := RowWitness.topPrime 3019 } = true := by
  exact good_top_prime_checked (i := 94) (r := 31) (s := 65) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row094_good033_checked :
    goodSegmentCheck 94 31 65
      { lower := 3113, upper := 3202, witness := RowWitness.topPrime 3109 } = true := by
  exact good_top_prime_checked (i := 94) (r := 31) (s := 65) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row094_good034_checked :
    goodSegmentCheck 94 31 65
      { lower := 3203, upper := 3296, witness := RowWitness.topPrime 3203 } = true := by
  exact good_top_prime_checked (i := 94) (r := 31) (s := 65) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row094_good035_checked :
    goodSegmentCheck 94 31 65
      { lower := 3297, upper := 3364, witness := RowWitness.topPrime 3271 } = true := by
  exact good_top_prime_checked (i := 94) (r := 31) (s := 65) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row094_good036_checked :
    goodSegmentCheck 94 31 65
      { lower := 3365, upper := 3454, witness := RowWitness.topPrime 3361 } = true := by
  exact good_top_prime_checked (i := 94) (r := 31) (s := 65) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row094_good037_checked :
    goodSegmentCheck 94 31 65
      { lower := 3455, upper := 3542, witness := RowWitness.topPrime 3449 } = true := by
  exact good_top_prime_checked (i := 94) (r := 31) (s := 65) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row094_good038_checked :
    goodSegmentCheck 94 31 65
      { lower := 3543, upper := 3634, witness := RowWitness.topPrime 3541 } = true := by
  exact good_top_prime_checked (i := 94) (r := 31) (s := 65) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row094_good039_checked :
    goodSegmentCheck 94 31 65
      { lower := 3635, upper := 3724, witness := RowWitness.topPrime 3631 } = true := by
  exact good_top_prime_checked (i := 94) (r := 31) (s := 65) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row094_good040_checked :
    goodSegmentCheck 94 31 65
      { lower := 3725, upper := 3812, witness := RowWitness.topPrime 3719 } = true := by
  exact good_top_prime_checked (i := 94) (r := 31) (s := 65) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row094_good041_checked :
    goodSegmentCheck 94 31 65
      { lower := 3813, upper := 3896, witness := RowWitness.topPrime 3803 } = true := by
  exact good_top_prime_checked (i := 94) (r := 31) (s := 65) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row094_good042_checked :
    goodSegmentCheck 94 31 65
      { lower := 3897, upper := 3982, witness := RowWitness.topPrime 3889 } = true := by
  exact good_top_prime_checked (i := 94) (r := 31) (s := 65) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row094_good043_checked :
    goodSegmentCheck 94 31 65
      { lower := 3983, upper := 4060, witness := RowWitness.topPrime 3967 } = true := by
  exact good_top_prime_checked (i := 94) (r := 31) (s := 65) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row094_good044_checked :
    goodSegmentCheck 94 31 65
      { lower := 4061, upper := 4150, witness := RowWitness.topPrime 4057 } = true := by
  exact good_top_prime_checked (i := 94) (r := 31) (s := 65) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row094_good045_checked :
    goodSegmentCheck 94 31 65
      { lower := 4151, upper := 4232, witness := RowWitness.topPrime 4139 } = true := by
  exact good_top_prime_checked (i := 94) (r := 31) (s := 65) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row094_good046_checked :
    goodSegmentCheck 94 31 65
      { lower := 4233, upper := 4324, witness := RowWitness.topPrime 4231 } = true := by
  exact good_top_prime_checked (i := 94) (r := 31) (s := 65) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row094_good047_checked :
    goodSegmentCheck 94 31 65
      { lower := 4325, upper := 4390, witness := RowWitness.topPrime 4297 } = true := by
  exact good_top_prime_checked (i := 94) (r := 31) (s := 65) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row094_good032_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row094_good033_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row094_good034_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row094_good035_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row094_good036_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row094_good037_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row094_good038_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row094_good039_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row094_good040_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row094_good041_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row094_good042_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row094_good043_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row094_good044_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row094_good045_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row094_good046_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row094_good047_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row094_good048_checked :
    goodSegmentCheck 94 31 65
      { lower := 4391, upper := 4484, witness := RowWitness.topPrime 4391 } = true := by
  exact good_top_prime_checked (i := 94) (r := 31) (s := 65) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row094_good049_checked :
    goodSegmentCheck 94 31 65
      { lower := 4485, upper := 4576, witness := RowWitness.topPrime 4483 } = true := by
  exact good_top_prime_checked (i := 94) (r := 31) (s := 65) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row094_good050_checked :
    goodSegmentCheck 94 31 65
      { lower := 4577, upper := 4660, witness := RowWitness.topPrime 4567 } = true := by
  exact good_top_prime_checked (i := 94) (r := 31) (s := 65) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row094_good051_checked :
    goodSegmentCheck 94 31 65
      { lower := 4661, upper := 4750, witness := RowWitness.topPrime 4657 } = true := by
  exact good_top_prime_checked (i := 94) (r := 31) (s := 65) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row094_good052_checked :
    goodSegmentCheck 94 31 65
      { lower := 4751, upper := 4844, witness := RowWitness.topPrime 4751 } = true := by
  exact good_top_prime_checked (i := 94) (r := 31) (s := 65) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row094_good053_checked :
    goodSegmentCheck 94 31 65
      { lower := 4845, upper := 4924, witness := RowWitness.topPrime 4831 } = true := by
  exact good_top_prime_checked (i := 94) (r := 31) (s := 65) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row094_good054_checked :
    goodSegmentCheck 94 31 65
      { lower := 4925, upper := 5012, witness := RowWitness.topPrime 4919 } = true := by
  exact good_top_prime_checked (i := 94) (r := 31) (s := 65) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row094_good055_checked :
    goodSegmentCheck 94 31 65
      { lower := 5013, upper := 5104, witness := RowWitness.topPrime 5011 } = true := by
  exact good_top_prime_checked (i := 94) (r := 31) (s := 65) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row094_good056_checked :
    goodSegmentCheck 94 31 65
      { lower := 5105, upper := 5194, witness := RowWitness.topPrime 5101 } = true := by
  exact good_top_prime_checked (i := 94) (r := 31) (s := 65) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row094_good057_checked :
    goodSegmentCheck 94 31 65
      { lower := 5195, upper := 5282, witness := RowWitness.topPrime 5189 } = true := by
  exact good_top_prime_checked (i := 94) (r := 31) (s := 65) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row094_good058_checked :
    goodSegmentCheck 94 31 65
      { lower := 5283, upper := 5374, witness := RowWitness.topPrime 5281 } = true := by
  exact good_top_prime_checked (i := 94) (r := 31) (s := 65) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row094_good059_checked :
    goodSegmentCheck 94 31 65
      { lower := 5375, upper := 5444, witness := RowWitness.topPrime 5351 } = true := by
  exact good_top_prime_checked (i := 94) (r := 31) (s := 65) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row094_good060_checked :
    goodSegmentCheck 94 31 65
      { lower := 5445, upper := 5536, witness := RowWitness.topPrime 5443 } = true := by
  exact good_top_prime_checked (i := 94) (r := 31) (s := 65) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row094_good061_checked :
    goodSegmentCheck 94 31 65
      { lower := 5537, upper := 5624, witness := RowWitness.topPrime 5531 } = true := by
  exact good_top_prime_checked (i := 94) (r := 31) (s := 65) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row094_good062_checked :
    goodSegmentCheck 94 31 65
      { lower := 5625, upper := 5716, witness := RowWitness.topPrime 5623 } = true := by
  exact good_top_prime_checked (i := 94) (r := 31) (s := 65) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row094_good063_checked :
    goodSegmentCheck 94 31 65
      { lower := 5717, upper := 5810, witness := RowWitness.topPrime 5717 } = true := by
  exact good_top_prime_checked (i := 94) (r := 31) (s := 65) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row094_good048_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row094_good049_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row094_good050_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row094_good051_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row094_good052_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row094_good053_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row094_good054_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row094_good055_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row094_good056_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row094_good057_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row094_good058_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row094_good059_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row094_good060_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row094_good061_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row094_good062_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row094_good063_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row094_good064_checked :
    goodSegmentCheck 94 31 65
      { lower := 5811, upper := 5900, witness := RowWitness.topPrime 5807 } = true := by
  exact good_top_prime_checked (i := 94) (r := 31) (s := 65) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row094_good065_checked :
    goodSegmentCheck 94 31 65
      { lower := 5901, upper := 5990, witness := RowWitness.topPrime 5897 } = true := by
  exact good_top_prime_checked (i := 94) (r := 31) (s := 65) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row094_good066_checked :
    goodSegmentCheck 94 31 65
      { lower := 5991, upper := 6080, witness := RowWitness.topPrime 5987 } = true := by
  exact good_top_prime_checked (i := 94) (r := 31) (s := 65) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row094_good067_checked :
    goodSegmentCheck 94 31 65
      { lower := 6081, upper := 6172, witness := RowWitness.topPrime 6079 } = true := by
  exact good_top_prime_checked (i := 94) (r := 31) (s := 65) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row094_good068_checked :
    goodSegmentCheck 94 31 65
      { lower := 6173, upper := 6266, witness := RowWitness.topPrime 6173 } = true := by
  exact good_top_prime_checked (i := 94) (r := 31) (s := 65) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row094_good069_checked :
    goodSegmentCheck 94 31 65
      { lower := 6267, upper := 6356, witness := RowWitness.topPrime 6263 } = true := by
  exact good_top_prime_checked (i := 94) (r := 31) (s := 65) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row094_good070_checked :
    goodSegmentCheck 94 31 65
      { lower := 6357, upper := 6446, witness := RowWitness.topPrime 6353 } = true := by
  exact good_top_prime_checked (i := 94) (r := 31) (s := 65) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row094_good071_checked :
    goodSegmentCheck 94 31 65
      { lower := 6447, upper := 6520, witness := RowWitness.topPrime 6427 } = true := by
  exact good_top_prime_checked (i := 94) (r := 31) (s := 65) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row094_good072_checked :
    goodSegmentCheck 94 31 65
      { lower := 6521, upper := 6614, witness := RowWitness.topPrime 6521 } = true := by
  exact good_top_prime_checked (i := 94) (r := 31) (s := 65) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row094_good073_checked :
    goodSegmentCheck 94 31 65
      { lower := 6615, upper := 6700, witness := RowWitness.topPrime 6607 } = true := by
  exact good_top_prime_checked (i := 94) (r := 31) (s := 65) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row094_good074_checked :
    goodSegmentCheck 94 31 65
      { lower := 6701, upper := 6794, witness := RowWitness.topPrime 6701 } = true := by
  exact good_top_prime_checked (i := 94) (r := 31) (s := 65) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row094_good075_checked :
    goodSegmentCheck 94 31 65
      { lower := 6795, upper := 6886, witness := RowWitness.topPrime 6793 } = true := by
  exact good_top_prime_checked (i := 94) (r := 31) (s := 65) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row094_good076_checked :
    goodSegmentCheck 94 31 65
      { lower := 6887, upper := 6976, witness := RowWitness.topPrime 6883 } = true := by
  exact good_top_prime_checked (i := 94) (r := 31) (s := 65) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row094_good077_checked :
    goodSegmentCheck 94 31 65
      { lower := 6977, upper := 7070, witness := RowWitness.topPrime 6977 } = true := by
  exact good_top_prime_checked (i := 94) (r := 31) (s := 65) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row094_good078_checked :
    goodSegmentCheck 94 31 65
      { lower := 7071, upper := 7162, witness := RowWitness.topPrime 7069 } = true := by
  exact good_top_prime_checked (i := 94) (r := 31) (s := 65) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row094_good079_checked :
    goodSegmentCheck 94 31 65
      { lower := 7163, upper := 7252, witness := RowWitness.topPrime 7159 } = true := by
  exact good_top_prime_checked (i := 94) (r := 31) (s := 65) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row094_good064_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row094_good065_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row094_good066_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row094_good067_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row094_good068_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row094_good069_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row094_good070_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row094_good071_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row094_good072_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row094_good073_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row094_good074_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row094_good075_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row094_good076_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row094_good077_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row094_good078_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row094_good079_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row094_good080_checked :
    goodSegmentCheck 94 31 65
      { lower := 7253, upper := 7346, witness := RowWitness.topPrime 7253 } = true := by
  exact good_top_prime_checked (i := 94) (r := 31) (s := 65) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row094_good081_checked :
    goodSegmentCheck 94 31 65
      { lower := 7347, upper := 7426, witness := RowWitness.topPrime 7333 } = true := by
  exact good_top_prime_checked (i := 94) (r := 31) (s := 65) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row094_good082_checked :
    goodSegmentCheck 94 31 65
      { lower := 7427, upper := 7510, witness := RowWitness.topPrime 7417 } = true := by
  exact good_top_prime_checked (i := 94) (r := 31) (s := 65) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row094_good083_checked :
    goodSegmentCheck 94 31 65
      { lower := 7511, upper := 7600, witness := RowWitness.topPrime 7507 } = true := by
  exact good_top_prime_checked (i := 94) (r := 31) (s := 65) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row094_good084_checked :
    goodSegmentCheck 94 31 65
      { lower := 7601, upper := 7684, witness := RowWitness.topPrime 7591 } = true := by
  exact good_top_prime_checked (i := 94) (r := 31) (s := 65) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row094_good085_checked :
    goodSegmentCheck 94 31 65
      { lower := 7685, upper := 7774, witness := RowWitness.topPrime 7681 } = true := by
  exact good_top_prime_checked (i := 94) (r := 31) (s := 65) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row094_good086_checked :
    goodSegmentCheck 94 31 65
      { lower := 7775, upper := 7852, witness := RowWitness.topPrime 7759 } = true := by
  exact good_top_prime_checked (i := 94) (r := 31) (s := 65) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row094_good087_checked :
    goodSegmentCheck 94 31 65
      { lower := 7853, upper := 7946, witness := RowWitness.topPrime 7853 } = true := by
  exact good_top_prime_checked (i := 94) (r := 31) (s := 65) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row094_good088_checked :
    goodSegmentCheck 94 31 65
      { lower := 7947, upper := 8030, witness := RowWitness.topPrime 7937 } = true := by
  exact good_top_prime_checked (i := 94) (r := 31) (s := 65) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row094_good089_checked :
    goodSegmentCheck 94 31 65
      { lower := 8031, upper := 8110, witness := RowWitness.topPrime 8017 } = true := by
  exact good_top_prime_checked (i := 94) (r := 31) (s := 65) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row094_good090_checked :
    goodSegmentCheck 94 31 65
      { lower := 8111, upper := 8204, witness := RowWitness.topPrime 8111 } = true := by
  exact good_top_prime_checked (i := 94) (r := 31) (s := 65) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row094_good091_checked :
    goodSegmentCheck 94 31 65
      { lower := 8205, upper := 8284, witness := RowWitness.topPrime 8191 } = true := by
  exact good_top_prime_checked (i := 94) (r := 31) (s := 65) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row094_good092_checked :
    goodSegmentCheck 94 31 65
      { lower := 8285, upper := 8366, witness := RowWitness.topPrime 8273 } = true := by
  exact good_top_prime_checked (i := 94) (r := 31) (s := 65) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row094_good093_checked :
    goodSegmentCheck 94 31 65
      { lower := 8367, upper := 8456, witness := RowWitness.topPrime 8363 } = true := by
  exact good_top_prime_checked (i := 94) (r := 31) (s := 65) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row094_good094_checked :
    goodSegmentCheck 94 31 65
      { lower := 8457, upper := 8540, witness := RowWitness.topPrime 8447 } = true := by
  exact good_top_prime_checked (i := 94) (r := 31) (s := 65) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row094_good095_checked :
    goodSegmentCheck 94 31 65
      { lower := 8541, upper := 8632, witness := RowWitness.topPrime 8539 } = true := by
  exact good_top_prime_checked (i := 94) (r := 31) (s := 65) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row094_good080_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row094_good081_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row094_good082_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row094_good083_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row094_good084_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row094_good085_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row094_good086_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row094_good087_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row094_good088_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row094_good089_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row094_good090_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row094_good091_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row094_good092_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row094_good093_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row094_good094_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row094_good095_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row094_good096_checked :
    goodSegmentCheck 94 31 65
      { lower := 8633, upper := 8722, witness := RowWitness.topPrime 8629 } = true := by
  exact good_top_prime_checked (i := 94) (r := 31) (s := 65) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row094_good097_checked :
    goodSegmentCheck 94 31 65
      { lower := 8723, upper := 8741, witness := RowWitness.topPrime 8719 } = true := by
  exact good_top_prime_checked (i := 94) (r := 31) (s := 65) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row094_good098_checked :
    goodSegmentCheck 94 31 65
      { lower := 8750, upper := 8840, witness := RowWitness.topPrime 8747 } = true := by
  exact good_top_prime_checked (i := 94) (r := 31) (s := 65) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row094_good099_checked :
    goodSegmentCheck 94 31 65
      { lower := 8841, upper := 8843, witness := RowWitness.topPrime 8839 } = true := by
  exact good_top_prime_checked (i := 94) (r := 31) (s := 65) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row094_good100_checked :
    goodSegmentCheck 94 31 65
      { lower := 8993, upper := 9064, witness := RowWitness.topPrime 8971 } = true := by
  exact good_top_prime_checked (i := 94) (r := 31) (s := 65) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row094_good101_checked :
    goodSegmentCheck 94 31 65
      { lower := 9065, upper := 9071, witness := RowWitness.topPrime 9059 } = true := by
  exact good_top_prime_checked (i := 94) (r := 31) (s := 65) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row094_good102_checked :
    goodSegmentCheck 94 31 65
      { lower := 9245, upper := 9334, witness := RowWitness.topPrime 9241 } = true := by
  exact good_top_prime_checked (i := 94) (r := 31) (s := 65) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row094_good103_checked :
    goodSegmentCheck 94 31 65
      { lower := 9335, upper := 9344, witness := RowWitness.topPrime 9323 } = true := by
  exact good_top_prime_checked (i := 94) (r := 31) (s := 65) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row094_good104_checked :
    goodSegmentCheck 94 31 65
      { lower := 9375, upper := 9410, witness := RowWitness.topPrime 9371 } = true := by
  exact good_top_prime_checked (i := 94) (r := 31) (s := 65) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row094_good105_checked :
    goodSegmentCheck 94 31 65
      { lower := 9522, upper := 9570, witness := RowWitness.topPrime 9521 } = true := by
  exact good_top_prime_checked (i := 94) (r := 31) (s := 65) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row094_good106_checked :
    goodSegmentCheck 94 31 65
      { lower := 9583, upper := 9644, witness := RowWitness.topPrime 9551 } = true := by
  exact good_top_prime_checked (i := 94) (r := 31) (s := 65) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row094_good107_checked :
    goodSegmentCheck 94 31 65
      { lower := 9645, upper := 9697, witness := RowWitness.topPrime 9643 } = true := by
  exact good_top_prime_checked (i := 94) (r := 31) (s := 65) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row094_good108_checked :
    goodSegmentCheck 94 31 65
      { lower := 10051, upper := 10132, witness := RowWitness.topPrime 10039 } = true := by
  exact good_top_prime_checked (i := 94) (r := 31) (s := 65) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row094_good109_checked :
    goodSegmentCheck 94 31 65
      { lower := 10133, upper := 10179, witness := RowWitness.topPrime 10133 } = true := by
  exact good_top_prime_checked (i := 94) (r := 31) (s := 65) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row094_good110_checked :
    goodSegmentCheck 94 31 65
      { lower := 10240, upper := 10299, witness := RowWitness.topPrime 10223 } = true := by
  exact good_top_prime_checked (i := 94) (r := 31) (s := 65) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row094_good111_checked :
    goodSegmentCheck 94 31 65
      { lower := 10580, upper := 10660, witness := RowWitness.topPrime 10567 } = true := by
  exact good_top_prime_checked (i := 94) (r := 31) (s := 65) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row094_good096_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row094_good097_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row094_good098_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row094_good099_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row094_good100_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row094_good101_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row094_good102_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row094_good103_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row094_good104_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row094_good105_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row094_good106_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row094_good107_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row094_good108_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row094_good109_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row094_good110_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row094_good111_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row094_good112_checked :
    goodSegmentCheck 94 31 65
      { lower := 10661, upper := 10741, witness := RowWitness.topPrime 10657 } = true := by
  exact good_top_prime_checked (i := 94) (r := 31) (s := 65) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row094_good113_checked :
    goodSegmentCheck 94 31 65
      { lower := 10935, upper := 11002, witness := RowWitness.topPrime 10909 } = true := by
  exact good_top_prime_checked (i := 94) (r := 31) (s := 65) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row094_good114_checked :
    goodSegmentCheck 94 31 65
      { lower := 11003, upper := 11045, witness := RowWitness.topPrime 11003 } = true := by
  exact good_top_prime_checked (i := 94) (r := 31) (s := 65) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row094_good115_checked :
    goodSegmentCheck 94 31 65
      { lower := 11109, upper := 11186, witness := RowWitness.topPrime 11093 } = true := by
  exact good_top_prime_checked (i := 94) (r := 31) (s := 65) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row094_good116_checked :
    goodSegmentCheck 94 31 65
      { lower := 11187, upper := 11202, witness := RowWitness.topPrime 11177 } = true := by
  exact good_top_prime_checked (i := 94) (r := 31) (s := 65) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row094_good117_checked :
    goodSegmentCheck 94 31 65
      { lower := 11236, upper := 11306, witness := RowWitness.topPrime 11213 } = true := by
  exact good_top_prime_checked (i := 94) (r := 31) (s := 65) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row094_good118_checked :
    goodSegmentCheck 94 31 65
      { lower := 11307, upper := 11343, witness := RowWitness.topPrime 11299 } = true := by
  exact good_top_prime_checked (i := 94) (r := 31) (s := 65) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row094_good119_checked :
    goodSegmentCheck 94 31 65
      { lower := 11664, upper := 11731, witness := RowWitness.topPrime 11657 } = true := by
  exact good_top_prime_checked (i := 94) (r := 31) (s := 65) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row094_good120_checked :
    goodSegmentCheck 94 31 65
      { lower := 11774, upper := 11836, witness := RowWitness.topPrime 11743 } = true := by
  exact good_top_prime_checked (i := 94) (r := 31) (s := 65) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row094_good121_checked :
    goodSegmentCheck 94 31 65
      { lower := 11837, upper := 11860, witness := RowWitness.topPrime 11833 } = true := by
  exact good_top_prime_checked (i := 94) (r := 31) (s := 65) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row094_good122_checked :
    goodSegmentCheck 94 31 65
      { lower := 12005, upper := 12072, witness := RowWitness.topPrime 11987 } = true := by
  exact good_top_prime_checked (i := 94) (r := 31) (s := 65) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row094_good123_checked :
    goodSegmentCheck 94 31 65
      { lower := 12321, upper := 12381, witness := RowWitness.topPrime 12301 } = true := by
  exact good_top_prime_checked (i := 94) (r := 31) (s := 65) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row094_good124_checked :
    goodSegmentCheck 94 31 65
      { lower := 12393, upper := 12414, witness := RowWitness.topPrime 12391 } = true := by
  exact good_top_prime_checked (i := 94) (r := 31) (s := 65) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row094_good125_checked :
    goodSegmentCheck 94 31 65
      { lower := 12482, upper := 12486, witness := RowWitness.topPrime 12479 } = true := by
  exact good_top_prime_checked (i := 94) (r := 31) (s := 65) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row094_good126_checked :
    goodSegmentCheck 94 31 65
      { lower := 12493, upper := 12584, witness := RowWitness.topPrime 12491 } = true := by
  exact good_top_prime_checked (i := 94) (r := 31) (s := 65) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row094_good127_checked :
    goodSegmentCheck 94 31 65
      { lower := 12585, upper := 12586, witness := RowWitness.topPrime 12583 } = true := by
  exact good_top_prime_checked (i := 94) (r := 31) (s := 65) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row094_good112_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row094_good113_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row094_good114_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row094_good115_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row094_good116_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row094_good117_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row094_good118_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row094_good119_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row094_good120_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row094_good121_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row094_good122_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row094_good123_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row094_good124_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row094_good125_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row094_good126_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row094_good127_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row094_good128_checked :
    goodSegmentCheck 94 31 65
      { lower := 13125, upper := 13214, witness := RowWitness.topPrime 13121 } = true := by
  exact good_top_prime_checked (i := 94) (r := 31) (s := 65) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row094_good129_checked :
    goodSegmentCheck 94 31 65
      { lower := 13215, upper := 13218, witness := RowWitness.topPrime 13187 } = true := by
  exact good_top_prime_checked (i := 94) (r := 31) (s := 65) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row094_good130_checked :
    goodSegmentCheck 94 31 65
      { lower := 13454, upper := 13544, witness := RowWitness.topPrime 13451 } = true := by
  exact good_top_prime_checked (i := 94) (r := 31) (s := 65) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row094_good131_checked :
    goodSegmentCheck 94 31 65
      { lower := 13545, upper := 13549, witness := RowWitness.topPrime 13537 } = true := by
  exact good_top_prime_checked (i := 94) (r := 31) (s := 65) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row094_good132_checked :
    goodSegmentCheck 94 31 65
      { lower := 13718, upper := 13804, witness := RowWitness.topPrime 13711 } = true := by
  exact good_top_prime_checked (i := 94) (r := 31) (s := 65) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row094_good133_checked :
    goodSegmentCheck 94 31 65
      { lower := 13805, upper := 13843, witness := RowWitness.topPrime 13799 } = true := by
  exact good_top_prime_checked (i := 94) (r := 31) (s := 65) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row094_good134_checked :
    goodSegmentCheck 94 31 65
      { lower := 13851, upper := 13871, witness := RowWitness.topPrime 13841 } = true := by
  exact good_top_prime_checked (i := 94) (r := 31) (s := 65) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row094_good135_checked :
    goodSegmentCheck 94 31 65
      { lower := 13924, upper := 13944, witness := RowWitness.topPrime 13921 } = true := by
  exact good_top_prime_checked (i := 94) (r := 31) (s := 65) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row094_good136_checked :
    goodSegmentCheck 94 31 65
      { lower := 14336, upper := 14390, witness := RowWitness.topPrime 14327 } = true := by
  exact good_top_prime_checked (i := 94) (r := 31) (s := 65) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row094_good137_checked :
    goodSegmentCheck 94 31 65
      { lower := 14406, upper := 14494, witness := RowWitness.topPrime 14401 } = true := by
  exact good_top_prime_checked (i := 94) (r := 31) (s := 65) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row094_good138_checked :
    goodSegmentCheck 94 31 65
      { lower := 14495, upper := 14499, witness := RowWitness.topPrime 14489 } = true := by
  exact good_top_prime_checked (i := 94) (r := 31) (s := 65) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row094_good139_checked :
    goodSegmentCheck 94 31 65
      { lower := 14641, upper := 14673, witness := RowWitness.topPrime 14639 } = true := by
  exact good_top_prime_checked (i := 94) (r := 31) (s := 65) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row094_good140_checked :
    goodSegmentCheck 94 31 65
      { lower := 14792, upper := 14832, witness := RowWitness.topPrime 14783 } = true := by
  exact good_top_prime_checked (i := 94) (r := 31) (s := 65) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row094_good141_checked :
    goodSegmentCheck 94 31 65
      { lower := 14884, upper := 14885, witness := RowWitness.topPrime 14879 } = true := by
  exact good_top_prime_checked (i := 94) (r := 31) (s := 65) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row094_good142_checked :
    goodSegmentCheck 94 31 65
      { lower := 15123, upper := 15214, witness := RowWitness.topPrime 15121 } = true := by
  exact good_top_prime_checked (i := 94) (r := 31) (s := 65) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row094_good143_checked :
    goodSegmentCheck 94 31 65
      { lower := 15215, upper := 15222, witness := RowWitness.topPrime 15199 } = true := by
  exact good_top_prime_checked (i := 94) (r := 31) (s := 65) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row094_good128_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row094_good129_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row094_good130_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row094_good131_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row094_good132_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row094_good133_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row094_good134_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row094_good135_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row094_good136_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row094_good137_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row094_good138_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row094_good139_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row094_good140_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row094_good141_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row094_good142_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row094_good143_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row094_good144_checked :
    goodSegmentCheck 94 31 65
      { lower := 15376, upper := 15466, witness := RowWitness.topPrime 15373 } = true := by
  exact good_top_prime_checked (i := 94) (r := 31) (s := 65) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row094_good145_checked :
    goodSegmentCheck 94 31 65
      { lower := 15467, upper := 15469, witness := RowWitness.topPrime 15467 } = true := by
  exact good_top_prime_checked (i := 94) (r := 31) (s := 65) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row094_good146_checked :
    goodSegmentCheck 94 31 65
      { lower := 15979, upper := 16066, witness := RowWitness.topPrime 15973 } = true := by
  exact good_top_prime_checked (i := 94) (r := 31) (s := 65) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row094_good147_checked :
    goodSegmentCheck 94 31 65
      { lower := 16067, upper := 16080, witness := RowWitness.topPrime 16067 } = true := by
  exact good_top_prime_checked (i := 94) (r := 31) (s := 65) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row094_good148_checked :
    goodSegmentCheck 94 31 65
      { lower := 16384, upper := 16474, witness := RowWitness.topPrime 16381 } = true := by
  exact good_top_prime_checked (i := 94) (r := 31) (s := 65) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row094_good149_checked :
    goodSegmentCheck 94 31 65
      { lower := 16475, upper := 16477, witness := RowWitness.topPrime 16453 } = true := by
  exact good_top_prime_checked (i := 94) (r := 31) (s := 65) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row094_good150_checked :
    goodSegmentCheck 94 31 65
      { lower := 16810, upper := 16880, witness := RowWitness.topPrime 16787 } = true := by
  exact good_top_prime_checked (i := 94) (r := 31) (s := 65) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row094_good151_checked :
    goodSegmentCheck 94 31 65
      { lower := 16881, upper := 16913, witness := RowWitness.topPrime 16879 } = true := by
  exact good_top_prime_checked (i := 94) (r := 31) (s := 65) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row094_good152_checked :
    goodSegmentCheck 94 31 65
      { lower := 17303, upper := 17391, witness := RowWitness.topPrime 17299 } = true := by
  exact good_top_prime_checked (i := 94) (r := 31) (s := 65) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row094_good153_checked :
    goodSegmentCheck 94 31 65
      { lower := 17496, upper := 17498, witness := RowWitness.topPrime 17491 } = true := by
  exact good_top_prime_checked (i := 94) (r := 31) (s := 65) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row094_good154_checked :
    goodSegmentCheck 94 31 65
      { lower := 17576, upper := 17589, witness := RowWitness.topPrime 17573 } = true := by
  exact good_top_prime_checked (i := 94) (r := 31) (s := 65) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row094_good155_checked :
    goodSegmentCheck 94 31 65
      { lower := 18490, upper := 18574, witness := RowWitness.topPrime 18481 } = true := by
  exact good_top_prime_checked (i := 94) (r := 31) (s := 65) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row094_good156_checked :
    goodSegmentCheck 94 31 65
      { lower := 18575, upper := 18583, witness := RowWitness.topPrime 18553 } = true := by
  exact good_top_prime_checked (i := 94) (r := 31) (s := 65) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row094_good157_checked :
    goodSegmentCheck 94 31 65
      { lower := 18634, upper := 18698, witness := RowWitness.topPrime 18617 } = true := by
  exact good_top_prime_checked (i := 94) (r := 31) (s := 65) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row094_good158_checked :
    goodSegmentCheck 94 31 65
      { lower := 18723, upper := 18727, witness := RowWitness.topPrime 18719 } = true := by
  exact good_top_prime_checked (i := 94) (r := 31) (s := 65) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row094_good159_checked :
    goodSegmentCheck 94 31 65
      { lower := 18750, upper := 18816, witness := RowWitness.topPrime 18749 } = true := by
  exact good_top_prime_checked (i := 94) (r := 31) (s := 65) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row094_good144_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row094_good145_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row094_good146_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row094_good147_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row094_good148_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row094_good149_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row094_good150_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row094_good151_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row094_good152_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row094_good153_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row094_good154_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row094_good155_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row094_good156_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row094_good157_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row094_good158_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row094_good159_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row094_good160_checked :
    goodSegmentCheck 94 31 65
      { lower := 19208, upper := 19259, witness := RowWitness.topPrime 19207 } = true := by
  exact good_top_prime_checked (i := 94) (r := 31) (s := 65) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row094_good161_checked :
    goodSegmentCheck 94 31 65
      { lower := 19663, upper := 19754, witness := RowWitness.topPrime 19661 } = true := by
  exact good_top_prime_checked (i := 94) (r := 31) (s := 65) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row094_good162_checked :
    goodSegmentCheck 94 31 65
      { lower := 19755, upper := 19756, witness := RowWitness.topPrime 19753 } = true := by
  exact good_top_prime_checked (i := 94) (r := 31) (s := 65) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row094_good163_checked :
    goodSegmentCheck 94 31 65
      { lower := 19773, upper := 19776, witness := RowWitness.topPrime 19763 } = true := by
  exact good_top_prime_checked (i := 94) (r := 31) (s := 65) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row094_good164_checked :
    goodSegmentCheck 94 31 65
      { lower := 20172, upper := 20254, witness := RowWitness.topPrime 20161 } = true := by
  exact good_top_prime_checked (i := 94) (r := 31) (s := 65) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row094_good165_checked :
    goodSegmentCheck 94 31 65
      { lower := 20255, upper := 20257, witness := RowWitness.topPrime 20249 } = true := by
  exact good_top_prime_checked (i := 94) (r := 31) (s := 65) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row094_good166_checked :
    goodSegmentCheck 94 31 65
      { lower := 20535, upper := 20573, witness := RowWitness.topPrime 20533 } = true := by
  exact good_top_prime_checked (i := 94) (r := 31) (s := 65) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row094_good167_checked :
    goodSegmentCheck 94 31 65
      { lower := 20577, upper := 20628, witness := RowWitness.topPrime 20563 } = true := by
  exact good_top_prime_checked (i := 94) (r := 31) (s := 65) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row094_good168_checked :
    goodSegmentCheck 94 31 65
      { lower := 20667, upper := 20670, witness := RowWitness.topPrime 20663 } = true := by
  exact good_top_prime_checked (i := 94) (r := 31) (s := 65) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row094_good169_checked :
    goodSegmentCheck 94 31 65
      { lower := 21316, upper := 21389, witness := RowWitness.topPrime 21313 } = true := by
  exact good_top_prime_checked (i := 94) (r := 31) (s := 65) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row094_good170_checked :
    goodSegmentCheck 94 31 65
      { lower := 21870, upper := 21956, witness := RowWitness.topPrime 21863 } = true := by
  exact good_top_prime_checked (i := 94) (r := 31) (s := 65) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row094_good171_checked :
    goodSegmentCheck 94 31 65
      { lower := 21957, upper := 21968, witness := RowWitness.topPrime 21943 } = true := by
  exact good_top_prime_checked (i := 94) (r := 31) (s := 65) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row094_good172_checked :
    goodSegmentCheck 94 31 65
      { lower := 21970, upper := 21997, witness := RowWitness.topPrime 21961 } = true := by
  exact good_top_prime_checked (i := 94) (r := 31) (s := 65) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row094_good173_checked :
    goodSegmentCheck 94 31 65
      { lower := 22472, upper := 22538, witness := RowWitness.topPrime 22469 } = true := by
  exact good_top_prime_checked (i := 94) (r := 31) (s := 65) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row094_good174_checked :
    goodSegmentCheck 94 31 65
      { lower := 24010, upper := 24100, witness := RowWitness.topPrime 24007 } = true := by
  exact good_top_prime_checked (i := 94) (r := 31) (s := 65) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row094_good175_checked :
    goodSegmentCheck 94 31 65
      { lower := 24101, upper := 24130, witness := RowWitness.topPrime 24097 } = true := by
  exact good_top_prime_checked (i := 94) (r := 31) (s := 65) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row094_good160_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row094_good161_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row094_good162_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row094_good163_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row094_good164_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row094_good165_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row094_good166_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row094_good167_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row094_good168_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row094_good169_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row094_good170_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row094_good171_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row094_good172_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row094_good173_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row094_good174_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row094_good175_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row094_good176_checked :
    goodSegmentCheck 94 31 65
      { lower := 24367, upper := 24452, witness := RowWitness.topPrime 24359 } = true := by
  exact good_top_prime_checked (i := 94) (r := 31) (s := 65) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row094_good177_checked :
    goodSegmentCheck 94 31 65
      { lower := 24453, upper := 24460, witness := RowWitness.topPrime 24443 } = true := by
  exact good_top_prime_checked (i := 94) (r := 31) (s := 65) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row094_good178_checked :
    goodSegmentCheck 94 31 65
      { lower := 24576, upper := 24664, witness := RowWitness.topPrime 24571 } = true := by
  exact good_top_prime_checked (i := 94) (r := 31) (s := 65) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row094_good179_checked :
    goodSegmentCheck 94 31 65
      { lower := 24665, upper := 24669, witness := RowWitness.topPrime 24659 } = true := by
  exact good_top_prime_checked (i := 94) (r := 31) (s := 65) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row094_good180_checked :
    goodSegmentCheck 94 31 65
      { lower := 25000, upper := 25057, witness := RowWitness.topPrime 24989 } = true := by
  exact good_top_prime_checked (i := 94) (r := 31) (s := 65) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row094_good181_checked :
    goodSegmentCheck 94 31 65
      { lower := 25215, upper := 25282, witness := RowWitness.topPrime 25189 } = true := by
  exact good_top_prime_checked (i := 94) (r := 31) (s := 65) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row094_good182_checked :
    goodSegmentCheck 94 31 65
      { lower := 25283, upper := 25308, witness := RowWitness.topPrime 25261 } = true := by
  exact good_top_prime_checked (i := 94) (r := 31) (s := 65) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row094_good183_checked :
    goodSegmentCheck 94 31 65
      { lower := 26411, upper := 26457, witness := RowWitness.topPrime 26407 } = true := by
  exact good_top_prime_checked (i := 94) (r := 31) (s := 65) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row094_good184_checked :
    goodSegmentCheck 94 31 65
      { lower := 26934, upper := 26989, witness := RowWitness.topPrime 26927 } = true := by
  exact good_top_prime_checked (i := 94) (r := 31) (s := 65) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row094_good185_checked :
    goodSegmentCheck 94 31 65
      { lower := 28125, upper := 28183, witness := RowWitness.topPrime 28123 } = true := by
  exact good_top_prime_checked (i := 94) (r := 31) (s := 65) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row094_good186_checked :
    goodSegmentCheck 94 31 65
      { lower := 28577, upper := 28654, witness := RowWitness.topPrime 28573 } = true := by
  exact good_top_prime_checked (i := 94) (r := 31) (s := 65) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row094_good187_checked :
    goodSegmentCheck 94 31 65
      { lower := 29791, upper := 29861, witness := RowWitness.topPrime 29789 } = true := by
  exact good_top_prime_checked (i := 94) (r := 31) (s := 65) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row094_good188_checked :
    goodSegmentCheck 94 31 65
      { lower := 30258, upper := 30339, witness := RowWitness.topPrime 30253 } = true := by
  exact good_top_prime_checked (i := 94) (r := 31) (s := 65) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row094_good189_checked :
    goodSegmentCheck 94 31 65
      { lower := 31213, upper := 31286, witness := RowWitness.topPrime 31193 } = true := by
  exact good_top_prime_checked (i := 94) (r := 31) (s := 65) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row094_good190_checked :
    goodSegmentCheck 94 31 65
      { lower := 31287, upper := 31306, witness := RowWitness.topPrime 31277 } = true := by
  exact good_top_prime_checked (i := 94) (r := 31) (s := 65) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row094_good191_checked :
    goodSegmentCheck 94 31 65
      { lower := 31329, upper := 31343, witness := RowWitness.topPrime 31327 } = true := by
  exact good_top_prime_checked (i := 94) (r := 31) (s := 65) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row094_good176_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row094_good177_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row094_good178_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row094_good179_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row094_good180_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row094_good181_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row094_good182_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row094_good183_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row094_good184_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row094_good185_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row094_good186_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row094_good187_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row094_good188_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row094_good189_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row094_good190_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row094_good191_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row094_good192_checked :
    goodSegmentCheck 94 31 65
      { lower := 31433, upper := 31490, witness := RowWitness.topPrime 31397 } = true := by
  exact good_top_prime_checked (i := 94) (r := 31) (s := 65) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row094_good193_checked :
    goodSegmentCheck 94 31 65
      { lower := 31491, upper := 31516, witness := RowWitness.topPrime 31489 } = true := by
  exact good_top_prime_checked (i := 94) (r := 31) (s := 65) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row094_good194_checked :
    goodSegmentCheck 94 31 65
      { lower := 32805, upper := 32861, witness := RowWitness.topPrime 32803 } = true := by
  exact good_top_prime_checked (i := 94) (r := 31) (s := 65) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row094_good195_checked :
    goodSegmentCheck 94 31 65
      { lower := 34375, upper := 34388, witness := RowWitness.topPrime 34369 } = true := by
  exact good_top_prime_checked (i := 94) (r := 31) (s := 65) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row094_good196_checked :
    goodSegmentCheck 94 31 65
      { lower := 34391, upper := 34474, witness := RowWitness.topPrime 34381 } = true := by
  exact good_top_prime_checked (i := 94) (r := 31) (s := 65) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row094_good197_checked :
    goodSegmentCheck 94 31 65
      { lower := 34475, upper := 34484, witness := RowWitness.topPrime 34471 } = true := by
  exact good_top_prime_checked (i := 94) (r := 31) (s := 65) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row094_good198_checked :
    goodSegmentCheck 94 31 65
      { lower := 36517, upper := 36590, witness := RowWitness.topPrime 36497 } = true := by
  exact good_top_prime_checked (i := 94) (r := 31) (s := 65) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row094_good199_checked :
    goodSegmentCheck 94 31 65
      { lower := 36591, upper := 36594, witness := RowWitness.topPrime 36587 } = true := by
  exact good_top_prime_checked (i := 94) (r := 31) (s := 65) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row094_good200_checked :
    goodSegmentCheck 94 31 65
      { lower := 37303, upper := 37303, witness := RowWitness.topPrime 37277 } = true := by
  exact good_top_prime_checked (i := 94) (r := 31) (s := 65) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row094_good201_checked :
    goodSegmentCheck 94 31 65
      { lower := 37500, upper := 37539, witness := RowWitness.topPrime 37493 } = true := by
  exact good_top_prime_checked (i := 94) (r := 31) (s := 65) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row094_good202_checked :
    goodSegmentCheck 94 31 65
      { lower := 39326, upper := 39416, witness := RowWitness.topPrime 39323 } = true := by
  exact good_top_prime_checked (i := 94) (r := 31) (s := 65) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row094_good203_checked :
    goodSegmentCheck 94 31 65
      { lower := 39417, upper := 39419, witness := RowWitness.topPrime 39409 } = true := by
  exact good_top_prime_checked (i := 94) (r := 31) (s := 65) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row094_good204_checked :
    goodSegmentCheck 94 31 65
      { lower := 40401, upper := 40421, witness := RowWitness.topPrime 40387 } = true := by
  exact good_top_prime_checked (i := 94) (r := 31) (s := 65) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row094_good205_checked :
    goodSegmentCheck 94 31 65
      { lower := 40960, upper := 41024, witness := RowWitness.topPrime 40949 } = true := by
  exact good_top_prime_checked (i := 94) (r := 31) (s := 65) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row094_good206_checked :
    goodSegmentCheck 94 31 65
      { lower := 43750, upper := 43780, witness := RowWitness.topPrime 43721 } = true := by
  exact good_top_prime_checked (i := 94) (r := 31) (s := 65) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row094_good207_checked :
    goodSegmentCheck 94 31 65
      { lower := 48013, upper := 48054, witness := RowWitness.topPrime 47981 } = true := by
  exact good_top_prime_checked (i := 94) (r := 31) (s := 65) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row094_good192_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row094_good193_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row094_good194_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row094_good195_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row094_good196_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row094_good197_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row094_good198_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row094_good199_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row094_good200_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row094_good201_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row094_good202_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row094_good203_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row094_good204_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row094_good205_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row094_good206_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row094_good207_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row094_good208_checked :
    goodSegmentCheck 94 31 65
      { lower := 48734, upper := 48761, witness := RowWitness.topPrime 48733 } = true := by
  exact good_top_prime_checked (i := 94) (r := 31) (s := 65) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row094_good209_checked :
    goodSegmentCheck 94 31 65
      { lower := 48778, upper := 48827, witness := RowWitness.topPrime 48767 } = true := by
  exact good_top_prime_checked (i := 94) (r := 31) (s := 65) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row094_good210_checked :
    goodSegmentCheck 94 31 65
      { lower := 49152, upper := 49223, witness := RowWitness.topPrime 49139 } = true := by
  exact good_top_prime_checked (i := 94) (r := 31) (s := 65) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row094_good211_checked :
    goodSegmentCheck 94 31 65
      { lower := 50421, upper := 50503, witness := RowWitness.topPrime 50417 } = true := by
  exact good_top_prime_checked (i := 94) (r := 31) (s := 65) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row094_good212_checked :
    goodSegmentCheck 94 31 65
      { lower := 55451, upper := 55534, witness := RowWitness.topPrime 55441 } = true := by
  exact good_top_prime_checked (i := 94) (r := 31) (s := 65) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row094_good213_checked :
    goodSegmentCheck 94 31 65
      { lower := 55535, upper := 55540, witness := RowWitness.topPrime 55529 } = true := by
  exact good_top_prime_checked (i := 94) (r := 31) (s := 65) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row094_good214_checked :
    goodSegmentCheck 94 31 65
      { lower := 58619, upper := 58657, witness := RowWitness.topPrime 58613 } = true := by
  exact good_top_prime_checked (i := 94) (r := 31) (s := 65) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row094_good215_checked :
    goodSegmentCheck 94 31 65
      { lower := 59049, upper := 59049, witness := RowWitness.topPrime 59029 } = true := by
  exact good_top_prime_checked (i := 94) (r := 31) (s := 65) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row094_good216_checked :
    goodSegmentCheck 94 31 65
      { lower := 62500, upper := 62503, witness := RowWitness.topPrime 62497 } = true := by
  exact good_top_prime_checked (i := 94) (r := 31) (s := 65) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row094_good217_checked :
    goodSegmentCheck 94 31 65
      { lower := 63948, upper := 63962, witness := RowWitness.topPrime 63929 } = true := by
  exact good_top_prime_checked (i := 94) (r := 31) (s := 65) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row094_good218_checked :
    goodSegmentCheck 94 31 65
      { lower := 65536, upper := 65614, witness := RowWitness.topPrime 65521 } = true := by
  exact good_top_prime_checked (i := 94) (r := 31) (s := 65) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row094_good219_checked :
    goodSegmentCheck 94 31 65
      { lower := 65615, upper := 65629, witness := RowWitness.topPrime 65609 } = true := by
  exact good_top_prime_checked (i := 94) (r := 31) (s := 65) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row094_good220_checked :
    goodSegmentCheck 94 31 65
      { lower := 68651, upper := 68683, witness := RowWitness.topPrime 68639 } = true := by
  exact good_top_prime_checked (i := 94) (r := 31) (s := 65) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row094_good221_checked :
    goodSegmentCheck 94 31 65
      { lower := 68921, upper := 68983, witness := RowWitness.topPrime 68917 } = true := by
  exact good_top_prime_checked (i := 94) (r := 31) (s := 65) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row094_good222_checked :
    goodSegmentCheck 94 31 65
      { lower := 73205, upper := 73260, witness := RowWitness.topPrime 73189 } = true := by
  exact good_top_prime_checked (i := 94) (r := 31) (s := 65) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row094_good223_checked :
    goodSegmentCheck 94 31 65
      { lower := 137842, upper := 137874, witness := RowWitness.topPrime 137831 } = true := by
  exact good_top_prime_checked (i := 94) (r := 31) (s := 65) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row094_good208_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row094_good209_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row094_good210_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row094_good211_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row094_good212_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row094_good213_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row094_good214_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row094_good215_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row094_good216_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row094_good217_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row094_good218_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row094_good219_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row094_good220_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row094_good221_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row094_good222_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row094_good223_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row094_good224_checked :
    goodSegmentCheck 94 31 65
      { lower := 146410, upper := 146427, witness := RowWitness.topPrime 146407 } = true := by
  exact good_top_prime_checked (i := 94) (r := 31) (s := 65) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row094_good225_checked :
    goodSegmentCheck 94 31 65
      { lower := 148955, upper := 148970, witness := RowWitness.topPrime 148949 } = true := by
  exact good_top_prime_checked (i := 94) (r := 31) (s := 65) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row094_good224_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row094_good225_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row094_goods_checked :
    row094.goods.all (goodSegmentCheck row094.height.i row094.height.r row094.height.s) = true := by
  change row094_goods.all (goodSegmentCheck 94 31 65) = true
  simp only [row094_goods, List.all_cons, List.all_nil,
    row094_good000_checked,
    row094_good001_checked,
    row094_good002_checked,
    row094_good003_checked,
    row094_good004_checked,
    row094_good005_checked,
    row094_good006_checked,
    row094_good007_checked,
    row094_good008_checked,
    row094_good009_checked,
    row094_good010_checked,
    row094_good011_checked,
    row094_good012_checked,
    row094_good013_checked,
    row094_good014_checked,
    row094_good015_checked,
    row094_good016_checked,
    row094_good017_checked,
    row094_good018_checked,
    row094_good019_checked,
    row094_good020_checked,
    row094_good021_checked,
    row094_good022_checked,
    row094_good023_checked,
    row094_good024_checked,
    row094_good025_checked,
    row094_good026_checked,
    row094_good027_checked,
    row094_good028_checked,
    row094_good029_checked,
    row094_good030_checked,
    row094_good031_checked,
    row094_good032_checked,
    row094_good033_checked,
    row094_good034_checked,
    row094_good035_checked,
    row094_good036_checked,
    row094_good037_checked,
    row094_good038_checked,
    row094_good039_checked,
    row094_good040_checked,
    row094_good041_checked,
    row094_good042_checked,
    row094_good043_checked,
    row094_good044_checked,
    row094_good045_checked,
    row094_good046_checked,
    row094_good047_checked,
    row094_good048_checked,
    row094_good049_checked,
    row094_good050_checked,
    row094_good051_checked,
    row094_good052_checked,
    row094_good053_checked,
    row094_good054_checked,
    row094_good055_checked,
    row094_good056_checked,
    row094_good057_checked,
    row094_good058_checked,
    row094_good059_checked,
    row094_good060_checked,
    row094_good061_checked,
    row094_good062_checked,
    row094_good063_checked,
    row094_good064_checked,
    row094_good065_checked,
    row094_good066_checked,
    row094_good067_checked,
    row094_good068_checked,
    row094_good069_checked,
    row094_good070_checked,
    row094_good071_checked,
    row094_good072_checked,
    row094_good073_checked,
    row094_good074_checked,
    row094_good075_checked,
    row094_good076_checked,
    row094_good077_checked,
    row094_good078_checked,
    row094_good079_checked,
    row094_good080_checked,
    row094_good081_checked,
    row094_good082_checked,
    row094_good083_checked,
    row094_good084_checked,
    row094_good085_checked,
    row094_good086_checked,
    row094_good087_checked,
    row094_good088_checked,
    row094_good089_checked,
    row094_good090_checked,
    row094_good091_checked,
    row094_good092_checked,
    row094_good093_checked,
    row094_good094_checked,
    row094_good095_checked,
    row094_good096_checked,
    row094_good097_checked,
    row094_good098_checked,
    row094_good099_checked,
    row094_good100_checked,
    row094_good101_checked,
    row094_good102_checked,
    row094_good103_checked,
    row094_good104_checked,
    row094_good105_checked,
    row094_good106_checked,
    row094_good107_checked,
    row094_good108_checked,
    row094_good109_checked,
    row094_good110_checked,
    row094_good111_checked,
    row094_good112_checked,
    row094_good113_checked,
    row094_good114_checked,
    row094_good115_checked,
    row094_good116_checked,
    row094_good117_checked,
    row094_good118_checked,
    row094_good119_checked,
    row094_good120_checked,
    row094_good121_checked,
    row094_good122_checked,
    row094_good123_checked,
    row094_good124_checked,
    row094_good125_checked,
    row094_good126_checked,
    row094_good127_checked,
    row094_good128_checked,
    row094_good129_checked,
    row094_good130_checked,
    row094_good131_checked,
    row094_good132_checked,
    row094_good133_checked,
    row094_good134_checked,
    row094_good135_checked,
    row094_good136_checked,
    row094_good137_checked,
    row094_good138_checked,
    row094_good139_checked,
    row094_good140_checked,
    row094_good141_checked,
    row094_good142_checked,
    row094_good143_checked,
    row094_good144_checked,
    row094_good145_checked,
    row094_good146_checked,
    row094_good147_checked,
    row094_good148_checked,
    row094_good149_checked,
    row094_good150_checked,
    row094_good151_checked,
    row094_good152_checked,
    row094_good153_checked,
    row094_good154_checked,
    row094_good155_checked,
    row094_good156_checked,
    row094_good157_checked,
    row094_good158_checked,
    row094_good159_checked,
    row094_good160_checked,
    row094_good161_checked,
    row094_good162_checked,
    row094_good163_checked,
    row094_good164_checked,
    row094_good165_checked,
    row094_good166_checked,
    row094_good167_checked,
    row094_good168_checked,
    row094_good169_checked,
    row094_good170_checked,
    row094_good171_checked,
    row094_good172_checked,
    row094_good173_checked,
    row094_good174_checked,
    row094_good175_checked,
    row094_good176_checked,
    row094_good177_checked,
    row094_good178_checked,
    row094_good179_checked,
    row094_good180_checked,
    row094_good181_checked,
    row094_good182_checked,
    row094_good183_checked,
    row094_good184_checked,
    row094_good185_checked,
    row094_good186_checked,
    row094_good187_checked,
    row094_good188_checked,
    row094_good189_checked,
    row094_good190_checked,
    row094_good191_checked,
    row094_good192_checked,
    row094_good193_checked,
    row094_good194_checked,
    row094_good195_checked,
    row094_good196_checked,
    row094_good197_checked,
    row094_good198_checked,
    row094_good199_checked,
    row094_good200_checked,
    row094_good201_checked,
    row094_good202_checked,
    row094_good203_checked,
    row094_good204_checked,
    row094_good205_checked,
    row094_good206_checked,
    row094_good207_checked,
    row094_good208_checked,
    row094_good209_checked,
    row094_good210_checked,
    row094_good211_checked,
    row094_good212_checked,
    row094_good213_checked,
    row094_good214_checked,
    row094_good215_checked,
    row094_good216_checked,
    row094_good217_checked,
    row094_good218_checked,
    row094_good219_checked,
    row094_good220_checked,
    row094_good221_checked,
    row094_good222_checked,
    row094_good223_checked,
    row094_good224_checked,
    row094_good225_checked, Bool.true_and]

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row094_goods_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row094_registered :
    decide (row094.height ∈ heightCertificateData) = true := by
  decide +kernel

theorem row094_small_checked :
    coverCheck (2 * row094.height.i + 2) (row094.height.i * (row094.height.i - 1) - 1)
      (row094.goods.map goodSegmentBounds) = true := by
  decide +kernel

theorem row094_layerCover_checked :
    coverCheck (row094.height.i * (row094.height.i - 1)) (row094.height.n0 - 1)
      (row094.layers.map CoverLayer.bounds) = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row094_registered
#print axioms B699LowIndex.LowIndexLean513dc7cc.row094_small_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row094_layerCover_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row094_bounds : List NatInterval :=
  [(190, 274), (275, 364), (365, 452), (453, 542), (543, 634), (635, 724), (725, 812), (813, 904), (905, 980), (981, 1070), (1071, 1162), (1163, 1256), (1257, 1342), (1343, 1420), (1421, 1502), (1503, 1592), (1593, 1676), (1677, 1762), (1763, 1852), (1853, 1940), (1941, 2026), (2027, 2120), (2121, 2206), (2207, 2300), (2301, 2390), (2391, 2482), (2483, 2570), (2571, 2650), (2651, 2740), (2741, 2834), (2835, 2926), (2927, 3020), (3021, 3112), (3113, 3202), (3203, 3296), (3297, 3364), (3365, 3454), (3455, 3542), (3543, 3634), (3635, 3724), (3725, 3812), (3813, 3896), (3897, 3982), (3983, 4060), (4061, 4150), (4151, 4232), (4233, 4324), (4325, 4390), (4391, 4484), (4485, 4576), (4577, 4660), (4661, 4750), (4751, 4844), (4845, 4924), (4925, 5012), (5013, 5104), (5105, 5194), (5195, 5282), (5283, 5374), (5375, 5444), (5445, 5536), (5537, 5624), (5625, 5716), (5717, 5810), (5811, 5900), (5901, 5990), (5991, 6080), (6081, 6172), (6173, 6266), (6267, 6356), (6357, 6446), (6447, 6520), (6521, 6614), (6615, 6700), (6701, 6794), (6795, 6886), (6887, 6976), (6977, 7070), (7071, 7162), (7163, 7252), (7253, 7346), (7347, 7426), (7427, 7510), (7511, 7600), (7601, 7684), (7685, 7774), (7775, 7852), (7853, 7946), (7947, 8030), (8031, 8110), (8111, 8204), (8205, 8284), (8285, 8366), (8367, 8456), (8457, 8540), (8541, 8632), (8633, 8722), (8723, 8741), (8750, 8840), (8841, 8843), (8993, 9064), (9065, 9071), (9245, 9334), (9335, 9344), (9375, 9410), (9522, 9570), (9583, 9644), (9645, 9697), (10051, 10132), (10133, 10179), (10240, 10299), (10580, 10660), (10661, 10741), (10935, 11002), (11003, 11045), (11109, 11186), (11187, 11202), (11236, 11306), (11307, 11343), (11664, 11731), (11774, 11836), (11837, 11860), (12005, 12072), (12321, 12381), (12393, 12414), (12482, 12486), (12493, 12584), (12585, 12586), (13125, 13214), (13215, 13218), (13454, 13544), (13545, 13549), (13718, 13804), (13805, 13843), (13851, 13871), (13924, 13944), (14336, 14390), (14406, 14494), (14495, 14499), (14641, 14673), (14792, 14832), (14884, 14885), (15123, 15214), (15215, 15222), (15376, 15466), (15467, 15469), (15979, 16066), (16067, 16080), (16384, 16474), (16475, 16477), (16810, 16880), (16881, 16913), (17303, 17391), (17496, 17498), (17576, 17589), (18490, 18574), (18575, 18583), (18634, 18698), (18723, 18727), (18750, 18816), (19208, 19259), (19663, 19754), (19755, 19756), (19773, 19776), (20172, 20254), (20255, 20257), (20535, 20573), (20577, 20628), (20667, 20670), (21316, 21389), (21870, 21956), (21957, 21968), (21970, 21997), (22472, 22538), (24010, 24100), (24101, 24130), (24367, 24452), (24453, 24460), (24576, 24664), (24665, 24669), (25000, 25057), (25215, 25282), (25283, 25308), (26411, 26457), (26934, 26989), (28125, 28183), (28577, 28654), (29791, 29861), (30258, 30339), (31213, 31286), (31287, 31306), (31329, 31343), (31433, 31490), (31491, 31516), (32805, 32861), (34375, 34388), (34391, 34474), (34475, 34484), (36517, 36590), (36591, 36594), (37303, 37303), (37500, 37539), (39326, 39416), (39417, 39419), (40401, 40421), (40960, 41024), (43750, 43780), (48013, 48054), (48734, 48761), (48778, 48827), (49152, 49223), (50421, 50503), (55451, 55534), (55535, 55540), (58619, 58657), (59049, 59049), (62500, 62503), (63948, 63962), (65536, 65614), (65615, 65629), (68651, 68683), (68921, 68983), (73205, 73260), (137842, 137874), (146410, 146427), (148955, 148970)]

theorem row094_bounds_eq : row094.goods.map goodSegmentBounds = row094_bounds := by
  rfl

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row094_bounds_eq

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row094_layer000_intervals : List ColouredInterval :=
  [(2, 9216, 9309), (2, 10240, 10333), (2, 11264, 11357), (2, 10240, 10333), (2, 12288, 12381), (2, 14336, 14429), (2, 16384, 16477), (2, 12288, 12381), (2, 16384, 16477), (2, 16384, 16477), (2, 16384, 16477), (3, 8748, 8841), (3, 9477, 9570), (3, 10206, 10299), (3, 10935, 11028), (3, 11664, 11757), (3, 12393, 12486), (3, 13122, 13215), (3, 13851, 13944), (3, 14580, 14673), (3, 15309, 15402), (3, 16038, 16131), (3, 8748, 8841), (3, 10935, 11028), (3, 13122, 13215), (3, 15309, 15402), (3, 13122, 13215), (5, 8750, 8843), (5, 9375, 9468), (5, 10000, 10093), (5, 10625, 10718), (5, 11250, 11343), (5, 11875, 11968), (5, 12500, 12593), (5, 13125, 13218), (5, 13750, 13843), (5, 9375, 9468), (5, 12500, 12593), (5, 15625, 15718), (5, 15625, 15718), (7, 9604, 9697), (7, 12005, 12098), (7, 14406, 14499), (7, 16807, 16900), (7, 16807, 16900), (11, 9317, 9410), (11, 10648, 10741), (11, 11979, 12072), (11, 13310, 13403), (11, 14641, 14734), (11, 15972, 16065), (11, 17303, 17396), (11, 14641, 14734), (13, 8788, 8881), (13, 10985, 11078), (13, 13182, 13275), (13, 15379, 15472), (17, 9826, 9919), (17, 14739, 14832), (19, 13718, 13811), (23, 8993, 9086), (23, 9522, 9615), (23, 10051, 10144), (23, 10580, 10673), (23, 11109, 11202), (23, 11638, 11731), (23, 12167, 12260), (29, 9251, 9344), (29, 10092, 10185), (29, 10933, 11026), (29, 11774, 11867), (29, 12615, 12708), (29, 13456, 13549), (29, 14297, 14390), (29, 15138, 15231), (29, 15979, 16072), (29, 16820, 16913), (31, 8742, 8742), (31, 9610, 9703), (31, 10571, 10664), (31, 11532, 11625), (31, 12493, 12586), (31, 13454, 13547), (31, 14415, 14508), (31, 15376, 15469), (31, 16337, 16430), (31, 17298, 17391), (37, 9583, 9676), (37, 10952, 11045), (37, 12321, 12414), (37, 13690, 13783), (37, 15059, 15152), (37, 16428, 16521), (41, 10086, 10179), (41, 11767, 11860), (41, 13448, 13541), (41, 15129, 15222), (41, 16810, 16903), (43, 9245, 9338), (43, 11094, 11187), (43, 12943, 13036), (43, 14792, 14885), (43, 16641, 16734), (53, 11236, 11329), (53, 14045, 14138), (53, 16854, 16947), (59, 10443, 10536), (59, 13924, 14017), (59, 17405, 17483), (61, 11163, 11256), (61, 14884, 14977), (67, 8978, 9071), (67, 13467, 13560), (71, 10082, 10175), (71, 15123, 15216), (73, 10658, 10751), (73, 15987, 16080), (79, 12482, 12575), (83, 13778, 13871), (89, 15842, 15935)]

def row094_layer000_block000 : List ColouredInterval :=
  [(2, 9216, 9309), (2, 10240, 10333), (2, 11264, 11357), (2, 10240, 10333), (2, 12288, 12381), (2, 14336, 14429), (2, 16384, 16477), (2, 12288, 12381), (2, 16384, 16477), (2, 16384, 16477), (2, 16384, 16477), (3, 8748, 8841), (3, 9477, 9570), (3, 10206, 10299), (3, 10935, 11028), (3, 11664, 11757)]

def row094_layer000_block001 : List ColouredInterval :=
  [(3, 12393, 12486), (3, 13122, 13215), (3, 13851, 13944), (3, 14580, 14673), (3, 15309, 15402), (3, 16038, 16131), (3, 8748, 8841), (3, 10935, 11028), (3, 13122, 13215), (3, 15309, 15402), (3, 13122, 13215), (5, 8750, 8843), (5, 9375, 9468), (5, 10000, 10093), (5, 10625, 10718), (5, 11250, 11343)]

def row094_layer000_block002 : List ColouredInterval :=
  [(5, 11875, 11968), (5, 12500, 12593), (5, 13125, 13218), (5, 13750, 13843), (5, 9375, 9468), (5, 12500, 12593), (5, 15625, 15718), (5, 15625, 15718), (7, 9604, 9697), (7, 12005, 12098), (7, 14406, 14499), (7, 16807, 16900), (7, 16807, 16900), (11, 9317, 9410), (11, 10648, 10741), (11, 11979, 12072)]

def row094_layer000_block003 : List ColouredInterval :=
  [(11, 13310, 13403), (11, 14641, 14734), (11, 15972, 16065), (11, 17303, 17396), (11, 14641, 14734), (13, 8788, 8881), (13, 10985, 11078), (13, 13182, 13275), (13, 15379, 15472), (17, 9826, 9919), (17, 14739, 14832), (19, 13718, 13811), (23, 8993, 9086), (23, 9522, 9615), (23, 10051, 10144), (23, 10580, 10673)]

def row094_layer000_block004 : List ColouredInterval :=
  [(23, 11109, 11202), (23, 11638, 11731), (23, 12167, 12260), (29, 9251, 9344), (29, 10092, 10185), (29, 10933, 11026), (29, 11774, 11867), (29, 12615, 12708), (29, 13456, 13549), (29, 14297, 14390), (29, 15138, 15231), (29, 15979, 16072), (29, 16820, 16913), (31, 8742, 8742), (31, 9610, 9703), (31, 10571, 10664)]

def row094_layer000_block005 : List ColouredInterval :=
  [(31, 11532, 11625), (31, 12493, 12586), (31, 13454, 13547), (31, 14415, 14508), (31, 15376, 15469), (31, 16337, 16430), (31, 17298, 17391), (37, 9583, 9676), (37, 10952, 11045), (37, 12321, 12414), (37, 13690, 13783), (37, 15059, 15152), (37, 16428, 16521), (41, 10086, 10179), (41, 11767, 11860), (41, 13448, 13541)]

def row094_layer000_block006 : List ColouredInterval :=
  [(41, 15129, 15222), (41, 16810, 16903), (43, 9245, 9338), (43, 11094, 11187), (43, 12943, 13036), (43, 14792, 14885), (43, 16641, 16734), (53, 11236, 11329), (53, 14045, 14138), (53, 16854, 16947), (59, 10443, 10536), (59, 13924, 14017), (59, 17405, 17483), (61, 11163, 11256), (61, 14884, 14977), (67, 8978, 9071)]

def row094_layer000_block007 : List ColouredInterval :=
  [(67, 13467, 13560), (71, 10082, 10175), (71, 15123, 15216), (73, 10658, 10751), (73, 15987, 16080), (79, 12482, 12575), (83, 13778, 13871), (89, 15842, 15935)]

def row094_layer000_chunks : List (List ColouredInterval) :=
  [row094_layer000_block000, row094_layer000_block001, row094_layer000_block002, row094_layer000_block003, row094_layer000_block004, row094_layer000_block005, row094_layer000_block006, row094_layer000_block007]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row094_layer000_intervals

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row094_layer000_arithmetic : LayerArithmeticValid row094.height { lower := 8742, upper := 17484, M := 22 } := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row094_layer000_arithmetic

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row094_layer000_enumeration :
    activePowerIntervalList 94 22 8742 17484 = row094_layer000_intervals := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row094_layer000_enumeration

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row094_layer000_pairs000 :
    row094_layer000_block000.all (fun I => row094_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row094_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row094_layer000_pairs000

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row094_layer000_pairs001 :
    row094_layer000_block001.all (fun I => row094_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row094_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row094_layer000_pairs001

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row094_layer000_pairs002 :
    row094_layer000_block002.all (fun I => row094_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row094_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row094_layer000_pairs002

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row094_layer000_pairs003 :
    row094_layer000_block003.all (fun I => row094_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row094_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row094_layer000_pairs003

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row094_layer000_pairs004 :
    row094_layer000_block004.all (fun I => row094_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row094_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row094_layer000_pairs004

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row094_layer000_pairs005 :
    row094_layer000_block005.all (fun I => row094_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row094_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row094_layer000_pairs005

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row094_layer000_pairs006 :
    row094_layer000_block006.all (fun I => row094_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row094_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row094_layer000_pairs006

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row094_layer000_pairs007 :
    row094_layer000_block007.all (fun I => row094_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row094_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row094_layer000_pairs007

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row094_layer000_chunks_eq : row094_layer000_chunks.flatten = row094_layer000_intervals := by
  rfl

theorem row094_layer000_pairs : pairCoverCheck row094_layer000_intervals row094_bounds = true := by
  apply pairCoverCheck_of_chunks row094_layer000_chunks_eq
  intro block hblock
  simp only [row094_layer000_chunks, List.mem_cons, List.mem_nil_iff, or_false] at hblock
  rcases hblock with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
  · exact row094_layer000_pairs000
  · exact row094_layer000_pairs001
  · exact row094_layer000_pairs002
  · exact row094_layer000_pairs003
  · exact row094_layer000_pairs004
  · exact row094_layer000_pairs005
  · exact row094_layer000_pairs006
  · exact row094_layer000_pairs007

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row094_layer000_chunks_eq
#print axioms B699LowIndex.LowIndexLean513dc7cc.row094_layer000_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row094_layer000_checked :
    coverLayerCheck row094.height row094.goods { lower := 8742, upper := 17484, M := 22 } = true := by
  exact coverLayerCheck_of_parts row094_layer000_arithmetic row094_layer000_enumeration row094_bounds_eq row094_layer000_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row094_layer000_checked

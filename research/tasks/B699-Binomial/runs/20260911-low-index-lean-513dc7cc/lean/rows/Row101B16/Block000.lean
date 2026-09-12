import research.tasks.«B699-Binomial».runs.«20260909-low-index-structure-b41a5a63».lean.FiniteCover
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.WitnessBridge

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row101_height : HeightCertificateDatum := { i := 101, r := 33, s := 71, n0Power10 := 8 }

def row101_goods : List GoodSegment := [
  { lower := 204, upper := 299, witness := RowWitness.topPrime 199 },
  { lower := 300, upper := 393, witness := RowWitness.topPrime 293 },
  { lower := 394, upper := 489, witness := RowWitness.topPrime 389 },
  { lower := 490, upper := 587, witness := RowWitness.topPrime 487 },
  { lower := 588, upper := 687, witness := RowWitness.topPrime 587 },
  { lower := 688, upper := 783, witness := RowWitness.topPrime 683 },
  { lower := 784, upper := 873, witness := RowWitness.topPrime 773 },
  { lower := 874, upper := 963, witness := RowWitness.topPrime 863 },
  { lower := 964, upper := 1053, witness := RowWitness.topPrime 953 },
  { lower := 1054, upper := 1151, witness := RowWitness.topPrime 1051 },
  { lower := 1152, upper := 1251, witness := RowWitness.topPrime 1151 },
  { lower := 1252, upper := 1349, witness := RowWitness.topPrime 1249 },
  { lower := 1350, upper := 1427, witness := RowWitness.topPrime 1327 },
  { lower := 1428, upper := 1527, witness := RowWitness.topPrime 1427 },
  { lower := 1528, upper := 1623, witness := RowWitness.topPrime 1523 },
  { lower := 1624, upper := 1721, witness := RowWitness.topPrime 1621 },
  { lower := 1722, upper := 1821, witness := RowWitness.topPrime 1721 },
  { lower := 1822, upper := 1911, witness := RowWitness.topPrime 1811 },
  { lower := 1912, upper := 2007, witness := RowWitness.topPrime 1907 },
  { lower := 2008, upper := 2103, witness := RowWitness.topPrime 2003 },
  { lower := 2104, upper := 2199, witness := RowWitness.topPrime 2099 },
  { lower := 2200, upper := 2279, witness := RowWitness.topPrime 2179 },
  { lower := 2280, upper := 2373, witness := RowWitness.topPrime 2273 },
  { lower := 2374, upper := 2471, witness := RowWitness.topPrime 2371 },
  { lower := 2472, upper := 2567, witness := RowWitness.topPrime 2467 },
  { lower := 2568, upper := 2657, witness := RowWitness.topPrime 2557 },
  { lower := 2658, upper := 2757, witness := RowWitness.topPrime 2657 },
  { lower := 2758, upper := 2853, witness := RowWitness.topPrime 2753 },
  { lower := 2854, upper := 2951, witness := RowWitness.topPrime 2851 },
  { lower := 2952, upper := 3039, witness := RowWitness.topPrime 2939 },
  { lower := 3040, upper := 3137, witness := RowWitness.topPrime 3037 },
  { lower := 3138, upper := 3237, witness := RowWitness.topPrime 3137 },
  { lower := 3238, upper := 3329, witness := RowWitness.topPrime 3229 },
  { lower := 3330, upper := 3429, witness := RowWitness.topPrime 3329 },
  { lower := 3430, upper := 3513, witness := RowWitness.topPrime 3413 },
  { lower := 3514, upper := 3611, witness := RowWitness.topPrime 3511 },
  { lower := 3612, upper := 3707, witness := RowWitness.topPrime 3607 },
  { lower := 3708, upper := 3801, witness := RowWitness.topPrime 3701 },
  { lower := 3802, upper := 3897, witness := RowWitness.topPrime 3797 },
  { lower := 3898, upper := 3989, witness := RowWitness.topPrime 3889 },
  { lower := 3990, upper := 4089, witness := RowWitness.topPrime 3989 },
  { lower := 4090, upper := 4179, witness := RowWitness.topPrime 4079 },
  { lower := 4180, upper := 4277, witness := RowWitness.topPrime 4177 },
  { lower := 4278, upper := 4373, witness := RowWitness.topPrime 4273 },
  { lower := 4374, upper := 4473, witness := RowWitness.topPrime 4373 },
  { lower := 4474, upper := 4563, witness := RowWitness.topPrime 4463 },
  { lower := 4564, upper := 4661, witness := RowWitness.topPrime 4561 },
  { lower := 4662, upper := 4757, witness := RowWitness.topPrime 4657 },
  { lower := 4758, upper := 4851, witness := RowWitness.topPrime 4751 },
  { lower := 4852, upper := 4931, witness := RowWitness.topPrime 4831 },
  { lower := 4932, upper := 5031, witness := RowWitness.topPrime 4931 },
  { lower := 5032, upper := 5123, witness := RowWitness.topPrime 5023 },
  { lower := 5124, upper := 5219, witness := RowWitness.topPrime 5119 },
  { lower := 5220, upper := 5309, witness := RowWitness.topPrime 5209 },
  { lower := 5310, upper := 5409, witness := RowWitness.topPrime 5309 },
  { lower := 5410, upper := 5507, witness := RowWitness.topPrime 5407 },
  { lower := 5508, upper := 5607, witness := RowWitness.topPrime 5507 },
  { lower := 5608, upper := 5691, witness := RowWitness.topPrime 5591 },
  { lower := 5692, upper := 5789, witness := RowWitness.topPrime 5689 },
  { lower := 5790, upper := 5883, witness := RowWitness.topPrime 5783 },
  { lower := 5884, upper := 5981, witness := RowWitness.topPrime 5881 },
  { lower := 5982, upper := 6081, witness := RowWitness.topPrime 5981 },
  { lower := 6082, upper := 6179, witness := RowWitness.topPrime 6079 },
  { lower := 6180, upper := 6273, witness := RowWitness.topPrime 6173 },
  { lower := 6274, upper := 6371, witness := RowWitness.topPrime 6271 },
  { lower := 6372, upper := 6467, witness := RowWitness.topPrime 6367 },
  { lower := 6468, upper := 6551, witness := RowWitness.topPrime 6451 },
  { lower := 6552, upper := 6651, witness := RowWitness.topPrime 6551 },
  { lower := 6652, upper := 6737, witness := RowWitness.topPrime 6637 },
  { lower := 6738, upper := 6837, witness := RowWitness.topPrime 6737 },
  { lower := 6838, upper := 6933, witness := RowWitness.topPrime 6833 },
  { lower := 6934, upper := 7017, witness := RowWitness.topPrime 6917 },
  { lower := 7018, upper := 7113, witness := RowWitness.topPrime 7013 },
  { lower := 7114, upper := 7209, witness := RowWitness.topPrime 7109 },
  { lower := 7210, upper := 7307, witness := RowWitness.topPrime 7207 },
  { lower := 7308, upper := 7407, witness := RowWitness.topPrime 7307 },
  { lower := 7408, upper := 7493, witness := RowWitness.topPrime 7393 },
  { lower := 7494, upper := 7589, witness := RowWitness.topPrime 7489 },
  { lower := 7590, upper := 7689, witness := RowWitness.topPrime 7589 },
  { lower := 7690, upper := 7787, witness := RowWitness.topPrime 7687 },
  { lower := 7788, upper := 7859, witness := RowWitness.topPrime 7759 },
  { lower := 7860, upper := 7953, witness := RowWitness.topPrime 7853 },
  { lower := 7954, upper := 8051, witness := RowWitness.topPrime 7951 },
  { lower := 8052, upper := 8139, witness := RowWitness.topPrime 8039 },
  { lower := 8140, upper := 8223, witness := RowWitness.topPrime 8123 },
  { lower := 8224, upper := 8321, witness := RowWitness.topPrime 8221 },
  { lower := 8322, upper := 8417, witness := RowWitness.topPrime 8317 },
  { lower := 8418, upper := 8489, witness := RowWitness.topPrime 8389 },
  { lower := 8490, upper := 8567, witness := RowWitness.topPrime 8467 },
  { lower := 8568, upper := 8663, witness := RowWitness.topPrime 8563 },
  { lower := 8664, upper := 8763, witness := RowWitness.topPrime 8663 },
  { lower := 8764, upper := 8861, witness := RowWitness.topPrime 8761 },
  { lower := 8862, upper := 8961, witness := RowWitness.topPrime 8861 },
  { lower := 8962, upper := 9051, witness := RowWitness.topPrime 8951 },
  { lower := 9052, upper := 9149, witness := RowWitness.topPrime 9049 },
  { lower := 9150, upper := 9237, witness := RowWitness.topPrime 9137 },
  { lower := 9238, upper := 9327, witness := RowWitness.topPrime 9227 },
  { lower := 9328, upper := 9423, witness := RowWitness.topPrime 9323 },
  { lower := 9424, upper := 9521, witness := RowWitness.topPrime 9421 },
  { lower := 9522, upper := 9621, witness := RowWitness.topPrime 9521 },
  { lower := 9622, upper := 9719, witness := RowWitness.topPrime 9619 },
  { lower := 9720, upper := 9819, witness := RowWitness.topPrime 9719 },
  { lower := 9820, upper := 9917, witness := RowWitness.topPrime 9817 },
  { lower := 9918, upper := 10007, witness := RowWitness.topPrime 9907 },
  { lower := 10008, upper := 10107, witness := RowWitness.topPrime 10007 },
  { lower := 10108, upper := 10186, witness := RowWitness.topPrime 10103 },
  { lower := 10240, upper := 10306, witness := RowWitness.topPrime 10223 },
  { lower := 10625, upper := 10713, witness := RowWitness.topPrime 10613 },
  { lower := 10714, upper := 10748, witness := RowWitness.topPrime 10711 },
  { lower := 10935, upper := 11009, witness := RowWitness.topPrime 10909 },
  { lower := 11010, upper := 11085, witness := RowWitness.topPrime 11003 },
  { lower := 11094, upper := 11145, witness := RowWitness.topPrime 11093 },
  { lower := 11163, upper := 11194, witness := RowWitness.topPrime 11161 },
  { lower := 11236, upper := 11313, witness := RowWitness.topPrime 11213 },
  { lower := 11314, upper := 11350, witness := RowWitness.topPrime 11311 },
  { lower := 11774, upper := 11843, witness := RowWitness.topPrime 11743 },
  { lower := 11844, upper := 11867, witness := RowWitness.topPrime 11839 },
  { lower := 12005, upper := 12079, witness := RowWitness.topPrime 11987 },
  { lower := 12321, upper := 12388, witness := RowWitness.topPrime 12301 },
  { lower := 12393, upper := 12421, witness := RowWitness.topPrime 12391 },
  { lower := 12482, upper := 12579, witness := RowWitness.topPrime 12479 },
  { lower := 12580, upper := 12593, witness := RowWitness.topPrime 12577 },
  { lower := 13182, upper := 13222, witness := RowWitness.topPrime 13177 },
  { lower := 13254, upper := 13282, witness := RowWitness.topPrime 13249 },
  { lower := 13310, upper := 13409, witness := RowWitness.topPrime 13309 },
  { lower := 13410, upper := 13410, witness := RowWitness.topPrime 13399 },
  { lower := 13454, upper := 13551, witness := RowWitness.topPrime 13451 },
  { lower := 13552, upper := 13556, witness := RowWitness.topPrime 13537 },
  { lower := 13718, upper := 13811, witness := RowWitness.topPrime 13711 },
  { lower := 13812, upper := 13818, witness := RowWitness.topPrime 13807 },
  { lower := 13851, upper := 13878, witness := RowWitness.topPrime 13841 },
  { lower := 13924, upper := 13951, witness := RowWitness.topPrime 13921 },
  { lower := 14336, upper := 14397, witness := RowWitness.topPrime 14327 },
  { lower := 14406, upper := 14501, witness := RowWitness.topPrime 14401 },
  { lower := 14502, upper := 14506, witness := RowWitness.topPrime 14489 },
  { lower := 14739, upper := 14741, witness := RowWitness.topPrime 14737 },
  { lower := 14792, upper := 14839, witness := RowWitness.topPrime 14783 },
  { lower := 14884, upper := 14892, witness := RowWitness.topPrime 14879 },
  { lower := 15123, upper := 15221, witness := RowWitness.topPrime 15121 },
  { lower := 15222, upper := 15229, witness := RowWitness.topPrime 15217 },
  { lower := 15360, upper := 15459, witness := RowWitness.topPrime 15359 },
  { lower := 15460, upper := 15479, witness := RowWitness.topPrime 15451 },
  { lower := 15979, upper := 16073, witness := RowWitness.topPrime 15973 },
  { lower := 16074, upper := 16079, witness := RowWitness.topPrime 16073 },
  { lower := 16384, upper := 16481, witness := RowWitness.topPrime 16381 },
  { lower := 16482, upper := 16484, witness := RowWitness.topPrime 16481 },
  { lower := 16810, upper := 16887, witness := RowWitness.topPrime 16787 },
  { lower := 16888, upper := 16910, witness := RowWitness.topPrime 16883 },
  { lower := 17303, upper := 17398, witness := RowWitness.topPrime 17299 },
  { lower := 17408, upper := 17501, witness := RowWitness.topPrime 17401 },
  { lower := 17502, upper := 17508, witness := RowWitness.topPrime 17497 },
  { lower := 17576, upper := 17596, witness := RowWitness.topPrime 17573 },
  { lower := 17672, upper := 17676, witness := RowWitness.topPrime 17669 },
  { lower := 18490, upper := 18581, witness := RowWitness.topPrime 18481 },
  { lower := 18582, upper := 18590, witness := RowWitness.topPrime 18553 },
  { lower := 18634, upper := 18705, witness := RowWitness.topPrime 18617 },
  { lower := 18723, upper := 18734, witness := RowWitness.topPrime 18719 },
  { lower := 18750, upper := 18849, witness := RowWitness.topPrime 18749 },
  { lower := 18850, upper := 18850, witness := RowWitness.topPrime 18839 },
  { lower := 19208, upper := 19266, witness := RowWitness.topPrime 19207 },
  { lower := 19663, upper := 19761, witness := RowWitness.topPrime 19661 },
  { lower := 19762, upper := 19763, witness := RowWitness.topPrime 19759 },
  { lower := 19773, upper := 19783, witness := RowWitness.topPrime 19763 },
  { lower := 19965, upper := 19981, witness := RowWitness.topPrime 19963 },
  { lower := 20172, upper := 20261, witness := RowWitness.topPrime 20161 },
  { lower := 20262, upper := 20264, witness := RowWitness.topPrime 20261 },
  { lower := 20535, upper := 20633, witness := RowWitness.topPrime 20533 },
  { lower := 20634, upper := 20635, witness := RowWitness.topPrime 20627 },
  { lower := 20667, upper := 20677, witness := RowWitness.topPrime 20663 },
  { lower := 21870, upper := 21963, witness := RowWitness.topPrime 21863 },
  { lower := 21964, upper := 21975, witness := RowWitness.topPrime 21961 },
  { lower := 22188, upper := 22190, witness := RowWitness.topPrime 22171 },
  { lower := 22472, upper := 22569, witness := RowWitness.topPrime 22469 },
  { lower := 22570, upper := 22572, witness := RowWitness.topPrime 22567 },
  { lower := 24037, upper := 24129, witness := RowWitness.topPrime 24029 },
  { lower := 24130, upper := 24137, witness := RowWitness.topPrime 24121 },
  { lower := 24334, upper := 24429, witness := RowWitness.topPrime 24329 },
  { lower := 24430, upper := 24467, witness := RowWitness.topPrime 24421 },
  { lower := 24576, upper := 24665, witness := RowWitness.topPrime 24571 },
  { lower := 25000, upper := 25064, witness := RowWitness.topPrime 24989 },
  { lower := 25215, upper := 25289, witness := RowWitness.topPrime 25189 },
  { lower := 25290, upper := 25315, witness := RowWitness.topPrime 25261 },
  { lower := 26411, upper := 26464, witness := RowWitness.topPrime 26407 },
  { lower := 26508, upper := 26511, witness := RowWitness.topPrime 26501 },
  { lower := 26645, upper := 26724, witness := RowWitness.topPrime 26641 },
  { lower := 28125, upper := 28190, witness := RowWitness.topPrime 28123 },
  { lower := 28717, upper := 28772, witness := RowWitness.topPrime 28711 },
  { lower := 28812, upper := 28817, witness := RowWitness.topPrime 28807 },
  { lower := 29791, upper := 29868, witness := RowWitness.topPrime 29789 },
  { lower := 30758, upper := 30820, witness := RowWitness.topPrime 30757 },
  { lower := 30926, upper := 30999, witness := RowWitness.topPrime 30911 },
  { lower := 31213, upper := 31293, witness := RowWitness.topPrime 31193 },
  { lower := 31294, upper := 31313, witness := RowWitness.topPrime 31277 },
  { lower := 31329, upper := 31350, witness := RowWitness.topPrime 31327 },
  { lower := 31423, upper := 31429, witness := RowWitness.topPrime 31397 },
  { lower := 32805, upper := 32868, witness := RowWitness.topPrime 32803 },
  { lower := 33708, upper := 33714, witness := RowWitness.topPrime 33703 },
  { lower := 34375, upper := 34469, witness := RowWitness.topPrime 34369 },
  { lower := 34470, upper := 34491, witness := RowWitness.topPrime 34469 },
  { lower := 36517, upper := 36597, witness := RowWitness.topPrime 36497 },
  { lower := 36598, upper := 36601, witness := RowWitness.topPrime 36587 },
  { lower := 37303, upper := 37310, witness := RowWitness.topPrime 37277 },
  { lower := 37500, upper := 37546, witness := RowWitness.topPrime 37493 },
  { lower := 39326, upper := 39423, witness := RowWitness.topPrime 39323 },
  { lower := 39424, upper := 39426, witness := RowWitness.topPrime 39419 },
  { lower := 40401, upper := 40428, witness := RowWitness.topPrime 40387 },
  { lower := 40960, upper := 41031, witness := RowWitness.topPrime 40949 },
  { lower := 48013, upper := 48061, witness := RowWitness.topPrime 47981 },
  { lower := 49152, upper := 49230, witness := RowWitness.topPrime 49139 },
  { lower := 50421, upper := 50510, witness := RowWitness.topPrime 50417 },
  { lower := 55451, upper := 55541, witness := RowWitness.topPrime 55441 },
  { lower := 55542, upper := 55547, witness := RowWitness.topPrime 55541 },
  { lower := 58619, upper := 58664, witness := RowWitness.topPrime 58613 },
  { lower := 59049, upper := 59056, witness := RowWitness.topPrime 59029 },
  { lower := 62500, upper := 62510, witness := RowWitness.topPrime 62497 },
  { lower := 65610, upper := 65636, witness := RowWitness.topPrime 65609 },
  { lower := 68651, upper := 68690, witness := RowWitness.topPrime 68639 },
  { lower := 68921, upper := 68990, witness := RowWitness.topPrime 68917 },
  { lower := 73205, upper := 73267, witness := RowWitness.topPrime 73189 },
  { lower := 137842, upper := 137881, witness := RowWitness.topPrime 137831 },
  { lower := 148955, upper := 148977, witness := RowWitness.topPrime 148949 }
]

def row101_layers : List CoverLayer := [
  { lower := 10100, upper := 20200, M := 19 },
  { lower := 20200, upper := 40400, M := 15 },
  { lower := 40400, upper := 80800, M := 12 },
  { lower := 80800, upper := 161600, M := 9 },
  { lower := 161600, upper := 323200, M := 7 },
  { lower := 323200, upper := 646400, M := 6 },
  { lower := 646400, upper := 1292800, M := 5 },
  { lower := 1292800, upper := 2585600, M := 4 },
  { lower := 2585600, upper := 5171200, M := 3 },
  { lower := 5171200, upper := 10342400, M := 3 },
  { lower := 10342400, upper := 20684800, M := 2 },
  { lower := 20684800, upper := 41369600, M := 2 },
  { lower := 41369600, upper := 82739200, M := 2 },
  { lower := 82739200, upper := 100000000, M := 1 }
]

def row101 : FiniteCoverRow := {
  height := row101_height,
  goods := row101_goods,
  layers := row101_layers
}


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row101

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row101_good000_checked :
    goodSegmentCheck 101 33 71
      { lower := 204, upper := 299, witness := RowWitness.topPrime 199 } = true := by
  exact good_top_prime_checked (i := 101) (r := 33) (s := 71) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row101_good001_checked :
    goodSegmentCheck 101 33 71
      { lower := 300, upper := 393, witness := RowWitness.topPrime 293 } = true := by
  exact good_top_prime_checked (i := 101) (r := 33) (s := 71) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row101_good002_checked :
    goodSegmentCheck 101 33 71
      { lower := 394, upper := 489, witness := RowWitness.topPrime 389 } = true := by
  exact good_top_prime_checked (i := 101) (r := 33) (s := 71) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row101_good003_checked :
    goodSegmentCheck 101 33 71
      { lower := 490, upper := 587, witness := RowWitness.topPrime 487 } = true := by
  exact good_top_prime_checked (i := 101) (r := 33) (s := 71) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row101_good004_checked :
    goodSegmentCheck 101 33 71
      { lower := 588, upper := 687, witness := RowWitness.topPrime 587 } = true := by
  exact good_top_prime_checked (i := 101) (r := 33) (s := 71) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row101_good005_checked :
    goodSegmentCheck 101 33 71
      { lower := 688, upper := 783, witness := RowWitness.topPrime 683 } = true := by
  exact good_top_prime_checked (i := 101) (r := 33) (s := 71) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row101_good006_checked :
    goodSegmentCheck 101 33 71
      { lower := 784, upper := 873, witness := RowWitness.topPrime 773 } = true := by
  exact good_top_prime_checked (i := 101) (r := 33) (s := 71) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row101_good007_checked :
    goodSegmentCheck 101 33 71
      { lower := 874, upper := 963, witness := RowWitness.topPrime 863 } = true := by
  exact good_top_prime_checked (i := 101) (r := 33) (s := 71) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row101_good008_checked :
    goodSegmentCheck 101 33 71
      { lower := 964, upper := 1053, witness := RowWitness.topPrime 953 } = true := by
  exact good_top_prime_checked (i := 101) (r := 33) (s := 71) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row101_good009_checked :
    goodSegmentCheck 101 33 71
      { lower := 1054, upper := 1151, witness := RowWitness.topPrime 1051 } = true := by
  exact good_top_prime_checked (i := 101) (r := 33) (s := 71) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row101_good010_checked :
    goodSegmentCheck 101 33 71
      { lower := 1152, upper := 1251, witness := RowWitness.topPrime 1151 } = true := by
  exact good_top_prime_checked (i := 101) (r := 33) (s := 71) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row101_good011_checked :
    goodSegmentCheck 101 33 71
      { lower := 1252, upper := 1349, witness := RowWitness.topPrime 1249 } = true := by
  exact good_top_prime_checked (i := 101) (r := 33) (s := 71) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row101_good012_checked :
    goodSegmentCheck 101 33 71
      { lower := 1350, upper := 1427, witness := RowWitness.topPrime 1327 } = true := by
  exact good_top_prime_checked (i := 101) (r := 33) (s := 71) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row101_good013_checked :
    goodSegmentCheck 101 33 71
      { lower := 1428, upper := 1527, witness := RowWitness.topPrime 1427 } = true := by
  exact good_top_prime_checked (i := 101) (r := 33) (s := 71) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row101_good014_checked :
    goodSegmentCheck 101 33 71
      { lower := 1528, upper := 1623, witness := RowWitness.topPrime 1523 } = true := by
  exact good_top_prime_checked (i := 101) (r := 33) (s := 71) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row101_good015_checked :
    goodSegmentCheck 101 33 71
      { lower := 1624, upper := 1721, witness := RowWitness.topPrime 1621 } = true := by
  exact good_top_prime_checked (i := 101) (r := 33) (s := 71) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row101_good000_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row101_good001_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row101_good002_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row101_good003_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row101_good004_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row101_good005_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row101_good006_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row101_good007_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row101_good008_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row101_good009_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row101_good010_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row101_good011_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row101_good012_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row101_good013_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row101_good014_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row101_good015_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row101_good016_checked :
    goodSegmentCheck 101 33 71
      { lower := 1722, upper := 1821, witness := RowWitness.topPrime 1721 } = true := by
  exact good_top_prime_checked (i := 101) (r := 33) (s := 71) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row101_good017_checked :
    goodSegmentCheck 101 33 71
      { lower := 1822, upper := 1911, witness := RowWitness.topPrime 1811 } = true := by
  exact good_top_prime_checked (i := 101) (r := 33) (s := 71) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row101_good018_checked :
    goodSegmentCheck 101 33 71
      { lower := 1912, upper := 2007, witness := RowWitness.topPrime 1907 } = true := by
  exact good_top_prime_checked (i := 101) (r := 33) (s := 71) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row101_good019_checked :
    goodSegmentCheck 101 33 71
      { lower := 2008, upper := 2103, witness := RowWitness.topPrime 2003 } = true := by
  exact good_top_prime_checked (i := 101) (r := 33) (s := 71) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row101_good020_checked :
    goodSegmentCheck 101 33 71
      { lower := 2104, upper := 2199, witness := RowWitness.topPrime 2099 } = true := by
  exact good_top_prime_checked (i := 101) (r := 33) (s := 71) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row101_good021_checked :
    goodSegmentCheck 101 33 71
      { lower := 2200, upper := 2279, witness := RowWitness.topPrime 2179 } = true := by
  exact good_top_prime_checked (i := 101) (r := 33) (s := 71) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row101_good022_checked :
    goodSegmentCheck 101 33 71
      { lower := 2280, upper := 2373, witness := RowWitness.topPrime 2273 } = true := by
  exact good_top_prime_checked (i := 101) (r := 33) (s := 71) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row101_good023_checked :
    goodSegmentCheck 101 33 71
      { lower := 2374, upper := 2471, witness := RowWitness.topPrime 2371 } = true := by
  exact good_top_prime_checked (i := 101) (r := 33) (s := 71) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row101_good024_checked :
    goodSegmentCheck 101 33 71
      { lower := 2472, upper := 2567, witness := RowWitness.topPrime 2467 } = true := by
  exact good_top_prime_checked (i := 101) (r := 33) (s := 71) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row101_good025_checked :
    goodSegmentCheck 101 33 71
      { lower := 2568, upper := 2657, witness := RowWitness.topPrime 2557 } = true := by
  exact good_top_prime_checked (i := 101) (r := 33) (s := 71) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row101_good026_checked :
    goodSegmentCheck 101 33 71
      { lower := 2658, upper := 2757, witness := RowWitness.topPrime 2657 } = true := by
  exact good_top_prime_checked (i := 101) (r := 33) (s := 71) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row101_good027_checked :
    goodSegmentCheck 101 33 71
      { lower := 2758, upper := 2853, witness := RowWitness.topPrime 2753 } = true := by
  exact good_top_prime_checked (i := 101) (r := 33) (s := 71) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row101_good028_checked :
    goodSegmentCheck 101 33 71
      { lower := 2854, upper := 2951, witness := RowWitness.topPrime 2851 } = true := by
  exact good_top_prime_checked (i := 101) (r := 33) (s := 71) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row101_good029_checked :
    goodSegmentCheck 101 33 71
      { lower := 2952, upper := 3039, witness := RowWitness.topPrime 2939 } = true := by
  exact good_top_prime_checked (i := 101) (r := 33) (s := 71) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row101_good030_checked :
    goodSegmentCheck 101 33 71
      { lower := 3040, upper := 3137, witness := RowWitness.topPrime 3037 } = true := by
  exact good_top_prime_checked (i := 101) (r := 33) (s := 71) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row101_good031_checked :
    goodSegmentCheck 101 33 71
      { lower := 3138, upper := 3237, witness := RowWitness.topPrime 3137 } = true := by
  exact good_top_prime_checked (i := 101) (r := 33) (s := 71) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row101_good016_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row101_good017_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row101_good018_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row101_good019_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row101_good020_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row101_good021_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row101_good022_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row101_good023_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row101_good024_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row101_good025_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row101_good026_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row101_good027_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row101_good028_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row101_good029_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row101_good030_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row101_good031_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row101_good032_checked :
    goodSegmentCheck 101 33 71
      { lower := 3238, upper := 3329, witness := RowWitness.topPrime 3229 } = true := by
  exact good_top_prime_checked (i := 101) (r := 33) (s := 71) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row101_good033_checked :
    goodSegmentCheck 101 33 71
      { lower := 3330, upper := 3429, witness := RowWitness.topPrime 3329 } = true := by
  exact good_top_prime_checked (i := 101) (r := 33) (s := 71) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row101_good034_checked :
    goodSegmentCheck 101 33 71
      { lower := 3430, upper := 3513, witness := RowWitness.topPrime 3413 } = true := by
  exact good_top_prime_checked (i := 101) (r := 33) (s := 71) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row101_good035_checked :
    goodSegmentCheck 101 33 71
      { lower := 3514, upper := 3611, witness := RowWitness.topPrime 3511 } = true := by
  exact good_top_prime_checked (i := 101) (r := 33) (s := 71) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row101_good036_checked :
    goodSegmentCheck 101 33 71
      { lower := 3612, upper := 3707, witness := RowWitness.topPrime 3607 } = true := by
  exact good_top_prime_checked (i := 101) (r := 33) (s := 71) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row101_good037_checked :
    goodSegmentCheck 101 33 71
      { lower := 3708, upper := 3801, witness := RowWitness.topPrime 3701 } = true := by
  exact good_top_prime_checked (i := 101) (r := 33) (s := 71) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row101_good038_checked :
    goodSegmentCheck 101 33 71
      { lower := 3802, upper := 3897, witness := RowWitness.topPrime 3797 } = true := by
  exact good_top_prime_checked (i := 101) (r := 33) (s := 71) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row101_good039_checked :
    goodSegmentCheck 101 33 71
      { lower := 3898, upper := 3989, witness := RowWitness.topPrime 3889 } = true := by
  exact good_top_prime_checked (i := 101) (r := 33) (s := 71) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row101_good040_checked :
    goodSegmentCheck 101 33 71
      { lower := 3990, upper := 4089, witness := RowWitness.topPrime 3989 } = true := by
  exact good_top_prime_checked (i := 101) (r := 33) (s := 71) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row101_good041_checked :
    goodSegmentCheck 101 33 71
      { lower := 4090, upper := 4179, witness := RowWitness.topPrime 4079 } = true := by
  exact good_top_prime_checked (i := 101) (r := 33) (s := 71) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row101_good042_checked :
    goodSegmentCheck 101 33 71
      { lower := 4180, upper := 4277, witness := RowWitness.topPrime 4177 } = true := by
  exact good_top_prime_checked (i := 101) (r := 33) (s := 71) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row101_good043_checked :
    goodSegmentCheck 101 33 71
      { lower := 4278, upper := 4373, witness := RowWitness.topPrime 4273 } = true := by
  exact good_top_prime_checked (i := 101) (r := 33) (s := 71) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row101_good044_checked :
    goodSegmentCheck 101 33 71
      { lower := 4374, upper := 4473, witness := RowWitness.topPrime 4373 } = true := by
  exact good_top_prime_checked (i := 101) (r := 33) (s := 71) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row101_good045_checked :
    goodSegmentCheck 101 33 71
      { lower := 4474, upper := 4563, witness := RowWitness.topPrime 4463 } = true := by
  exact good_top_prime_checked (i := 101) (r := 33) (s := 71) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row101_good046_checked :
    goodSegmentCheck 101 33 71
      { lower := 4564, upper := 4661, witness := RowWitness.topPrime 4561 } = true := by
  exact good_top_prime_checked (i := 101) (r := 33) (s := 71) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row101_good047_checked :
    goodSegmentCheck 101 33 71
      { lower := 4662, upper := 4757, witness := RowWitness.topPrime 4657 } = true := by
  exact good_top_prime_checked (i := 101) (r := 33) (s := 71) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row101_good032_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row101_good033_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row101_good034_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row101_good035_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row101_good036_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row101_good037_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row101_good038_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row101_good039_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row101_good040_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row101_good041_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row101_good042_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row101_good043_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row101_good044_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row101_good045_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row101_good046_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row101_good047_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row101_good048_checked :
    goodSegmentCheck 101 33 71
      { lower := 4758, upper := 4851, witness := RowWitness.topPrime 4751 } = true := by
  exact good_top_prime_checked (i := 101) (r := 33) (s := 71) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row101_good049_checked :
    goodSegmentCheck 101 33 71
      { lower := 4852, upper := 4931, witness := RowWitness.topPrime 4831 } = true := by
  exact good_top_prime_checked (i := 101) (r := 33) (s := 71) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row101_good050_checked :
    goodSegmentCheck 101 33 71
      { lower := 4932, upper := 5031, witness := RowWitness.topPrime 4931 } = true := by
  exact good_top_prime_checked (i := 101) (r := 33) (s := 71) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row101_good051_checked :
    goodSegmentCheck 101 33 71
      { lower := 5032, upper := 5123, witness := RowWitness.topPrime 5023 } = true := by
  exact good_top_prime_checked (i := 101) (r := 33) (s := 71) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row101_good052_checked :
    goodSegmentCheck 101 33 71
      { lower := 5124, upper := 5219, witness := RowWitness.topPrime 5119 } = true := by
  exact good_top_prime_checked (i := 101) (r := 33) (s := 71) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row101_good053_checked :
    goodSegmentCheck 101 33 71
      { lower := 5220, upper := 5309, witness := RowWitness.topPrime 5209 } = true := by
  exact good_top_prime_checked (i := 101) (r := 33) (s := 71) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row101_good054_checked :
    goodSegmentCheck 101 33 71
      { lower := 5310, upper := 5409, witness := RowWitness.topPrime 5309 } = true := by
  exact good_top_prime_checked (i := 101) (r := 33) (s := 71) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row101_good055_checked :
    goodSegmentCheck 101 33 71
      { lower := 5410, upper := 5507, witness := RowWitness.topPrime 5407 } = true := by
  exact good_top_prime_checked (i := 101) (r := 33) (s := 71) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row101_good056_checked :
    goodSegmentCheck 101 33 71
      { lower := 5508, upper := 5607, witness := RowWitness.topPrime 5507 } = true := by
  exact good_top_prime_checked (i := 101) (r := 33) (s := 71) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row101_good057_checked :
    goodSegmentCheck 101 33 71
      { lower := 5608, upper := 5691, witness := RowWitness.topPrime 5591 } = true := by
  exact good_top_prime_checked (i := 101) (r := 33) (s := 71) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row101_good058_checked :
    goodSegmentCheck 101 33 71
      { lower := 5692, upper := 5789, witness := RowWitness.topPrime 5689 } = true := by
  exact good_top_prime_checked (i := 101) (r := 33) (s := 71) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row101_good059_checked :
    goodSegmentCheck 101 33 71
      { lower := 5790, upper := 5883, witness := RowWitness.topPrime 5783 } = true := by
  exact good_top_prime_checked (i := 101) (r := 33) (s := 71) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row101_good060_checked :
    goodSegmentCheck 101 33 71
      { lower := 5884, upper := 5981, witness := RowWitness.topPrime 5881 } = true := by
  exact good_top_prime_checked (i := 101) (r := 33) (s := 71) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row101_good061_checked :
    goodSegmentCheck 101 33 71
      { lower := 5982, upper := 6081, witness := RowWitness.topPrime 5981 } = true := by
  exact good_top_prime_checked (i := 101) (r := 33) (s := 71) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row101_good062_checked :
    goodSegmentCheck 101 33 71
      { lower := 6082, upper := 6179, witness := RowWitness.topPrime 6079 } = true := by
  exact good_top_prime_checked (i := 101) (r := 33) (s := 71) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row101_good063_checked :
    goodSegmentCheck 101 33 71
      { lower := 6180, upper := 6273, witness := RowWitness.topPrime 6173 } = true := by
  exact good_top_prime_checked (i := 101) (r := 33) (s := 71) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row101_good048_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row101_good049_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row101_good050_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row101_good051_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row101_good052_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row101_good053_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row101_good054_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row101_good055_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row101_good056_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row101_good057_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row101_good058_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row101_good059_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row101_good060_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row101_good061_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row101_good062_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row101_good063_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row101_good064_checked :
    goodSegmentCheck 101 33 71
      { lower := 6274, upper := 6371, witness := RowWitness.topPrime 6271 } = true := by
  exact good_top_prime_checked (i := 101) (r := 33) (s := 71) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row101_good065_checked :
    goodSegmentCheck 101 33 71
      { lower := 6372, upper := 6467, witness := RowWitness.topPrime 6367 } = true := by
  exact good_top_prime_checked (i := 101) (r := 33) (s := 71) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row101_good066_checked :
    goodSegmentCheck 101 33 71
      { lower := 6468, upper := 6551, witness := RowWitness.topPrime 6451 } = true := by
  exact good_top_prime_checked (i := 101) (r := 33) (s := 71) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row101_good067_checked :
    goodSegmentCheck 101 33 71
      { lower := 6552, upper := 6651, witness := RowWitness.topPrime 6551 } = true := by
  exact good_top_prime_checked (i := 101) (r := 33) (s := 71) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row101_good068_checked :
    goodSegmentCheck 101 33 71
      { lower := 6652, upper := 6737, witness := RowWitness.topPrime 6637 } = true := by
  exact good_top_prime_checked (i := 101) (r := 33) (s := 71) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row101_good069_checked :
    goodSegmentCheck 101 33 71
      { lower := 6738, upper := 6837, witness := RowWitness.topPrime 6737 } = true := by
  exact good_top_prime_checked (i := 101) (r := 33) (s := 71) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row101_good070_checked :
    goodSegmentCheck 101 33 71
      { lower := 6838, upper := 6933, witness := RowWitness.topPrime 6833 } = true := by
  exact good_top_prime_checked (i := 101) (r := 33) (s := 71) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row101_good071_checked :
    goodSegmentCheck 101 33 71
      { lower := 6934, upper := 7017, witness := RowWitness.topPrime 6917 } = true := by
  exact good_top_prime_checked (i := 101) (r := 33) (s := 71) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row101_good072_checked :
    goodSegmentCheck 101 33 71
      { lower := 7018, upper := 7113, witness := RowWitness.topPrime 7013 } = true := by
  exact good_top_prime_checked (i := 101) (r := 33) (s := 71) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row101_good073_checked :
    goodSegmentCheck 101 33 71
      { lower := 7114, upper := 7209, witness := RowWitness.topPrime 7109 } = true := by
  exact good_top_prime_checked (i := 101) (r := 33) (s := 71) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row101_good074_checked :
    goodSegmentCheck 101 33 71
      { lower := 7210, upper := 7307, witness := RowWitness.topPrime 7207 } = true := by
  exact good_top_prime_checked (i := 101) (r := 33) (s := 71) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row101_good075_checked :
    goodSegmentCheck 101 33 71
      { lower := 7308, upper := 7407, witness := RowWitness.topPrime 7307 } = true := by
  exact good_top_prime_checked (i := 101) (r := 33) (s := 71) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row101_good076_checked :
    goodSegmentCheck 101 33 71
      { lower := 7408, upper := 7493, witness := RowWitness.topPrime 7393 } = true := by
  exact good_top_prime_checked (i := 101) (r := 33) (s := 71) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row101_good077_checked :
    goodSegmentCheck 101 33 71
      { lower := 7494, upper := 7589, witness := RowWitness.topPrime 7489 } = true := by
  exact good_top_prime_checked (i := 101) (r := 33) (s := 71) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row101_good078_checked :
    goodSegmentCheck 101 33 71
      { lower := 7590, upper := 7689, witness := RowWitness.topPrime 7589 } = true := by
  exact good_top_prime_checked (i := 101) (r := 33) (s := 71) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row101_good079_checked :
    goodSegmentCheck 101 33 71
      { lower := 7690, upper := 7787, witness := RowWitness.topPrime 7687 } = true := by
  exact good_top_prime_checked (i := 101) (r := 33) (s := 71) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row101_good064_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row101_good065_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row101_good066_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row101_good067_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row101_good068_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row101_good069_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row101_good070_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row101_good071_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row101_good072_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row101_good073_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row101_good074_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row101_good075_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row101_good076_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row101_good077_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row101_good078_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row101_good079_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row101_good080_checked :
    goodSegmentCheck 101 33 71
      { lower := 7788, upper := 7859, witness := RowWitness.topPrime 7759 } = true := by
  exact good_top_prime_checked (i := 101) (r := 33) (s := 71) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row101_good081_checked :
    goodSegmentCheck 101 33 71
      { lower := 7860, upper := 7953, witness := RowWitness.topPrime 7853 } = true := by
  exact good_top_prime_checked (i := 101) (r := 33) (s := 71) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row101_good082_checked :
    goodSegmentCheck 101 33 71
      { lower := 7954, upper := 8051, witness := RowWitness.topPrime 7951 } = true := by
  exact good_top_prime_checked (i := 101) (r := 33) (s := 71) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row101_good083_checked :
    goodSegmentCheck 101 33 71
      { lower := 8052, upper := 8139, witness := RowWitness.topPrime 8039 } = true := by
  exact good_top_prime_checked (i := 101) (r := 33) (s := 71) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row101_good084_checked :
    goodSegmentCheck 101 33 71
      { lower := 8140, upper := 8223, witness := RowWitness.topPrime 8123 } = true := by
  exact good_top_prime_checked (i := 101) (r := 33) (s := 71) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row101_good085_checked :
    goodSegmentCheck 101 33 71
      { lower := 8224, upper := 8321, witness := RowWitness.topPrime 8221 } = true := by
  exact good_top_prime_checked (i := 101) (r := 33) (s := 71) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row101_good086_checked :
    goodSegmentCheck 101 33 71
      { lower := 8322, upper := 8417, witness := RowWitness.topPrime 8317 } = true := by
  exact good_top_prime_checked (i := 101) (r := 33) (s := 71) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row101_good087_checked :
    goodSegmentCheck 101 33 71
      { lower := 8418, upper := 8489, witness := RowWitness.topPrime 8389 } = true := by
  exact good_top_prime_checked (i := 101) (r := 33) (s := 71) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row101_good088_checked :
    goodSegmentCheck 101 33 71
      { lower := 8490, upper := 8567, witness := RowWitness.topPrime 8467 } = true := by
  exact good_top_prime_checked (i := 101) (r := 33) (s := 71) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row101_good089_checked :
    goodSegmentCheck 101 33 71
      { lower := 8568, upper := 8663, witness := RowWitness.topPrime 8563 } = true := by
  exact good_top_prime_checked (i := 101) (r := 33) (s := 71) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row101_good090_checked :
    goodSegmentCheck 101 33 71
      { lower := 8664, upper := 8763, witness := RowWitness.topPrime 8663 } = true := by
  exact good_top_prime_checked (i := 101) (r := 33) (s := 71) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row101_good091_checked :
    goodSegmentCheck 101 33 71
      { lower := 8764, upper := 8861, witness := RowWitness.topPrime 8761 } = true := by
  exact good_top_prime_checked (i := 101) (r := 33) (s := 71) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row101_good092_checked :
    goodSegmentCheck 101 33 71
      { lower := 8862, upper := 8961, witness := RowWitness.topPrime 8861 } = true := by
  exact good_top_prime_checked (i := 101) (r := 33) (s := 71) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row101_good093_checked :
    goodSegmentCheck 101 33 71
      { lower := 8962, upper := 9051, witness := RowWitness.topPrime 8951 } = true := by
  exact good_top_prime_checked (i := 101) (r := 33) (s := 71) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row101_good094_checked :
    goodSegmentCheck 101 33 71
      { lower := 9052, upper := 9149, witness := RowWitness.topPrime 9049 } = true := by
  exact good_top_prime_checked (i := 101) (r := 33) (s := 71) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row101_good095_checked :
    goodSegmentCheck 101 33 71
      { lower := 9150, upper := 9237, witness := RowWitness.topPrime 9137 } = true := by
  exact good_top_prime_checked (i := 101) (r := 33) (s := 71) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row101_good080_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row101_good081_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row101_good082_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row101_good083_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row101_good084_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row101_good085_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row101_good086_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row101_good087_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row101_good088_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row101_good089_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row101_good090_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row101_good091_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row101_good092_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row101_good093_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row101_good094_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row101_good095_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row101_good096_checked :
    goodSegmentCheck 101 33 71
      { lower := 9238, upper := 9327, witness := RowWitness.topPrime 9227 } = true := by
  exact good_top_prime_checked (i := 101) (r := 33) (s := 71) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row101_good097_checked :
    goodSegmentCheck 101 33 71
      { lower := 9328, upper := 9423, witness := RowWitness.topPrime 9323 } = true := by
  exact good_top_prime_checked (i := 101) (r := 33) (s := 71) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row101_good098_checked :
    goodSegmentCheck 101 33 71
      { lower := 9424, upper := 9521, witness := RowWitness.topPrime 9421 } = true := by
  exact good_top_prime_checked (i := 101) (r := 33) (s := 71) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row101_good099_checked :
    goodSegmentCheck 101 33 71
      { lower := 9522, upper := 9621, witness := RowWitness.topPrime 9521 } = true := by
  exact good_top_prime_checked (i := 101) (r := 33) (s := 71) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row101_good100_checked :
    goodSegmentCheck 101 33 71
      { lower := 9622, upper := 9719, witness := RowWitness.topPrime 9619 } = true := by
  exact good_top_prime_checked (i := 101) (r := 33) (s := 71) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row101_good101_checked :
    goodSegmentCheck 101 33 71
      { lower := 9720, upper := 9819, witness := RowWitness.topPrime 9719 } = true := by
  exact good_top_prime_checked (i := 101) (r := 33) (s := 71) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row101_good102_checked :
    goodSegmentCheck 101 33 71
      { lower := 9820, upper := 9917, witness := RowWitness.topPrime 9817 } = true := by
  exact good_top_prime_checked (i := 101) (r := 33) (s := 71) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row101_good103_checked :
    goodSegmentCheck 101 33 71
      { lower := 9918, upper := 10007, witness := RowWitness.topPrime 9907 } = true := by
  exact good_top_prime_checked (i := 101) (r := 33) (s := 71) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row101_good104_checked :
    goodSegmentCheck 101 33 71
      { lower := 10008, upper := 10107, witness := RowWitness.topPrime 10007 } = true := by
  exact good_top_prime_checked (i := 101) (r := 33) (s := 71) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row101_good105_checked :
    goodSegmentCheck 101 33 71
      { lower := 10108, upper := 10186, witness := RowWitness.topPrime 10103 } = true := by
  exact good_top_prime_checked (i := 101) (r := 33) (s := 71) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row101_good106_checked :
    goodSegmentCheck 101 33 71
      { lower := 10240, upper := 10306, witness := RowWitness.topPrime 10223 } = true := by
  exact good_top_prime_checked (i := 101) (r := 33) (s := 71) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row101_good107_checked :
    goodSegmentCheck 101 33 71
      { lower := 10625, upper := 10713, witness := RowWitness.topPrime 10613 } = true := by
  exact good_top_prime_checked (i := 101) (r := 33) (s := 71) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row101_good108_checked :
    goodSegmentCheck 101 33 71
      { lower := 10714, upper := 10748, witness := RowWitness.topPrime 10711 } = true := by
  exact good_top_prime_checked (i := 101) (r := 33) (s := 71) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row101_good109_checked :
    goodSegmentCheck 101 33 71
      { lower := 10935, upper := 11009, witness := RowWitness.topPrime 10909 } = true := by
  exact good_top_prime_checked (i := 101) (r := 33) (s := 71) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row101_good110_checked :
    goodSegmentCheck 101 33 71
      { lower := 11010, upper := 11085, witness := RowWitness.topPrime 11003 } = true := by
  exact good_top_prime_checked (i := 101) (r := 33) (s := 71) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row101_good111_checked :
    goodSegmentCheck 101 33 71
      { lower := 11094, upper := 11145, witness := RowWitness.topPrime 11093 } = true := by
  exact good_top_prime_checked (i := 101) (r := 33) (s := 71) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row101_good096_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row101_good097_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row101_good098_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row101_good099_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row101_good100_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row101_good101_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row101_good102_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row101_good103_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row101_good104_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row101_good105_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row101_good106_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row101_good107_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row101_good108_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row101_good109_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row101_good110_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row101_good111_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row101_good112_checked :
    goodSegmentCheck 101 33 71
      { lower := 11163, upper := 11194, witness := RowWitness.topPrime 11161 } = true := by
  exact good_top_prime_checked (i := 101) (r := 33) (s := 71) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row101_good113_checked :
    goodSegmentCheck 101 33 71
      { lower := 11236, upper := 11313, witness := RowWitness.topPrime 11213 } = true := by
  exact good_top_prime_checked (i := 101) (r := 33) (s := 71) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row101_good114_checked :
    goodSegmentCheck 101 33 71
      { lower := 11314, upper := 11350, witness := RowWitness.topPrime 11311 } = true := by
  exact good_top_prime_checked (i := 101) (r := 33) (s := 71) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row101_good115_checked :
    goodSegmentCheck 101 33 71
      { lower := 11774, upper := 11843, witness := RowWitness.topPrime 11743 } = true := by
  exact good_top_prime_checked (i := 101) (r := 33) (s := 71) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row101_good116_checked :
    goodSegmentCheck 101 33 71
      { lower := 11844, upper := 11867, witness := RowWitness.topPrime 11839 } = true := by
  exact good_top_prime_checked (i := 101) (r := 33) (s := 71) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row101_good117_checked :
    goodSegmentCheck 101 33 71
      { lower := 12005, upper := 12079, witness := RowWitness.topPrime 11987 } = true := by
  exact good_top_prime_checked (i := 101) (r := 33) (s := 71) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row101_good118_checked :
    goodSegmentCheck 101 33 71
      { lower := 12321, upper := 12388, witness := RowWitness.topPrime 12301 } = true := by
  exact good_top_prime_checked (i := 101) (r := 33) (s := 71) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row101_good119_checked :
    goodSegmentCheck 101 33 71
      { lower := 12393, upper := 12421, witness := RowWitness.topPrime 12391 } = true := by
  exact good_top_prime_checked (i := 101) (r := 33) (s := 71) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row101_good120_checked :
    goodSegmentCheck 101 33 71
      { lower := 12482, upper := 12579, witness := RowWitness.topPrime 12479 } = true := by
  exact good_top_prime_checked (i := 101) (r := 33) (s := 71) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row101_good121_checked :
    goodSegmentCheck 101 33 71
      { lower := 12580, upper := 12593, witness := RowWitness.topPrime 12577 } = true := by
  exact good_top_prime_checked (i := 101) (r := 33) (s := 71) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row101_good122_checked :
    goodSegmentCheck 101 33 71
      { lower := 13182, upper := 13222, witness := RowWitness.topPrime 13177 } = true := by
  exact good_top_prime_checked (i := 101) (r := 33) (s := 71) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row101_good123_checked :
    goodSegmentCheck 101 33 71
      { lower := 13254, upper := 13282, witness := RowWitness.topPrime 13249 } = true := by
  exact good_top_prime_checked (i := 101) (r := 33) (s := 71) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row101_good124_checked :
    goodSegmentCheck 101 33 71
      { lower := 13310, upper := 13409, witness := RowWitness.topPrime 13309 } = true := by
  exact good_top_prime_checked (i := 101) (r := 33) (s := 71) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row101_good125_checked :
    goodSegmentCheck 101 33 71
      { lower := 13410, upper := 13410, witness := RowWitness.topPrime 13399 } = true := by
  exact good_top_prime_checked (i := 101) (r := 33) (s := 71) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row101_good126_checked :
    goodSegmentCheck 101 33 71
      { lower := 13454, upper := 13551, witness := RowWitness.topPrime 13451 } = true := by
  exact good_top_prime_checked (i := 101) (r := 33) (s := 71) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row101_good127_checked :
    goodSegmentCheck 101 33 71
      { lower := 13552, upper := 13556, witness := RowWitness.topPrime 13537 } = true := by
  exact good_top_prime_checked (i := 101) (r := 33) (s := 71) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row101_good112_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row101_good113_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row101_good114_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row101_good115_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row101_good116_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row101_good117_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row101_good118_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row101_good119_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row101_good120_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row101_good121_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row101_good122_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row101_good123_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row101_good124_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row101_good125_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row101_good126_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row101_good127_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row101_good128_checked :
    goodSegmentCheck 101 33 71
      { lower := 13718, upper := 13811, witness := RowWitness.topPrime 13711 } = true := by
  exact good_top_prime_checked (i := 101) (r := 33) (s := 71) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row101_good129_checked :
    goodSegmentCheck 101 33 71
      { lower := 13812, upper := 13818, witness := RowWitness.topPrime 13807 } = true := by
  exact good_top_prime_checked (i := 101) (r := 33) (s := 71) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row101_good130_checked :
    goodSegmentCheck 101 33 71
      { lower := 13851, upper := 13878, witness := RowWitness.topPrime 13841 } = true := by
  exact good_top_prime_checked (i := 101) (r := 33) (s := 71) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row101_good131_checked :
    goodSegmentCheck 101 33 71
      { lower := 13924, upper := 13951, witness := RowWitness.topPrime 13921 } = true := by
  exact good_top_prime_checked (i := 101) (r := 33) (s := 71) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row101_good132_checked :
    goodSegmentCheck 101 33 71
      { lower := 14336, upper := 14397, witness := RowWitness.topPrime 14327 } = true := by
  exact good_top_prime_checked (i := 101) (r := 33) (s := 71) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row101_good133_checked :
    goodSegmentCheck 101 33 71
      { lower := 14406, upper := 14501, witness := RowWitness.topPrime 14401 } = true := by
  exact good_top_prime_checked (i := 101) (r := 33) (s := 71) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row101_good134_checked :
    goodSegmentCheck 101 33 71
      { lower := 14502, upper := 14506, witness := RowWitness.topPrime 14489 } = true := by
  exact good_top_prime_checked (i := 101) (r := 33) (s := 71) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row101_good135_checked :
    goodSegmentCheck 101 33 71
      { lower := 14739, upper := 14741, witness := RowWitness.topPrime 14737 } = true := by
  exact good_top_prime_checked (i := 101) (r := 33) (s := 71) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row101_good136_checked :
    goodSegmentCheck 101 33 71
      { lower := 14792, upper := 14839, witness := RowWitness.topPrime 14783 } = true := by
  exact good_top_prime_checked (i := 101) (r := 33) (s := 71) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row101_good137_checked :
    goodSegmentCheck 101 33 71
      { lower := 14884, upper := 14892, witness := RowWitness.topPrime 14879 } = true := by
  exact good_top_prime_checked (i := 101) (r := 33) (s := 71) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row101_good138_checked :
    goodSegmentCheck 101 33 71
      { lower := 15123, upper := 15221, witness := RowWitness.topPrime 15121 } = true := by
  exact good_top_prime_checked (i := 101) (r := 33) (s := 71) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row101_good139_checked :
    goodSegmentCheck 101 33 71
      { lower := 15222, upper := 15229, witness := RowWitness.topPrime 15217 } = true := by
  exact good_top_prime_checked (i := 101) (r := 33) (s := 71) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row101_good140_checked :
    goodSegmentCheck 101 33 71
      { lower := 15360, upper := 15459, witness := RowWitness.topPrime 15359 } = true := by
  exact good_top_prime_checked (i := 101) (r := 33) (s := 71) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row101_good141_checked :
    goodSegmentCheck 101 33 71
      { lower := 15460, upper := 15479, witness := RowWitness.topPrime 15451 } = true := by
  exact good_top_prime_checked (i := 101) (r := 33) (s := 71) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row101_good142_checked :
    goodSegmentCheck 101 33 71
      { lower := 15979, upper := 16073, witness := RowWitness.topPrime 15973 } = true := by
  exact good_top_prime_checked (i := 101) (r := 33) (s := 71) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row101_good143_checked :
    goodSegmentCheck 101 33 71
      { lower := 16074, upper := 16079, witness := RowWitness.topPrime 16073 } = true := by
  exact good_top_prime_checked (i := 101) (r := 33) (s := 71) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row101_good128_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row101_good129_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row101_good130_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row101_good131_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row101_good132_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row101_good133_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row101_good134_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row101_good135_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row101_good136_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row101_good137_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row101_good138_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row101_good139_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row101_good140_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row101_good141_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row101_good142_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row101_good143_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row101_good144_checked :
    goodSegmentCheck 101 33 71
      { lower := 16384, upper := 16481, witness := RowWitness.topPrime 16381 } = true := by
  exact good_top_prime_checked (i := 101) (r := 33) (s := 71) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row101_good145_checked :
    goodSegmentCheck 101 33 71
      { lower := 16482, upper := 16484, witness := RowWitness.topPrime 16481 } = true := by
  exact good_top_prime_checked (i := 101) (r := 33) (s := 71) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row101_good146_checked :
    goodSegmentCheck 101 33 71
      { lower := 16810, upper := 16887, witness := RowWitness.topPrime 16787 } = true := by
  exact good_top_prime_checked (i := 101) (r := 33) (s := 71) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row101_good147_checked :
    goodSegmentCheck 101 33 71
      { lower := 16888, upper := 16910, witness := RowWitness.topPrime 16883 } = true := by
  exact good_top_prime_checked (i := 101) (r := 33) (s := 71) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row101_good148_checked :
    goodSegmentCheck 101 33 71
      { lower := 17303, upper := 17398, witness := RowWitness.topPrime 17299 } = true := by
  exact good_top_prime_checked (i := 101) (r := 33) (s := 71) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row101_good149_checked :
    goodSegmentCheck 101 33 71
      { lower := 17408, upper := 17501, witness := RowWitness.topPrime 17401 } = true := by
  exact good_top_prime_checked (i := 101) (r := 33) (s := 71) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row101_good150_checked :
    goodSegmentCheck 101 33 71
      { lower := 17502, upper := 17508, witness := RowWitness.topPrime 17497 } = true := by
  exact good_top_prime_checked (i := 101) (r := 33) (s := 71) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row101_good151_checked :
    goodSegmentCheck 101 33 71
      { lower := 17576, upper := 17596, witness := RowWitness.topPrime 17573 } = true := by
  exact good_top_prime_checked (i := 101) (r := 33) (s := 71) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row101_good152_checked :
    goodSegmentCheck 101 33 71
      { lower := 17672, upper := 17676, witness := RowWitness.topPrime 17669 } = true := by
  exact good_top_prime_checked (i := 101) (r := 33) (s := 71) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row101_good153_checked :
    goodSegmentCheck 101 33 71
      { lower := 18490, upper := 18581, witness := RowWitness.topPrime 18481 } = true := by
  exact good_top_prime_checked (i := 101) (r := 33) (s := 71) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row101_good154_checked :
    goodSegmentCheck 101 33 71
      { lower := 18582, upper := 18590, witness := RowWitness.topPrime 18553 } = true := by
  exact good_top_prime_checked (i := 101) (r := 33) (s := 71) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row101_good155_checked :
    goodSegmentCheck 101 33 71
      { lower := 18634, upper := 18705, witness := RowWitness.topPrime 18617 } = true := by
  exact good_top_prime_checked (i := 101) (r := 33) (s := 71) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row101_good156_checked :
    goodSegmentCheck 101 33 71
      { lower := 18723, upper := 18734, witness := RowWitness.topPrime 18719 } = true := by
  exact good_top_prime_checked (i := 101) (r := 33) (s := 71) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row101_good157_checked :
    goodSegmentCheck 101 33 71
      { lower := 18750, upper := 18849, witness := RowWitness.topPrime 18749 } = true := by
  exact good_top_prime_checked (i := 101) (r := 33) (s := 71) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row101_good158_checked :
    goodSegmentCheck 101 33 71
      { lower := 18850, upper := 18850, witness := RowWitness.topPrime 18839 } = true := by
  exact good_top_prime_checked (i := 101) (r := 33) (s := 71) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row101_good159_checked :
    goodSegmentCheck 101 33 71
      { lower := 19208, upper := 19266, witness := RowWitness.topPrime 19207 } = true := by
  exact good_top_prime_checked (i := 101) (r := 33) (s := 71) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row101_good144_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row101_good145_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row101_good146_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row101_good147_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row101_good148_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row101_good149_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row101_good150_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row101_good151_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row101_good152_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row101_good153_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row101_good154_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row101_good155_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row101_good156_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row101_good157_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row101_good158_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row101_good159_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row101_good160_checked :
    goodSegmentCheck 101 33 71
      { lower := 19663, upper := 19761, witness := RowWitness.topPrime 19661 } = true := by
  exact good_top_prime_checked (i := 101) (r := 33) (s := 71) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row101_good161_checked :
    goodSegmentCheck 101 33 71
      { lower := 19762, upper := 19763, witness := RowWitness.topPrime 19759 } = true := by
  exact good_top_prime_checked (i := 101) (r := 33) (s := 71) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row101_good162_checked :
    goodSegmentCheck 101 33 71
      { lower := 19773, upper := 19783, witness := RowWitness.topPrime 19763 } = true := by
  exact good_top_prime_checked (i := 101) (r := 33) (s := 71) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row101_good163_checked :
    goodSegmentCheck 101 33 71
      { lower := 19965, upper := 19981, witness := RowWitness.topPrime 19963 } = true := by
  exact good_top_prime_checked (i := 101) (r := 33) (s := 71) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row101_good164_checked :
    goodSegmentCheck 101 33 71
      { lower := 20172, upper := 20261, witness := RowWitness.topPrime 20161 } = true := by
  exact good_top_prime_checked (i := 101) (r := 33) (s := 71) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row101_good165_checked :
    goodSegmentCheck 101 33 71
      { lower := 20262, upper := 20264, witness := RowWitness.topPrime 20261 } = true := by
  exact good_top_prime_checked (i := 101) (r := 33) (s := 71) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row101_good166_checked :
    goodSegmentCheck 101 33 71
      { lower := 20535, upper := 20633, witness := RowWitness.topPrime 20533 } = true := by
  exact good_top_prime_checked (i := 101) (r := 33) (s := 71) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row101_good167_checked :
    goodSegmentCheck 101 33 71
      { lower := 20634, upper := 20635, witness := RowWitness.topPrime 20627 } = true := by
  exact good_top_prime_checked (i := 101) (r := 33) (s := 71) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row101_good168_checked :
    goodSegmentCheck 101 33 71
      { lower := 20667, upper := 20677, witness := RowWitness.topPrime 20663 } = true := by
  exact good_top_prime_checked (i := 101) (r := 33) (s := 71) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row101_good169_checked :
    goodSegmentCheck 101 33 71
      { lower := 21870, upper := 21963, witness := RowWitness.topPrime 21863 } = true := by
  exact good_top_prime_checked (i := 101) (r := 33) (s := 71) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row101_good170_checked :
    goodSegmentCheck 101 33 71
      { lower := 21964, upper := 21975, witness := RowWitness.topPrime 21961 } = true := by
  exact good_top_prime_checked (i := 101) (r := 33) (s := 71) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row101_good171_checked :
    goodSegmentCheck 101 33 71
      { lower := 22188, upper := 22190, witness := RowWitness.topPrime 22171 } = true := by
  exact good_top_prime_checked (i := 101) (r := 33) (s := 71) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row101_good172_checked :
    goodSegmentCheck 101 33 71
      { lower := 22472, upper := 22569, witness := RowWitness.topPrime 22469 } = true := by
  exact good_top_prime_checked (i := 101) (r := 33) (s := 71) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row101_good173_checked :
    goodSegmentCheck 101 33 71
      { lower := 22570, upper := 22572, witness := RowWitness.topPrime 22567 } = true := by
  exact good_top_prime_checked (i := 101) (r := 33) (s := 71) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row101_good174_checked :
    goodSegmentCheck 101 33 71
      { lower := 24037, upper := 24129, witness := RowWitness.topPrime 24029 } = true := by
  exact good_top_prime_checked (i := 101) (r := 33) (s := 71) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row101_good175_checked :
    goodSegmentCheck 101 33 71
      { lower := 24130, upper := 24137, witness := RowWitness.topPrime 24121 } = true := by
  exact good_top_prime_checked (i := 101) (r := 33) (s := 71) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row101_good160_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row101_good161_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row101_good162_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row101_good163_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row101_good164_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row101_good165_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row101_good166_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row101_good167_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row101_good168_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row101_good169_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row101_good170_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row101_good171_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row101_good172_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row101_good173_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row101_good174_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row101_good175_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row101_good176_checked :
    goodSegmentCheck 101 33 71
      { lower := 24334, upper := 24429, witness := RowWitness.topPrime 24329 } = true := by
  exact good_top_prime_checked (i := 101) (r := 33) (s := 71) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row101_good177_checked :
    goodSegmentCheck 101 33 71
      { lower := 24430, upper := 24467, witness := RowWitness.topPrime 24421 } = true := by
  exact good_top_prime_checked (i := 101) (r := 33) (s := 71) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row101_good178_checked :
    goodSegmentCheck 101 33 71
      { lower := 24576, upper := 24665, witness := RowWitness.topPrime 24571 } = true := by
  exact good_top_prime_checked (i := 101) (r := 33) (s := 71) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row101_good179_checked :
    goodSegmentCheck 101 33 71
      { lower := 25000, upper := 25064, witness := RowWitness.topPrime 24989 } = true := by
  exact good_top_prime_checked (i := 101) (r := 33) (s := 71) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row101_good180_checked :
    goodSegmentCheck 101 33 71
      { lower := 25215, upper := 25289, witness := RowWitness.topPrime 25189 } = true := by
  exact good_top_prime_checked (i := 101) (r := 33) (s := 71) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row101_good181_checked :
    goodSegmentCheck 101 33 71
      { lower := 25290, upper := 25315, witness := RowWitness.topPrime 25261 } = true := by
  exact good_top_prime_checked (i := 101) (r := 33) (s := 71) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row101_good182_checked :
    goodSegmentCheck 101 33 71
      { lower := 26411, upper := 26464, witness := RowWitness.topPrime 26407 } = true := by
  exact good_top_prime_checked (i := 101) (r := 33) (s := 71) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row101_good183_checked :
    goodSegmentCheck 101 33 71
      { lower := 26508, upper := 26511, witness := RowWitness.topPrime 26501 } = true := by
  exact good_top_prime_checked (i := 101) (r := 33) (s := 71) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row101_good184_checked :
    goodSegmentCheck 101 33 71
      { lower := 26645, upper := 26724, witness := RowWitness.topPrime 26641 } = true := by
  exact good_top_prime_checked (i := 101) (r := 33) (s := 71) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row101_good185_checked :
    goodSegmentCheck 101 33 71
      { lower := 28125, upper := 28190, witness := RowWitness.topPrime 28123 } = true := by
  exact good_top_prime_checked (i := 101) (r := 33) (s := 71) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row101_good186_checked :
    goodSegmentCheck 101 33 71
      { lower := 28717, upper := 28772, witness := RowWitness.topPrime 28711 } = true := by
  exact good_top_prime_checked (i := 101) (r := 33) (s := 71) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row101_good187_checked :
    goodSegmentCheck 101 33 71
      { lower := 28812, upper := 28817, witness := RowWitness.topPrime 28807 } = true := by
  exact good_top_prime_checked (i := 101) (r := 33) (s := 71) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row101_good188_checked :
    goodSegmentCheck 101 33 71
      { lower := 29791, upper := 29868, witness := RowWitness.topPrime 29789 } = true := by
  exact good_top_prime_checked (i := 101) (r := 33) (s := 71) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row101_good189_checked :
    goodSegmentCheck 101 33 71
      { lower := 30758, upper := 30820, witness := RowWitness.topPrime 30757 } = true := by
  exact good_top_prime_checked (i := 101) (r := 33) (s := 71) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row101_good190_checked :
    goodSegmentCheck 101 33 71
      { lower := 30926, upper := 30999, witness := RowWitness.topPrime 30911 } = true := by
  exact good_top_prime_checked (i := 101) (r := 33) (s := 71) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row101_good191_checked :
    goodSegmentCheck 101 33 71
      { lower := 31213, upper := 31293, witness := RowWitness.topPrime 31193 } = true := by
  exact good_top_prime_checked (i := 101) (r := 33) (s := 71) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row101_good176_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row101_good177_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row101_good178_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row101_good179_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row101_good180_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row101_good181_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row101_good182_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row101_good183_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row101_good184_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row101_good185_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row101_good186_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row101_good187_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row101_good188_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row101_good189_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row101_good190_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row101_good191_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row101_good192_checked :
    goodSegmentCheck 101 33 71
      { lower := 31294, upper := 31313, witness := RowWitness.topPrime 31277 } = true := by
  exact good_top_prime_checked (i := 101) (r := 33) (s := 71) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row101_good193_checked :
    goodSegmentCheck 101 33 71
      { lower := 31329, upper := 31350, witness := RowWitness.topPrime 31327 } = true := by
  exact good_top_prime_checked (i := 101) (r := 33) (s := 71) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row101_good194_checked :
    goodSegmentCheck 101 33 71
      { lower := 31423, upper := 31429, witness := RowWitness.topPrime 31397 } = true := by
  exact good_top_prime_checked (i := 101) (r := 33) (s := 71) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row101_good195_checked :
    goodSegmentCheck 101 33 71
      { lower := 32805, upper := 32868, witness := RowWitness.topPrime 32803 } = true := by
  exact good_top_prime_checked (i := 101) (r := 33) (s := 71) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row101_good196_checked :
    goodSegmentCheck 101 33 71
      { lower := 33708, upper := 33714, witness := RowWitness.topPrime 33703 } = true := by
  exact good_top_prime_checked (i := 101) (r := 33) (s := 71) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row101_good197_checked :
    goodSegmentCheck 101 33 71
      { lower := 34375, upper := 34469, witness := RowWitness.topPrime 34369 } = true := by
  exact good_top_prime_checked (i := 101) (r := 33) (s := 71) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row101_good198_checked :
    goodSegmentCheck 101 33 71
      { lower := 34470, upper := 34491, witness := RowWitness.topPrime 34469 } = true := by
  exact good_top_prime_checked (i := 101) (r := 33) (s := 71) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row101_good199_checked :
    goodSegmentCheck 101 33 71
      { lower := 36517, upper := 36597, witness := RowWitness.topPrime 36497 } = true := by
  exact good_top_prime_checked (i := 101) (r := 33) (s := 71) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row101_good200_checked :
    goodSegmentCheck 101 33 71
      { lower := 36598, upper := 36601, witness := RowWitness.topPrime 36587 } = true := by
  exact good_top_prime_checked (i := 101) (r := 33) (s := 71) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row101_good201_checked :
    goodSegmentCheck 101 33 71
      { lower := 37303, upper := 37310, witness := RowWitness.topPrime 37277 } = true := by
  exact good_top_prime_checked (i := 101) (r := 33) (s := 71) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row101_good202_checked :
    goodSegmentCheck 101 33 71
      { lower := 37500, upper := 37546, witness := RowWitness.topPrime 37493 } = true := by
  exact good_top_prime_checked (i := 101) (r := 33) (s := 71) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row101_good203_checked :
    goodSegmentCheck 101 33 71
      { lower := 39326, upper := 39423, witness := RowWitness.topPrime 39323 } = true := by
  exact good_top_prime_checked (i := 101) (r := 33) (s := 71) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row101_good204_checked :
    goodSegmentCheck 101 33 71
      { lower := 39424, upper := 39426, witness := RowWitness.topPrime 39419 } = true := by
  exact good_top_prime_checked (i := 101) (r := 33) (s := 71) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row101_good205_checked :
    goodSegmentCheck 101 33 71
      { lower := 40401, upper := 40428, witness := RowWitness.topPrime 40387 } = true := by
  exact good_top_prime_checked (i := 101) (r := 33) (s := 71) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row101_good206_checked :
    goodSegmentCheck 101 33 71
      { lower := 40960, upper := 41031, witness := RowWitness.topPrime 40949 } = true := by
  exact good_top_prime_checked (i := 101) (r := 33) (s := 71) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row101_good207_checked :
    goodSegmentCheck 101 33 71
      { lower := 48013, upper := 48061, witness := RowWitness.topPrime 47981 } = true := by
  exact good_top_prime_checked (i := 101) (r := 33) (s := 71) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row101_good192_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row101_good193_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row101_good194_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row101_good195_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row101_good196_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row101_good197_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row101_good198_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row101_good199_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row101_good200_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row101_good201_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row101_good202_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row101_good203_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row101_good204_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row101_good205_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row101_good206_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row101_good207_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row101_good208_checked :
    goodSegmentCheck 101 33 71
      { lower := 49152, upper := 49230, witness := RowWitness.topPrime 49139 } = true := by
  exact good_top_prime_checked (i := 101) (r := 33) (s := 71) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row101_good209_checked :
    goodSegmentCheck 101 33 71
      { lower := 50421, upper := 50510, witness := RowWitness.topPrime 50417 } = true := by
  exact good_top_prime_checked (i := 101) (r := 33) (s := 71) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row101_good210_checked :
    goodSegmentCheck 101 33 71
      { lower := 55451, upper := 55541, witness := RowWitness.topPrime 55441 } = true := by
  exact good_top_prime_checked (i := 101) (r := 33) (s := 71) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row101_good211_checked :
    goodSegmentCheck 101 33 71
      { lower := 55542, upper := 55547, witness := RowWitness.topPrime 55541 } = true := by
  exact good_top_prime_checked (i := 101) (r := 33) (s := 71) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row101_good212_checked :
    goodSegmentCheck 101 33 71
      { lower := 58619, upper := 58664, witness := RowWitness.topPrime 58613 } = true := by
  exact good_top_prime_checked (i := 101) (r := 33) (s := 71) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row101_good213_checked :
    goodSegmentCheck 101 33 71
      { lower := 59049, upper := 59056, witness := RowWitness.topPrime 59029 } = true := by
  exact good_top_prime_checked (i := 101) (r := 33) (s := 71) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row101_good214_checked :
    goodSegmentCheck 101 33 71
      { lower := 62500, upper := 62510, witness := RowWitness.topPrime 62497 } = true := by
  exact good_top_prime_checked (i := 101) (r := 33) (s := 71) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row101_good215_checked :
    goodSegmentCheck 101 33 71
      { lower := 65610, upper := 65636, witness := RowWitness.topPrime 65609 } = true := by
  exact good_top_prime_checked (i := 101) (r := 33) (s := 71) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row101_good216_checked :
    goodSegmentCheck 101 33 71
      { lower := 68651, upper := 68690, witness := RowWitness.topPrime 68639 } = true := by
  exact good_top_prime_checked (i := 101) (r := 33) (s := 71) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row101_good217_checked :
    goodSegmentCheck 101 33 71
      { lower := 68921, upper := 68990, witness := RowWitness.topPrime 68917 } = true := by
  exact good_top_prime_checked (i := 101) (r := 33) (s := 71) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row101_good218_checked :
    goodSegmentCheck 101 33 71
      { lower := 73205, upper := 73267, witness := RowWitness.topPrime 73189 } = true := by
  exact good_top_prime_checked (i := 101) (r := 33) (s := 71) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row101_good219_checked :
    goodSegmentCheck 101 33 71
      { lower := 137842, upper := 137881, witness := RowWitness.topPrime 137831 } = true := by
  exact good_top_prime_checked (i := 101) (r := 33) (s := 71) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row101_good220_checked :
    goodSegmentCheck 101 33 71
      { lower := 148955, upper := 148977, witness := RowWitness.topPrime 148949 } = true := by
  exact good_top_prime_checked (i := 101) (r := 33) (s := 71) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row101_good208_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row101_good209_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row101_good210_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row101_good211_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row101_good212_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row101_good213_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row101_good214_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row101_good215_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row101_good216_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row101_good217_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row101_good218_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row101_good219_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row101_good220_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row101_goods_checked :
    row101.goods.all (goodSegmentCheck row101.height.i row101.height.r row101.height.s) = true := by
  change row101_goods.all (goodSegmentCheck 101 33 71) = true
  simp only [row101_goods, List.all_cons, List.all_nil,
    row101_good000_checked,
    row101_good001_checked,
    row101_good002_checked,
    row101_good003_checked,
    row101_good004_checked,
    row101_good005_checked,
    row101_good006_checked,
    row101_good007_checked,
    row101_good008_checked,
    row101_good009_checked,
    row101_good010_checked,
    row101_good011_checked,
    row101_good012_checked,
    row101_good013_checked,
    row101_good014_checked,
    row101_good015_checked,
    row101_good016_checked,
    row101_good017_checked,
    row101_good018_checked,
    row101_good019_checked,
    row101_good020_checked,
    row101_good021_checked,
    row101_good022_checked,
    row101_good023_checked,
    row101_good024_checked,
    row101_good025_checked,
    row101_good026_checked,
    row101_good027_checked,
    row101_good028_checked,
    row101_good029_checked,
    row101_good030_checked,
    row101_good031_checked,
    row101_good032_checked,
    row101_good033_checked,
    row101_good034_checked,
    row101_good035_checked,
    row101_good036_checked,
    row101_good037_checked,
    row101_good038_checked,
    row101_good039_checked,
    row101_good040_checked,
    row101_good041_checked,
    row101_good042_checked,
    row101_good043_checked,
    row101_good044_checked,
    row101_good045_checked,
    row101_good046_checked,
    row101_good047_checked,
    row101_good048_checked,
    row101_good049_checked,
    row101_good050_checked,
    row101_good051_checked,
    row101_good052_checked,
    row101_good053_checked,
    row101_good054_checked,
    row101_good055_checked,
    row101_good056_checked,
    row101_good057_checked,
    row101_good058_checked,
    row101_good059_checked,
    row101_good060_checked,
    row101_good061_checked,
    row101_good062_checked,
    row101_good063_checked,
    row101_good064_checked,
    row101_good065_checked,
    row101_good066_checked,
    row101_good067_checked,
    row101_good068_checked,
    row101_good069_checked,
    row101_good070_checked,
    row101_good071_checked,
    row101_good072_checked,
    row101_good073_checked,
    row101_good074_checked,
    row101_good075_checked,
    row101_good076_checked,
    row101_good077_checked,
    row101_good078_checked,
    row101_good079_checked,
    row101_good080_checked,
    row101_good081_checked,
    row101_good082_checked,
    row101_good083_checked,
    row101_good084_checked,
    row101_good085_checked,
    row101_good086_checked,
    row101_good087_checked,
    row101_good088_checked,
    row101_good089_checked,
    row101_good090_checked,
    row101_good091_checked,
    row101_good092_checked,
    row101_good093_checked,
    row101_good094_checked,
    row101_good095_checked,
    row101_good096_checked,
    row101_good097_checked,
    row101_good098_checked,
    row101_good099_checked,
    row101_good100_checked,
    row101_good101_checked,
    row101_good102_checked,
    row101_good103_checked,
    row101_good104_checked,
    row101_good105_checked,
    row101_good106_checked,
    row101_good107_checked,
    row101_good108_checked,
    row101_good109_checked,
    row101_good110_checked,
    row101_good111_checked,
    row101_good112_checked,
    row101_good113_checked,
    row101_good114_checked,
    row101_good115_checked,
    row101_good116_checked,
    row101_good117_checked,
    row101_good118_checked,
    row101_good119_checked,
    row101_good120_checked,
    row101_good121_checked,
    row101_good122_checked,
    row101_good123_checked,
    row101_good124_checked,
    row101_good125_checked,
    row101_good126_checked,
    row101_good127_checked,
    row101_good128_checked,
    row101_good129_checked,
    row101_good130_checked,
    row101_good131_checked,
    row101_good132_checked,
    row101_good133_checked,
    row101_good134_checked,
    row101_good135_checked,
    row101_good136_checked,
    row101_good137_checked,
    row101_good138_checked,
    row101_good139_checked,
    row101_good140_checked,
    row101_good141_checked,
    row101_good142_checked,
    row101_good143_checked,
    row101_good144_checked,
    row101_good145_checked,
    row101_good146_checked,
    row101_good147_checked,
    row101_good148_checked,
    row101_good149_checked,
    row101_good150_checked,
    row101_good151_checked,
    row101_good152_checked,
    row101_good153_checked,
    row101_good154_checked,
    row101_good155_checked,
    row101_good156_checked,
    row101_good157_checked,
    row101_good158_checked,
    row101_good159_checked,
    row101_good160_checked,
    row101_good161_checked,
    row101_good162_checked,
    row101_good163_checked,
    row101_good164_checked,
    row101_good165_checked,
    row101_good166_checked,
    row101_good167_checked,
    row101_good168_checked,
    row101_good169_checked,
    row101_good170_checked,
    row101_good171_checked,
    row101_good172_checked,
    row101_good173_checked,
    row101_good174_checked,
    row101_good175_checked,
    row101_good176_checked,
    row101_good177_checked,
    row101_good178_checked,
    row101_good179_checked,
    row101_good180_checked,
    row101_good181_checked,
    row101_good182_checked,
    row101_good183_checked,
    row101_good184_checked,
    row101_good185_checked,
    row101_good186_checked,
    row101_good187_checked,
    row101_good188_checked,
    row101_good189_checked,
    row101_good190_checked,
    row101_good191_checked,
    row101_good192_checked,
    row101_good193_checked,
    row101_good194_checked,
    row101_good195_checked,
    row101_good196_checked,
    row101_good197_checked,
    row101_good198_checked,
    row101_good199_checked,
    row101_good200_checked,
    row101_good201_checked,
    row101_good202_checked,
    row101_good203_checked,
    row101_good204_checked,
    row101_good205_checked,
    row101_good206_checked,
    row101_good207_checked,
    row101_good208_checked,
    row101_good209_checked,
    row101_good210_checked,
    row101_good211_checked,
    row101_good212_checked,
    row101_good213_checked,
    row101_good214_checked,
    row101_good215_checked,
    row101_good216_checked,
    row101_good217_checked,
    row101_good218_checked,
    row101_good219_checked,
    row101_good220_checked, Bool.true_and]

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row101_goods_checked

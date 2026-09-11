import research.tasks.«B699-Binomial».runs.«20260909-low-index-structure-b41a5a63».lean.FiniteCover
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.WitnessBridge
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.LayerParts
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.PairChunks

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row100_height : HeightCertificateDatum := { i := 100, r := 33, s := 70, n0Power10 := 8 }

def row100_goods : List GoodSegment := [
  { lower := 202, upper := 298, witness := RowWitness.topPrime 199 },
  { lower := 299, upper := 392, witness := RowWitness.topPrime 293 },
  { lower := 393, upper := 488, witness := RowWitness.topPrime 389 },
  { lower := 489, upper := 586, witness := RowWitness.topPrime 487 },
  { lower := 587, upper := 686, witness := RowWitness.topPrime 587 },
  { lower := 687, upper := 782, witness := RowWitness.topPrime 683 },
  { lower := 783, upper := 872, witness := RowWitness.topPrime 773 },
  { lower := 873, upper := 962, witness := RowWitness.topPrime 863 },
  { lower := 963, upper := 1052, witness := RowWitness.topPrime 953 },
  { lower := 1053, upper := 1150, witness := RowWitness.topPrime 1051 },
  { lower := 1151, upper := 1250, witness := RowWitness.topPrime 1151 },
  { lower := 1251, upper := 1348, witness := RowWitness.topPrime 1249 },
  { lower := 1349, upper := 1426, witness := RowWitness.topPrime 1327 },
  { lower := 1427, upper := 1526, witness := RowWitness.topPrime 1427 },
  { lower := 1527, upper := 1622, witness := RowWitness.topPrime 1523 },
  { lower := 1623, upper := 1720, witness := RowWitness.topPrime 1621 },
  { lower := 1721, upper := 1820, witness := RowWitness.topPrime 1721 },
  { lower := 1821, upper := 1910, witness := RowWitness.topPrime 1811 },
  { lower := 1911, upper := 2006, witness := RowWitness.topPrime 1907 },
  { lower := 2007, upper := 2102, witness := RowWitness.topPrime 2003 },
  { lower := 2103, upper := 2198, witness := RowWitness.topPrime 2099 },
  { lower := 2199, upper := 2278, witness := RowWitness.topPrime 2179 },
  { lower := 2279, upper := 2372, witness := RowWitness.topPrime 2273 },
  { lower := 2373, upper := 2470, witness := RowWitness.topPrime 2371 },
  { lower := 2471, upper := 2566, witness := RowWitness.topPrime 2467 },
  { lower := 2567, upper := 2656, witness := RowWitness.topPrime 2557 },
  { lower := 2657, upper := 2756, witness := RowWitness.topPrime 2657 },
  { lower := 2757, upper := 2852, witness := RowWitness.topPrime 2753 },
  { lower := 2853, upper := 2950, witness := RowWitness.topPrime 2851 },
  { lower := 2951, upper := 3038, witness := RowWitness.topPrime 2939 },
  { lower := 3039, upper := 3136, witness := RowWitness.topPrime 3037 },
  { lower := 3137, upper := 3236, witness := RowWitness.topPrime 3137 },
  { lower := 3237, upper := 3328, witness := RowWitness.topPrime 3229 },
  { lower := 3329, upper := 3428, witness := RowWitness.topPrime 3329 },
  { lower := 3429, upper := 3512, witness := RowWitness.topPrime 3413 },
  { lower := 3513, upper := 3610, witness := RowWitness.topPrime 3511 },
  { lower := 3611, upper := 3706, witness := RowWitness.topPrime 3607 },
  { lower := 3707, upper := 3800, witness := RowWitness.topPrime 3701 },
  { lower := 3801, upper := 3896, witness := RowWitness.topPrime 3797 },
  { lower := 3897, upper := 3988, witness := RowWitness.topPrime 3889 },
  { lower := 3989, upper := 4088, witness := RowWitness.topPrime 3989 },
  { lower := 4089, upper := 4178, witness := RowWitness.topPrime 4079 },
  { lower := 4179, upper := 4276, witness := RowWitness.topPrime 4177 },
  { lower := 4277, upper := 4372, witness := RowWitness.topPrime 4273 },
  { lower := 4373, upper := 4472, witness := RowWitness.topPrime 4373 },
  { lower := 4473, upper := 4562, witness := RowWitness.topPrime 4463 },
  { lower := 4563, upper := 4660, witness := RowWitness.topPrime 4561 },
  { lower := 4661, upper := 4756, witness := RowWitness.topPrime 4657 },
  { lower := 4757, upper := 4850, witness := RowWitness.topPrime 4751 },
  { lower := 4851, upper := 4930, witness := RowWitness.topPrime 4831 },
  { lower := 4931, upper := 5030, witness := RowWitness.topPrime 4931 },
  { lower := 5031, upper := 5122, witness := RowWitness.topPrime 5023 },
  { lower := 5123, upper := 5218, witness := RowWitness.topPrime 5119 },
  { lower := 5219, upper := 5308, witness := RowWitness.topPrime 5209 },
  { lower := 5309, upper := 5408, witness := RowWitness.topPrime 5309 },
  { lower := 5409, upper := 5506, witness := RowWitness.topPrime 5407 },
  { lower := 5507, upper := 5606, witness := RowWitness.topPrime 5507 },
  { lower := 5607, upper := 5690, witness := RowWitness.topPrime 5591 },
  { lower := 5691, upper := 5788, witness := RowWitness.topPrime 5689 },
  { lower := 5789, upper := 5882, witness := RowWitness.topPrime 5783 },
  { lower := 5883, upper := 5980, witness := RowWitness.topPrime 5881 },
  { lower := 5981, upper := 6080, witness := RowWitness.topPrime 5981 },
  { lower := 6081, upper := 6178, witness := RowWitness.topPrime 6079 },
  { lower := 6179, upper := 6272, witness := RowWitness.topPrime 6173 },
  { lower := 6273, upper := 6370, witness := RowWitness.topPrime 6271 },
  { lower := 6371, upper := 6466, witness := RowWitness.topPrime 6367 },
  { lower := 6467, upper := 6550, witness := RowWitness.topPrime 6451 },
  { lower := 6551, upper := 6650, witness := RowWitness.topPrime 6551 },
  { lower := 6651, upper := 6736, witness := RowWitness.topPrime 6637 },
  { lower := 6737, upper := 6836, witness := RowWitness.topPrime 6737 },
  { lower := 6837, upper := 6932, witness := RowWitness.topPrime 6833 },
  { lower := 6933, upper := 7016, witness := RowWitness.topPrime 6917 },
  { lower := 7017, upper := 7112, witness := RowWitness.topPrime 7013 },
  { lower := 7113, upper := 7208, witness := RowWitness.topPrime 7109 },
  { lower := 7209, upper := 7306, witness := RowWitness.topPrime 7207 },
  { lower := 7307, upper := 7406, witness := RowWitness.topPrime 7307 },
  { lower := 7407, upper := 7492, witness := RowWitness.topPrime 7393 },
  { lower := 7493, upper := 7588, witness := RowWitness.topPrime 7489 },
  { lower := 7589, upper := 7688, witness := RowWitness.topPrime 7589 },
  { lower := 7689, upper := 7786, witness := RowWitness.topPrime 7687 },
  { lower := 7787, upper := 7858, witness := RowWitness.topPrime 7759 },
  { lower := 7859, upper := 7952, witness := RowWitness.topPrime 7853 },
  { lower := 7953, upper := 8050, witness := RowWitness.topPrime 7951 },
  { lower := 8051, upper := 8138, witness := RowWitness.topPrime 8039 },
  { lower := 8139, upper := 8222, witness := RowWitness.topPrime 8123 },
  { lower := 8223, upper := 8320, witness := RowWitness.topPrime 8221 },
  { lower := 8321, upper := 8416, witness := RowWitness.topPrime 8317 },
  { lower := 8417, upper := 8488, witness := RowWitness.topPrime 8389 },
  { lower := 8489, upper := 8566, witness := RowWitness.topPrime 8467 },
  { lower := 8567, upper := 8662, witness := RowWitness.topPrime 8563 },
  { lower := 8663, upper := 8762, witness := RowWitness.topPrime 8663 },
  { lower := 8763, upper := 8860, witness := RowWitness.topPrime 8761 },
  { lower := 8861, upper := 8960, witness := RowWitness.topPrime 8861 },
  { lower := 8961, upper := 9050, witness := RowWitness.topPrime 8951 },
  { lower := 9051, upper := 9148, witness := RowWitness.topPrime 9049 },
  { lower := 9149, upper := 9236, witness := RowWitness.topPrime 9137 },
  { lower := 9237, upper := 9326, witness := RowWitness.topPrime 9227 },
  { lower := 9327, upper := 9422, witness := RowWitness.topPrime 9323 },
  { lower := 9423, upper := 9520, witness := RowWitness.topPrime 9421 },
  { lower := 9521, upper := 9620, witness := RowWitness.topPrime 9521 },
  { lower := 9621, upper := 9718, witness := RowWitness.topPrime 9619 },
  { lower := 9719, upper := 9818, witness := RowWitness.topPrime 9719 },
  { lower := 9819, upper := 9899, witness := RowWitness.topPrime 9817 },
  { lower := 10082, upper := 10178, witness := RowWitness.topPrime 10079 },
  { lower := 10179, upper := 10185, witness := RowWitness.topPrime 10177 },
  { lower := 10240, upper := 10305, witness := RowWitness.topPrime 10223 },
  { lower := 10580, upper := 10666, witness := RowWitness.topPrime 10567 },
  { lower := 10667, upper := 10747, witness := RowWitness.topPrime 10667 },
  { lower := 10935, upper := 11008, witness := RowWitness.topPrime 10909 },
  { lower := 11009, upper := 11084, witness := RowWitness.topPrime 11003 },
  { lower := 11094, upper := 11144, witness := RowWitness.topPrime 11093 },
  { lower := 11163, upper := 11193, witness := RowWitness.topPrime 11161 },
  { lower := 11236, upper := 11262, witness := RowWitness.topPrime 11213 },
  { lower := 11774, upper := 11842, witness := RowWitness.topPrime 11743 },
  { lower := 11843, upper := 11866, witness := RowWitness.topPrime 11839 },
  { lower := 12005, upper := 12078, witness := RowWitness.topPrime 11987 },
  { lower := 12321, upper := 12387, witness := RowWitness.topPrime 12301 },
  { lower := 12393, upper := 12420, witness := RowWitness.topPrime 12391 },
  { lower := 12482, upper := 12578, witness := RowWitness.topPrime 12479 },
  { lower := 12579, upper := 12581, witness := RowWitness.topPrime 12577 },
  { lower := 13182, upper := 13221, witness := RowWitness.topPrime 13177 },
  { lower := 13254, upper := 13281, witness := RowWitness.topPrime 13249 },
  { lower := 13310, upper := 13353, witness := RowWitness.topPrime 13309 },
  { lower := 13454, upper := 13550, witness := RowWitness.topPrime 13451 },
  { lower := 13551, upper := 13555, witness := RowWitness.topPrime 13537 },
  { lower := 13718, upper := 13810, witness := RowWitness.topPrime 13711 },
  { lower := 13811, upper := 13817, witness := RowWitness.topPrime 13807 },
  { lower := 13851, upper := 13877, witness := RowWitness.topPrime 13841 },
  { lower := 13924, upper := 13950, witness := RowWitness.topPrime 13921 },
  { lower := 14415, upper := 14505, witness := RowWitness.topPrime 14411 },
  { lower := 14641, upper := 14679, witness := RowWitness.topPrime 14639 },
  { lower := 14739, upper := 14740, witness := RowWitness.topPrime 14737 },
  { lower := 14792, upper := 14838, witness := RowWitness.topPrime 14783 },
  { lower := 14884, upper := 14891, witness := RowWitness.topPrime 14879 },
  { lower := 15123, upper := 15220, witness := RowWitness.topPrime 15121 },
  { lower := 15221, upper := 15228, witness := RowWitness.topPrime 15217 },
  { lower := 15376, upper := 15472, witness := RowWitness.topPrime 15373 },
  { lower := 15473, upper := 15478, witness := RowWitness.topPrime 15473 },
  { lower := 15979, upper := 16072, witness := RowWitness.topPrime 15973 },
  { lower := 16073, upper := 16078, witness := RowWitness.topPrime 16073 },
  { lower := 16384, upper := 16480, witness := RowWitness.topPrime 16381 },
  { lower := 16481, upper := 16483, witness := RowWitness.topPrime 16481 },
  { lower := 16810, upper := 16886, witness := RowWitness.topPrime 16787 },
  { lower := 16887, upper := 16919, witness := RowWitness.topPrime 16883 },
  { lower := 17303, upper := 17397, witness := RowWitness.topPrime 17299 },
  { lower := 17496, upper := 17504, witness := RowWitness.topPrime 17491 },
  { lower := 17576, upper := 17595, witness := RowWitness.topPrime 17573 },
  { lower := 17672, upper := 17675, witness := RowWitness.topPrime 17669 },
  { lower := 18491, upper := 18580, witness := RowWitness.topPrime 18481 },
  { lower := 18581, upper := 18589, witness := RowWitness.topPrime 18553 },
  { lower := 18634, upper := 18704, witness := RowWitness.topPrime 18617 },
  { lower := 18723, upper := 18733, witness := RowWitness.topPrime 18719 },
  { lower := 18818, upper := 18822, witness := RowWitness.topPrime 18803 },
  { lower := 19208, upper := 19306, witness := RowWitness.topPrime 19207 },
  { lower := 19307, upper := 19307, witness := RowWitness.topPrime 19301 },
  { lower := 19663, upper := 19760, witness := RowWitness.topPrime 19661 },
  { lower := 19761, upper := 19762, witness := RowWitness.topPrime 19759 },
  { lower := 19773, upper := 19782, witness := RowWitness.topPrime 19763 },
  { lower := 19965, upper := 19980, witness := RowWitness.topPrime 19963 },
  { lower := 20172, upper := 20260, witness := RowWitness.topPrime 20161 },
  { lower := 20261, upper := 20263, witness := RowWitness.topPrime 20261 },
  { lower := 20577, upper := 20634, witness := RowWitness.topPrime 20563 },
  { lower := 20667, upper := 20676, witness := RowWitness.topPrime 20663 },
  { lower := 21316, upper := 21395, witness := RowWitness.topPrime 21313 },
  { lower := 21870, upper := 21962, witness := RowWitness.topPrime 21863 },
  { lower := 21963, upper := 22003, witness := RowWitness.topPrime 21961 },
  { lower := 22188, upper := 22189, witness := RowWitness.topPrime 22171 },
  { lower := 22472, upper := 22544, witness := RowWitness.topPrime 22469 },
  { lower := 24037, upper := 24128, witness := RowWitness.topPrime 24029 },
  { lower := 24129, upper := 24136, witness := RowWitness.topPrime 24121 },
  { lower := 24334, upper := 24428, witness := RowWitness.topPrime 24329 },
  { lower := 24429, upper := 24466, witness := RowWitness.topPrime 24421 },
  { lower := 24576, upper := 24664, witness := RowWitness.topPrime 24571 },
  { lower := 25215, upper := 25288, witness := RowWitness.topPrime 25189 },
  { lower := 25289, upper := 25314, witness := RowWitness.topPrime 25261 },
  { lower := 26411, upper := 26463, witness := RowWitness.topPrime 26407 },
  { lower := 26508, upper := 26510, witness := RowWitness.topPrime 26501 },
  { lower := 26934, upper := 26995, witness := RowWitness.topPrime 26927 },
  { lower := 28812, upper := 28816, witness := RowWitness.topPrime 28807 },
  { lower := 29791, upper := 29867, witness := RowWitness.topPrime 29789 },
  { lower := 30926, upper := 30998, witness := RowWitness.topPrime 30911 },
  { lower := 31213, upper := 31292, witness := RowWitness.topPrime 31193 },
  { lower := 31293, upper := 31304, witness := RowWitness.topPrime 31277 },
  { lower := 31423, upper := 31428, witness := RowWitness.topPrime 31397 },
  { lower := 32805, upper := 32867, witness := RowWitness.topPrime 32803 },
  { lower := 33708, upper := 33713, witness := RowWitness.topPrime 33703 },
  { lower := 34391, upper := 34394, witness := RowWitness.topPrime 34381 },
  { lower := 34445, upper := 34490, witness := RowWitness.topPrime 34439 },
  { lower := 35344, upper := 35386, witness := RowWitness.topPrime 35339 },
  { lower := 36517, upper := 36596, witness := RowWitness.topPrime 36497 },
  { lower := 36597, upper := 36600, witness := RowWitness.topPrime 36587 },
  { lower := 37303, upper := 37309, witness := RowWitness.topPrime 37277 },
  { lower := 39326, upper := 39422, witness := RowWitness.topPrime 39323 },
  { lower := 39423, upper := 39425, witness := RowWitness.topPrime 39419 },
  { lower := 40401, upper := 40427, witness := RowWitness.topPrime 40387 },
  { lower := 48013, upper := 48060, witness := RowWitness.topPrime 47981 },
  { lower := 49152, upper := 49229, witness := RowWitness.topPrime 49139 },
  { lower := 50421, upper := 50509, witness := RowWitness.topPrime 50417 },
  { lower := 55451, upper := 55540, witness := RowWitness.topPrime 55441 },
  { lower := 55541, upper := 55546, witness := RowWitness.topPrime 55541 },
  { lower := 58619, upper := 58663, witness := RowWitness.topPrime 58613 },
  { lower := 59049, upper := 59055, witness := RowWitness.topPrime 59029 },
  { lower := 63948, upper := 63968, witness := RowWitness.topPrime 63929 },
  { lower := 65536, upper := 65620, witness := RowWitness.topPrime 65521 },
  { lower := 65621, upper := 65635, witness := RowWitness.topPrime 65617 },
  { lower := 68651, upper := 68689, witness := RowWitness.topPrime 68639 },
  { lower := 68921, upper := 68989, witness := RowWitness.topPrime 68917 },
  { lower := 73205, upper := 73266, witness := RowWitness.topPrime 73189 },
  { lower := 137842, upper := 137880, witness := RowWitness.topPrime 137831 },
  { lower := 146410, upper := 146433, witness := RowWitness.topPrime 146407 },
  { lower := 148955, upper := 148976, witness := RowWitness.topPrime 148949 }
]

def row100_layers : List CoverLayer := [
  { lower := 9900, upper := 19800, M := 20 },
  { lower := 19800, upper := 39600, M := 16 },
  { lower := 39600, upper := 79200, M := 13 },
  { lower := 79200, upper := 158400, M := 10 },
  { lower := 158400, upper := 316800, M := 8 },
  { lower := 316800, upper := 633600, M := 7 },
  { lower := 633600, upper := 1267200, M := 5 },
  { lower := 1267200, upper := 2534400, M := 4 },
  { lower := 2534400, upper := 5068800, M := 4 },
  { lower := 5068800, upper := 10137600, M := 3 },
  { lower := 10137600, upper := 20275200, M := 2 },
  { lower := 20275200, upper := 40550400, M := 2 },
  { lower := 40550400, upper := 81100800, M := 2 },
  { lower := 81100800, upper := 100000000, M := 1 }
]

def row100 : FiniteCoverRow := {
  height := row100_height,
  goods := row100_goods,
  layers := row100_layers
}


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row100

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row100_good000_checked :
    goodSegmentCheck 100 33 70
      { lower := 202, upper := 298, witness := RowWitness.topPrime 199 } = true := by
  exact good_top_prime_checked (i := 100) (r := 33) (s := 70) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row100_good001_checked :
    goodSegmentCheck 100 33 70
      { lower := 299, upper := 392, witness := RowWitness.topPrime 293 } = true := by
  exact good_top_prime_checked (i := 100) (r := 33) (s := 70) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row100_good002_checked :
    goodSegmentCheck 100 33 70
      { lower := 393, upper := 488, witness := RowWitness.topPrime 389 } = true := by
  exact good_top_prime_checked (i := 100) (r := 33) (s := 70) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row100_good003_checked :
    goodSegmentCheck 100 33 70
      { lower := 489, upper := 586, witness := RowWitness.topPrime 487 } = true := by
  exact good_top_prime_checked (i := 100) (r := 33) (s := 70) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row100_good004_checked :
    goodSegmentCheck 100 33 70
      { lower := 587, upper := 686, witness := RowWitness.topPrime 587 } = true := by
  exact good_top_prime_checked (i := 100) (r := 33) (s := 70) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row100_good005_checked :
    goodSegmentCheck 100 33 70
      { lower := 687, upper := 782, witness := RowWitness.topPrime 683 } = true := by
  exact good_top_prime_checked (i := 100) (r := 33) (s := 70) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row100_good006_checked :
    goodSegmentCheck 100 33 70
      { lower := 783, upper := 872, witness := RowWitness.topPrime 773 } = true := by
  exact good_top_prime_checked (i := 100) (r := 33) (s := 70) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row100_good007_checked :
    goodSegmentCheck 100 33 70
      { lower := 873, upper := 962, witness := RowWitness.topPrime 863 } = true := by
  exact good_top_prime_checked (i := 100) (r := 33) (s := 70) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row100_good008_checked :
    goodSegmentCheck 100 33 70
      { lower := 963, upper := 1052, witness := RowWitness.topPrime 953 } = true := by
  exact good_top_prime_checked (i := 100) (r := 33) (s := 70) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row100_good009_checked :
    goodSegmentCheck 100 33 70
      { lower := 1053, upper := 1150, witness := RowWitness.topPrime 1051 } = true := by
  exact good_top_prime_checked (i := 100) (r := 33) (s := 70) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row100_good010_checked :
    goodSegmentCheck 100 33 70
      { lower := 1151, upper := 1250, witness := RowWitness.topPrime 1151 } = true := by
  exact good_top_prime_checked (i := 100) (r := 33) (s := 70) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row100_good011_checked :
    goodSegmentCheck 100 33 70
      { lower := 1251, upper := 1348, witness := RowWitness.topPrime 1249 } = true := by
  exact good_top_prime_checked (i := 100) (r := 33) (s := 70) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row100_good012_checked :
    goodSegmentCheck 100 33 70
      { lower := 1349, upper := 1426, witness := RowWitness.topPrime 1327 } = true := by
  exact good_top_prime_checked (i := 100) (r := 33) (s := 70) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row100_good013_checked :
    goodSegmentCheck 100 33 70
      { lower := 1427, upper := 1526, witness := RowWitness.topPrime 1427 } = true := by
  exact good_top_prime_checked (i := 100) (r := 33) (s := 70) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row100_good014_checked :
    goodSegmentCheck 100 33 70
      { lower := 1527, upper := 1622, witness := RowWitness.topPrime 1523 } = true := by
  exact good_top_prime_checked (i := 100) (r := 33) (s := 70) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row100_good015_checked :
    goodSegmentCheck 100 33 70
      { lower := 1623, upper := 1720, witness := RowWitness.topPrime 1621 } = true := by
  exact good_top_prime_checked (i := 100) (r := 33) (s := 70) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row100_good000_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row100_good001_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row100_good002_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row100_good003_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row100_good004_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row100_good005_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row100_good006_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row100_good007_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row100_good008_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row100_good009_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row100_good010_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row100_good011_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row100_good012_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row100_good013_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row100_good014_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row100_good015_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row100_good016_checked :
    goodSegmentCheck 100 33 70
      { lower := 1721, upper := 1820, witness := RowWitness.topPrime 1721 } = true := by
  exact good_top_prime_checked (i := 100) (r := 33) (s := 70) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row100_good017_checked :
    goodSegmentCheck 100 33 70
      { lower := 1821, upper := 1910, witness := RowWitness.topPrime 1811 } = true := by
  exact good_top_prime_checked (i := 100) (r := 33) (s := 70) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row100_good018_checked :
    goodSegmentCheck 100 33 70
      { lower := 1911, upper := 2006, witness := RowWitness.topPrime 1907 } = true := by
  exact good_top_prime_checked (i := 100) (r := 33) (s := 70) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row100_good019_checked :
    goodSegmentCheck 100 33 70
      { lower := 2007, upper := 2102, witness := RowWitness.topPrime 2003 } = true := by
  exact good_top_prime_checked (i := 100) (r := 33) (s := 70) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row100_good020_checked :
    goodSegmentCheck 100 33 70
      { lower := 2103, upper := 2198, witness := RowWitness.topPrime 2099 } = true := by
  exact good_top_prime_checked (i := 100) (r := 33) (s := 70) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row100_good021_checked :
    goodSegmentCheck 100 33 70
      { lower := 2199, upper := 2278, witness := RowWitness.topPrime 2179 } = true := by
  exact good_top_prime_checked (i := 100) (r := 33) (s := 70) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row100_good022_checked :
    goodSegmentCheck 100 33 70
      { lower := 2279, upper := 2372, witness := RowWitness.topPrime 2273 } = true := by
  exact good_top_prime_checked (i := 100) (r := 33) (s := 70) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row100_good023_checked :
    goodSegmentCheck 100 33 70
      { lower := 2373, upper := 2470, witness := RowWitness.topPrime 2371 } = true := by
  exact good_top_prime_checked (i := 100) (r := 33) (s := 70) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row100_good024_checked :
    goodSegmentCheck 100 33 70
      { lower := 2471, upper := 2566, witness := RowWitness.topPrime 2467 } = true := by
  exact good_top_prime_checked (i := 100) (r := 33) (s := 70) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row100_good025_checked :
    goodSegmentCheck 100 33 70
      { lower := 2567, upper := 2656, witness := RowWitness.topPrime 2557 } = true := by
  exact good_top_prime_checked (i := 100) (r := 33) (s := 70) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row100_good026_checked :
    goodSegmentCheck 100 33 70
      { lower := 2657, upper := 2756, witness := RowWitness.topPrime 2657 } = true := by
  exact good_top_prime_checked (i := 100) (r := 33) (s := 70) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row100_good027_checked :
    goodSegmentCheck 100 33 70
      { lower := 2757, upper := 2852, witness := RowWitness.topPrime 2753 } = true := by
  exact good_top_prime_checked (i := 100) (r := 33) (s := 70) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row100_good028_checked :
    goodSegmentCheck 100 33 70
      { lower := 2853, upper := 2950, witness := RowWitness.topPrime 2851 } = true := by
  exact good_top_prime_checked (i := 100) (r := 33) (s := 70) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row100_good029_checked :
    goodSegmentCheck 100 33 70
      { lower := 2951, upper := 3038, witness := RowWitness.topPrime 2939 } = true := by
  exact good_top_prime_checked (i := 100) (r := 33) (s := 70) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row100_good030_checked :
    goodSegmentCheck 100 33 70
      { lower := 3039, upper := 3136, witness := RowWitness.topPrime 3037 } = true := by
  exact good_top_prime_checked (i := 100) (r := 33) (s := 70) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row100_good031_checked :
    goodSegmentCheck 100 33 70
      { lower := 3137, upper := 3236, witness := RowWitness.topPrime 3137 } = true := by
  exact good_top_prime_checked (i := 100) (r := 33) (s := 70) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row100_good016_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row100_good017_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row100_good018_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row100_good019_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row100_good020_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row100_good021_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row100_good022_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row100_good023_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row100_good024_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row100_good025_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row100_good026_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row100_good027_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row100_good028_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row100_good029_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row100_good030_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row100_good031_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row100_good032_checked :
    goodSegmentCheck 100 33 70
      { lower := 3237, upper := 3328, witness := RowWitness.topPrime 3229 } = true := by
  exact good_top_prime_checked (i := 100) (r := 33) (s := 70) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row100_good033_checked :
    goodSegmentCheck 100 33 70
      { lower := 3329, upper := 3428, witness := RowWitness.topPrime 3329 } = true := by
  exact good_top_prime_checked (i := 100) (r := 33) (s := 70) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row100_good034_checked :
    goodSegmentCheck 100 33 70
      { lower := 3429, upper := 3512, witness := RowWitness.topPrime 3413 } = true := by
  exact good_top_prime_checked (i := 100) (r := 33) (s := 70) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row100_good035_checked :
    goodSegmentCheck 100 33 70
      { lower := 3513, upper := 3610, witness := RowWitness.topPrime 3511 } = true := by
  exact good_top_prime_checked (i := 100) (r := 33) (s := 70) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row100_good036_checked :
    goodSegmentCheck 100 33 70
      { lower := 3611, upper := 3706, witness := RowWitness.topPrime 3607 } = true := by
  exact good_top_prime_checked (i := 100) (r := 33) (s := 70) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row100_good037_checked :
    goodSegmentCheck 100 33 70
      { lower := 3707, upper := 3800, witness := RowWitness.topPrime 3701 } = true := by
  exact good_top_prime_checked (i := 100) (r := 33) (s := 70) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row100_good038_checked :
    goodSegmentCheck 100 33 70
      { lower := 3801, upper := 3896, witness := RowWitness.topPrime 3797 } = true := by
  exact good_top_prime_checked (i := 100) (r := 33) (s := 70) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row100_good039_checked :
    goodSegmentCheck 100 33 70
      { lower := 3897, upper := 3988, witness := RowWitness.topPrime 3889 } = true := by
  exact good_top_prime_checked (i := 100) (r := 33) (s := 70) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row100_good040_checked :
    goodSegmentCheck 100 33 70
      { lower := 3989, upper := 4088, witness := RowWitness.topPrime 3989 } = true := by
  exact good_top_prime_checked (i := 100) (r := 33) (s := 70) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row100_good041_checked :
    goodSegmentCheck 100 33 70
      { lower := 4089, upper := 4178, witness := RowWitness.topPrime 4079 } = true := by
  exact good_top_prime_checked (i := 100) (r := 33) (s := 70) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row100_good042_checked :
    goodSegmentCheck 100 33 70
      { lower := 4179, upper := 4276, witness := RowWitness.topPrime 4177 } = true := by
  exact good_top_prime_checked (i := 100) (r := 33) (s := 70) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row100_good043_checked :
    goodSegmentCheck 100 33 70
      { lower := 4277, upper := 4372, witness := RowWitness.topPrime 4273 } = true := by
  exact good_top_prime_checked (i := 100) (r := 33) (s := 70) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row100_good044_checked :
    goodSegmentCheck 100 33 70
      { lower := 4373, upper := 4472, witness := RowWitness.topPrime 4373 } = true := by
  exact good_top_prime_checked (i := 100) (r := 33) (s := 70) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row100_good045_checked :
    goodSegmentCheck 100 33 70
      { lower := 4473, upper := 4562, witness := RowWitness.topPrime 4463 } = true := by
  exact good_top_prime_checked (i := 100) (r := 33) (s := 70) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row100_good046_checked :
    goodSegmentCheck 100 33 70
      { lower := 4563, upper := 4660, witness := RowWitness.topPrime 4561 } = true := by
  exact good_top_prime_checked (i := 100) (r := 33) (s := 70) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row100_good047_checked :
    goodSegmentCheck 100 33 70
      { lower := 4661, upper := 4756, witness := RowWitness.topPrime 4657 } = true := by
  exact good_top_prime_checked (i := 100) (r := 33) (s := 70) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row100_good032_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row100_good033_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row100_good034_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row100_good035_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row100_good036_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row100_good037_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row100_good038_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row100_good039_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row100_good040_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row100_good041_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row100_good042_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row100_good043_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row100_good044_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row100_good045_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row100_good046_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row100_good047_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row100_good048_checked :
    goodSegmentCheck 100 33 70
      { lower := 4757, upper := 4850, witness := RowWitness.topPrime 4751 } = true := by
  exact good_top_prime_checked (i := 100) (r := 33) (s := 70) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row100_good049_checked :
    goodSegmentCheck 100 33 70
      { lower := 4851, upper := 4930, witness := RowWitness.topPrime 4831 } = true := by
  exact good_top_prime_checked (i := 100) (r := 33) (s := 70) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row100_good050_checked :
    goodSegmentCheck 100 33 70
      { lower := 4931, upper := 5030, witness := RowWitness.topPrime 4931 } = true := by
  exact good_top_prime_checked (i := 100) (r := 33) (s := 70) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row100_good051_checked :
    goodSegmentCheck 100 33 70
      { lower := 5031, upper := 5122, witness := RowWitness.topPrime 5023 } = true := by
  exact good_top_prime_checked (i := 100) (r := 33) (s := 70) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row100_good052_checked :
    goodSegmentCheck 100 33 70
      { lower := 5123, upper := 5218, witness := RowWitness.topPrime 5119 } = true := by
  exact good_top_prime_checked (i := 100) (r := 33) (s := 70) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row100_good053_checked :
    goodSegmentCheck 100 33 70
      { lower := 5219, upper := 5308, witness := RowWitness.topPrime 5209 } = true := by
  exact good_top_prime_checked (i := 100) (r := 33) (s := 70) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row100_good054_checked :
    goodSegmentCheck 100 33 70
      { lower := 5309, upper := 5408, witness := RowWitness.topPrime 5309 } = true := by
  exact good_top_prime_checked (i := 100) (r := 33) (s := 70) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row100_good055_checked :
    goodSegmentCheck 100 33 70
      { lower := 5409, upper := 5506, witness := RowWitness.topPrime 5407 } = true := by
  exact good_top_prime_checked (i := 100) (r := 33) (s := 70) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row100_good056_checked :
    goodSegmentCheck 100 33 70
      { lower := 5507, upper := 5606, witness := RowWitness.topPrime 5507 } = true := by
  exact good_top_prime_checked (i := 100) (r := 33) (s := 70) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row100_good057_checked :
    goodSegmentCheck 100 33 70
      { lower := 5607, upper := 5690, witness := RowWitness.topPrime 5591 } = true := by
  exact good_top_prime_checked (i := 100) (r := 33) (s := 70) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row100_good058_checked :
    goodSegmentCheck 100 33 70
      { lower := 5691, upper := 5788, witness := RowWitness.topPrime 5689 } = true := by
  exact good_top_prime_checked (i := 100) (r := 33) (s := 70) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row100_good059_checked :
    goodSegmentCheck 100 33 70
      { lower := 5789, upper := 5882, witness := RowWitness.topPrime 5783 } = true := by
  exact good_top_prime_checked (i := 100) (r := 33) (s := 70) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row100_good060_checked :
    goodSegmentCheck 100 33 70
      { lower := 5883, upper := 5980, witness := RowWitness.topPrime 5881 } = true := by
  exact good_top_prime_checked (i := 100) (r := 33) (s := 70) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row100_good061_checked :
    goodSegmentCheck 100 33 70
      { lower := 5981, upper := 6080, witness := RowWitness.topPrime 5981 } = true := by
  exact good_top_prime_checked (i := 100) (r := 33) (s := 70) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row100_good062_checked :
    goodSegmentCheck 100 33 70
      { lower := 6081, upper := 6178, witness := RowWitness.topPrime 6079 } = true := by
  exact good_top_prime_checked (i := 100) (r := 33) (s := 70) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row100_good063_checked :
    goodSegmentCheck 100 33 70
      { lower := 6179, upper := 6272, witness := RowWitness.topPrime 6173 } = true := by
  exact good_top_prime_checked (i := 100) (r := 33) (s := 70) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row100_good048_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row100_good049_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row100_good050_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row100_good051_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row100_good052_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row100_good053_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row100_good054_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row100_good055_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row100_good056_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row100_good057_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row100_good058_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row100_good059_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row100_good060_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row100_good061_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row100_good062_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row100_good063_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row100_good064_checked :
    goodSegmentCheck 100 33 70
      { lower := 6273, upper := 6370, witness := RowWitness.topPrime 6271 } = true := by
  exact good_top_prime_checked (i := 100) (r := 33) (s := 70) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row100_good065_checked :
    goodSegmentCheck 100 33 70
      { lower := 6371, upper := 6466, witness := RowWitness.topPrime 6367 } = true := by
  exact good_top_prime_checked (i := 100) (r := 33) (s := 70) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row100_good066_checked :
    goodSegmentCheck 100 33 70
      { lower := 6467, upper := 6550, witness := RowWitness.topPrime 6451 } = true := by
  exact good_top_prime_checked (i := 100) (r := 33) (s := 70) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row100_good067_checked :
    goodSegmentCheck 100 33 70
      { lower := 6551, upper := 6650, witness := RowWitness.topPrime 6551 } = true := by
  exact good_top_prime_checked (i := 100) (r := 33) (s := 70) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row100_good068_checked :
    goodSegmentCheck 100 33 70
      { lower := 6651, upper := 6736, witness := RowWitness.topPrime 6637 } = true := by
  exact good_top_prime_checked (i := 100) (r := 33) (s := 70) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row100_good069_checked :
    goodSegmentCheck 100 33 70
      { lower := 6737, upper := 6836, witness := RowWitness.topPrime 6737 } = true := by
  exact good_top_prime_checked (i := 100) (r := 33) (s := 70) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row100_good070_checked :
    goodSegmentCheck 100 33 70
      { lower := 6837, upper := 6932, witness := RowWitness.topPrime 6833 } = true := by
  exact good_top_prime_checked (i := 100) (r := 33) (s := 70) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row100_good071_checked :
    goodSegmentCheck 100 33 70
      { lower := 6933, upper := 7016, witness := RowWitness.topPrime 6917 } = true := by
  exact good_top_prime_checked (i := 100) (r := 33) (s := 70) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row100_good072_checked :
    goodSegmentCheck 100 33 70
      { lower := 7017, upper := 7112, witness := RowWitness.topPrime 7013 } = true := by
  exact good_top_prime_checked (i := 100) (r := 33) (s := 70) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row100_good073_checked :
    goodSegmentCheck 100 33 70
      { lower := 7113, upper := 7208, witness := RowWitness.topPrime 7109 } = true := by
  exact good_top_prime_checked (i := 100) (r := 33) (s := 70) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row100_good074_checked :
    goodSegmentCheck 100 33 70
      { lower := 7209, upper := 7306, witness := RowWitness.topPrime 7207 } = true := by
  exact good_top_prime_checked (i := 100) (r := 33) (s := 70) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row100_good075_checked :
    goodSegmentCheck 100 33 70
      { lower := 7307, upper := 7406, witness := RowWitness.topPrime 7307 } = true := by
  exact good_top_prime_checked (i := 100) (r := 33) (s := 70) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row100_good076_checked :
    goodSegmentCheck 100 33 70
      { lower := 7407, upper := 7492, witness := RowWitness.topPrime 7393 } = true := by
  exact good_top_prime_checked (i := 100) (r := 33) (s := 70) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row100_good077_checked :
    goodSegmentCheck 100 33 70
      { lower := 7493, upper := 7588, witness := RowWitness.topPrime 7489 } = true := by
  exact good_top_prime_checked (i := 100) (r := 33) (s := 70) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row100_good078_checked :
    goodSegmentCheck 100 33 70
      { lower := 7589, upper := 7688, witness := RowWitness.topPrime 7589 } = true := by
  exact good_top_prime_checked (i := 100) (r := 33) (s := 70) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row100_good079_checked :
    goodSegmentCheck 100 33 70
      { lower := 7689, upper := 7786, witness := RowWitness.topPrime 7687 } = true := by
  exact good_top_prime_checked (i := 100) (r := 33) (s := 70) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row100_good064_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row100_good065_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row100_good066_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row100_good067_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row100_good068_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row100_good069_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row100_good070_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row100_good071_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row100_good072_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row100_good073_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row100_good074_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row100_good075_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row100_good076_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row100_good077_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row100_good078_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row100_good079_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row100_good080_checked :
    goodSegmentCheck 100 33 70
      { lower := 7787, upper := 7858, witness := RowWitness.topPrime 7759 } = true := by
  exact good_top_prime_checked (i := 100) (r := 33) (s := 70) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row100_good081_checked :
    goodSegmentCheck 100 33 70
      { lower := 7859, upper := 7952, witness := RowWitness.topPrime 7853 } = true := by
  exact good_top_prime_checked (i := 100) (r := 33) (s := 70) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row100_good082_checked :
    goodSegmentCheck 100 33 70
      { lower := 7953, upper := 8050, witness := RowWitness.topPrime 7951 } = true := by
  exact good_top_prime_checked (i := 100) (r := 33) (s := 70) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row100_good083_checked :
    goodSegmentCheck 100 33 70
      { lower := 8051, upper := 8138, witness := RowWitness.topPrime 8039 } = true := by
  exact good_top_prime_checked (i := 100) (r := 33) (s := 70) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row100_good084_checked :
    goodSegmentCheck 100 33 70
      { lower := 8139, upper := 8222, witness := RowWitness.topPrime 8123 } = true := by
  exact good_top_prime_checked (i := 100) (r := 33) (s := 70) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row100_good085_checked :
    goodSegmentCheck 100 33 70
      { lower := 8223, upper := 8320, witness := RowWitness.topPrime 8221 } = true := by
  exact good_top_prime_checked (i := 100) (r := 33) (s := 70) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row100_good086_checked :
    goodSegmentCheck 100 33 70
      { lower := 8321, upper := 8416, witness := RowWitness.topPrime 8317 } = true := by
  exact good_top_prime_checked (i := 100) (r := 33) (s := 70) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row100_good087_checked :
    goodSegmentCheck 100 33 70
      { lower := 8417, upper := 8488, witness := RowWitness.topPrime 8389 } = true := by
  exact good_top_prime_checked (i := 100) (r := 33) (s := 70) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row100_good088_checked :
    goodSegmentCheck 100 33 70
      { lower := 8489, upper := 8566, witness := RowWitness.topPrime 8467 } = true := by
  exact good_top_prime_checked (i := 100) (r := 33) (s := 70) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row100_good089_checked :
    goodSegmentCheck 100 33 70
      { lower := 8567, upper := 8662, witness := RowWitness.topPrime 8563 } = true := by
  exact good_top_prime_checked (i := 100) (r := 33) (s := 70) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row100_good090_checked :
    goodSegmentCheck 100 33 70
      { lower := 8663, upper := 8762, witness := RowWitness.topPrime 8663 } = true := by
  exact good_top_prime_checked (i := 100) (r := 33) (s := 70) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row100_good091_checked :
    goodSegmentCheck 100 33 70
      { lower := 8763, upper := 8860, witness := RowWitness.topPrime 8761 } = true := by
  exact good_top_prime_checked (i := 100) (r := 33) (s := 70) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row100_good092_checked :
    goodSegmentCheck 100 33 70
      { lower := 8861, upper := 8960, witness := RowWitness.topPrime 8861 } = true := by
  exact good_top_prime_checked (i := 100) (r := 33) (s := 70) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row100_good093_checked :
    goodSegmentCheck 100 33 70
      { lower := 8961, upper := 9050, witness := RowWitness.topPrime 8951 } = true := by
  exact good_top_prime_checked (i := 100) (r := 33) (s := 70) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row100_good094_checked :
    goodSegmentCheck 100 33 70
      { lower := 9051, upper := 9148, witness := RowWitness.topPrime 9049 } = true := by
  exact good_top_prime_checked (i := 100) (r := 33) (s := 70) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row100_good095_checked :
    goodSegmentCheck 100 33 70
      { lower := 9149, upper := 9236, witness := RowWitness.topPrime 9137 } = true := by
  exact good_top_prime_checked (i := 100) (r := 33) (s := 70) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row100_good080_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row100_good081_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row100_good082_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row100_good083_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row100_good084_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row100_good085_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row100_good086_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row100_good087_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row100_good088_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row100_good089_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row100_good090_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row100_good091_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row100_good092_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row100_good093_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row100_good094_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row100_good095_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row100_good096_checked :
    goodSegmentCheck 100 33 70
      { lower := 9237, upper := 9326, witness := RowWitness.topPrime 9227 } = true := by
  exact good_top_prime_checked (i := 100) (r := 33) (s := 70) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row100_good097_checked :
    goodSegmentCheck 100 33 70
      { lower := 9327, upper := 9422, witness := RowWitness.topPrime 9323 } = true := by
  exact good_top_prime_checked (i := 100) (r := 33) (s := 70) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row100_good098_checked :
    goodSegmentCheck 100 33 70
      { lower := 9423, upper := 9520, witness := RowWitness.topPrime 9421 } = true := by
  exact good_top_prime_checked (i := 100) (r := 33) (s := 70) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row100_good099_checked :
    goodSegmentCheck 100 33 70
      { lower := 9521, upper := 9620, witness := RowWitness.topPrime 9521 } = true := by
  exact good_top_prime_checked (i := 100) (r := 33) (s := 70) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row100_good100_checked :
    goodSegmentCheck 100 33 70
      { lower := 9621, upper := 9718, witness := RowWitness.topPrime 9619 } = true := by
  exact good_top_prime_checked (i := 100) (r := 33) (s := 70) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row100_good101_checked :
    goodSegmentCheck 100 33 70
      { lower := 9719, upper := 9818, witness := RowWitness.topPrime 9719 } = true := by
  exact good_top_prime_checked (i := 100) (r := 33) (s := 70) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row100_good102_checked :
    goodSegmentCheck 100 33 70
      { lower := 9819, upper := 9899, witness := RowWitness.topPrime 9817 } = true := by
  exact good_top_prime_checked (i := 100) (r := 33) (s := 70) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row100_good103_checked :
    goodSegmentCheck 100 33 70
      { lower := 10082, upper := 10178, witness := RowWitness.topPrime 10079 } = true := by
  exact good_top_prime_checked (i := 100) (r := 33) (s := 70) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row100_good104_checked :
    goodSegmentCheck 100 33 70
      { lower := 10179, upper := 10185, witness := RowWitness.topPrime 10177 } = true := by
  exact good_top_prime_checked (i := 100) (r := 33) (s := 70) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row100_good105_checked :
    goodSegmentCheck 100 33 70
      { lower := 10240, upper := 10305, witness := RowWitness.topPrime 10223 } = true := by
  exact good_top_prime_checked (i := 100) (r := 33) (s := 70) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row100_good106_checked :
    goodSegmentCheck 100 33 70
      { lower := 10580, upper := 10666, witness := RowWitness.topPrime 10567 } = true := by
  exact good_top_prime_checked (i := 100) (r := 33) (s := 70) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row100_good107_checked :
    goodSegmentCheck 100 33 70
      { lower := 10667, upper := 10747, witness := RowWitness.topPrime 10667 } = true := by
  exact good_top_prime_checked (i := 100) (r := 33) (s := 70) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row100_good108_checked :
    goodSegmentCheck 100 33 70
      { lower := 10935, upper := 11008, witness := RowWitness.topPrime 10909 } = true := by
  exact good_top_prime_checked (i := 100) (r := 33) (s := 70) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row100_good109_checked :
    goodSegmentCheck 100 33 70
      { lower := 11009, upper := 11084, witness := RowWitness.topPrime 11003 } = true := by
  exact good_top_prime_checked (i := 100) (r := 33) (s := 70) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row100_good110_checked :
    goodSegmentCheck 100 33 70
      { lower := 11094, upper := 11144, witness := RowWitness.topPrime 11093 } = true := by
  exact good_top_prime_checked (i := 100) (r := 33) (s := 70) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row100_good111_checked :
    goodSegmentCheck 100 33 70
      { lower := 11163, upper := 11193, witness := RowWitness.topPrime 11161 } = true := by
  exact good_top_prime_checked (i := 100) (r := 33) (s := 70) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row100_good096_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row100_good097_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row100_good098_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row100_good099_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row100_good100_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row100_good101_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row100_good102_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row100_good103_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row100_good104_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row100_good105_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row100_good106_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row100_good107_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row100_good108_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row100_good109_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row100_good110_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row100_good111_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row100_good112_checked :
    goodSegmentCheck 100 33 70
      { lower := 11236, upper := 11262, witness := RowWitness.topPrime 11213 } = true := by
  exact good_top_prime_checked (i := 100) (r := 33) (s := 70) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row100_good113_checked :
    goodSegmentCheck 100 33 70
      { lower := 11774, upper := 11842, witness := RowWitness.topPrime 11743 } = true := by
  exact good_top_prime_checked (i := 100) (r := 33) (s := 70) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row100_good114_checked :
    goodSegmentCheck 100 33 70
      { lower := 11843, upper := 11866, witness := RowWitness.topPrime 11839 } = true := by
  exact good_top_prime_checked (i := 100) (r := 33) (s := 70) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row100_good115_checked :
    goodSegmentCheck 100 33 70
      { lower := 12005, upper := 12078, witness := RowWitness.topPrime 11987 } = true := by
  exact good_top_prime_checked (i := 100) (r := 33) (s := 70) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row100_good116_checked :
    goodSegmentCheck 100 33 70
      { lower := 12321, upper := 12387, witness := RowWitness.topPrime 12301 } = true := by
  exact good_top_prime_checked (i := 100) (r := 33) (s := 70) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row100_good117_checked :
    goodSegmentCheck 100 33 70
      { lower := 12393, upper := 12420, witness := RowWitness.topPrime 12391 } = true := by
  exact good_top_prime_checked (i := 100) (r := 33) (s := 70) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row100_good118_checked :
    goodSegmentCheck 100 33 70
      { lower := 12482, upper := 12578, witness := RowWitness.topPrime 12479 } = true := by
  exact good_top_prime_checked (i := 100) (r := 33) (s := 70) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row100_good119_checked :
    goodSegmentCheck 100 33 70
      { lower := 12579, upper := 12581, witness := RowWitness.topPrime 12577 } = true := by
  exact good_top_prime_checked (i := 100) (r := 33) (s := 70) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row100_good120_checked :
    goodSegmentCheck 100 33 70
      { lower := 13182, upper := 13221, witness := RowWitness.topPrime 13177 } = true := by
  exact good_top_prime_checked (i := 100) (r := 33) (s := 70) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row100_good121_checked :
    goodSegmentCheck 100 33 70
      { lower := 13254, upper := 13281, witness := RowWitness.topPrime 13249 } = true := by
  exact good_top_prime_checked (i := 100) (r := 33) (s := 70) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row100_good122_checked :
    goodSegmentCheck 100 33 70
      { lower := 13310, upper := 13353, witness := RowWitness.topPrime 13309 } = true := by
  exact good_top_prime_checked (i := 100) (r := 33) (s := 70) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row100_good123_checked :
    goodSegmentCheck 100 33 70
      { lower := 13454, upper := 13550, witness := RowWitness.topPrime 13451 } = true := by
  exact good_top_prime_checked (i := 100) (r := 33) (s := 70) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row100_good124_checked :
    goodSegmentCheck 100 33 70
      { lower := 13551, upper := 13555, witness := RowWitness.topPrime 13537 } = true := by
  exact good_top_prime_checked (i := 100) (r := 33) (s := 70) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row100_good125_checked :
    goodSegmentCheck 100 33 70
      { lower := 13718, upper := 13810, witness := RowWitness.topPrime 13711 } = true := by
  exact good_top_prime_checked (i := 100) (r := 33) (s := 70) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row100_good126_checked :
    goodSegmentCheck 100 33 70
      { lower := 13811, upper := 13817, witness := RowWitness.topPrime 13807 } = true := by
  exact good_top_prime_checked (i := 100) (r := 33) (s := 70) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row100_good127_checked :
    goodSegmentCheck 100 33 70
      { lower := 13851, upper := 13877, witness := RowWitness.topPrime 13841 } = true := by
  exact good_top_prime_checked (i := 100) (r := 33) (s := 70) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row100_good112_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row100_good113_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row100_good114_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row100_good115_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row100_good116_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row100_good117_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row100_good118_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row100_good119_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row100_good120_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row100_good121_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row100_good122_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row100_good123_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row100_good124_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row100_good125_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row100_good126_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row100_good127_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row100_good128_checked :
    goodSegmentCheck 100 33 70
      { lower := 13924, upper := 13950, witness := RowWitness.topPrime 13921 } = true := by
  exact good_top_prime_checked (i := 100) (r := 33) (s := 70) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row100_good129_checked :
    goodSegmentCheck 100 33 70
      { lower := 14415, upper := 14505, witness := RowWitness.topPrime 14411 } = true := by
  exact good_top_prime_checked (i := 100) (r := 33) (s := 70) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row100_good130_checked :
    goodSegmentCheck 100 33 70
      { lower := 14641, upper := 14679, witness := RowWitness.topPrime 14639 } = true := by
  exact good_top_prime_checked (i := 100) (r := 33) (s := 70) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row100_good131_checked :
    goodSegmentCheck 100 33 70
      { lower := 14739, upper := 14740, witness := RowWitness.topPrime 14737 } = true := by
  exact good_top_prime_checked (i := 100) (r := 33) (s := 70) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row100_good132_checked :
    goodSegmentCheck 100 33 70
      { lower := 14792, upper := 14838, witness := RowWitness.topPrime 14783 } = true := by
  exact good_top_prime_checked (i := 100) (r := 33) (s := 70) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row100_good133_checked :
    goodSegmentCheck 100 33 70
      { lower := 14884, upper := 14891, witness := RowWitness.topPrime 14879 } = true := by
  exact good_top_prime_checked (i := 100) (r := 33) (s := 70) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row100_good134_checked :
    goodSegmentCheck 100 33 70
      { lower := 15123, upper := 15220, witness := RowWitness.topPrime 15121 } = true := by
  exact good_top_prime_checked (i := 100) (r := 33) (s := 70) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row100_good135_checked :
    goodSegmentCheck 100 33 70
      { lower := 15221, upper := 15228, witness := RowWitness.topPrime 15217 } = true := by
  exact good_top_prime_checked (i := 100) (r := 33) (s := 70) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row100_good136_checked :
    goodSegmentCheck 100 33 70
      { lower := 15376, upper := 15472, witness := RowWitness.topPrime 15373 } = true := by
  exact good_top_prime_checked (i := 100) (r := 33) (s := 70) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row100_good137_checked :
    goodSegmentCheck 100 33 70
      { lower := 15473, upper := 15478, witness := RowWitness.topPrime 15473 } = true := by
  exact good_top_prime_checked (i := 100) (r := 33) (s := 70) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row100_good138_checked :
    goodSegmentCheck 100 33 70
      { lower := 15979, upper := 16072, witness := RowWitness.topPrime 15973 } = true := by
  exact good_top_prime_checked (i := 100) (r := 33) (s := 70) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row100_good139_checked :
    goodSegmentCheck 100 33 70
      { lower := 16073, upper := 16078, witness := RowWitness.topPrime 16073 } = true := by
  exact good_top_prime_checked (i := 100) (r := 33) (s := 70) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row100_good140_checked :
    goodSegmentCheck 100 33 70
      { lower := 16384, upper := 16480, witness := RowWitness.topPrime 16381 } = true := by
  exact good_top_prime_checked (i := 100) (r := 33) (s := 70) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row100_good141_checked :
    goodSegmentCheck 100 33 70
      { lower := 16481, upper := 16483, witness := RowWitness.topPrime 16481 } = true := by
  exact good_top_prime_checked (i := 100) (r := 33) (s := 70) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row100_good142_checked :
    goodSegmentCheck 100 33 70
      { lower := 16810, upper := 16886, witness := RowWitness.topPrime 16787 } = true := by
  exact good_top_prime_checked (i := 100) (r := 33) (s := 70) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row100_good143_checked :
    goodSegmentCheck 100 33 70
      { lower := 16887, upper := 16919, witness := RowWitness.topPrime 16883 } = true := by
  exact good_top_prime_checked (i := 100) (r := 33) (s := 70) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row100_good128_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row100_good129_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row100_good130_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row100_good131_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row100_good132_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row100_good133_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row100_good134_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row100_good135_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row100_good136_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row100_good137_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row100_good138_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row100_good139_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row100_good140_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row100_good141_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row100_good142_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row100_good143_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row100_good144_checked :
    goodSegmentCheck 100 33 70
      { lower := 17303, upper := 17397, witness := RowWitness.topPrime 17299 } = true := by
  exact good_top_prime_checked (i := 100) (r := 33) (s := 70) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row100_good145_checked :
    goodSegmentCheck 100 33 70
      { lower := 17496, upper := 17504, witness := RowWitness.topPrime 17491 } = true := by
  exact good_top_prime_checked (i := 100) (r := 33) (s := 70) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row100_good146_checked :
    goodSegmentCheck 100 33 70
      { lower := 17576, upper := 17595, witness := RowWitness.topPrime 17573 } = true := by
  exact good_top_prime_checked (i := 100) (r := 33) (s := 70) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row100_good147_checked :
    goodSegmentCheck 100 33 70
      { lower := 17672, upper := 17675, witness := RowWitness.topPrime 17669 } = true := by
  exact good_top_prime_checked (i := 100) (r := 33) (s := 70) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row100_good148_checked :
    goodSegmentCheck 100 33 70
      { lower := 18491, upper := 18580, witness := RowWitness.topPrime 18481 } = true := by
  exact good_top_prime_checked (i := 100) (r := 33) (s := 70) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row100_good149_checked :
    goodSegmentCheck 100 33 70
      { lower := 18581, upper := 18589, witness := RowWitness.topPrime 18553 } = true := by
  exact good_top_prime_checked (i := 100) (r := 33) (s := 70) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row100_good150_checked :
    goodSegmentCheck 100 33 70
      { lower := 18634, upper := 18704, witness := RowWitness.topPrime 18617 } = true := by
  exact good_top_prime_checked (i := 100) (r := 33) (s := 70) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row100_good151_checked :
    goodSegmentCheck 100 33 70
      { lower := 18723, upper := 18733, witness := RowWitness.topPrime 18719 } = true := by
  exact good_top_prime_checked (i := 100) (r := 33) (s := 70) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row100_good152_checked :
    goodSegmentCheck 100 33 70
      { lower := 18818, upper := 18822, witness := RowWitness.topPrime 18803 } = true := by
  exact good_top_prime_checked (i := 100) (r := 33) (s := 70) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row100_good153_checked :
    goodSegmentCheck 100 33 70
      { lower := 19208, upper := 19306, witness := RowWitness.topPrime 19207 } = true := by
  exact good_top_prime_checked (i := 100) (r := 33) (s := 70) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row100_good154_checked :
    goodSegmentCheck 100 33 70
      { lower := 19307, upper := 19307, witness := RowWitness.topPrime 19301 } = true := by
  exact good_top_prime_checked (i := 100) (r := 33) (s := 70) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row100_good155_checked :
    goodSegmentCheck 100 33 70
      { lower := 19663, upper := 19760, witness := RowWitness.topPrime 19661 } = true := by
  exact good_top_prime_checked (i := 100) (r := 33) (s := 70) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row100_good156_checked :
    goodSegmentCheck 100 33 70
      { lower := 19761, upper := 19762, witness := RowWitness.topPrime 19759 } = true := by
  exact good_top_prime_checked (i := 100) (r := 33) (s := 70) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row100_good157_checked :
    goodSegmentCheck 100 33 70
      { lower := 19773, upper := 19782, witness := RowWitness.topPrime 19763 } = true := by
  exact good_top_prime_checked (i := 100) (r := 33) (s := 70) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row100_good158_checked :
    goodSegmentCheck 100 33 70
      { lower := 19965, upper := 19980, witness := RowWitness.topPrime 19963 } = true := by
  exact good_top_prime_checked (i := 100) (r := 33) (s := 70) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row100_good159_checked :
    goodSegmentCheck 100 33 70
      { lower := 20172, upper := 20260, witness := RowWitness.topPrime 20161 } = true := by
  exact good_top_prime_checked (i := 100) (r := 33) (s := 70) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row100_good144_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row100_good145_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row100_good146_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row100_good147_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row100_good148_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row100_good149_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row100_good150_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row100_good151_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row100_good152_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row100_good153_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row100_good154_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row100_good155_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row100_good156_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row100_good157_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row100_good158_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row100_good159_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row100_good160_checked :
    goodSegmentCheck 100 33 70
      { lower := 20261, upper := 20263, witness := RowWitness.topPrime 20261 } = true := by
  exact good_top_prime_checked (i := 100) (r := 33) (s := 70) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row100_good161_checked :
    goodSegmentCheck 100 33 70
      { lower := 20577, upper := 20634, witness := RowWitness.topPrime 20563 } = true := by
  exact good_top_prime_checked (i := 100) (r := 33) (s := 70) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row100_good162_checked :
    goodSegmentCheck 100 33 70
      { lower := 20667, upper := 20676, witness := RowWitness.topPrime 20663 } = true := by
  exact good_top_prime_checked (i := 100) (r := 33) (s := 70) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row100_good163_checked :
    goodSegmentCheck 100 33 70
      { lower := 21316, upper := 21395, witness := RowWitness.topPrime 21313 } = true := by
  exact good_top_prime_checked (i := 100) (r := 33) (s := 70) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row100_good164_checked :
    goodSegmentCheck 100 33 70
      { lower := 21870, upper := 21962, witness := RowWitness.topPrime 21863 } = true := by
  exact good_top_prime_checked (i := 100) (r := 33) (s := 70) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row100_good165_checked :
    goodSegmentCheck 100 33 70
      { lower := 21963, upper := 22003, witness := RowWitness.topPrime 21961 } = true := by
  exact good_top_prime_checked (i := 100) (r := 33) (s := 70) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row100_good166_checked :
    goodSegmentCheck 100 33 70
      { lower := 22188, upper := 22189, witness := RowWitness.topPrime 22171 } = true := by
  exact good_top_prime_checked (i := 100) (r := 33) (s := 70) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row100_good167_checked :
    goodSegmentCheck 100 33 70
      { lower := 22472, upper := 22544, witness := RowWitness.topPrime 22469 } = true := by
  exact good_top_prime_checked (i := 100) (r := 33) (s := 70) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row100_good168_checked :
    goodSegmentCheck 100 33 70
      { lower := 24037, upper := 24128, witness := RowWitness.topPrime 24029 } = true := by
  exact good_top_prime_checked (i := 100) (r := 33) (s := 70) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row100_good169_checked :
    goodSegmentCheck 100 33 70
      { lower := 24129, upper := 24136, witness := RowWitness.topPrime 24121 } = true := by
  exact good_top_prime_checked (i := 100) (r := 33) (s := 70) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row100_good170_checked :
    goodSegmentCheck 100 33 70
      { lower := 24334, upper := 24428, witness := RowWitness.topPrime 24329 } = true := by
  exact good_top_prime_checked (i := 100) (r := 33) (s := 70) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row100_good171_checked :
    goodSegmentCheck 100 33 70
      { lower := 24429, upper := 24466, witness := RowWitness.topPrime 24421 } = true := by
  exact good_top_prime_checked (i := 100) (r := 33) (s := 70) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row100_good172_checked :
    goodSegmentCheck 100 33 70
      { lower := 24576, upper := 24664, witness := RowWitness.topPrime 24571 } = true := by
  exact good_top_prime_checked (i := 100) (r := 33) (s := 70) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row100_good173_checked :
    goodSegmentCheck 100 33 70
      { lower := 25215, upper := 25288, witness := RowWitness.topPrime 25189 } = true := by
  exact good_top_prime_checked (i := 100) (r := 33) (s := 70) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row100_good174_checked :
    goodSegmentCheck 100 33 70
      { lower := 25289, upper := 25314, witness := RowWitness.topPrime 25261 } = true := by
  exact good_top_prime_checked (i := 100) (r := 33) (s := 70) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row100_good175_checked :
    goodSegmentCheck 100 33 70
      { lower := 26411, upper := 26463, witness := RowWitness.topPrime 26407 } = true := by
  exact good_top_prime_checked (i := 100) (r := 33) (s := 70) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row100_good160_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row100_good161_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row100_good162_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row100_good163_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row100_good164_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row100_good165_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row100_good166_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row100_good167_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row100_good168_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row100_good169_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row100_good170_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row100_good171_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row100_good172_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row100_good173_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row100_good174_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row100_good175_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row100_good176_checked :
    goodSegmentCheck 100 33 70
      { lower := 26508, upper := 26510, witness := RowWitness.topPrime 26501 } = true := by
  exact good_top_prime_checked (i := 100) (r := 33) (s := 70) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row100_good177_checked :
    goodSegmentCheck 100 33 70
      { lower := 26934, upper := 26995, witness := RowWitness.topPrime 26927 } = true := by
  exact good_top_prime_checked (i := 100) (r := 33) (s := 70) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row100_good178_checked :
    goodSegmentCheck 100 33 70
      { lower := 28812, upper := 28816, witness := RowWitness.topPrime 28807 } = true := by
  exact good_top_prime_checked (i := 100) (r := 33) (s := 70) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row100_good179_checked :
    goodSegmentCheck 100 33 70
      { lower := 29791, upper := 29867, witness := RowWitness.topPrime 29789 } = true := by
  exact good_top_prime_checked (i := 100) (r := 33) (s := 70) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row100_good180_checked :
    goodSegmentCheck 100 33 70
      { lower := 30926, upper := 30998, witness := RowWitness.topPrime 30911 } = true := by
  exact good_top_prime_checked (i := 100) (r := 33) (s := 70) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row100_good181_checked :
    goodSegmentCheck 100 33 70
      { lower := 31213, upper := 31292, witness := RowWitness.topPrime 31193 } = true := by
  exact good_top_prime_checked (i := 100) (r := 33) (s := 70) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row100_good182_checked :
    goodSegmentCheck 100 33 70
      { lower := 31293, upper := 31304, witness := RowWitness.topPrime 31277 } = true := by
  exact good_top_prime_checked (i := 100) (r := 33) (s := 70) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row100_good183_checked :
    goodSegmentCheck 100 33 70
      { lower := 31423, upper := 31428, witness := RowWitness.topPrime 31397 } = true := by
  exact good_top_prime_checked (i := 100) (r := 33) (s := 70) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row100_good184_checked :
    goodSegmentCheck 100 33 70
      { lower := 32805, upper := 32867, witness := RowWitness.topPrime 32803 } = true := by
  exact good_top_prime_checked (i := 100) (r := 33) (s := 70) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row100_good185_checked :
    goodSegmentCheck 100 33 70
      { lower := 33708, upper := 33713, witness := RowWitness.topPrime 33703 } = true := by
  exact good_top_prime_checked (i := 100) (r := 33) (s := 70) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row100_good186_checked :
    goodSegmentCheck 100 33 70
      { lower := 34391, upper := 34394, witness := RowWitness.topPrime 34381 } = true := by
  exact good_top_prime_checked (i := 100) (r := 33) (s := 70) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row100_good187_checked :
    goodSegmentCheck 100 33 70
      { lower := 34445, upper := 34490, witness := RowWitness.topPrime 34439 } = true := by
  exact good_top_prime_checked (i := 100) (r := 33) (s := 70) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row100_good188_checked :
    goodSegmentCheck 100 33 70
      { lower := 35344, upper := 35386, witness := RowWitness.topPrime 35339 } = true := by
  exact good_top_prime_checked (i := 100) (r := 33) (s := 70) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row100_good189_checked :
    goodSegmentCheck 100 33 70
      { lower := 36517, upper := 36596, witness := RowWitness.topPrime 36497 } = true := by
  exact good_top_prime_checked (i := 100) (r := 33) (s := 70) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row100_good190_checked :
    goodSegmentCheck 100 33 70
      { lower := 36597, upper := 36600, witness := RowWitness.topPrime 36587 } = true := by
  exact good_top_prime_checked (i := 100) (r := 33) (s := 70) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row100_good191_checked :
    goodSegmentCheck 100 33 70
      { lower := 37303, upper := 37309, witness := RowWitness.topPrime 37277 } = true := by
  exact good_top_prime_checked (i := 100) (r := 33) (s := 70) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row100_good176_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row100_good177_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row100_good178_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row100_good179_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row100_good180_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row100_good181_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row100_good182_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row100_good183_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row100_good184_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row100_good185_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row100_good186_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row100_good187_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row100_good188_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row100_good189_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row100_good190_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row100_good191_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row100_good192_checked :
    goodSegmentCheck 100 33 70
      { lower := 39326, upper := 39422, witness := RowWitness.topPrime 39323 } = true := by
  exact good_top_prime_checked (i := 100) (r := 33) (s := 70) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row100_good193_checked :
    goodSegmentCheck 100 33 70
      { lower := 39423, upper := 39425, witness := RowWitness.topPrime 39419 } = true := by
  exact good_top_prime_checked (i := 100) (r := 33) (s := 70) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row100_good194_checked :
    goodSegmentCheck 100 33 70
      { lower := 40401, upper := 40427, witness := RowWitness.topPrime 40387 } = true := by
  exact good_top_prime_checked (i := 100) (r := 33) (s := 70) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row100_good195_checked :
    goodSegmentCheck 100 33 70
      { lower := 48013, upper := 48060, witness := RowWitness.topPrime 47981 } = true := by
  exact good_top_prime_checked (i := 100) (r := 33) (s := 70) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row100_good196_checked :
    goodSegmentCheck 100 33 70
      { lower := 49152, upper := 49229, witness := RowWitness.topPrime 49139 } = true := by
  exact good_top_prime_checked (i := 100) (r := 33) (s := 70) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row100_good197_checked :
    goodSegmentCheck 100 33 70
      { lower := 50421, upper := 50509, witness := RowWitness.topPrime 50417 } = true := by
  exact good_top_prime_checked (i := 100) (r := 33) (s := 70) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row100_good198_checked :
    goodSegmentCheck 100 33 70
      { lower := 55451, upper := 55540, witness := RowWitness.topPrime 55441 } = true := by
  exact good_top_prime_checked (i := 100) (r := 33) (s := 70) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row100_good199_checked :
    goodSegmentCheck 100 33 70
      { lower := 55541, upper := 55546, witness := RowWitness.topPrime 55541 } = true := by
  exact good_top_prime_checked (i := 100) (r := 33) (s := 70) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row100_good200_checked :
    goodSegmentCheck 100 33 70
      { lower := 58619, upper := 58663, witness := RowWitness.topPrime 58613 } = true := by
  exact good_top_prime_checked (i := 100) (r := 33) (s := 70) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row100_good201_checked :
    goodSegmentCheck 100 33 70
      { lower := 59049, upper := 59055, witness := RowWitness.topPrime 59029 } = true := by
  exact good_top_prime_checked (i := 100) (r := 33) (s := 70) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row100_good202_checked :
    goodSegmentCheck 100 33 70
      { lower := 63948, upper := 63968, witness := RowWitness.topPrime 63929 } = true := by
  exact good_top_prime_checked (i := 100) (r := 33) (s := 70) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row100_good203_checked :
    goodSegmentCheck 100 33 70
      { lower := 65536, upper := 65620, witness := RowWitness.topPrime 65521 } = true := by
  exact good_top_prime_checked (i := 100) (r := 33) (s := 70) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row100_good204_checked :
    goodSegmentCheck 100 33 70
      { lower := 65621, upper := 65635, witness := RowWitness.topPrime 65617 } = true := by
  exact good_top_prime_checked (i := 100) (r := 33) (s := 70) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row100_good205_checked :
    goodSegmentCheck 100 33 70
      { lower := 68651, upper := 68689, witness := RowWitness.topPrime 68639 } = true := by
  exact good_top_prime_checked (i := 100) (r := 33) (s := 70) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row100_good206_checked :
    goodSegmentCheck 100 33 70
      { lower := 68921, upper := 68989, witness := RowWitness.topPrime 68917 } = true := by
  exact good_top_prime_checked (i := 100) (r := 33) (s := 70) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row100_good207_checked :
    goodSegmentCheck 100 33 70
      { lower := 73205, upper := 73266, witness := RowWitness.topPrime 73189 } = true := by
  exact good_top_prime_checked (i := 100) (r := 33) (s := 70) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row100_good192_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row100_good193_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row100_good194_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row100_good195_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row100_good196_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row100_good197_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row100_good198_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row100_good199_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row100_good200_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row100_good201_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row100_good202_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row100_good203_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row100_good204_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row100_good205_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row100_good206_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row100_good207_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row100_good208_checked :
    goodSegmentCheck 100 33 70
      { lower := 137842, upper := 137880, witness := RowWitness.topPrime 137831 } = true := by
  exact good_top_prime_checked (i := 100) (r := 33) (s := 70) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row100_good209_checked :
    goodSegmentCheck 100 33 70
      { lower := 146410, upper := 146433, witness := RowWitness.topPrime 146407 } = true := by
  exact good_top_prime_checked (i := 100) (r := 33) (s := 70) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row100_good210_checked :
    goodSegmentCheck 100 33 70
      { lower := 148955, upper := 148976, witness := RowWitness.topPrime 148949 } = true := by
  exact good_top_prime_checked (i := 100) (r := 33) (s := 70) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row100_good208_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row100_good209_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row100_good210_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row100_goods_checked :
    row100.goods.all (goodSegmentCheck row100.height.i row100.height.r row100.height.s) = true := by
  change row100_goods.all (goodSegmentCheck 100 33 70) = true
  simp only [row100_goods, List.all_cons, List.all_nil,
    row100_good000_checked,
    row100_good001_checked,
    row100_good002_checked,
    row100_good003_checked,
    row100_good004_checked,
    row100_good005_checked,
    row100_good006_checked,
    row100_good007_checked,
    row100_good008_checked,
    row100_good009_checked,
    row100_good010_checked,
    row100_good011_checked,
    row100_good012_checked,
    row100_good013_checked,
    row100_good014_checked,
    row100_good015_checked,
    row100_good016_checked,
    row100_good017_checked,
    row100_good018_checked,
    row100_good019_checked,
    row100_good020_checked,
    row100_good021_checked,
    row100_good022_checked,
    row100_good023_checked,
    row100_good024_checked,
    row100_good025_checked,
    row100_good026_checked,
    row100_good027_checked,
    row100_good028_checked,
    row100_good029_checked,
    row100_good030_checked,
    row100_good031_checked,
    row100_good032_checked,
    row100_good033_checked,
    row100_good034_checked,
    row100_good035_checked,
    row100_good036_checked,
    row100_good037_checked,
    row100_good038_checked,
    row100_good039_checked,
    row100_good040_checked,
    row100_good041_checked,
    row100_good042_checked,
    row100_good043_checked,
    row100_good044_checked,
    row100_good045_checked,
    row100_good046_checked,
    row100_good047_checked,
    row100_good048_checked,
    row100_good049_checked,
    row100_good050_checked,
    row100_good051_checked,
    row100_good052_checked,
    row100_good053_checked,
    row100_good054_checked,
    row100_good055_checked,
    row100_good056_checked,
    row100_good057_checked,
    row100_good058_checked,
    row100_good059_checked,
    row100_good060_checked,
    row100_good061_checked,
    row100_good062_checked,
    row100_good063_checked,
    row100_good064_checked,
    row100_good065_checked,
    row100_good066_checked,
    row100_good067_checked,
    row100_good068_checked,
    row100_good069_checked,
    row100_good070_checked,
    row100_good071_checked,
    row100_good072_checked,
    row100_good073_checked,
    row100_good074_checked,
    row100_good075_checked,
    row100_good076_checked,
    row100_good077_checked,
    row100_good078_checked,
    row100_good079_checked,
    row100_good080_checked,
    row100_good081_checked,
    row100_good082_checked,
    row100_good083_checked,
    row100_good084_checked,
    row100_good085_checked,
    row100_good086_checked,
    row100_good087_checked,
    row100_good088_checked,
    row100_good089_checked,
    row100_good090_checked,
    row100_good091_checked,
    row100_good092_checked,
    row100_good093_checked,
    row100_good094_checked,
    row100_good095_checked,
    row100_good096_checked,
    row100_good097_checked,
    row100_good098_checked,
    row100_good099_checked,
    row100_good100_checked,
    row100_good101_checked,
    row100_good102_checked,
    row100_good103_checked,
    row100_good104_checked,
    row100_good105_checked,
    row100_good106_checked,
    row100_good107_checked,
    row100_good108_checked,
    row100_good109_checked,
    row100_good110_checked,
    row100_good111_checked,
    row100_good112_checked,
    row100_good113_checked,
    row100_good114_checked,
    row100_good115_checked,
    row100_good116_checked,
    row100_good117_checked,
    row100_good118_checked,
    row100_good119_checked,
    row100_good120_checked,
    row100_good121_checked,
    row100_good122_checked,
    row100_good123_checked,
    row100_good124_checked,
    row100_good125_checked,
    row100_good126_checked,
    row100_good127_checked,
    row100_good128_checked,
    row100_good129_checked,
    row100_good130_checked,
    row100_good131_checked,
    row100_good132_checked,
    row100_good133_checked,
    row100_good134_checked,
    row100_good135_checked,
    row100_good136_checked,
    row100_good137_checked,
    row100_good138_checked,
    row100_good139_checked,
    row100_good140_checked,
    row100_good141_checked,
    row100_good142_checked,
    row100_good143_checked,
    row100_good144_checked,
    row100_good145_checked,
    row100_good146_checked,
    row100_good147_checked,
    row100_good148_checked,
    row100_good149_checked,
    row100_good150_checked,
    row100_good151_checked,
    row100_good152_checked,
    row100_good153_checked,
    row100_good154_checked,
    row100_good155_checked,
    row100_good156_checked,
    row100_good157_checked,
    row100_good158_checked,
    row100_good159_checked,
    row100_good160_checked,
    row100_good161_checked,
    row100_good162_checked,
    row100_good163_checked,
    row100_good164_checked,
    row100_good165_checked,
    row100_good166_checked,
    row100_good167_checked,
    row100_good168_checked,
    row100_good169_checked,
    row100_good170_checked,
    row100_good171_checked,
    row100_good172_checked,
    row100_good173_checked,
    row100_good174_checked,
    row100_good175_checked,
    row100_good176_checked,
    row100_good177_checked,
    row100_good178_checked,
    row100_good179_checked,
    row100_good180_checked,
    row100_good181_checked,
    row100_good182_checked,
    row100_good183_checked,
    row100_good184_checked,
    row100_good185_checked,
    row100_good186_checked,
    row100_good187_checked,
    row100_good188_checked,
    row100_good189_checked,
    row100_good190_checked,
    row100_good191_checked,
    row100_good192_checked,
    row100_good193_checked,
    row100_good194_checked,
    row100_good195_checked,
    row100_good196_checked,
    row100_good197_checked,
    row100_good198_checked,
    row100_good199_checked,
    row100_good200_checked,
    row100_good201_checked,
    row100_good202_checked,
    row100_good203_checked,
    row100_good204_checked,
    row100_good205_checked,
    row100_good206_checked,
    row100_good207_checked,
    row100_good208_checked,
    row100_good209_checked,
    row100_good210_checked, Bool.true_and]

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row100_goods_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row100_registered :
    decide (row100.height ∈ heightCertificateData) = true := by
  decide +kernel

theorem row100_small_checked :
    coverCheck (2 * row100.height.i + 2) (row100.height.i * (row100.height.i - 1) - 1)
      (row100.goods.map goodSegmentBounds) = true := by
  decide +kernel

theorem row100_layerCover_checked :
    coverCheck (row100.height.i * (row100.height.i - 1)) (row100.height.n0 - 1)
      (row100.layers.map CoverLayer.bounds) = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row100_registered
#print axioms B699LowIndex.LowIndexLean513dc7cc.row100_small_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row100_layerCover_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row100_bounds : List NatInterval :=
  [(202, 298), (299, 392), (393, 488), (489, 586), (587, 686), (687, 782), (783, 872), (873, 962), (963, 1052), (1053, 1150), (1151, 1250), (1251, 1348), (1349, 1426), (1427, 1526), (1527, 1622), (1623, 1720), (1721, 1820), (1821, 1910), (1911, 2006), (2007, 2102), (2103, 2198), (2199, 2278), (2279, 2372), (2373, 2470), (2471, 2566), (2567, 2656), (2657, 2756), (2757, 2852), (2853, 2950), (2951, 3038), (3039, 3136), (3137, 3236), (3237, 3328), (3329, 3428), (3429, 3512), (3513, 3610), (3611, 3706), (3707, 3800), (3801, 3896), (3897, 3988), (3989, 4088), (4089, 4178), (4179, 4276), (4277, 4372), (4373, 4472), (4473, 4562), (4563, 4660), (4661, 4756), (4757, 4850), (4851, 4930), (4931, 5030), (5031, 5122), (5123, 5218), (5219, 5308), (5309, 5408), (5409, 5506), (5507, 5606), (5607, 5690), (5691, 5788), (5789, 5882), (5883, 5980), (5981, 6080), (6081, 6178), (6179, 6272), (6273, 6370), (6371, 6466), (6467, 6550), (6551, 6650), (6651, 6736), (6737, 6836), (6837, 6932), (6933, 7016), (7017, 7112), (7113, 7208), (7209, 7306), (7307, 7406), (7407, 7492), (7493, 7588), (7589, 7688), (7689, 7786), (7787, 7858), (7859, 7952), (7953, 8050), (8051, 8138), (8139, 8222), (8223, 8320), (8321, 8416), (8417, 8488), (8489, 8566), (8567, 8662), (8663, 8762), (8763, 8860), (8861, 8960), (8961, 9050), (9051, 9148), (9149, 9236), (9237, 9326), (9327, 9422), (9423, 9520), (9521, 9620), (9621, 9718), (9719, 9818), (9819, 9899), (10082, 10178), (10179, 10185), (10240, 10305), (10580, 10666), (10667, 10747), (10935, 11008), (11009, 11084), (11094, 11144), (11163, 11193), (11236, 11262), (11774, 11842), (11843, 11866), (12005, 12078), (12321, 12387), (12393, 12420), (12482, 12578), (12579, 12581), (13182, 13221), (13254, 13281), (13310, 13353), (13454, 13550), (13551, 13555), (13718, 13810), (13811, 13817), (13851, 13877), (13924, 13950), (14415, 14505), (14641, 14679), (14739, 14740), (14792, 14838), (14884, 14891), (15123, 15220), (15221, 15228), (15376, 15472), (15473, 15478), (15979, 16072), (16073, 16078), (16384, 16480), (16481, 16483), (16810, 16886), (16887, 16919), (17303, 17397), (17496, 17504), (17576, 17595), (17672, 17675), (18491, 18580), (18581, 18589), (18634, 18704), (18723, 18733), (18818, 18822), (19208, 19306), (19307, 19307), (19663, 19760), (19761, 19762), (19773, 19782), (19965, 19980), (20172, 20260), (20261, 20263), (20577, 20634), (20667, 20676), (21316, 21395), (21870, 21962), (21963, 22003), (22188, 22189), (22472, 22544), (24037, 24128), (24129, 24136), (24334, 24428), (24429, 24466), (24576, 24664), (25215, 25288), (25289, 25314), (26411, 26463), (26508, 26510), (26934, 26995), (28812, 28816), (29791, 29867), (30926, 30998), (31213, 31292), (31293, 31304), (31423, 31428), (32805, 32867), (33708, 33713), (34391, 34394), (34445, 34490), (35344, 35386), (36517, 36596), (36597, 36600), (37303, 37309), (39326, 39422), (39423, 39425), (40401, 40427), (48013, 48060), (49152, 49229), (50421, 50509), (55451, 55540), (55541, 55546), (58619, 58663), (59049, 59055), (63948, 63968), (65536, 65620), (65621, 65635), (68651, 68689), (68921, 68989), (73205, 73266), (137842, 137880), (146410, 146433), (148955, 148976)]

theorem row100_bounds_eq : row100.goods.map goodSegmentBounds = row100_bounds := by
  rfl

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row100_bounds_eq

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row100_layer000_intervals : List ColouredInterval :=
  [(2, 10240, 10339), (2, 12288, 12387), (2, 16384, 16483), (2, 16384, 16483), (2, 16384, 16483), (3, 10206, 10305), (3, 10935, 11034), (3, 11664, 11763), (3, 12393, 12492), (3, 13122, 13221), (3, 13851, 13950), (3, 14580, 14679), (3, 10935, 11034), (3, 13122, 13221), (3, 15309, 15408), (3, 17496, 17595), (3, 19683, 19782), (3, 13122, 13221), (3, 19683, 19782), (3, 19683, 19782), (7, 12005, 12104), (7, 14406, 14505), (7, 16807, 16906), (7, 19208, 19307), (7, 16807, 16906), (11, 10648, 10747), (11, 11979, 12078), (11, 13310, 13409), (11, 14641, 14740), (11, 15972, 16071), (11, 17303, 17402), (11, 18634, 18733), (11, 14641, 14740), (13, 10985, 11084), (13, 13182, 13281), (13, 15379, 15478), (13, 17576, 17675), (13, 19773, 19799), (17, 9900, 9925), (17, 14739, 14838), (17, 19652, 19751), (19, 13718, 13817), (23, 10051, 10150), (23, 10580, 10679), (23, 12167, 12266), (29, 10092, 10191), (29, 10933, 11032), (29, 11774, 11873), (29, 12615, 12714), (29, 13456, 13555), (29, 14297, 14396), (29, 15138, 15237), (29, 15979, 16078), (29, 16820, 16919), (31, 10571, 10670), (31, 11532, 11631), (31, 12493, 12592), (31, 13454, 13553), (31, 14415, 14514), (31, 15376, 15475), (31, 16337, 16436), (31, 17298, 17397), (31, 18259, 18358), (31, 19220, 19319), (37, 10952, 11051), (37, 12321, 12420), (37, 13690, 13789), (37, 15059, 15158), (37, 16428, 16527), (37, 17797, 17896), (37, 19166, 19265), (41, 10086, 10185), (41, 11767, 11866), (41, 13448, 13547), (41, 15129, 15228), (41, 16810, 16909), (41, 18491, 18590), (43, 11094, 11193), (43, 12943, 13042), (43, 14792, 14891), (43, 16641, 16740), (43, 18490, 18589), (47, 11045, 11144), (47, 13254, 13353), (47, 15463, 15562), (47, 17672, 17771), (53, 11236, 11335), (53, 14045, 14144), (53, 16854, 16953), (53, 19663, 19762), (59, 10443, 10542), (59, 13924, 14023), (59, 17405, 17504), (61, 11163, 11262), (61, 14884, 14983), (61, 18605, 18704), (67, 13467, 13566), (67, 17956, 18055), (71, 10082, 10181), (71, 15123, 15222), (73, 10658, 10757), (73, 15987, 16086), (79, 12482, 12581), (79, 18723, 18822), (83, 13778, 13877), (89, 15842, 15941), (97, 18818, 18917)]

def row100_layer000_block000 : List ColouredInterval :=
  [(2, 10240, 10339), (2, 12288, 12387), (2, 16384, 16483), (2, 16384, 16483), (2, 16384, 16483), (3, 10206, 10305), (3, 10935, 11034), (3, 11664, 11763), (3, 12393, 12492), (3, 13122, 13221), (3, 13851, 13950), (3, 14580, 14679), (3, 10935, 11034), (3, 13122, 13221), (3, 15309, 15408), (3, 17496, 17595)]

def row100_layer000_block001 : List ColouredInterval :=
  [(3, 19683, 19782), (3, 13122, 13221), (3, 19683, 19782), (3, 19683, 19782), (7, 12005, 12104), (7, 14406, 14505), (7, 16807, 16906), (7, 19208, 19307), (7, 16807, 16906), (11, 10648, 10747), (11, 11979, 12078), (11, 13310, 13409), (11, 14641, 14740), (11, 15972, 16071), (11, 17303, 17402), (11, 18634, 18733)]

def row100_layer000_block002 : List ColouredInterval :=
  [(11, 14641, 14740), (13, 10985, 11084), (13, 13182, 13281), (13, 15379, 15478), (13, 17576, 17675), (13, 19773, 19799), (17, 9900, 9925), (17, 14739, 14838), (17, 19652, 19751), (19, 13718, 13817), (23, 10051, 10150), (23, 10580, 10679), (23, 12167, 12266), (29, 10092, 10191), (29, 10933, 11032), (29, 11774, 11873)]

def row100_layer000_block003 : List ColouredInterval :=
  [(29, 12615, 12714), (29, 13456, 13555), (29, 14297, 14396), (29, 15138, 15237), (29, 15979, 16078), (29, 16820, 16919), (31, 10571, 10670), (31, 11532, 11631), (31, 12493, 12592), (31, 13454, 13553), (31, 14415, 14514), (31, 15376, 15475), (31, 16337, 16436), (31, 17298, 17397), (31, 18259, 18358), (31, 19220, 19319)]

def row100_layer000_block004 : List ColouredInterval :=
  [(37, 10952, 11051), (37, 12321, 12420), (37, 13690, 13789), (37, 15059, 15158), (37, 16428, 16527), (37, 17797, 17896), (37, 19166, 19265), (41, 10086, 10185), (41, 11767, 11866), (41, 13448, 13547), (41, 15129, 15228), (41, 16810, 16909), (41, 18491, 18590), (43, 11094, 11193), (43, 12943, 13042), (43, 14792, 14891)]

def row100_layer000_block005 : List ColouredInterval :=
  [(43, 16641, 16740), (43, 18490, 18589), (47, 11045, 11144), (47, 13254, 13353), (47, 15463, 15562), (47, 17672, 17771), (53, 11236, 11335), (53, 14045, 14144), (53, 16854, 16953), (53, 19663, 19762), (59, 10443, 10542), (59, 13924, 14023), (59, 17405, 17504), (61, 11163, 11262), (61, 14884, 14983), (61, 18605, 18704)]

def row100_layer000_block006 : List ColouredInterval :=
  [(67, 13467, 13566), (67, 17956, 18055), (71, 10082, 10181), (71, 15123, 15222), (73, 10658, 10757), (73, 15987, 16086), (79, 12482, 12581), (79, 18723, 18822), (83, 13778, 13877), (89, 15842, 15941), (97, 18818, 18917)]

def row100_layer000_chunks : List (List ColouredInterval) :=
  [row100_layer000_block000, row100_layer000_block001, row100_layer000_block002, row100_layer000_block003, row100_layer000_block004, row100_layer000_block005, row100_layer000_block006]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row100_layer000_intervals

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row100_layer000_arithmetic : LayerArithmeticValid row100.height { lower := 9900, upper := 19800, M := 20 } := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row100_layer000_arithmetic

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row100_layer000_enumeration :
    activePowerIntervalList 100 20 9900 19800 = row100_layer000_intervals := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row100_layer000_enumeration

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row100_layer000_pairs000 :
    row100_layer000_block000.all (fun I => row100_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row100_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row100_layer000_pairs000

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row100_layer000_pairs001 :
    row100_layer000_block001.all (fun I => row100_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row100_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row100_layer000_pairs001

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row100_layer000_pairs002 :
    row100_layer000_block002.all (fun I => row100_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row100_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row100_layer000_pairs002

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row100_layer000_pairs003 :
    row100_layer000_block003.all (fun I => row100_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row100_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row100_layer000_pairs003

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row100_layer000_pairs004 :
    row100_layer000_block004.all (fun I => row100_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row100_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row100_layer000_pairs004

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row100_layer000_pairs005 :
    row100_layer000_block005.all (fun I => row100_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row100_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row100_layer000_pairs005

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row100_layer000_pairs006 :
    row100_layer000_block006.all (fun I => row100_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row100_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row100_layer000_pairs006

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row100_layer000_chunks_eq : row100_layer000_chunks.flatten = row100_layer000_intervals := by
  rfl

theorem row100_layer000_pairs : pairCoverCheck row100_layer000_intervals row100_bounds = true := by
  apply pairCoverCheck_of_chunks row100_layer000_chunks_eq
  intro block hblock
  simp only [row100_layer000_chunks, List.mem_cons, List.mem_nil_iff, or_false] at hblock
  rcases hblock with rfl | rfl | rfl | rfl | rfl | rfl | rfl
  · exact row100_layer000_pairs000
  · exact row100_layer000_pairs001
  · exact row100_layer000_pairs002
  · exact row100_layer000_pairs003
  · exact row100_layer000_pairs004
  · exact row100_layer000_pairs005
  · exact row100_layer000_pairs006

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row100_layer000_chunks_eq
#print axioms B699LowIndex.LowIndexLean513dc7cc.row100_layer000_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row100_layer000_checked :
    coverLayerCheck row100.height row100.goods { lower := 9900, upper := 19800, M := 20 } = true := by
  exact coverLayerCheck_of_parts row100_layer000_arithmetic row100_layer000_enumeration row100_bounds_eq row100_layer000_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row100_layer000_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row100_layer001_intervals : List ColouredInterval :=
  [(2, 24576, 24675), (2, 32768, 32867), (2, 32768, 32867), (2, 32768, 32867), (3, 21870, 21969), (3, 24057, 24156), (3, 26244, 26343), (3, 28431, 28530), (3, 30618, 30717), (3, 32805, 32904), (3, 34992, 35091), (3, 26244, 26343), (3, 32805, 32904), (3, 39366, 39465), (3, 39366, 39465), (7, 21609, 21708), (7, 24010, 24109), (7, 26411, 26510), (7, 28812, 28911), (7, 31213, 31312), (7, 33614, 33713), (7, 36015, 36114), (7, 38416, 38515), (7, 33614, 33713), (11, 19965, 20064), (11, 21296, 21395), (11, 29282, 29381), (13, 19800, 19872), (13, 21970, 22069), (13, 24167, 24266), (13, 26364, 26463), (13, 28561, 28660), (13, 30758, 30857), (13, 32955, 33054), (13, 35152, 35251), (13, 28561, 28660), (17, 24565, 24664), (17, 29478, 29577), (17, 34391, 34490), (17, 39304, 39403), (19, 20577, 20676), (19, 27436, 27535), (19, 34295, 34394), (23, 24334, 24433), (23, 36501, 36600), (29, 24389, 24488), (31, 29791, 29890), (37, 20535, 20634), (37, 21904, 22003), (41, 20172, 20271), (41, 21853, 21952), (41, 23534, 23633), (41, 25215, 25314), (41, 26896, 26995), (43, 20339, 20438), (43, 22188, 22287), (43, 24037, 24136), (43, 25886, 25985), (43, 27735, 27834), (43, 29584, 29683), (47, 19881, 19980), (47, 22090, 22189), (47, 24299, 24398), (47, 26508, 26607), (47, 28717, 28816), (47, 30926, 31025), (47, 33135, 33234), (47, 35344, 35443), (53, 22472, 22571), (53, 25281, 25380), (53, 28090, 28189), (53, 30899, 30998), (53, 33708, 33807), (53, 36517, 36616), (53, 39326, 39425), (59, 20886, 20985), (59, 24367, 24466), (59, 27848, 27947), (59, 31329, 31428), (59, 34810, 34909), (59, 38291, 38390), (61, 22326, 22425), (61, 26047, 26146), (61, 29768, 29867), (61, 33489, 33588), (61, 37210, 37309), (67, 22445, 22544), (67, 26934, 27033), (67, 31423, 31522), (67, 35912, 36011), (71, 20164, 20263), (71, 25205, 25304), (71, 30246, 30345), (71, 35287, 35386), (73, 21316, 21415), (73, 26645, 26744), (73, 31974, 32073), (73, 37303, 37402), (79, 24964, 25063), (79, 31205, 31304), (79, 37446, 37545), (83, 20667, 20766), (83, 27556, 27655), (83, 34445, 34544), (89, 23763, 23862), (89, 31684, 31783), (97, 28227, 28326), (97, 37636, 37735)]

def row100_layer001_block000 : List ColouredInterval :=
  [(2, 24576, 24675), (2, 32768, 32867), (2, 32768, 32867), (2, 32768, 32867), (3, 21870, 21969), (3, 24057, 24156), (3, 26244, 26343), (3, 28431, 28530), (3, 30618, 30717), (3, 32805, 32904), (3, 34992, 35091), (3, 26244, 26343), (3, 32805, 32904), (3, 39366, 39465), (3, 39366, 39465), (7, 21609, 21708)]

def row100_layer001_block001 : List ColouredInterval :=
  [(7, 24010, 24109), (7, 26411, 26510), (7, 28812, 28911), (7, 31213, 31312), (7, 33614, 33713), (7, 36015, 36114), (7, 38416, 38515), (7, 33614, 33713), (11, 19965, 20064), (11, 21296, 21395), (11, 29282, 29381), (13, 19800, 19872), (13, 21970, 22069), (13, 24167, 24266), (13, 26364, 26463), (13, 28561, 28660)]

def row100_layer001_block002 : List ColouredInterval :=
  [(13, 30758, 30857), (13, 32955, 33054), (13, 35152, 35251), (13, 28561, 28660), (17, 24565, 24664), (17, 29478, 29577), (17, 34391, 34490), (17, 39304, 39403), (19, 20577, 20676), (19, 27436, 27535), (19, 34295, 34394), (23, 24334, 24433), (23, 36501, 36600), (29, 24389, 24488), (31, 29791, 29890), (37, 20535, 20634)]

def row100_layer001_block003 : List ColouredInterval :=
  [(37, 21904, 22003), (41, 20172, 20271), (41, 21853, 21952), (41, 23534, 23633), (41, 25215, 25314), (41, 26896, 26995), (43, 20339, 20438), (43, 22188, 22287), (43, 24037, 24136), (43, 25886, 25985), (43, 27735, 27834), (43, 29584, 29683), (47, 19881, 19980), (47, 22090, 22189), (47, 24299, 24398), (47, 26508, 26607)]

def row100_layer001_block004 : List ColouredInterval :=
  [(47, 28717, 28816), (47, 30926, 31025), (47, 33135, 33234), (47, 35344, 35443), (53, 22472, 22571), (53, 25281, 25380), (53, 28090, 28189), (53, 30899, 30998), (53, 33708, 33807), (53, 36517, 36616), (53, 39326, 39425), (59, 20886, 20985), (59, 24367, 24466), (59, 27848, 27947), (59, 31329, 31428), (59, 34810, 34909)]

def row100_layer001_block005 : List ColouredInterval :=
  [(59, 38291, 38390), (61, 22326, 22425), (61, 26047, 26146), (61, 29768, 29867), (61, 33489, 33588), (61, 37210, 37309), (67, 22445, 22544), (67, 26934, 27033), (67, 31423, 31522), (67, 35912, 36011), (71, 20164, 20263), (71, 25205, 25304), (71, 30246, 30345), (71, 35287, 35386), (73, 21316, 21415), (73, 26645, 26744)]

def row100_layer001_block006 : List ColouredInterval :=
  [(73, 31974, 32073), (73, 37303, 37402), (79, 24964, 25063), (79, 31205, 31304), (79, 37446, 37545), (83, 20667, 20766), (83, 27556, 27655), (83, 34445, 34544), (89, 23763, 23862), (89, 31684, 31783), (97, 28227, 28326), (97, 37636, 37735)]

def row100_layer001_chunks : List (List ColouredInterval) :=
  [row100_layer001_block000, row100_layer001_block001, row100_layer001_block002, row100_layer001_block003, row100_layer001_block004, row100_layer001_block005, row100_layer001_block006]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row100_layer001_intervals

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row100_layer001_arithmetic : LayerArithmeticValid row100.height { lower := 19800, upper := 39600, M := 16 } := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row100_layer001_arithmetic

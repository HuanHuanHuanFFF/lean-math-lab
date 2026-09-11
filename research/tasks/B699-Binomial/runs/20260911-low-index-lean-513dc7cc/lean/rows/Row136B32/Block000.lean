import research.tasks.«B699-Binomial».runs.«20260909-low-index-structure-b41a5a63».lean.FiniteCover
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.WitnessBridge
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.LayerParts
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.PairChunks

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row136_height : HeightCertificateDatum := { i := 136, r := 45, s := 96, n0Power10 := 8 }

def row136_goods : List GoodSegment := [
  { lower := 274, upper := 406, witness := RowWitness.topPrime 271 },
  { lower := 407, upper := 536, witness := RowWitness.topPrime 401 },
  { lower := 537, upper := 658, witness := RowWitness.topPrime 523 },
  { lower := 659, upper := 794, witness := RowWitness.topPrime 659 },
  { lower := 795, upper := 922, witness := RowWitness.topPrime 787 },
  { lower := 923, upper := 1054, witness := RowWitness.topPrime 919 },
  { lower := 1055, upper := 1186, witness := RowWitness.topPrime 1051 },
  { lower := 1187, upper := 1322, witness := RowWitness.topPrime 1187 },
  { lower := 1323, upper := 1456, witness := RowWitness.topPrime 1321 },
  { lower := 1457, upper := 1588, witness := RowWitness.topPrime 1453 },
  { lower := 1589, upper := 1718, witness := RowWitness.topPrime 1583 },
  { lower := 1719, upper := 1844, witness := RowWitness.topPrime 1709 },
  { lower := 1845, upper := 1966, witness := RowWitness.topPrime 1831 },
  { lower := 1967, upper := 2086, witness := RowWitness.topPrime 1951 },
  { lower := 2087, upper := 2222, witness := RowWitness.topPrime 2087 },
  { lower := 2223, upper := 2356, witness := RowWitness.topPrime 2221 },
  { lower := 2357, upper := 2492, witness := RowWitness.topPrime 2357 },
  { lower := 2493, upper := 2612, witness := RowWitness.topPrime 2477 },
  { lower := 2613, upper := 2744, witness := RowWitness.topPrime 2609 },
  { lower := 2745, upper := 2876, witness := RowWitness.topPrime 2741 },
  { lower := 2877, upper := 2996, witness := RowWitness.topPrime 2861 },
  { lower := 2997, upper := 3106, witness := RowWitness.topPrime 2971 },
  { lower := 3107, upper := 3224, witness := RowWitness.topPrime 3089 },
  { lower := 3225, upper := 3356, witness := RowWitness.topPrime 3221 },
  { lower := 3357, upper := 3482, witness := RowWitness.topPrime 3347 },
  { lower := 3483, upper := 3604, witness := RowWitness.topPrime 3469 },
  { lower := 3605, upper := 3728, witness := RowWitness.topPrime 3593 },
  { lower := 3729, upper := 3862, witness := RowWitness.topPrime 3727 },
  { lower := 3863, upper := 3998, witness := RowWitness.topPrime 3863 },
  { lower := 3999, upper := 4124, witness := RowWitness.topPrime 3989 },
  { lower := 4125, upper := 4246, witness := RowWitness.topPrime 4111 },
  { lower := 4247, upper := 4378, witness := RowWitness.topPrime 4243 },
  { lower := 4379, upper := 4508, witness := RowWitness.topPrime 4373 },
  { lower := 4509, upper := 4642, witness := RowWitness.topPrime 4507 },
  { lower := 4643, upper := 4778, witness := RowWitness.topPrime 4643 },
  { lower := 4779, upper := 4894, witness := RowWitness.topPrime 4759 },
  { lower := 4895, upper := 5024, witness := RowWitness.topPrime 4889 },
  { lower := 5025, upper := 5158, witness := RowWitness.topPrime 5023 },
  { lower := 5159, upper := 5288, witness := RowWitness.topPrime 5153 },
  { lower := 5289, upper := 5416, witness := RowWitness.topPrime 5281 },
  { lower := 5417, upper := 5552, witness := RowWitness.topPrime 5417 },
  { lower := 5553, upper := 5666, witness := RowWitness.topPrime 5531 },
  { lower := 5667, upper := 5794, witness := RowWitness.topPrime 5659 },
  { lower := 5795, upper := 5926, witness := RowWitness.topPrime 5791 },
  { lower := 5927, upper := 6062, witness := RowWitness.topPrime 5927 },
  { lower := 6063, upper := 6188, witness := RowWitness.topPrime 6053 },
  { lower := 6189, upper := 6308, witness := RowWitness.topPrime 6173 },
  { lower := 6309, upper := 6436, witness := RowWitness.topPrime 6301 },
  { lower := 6437, upper := 6562, witness := RowWitness.topPrime 6427 },
  { lower := 6563, upper := 6698, witness := RowWitness.topPrime 6563 },
  { lower := 6699, upper := 6826, witness := RowWitness.topPrime 6691 },
  { lower := 6827, upper := 6962, witness := RowWitness.topPrime 6827 },
  { lower := 6963, upper := 7096, witness := RowWitness.topPrime 6961 },
  { lower := 7097, upper := 7214, witness := RowWitness.topPrime 7079 },
  { lower := 7215, upper := 7348, witness := RowWitness.topPrime 7213 },
  { lower := 7349, upper := 7484, witness := RowWitness.topPrime 7349 },
  { lower := 7485, upper := 7616, witness := RowWitness.topPrime 7481 },
  { lower := 7617, upper := 7742, witness := RowWitness.topPrime 7607 },
  { lower := 7743, upper := 7876, witness := RowWitness.topPrime 7741 },
  { lower := 7877, upper := 8012, witness := RowWitness.topPrime 7877 },
  { lower := 8013, upper := 8146, witness := RowWitness.topPrime 8011 },
  { lower := 8147, upper := 8282, witness := RowWitness.topPrime 8147 },
  { lower := 8283, upper := 8408, witness := RowWitness.topPrime 8273 },
  { lower := 8409, upper := 8524, witness := RowWitness.topPrime 8389 },
  { lower := 8525, upper := 8656, witness := RowWitness.topPrime 8521 },
  { lower := 8657, upper := 8782, witness := RowWitness.topPrime 8647 },
  { lower := 8783, upper := 8918, witness := RowWitness.topPrime 8783 },
  { lower := 8919, upper := 9028, witness := RowWitness.topPrime 8893 },
  { lower := 9029, upper := 9164, witness := RowWitness.topPrime 9029 },
  { lower := 9165, upper := 9296, witness := RowWitness.topPrime 9161 },
  { lower := 9297, upper := 9428, witness := RowWitness.topPrime 9293 },
  { lower := 9429, upper := 9556, witness := RowWitness.topPrime 9421 },
  { lower := 9557, upper := 9686, witness := RowWitness.topPrime 9551 },
  { lower := 9687, upper := 9814, witness := RowWitness.topPrime 9679 },
  { lower := 9815, upper := 9946, witness := RowWitness.topPrime 9811 },
  { lower := 9947, upper := 10076, witness := RowWitness.topPrime 9941 },
  { lower := 10077, upper := 10204, witness := RowWitness.topPrime 10069 },
  { lower := 10205, upper := 10328, witness := RowWitness.topPrime 10193 },
  { lower := 10329, upper := 10456, witness := RowWitness.topPrime 10321 },
  { lower := 10457, upper := 10592, witness := RowWitness.topPrime 10457 },
  { lower := 10593, upper := 10724, witness := RowWitness.topPrime 10589 },
  { lower := 10725, upper := 10858, witness := RowWitness.topPrime 10723 },
  { lower := 10859, upper := 10994, witness := RowWitness.topPrime 10859 },
  { lower := 10995, upper := 11128, witness := RowWitness.topPrime 10993 },
  { lower := 11129, upper := 11254, witness := RowWitness.topPrime 11119 },
  { lower := 11255, upper := 11386, witness := RowWitness.topPrime 11251 },
  { lower := 11387, upper := 11518, witness := RowWitness.topPrime 11383 },
  { lower := 11519, upper := 11654, witness := RowWitness.topPrime 11519 },
  { lower := 11655, upper := 11768, witness := RowWitness.topPrime 11633 },
  { lower := 11769, upper := 11878, witness := RowWitness.topPrime 11743 },
  { lower := 11879, upper := 12002, witness := RowWitness.topPrime 11867 },
  { lower := 12003, upper := 12122, witness := RowWitness.topPrime 11987 },
  { lower := 12123, upper := 12254, witness := RowWitness.topPrime 12119 },
  { lower := 12255, upper := 12388, witness := RowWitness.topPrime 12253 },
  { lower := 12389, upper := 12514, witness := RowWitness.topPrime 12379 },
  { lower := 12515, upper := 12646, witness := RowWitness.topPrime 12511 },
  { lower := 12647, upper := 12782, witness := RowWitness.topPrime 12647 },
  { lower := 12783, upper := 12916, witness := RowWitness.topPrime 12781 },
  { lower := 12917, upper := 13052, witness := RowWitness.topPrime 12917 },
  { lower := 13053, upper := 13184, witness := RowWitness.topPrime 13049 },
  { lower := 13185, upper := 13318, witness := RowWitness.topPrime 13183 },
  { lower := 13319, upper := 13448, witness := RowWitness.topPrime 13313 },
  { lower := 13449, upper := 13576, witness := RowWitness.topPrime 13441 },
  { lower := 13577, upper := 13712, witness := RowWitness.topPrime 13577 },
  { lower := 13713, upper := 13846, witness := RowWitness.topPrime 13711 },
  { lower := 13847, upper := 13976, witness := RowWitness.topPrime 13841 },
  { lower := 13977, upper := 14102, witness := RowWitness.topPrime 13967 },
  { lower := 14103, upper := 14222, witness := RowWitness.topPrime 14087 },
  { lower := 14223, upper := 14356, witness := RowWitness.topPrime 14221 },
  { lower := 14357, upper := 14482, witness := RowWitness.topPrime 14347 },
  { lower := 14483, upper := 14614, witness := RowWitness.topPrime 14479 },
  { lower := 14615, upper := 14728, witness := RowWitness.topPrime 14593 },
  { lower := 14729, upper := 14858, witness := RowWitness.topPrime 14723 },
  { lower := 14859, upper := 14986, witness := RowWitness.topPrime 14851 },
  { lower := 14987, upper := 15118, witness := RowWitness.topPrime 14983 },
  { lower := 15119, upper := 15242, witness := RowWitness.topPrime 15107 },
  { lower := 15243, upper := 15376, witness := RowWitness.topPrime 15241 },
  { lower := 15377, upper := 15512, witness := RowWitness.topPrime 15377 },
  { lower := 15513, upper := 15646, witness := RowWitness.topPrime 15511 },
  { lower := 15647, upper := 15782, witness := RowWitness.topPrime 15647 },
  { lower := 15783, upper := 15908, witness := RowWitness.topPrime 15773 },
  { lower := 15909, upper := 16042, witness := RowWitness.topPrime 15907 },
  { lower := 16043, upper := 16168, witness := RowWitness.topPrime 16033 },
  { lower := 16169, upper := 16276, witness := RowWitness.topPrime 16141 },
  { lower := 16277, upper := 16408, witness := RowWitness.topPrime 16273 },
  { lower := 16409, upper := 16516, witness := RowWitness.topPrime 16381 },
  { lower := 16517, upper := 16628, witness := RowWitness.topPrime 16493 },
  { lower := 16629, upper := 16754, witness := RowWitness.topPrime 16619 },
  { lower := 16755, upper := 16882, witness := RowWitness.topPrime 16747 },
  { lower := 16883, upper := 17018, witness := RowWitness.topPrime 16883 },
  { lower := 17019, upper := 17146, witness := RowWitness.topPrime 17011 },
  { lower := 17147, upper := 17272, witness := RowWitness.topPrime 17137 },
  { lower := 17273, upper := 17392, witness := RowWitness.topPrime 17257 },
  { lower := 17393, upper := 17528, witness := RowWitness.topPrime 17393 },
  { lower := 17529, upper := 17654, witness := RowWitness.topPrime 17519 },
  { lower := 17655, upper := 17762, witness := RowWitness.topPrime 17627 },
  { lower := 17763, upper := 17896, witness := RowWitness.topPrime 17761 },
  { lower := 17897, upper := 18026, witness := RowWitness.topPrime 17891 },
  { lower := 18027, upper := 18148, witness := RowWitness.topPrime 18013 },
  { lower := 18149, upper := 18284, witness := RowWitness.topPrime 18149 },
  { lower := 18285, upper := 18359, witness := RowWitness.topPrime 18269 },
  { lower := 18491, upper := 18616, witness := RowWitness.topPrime 18481 },
  { lower := 18617, upper := 18626, witness := RowWitness.topPrime 18617 },
  { lower := 18634, upper := 18752, witness := RowWitness.topPrime 18617 },
  { lower := 18753, upper := 18884, witness := RowWitness.topPrime 18749 },
  { lower := 18885, upper := 18885, witness := RowWitness.topPrime 18869 },
  { lower := 19208, upper := 19301, witness := RowWitness.topPrime 19207 },
  { lower := 19683, upper := 19816, witness := RowWitness.topPrime 19681 },
  { lower := 19817, upper := 19818, witness := RowWitness.topPrime 19813 },
  { lower := 19881, upper := 19908, witness := RowWitness.topPrime 19867 },
  { lower := 19965, upper := 20016, witness := RowWitness.topPrime 19963 },
  { lower := 20172, upper := 20296, witness := RowWitness.topPrime 20161 },
  { lower := 20297, upper := 20299, witness := RowWitness.topPrime 20297 },
  { lower := 20402, upper := 20474, witness := RowWitness.topPrime 20399 },
  { lower := 20535, upper := 20537, witness := RowWitness.topPrime 20533 },
  { lower := 20577, upper := 20698, witness := RowWitness.topPrime 20563 },
  { lower := 20699, upper := 20712, witness := RowWitness.topPrime 20693 },
  { lower := 21316, upper := 21353, witness := RowWitness.topPrime 21313 },
  { lower := 21870, upper := 21998, witness := RowWitness.topPrime 21863 },
  { lower := 21999, upper := 22010, witness := RowWitness.topPrime 21997 },
  { lower := 22090, upper := 22105, witness := RowWitness.topPrime 22079 },
  { lower := 22188, upper := 22225, witness := RowWitness.topPrime 22171 },
  { lower := 22445, upper := 22461, witness := RowWitness.topPrime 22441 },
  { lower := 22472, upper := 22580, witness := RowWitness.topPrime 22469 },
  { lower := 23763, upper := 23896, witness := RowWitness.topPrime 23761 },
  { lower := 23897, upper := 23897, witness := RowWitness.topPrime 23893 },
  { lower := 24037, upper := 24164, witness := RowWitness.topPrime 24029 },
  { lower := 24165, upper := 24192, witness := RowWitness.topPrime 24151 },
  { lower := 24299, upper := 24302, witness := RowWitness.topPrime 24281 },
  { lower := 24334, upper := 24464, witness := RowWitness.topPrime 24329 },
  { lower := 24465, upper := 24502, witness := RowWitness.topPrime 24443 },
  { lower := 25000, upper := 25099, witness := RowWitness.topPrime 24989 },
  { lower := 25215, upper := 25324, witness := RowWitness.topPrime 25189 },
  { lower := 25325, upper := 25350, witness := RowWitness.topPrime 25321 },
  { lower := 26364, upper := 26379, witness := RowWitness.topPrime 26357 },
  { lower := 26411, upper := 26499, witness := RowWitness.topPrime 26407 },
  { lower := 26508, upper := 26546, witness := RowWitness.topPrime 26501 },
  { lower := 27556, upper := 27571, witness := RowWitness.topPrime 27551 },
  { lower := 27848, upper := 27870, witness := RowWitness.topPrime 27847 },
  { lower := 28125, upper := 28225, witness := RowWitness.topPrime 28123 },
  { lower := 28227, upper := 28260, witness := RowWitness.topPrime 28219 },
  { lower := 28561, upper := 28566, witness := RowWitness.topPrime 28559 },
  { lower := 28812, upper := 28852, witness := RowWitness.topPrime 28807 },
  { lower := 29791, upper := 29903, witness := RowWitness.topPrime 29789 },
  { lower := 30618, upper := 30728, witness := RowWitness.topPrime 30593 },
  { lower := 30729, upper := 30738, witness := RowWitness.topPrime 30727 },
  { lower := 30926, upper := 31034, witness := RowWitness.topPrime 30911 },
  { lower := 31213, upper := 31328, witness := RowWitness.topPrime 31193 },
  { lower := 31329, upper := 31385, witness := RowWitness.topPrime 31327 },
  { lower := 31423, upper := 31464, witness := RowWitness.topPrime 31397 },
  { lower := 32805, upper := 32903, witness := RowWitness.topPrime 32803 },
  { lower := 33614, upper := 33624, witness := RowWitness.topPrime 33613 },
  { lower := 33708, upper := 33749, witness := RowWitness.topPrime 33703 },
  { lower := 34322, upper := 34454, witness := RowWitness.topPrime 34319 },
  { lower := 34455, upper := 34510, witness := RowWitness.topPrime 34439 },
  { lower := 36015, upper := 36047, witness := RowWitness.topPrime 36013 },
  { lower := 36517, upper := 36632, witness := RowWitness.topPrime 36497 },
  { lower := 36633, upper := 36636, witness := RowWitness.topPrime 36629 },
  { lower := 37303, upper := 37345, witness := RowWitness.topPrime 37277 },
  { lower := 37500, upper := 37581, witness := RowWitness.topPrime 37493 },
  { lower := 38307, upper := 38426, witness := RowWitness.topPrime 38303 },
  { lower := 40401, upper := 40463, witness := RowWitness.topPrime 40387 },
  { lower := 40931, upper := 40939, witness := RowWitness.topPrime 40927 },
  { lower := 45927, upper := 45931, witness := RowWitness.topPrime 45893 },
  { lower := 47526, upper := 47656, witness := RowWitness.topPrime 47521 },
  { lower := 47657, upper := 47659, witness := RowWitness.topPrime 47657 },
  { lower := 48013, upper := 48096, witness := RowWitness.topPrime 47981 },
  { lower := 48778, upper := 48803, witness := RowWitness.topPrime 48767 },
  { lower := 50421, upper := 50545, witness := RowWitness.topPrime 50417 },
  { lower := 51076, upper := 51140, witness := RowWitness.topPrime 51071 },
  { lower := 55451, upper := 55576, witness := RowWitness.topPrime 55441 },
  { lower := 55577, upper := 55582, witness := RowWitness.topPrime 55547 },
  { lower := 57245, upper := 57257, witness := RowWitness.topPrime 57241 },
  { lower := 58619, upper := 58699, witness := RowWitness.topPrime 58613 },
  { lower := 62500, upper := 62545, witness := RowWitness.topPrime 62497 },
  { lower := 63948, upper := 63980, witness := RowWitness.topPrime 63929 },
  { lower := 65610, upper := 65671, witness := RowWitness.topPrime 65609 },
  { lower := 68644, upper := 68774, witness := RowWitness.topPrime 68639 },
  { lower := 68775, upper := 68786, witness := RowWitness.topPrime 68771 },
  { lower := 68921, upper := 69025, witness := RowWitness.topPrime 68917 },
  { lower := 71289, upper := 71422, witness := RowWitness.topPrime 71287 },
  { lower := 71423, upper := 71424, witness := RowWitness.topPrime 71419 },
  { lower := 73205, upper := 73302, witness := RowWitness.topPrime 73189 },
  { lower := 85805, upper := 85818, witness := RowWitness.topPrime 85793 },
  { lower := 89383, upper := 89508, witness := RowWitness.topPrime 89381 },
  { lower := 103041, upper := 103101, witness := RowWitness.topPrime 103007 },
  { lower := 109503, upper := 109510, witness := RowWitness.topPrime 109481 },
  { lower := 137842, upper := 137916, witness := RowWitness.topPrime 137831 },
  { lower := 148955, upper := 149012, witness := RowWitness.topPrime 148949 }
]

def row136_layers : List CoverLayer := [
  { lower := 18360, upper := 36720, M := 15 },
  { lower := 36720, upper := 73440, M := 12 },
  { lower := 73440, upper := 146880, M := 9 },
  { lower := 146880, upper := 293760, M := 7 },
  { lower := 293760, upper := 587520, M := 5 },
  { lower := 587520, upper := 1175040, M := 4 },
  { lower := 1175040, upper := 2350080, M := 3 },
  { lower := 2350080, upper := 4700160, M := 2 },
  { lower := 4700160, upper := 9400320, M := 2 },
  { lower := 9400320, upper := 18800640, M := 2 },
  { lower := 18800640, upper := 37601280, M := 1 },
  { lower := 37601280, upper := 75202560, M := 1 },
  { lower := 75202560, upper := 100000000, M := 1 }
]

def row136 : FiniteCoverRow := {
  height := row136_height,
  goods := row136_goods,
  layers := row136_layers
}


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row136

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row136_good000_checked :
    goodSegmentCheck 136 45 96
      { lower := 274, upper := 406, witness := RowWitness.topPrime 271 } = true := by
  exact good_top_prime_checked (i := 136) (r := 45) (s := 96) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row136_good001_checked :
    goodSegmentCheck 136 45 96
      { lower := 407, upper := 536, witness := RowWitness.topPrime 401 } = true := by
  exact good_top_prime_checked (i := 136) (r := 45) (s := 96) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row136_good002_checked :
    goodSegmentCheck 136 45 96
      { lower := 537, upper := 658, witness := RowWitness.topPrime 523 } = true := by
  exact good_top_prime_checked (i := 136) (r := 45) (s := 96) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row136_good003_checked :
    goodSegmentCheck 136 45 96
      { lower := 659, upper := 794, witness := RowWitness.topPrime 659 } = true := by
  exact good_top_prime_checked (i := 136) (r := 45) (s := 96) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row136_good004_checked :
    goodSegmentCheck 136 45 96
      { lower := 795, upper := 922, witness := RowWitness.topPrime 787 } = true := by
  exact good_top_prime_checked (i := 136) (r := 45) (s := 96) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row136_good005_checked :
    goodSegmentCheck 136 45 96
      { lower := 923, upper := 1054, witness := RowWitness.topPrime 919 } = true := by
  exact good_top_prime_checked (i := 136) (r := 45) (s := 96) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row136_good006_checked :
    goodSegmentCheck 136 45 96
      { lower := 1055, upper := 1186, witness := RowWitness.topPrime 1051 } = true := by
  exact good_top_prime_checked (i := 136) (r := 45) (s := 96) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row136_good007_checked :
    goodSegmentCheck 136 45 96
      { lower := 1187, upper := 1322, witness := RowWitness.topPrime 1187 } = true := by
  exact good_top_prime_checked (i := 136) (r := 45) (s := 96) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row136_good008_checked :
    goodSegmentCheck 136 45 96
      { lower := 1323, upper := 1456, witness := RowWitness.topPrime 1321 } = true := by
  exact good_top_prime_checked (i := 136) (r := 45) (s := 96) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row136_good009_checked :
    goodSegmentCheck 136 45 96
      { lower := 1457, upper := 1588, witness := RowWitness.topPrime 1453 } = true := by
  exact good_top_prime_checked (i := 136) (r := 45) (s := 96) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row136_good010_checked :
    goodSegmentCheck 136 45 96
      { lower := 1589, upper := 1718, witness := RowWitness.topPrime 1583 } = true := by
  exact good_top_prime_checked (i := 136) (r := 45) (s := 96) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row136_good011_checked :
    goodSegmentCheck 136 45 96
      { lower := 1719, upper := 1844, witness := RowWitness.topPrime 1709 } = true := by
  exact good_top_prime_checked (i := 136) (r := 45) (s := 96) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row136_good012_checked :
    goodSegmentCheck 136 45 96
      { lower := 1845, upper := 1966, witness := RowWitness.topPrime 1831 } = true := by
  exact good_top_prime_checked (i := 136) (r := 45) (s := 96) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row136_good013_checked :
    goodSegmentCheck 136 45 96
      { lower := 1967, upper := 2086, witness := RowWitness.topPrime 1951 } = true := by
  exact good_top_prime_checked (i := 136) (r := 45) (s := 96) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row136_good014_checked :
    goodSegmentCheck 136 45 96
      { lower := 2087, upper := 2222, witness := RowWitness.topPrime 2087 } = true := by
  exact good_top_prime_checked (i := 136) (r := 45) (s := 96) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row136_good015_checked :
    goodSegmentCheck 136 45 96
      { lower := 2223, upper := 2356, witness := RowWitness.topPrime 2221 } = true := by
  exact good_top_prime_checked (i := 136) (r := 45) (s := 96) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row136_good000_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row136_good001_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row136_good002_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row136_good003_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row136_good004_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row136_good005_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row136_good006_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row136_good007_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row136_good008_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row136_good009_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row136_good010_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row136_good011_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row136_good012_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row136_good013_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row136_good014_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row136_good015_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row136_good016_checked :
    goodSegmentCheck 136 45 96
      { lower := 2357, upper := 2492, witness := RowWitness.topPrime 2357 } = true := by
  exact good_top_prime_checked (i := 136) (r := 45) (s := 96) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row136_good017_checked :
    goodSegmentCheck 136 45 96
      { lower := 2493, upper := 2612, witness := RowWitness.topPrime 2477 } = true := by
  exact good_top_prime_checked (i := 136) (r := 45) (s := 96) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row136_good018_checked :
    goodSegmentCheck 136 45 96
      { lower := 2613, upper := 2744, witness := RowWitness.topPrime 2609 } = true := by
  exact good_top_prime_checked (i := 136) (r := 45) (s := 96) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row136_good019_checked :
    goodSegmentCheck 136 45 96
      { lower := 2745, upper := 2876, witness := RowWitness.topPrime 2741 } = true := by
  exact good_top_prime_checked (i := 136) (r := 45) (s := 96) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row136_good020_checked :
    goodSegmentCheck 136 45 96
      { lower := 2877, upper := 2996, witness := RowWitness.topPrime 2861 } = true := by
  exact good_top_prime_checked (i := 136) (r := 45) (s := 96) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row136_good021_checked :
    goodSegmentCheck 136 45 96
      { lower := 2997, upper := 3106, witness := RowWitness.topPrime 2971 } = true := by
  exact good_top_prime_checked (i := 136) (r := 45) (s := 96) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row136_good022_checked :
    goodSegmentCheck 136 45 96
      { lower := 3107, upper := 3224, witness := RowWitness.topPrime 3089 } = true := by
  exact good_top_prime_checked (i := 136) (r := 45) (s := 96) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row136_good023_checked :
    goodSegmentCheck 136 45 96
      { lower := 3225, upper := 3356, witness := RowWitness.topPrime 3221 } = true := by
  exact good_top_prime_checked (i := 136) (r := 45) (s := 96) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row136_good024_checked :
    goodSegmentCheck 136 45 96
      { lower := 3357, upper := 3482, witness := RowWitness.topPrime 3347 } = true := by
  exact good_top_prime_checked (i := 136) (r := 45) (s := 96) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row136_good025_checked :
    goodSegmentCheck 136 45 96
      { lower := 3483, upper := 3604, witness := RowWitness.topPrime 3469 } = true := by
  exact good_top_prime_checked (i := 136) (r := 45) (s := 96) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row136_good026_checked :
    goodSegmentCheck 136 45 96
      { lower := 3605, upper := 3728, witness := RowWitness.topPrime 3593 } = true := by
  exact good_top_prime_checked (i := 136) (r := 45) (s := 96) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row136_good027_checked :
    goodSegmentCheck 136 45 96
      { lower := 3729, upper := 3862, witness := RowWitness.topPrime 3727 } = true := by
  exact good_top_prime_checked (i := 136) (r := 45) (s := 96) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row136_good028_checked :
    goodSegmentCheck 136 45 96
      { lower := 3863, upper := 3998, witness := RowWitness.topPrime 3863 } = true := by
  exact good_top_prime_checked (i := 136) (r := 45) (s := 96) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row136_good029_checked :
    goodSegmentCheck 136 45 96
      { lower := 3999, upper := 4124, witness := RowWitness.topPrime 3989 } = true := by
  exact good_top_prime_checked (i := 136) (r := 45) (s := 96) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row136_good030_checked :
    goodSegmentCheck 136 45 96
      { lower := 4125, upper := 4246, witness := RowWitness.topPrime 4111 } = true := by
  exact good_top_prime_checked (i := 136) (r := 45) (s := 96) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row136_good031_checked :
    goodSegmentCheck 136 45 96
      { lower := 4247, upper := 4378, witness := RowWitness.topPrime 4243 } = true := by
  exact good_top_prime_checked (i := 136) (r := 45) (s := 96) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row136_good016_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row136_good017_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row136_good018_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row136_good019_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row136_good020_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row136_good021_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row136_good022_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row136_good023_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row136_good024_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row136_good025_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row136_good026_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row136_good027_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row136_good028_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row136_good029_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row136_good030_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row136_good031_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row136_good032_checked :
    goodSegmentCheck 136 45 96
      { lower := 4379, upper := 4508, witness := RowWitness.topPrime 4373 } = true := by
  exact good_top_prime_checked (i := 136) (r := 45) (s := 96) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row136_good033_checked :
    goodSegmentCheck 136 45 96
      { lower := 4509, upper := 4642, witness := RowWitness.topPrime 4507 } = true := by
  exact good_top_prime_checked (i := 136) (r := 45) (s := 96) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row136_good034_checked :
    goodSegmentCheck 136 45 96
      { lower := 4643, upper := 4778, witness := RowWitness.topPrime 4643 } = true := by
  exact good_top_prime_checked (i := 136) (r := 45) (s := 96) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row136_good035_checked :
    goodSegmentCheck 136 45 96
      { lower := 4779, upper := 4894, witness := RowWitness.topPrime 4759 } = true := by
  exact good_top_prime_checked (i := 136) (r := 45) (s := 96) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row136_good036_checked :
    goodSegmentCheck 136 45 96
      { lower := 4895, upper := 5024, witness := RowWitness.topPrime 4889 } = true := by
  exact good_top_prime_checked (i := 136) (r := 45) (s := 96) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row136_good037_checked :
    goodSegmentCheck 136 45 96
      { lower := 5025, upper := 5158, witness := RowWitness.topPrime 5023 } = true := by
  exact good_top_prime_checked (i := 136) (r := 45) (s := 96) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row136_good038_checked :
    goodSegmentCheck 136 45 96
      { lower := 5159, upper := 5288, witness := RowWitness.topPrime 5153 } = true := by
  exact good_top_prime_checked (i := 136) (r := 45) (s := 96) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row136_good039_checked :
    goodSegmentCheck 136 45 96
      { lower := 5289, upper := 5416, witness := RowWitness.topPrime 5281 } = true := by
  exact good_top_prime_checked (i := 136) (r := 45) (s := 96) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row136_good040_checked :
    goodSegmentCheck 136 45 96
      { lower := 5417, upper := 5552, witness := RowWitness.topPrime 5417 } = true := by
  exact good_top_prime_checked (i := 136) (r := 45) (s := 96) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row136_good041_checked :
    goodSegmentCheck 136 45 96
      { lower := 5553, upper := 5666, witness := RowWitness.topPrime 5531 } = true := by
  exact good_top_prime_checked (i := 136) (r := 45) (s := 96) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row136_good042_checked :
    goodSegmentCheck 136 45 96
      { lower := 5667, upper := 5794, witness := RowWitness.topPrime 5659 } = true := by
  exact good_top_prime_checked (i := 136) (r := 45) (s := 96) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row136_good043_checked :
    goodSegmentCheck 136 45 96
      { lower := 5795, upper := 5926, witness := RowWitness.topPrime 5791 } = true := by
  exact good_top_prime_checked (i := 136) (r := 45) (s := 96) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row136_good044_checked :
    goodSegmentCheck 136 45 96
      { lower := 5927, upper := 6062, witness := RowWitness.topPrime 5927 } = true := by
  exact good_top_prime_checked (i := 136) (r := 45) (s := 96) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row136_good045_checked :
    goodSegmentCheck 136 45 96
      { lower := 6063, upper := 6188, witness := RowWitness.topPrime 6053 } = true := by
  exact good_top_prime_checked (i := 136) (r := 45) (s := 96) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row136_good046_checked :
    goodSegmentCheck 136 45 96
      { lower := 6189, upper := 6308, witness := RowWitness.topPrime 6173 } = true := by
  exact good_top_prime_checked (i := 136) (r := 45) (s := 96) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row136_good047_checked :
    goodSegmentCheck 136 45 96
      { lower := 6309, upper := 6436, witness := RowWitness.topPrime 6301 } = true := by
  exact good_top_prime_checked (i := 136) (r := 45) (s := 96) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row136_good032_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row136_good033_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row136_good034_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row136_good035_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row136_good036_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row136_good037_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row136_good038_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row136_good039_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row136_good040_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row136_good041_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row136_good042_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row136_good043_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row136_good044_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row136_good045_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row136_good046_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row136_good047_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row136_good048_checked :
    goodSegmentCheck 136 45 96
      { lower := 6437, upper := 6562, witness := RowWitness.topPrime 6427 } = true := by
  exact good_top_prime_checked (i := 136) (r := 45) (s := 96) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row136_good049_checked :
    goodSegmentCheck 136 45 96
      { lower := 6563, upper := 6698, witness := RowWitness.topPrime 6563 } = true := by
  exact good_top_prime_checked (i := 136) (r := 45) (s := 96) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row136_good050_checked :
    goodSegmentCheck 136 45 96
      { lower := 6699, upper := 6826, witness := RowWitness.topPrime 6691 } = true := by
  exact good_top_prime_checked (i := 136) (r := 45) (s := 96) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row136_good051_checked :
    goodSegmentCheck 136 45 96
      { lower := 6827, upper := 6962, witness := RowWitness.topPrime 6827 } = true := by
  exact good_top_prime_checked (i := 136) (r := 45) (s := 96) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row136_good052_checked :
    goodSegmentCheck 136 45 96
      { lower := 6963, upper := 7096, witness := RowWitness.topPrime 6961 } = true := by
  exact good_top_prime_checked (i := 136) (r := 45) (s := 96) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row136_good053_checked :
    goodSegmentCheck 136 45 96
      { lower := 7097, upper := 7214, witness := RowWitness.topPrime 7079 } = true := by
  exact good_top_prime_checked (i := 136) (r := 45) (s := 96) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row136_good054_checked :
    goodSegmentCheck 136 45 96
      { lower := 7215, upper := 7348, witness := RowWitness.topPrime 7213 } = true := by
  exact good_top_prime_checked (i := 136) (r := 45) (s := 96) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row136_good055_checked :
    goodSegmentCheck 136 45 96
      { lower := 7349, upper := 7484, witness := RowWitness.topPrime 7349 } = true := by
  exact good_top_prime_checked (i := 136) (r := 45) (s := 96) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row136_good056_checked :
    goodSegmentCheck 136 45 96
      { lower := 7485, upper := 7616, witness := RowWitness.topPrime 7481 } = true := by
  exact good_top_prime_checked (i := 136) (r := 45) (s := 96) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row136_good057_checked :
    goodSegmentCheck 136 45 96
      { lower := 7617, upper := 7742, witness := RowWitness.topPrime 7607 } = true := by
  exact good_top_prime_checked (i := 136) (r := 45) (s := 96) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row136_good058_checked :
    goodSegmentCheck 136 45 96
      { lower := 7743, upper := 7876, witness := RowWitness.topPrime 7741 } = true := by
  exact good_top_prime_checked (i := 136) (r := 45) (s := 96) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row136_good059_checked :
    goodSegmentCheck 136 45 96
      { lower := 7877, upper := 8012, witness := RowWitness.topPrime 7877 } = true := by
  exact good_top_prime_checked (i := 136) (r := 45) (s := 96) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row136_good060_checked :
    goodSegmentCheck 136 45 96
      { lower := 8013, upper := 8146, witness := RowWitness.topPrime 8011 } = true := by
  exact good_top_prime_checked (i := 136) (r := 45) (s := 96) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row136_good061_checked :
    goodSegmentCheck 136 45 96
      { lower := 8147, upper := 8282, witness := RowWitness.topPrime 8147 } = true := by
  exact good_top_prime_checked (i := 136) (r := 45) (s := 96) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row136_good062_checked :
    goodSegmentCheck 136 45 96
      { lower := 8283, upper := 8408, witness := RowWitness.topPrime 8273 } = true := by
  exact good_top_prime_checked (i := 136) (r := 45) (s := 96) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row136_good063_checked :
    goodSegmentCheck 136 45 96
      { lower := 8409, upper := 8524, witness := RowWitness.topPrime 8389 } = true := by
  exact good_top_prime_checked (i := 136) (r := 45) (s := 96) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row136_good048_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row136_good049_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row136_good050_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row136_good051_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row136_good052_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row136_good053_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row136_good054_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row136_good055_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row136_good056_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row136_good057_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row136_good058_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row136_good059_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row136_good060_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row136_good061_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row136_good062_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row136_good063_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row136_good064_checked :
    goodSegmentCheck 136 45 96
      { lower := 8525, upper := 8656, witness := RowWitness.topPrime 8521 } = true := by
  exact good_top_prime_checked (i := 136) (r := 45) (s := 96) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row136_good065_checked :
    goodSegmentCheck 136 45 96
      { lower := 8657, upper := 8782, witness := RowWitness.topPrime 8647 } = true := by
  exact good_top_prime_checked (i := 136) (r := 45) (s := 96) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row136_good066_checked :
    goodSegmentCheck 136 45 96
      { lower := 8783, upper := 8918, witness := RowWitness.topPrime 8783 } = true := by
  exact good_top_prime_checked (i := 136) (r := 45) (s := 96) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row136_good067_checked :
    goodSegmentCheck 136 45 96
      { lower := 8919, upper := 9028, witness := RowWitness.topPrime 8893 } = true := by
  exact good_top_prime_checked (i := 136) (r := 45) (s := 96) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row136_good068_checked :
    goodSegmentCheck 136 45 96
      { lower := 9029, upper := 9164, witness := RowWitness.topPrime 9029 } = true := by
  exact good_top_prime_checked (i := 136) (r := 45) (s := 96) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row136_good069_checked :
    goodSegmentCheck 136 45 96
      { lower := 9165, upper := 9296, witness := RowWitness.topPrime 9161 } = true := by
  exact good_top_prime_checked (i := 136) (r := 45) (s := 96) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row136_good070_checked :
    goodSegmentCheck 136 45 96
      { lower := 9297, upper := 9428, witness := RowWitness.topPrime 9293 } = true := by
  exact good_top_prime_checked (i := 136) (r := 45) (s := 96) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row136_good071_checked :
    goodSegmentCheck 136 45 96
      { lower := 9429, upper := 9556, witness := RowWitness.topPrime 9421 } = true := by
  exact good_top_prime_checked (i := 136) (r := 45) (s := 96) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row136_good072_checked :
    goodSegmentCheck 136 45 96
      { lower := 9557, upper := 9686, witness := RowWitness.topPrime 9551 } = true := by
  exact good_top_prime_checked (i := 136) (r := 45) (s := 96) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row136_good073_checked :
    goodSegmentCheck 136 45 96
      { lower := 9687, upper := 9814, witness := RowWitness.topPrime 9679 } = true := by
  exact good_top_prime_checked (i := 136) (r := 45) (s := 96) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row136_good074_checked :
    goodSegmentCheck 136 45 96
      { lower := 9815, upper := 9946, witness := RowWitness.topPrime 9811 } = true := by
  exact good_top_prime_checked (i := 136) (r := 45) (s := 96) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row136_good075_checked :
    goodSegmentCheck 136 45 96
      { lower := 9947, upper := 10076, witness := RowWitness.topPrime 9941 } = true := by
  exact good_top_prime_checked (i := 136) (r := 45) (s := 96) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row136_good076_checked :
    goodSegmentCheck 136 45 96
      { lower := 10077, upper := 10204, witness := RowWitness.topPrime 10069 } = true := by
  exact good_top_prime_checked (i := 136) (r := 45) (s := 96) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row136_good077_checked :
    goodSegmentCheck 136 45 96
      { lower := 10205, upper := 10328, witness := RowWitness.topPrime 10193 } = true := by
  exact good_top_prime_checked (i := 136) (r := 45) (s := 96) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row136_good078_checked :
    goodSegmentCheck 136 45 96
      { lower := 10329, upper := 10456, witness := RowWitness.topPrime 10321 } = true := by
  exact good_top_prime_checked (i := 136) (r := 45) (s := 96) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row136_good079_checked :
    goodSegmentCheck 136 45 96
      { lower := 10457, upper := 10592, witness := RowWitness.topPrime 10457 } = true := by
  exact good_top_prime_checked (i := 136) (r := 45) (s := 96) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row136_good064_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row136_good065_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row136_good066_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row136_good067_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row136_good068_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row136_good069_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row136_good070_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row136_good071_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row136_good072_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row136_good073_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row136_good074_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row136_good075_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row136_good076_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row136_good077_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row136_good078_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row136_good079_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row136_good080_checked :
    goodSegmentCheck 136 45 96
      { lower := 10593, upper := 10724, witness := RowWitness.topPrime 10589 } = true := by
  exact good_top_prime_checked (i := 136) (r := 45) (s := 96) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row136_good081_checked :
    goodSegmentCheck 136 45 96
      { lower := 10725, upper := 10858, witness := RowWitness.topPrime 10723 } = true := by
  exact good_top_prime_checked (i := 136) (r := 45) (s := 96) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row136_good082_checked :
    goodSegmentCheck 136 45 96
      { lower := 10859, upper := 10994, witness := RowWitness.topPrime 10859 } = true := by
  exact good_top_prime_checked (i := 136) (r := 45) (s := 96) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row136_good083_checked :
    goodSegmentCheck 136 45 96
      { lower := 10995, upper := 11128, witness := RowWitness.topPrime 10993 } = true := by
  exact good_top_prime_checked (i := 136) (r := 45) (s := 96) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row136_good084_checked :
    goodSegmentCheck 136 45 96
      { lower := 11129, upper := 11254, witness := RowWitness.topPrime 11119 } = true := by
  exact good_top_prime_checked (i := 136) (r := 45) (s := 96) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row136_good085_checked :
    goodSegmentCheck 136 45 96
      { lower := 11255, upper := 11386, witness := RowWitness.topPrime 11251 } = true := by
  exact good_top_prime_checked (i := 136) (r := 45) (s := 96) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row136_good086_checked :
    goodSegmentCheck 136 45 96
      { lower := 11387, upper := 11518, witness := RowWitness.topPrime 11383 } = true := by
  exact good_top_prime_checked (i := 136) (r := 45) (s := 96) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row136_good087_checked :
    goodSegmentCheck 136 45 96
      { lower := 11519, upper := 11654, witness := RowWitness.topPrime 11519 } = true := by
  exact good_top_prime_checked (i := 136) (r := 45) (s := 96) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row136_good088_checked :
    goodSegmentCheck 136 45 96
      { lower := 11655, upper := 11768, witness := RowWitness.topPrime 11633 } = true := by
  exact good_top_prime_checked (i := 136) (r := 45) (s := 96) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row136_good089_checked :
    goodSegmentCheck 136 45 96
      { lower := 11769, upper := 11878, witness := RowWitness.topPrime 11743 } = true := by
  exact good_top_prime_checked (i := 136) (r := 45) (s := 96) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row136_good090_checked :
    goodSegmentCheck 136 45 96
      { lower := 11879, upper := 12002, witness := RowWitness.topPrime 11867 } = true := by
  exact good_top_prime_checked (i := 136) (r := 45) (s := 96) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row136_good091_checked :
    goodSegmentCheck 136 45 96
      { lower := 12003, upper := 12122, witness := RowWitness.topPrime 11987 } = true := by
  exact good_top_prime_checked (i := 136) (r := 45) (s := 96) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row136_good092_checked :
    goodSegmentCheck 136 45 96
      { lower := 12123, upper := 12254, witness := RowWitness.topPrime 12119 } = true := by
  exact good_top_prime_checked (i := 136) (r := 45) (s := 96) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row136_good093_checked :
    goodSegmentCheck 136 45 96
      { lower := 12255, upper := 12388, witness := RowWitness.topPrime 12253 } = true := by
  exact good_top_prime_checked (i := 136) (r := 45) (s := 96) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row136_good094_checked :
    goodSegmentCheck 136 45 96
      { lower := 12389, upper := 12514, witness := RowWitness.topPrime 12379 } = true := by
  exact good_top_prime_checked (i := 136) (r := 45) (s := 96) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row136_good095_checked :
    goodSegmentCheck 136 45 96
      { lower := 12515, upper := 12646, witness := RowWitness.topPrime 12511 } = true := by
  exact good_top_prime_checked (i := 136) (r := 45) (s := 96) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row136_good080_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row136_good081_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row136_good082_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row136_good083_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row136_good084_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row136_good085_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row136_good086_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row136_good087_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row136_good088_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row136_good089_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row136_good090_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row136_good091_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row136_good092_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row136_good093_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row136_good094_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row136_good095_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row136_good096_checked :
    goodSegmentCheck 136 45 96
      { lower := 12647, upper := 12782, witness := RowWitness.topPrime 12647 } = true := by
  exact good_top_prime_checked (i := 136) (r := 45) (s := 96) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row136_good097_checked :
    goodSegmentCheck 136 45 96
      { lower := 12783, upper := 12916, witness := RowWitness.topPrime 12781 } = true := by
  exact good_top_prime_checked (i := 136) (r := 45) (s := 96) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row136_good098_checked :
    goodSegmentCheck 136 45 96
      { lower := 12917, upper := 13052, witness := RowWitness.topPrime 12917 } = true := by
  exact good_top_prime_checked (i := 136) (r := 45) (s := 96) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row136_good099_checked :
    goodSegmentCheck 136 45 96
      { lower := 13053, upper := 13184, witness := RowWitness.topPrime 13049 } = true := by
  exact good_top_prime_checked (i := 136) (r := 45) (s := 96) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row136_good100_checked :
    goodSegmentCheck 136 45 96
      { lower := 13185, upper := 13318, witness := RowWitness.topPrime 13183 } = true := by
  exact good_top_prime_checked (i := 136) (r := 45) (s := 96) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row136_good101_checked :
    goodSegmentCheck 136 45 96
      { lower := 13319, upper := 13448, witness := RowWitness.topPrime 13313 } = true := by
  exact good_top_prime_checked (i := 136) (r := 45) (s := 96) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row136_good102_checked :
    goodSegmentCheck 136 45 96
      { lower := 13449, upper := 13576, witness := RowWitness.topPrime 13441 } = true := by
  exact good_top_prime_checked (i := 136) (r := 45) (s := 96) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row136_good103_checked :
    goodSegmentCheck 136 45 96
      { lower := 13577, upper := 13712, witness := RowWitness.topPrime 13577 } = true := by
  exact good_top_prime_checked (i := 136) (r := 45) (s := 96) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row136_good104_checked :
    goodSegmentCheck 136 45 96
      { lower := 13713, upper := 13846, witness := RowWitness.topPrime 13711 } = true := by
  exact good_top_prime_checked (i := 136) (r := 45) (s := 96) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row136_good105_checked :
    goodSegmentCheck 136 45 96
      { lower := 13847, upper := 13976, witness := RowWitness.topPrime 13841 } = true := by
  exact good_top_prime_checked (i := 136) (r := 45) (s := 96) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row136_good106_checked :
    goodSegmentCheck 136 45 96
      { lower := 13977, upper := 14102, witness := RowWitness.topPrime 13967 } = true := by
  exact good_top_prime_checked (i := 136) (r := 45) (s := 96) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row136_good107_checked :
    goodSegmentCheck 136 45 96
      { lower := 14103, upper := 14222, witness := RowWitness.topPrime 14087 } = true := by
  exact good_top_prime_checked (i := 136) (r := 45) (s := 96) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row136_good108_checked :
    goodSegmentCheck 136 45 96
      { lower := 14223, upper := 14356, witness := RowWitness.topPrime 14221 } = true := by
  exact good_top_prime_checked (i := 136) (r := 45) (s := 96) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row136_good109_checked :
    goodSegmentCheck 136 45 96
      { lower := 14357, upper := 14482, witness := RowWitness.topPrime 14347 } = true := by
  exact good_top_prime_checked (i := 136) (r := 45) (s := 96) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row136_good110_checked :
    goodSegmentCheck 136 45 96
      { lower := 14483, upper := 14614, witness := RowWitness.topPrime 14479 } = true := by
  exact good_top_prime_checked (i := 136) (r := 45) (s := 96) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row136_good111_checked :
    goodSegmentCheck 136 45 96
      { lower := 14615, upper := 14728, witness := RowWitness.topPrime 14593 } = true := by
  exact good_top_prime_checked (i := 136) (r := 45) (s := 96) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row136_good096_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row136_good097_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row136_good098_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row136_good099_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row136_good100_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row136_good101_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row136_good102_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row136_good103_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row136_good104_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row136_good105_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row136_good106_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row136_good107_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row136_good108_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row136_good109_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row136_good110_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row136_good111_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row136_good112_checked :
    goodSegmentCheck 136 45 96
      { lower := 14729, upper := 14858, witness := RowWitness.topPrime 14723 } = true := by
  exact good_top_prime_checked (i := 136) (r := 45) (s := 96) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row136_good113_checked :
    goodSegmentCheck 136 45 96
      { lower := 14859, upper := 14986, witness := RowWitness.topPrime 14851 } = true := by
  exact good_top_prime_checked (i := 136) (r := 45) (s := 96) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row136_good114_checked :
    goodSegmentCheck 136 45 96
      { lower := 14987, upper := 15118, witness := RowWitness.topPrime 14983 } = true := by
  exact good_top_prime_checked (i := 136) (r := 45) (s := 96) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row136_good115_checked :
    goodSegmentCheck 136 45 96
      { lower := 15119, upper := 15242, witness := RowWitness.topPrime 15107 } = true := by
  exact good_top_prime_checked (i := 136) (r := 45) (s := 96) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row136_good116_checked :
    goodSegmentCheck 136 45 96
      { lower := 15243, upper := 15376, witness := RowWitness.topPrime 15241 } = true := by
  exact good_top_prime_checked (i := 136) (r := 45) (s := 96) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row136_good117_checked :
    goodSegmentCheck 136 45 96
      { lower := 15377, upper := 15512, witness := RowWitness.topPrime 15377 } = true := by
  exact good_top_prime_checked (i := 136) (r := 45) (s := 96) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row136_good118_checked :
    goodSegmentCheck 136 45 96
      { lower := 15513, upper := 15646, witness := RowWitness.topPrime 15511 } = true := by
  exact good_top_prime_checked (i := 136) (r := 45) (s := 96) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row136_good119_checked :
    goodSegmentCheck 136 45 96
      { lower := 15647, upper := 15782, witness := RowWitness.topPrime 15647 } = true := by
  exact good_top_prime_checked (i := 136) (r := 45) (s := 96) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row136_good120_checked :
    goodSegmentCheck 136 45 96
      { lower := 15783, upper := 15908, witness := RowWitness.topPrime 15773 } = true := by
  exact good_top_prime_checked (i := 136) (r := 45) (s := 96) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row136_good121_checked :
    goodSegmentCheck 136 45 96
      { lower := 15909, upper := 16042, witness := RowWitness.topPrime 15907 } = true := by
  exact good_top_prime_checked (i := 136) (r := 45) (s := 96) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row136_good122_checked :
    goodSegmentCheck 136 45 96
      { lower := 16043, upper := 16168, witness := RowWitness.topPrime 16033 } = true := by
  exact good_top_prime_checked (i := 136) (r := 45) (s := 96) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row136_good123_checked :
    goodSegmentCheck 136 45 96
      { lower := 16169, upper := 16276, witness := RowWitness.topPrime 16141 } = true := by
  exact good_top_prime_checked (i := 136) (r := 45) (s := 96) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row136_good124_checked :
    goodSegmentCheck 136 45 96
      { lower := 16277, upper := 16408, witness := RowWitness.topPrime 16273 } = true := by
  exact good_top_prime_checked (i := 136) (r := 45) (s := 96) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row136_good125_checked :
    goodSegmentCheck 136 45 96
      { lower := 16409, upper := 16516, witness := RowWitness.topPrime 16381 } = true := by
  exact good_top_prime_checked (i := 136) (r := 45) (s := 96) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row136_good126_checked :
    goodSegmentCheck 136 45 96
      { lower := 16517, upper := 16628, witness := RowWitness.topPrime 16493 } = true := by
  exact good_top_prime_checked (i := 136) (r := 45) (s := 96) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row136_good127_checked :
    goodSegmentCheck 136 45 96
      { lower := 16629, upper := 16754, witness := RowWitness.topPrime 16619 } = true := by
  exact good_top_prime_checked (i := 136) (r := 45) (s := 96) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row136_good112_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row136_good113_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row136_good114_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row136_good115_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row136_good116_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row136_good117_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row136_good118_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row136_good119_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row136_good120_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row136_good121_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row136_good122_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row136_good123_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row136_good124_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row136_good125_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row136_good126_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row136_good127_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row136_good128_checked :
    goodSegmentCheck 136 45 96
      { lower := 16755, upper := 16882, witness := RowWitness.topPrime 16747 } = true := by
  exact good_top_prime_checked (i := 136) (r := 45) (s := 96) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row136_good129_checked :
    goodSegmentCheck 136 45 96
      { lower := 16883, upper := 17018, witness := RowWitness.topPrime 16883 } = true := by
  exact good_top_prime_checked (i := 136) (r := 45) (s := 96) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row136_good130_checked :
    goodSegmentCheck 136 45 96
      { lower := 17019, upper := 17146, witness := RowWitness.topPrime 17011 } = true := by
  exact good_top_prime_checked (i := 136) (r := 45) (s := 96) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row136_good131_checked :
    goodSegmentCheck 136 45 96
      { lower := 17147, upper := 17272, witness := RowWitness.topPrime 17137 } = true := by
  exact good_top_prime_checked (i := 136) (r := 45) (s := 96) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row136_good132_checked :
    goodSegmentCheck 136 45 96
      { lower := 17273, upper := 17392, witness := RowWitness.topPrime 17257 } = true := by
  exact good_top_prime_checked (i := 136) (r := 45) (s := 96) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row136_good133_checked :
    goodSegmentCheck 136 45 96
      { lower := 17393, upper := 17528, witness := RowWitness.topPrime 17393 } = true := by
  exact good_top_prime_checked (i := 136) (r := 45) (s := 96) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row136_good134_checked :
    goodSegmentCheck 136 45 96
      { lower := 17529, upper := 17654, witness := RowWitness.topPrime 17519 } = true := by
  exact good_top_prime_checked (i := 136) (r := 45) (s := 96) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row136_good135_checked :
    goodSegmentCheck 136 45 96
      { lower := 17655, upper := 17762, witness := RowWitness.topPrime 17627 } = true := by
  exact good_top_prime_checked (i := 136) (r := 45) (s := 96) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row136_good136_checked :
    goodSegmentCheck 136 45 96
      { lower := 17763, upper := 17896, witness := RowWitness.topPrime 17761 } = true := by
  exact good_top_prime_checked (i := 136) (r := 45) (s := 96) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row136_good137_checked :
    goodSegmentCheck 136 45 96
      { lower := 17897, upper := 18026, witness := RowWitness.topPrime 17891 } = true := by
  exact good_top_prime_checked (i := 136) (r := 45) (s := 96) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row136_good138_checked :
    goodSegmentCheck 136 45 96
      { lower := 18027, upper := 18148, witness := RowWitness.topPrime 18013 } = true := by
  exact good_top_prime_checked (i := 136) (r := 45) (s := 96) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row136_good139_checked :
    goodSegmentCheck 136 45 96
      { lower := 18149, upper := 18284, witness := RowWitness.topPrime 18149 } = true := by
  exact good_top_prime_checked (i := 136) (r := 45) (s := 96) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row136_good140_checked :
    goodSegmentCheck 136 45 96
      { lower := 18285, upper := 18359, witness := RowWitness.topPrime 18269 } = true := by
  exact good_top_prime_checked (i := 136) (r := 45) (s := 96) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row136_good141_checked :
    goodSegmentCheck 136 45 96
      { lower := 18491, upper := 18616, witness := RowWitness.topPrime 18481 } = true := by
  exact good_top_prime_checked (i := 136) (r := 45) (s := 96) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row136_good142_checked :
    goodSegmentCheck 136 45 96
      { lower := 18617, upper := 18626, witness := RowWitness.topPrime 18617 } = true := by
  exact good_top_prime_checked (i := 136) (r := 45) (s := 96) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row136_good143_checked :
    goodSegmentCheck 136 45 96
      { lower := 18634, upper := 18752, witness := RowWitness.topPrime 18617 } = true := by
  exact good_top_prime_checked (i := 136) (r := 45) (s := 96) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row136_good128_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row136_good129_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row136_good130_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row136_good131_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row136_good132_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row136_good133_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row136_good134_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row136_good135_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row136_good136_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row136_good137_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row136_good138_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row136_good139_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row136_good140_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row136_good141_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row136_good142_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row136_good143_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row136_good144_checked :
    goodSegmentCheck 136 45 96
      { lower := 18753, upper := 18884, witness := RowWitness.topPrime 18749 } = true := by
  exact good_top_prime_checked (i := 136) (r := 45) (s := 96) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row136_good145_checked :
    goodSegmentCheck 136 45 96
      { lower := 18885, upper := 18885, witness := RowWitness.topPrime 18869 } = true := by
  exact good_top_prime_checked (i := 136) (r := 45) (s := 96) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row136_good146_checked :
    goodSegmentCheck 136 45 96
      { lower := 19208, upper := 19301, witness := RowWitness.topPrime 19207 } = true := by
  exact good_top_prime_checked (i := 136) (r := 45) (s := 96) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row136_good147_checked :
    goodSegmentCheck 136 45 96
      { lower := 19683, upper := 19816, witness := RowWitness.topPrime 19681 } = true := by
  exact good_top_prime_checked (i := 136) (r := 45) (s := 96) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row136_good148_checked :
    goodSegmentCheck 136 45 96
      { lower := 19817, upper := 19818, witness := RowWitness.topPrime 19813 } = true := by
  exact good_top_prime_checked (i := 136) (r := 45) (s := 96) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row136_good149_checked :
    goodSegmentCheck 136 45 96
      { lower := 19881, upper := 19908, witness := RowWitness.topPrime 19867 } = true := by
  exact good_top_prime_checked (i := 136) (r := 45) (s := 96) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row136_good150_checked :
    goodSegmentCheck 136 45 96
      { lower := 19965, upper := 20016, witness := RowWitness.topPrime 19963 } = true := by
  exact good_top_prime_checked (i := 136) (r := 45) (s := 96) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row136_good151_checked :
    goodSegmentCheck 136 45 96
      { lower := 20172, upper := 20296, witness := RowWitness.topPrime 20161 } = true := by
  exact good_top_prime_checked (i := 136) (r := 45) (s := 96) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row136_good152_checked :
    goodSegmentCheck 136 45 96
      { lower := 20297, upper := 20299, witness := RowWitness.topPrime 20297 } = true := by
  exact good_top_prime_checked (i := 136) (r := 45) (s := 96) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row136_good153_checked :
    goodSegmentCheck 136 45 96
      { lower := 20402, upper := 20474, witness := RowWitness.topPrime 20399 } = true := by
  exact good_top_prime_checked (i := 136) (r := 45) (s := 96) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row136_good154_checked :
    goodSegmentCheck 136 45 96
      { lower := 20535, upper := 20537, witness := RowWitness.topPrime 20533 } = true := by
  exact good_top_prime_checked (i := 136) (r := 45) (s := 96) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row136_good155_checked :
    goodSegmentCheck 136 45 96
      { lower := 20577, upper := 20698, witness := RowWitness.topPrime 20563 } = true := by
  exact good_top_prime_checked (i := 136) (r := 45) (s := 96) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row136_good156_checked :
    goodSegmentCheck 136 45 96
      { lower := 20699, upper := 20712, witness := RowWitness.topPrime 20693 } = true := by
  exact good_top_prime_checked (i := 136) (r := 45) (s := 96) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row136_good157_checked :
    goodSegmentCheck 136 45 96
      { lower := 21316, upper := 21353, witness := RowWitness.topPrime 21313 } = true := by
  exact good_top_prime_checked (i := 136) (r := 45) (s := 96) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row136_good158_checked :
    goodSegmentCheck 136 45 96
      { lower := 21870, upper := 21998, witness := RowWitness.topPrime 21863 } = true := by
  exact good_top_prime_checked (i := 136) (r := 45) (s := 96) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row136_good159_checked :
    goodSegmentCheck 136 45 96
      { lower := 21999, upper := 22010, witness := RowWitness.topPrime 21997 } = true := by
  exact good_top_prime_checked (i := 136) (r := 45) (s := 96) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row136_good144_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row136_good145_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row136_good146_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row136_good147_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row136_good148_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row136_good149_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row136_good150_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row136_good151_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row136_good152_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row136_good153_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row136_good154_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row136_good155_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row136_good156_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row136_good157_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row136_good158_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row136_good159_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row136_good160_checked :
    goodSegmentCheck 136 45 96
      { lower := 22090, upper := 22105, witness := RowWitness.topPrime 22079 } = true := by
  exact good_top_prime_checked (i := 136) (r := 45) (s := 96) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row136_good161_checked :
    goodSegmentCheck 136 45 96
      { lower := 22188, upper := 22225, witness := RowWitness.topPrime 22171 } = true := by
  exact good_top_prime_checked (i := 136) (r := 45) (s := 96) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row136_good162_checked :
    goodSegmentCheck 136 45 96
      { lower := 22445, upper := 22461, witness := RowWitness.topPrime 22441 } = true := by
  exact good_top_prime_checked (i := 136) (r := 45) (s := 96) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row136_good163_checked :
    goodSegmentCheck 136 45 96
      { lower := 22472, upper := 22580, witness := RowWitness.topPrime 22469 } = true := by
  exact good_top_prime_checked (i := 136) (r := 45) (s := 96) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row136_good164_checked :
    goodSegmentCheck 136 45 96
      { lower := 23763, upper := 23896, witness := RowWitness.topPrime 23761 } = true := by
  exact good_top_prime_checked (i := 136) (r := 45) (s := 96) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row136_good165_checked :
    goodSegmentCheck 136 45 96
      { lower := 23897, upper := 23897, witness := RowWitness.topPrime 23893 } = true := by
  exact good_top_prime_checked (i := 136) (r := 45) (s := 96) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row136_good166_checked :
    goodSegmentCheck 136 45 96
      { lower := 24037, upper := 24164, witness := RowWitness.topPrime 24029 } = true := by
  exact good_top_prime_checked (i := 136) (r := 45) (s := 96) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row136_good167_checked :
    goodSegmentCheck 136 45 96
      { lower := 24165, upper := 24192, witness := RowWitness.topPrime 24151 } = true := by
  exact good_top_prime_checked (i := 136) (r := 45) (s := 96) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row136_good168_checked :
    goodSegmentCheck 136 45 96
      { lower := 24299, upper := 24302, witness := RowWitness.topPrime 24281 } = true := by
  exact good_top_prime_checked (i := 136) (r := 45) (s := 96) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row136_good169_checked :
    goodSegmentCheck 136 45 96
      { lower := 24334, upper := 24464, witness := RowWitness.topPrime 24329 } = true := by
  exact good_top_prime_checked (i := 136) (r := 45) (s := 96) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row136_good170_checked :
    goodSegmentCheck 136 45 96
      { lower := 24465, upper := 24502, witness := RowWitness.topPrime 24443 } = true := by
  exact good_top_prime_checked (i := 136) (r := 45) (s := 96) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row136_good171_checked :
    goodSegmentCheck 136 45 96
      { lower := 25000, upper := 25099, witness := RowWitness.topPrime 24989 } = true := by
  exact good_top_prime_checked (i := 136) (r := 45) (s := 96) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row136_good172_checked :
    goodSegmentCheck 136 45 96
      { lower := 25215, upper := 25324, witness := RowWitness.topPrime 25189 } = true := by
  exact good_top_prime_checked (i := 136) (r := 45) (s := 96) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row136_good173_checked :
    goodSegmentCheck 136 45 96
      { lower := 25325, upper := 25350, witness := RowWitness.topPrime 25321 } = true := by
  exact good_top_prime_checked (i := 136) (r := 45) (s := 96) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row136_good174_checked :
    goodSegmentCheck 136 45 96
      { lower := 26364, upper := 26379, witness := RowWitness.topPrime 26357 } = true := by
  exact good_top_prime_checked (i := 136) (r := 45) (s := 96) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row136_good175_checked :
    goodSegmentCheck 136 45 96
      { lower := 26411, upper := 26499, witness := RowWitness.topPrime 26407 } = true := by
  exact good_top_prime_checked (i := 136) (r := 45) (s := 96) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row136_good160_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row136_good161_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row136_good162_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row136_good163_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row136_good164_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row136_good165_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row136_good166_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row136_good167_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row136_good168_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row136_good169_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row136_good170_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row136_good171_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row136_good172_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row136_good173_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row136_good174_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row136_good175_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row136_good176_checked :
    goodSegmentCheck 136 45 96
      { lower := 26508, upper := 26546, witness := RowWitness.topPrime 26501 } = true := by
  exact good_top_prime_checked (i := 136) (r := 45) (s := 96) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row136_good177_checked :
    goodSegmentCheck 136 45 96
      { lower := 27556, upper := 27571, witness := RowWitness.topPrime 27551 } = true := by
  exact good_top_prime_checked (i := 136) (r := 45) (s := 96) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row136_good178_checked :
    goodSegmentCheck 136 45 96
      { lower := 27848, upper := 27870, witness := RowWitness.topPrime 27847 } = true := by
  exact good_top_prime_checked (i := 136) (r := 45) (s := 96) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row136_good179_checked :
    goodSegmentCheck 136 45 96
      { lower := 28125, upper := 28225, witness := RowWitness.topPrime 28123 } = true := by
  exact good_top_prime_checked (i := 136) (r := 45) (s := 96) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row136_good180_checked :
    goodSegmentCheck 136 45 96
      { lower := 28227, upper := 28260, witness := RowWitness.topPrime 28219 } = true := by
  exact good_top_prime_checked (i := 136) (r := 45) (s := 96) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row136_good181_checked :
    goodSegmentCheck 136 45 96
      { lower := 28561, upper := 28566, witness := RowWitness.topPrime 28559 } = true := by
  exact good_top_prime_checked (i := 136) (r := 45) (s := 96) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row136_good182_checked :
    goodSegmentCheck 136 45 96
      { lower := 28812, upper := 28852, witness := RowWitness.topPrime 28807 } = true := by
  exact good_top_prime_checked (i := 136) (r := 45) (s := 96) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row136_good183_checked :
    goodSegmentCheck 136 45 96
      { lower := 29791, upper := 29903, witness := RowWitness.topPrime 29789 } = true := by
  exact good_top_prime_checked (i := 136) (r := 45) (s := 96) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row136_good184_checked :
    goodSegmentCheck 136 45 96
      { lower := 30618, upper := 30728, witness := RowWitness.topPrime 30593 } = true := by
  exact good_top_prime_checked (i := 136) (r := 45) (s := 96) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row136_good185_checked :
    goodSegmentCheck 136 45 96
      { lower := 30729, upper := 30738, witness := RowWitness.topPrime 30727 } = true := by
  exact good_top_prime_checked (i := 136) (r := 45) (s := 96) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row136_good186_checked :
    goodSegmentCheck 136 45 96
      { lower := 30926, upper := 31034, witness := RowWitness.topPrime 30911 } = true := by
  exact good_top_prime_checked (i := 136) (r := 45) (s := 96) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row136_good187_checked :
    goodSegmentCheck 136 45 96
      { lower := 31213, upper := 31328, witness := RowWitness.topPrime 31193 } = true := by
  exact good_top_prime_checked (i := 136) (r := 45) (s := 96) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row136_good188_checked :
    goodSegmentCheck 136 45 96
      { lower := 31329, upper := 31385, witness := RowWitness.topPrime 31327 } = true := by
  exact good_top_prime_checked (i := 136) (r := 45) (s := 96) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row136_good189_checked :
    goodSegmentCheck 136 45 96
      { lower := 31423, upper := 31464, witness := RowWitness.topPrime 31397 } = true := by
  exact good_top_prime_checked (i := 136) (r := 45) (s := 96) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row136_good190_checked :
    goodSegmentCheck 136 45 96
      { lower := 32805, upper := 32903, witness := RowWitness.topPrime 32803 } = true := by
  exact good_top_prime_checked (i := 136) (r := 45) (s := 96) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row136_good191_checked :
    goodSegmentCheck 136 45 96
      { lower := 33614, upper := 33624, witness := RowWitness.topPrime 33613 } = true := by
  exact good_top_prime_checked (i := 136) (r := 45) (s := 96) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row136_good176_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row136_good177_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row136_good178_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row136_good179_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row136_good180_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row136_good181_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row136_good182_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row136_good183_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row136_good184_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row136_good185_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row136_good186_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row136_good187_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row136_good188_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row136_good189_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row136_good190_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row136_good191_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row136_good192_checked :
    goodSegmentCheck 136 45 96
      { lower := 33708, upper := 33749, witness := RowWitness.topPrime 33703 } = true := by
  exact good_top_prime_checked (i := 136) (r := 45) (s := 96) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row136_good193_checked :
    goodSegmentCheck 136 45 96
      { lower := 34322, upper := 34454, witness := RowWitness.topPrime 34319 } = true := by
  exact good_top_prime_checked (i := 136) (r := 45) (s := 96) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row136_good194_checked :
    goodSegmentCheck 136 45 96
      { lower := 34455, upper := 34510, witness := RowWitness.topPrime 34439 } = true := by
  exact good_top_prime_checked (i := 136) (r := 45) (s := 96) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row136_good195_checked :
    goodSegmentCheck 136 45 96
      { lower := 36015, upper := 36047, witness := RowWitness.topPrime 36013 } = true := by
  exact good_top_prime_checked (i := 136) (r := 45) (s := 96) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row136_good196_checked :
    goodSegmentCheck 136 45 96
      { lower := 36517, upper := 36632, witness := RowWitness.topPrime 36497 } = true := by
  exact good_top_prime_checked (i := 136) (r := 45) (s := 96) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row136_good197_checked :
    goodSegmentCheck 136 45 96
      { lower := 36633, upper := 36636, witness := RowWitness.topPrime 36629 } = true := by
  exact good_top_prime_checked (i := 136) (r := 45) (s := 96) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row136_good198_checked :
    goodSegmentCheck 136 45 96
      { lower := 37303, upper := 37345, witness := RowWitness.topPrime 37277 } = true := by
  exact good_top_prime_checked (i := 136) (r := 45) (s := 96) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row136_good199_checked :
    goodSegmentCheck 136 45 96
      { lower := 37500, upper := 37581, witness := RowWitness.topPrime 37493 } = true := by
  exact good_top_prime_checked (i := 136) (r := 45) (s := 96) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row136_good200_checked :
    goodSegmentCheck 136 45 96
      { lower := 38307, upper := 38426, witness := RowWitness.topPrime 38303 } = true := by
  exact good_top_prime_checked (i := 136) (r := 45) (s := 96) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row136_good201_checked :
    goodSegmentCheck 136 45 96
      { lower := 40401, upper := 40463, witness := RowWitness.topPrime 40387 } = true := by
  exact good_top_prime_checked (i := 136) (r := 45) (s := 96) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row136_good202_checked :
    goodSegmentCheck 136 45 96
      { lower := 40931, upper := 40939, witness := RowWitness.topPrime 40927 } = true := by
  exact good_top_prime_checked (i := 136) (r := 45) (s := 96) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row136_good203_checked :
    goodSegmentCheck 136 45 96
      { lower := 45927, upper := 45931, witness := RowWitness.topPrime 45893 } = true := by
  exact good_top_prime_checked (i := 136) (r := 45) (s := 96) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row136_good204_checked :
    goodSegmentCheck 136 45 96
      { lower := 47526, upper := 47656, witness := RowWitness.topPrime 47521 } = true := by
  exact good_top_prime_checked (i := 136) (r := 45) (s := 96) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row136_good205_checked :
    goodSegmentCheck 136 45 96
      { lower := 47657, upper := 47659, witness := RowWitness.topPrime 47657 } = true := by
  exact good_top_prime_checked (i := 136) (r := 45) (s := 96) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row136_good206_checked :
    goodSegmentCheck 136 45 96
      { lower := 48013, upper := 48096, witness := RowWitness.topPrime 47981 } = true := by
  exact good_top_prime_checked (i := 136) (r := 45) (s := 96) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row136_good207_checked :
    goodSegmentCheck 136 45 96
      { lower := 48778, upper := 48803, witness := RowWitness.topPrime 48767 } = true := by
  exact good_top_prime_checked (i := 136) (r := 45) (s := 96) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row136_good192_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row136_good193_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row136_good194_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row136_good195_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row136_good196_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row136_good197_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row136_good198_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row136_good199_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row136_good200_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row136_good201_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row136_good202_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row136_good203_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row136_good204_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row136_good205_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row136_good206_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row136_good207_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row136_good208_checked :
    goodSegmentCheck 136 45 96
      { lower := 50421, upper := 50545, witness := RowWitness.topPrime 50417 } = true := by
  exact good_top_prime_checked (i := 136) (r := 45) (s := 96) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row136_good209_checked :
    goodSegmentCheck 136 45 96
      { lower := 51076, upper := 51140, witness := RowWitness.topPrime 51071 } = true := by
  exact good_top_prime_checked (i := 136) (r := 45) (s := 96) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row136_good210_checked :
    goodSegmentCheck 136 45 96
      { lower := 55451, upper := 55576, witness := RowWitness.topPrime 55441 } = true := by
  exact good_top_prime_checked (i := 136) (r := 45) (s := 96) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row136_good211_checked :
    goodSegmentCheck 136 45 96
      { lower := 55577, upper := 55582, witness := RowWitness.topPrime 55547 } = true := by
  exact good_top_prime_checked (i := 136) (r := 45) (s := 96) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row136_good212_checked :
    goodSegmentCheck 136 45 96
      { lower := 57245, upper := 57257, witness := RowWitness.topPrime 57241 } = true := by
  exact good_top_prime_checked (i := 136) (r := 45) (s := 96) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row136_good213_checked :
    goodSegmentCheck 136 45 96
      { lower := 58619, upper := 58699, witness := RowWitness.topPrime 58613 } = true := by
  exact good_top_prime_checked (i := 136) (r := 45) (s := 96) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row136_good214_checked :
    goodSegmentCheck 136 45 96
      { lower := 62500, upper := 62545, witness := RowWitness.topPrime 62497 } = true := by
  exact good_top_prime_checked (i := 136) (r := 45) (s := 96) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row136_good215_checked :
    goodSegmentCheck 136 45 96
      { lower := 63948, upper := 63980, witness := RowWitness.topPrime 63929 } = true := by
  exact good_top_prime_checked (i := 136) (r := 45) (s := 96) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row136_good216_checked :
    goodSegmentCheck 136 45 96
      { lower := 65610, upper := 65671, witness := RowWitness.topPrime 65609 } = true := by
  exact good_top_prime_checked (i := 136) (r := 45) (s := 96) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row136_good217_checked :
    goodSegmentCheck 136 45 96
      { lower := 68644, upper := 68774, witness := RowWitness.topPrime 68639 } = true := by
  exact good_top_prime_checked (i := 136) (r := 45) (s := 96) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row136_good218_checked :
    goodSegmentCheck 136 45 96
      { lower := 68775, upper := 68786, witness := RowWitness.topPrime 68771 } = true := by
  exact good_top_prime_checked (i := 136) (r := 45) (s := 96) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row136_good219_checked :
    goodSegmentCheck 136 45 96
      { lower := 68921, upper := 69025, witness := RowWitness.topPrime 68917 } = true := by
  exact good_top_prime_checked (i := 136) (r := 45) (s := 96) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row136_good220_checked :
    goodSegmentCheck 136 45 96
      { lower := 71289, upper := 71422, witness := RowWitness.topPrime 71287 } = true := by
  exact good_top_prime_checked (i := 136) (r := 45) (s := 96) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row136_good221_checked :
    goodSegmentCheck 136 45 96
      { lower := 71423, upper := 71424, witness := RowWitness.topPrime 71419 } = true := by
  exact good_top_prime_checked (i := 136) (r := 45) (s := 96) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row136_good222_checked :
    goodSegmentCheck 136 45 96
      { lower := 73205, upper := 73302, witness := RowWitness.topPrime 73189 } = true := by
  exact good_top_prime_checked (i := 136) (r := 45) (s := 96) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row136_good223_checked :
    goodSegmentCheck 136 45 96
      { lower := 85805, upper := 85818, witness := RowWitness.topPrime 85793 } = true := by
  exact good_top_prime_checked (i := 136) (r := 45) (s := 96) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row136_good208_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row136_good209_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row136_good210_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row136_good211_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row136_good212_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row136_good213_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row136_good214_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row136_good215_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row136_good216_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row136_good217_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row136_good218_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row136_good219_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row136_good220_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row136_good221_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row136_good222_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row136_good223_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row136_good224_checked :
    goodSegmentCheck 136 45 96
      { lower := 89383, upper := 89508, witness := RowWitness.topPrime 89381 } = true := by
  exact good_top_prime_checked (i := 136) (r := 45) (s := 96) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row136_good225_checked :
    goodSegmentCheck 136 45 96
      { lower := 103041, upper := 103101, witness := RowWitness.topPrime 103007 } = true := by
  exact good_top_prime_checked (i := 136) (r := 45) (s := 96) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row136_good226_checked :
    goodSegmentCheck 136 45 96
      { lower := 109503, upper := 109510, witness := RowWitness.topPrime 109481 } = true := by
  exact good_top_prime_checked (i := 136) (r := 45) (s := 96) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row136_good227_checked :
    goodSegmentCheck 136 45 96
      { lower := 137842, upper := 137916, witness := RowWitness.topPrime 137831 } = true := by
  exact good_top_prime_checked (i := 136) (r := 45) (s := 96) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row136_good228_checked :
    goodSegmentCheck 136 45 96
      { lower := 148955, upper := 149012, witness := RowWitness.topPrime 148949 } = true := by
  exact good_top_prime_checked (i := 136) (r := 45) (s := 96) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row136_good224_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row136_good225_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row136_good226_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row136_good227_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row136_good228_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row136_goods_checked :
    row136.goods.all (goodSegmentCheck row136.height.i row136.height.r row136.height.s) = true := by
  change row136_goods.all (goodSegmentCheck 136 45 96) = true
  simp only [row136_goods, List.all_cons, List.all_nil,
    row136_good000_checked,
    row136_good001_checked,
    row136_good002_checked,
    row136_good003_checked,
    row136_good004_checked,
    row136_good005_checked,
    row136_good006_checked,
    row136_good007_checked,
    row136_good008_checked,
    row136_good009_checked,
    row136_good010_checked,
    row136_good011_checked,
    row136_good012_checked,
    row136_good013_checked,
    row136_good014_checked,
    row136_good015_checked,
    row136_good016_checked,
    row136_good017_checked,
    row136_good018_checked,
    row136_good019_checked,
    row136_good020_checked,
    row136_good021_checked,
    row136_good022_checked,
    row136_good023_checked,
    row136_good024_checked,
    row136_good025_checked,
    row136_good026_checked,
    row136_good027_checked,
    row136_good028_checked,
    row136_good029_checked,
    row136_good030_checked,
    row136_good031_checked,
    row136_good032_checked,
    row136_good033_checked,
    row136_good034_checked,
    row136_good035_checked,
    row136_good036_checked,
    row136_good037_checked,
    row136_good038_checked,
    row136_good039_checked,
    row136_good040_checked,
    row136_good041_checked,
    row136_good042_checked,
    row136_good043_checked,
    row136_good044_checked,
    row136_good045_checked,
    row136_good046_checked,
    row136_good047_checked,
    row136_good048_checked,
    row136_good049_checked,
    row136_good050_checked,
    row136_good051_checked,
    row136_good052_checked,
    row136_good053_checked,
    row136_good054_checked,
    row136_good055_checked,
    row136_good056_checked,
    row136_good057_checked,
    row136_good058_checked,
    row136_good059_checked,
    row136_good060_checked,
    row136_good061_checked,
    row136_good062_checked,
    row136_good063_checked,
    row136_good064_checked,
    row136_good065_checked,
    row136_good066_checked,
    row136_good067_checked,
    row136_good068_checked,
    row136_good069_checked,
    row136_good070_checked,
    row136_good071_checked,
    row136_good072_checked,
    row136_good073_checked,
    row136_good074_checked,
    row136_good075_checked,
    row136_good076_checked,
    row136_good077_checked,
    row136_good078_checked,
    row136_good079_checked,
    row136_good080_checked,
    row136_good081_checked,
    row136_good082_checked,
    row136_good083_checked,
    row136_good084_checked,
    row136_good085_checked,
    row136_good086_checked,
    row136_good087_checked,
    row136_good088_checked,
    row136_good089_checked,
    row136_good090_checked,
    row136_good091_checked,
    row136_good092_checked,
    row136_good093_checked,
    row136_good094_checked,
    row136_good095_checked,
    row136_good096_checked,
    row136_good097_checked,
    row136_good098_checked,
    row136_good099_checked,
    row136_good100_checked,
    row136_good101_checked,
    row136_good102_checked,
    row136_good103_checked,
    row136_good104_checked,
    row136_good105_checked,
    row136_good106_checked,
    row136_good107_checked,
    row136_good108_checked,
    row136_good109_checked,
    row136_good110_checked,
    row136_good111_checked,
    row136_good112_checked,
    row136_good113_checked,
    row136_good114_checked,
    row136_good115_checked,
    row136_good116_checked,
    row136_good117_checked,
    row136_good118_checked,
    row136_good119_checked,
    row136_good120_checked,
    row136_good121_checked,
    row136_good122_checked,
    row136_good123_checked,
    row136_good124_checked,
    row136_good125_checked,
    row136_good126_checked,
    row136_good127_checked,
    row136_good128_checked,
    row136_good129_checked,
    row136_good130_checked,
    row136_good131_checked,
    row136_good132_checked,
    row136_good133_checked,
    row136_good134_checked,
    row136_good135_checked,
    row136_good136_checked,
    row136_good137_checked,
    row136_good138_checked,
    row136_good139_checked,
    row136_good140_checked,
    row136_good141_checked,
    row136_good142_checked,
    row136_good143_checked,
    row136_good144_checked,
    row136_good145_checked,
    row136_good146_checked,
    row136_good147_checked,
    row136_good148_checked,
    row136_good149_checked,
    row136_good150_checked,
    row136_good151_checked,
    row136_good152_checked,
    row136_good153_checked,
    row136_good154_checked,
    row136_good155_checked,
    row136_good156_checked,
    row136_good157_checked,
    row136_good158_checked,
    row136_good159_checked,
    row136_good160_checked,
    row136_good161_checked,
    row136_good162_checked,
    row136_good163_checked,
    row136_good164_checked,
    row136_good165_checked,
    row136_good166_checked,
    row136_good167_checked,
    row136_good168_checked,
    row136_good169_checked,
    row136_good170_checked,
    row136_good171_checked,
    row136_good172_checked,
    row136_good173_checked,
    row136_good174_checked,
    row136_good175_checked,
    row136_good176_checked,
    row136_good177_checked,
    row136_good178_checked,
    row136_good179_checked,
    row136_good180_checked,
    row136_good181_checked,
    row136_good182_checked,
    row136_good183_checked,
    row136_good184_checked,
    row136_good185_checked,
    row136_good186_checked,
    row136_good187_checked,
    row136_good188_checked,
    row136_good189_checked,
    row136_good190_checked,
    row136_good191_checked,
    row136_good192_checked,
    row136_good193_checked,
    row136_good194_checked,
    row136_good195_checked,
    row136_good196_checked,
    row136_good197_checked,
    row136_good198_checked,
    row136_good199_checked,
    row136_good200_checked,
    row136_good201_checked,
    row136_good202_checked,
    row136_good203_checked,
    row136_good204_checked,
    row136_good205_checked,
    row136_good206_checked,
    row136_good207_checked,
    row136_good208_checked,
    row136_good209_checked,
    row136_good210_checked,
    row136_good211_checked,
    row136_good212_checked,
    row136_good213_checked,
    row136_good214_checked,
    row136_good215_checked,
    row136_good216_checked,
    row136_good217_checked,
    row136_good218_checked,
    row136_good219_checked,
    row136_good220_checked,
    row136_good221_checked,
    row136_good222_checked,
    row136_good223_checked,
    row136_good224_checked,
    row136_good225_checked,
    row136_good226_checked,
    row136_good227_checked,
    row136_good228_checked, Bool.true_and]

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row136_goods_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row136_registered :
    decide (row136.height ∈ heightCertificateData) = true := by
  decide +kernel

theorem row136_small_checked :
    coverCheck (2 * row136.height.i + 2) (row136.height.i * (row136.height.i - 1) - 1)
      (row136.goods.map goodSegmentBounds) = true := by
  decide +kernel

theorem row136_layerCover_checked :
    coverCheck (row136.height.i * (row136.height.i - 1)) (row136.height.n0 - 1)
      (row136.layers.map CoverLayer.bounds) = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row136_registered
#print axioms B699LowIndex.LowIndexLean513dc7cc.row136_small_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row136_layerCover_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row136_bounds : List NatInterval :=
  [(274, 406), (407, 536), (537, 658), (659, 794), (795, 922), (923, 1054), (1055, 1186), (1187, 1322), (1323, 1456), (1457, 1588), (1589, 1718), (1719, 1844), (1845, 1966), (1967, 2086), (2087, 2222), (2223, 2356), (2357, 2492), (2493, 2612), (2613, 2744), (2745, 2876), (2877, 2996), (2997, 3106), (3107, 3224), (3225, 3356), (3357, 3482), (3483, 3604), (3605, 3728), (3729, 3862), (3863, 3998), (3999, 4124), (4125, 4246), (4247, 4378), (4379, 4508), (4509, 4642), (4643, 4778), (4779, 4894), (4895, 5024), (5025, 5158), (5159, 5288), (5289, 5416), (5417, 5552), (5553, 5666), (5667, 5794), (5795, 5926), (5927, 6062), (6063, 6188), (6189, 6308), (6309, 6436), (6437, 6562), (6563, 6698), (6699, 6826), (6827, 6962), (6963, 7096), (7097, 7214), (7215, 7348), (7349, 7484), (7485, 7616), (7617, 7742), (7743, 7876), (7877, 8012), (8013, 8146), (8147, 8282), (8283, 8408), (8409, 8524), (8525, 8656), (8657, 8782), (8783, 8918), (8919, 9028), (9029, 9164), (9165, 9296), (9297, 9428), (9429, 9556), (9557, 9686), (9687, 9814), (9815, 9946), (9947, 10076), (10077, 10204), (10205, 10328), (10329, 10456), (10457, 10592), (10593, 10724), (10725, 10858), (10859, 10994), (10995, 11128), (11129, 11254), (11255, 11386), (11387, 11518), (11519, 11654), (11655, 11768), (11769, 11878), (11879, 12002), (12003, 12122), (12123, 12254), (12255, 12388), (12389, 12514), (12515, 12646), (12647, 12782), (12783, 12916), (12917, 13052), (13053, 13184), (13185, 13318), (13319, 13448), (13449, 13576), (13577, 13712), (13713, 13846), (13847, 13976), (13977, 14102), (14103, 14222), (14223, 14356), (14357, 14482), (14483, 14614), (14615, 14728), (14729, 14858), (14859, 14986), (14987, 15118), (15119, 15242), (15243, 15376), (15377, 15512), (15513, 15646), (15647, 15782), (15783, 15908), (15909, 16042), (16043, 16168), (16169, 16276), (16277, 16408), (16409, 16516), (16517, 16628), (16629, 16754), (16755, 16882), (16883, 17018), (17019, 17146), (17147, 17272), (17273, 17392), (17393, 17528), (17529, 17654), (17655, 17762), (17763, 17896), (17897, 18026), (18027, 18148), (18149, 18284), (18285, 18359), (18491, 18616), (18617, 18626), (18634, 18752), (18753, 18884), (18885, 18885), (19208, 19301), (19683, 19816), (19817, 19818), (19881, 19908), (19965, 20016), (20172, 20296), (20297, 20299), (20402, 20474), (20535, 20537), (20577, 20698), (20699, 20712), (21316, 21353), (21870, 21998), (21999, 22010), (22090, 22105), (22188, 22225), (22445, 22461), (22472, 22580), (23763, 23896), (23897, 23897), (24037, 24164), (24165, 24192), (24299, 24302), (24334, 24464), (24465, 24502), (25000, 25099), (25215, 25324), (25325, 25350), (26364, 26379), (26411, 26499), (26508, 26546), (27556, 27571), (27848, 27870), (28125, 28225), (28227, 28260), (28561, 28566), (28812, 28852), (29791, 29903), (30618, 30728), (30729, 30738), (30926, 31034), (31213, 31328), (31329, 31385), (31423, 31464), (32805, 32903), (33614, 33624), (33708, 33749), (34322, 34454), (34455, 34510), (36015, 36047), (36517, 36632), (36633, 36636), (37303, 37345), (37500, 37581), (38307, 38426), (40401, 40463), (40931, 40939), (45927, 45931), (47526, 47656), (47657, 47659), (48013, 48096), (48778, 48803), (50421, 50545), (51076, 51140), (55451, 55576), (55577, 55582), (57245, 57257), (58619, 58699), (62500, 62545), (63948, 63980), (65610, 65671), (68644, 68774), (68775, 68786), (68921, 69025), (71289, 71422), (71423, 71424), (73205, 73302), (85805, 85818), (89383, 89508), (103041, 103101), (109503, 109510), (137842, 137916), (148955, 149012)]

theorem row136_bounds_eq : row136.goods.map goodSegmentBounds = row136_bounds := by
  rfl

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row136_bounds_eq

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row136_layer000_intervals : List ColouredInterval :=
  [(2, 32768, 32903), (3, 19683, 19818), (3, 21870, 22005), (3, 24057, 24192), (3, 26244, 26379), (3, 28431, 28566), (3, 30618, 30753), (3, 32805, 32940), (3, 19683, 19818), (3, 26244, 26379), (3, 32805, 32940), (3, 19683, 19818), (5, 18750, 18885), (5, 21875, 22010), (5, 25000, 25135), (5, 28125, 28260), (5, 31250, 31385), (5, 34375, 34510), (5, 31250, 31385), (7, 19208, 19343), (7, 21609, 21744), (7, 24010, 24145), (7, 26411, 26546), (7, 28812, 28947), (7, 31213, 31348), (7, 33614, 33749), (7, 36015, 36150), (7, 33614, 33749), (11, 18634, 18769), (11, 19965, 20100), (11, 29282, 29417), (13, 19773, 19908), (13, 21970, 22105), (13, 24167, 24302), (13, 26364, 26499), (13, 28561, 28696), (13, 30758, 30893), (13, 32955, 33090), (13, 28561, 28696), (19, 20577, 20712), (19, 27436, 27571), (19, 34295, 34430), (23, 24334, 24469), (23, 36501, 36636), (29, 24389, 24524), (31, 29791, 29926), (37, 19166, 19301), (37, 20535, 20670), (41, 18491, 18626), (41, 20172, 20307), (41, 21853, 21988), (41, 23534, 23669), (41, 25215, 25350), (43, 18490, 18625), (43, 20339, 20474), (43, 22188, 22323), (43, 24037, 24172), (43, 25886, 26021), (43, 27735, 27870), (47, 19881, 20016), (47, 22090, 22225), (47, 24299, 24434), (47, 26508, 26643), (47, 28717, 28852), (47, 30926, 31061), (47, 33135, 33270), (53, 19663, 19798), (53, 22472, 22607), (53, 25281, 25416), (53, 28090, 28225), (53, 30899, 31034), (53, 33708, 33843), (53, 36517, 36652), (59, 20886, 21021), (59, 24367, 24502), (59, 27848, 27983), (59, 31329, 31464), (59, 34810, 34945), (61, 18605, 18740), (61, 22326, 22461), (61, 26047, 26182), (61, 29768, 29903), (61, 33489, 33624), (67, 22445, 22580), (67, 26934, 27069), (67, 31423, 31558), (67, 35912, 36047), (71, 20164, 20299), (71, 25205, 25340), (71, 30246, 30381), (71, 35287, 35422), (73, 21316, 21451), (73, 26645, 26780), (73, 31974, 32109), (79, 18723, 18858), (79, 24964, 25099), (79, 31205, 31340), (83, 20667, 20802), (83, 27556, 27691), (83, 34445, 34580), (89, 23763, 23898), (89, 31684, 31819), (97, 18818, 18953), (97, 28227, 28362), (101, 20402, 20537), (101, 30603, 30738), (103, 21218, 21353), (103, 31827, 31962), (107, 22898, 23033), (107, 34347, 34482), (109, 23762, 23897), (109, 35643, 35778), (113, 25538, 25673), (127, 32258, 32393), (131, 34322, 34457)]

def row136_layer000_block000 : List ColouredInterval :=
  [(2, 32768, 32903), (3, 19683, 19818), (3, 21870, 22005), (3, 24057, 24192), (3, 26244, 26379), (3, 28431, 28566), (3, 30618, 30753), (3, 32805, 32940), (3, 19683, 19818), (3, 26244, 26379), (3, 32805, 32940), (3, 19683, 19818), (5, 18750, 18885), (5, 21875, 22010), (5, 25000, 25135), (5, 28125, 28260)]

def row136_layer000_block001 : List ColouredInterval :=
  [(5, 31250, 31385), (5, 34375, 34510), (5, 31250, 31385), (7, 19208, 19343), (7, 21609, 21744), (7, 24010, 24145), (7, 26411, 26546), (7, 28812, 28947), (7, 31213, 31348), (7, 33614, 33749), (7, 36015, 36150), (7, 33614, 33749), (11, 18634, 18769), (11, 19965, 20100), (11, 29282, 29417), (13, 19773, 19908)]

def row136_layer000_block002 : List ColouredInterval :=
  [(13, 21970, 22105), (13, 24167, 24302), (13, 26364, 26499), (13, 28561, 28696), (13, 30758, 30893), (13, 32955, 33090), (13, 28561, 28696), (19, 20577, 20712), (19, 27436, 27571), (19, 34295, 34430), (23, 24334, 24469), (23, 36501, 36636), (29, 24389, 24524), (31, 29791, 29926), (37, 19166, 19301), (37, 20535, 20670)]

def row136_layer000_block003 : List ColouredInterval :=
  [(41, 18491, 18626), (41, 20172, 20307), (41, 21853, 21988), (41, 23534, 23669), (41, 25215, 25350), (43, 18490, 18625), (43, 20339, 20474), (43, 22188, 22323), (43, 24037, 24172), (43, 25886, 26021), (43, 27735, 27870), (47, 19881, 20016), (47, 22090, 22225), (47, 24299, 24434), (47, 26508, 26643), (47, 28717, 28852)]

def row136_layer000_block004 : List ColouredInterval :=
  [(47, 30926, 31061), (47, 33135, 33270), (53, 19663, 19798), (53, 22472, 22607), (53, 25281, 25416), (53, 28090, 28225), (53, 30899, 31034), (53, 33708, 33843), (53, 36517, 36652), (59, 20886, 21021), (59, 24367, 24502), (59, 27848, 27983), (59, 31329, 31464), (59, 34810, 34945), (61, 18605, 18740), (61, 22326, 22461)]

def row136_layer000_block005 : List ColouredInterval :=
  [(61, 26047, 26182), (61, 29768, 29903), (61, 33489, 33624), (67, 22445, 22580), (67, 26934, 27069), (67, 31423, 31558), (67, 35912, 36047), (71, 20164, 20299), (71, 25205, 25340), (71, 30246, 30381), (71, 35287, 35422), (73, 21316, 21451), (73, 26645, 26780), (73, 31974, 32109), (79, 18723, 18858), (79, 24964, 25099)]

def row136_layer000_block006 : List ColouredInterval :=
  [(79, 31205, 31340), (83, 20667, 20802), (83, 27556, 27691), (83, 34445, 34580), (89, 23763, 23898), (89, 31684, 31819), (97, 18818, 18953), (97, 28227, 28362), (101, 20402, 20537), (101, 30603, 30738), (103, 21218, 21353), (103, 31827, 31962), (107, 22898, 23033), (107, 34347, 34482), (109, 23762, 23897), (109, 35643, 35778)]

def row136_layer000_block007 : List ColouredInterval :=
  [(113, 25538, 25673), (127, 32258, 32393), (131, 34322, 34457)]

def row136_layer000_chunks : List (List ColouredInterval) :=
  [row136_layer000_block000, row136_layer000_block001, row136_layer000_block002, row136_layer000_block003, row136_layer000_block004, row136_layer000_block005, row136_layer000_block006, row136_layer000_block007]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row136_layer000_intervals

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row136_layer000_arithmetic : LayerArithmeticValid row136.height { lower := 18360, upper := 36720, M := 15 } := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row136_layer000_arithmetic

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row136_layer000_enumeration :
    activePowerIntervalList 136 15 18360 36720 = row136_layer000_intervals := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row136_layer000_enumeration

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row136_layer000_pairs000 :
    row136_layer000_block000.all (fun I => row136_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row136_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row136_layer000_pairs000

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row136_layer000_pairs001 :
    row136_layer000_block001.all (fun I => row136_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row136_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row136_layer000_pairs001

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row136_layer000_pairs002 :
    row136_layer000_block002.all (fun I => row136_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row136_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row136_layer000_pairs002

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row136_layer000_pairs003 :
    row136_layer000_block003.all (fun I => row136_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row136_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row136_layer000_pairs003

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row136_layer000_pairs004 :
    row136_layer000_block004.all (fun I => row136_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row136_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row136_layer000_pairs004

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row136_layer000_pairs005 :
    row136_layer000_block005.all (fun I => row136_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row136_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row136_layer000_pairs005

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row136_layer000_pairs006 :
    row136_layer000_block006.all (fun I => row136_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row136_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row136_layer000_pairs006

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row136_layer000_pairs007 :
    row136_layer000_block007.all (fun I => row136_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row136_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row136_layer000_pairs007

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row136_layer000_chunks_eq : row136_layer000_chunks.flatten = row136_layer000_intervals := by
  rfl

theorem row136_layer000_pairs : pairCoverCheck row136_layer000_intervals row136_bounds = true := by
  apply pairCoverCheck_of_chunks row136_layer000_chunks_eq
  intro block hblock
  simp only [row136_layer000_chunks, List.mem_cons, List.mem_nil_iff, or_false] at hblock
  rcases hblock with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
  · exact row136_layer000_pairs000
  · exact row136_layer000_pairs001
  · exact row136_layer000_pairs002
  · exact row136_layer000_pairs003
  · exact row136_layer000_pairs004
  · exact row136_layer000_pairs005
  · exact row136_layer000_pairs006
  · exact row136_layer000_pairs007

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row136_layer000_chunks_eq
#print axioms B699LowIndex.LowIndexLean513dc7cc.row136_layer000_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row136_layer000_checked :
    coverLayerCheck row136.height row136.goods { lower := 18360, upper := 36720, M := 15 } = true := by
  exact coverLayerCheck_of_parts row136_layer000_arithmetic row136_layer000_enumeration row136_bounds_eq row136_layer000_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row136_layer000_checked

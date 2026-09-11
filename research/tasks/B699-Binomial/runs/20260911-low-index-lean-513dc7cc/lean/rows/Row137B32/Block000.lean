import research.tasks.«B699-Binomial».runs.«20260909-low-index-structure-b41a5a63».lean.FiniteCover
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.WitnessBridge
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.LayerParts
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.PairChunks

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row137_height : HeightCertificateDatum := { i := 137, r := 45, s := 97, n0Power10 := 7 }

def row137_goods : List GoodSegment := [
  { lower := 276, upper := 407, witness := RowWitness.topPrime 271 },
  { lower := 408, upper := 537, witness := RowWitness.topPrime 401 },
  { lower := 538, upper := 659, witness := RowWitness.topPrime 523 },
  { lower := 660, upper := 795, witness := RowWitness.topPrime 659 },
  { lower := 796, upper := 923, witness := RowWitness.topPrime 787 },
  { lower := 924, upper := 1055, witness := RowWitness.topPrime 919 },
  { lower := 1056, upper := 1187, witness := RowWitness.topPrime 1051 },
  { lower := 1188, upper := 1323, witness := RowWitness.topPrime 1187 },
  { lower := 1324, upper := 1457, witness := RowWitness.topPrime 1321 },
  { lower := 1458, upper := 1589, witness := RowWitness.topPrime 1453 },
  { lower := 1590, upper := 1719, witness := RowWitness.topPrime 1583 },
  { lower := 1720, upper := 1845, witness := RowWitness.topPrime 1709 },
  { lower := 1846, upper := 1967, witness := RowWitness.topPrime 1831 },
  { lower := 1968, upper := 2087, witness := RowWitness.topPrime 1951 },
  { lower := 2088, upper := 2223, witness := RowWitness.topPrime 2087 },
  { lower := 2224, upper := 2357, witness := RowWitness.topPrime 2221 },
  { lower := 2358, upper := 2493, witness := RowWitness.topPrime 2357 },
  { lower := 2494, upper := 2613, witness := RowWitness.topPrime 2477 },
  { lower := 2614, upper := 2745, witness := RowWitness.topPrime 2609 },
  { lower := 2746, upper := 2877, witness := RowWitness.topPrime 2741 },
  { lower := 2878, upper := 2997, witness := RowWitness.topPrime 2861 },
  { lower := 2998, upper := 3107, witness := RowWitness.topPrime 2971 },
  { lower := 3108, upper := 3225, witness := RowWitness.topPrime 3089 },
  { lower := 3226, upper := 3357, witness := RowWitness.topPrime 3221 },
  { lower := 3358, upper := 3483, witness := RowWitness.topPrime 3347 },
  { lower := 3484, upper := 3605, witness := RowWitness.topPrime 3469 },
  { lower := 3606, upper := 3729, witness := RowWitness.topPrime 3593 },
  { lower := 3730, upper := 3863, witness := RowWitness.topPrime 3727 },
  { lower := 3864, upper := 3999, witness := RowWitness.topPrime 3863 },
  { lower := 4000, upper := 4125, witness := RowWitness.topPrime 3989 },
  { lower := 4126, upper := 4247, witness := RowWitness.topPrime 4111 },
  { lower := 4248, upper := 4379, witness := RowWitness.topPrime 4243 },
  { lower := 4380, upper := 4509, witness := RowWitness.topPrime 4373 },
  { lower := 4510, upper := 4643, witness := RowWitness.topPrime 4507 },
  { lower := 4644, upper := 4779, witness := RowWitness.topPrime 4643 },
  { lower := 4780, upper := 4895, witness := RowWitness.topPrime 4759 },
  { lower := 4896, upper := 5025, witness := RowWitness.topPrime 4889 },
  { lower := 5026, upper := 5159, witness := RowWitness.topPrime 5023 },
  { lower := 5160, upper := 5289, witness := RowWitness.topPrime 5153 },
  { lower := 5290, upper := 5417, witness := RowWitness.topPrime 5281 },
  { lower := 5418, upper := 5553, witness := RowWitness.topPrime 5417 },
  { lower := 5554, upper := 5667, witness := RowWitness.topPrime 5531 },
  { lower := 5668, upper := 5795, witness := RowWitness.topPrime 5659 },
  { lower := 5796, upper := 5927, witness := RowWitness.topPrime 5791 },
  { lower := 5928, upper := 6063, witness := RowWitness.topPrime 5927 },
  { lower := 6064, upper := 6189, witness := RowWitness.topPrime 6053 },
  { lower := 6190, upper := 6309, witness := RowWitness.topPrime 6173 },
  { lower := 6310, upper := 6437, witness := RowWitness.topPrime 6301 },
  { lower := 6438, upper := 6563, witness := RowWitness.topPrime 6427 },
  { lower := 6564, upper := 6699, witness := RowWitness.topPrime 6563 },
  { lower := 6700, upper := 6827, witness := RowWitness.topPrime 6691 },
  { lower := 6828, upper := 6963, witness := RowWitness.topPrime 6827 },
  { lower := 6964, upper := 7097, witness := RowWitness.topPrime 6961 },
  { lower := 7098, upper := 7215, witness := RowWitness.topPrime 7079 },
  { lower := 7216, upper := 7349, witness := RowWitness.topPrime 7213 },
  { lower := 7350, upper := 7485, witness := RowWitness.topPrime 7349 },
  { lower := 7486, upper := 7617, witness := RowWitness.topPrime 7481 },
  { lower := 7618, upper := 7743, witness := RowWitness.topPrime 7607 },
  { lower := 7744, upper := 7877, witness := RowWitness.topPrime 7741 },
  { lower := 7878, upper := 8013, witness := RowWitness.topPrime 7877 },
  { lower := 8014, upper := 8147, witness := RowWitness.topPrime 8011 },
  { lower := 8148, upper := 8283, witness := RowWitness.topPrime 8147 },
  { lower := 8284, upper := 8409, witness := RowWitness.topPrime 8273 },
  { lower := 8410, upper := 8525, witness := RowWitness.topPrime 8389 },
  { lower := 8526, upper := 8657, witness := RowWitness.topPrime 8521 },
  { lower := 8658, upper := 8783, witness := RowWitness.topPrime 8647 },
  { lower := 8784, upper := 8919, witness := RowWitness.topPrime 8783 },
  { lower := 8920, upper := 9029, witness := RowWitness.topPrime 8893 },
  { lower := 9030, upper := 9165, witness := RowWitness.topPrime 9029 },
  { lower := 9166, upper := 9297, witness := RowWitness.topPrime 9161 },
  { lower := 9298, upper := 9429, witness := RowWitness.topPrime 9293 },
  { lower := 9430, upper := 9557, witness := RowWitness.topPrime 9421 },
  { lower := 9558, upper := 9687, witness := RowWitness.topPrime 9551 },
  { lower := 9688, upper := 9815, witness := RowWitness.topPrime 9679 },
  { lower := 9816, upper := 9947, witness := RowWitness.topPrime 9811 },
  { lower := 9948, upper := 10077, witness := RowWitness.topPrime 9941 },
  { lower := 10078, upper := 10205, witness := RowWitness.topPrime 10069 },
  { lower := 10206, upper := 10329, witness := RowWitness.topPrime 10193 },
  { lower := 10330, upper := 10457, witness := RowWitness.topPrime 10321 },
  { lower := 10458, upper := 10593, witness := RowWitness.topPrime 10457 },
  { lower := 10594, upper := 10725, witness := RowWitness.topPrime 10589 },
  { lower := 10726, upper := 10859, witness := RowWitness.topPrime 10723 },
  { lower := 10860, upper := 10995, witness := RowWitness.topPrime 10859 },
  { lower := 10996, upper := 11129, witness := RowWitness.topPrime 10993 },
  { lower := 11130, upper := 11255, witness := RowWitness.topPrime 11119 },
  { lower := 11256, upper := 11387, witness := RowWitness.topPrime 11251 },
  { lower := 11388, upper := 11519, witness := RowWitness.topPrime 11383 },
  { lower := 11520, upper := 11655, witness := RowWitness.topPrime 11519 },
  { lower := 11656, upper := 11769, witness := RowWitness.topPrime 11633 },
  { lower := 11770, upper := 11879, witness := RowWitness.topPrime 11743 },
  { lower := 11880, upper := 12003, witness := RowWitness.topPrime 11867 },
  { lower := 12004, upper := 12123, witness := RowWitness.topPrime 11987 },
  { lower := 12124, upper := 12255, witness := RowWitness.topPrime 12119 },
  { lower := 12256, upper := 12389, witness := RowWitness.topPrime 12253 },
  { lower := 12390, upper := 12515, witness := RowWitness.topPrime 12379 },
  { lower := 12516, upper := 12647, witness := RowWitness.topPrime 12511 },
  { lower := 12648, upper := 12783, witness := RowWitness.topPrime 12647 },
  { lower := 12784, upper := 12917, witness := RowWitness.topPrime 12781 },
  { lower := 12918, upper := 13053, witness := RowWitness.topPrime 12917 },
  { lower := 13054, upper := 13185, witness := RowWitness.topPrime 13049 },
  { lower := 13186, upper := 13319, witness := RowWitness.topPrime 13183 },
  { lower := 13320, upper := 13449, witness := RowWitness.topPrime 13313 },
  { lower := 13450, upper := 13577, witness := RowWitness.topPrime 13441 },
  { lower := 13578, upper := 13713, witness := RowWitness.topPrime 13577 },
  { lower := 13714, upper := 13847, witness := RowWitness.topPrime 13711 },
  { lower := 13848, upper := 13977, witness := RowWitness.topPrime 13841 },
  { lower := 13978, upper := 14103, witness := RowWitness.topPrime 13967 },
  { lower := 14104, upper := 14223, witness := RowWitness.topPrime 14087 },
  { lower := 14224, upper := 14357, witness := RowWitness.topPrime 14221 },
  { lower := 14358, upper := 14483, witness := RowWitness.topPrime 14347 },
  { lower := 14484, upper := 14615, witness := RowWitness.topPrime 14479 },
  { lower := 14616, upper := 14729, witness := RowWitness.topPrime 14593 },
  { lower := 14730, upper := 14859, witness := RowWitness.topPrime 14723 },
  { lower := 14860, upper := 14987, witness := RowWitness.topPrime 14851 },
  { lower := 14988, upper := 15119, witness := RowWitness.topPrime 14983 },
  { lower := 15120, upper := 15243, witness := RowWitness.topPrime 15107 },
  { lower := 15244, upper := 15377, witness := RowWitness.topPrime 15241 },
  { lower := 15378, upper := 15513, witness := RowWitness.topPrime 15377 },
  { lower := 15514, upper := 15647, witness := RowWitness.topPrime 15511 },
  { lower := 15648, upper := 15783, witness := RowWitness.topPrime 15647 },
  { lower := 15784, upper := 15909, witness := RowWitness.topPrime 15773 },
  { lower := 15910, upper := 16043, witness := RowWitness.topPrime 15907 },
  { lower := 16044, upper := 16169, witness := RowWitness.topPrime 16033 },
  { lower := 16170, upper := 16277, witness := RowWitness.topPrime 16141 },
  { lower := 16278, upper := 16409, witness := RowWitness.topPrime 16273 },
  { lower := 16410, upper := 16517, witness := RowWitness.topPrime 16381 },
  { lower := 16518, upper := 16629, witness := RowWitness.topPrime 16493 },
  { lower := 16630, upper := 16755, witness := RowWitness.topPrime 16619 },
  { lower := 16756, upper := 16883, witness := RowWitness.topPrime 16747 },
  { lower := 16884, upper := 17019, witness := RowWitness.topPrime 16883 },
  { lower := 17020, upper := 17147, witness := RowWitness.topPrime 17011 },
  { lower := 17148, upper := 17273, witness := RowWitness.topPrime 17137 },
  { lower := 17274, upper := 17393, witness := RowWitness.topPrime 17257 },
  { lower := 17394, upper := 17529, witness := RowWitness.topPrime 17393 },
  { lower := 17530, upper := 17655, witness := RowWitness.topPrime 17519 },
  { lower := 17656, upper := 17763, witness := RowWitness.topPrime 17627 },
  { lower := 17764, upper := 17897, witness := RowWitness.topPrime 17761 },
  { lower := 17898, upper := 18027, witness := RowWitness.topPrime 17891 },
  { lower := 18028, upper := 18149, witness := RowWitness.topPrime 18013 },
  { lower := 18150, upper := 18285, witness := RowWitness.topPrime 18149 },
  { lower := 18286, upper := 18405, witness := RowWitness.topPrime 18269 },
  { lower := 18406, upper := 18537, witness := RowWitness.topPrime 18401 },
  { lower := 18538, upper := 18631, witness := RowWitness.topPrime 18523 },
  { lower := 18634, upper := 18753, witness := RowWitness.topPrime 18617 },
  { lower := 18754, upper := 18885, witness := RowWitness.topPrime 18749 },
  { lower := 18886, upper := 18886, witness := RowWitness.topPrime 18869 },
  { lower := 19208, upper := 19302, witness := RowWitness.topPrime 19207 },
  { lower := 19663, upper := 19797, witness := RowWitness.topPrime 19661 },
  { lower := 19798, upper := 19819, witness := RowWitness.topPrime 19793 },
  { lower := 19881, upper := 19909, witness := RowWitness.topPrime 19867 },
  { lower := 20172, upper := 20297, witness := RowWitness.topPrime 20161 },
  { lower := 20298, upper := 20300, witness := RowWitness.topPrime 20297 },
  { lower := 20402, upper := 20475, witness := RowWitness.topPrime 20399 },
  { lower := 20480, upper := 20538, witness := RowWitness.topPrime 20479 },
  { lower := 20577, upper := 20616, witness := RowWitness.topPrime 20563 },
  { lower := 20667, upper := 20713, witness := RowWitness.topPrime 20663 },
  { lower := 21316, upper := 21354, witness := RowWitness.topPrime 21313 },
  { lower := 21870, upper := 21999, witness := RowWitness.topPrime 21863 },
  { lower := 22000, upper := 22011, witness := RowWitness.topPrime 21997 },
  { lower := 22090, upper := 22106, witness := RowWitness.topPrime 22079 },
  { lower := 22188, upper := 22226, witness := RowWitness.topPrime 22171 },
  { lower := 22445, upper := 22462, witness := RowWitness.topPrime 22441 },
  { lower := 22472, upper := 22605, witness := RowWitness.topPrime 22469 },
  { lower := 22606, upper := 22608, witness := RowWitness.topPrime 22573 },
  { lower := 23763, upper := 23897, witness := RowWitness.topPrime 23761 },
  { lower := 23898, upper := 23898, witness := RowWitness.topPrime 23893 },
  { lower := 24037, upper := 24165, witness := RowWitness.topPrime 24029 },
  { lower := 24166, upper := 24193, witness := RowWitness.topPrime 24151 },
  { lower := 24299, upper := 24303, witness := RowWitness.topPrime 24281 },
  { lower := 24334, upper := 24465, witness := RowWitness.topPrime 24329 },
  { lower := 24466, upper := 24503, witness := RowWitness.topPrime 24443 },
  { lower := 24576, upper := 24701, witness := RowWitness.topPrime 24571 },
  { lower := 25000, upper := 25100, witness := RowWitness.topPrime 24989 },
  { lower := 25281, upper := 25341, witness := RowWitness.topPrime 25261 },
  { lower := 26364, upper := 26380, witness := RowWitness.topPrime 26357 },
  { lower := 26411, upper := 26500, witness := RowWitness.topPrime 26407 },
  { lower := 26508, upper := 26547, witness := RowWitness.topPrime 26501 },
  { lower := 26624, upper := 26733, witness := RowWitness.topPrime 26597 },
  { lower := 26734, upper := 26760, witness := RowWitness.topPrime 26731 },
  { lower := 27556, upper := 27572, witness := RowWitness.topPrime 27551 },
  { lower := 28125, upper := 28259, witness := RowWitness.topPrime 28123 },
  { lower := 28260, upper := 28261, witness := RowWitness.topPrime 28229 },
  { lower := 28561, upper := 28567, witness := RowWitness.topPrime 28559 },
  { lower := 28672, upper := 28697, witness := RowWitness.topPrime 28669 },
  { lower := 28717, upper := 28808, witness := RowWitness.topPrime 28711 },
  { lower := 28812, upper := 28853, witness := RowWitness.topPrime 28807 },
  { lower := 29791, upper := 29904, witness := RowWitness.topPrime 29789 },
  { lower := 30618, upper := 30729, witness := RowWitness.topPrime 30593 },
  { lower := 30730, upper := 30739, witness := RowWitness.topPrime 30727 },
  { lower := 30926, upper := 31035, witness := RowWitness.topPrime 30911 },
  { lower := 31213, upper := 31329, witness := RowWitness.topPrime 31193 },
  { lower := 31330, upper := 31386, witness := RowWitness.topPrime 31327 },
  { lower := 31423, upper := 31465, witness := RowWitness.topPrime 31397 },
  { lower := 32805, upper := 32904, witness := RowWitness.topPrime 32803 },
  { lower := 33614, upper := 33625, witness := RowWitness.topPrime 33613 },
  { lower := 33708, upper := 33750, witness := RowWitness.topPrime 33703 },
  { lower := 34322, upper := 34455, witness := RowWitness.topPrime 34319 },
  { lower := 34456, upper := 34527, witness := RowWitness.topPrime 34439 },
  { lower := 36517, upper := 36633, witness := RowWitness.topPrime 36497 },
  { lower := 36634, upper := 36637, witness := RowWitness.topPrime 36629 },
  { lower := 37303, upper := 37346, witness := RowWitness.topPrime 37277 },
  { lower := 38307, upper := 38427, witness := RowWitness.topPrime 38303 },
  { lower := 39366, upper := 39440, witness := RowWitness.topPrime 39359 },
  { lower := 40401, upper := 40464, witness := RowWitness.topPrime 40387 },
  { lower := 40931, upper := 40940, witness := RowWitness.topPrime 40927 },
  { lower := 40960, upper := 41067, witness := RowWitness.topPrime 40949 },
  { lower := 45927, upper := 45932, witness := RowWitness.topPrime 45893 },
  { lower := 47526, upper := 47657, witness := RowWitness.topPrime 47521 },
  { lower := 47658, upper := 47660, witness := RowWitness.topPrime 47657 },
  { lower := 48013, upper := 48097, witness := RowWitness.topPrime 47981 },
  { lower := 48778, upper := 48804, witness := RowWitness.topPrime 48767 },
  { lower := 49152, upper := 49266, witness := RowWitness.topPrime 49139 },
  { lower := 50421, upper := 50546, witness := RowWitness.topPrime 50417 },
  { lower := 51076, upper := 51141, witness := RowWitness.topPrime 51071 },
  { lower := 55451, upper := 55577, witness := RowWitness.topPrime 55441 },
  { lower := 55578, upper := 55583, witness := RowWitness.topPrime 55547 },
  { lower := 57245, upper := 57258, witness := RowWitness.topPrime 57241 },
  { lower := 57344, upper := 57381, witness := RowWitness.topPrime 57331 },
  { lower := 58619, upper := 58700, witness := RowWitness.topPrime 58613 },
  { lower := 62500, upper := 62546, witness := RowWitness.topPrime 62497 },
  { lower := 65610, upper := 65672, witness := RowWitness.topPrime 65609 },
  { lower := 68644, upper := 68775, witness := RowWitness.topPrime 68639 },
  { lower := 68776, upper := 68787, witness := RowWitness.topPrime 68771 },
  { lower := 68921, upper := 69026, witness := RowWitness.topPrime 68917 },
  { lower := 71289, upper := 71423, witness := RowWitness.topPrime 71287 },
  { lower := 71424, upper := 71425, witness := RowWitness.topPrime 71419 },
  { lower := 73205, upper := 73303, witness := RowWitness.topPrime 73189 },
  { lower := 85805, upper := 85819, witness := RowWitness.topPrime 85793 },
  { lower := 89383, upper := 89509, witness := RowWitness.topPrime 89381 },
  { lower := 98415, upper := 98440, witness := RowWitness.topPrime 98411 },
  { lower := 137842, upper := 137917, witness := RowWitness.topPrime 137831 },
  { lower := 148955, upper := 149013, witness := RowWitness.topPrime 148949 }
]

def row137_layers : List CoverLayer := [
  { lower := 18632, upper := 37264, M := 14 },
  { lower := 37264, upper := 74528, M := 11 },
  { lower := 74528, upper := 149056, M := 8 },
  { lower := 149056, upper := 298112, M := 6 },
  { lower := 298112, upper := 596224, M := 5 },
  { lower := 596224, upper := 1192448, M := 4 },
  { lower := 1192448, upper := 2384896, M := 3 },
  { lower := 2384896, upper := 4769792, M := 2 },
  { lower := 4769792, upper := 9539584, M := 2 },
  { lower := 9539584, upper := 10000000, M := 1 }
]

def row137 : FiniteCoverRow := {
  height := row137_height,
  goods := row137_goods,
  layers := row137_layers
}


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row137

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row137_good000_checked :
    goodSegmentCheck 137 45 97
      { lower := 276, upper := 407, witness := RowWitness.topPrime 271 } = true := by
  exact good_top_prime_checked (i := 137) (r := 45) (s := 97) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row137_good001_checked :
    goodSegmentCheck 137 45 97
      { lower := 408, upper := 537, witness := RowWitness.topPrime 401 } = true := by
  exact good_top_prime_checked (i := 137) (r := 45) (s := 97) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row137_good002_checked :
    goodSegmentCheck 137 45 97
      { lower := 538, upper := 659, witness := RowWitness.topPrime 523 } = true := by
  exact good_top_prime_checked (i := 137) (r := 45) (s := 97) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row137_good003_checked :
    goodSegmentCheck 137 45 97
      { lower := 660, upper := 795, witness := RowWitness.topPrime 659 } = true := by
  exact good_top_prime_checked (i := 137) (r := 45) (s := 97) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row137_good004_checked :
    goodSegmentCheck 137 45 97
      { lower := 796, upper := 923, witness := RowWitness.topPrime 787 } = true := by
  exact good_top_prime_checked (i := 137) (r := 45) (s := 97) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row137_good005_checked :
    goodSegmentCheck 137 45 97
      { lower := 924, upper := 1055, witness := RowWitness.topPrime 919 } = true := by
  exact good_top_prime_checked (i := 137) (r := 45) (s := 97) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row137_good006_checked :
    goodSegmentCheck 137 45 97
      { lower := 1056, upper := 1187, witness := RowWitness.topPrime 1051 } = true := by
  exact good_top_prime_checked (i := 137) (r := 45) (s := 97) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row137_good007_checked :
    goodSegmentCheck 137 45 97
      { lower := 1188, upper := 1323, witness := RowWitness.topPrime 1187 } = true := by
  exact good_top_prime_checked (i := 137) (r := 45) (s := 97) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row137_good008_checked :
    goodSegmentCheck 137 45 97
      { lower := 1324, upper := 1457, witness := RowWitness.topPrime 1321 } = true := by
  exact good_top_prime_checked (i := 137) (r := 45) (s := 97) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row137_good009_checked :
    goodSegmentCheck 137 45 97
      { lower := 1458, upper := 1589, witness := RowWitness.topPrime 1453 } = true := by
  exact good_top_prime_checked (i := 137) (r := 45) (s := 97) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row137_good010_checked :
    goodSegmentCheck 137 45 97
      { lower := 1590, upper := 1719, witness := RowWitness.topPrime 1583 } = true := by
  exact good_top_prime_checked (i := 137) (r := 45) (s := 97) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row137_good011_checked :
    goodSegmentCheck 137 45 97
      { lower := 1720, upper := 1845, witness := RowWitness.topPrime 1709 } = true := by
  exact good_top_prime_checked (i := 137) (r := 45) (s := 97) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row137_good012_checked :
    goodSegmentCheck 137 45 97
      { lower := 1846, upper := 1967, witness := RowWitness.topPrime 1831 } = true := by
  exact good_top_prime_checked (i := 137) (r := 45) (s := 97) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row137_good013_checked :
    goodSegmentCheck 137 45 97
      { lower := 1968, upper := 2087, witness := RowWitness.topPrime 1951 } = true := by
  exact good_top_prime_checked (i := 137) (r := 45) (s := 97) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row137_good014_checked :
    goodSegmentCheck 137 45 97
      { lower := 2088, upper := 2223, witness := RowWitness.topPrime 2087 } = true := by
  exact good_top_prime_checked (i := 137) (r := 45) (s := 97) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row137_good015_checked :
    goodSegmentCheck 137 45 97
      { lower := 2224, upper := 2357, witness := RowWitness.topPrime 2221 } = true := by
  exact good_top_prime_checked (i := 137) (r := 45) (s := 97) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row137_good000_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row137_good001_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row137_good002_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row137_good003_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row137_good004_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row137_good005_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row137_good006_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row137_good007_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row137_good008_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row137_good009_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row137_good010_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row137_good011_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row137_good012_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row137_good013_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row137_good014_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row137_good015_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row137_good016_checked :
    goodSegmentCheck 137 45 97
      { lower := 2358, upper := 2493, witness := RowWitness.topPrime 2357 } = true := by
  exact good_top_prime_checked (i := 137) (r := 45) (s := 97) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row137_good017_checked :
    goodSegmentCheck 137 45 97
      { lower := 2494, upper := 2613, witness := RowWitness.topPrime 2477 } = true := by
  exact good_top_prime_checked (i := 137) (r := 45) (s := 97) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row137_good018_checked :
    goodSegmentCheck 137 45 97
      { lower := 2614, upper := 2745, witness := RowWitness.topPrime 2609 } = true := by
  exact good_top_prime_checked (i := 137) (r := 45) (s := 97) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row137_good019_checked :
    goodSegmentCheck 137 45 97
      { lower := 2746, upper := 2877, witness := RowWitness.topPrime 2741 } = true := by
  exact good_top_prime_checked (i := 137) (r := 45) (s := 97) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row137_good020_checked :
    goodSegmentCheck 137 45 97
      { lower := 2878, upper := 2997, witness := RowWitness.topPrime 2861 } = true := by
  exact good_top_prime_checked (i := 137) (r := 45) (s := 97) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row137_good021_checked :
    goodSegmentCheck 137 45 97
      { lower := 2998, upper := 3107, witness := RowWitness.topPrime 2971 } = true := by
  exact good_top_prime_checked (i := 137) (r := 45) (s := 97) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row137_good022_checked :
    goodSegmentCheck 137 45 97
      { lower := 3108, upper := 3225, witness := RowWitness.topPrime 3089 } = true := by
  exact good_top_prime_checked (i := 137) (r := 45) (s := 97) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row137_good023_checked :
    goodSegmentCheck 137 45 97
      { lower := 3226, upper := 3357, witness := RowWitness.topPrime 3221 } = true := by
  exact good_top_prime_checked (i := 137) (r := 45) (s := 97) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row137_good024_checked :
    goodSegmentCheck 137 45 97
      { lower := 3358, upper := 3483, witness := RowWitness.topPrime 3347 } = true := by
  exact good_top_prime_checked (i := 137) (r := 45) (s := 97) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row137_good025_checked :
    goodSegmentCheck 137 45 97
      { lower := 3484, upper := 3605, witness := RowWitness.topPrime 3469 } = true := by
  exact good_top_prime_checked (i := 137) (r := 45) (s := 97) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row137_good026_checked :
    goodSegmentCheck 137 45 97
      { lower := 3606, upper := 3729, witness := RowWitness.topPrime 3593 } = true := by
  exact good_top_prime_checked (i := 137) (r := 45) (s := 97) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row137_good027_checked :
    goodSegmentCheck 137 45 97
      { lower := 3730, upper := 3863, witness := RowWitness.topPrime 3727 } = true := by
  exact good_top_prime_checked (i := 137) (r := 45) (s := 97) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row137_good028_checked :
    goodSegmentCheck 137 45 97
      { lower := 3864, upper := 3999, witness := RowWitness.topPrime 3863 } = true := by
  exact good_top_prime_checked (i := 137) (r := 45) (s := 97) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row137_good029_checked :
    goodSegmentCheck 137 45 97
      { lower := 4000, upper := 4125, witness := RowWitness.topPrime 3989 } = true := by
  exact good_top_prime_checked (i := 137) (r := 45) (s := 97) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row137_good030_checked :
    goodSegmentCheck 137 45 97
      { lower := 4126, upper := 4247, witness := RowWitness.topPrime 4111 } = true := by
  exact good_top_prime_checked (i := 137) (r := 45) (s := 97) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row137_good031_checked :
    goodSegmentCheck 137 45 97
      { lower := 4248, upper := 4379, witness := RowWitness.topPrime 4243 } = true := by
  exact good_top_prime_checked (i := 137) (r := 45) (s := 97) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row137_good016_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row137_good017_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row137_good018_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row137_good019_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row137_good020_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row137_good021_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row137_good022_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row137_good023_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row137_good024_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row137_good025_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row137_good026_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row137_good027_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row137_good028_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row137_good029_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row137_good030_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row137_good031_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row137_good032_checked :
    goodSegmentCheck 137 45 97
      { lower := 4380, upper := 4509, witness := RowWitness.topPrime 4373 } = true := by
  exact good_top_prime_checked (i := 137) (r := 45) (s := 97) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row137_good033_checked :
    goodSegmentCheck 137 45 97
      { lower := 4510, upper := 4643, witness := RowWitness.topPrime 4507 } = true := by
  exact good_top_prime_checked (i := 137) (r := 45) (s := 97) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row137_good034_checked :
    goodSegmentCheck 137 45 97
      { lower := 4644, upper := 4779, witness := RowWitness.topPrime 4643 } = true := by
  exact good_top_prime_checked (i := 137) (r := 45) (s := 97) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row137_good035_checked :
    goodSegmentCheck 137 45 97
      { lower := 4780, upper := 4895, witness := RowWitness.topPrime 4759 } = true := by
  exact good_top_prime_checked (i := 137) (r := 45) (s := 97) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row137_good036_checked :
    goodSegmentCheck 137 45 97
      { lower := 4896, upper := 5025, witness := RowWitness.topPrime 4889 } = true := by
  exact good_top_prime_checked (i := 137) (r := 45) (s := 97) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row137_good037_checked :
    goodSegmentCheck 137 45 97
      { lower := 5026, upper := 5159, witness := RowWitness.topPrime 5023 } = true := by
  exact good_top_prime_checked (i := 137) (r := 45) (s := 97) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row137_good038_checked :
    goodSegmentCheck 137 45 97
      { lower := 5160, upper := 5289, witness := RowWitness.topPrime 5153 } = true := by
  exact good_top_prime_checked (i := 137) (r := 45) (s := 97) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row137_good039_checked :
    goodSegmentCheck 137 45 97
      { lower := 5290, upper := 5417, witness := RowWitness.topPrime 5281 } = true := by
  exact good_top_prime_checked (i := 137) (r := 45) (s := 97) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row137_good040_checked :
    goodSegmentCheck 137 45 97
      { lower := 5418, upper := 5553, witness := RowWitness.topPrime 5417 } = true := by
  exact good_top_prime_checked (i := 137) (r := 45) (s := 97) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row137_good041_checked :
    goodSegmentCheck 137 45 97
      { lower := 5554, upper := 5667, witness := RowWitness.topPrime 5531 } = true := by
  exact good_top_prime_checked (i := 137) (r := 45) (s := 97) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row137_good042_checked :
    goodSegmentCheck 137 45 97
      { lower := 5668, upper := 5795, witness := RowWitness.topPrime 5659 } = true := by
  exact good_top_prime_checked (i := 137) (r := 45) (s := 97) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row137_good043_checked :
    goodSegmentCheck 137 45 97
      { lower := 5796, upper := 5927, witness := RowWitness.topPrime 5791 } = true := by
  exact good_top_prime_checked (i := 137) (r := 45) (s := 97) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row137_good044_checked :
    goodSegmentCheck 137 45 97
      { lower := 5928, upper := 6063, witness := RowWitness.topPrime 5927 } = true := by
  exact good_top_prime_checked (i := 137) (r := 45) (s := 97) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row137_good045_checked :
    goodSegmentCheck 137 45 97
      { lower := 6064, upper := 6189, witness := RowWitness.topPrime 6053 } = true := by
  exact good_top_prime_checked (i := 137) (r := 45) (s := 97) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row137_good046_checked :
    goodSegmentCheck 137 45 97
      { lower := 6190, upper := 6309, witness := RowWitness.topPrime 6173 } = true := by
  exact good_top_prime_checked (i := 137) (r := 45) (s := 97) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row137_good047_checked :
    goodSegmentCheck 137 45 97
      { lower := 6310, upper := 6437, witness := RowWitness.topPrime 6301 } = true := by
  exact good_top_prime_checked (i := 137) (r := 45) (s := 97) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row137_good032_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row137_good033_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row137_good034_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row137_good035_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row137_good036_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row137_good037_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row137_good038_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row137_good039_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row137_good040_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row137_good041_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row137_good042_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row137_good043_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row137_good044_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row137_good045_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row137_good046_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row137_good047_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row137_good048_checked :
    goodSegmentCheck 137 45 97
      { lower := 6438, upper := 6563, witness := RowWitness.topPrime 6427 } = true := by
  exact good_top_prime_checked (i := 137) (r := 45) (s := 97) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row137_good049_checked :
    goodSegmentCheck 137 45 97
      { lower := 6564, upper := 6699, witness := RowWitness.topPrime 6563 } = true := by
  exact good_top_prime_checked (i := 137) (r := 45) (s := 97) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row137_good050_checked :
    goodSegmentCheck 137 45 97
      { lower := 6700, upper := 6827, witness := RowWitness.topPrime 6691 } = true := by
  exact good_top_prime_checked (i := 137) (r := 45) (s := 97) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row137_good051_checked :
    goodSegmentCheck 137 45 97
      { lower := 6828, upper := 6963, witness := RowWitness.topPrime 6827 } = true := by
  exact good_top_prime_checked (i := 137) (r := 45) (s := 97) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row137_good052_checked :
    goodSegmentCheck 137 45 97
      { lower := 6964, upper := 7097, witness := RowWitness.topPrime 6961 } = true := by
  exact good_top_prime_checked (i := 137) (r := 45) (s := 97) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row137_good053_checked :
    goodSegmentCheck 137 45 97
      { lower := 7098, upper := 7215, witness := RowWitness.topPrime 7079 } = true := by
  exact good_top_prime_checked (i := 137) (r := 45) (s := 97) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row137_good054_checked :
    goodSegmentCheck 137 45 97
      { lower := 7216, upper := 7349, witness := RowWitness.topPrime 7213 } = true := by
  exact good_top_prime_checked (i := 137) (r := 45) (s := 97) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row137_good055_checked :
    goodSegmentCheck 137 45 97
      { lower := 7350, upper := 7485, witness := RowWitness.topPrime 7349 } = true := by
  exact good_top_prime_checked (i := 137) (r := 45) (s := 97) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row137_good056_checked :
    goodSegmentCheck 137 45 97
      { lower := 7486, upper := 7617, witness := RowWitness.topPrime 7481 } = true := by
  exact good_top_prime_checked (i := 137) (r := 45) (s := 97) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row137_good057_checked :
    goodSegmentCheck 137 45 97
      { lower := 7618, upper := 7743, witness := RowWitness.topPrime 7607 } = true := by
  exact good_top_prime_checked (i := 137) (r := 45) (s := 97) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row137_good058_checked :
    goodSegmentCheck 137 45 97
      { lower := 7744, upper := 7877, witness := RowWitness.topPrime 7741 } = true := by
  exact good_top_prime_checked (i := 137) (r := 45) (s := 97) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row137_good059_checked :
    goodSegmentCheck 137 45 97
      { lower := 7878, upper := 8013, witness := RowWitness.topPrime 7877 } = true := by
  exact good_top_prime_checked (i := 137) (r := 45) (s := 97) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row137_good060_checked :
    goodSegmentCheck 137 45 97
      { lower := 8014, upper := 8147, witness := RowWitness.topPrime 8011 } = true := by
  exact good_top_prime_checked (i := 137) (r := 45) (s := 97) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row137_good061_checked :
    goodSegmentCheck 137 45 97
      { lower := 8148, upper := 8283, witness := RowWitness.topPrime 8147 } = true := by
  exact good_top_prime_checked (i := 137) (r := 45) (s := 97) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row137_good062_checked :
    goodSegmentCheck 137 45 97
      { lower := 8284, upper := 8409, witness := RowWitness.topPrime 8273 } = true := by
  exact good_top_prime_checked (i := 137) (r := 45) (s := 97) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row137_good063_checked :
    goodSegmentCheck 137 45 97
      { lower := 8410, upper := 8525, witness := RowWitness.topPrime 8389 } = true := by
  exact good_top_prime_checked (i := 137) (r := 45) (s := 97) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row137_good048_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row137_good049_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row137_good050_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row137_good051_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row137_good052_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row137_good053_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row137_good054_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row137_good055_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row137_good056_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row137_good057_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row137_good058_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row137_good059_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row137_good060_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row137_good061_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row137_good062_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row137_good063_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row137_good064_checked :
    goodSegmentCheck 137 45 97
      { lower := 8526, upper := 8657, witness := RowWitness.topPrime 8521 } = true := by
  exact good_top_prime_checked (i := 137) (r := 45) (s := 97) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row137_good065_checked :
    goodSegmentCheck 137 45 97
      { lower := 8658, upper := 8783, witness := RowWitness.topPrime 8647 } = true := by
  exact good_top_prime_checked (i := 137) (r := 45) (s := 97) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row137_good066_checked :
    goodSegmentCheck 137 45 97
      { lower := 8784, upper := 8919, witness := RowWitness.topPrime 8783 } = true := by
  exact good_top_prime_checked (i := 137) (r := 45) (s := 97) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row137_good067_checked :
    goodSegmentCheck 137 45 97
      { lower := 8920, upper := 9029, witness := RowWitness.topPrime 8893 } = true := by
  exact good_top_prime_checked (i := 137) (r := 45) (s := 97) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row137_good068_checked :
    goodSegmentCheck 137 45 97
      { lower := 9030, upper := 9165, witness := RowWitness.topPrime 9029 } = true := by
  exact good_top_prime_checked (i := 137) (r := 45) (s := 97) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row137_good069_checked :
    goodSegmentCheck 137 45 97
      { lower := 9166, upper := 9297, witness := RowWitness.topPrime 9161 } = true := by
  exact good_top_prime_checked (i := 137) (r := 45) (s := 97) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row137_good070_checked :
    goodSegmentCheck 137 45 97
      { lower := 9298, upper := 9429, witness := RowWitness.topPrime 9293 } = true := by
  exact good_top_prime_checked (i := 137) (r := 45) (s := 97) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row137_good071_checked :
    goodSegmentCheck 137 45 97
      { lower := 9430, upper := 9557, witness := RowWitness.topPrime 9421 } = true := by
  exact good_top_prime_checked (i := 137) (r := 45) (s := 97) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row137_good072_checked :
    goodSegmentCheck 137 45 97
      { lower := 9558, upper := 9687, witness := RowWitness.topPrime 9551 } = true := by
  exact good_top_prime_checked (i := 137) (r := 45) (s := 97) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row137_good073_checked :
    goodSegmentCheck 137 45 97
      { lower := 9688, upper := 9815, witness := RowWitness.topPrime 9679 } = true := by
  exact good_top_prime_checked (i := 137) (r := 45) (s := 97) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row137_good074_checked :
    goodSegmentCheck 137 45 97
      { lower := 9816, upper := 9947, witness := RowWitness.topPrime 9811 } = true := by
  exact good_top_prime_checked (i := 137) (r := 45) (s := 97) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row137_good075_checked :
    goodSegmentCheck 137 45 97
      { lower := 9948, upper := 10077, witness := RowWitness.topPrime 9941 } = true := by
  exact good_top_prime_checked (i := 137) (r := 45) (s := 97) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row137_good076_checked :
    goodSegmentCheck 137 45 97
      { lower := 10078, upper := 10205, witness := RowWitness.topPrime 10069 } = true := by
  exact good_top_prime_checked (i := 137) (r := 45) (s := 97) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row137_good077_checked :
    goodSegmentCheck 137 45 97
      { lower := 10206, upper := 10329, witness := RowWitness.topPrime 10193 } = true := by
  exact good_top_prime_checked (i := 137) (r := 45) (s := 97) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row137_good078_checked :
    goodSegmentCheck 137 45 97
      { lower := 10330, upper := 10457, witness := RowWitness.topPrime 10321 } = true := by
  exact good_top_prime_checked (i := 137) (r := 45) (s := 97) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row137_good079_checked :
    goodSegmentCheck 137 45 97
      { lower := 10458, upper := 10593, witness := RowWitness.topPrime 10457 } = true := by
  exact good_top_prime_checked (i := 137) (r := 45) (s := 97) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row137_good064_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row137_good065_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row137_good066_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row137_good067_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row137_good068_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row137_good069_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row137_good070_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row137_good071_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row137_good072_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row137_good073_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row137_good074_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row137_good075_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row137_good076_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row137_good077_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row137_good078_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row137_good079_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row137_good080_checked :
    goodSegmentCheck 137 45 97
      { lower := 10594, upper := 10725, witness := RowWitness.topPrime 10589 } = true := by
  exact good_top_prime_checked (i := 137) (r := 45) (s := 97) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row137_good081_checked :
    goodSegmentCheck 137 45 97
      { lower := 10726, upper := 10859, witness := RowWitness.topPrime 10723 } = true := by
  exact good_top_prime_checked (i := 137) (r := 45) (s := 97) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row137_good082_checked :
    goodSegmentCheck 137 45 97
      { lower := 10860, upper := 10995, witness := RowWitness.topPrime 10859 } = true := by
  exact good_top_prime_checked (i := 137) (r := 45) (s := 97) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row137_good083_checked :
    goodSegmentCheck 137 45 97
      { lower := 10996, upper := 11129, witness := RowWitness.topPrime 10993 } = true := by
  exact good_top_prime_checked (i := 137) (r := 45) (s := 97) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row137_good084_checked :
    goodSegmentCheck 137 45 97
      { lower := 11130, upper := 11255, witness := RowWitness.topPrime 11119 } = true := by
  exact good_top_prime_checked (i := 137) (r := 45) (s := 97) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row137_good085_checked :
    goodSegmentCheck 137 45 97
      { lower := 11256, upper := 11387, witness := RowWitness.topPrime 11251 } = true := by
  exact good_top_prime_checked (i := 137) (r := 45) (s := 97) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row137_good086_checked :
    goodSegmentCheck 137 45 97
      { lower := 11388, upper := 11519, witness := RowWitness.topPrime 11383 } = true := by
  exact good_top_prime_checked (i := 137) (r := 45) (s := 97) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row137_good087_checked :
    goodSegmentCheck 137 45 97
      { lower := 11520, upper := 11655, witness := RowWitness.topPrime 11519 } = true := by
  exact good_top_prime_checked (i := 137) (r := 45) (s := 97) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row137_good088_checked :
    goodSegmentCheck 137 45 97
      { lower := 11656, upper := 11769, witness := RowWitness.topPrime 11633 } = true := by
  exact good_top_prime_checked (i := 137) (r := 45) (s := 97) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row137_good089_checked :
    goodSegmentCheck 137 45 97
      { lower := 11770, upper := 11879, witness := RowWitness.topPrime 11743 } = true := by
  exact good_top_prime_checked (i := 137) (r := 45) (s := 97) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row137_good090_checked :
    goodSegmentCheck 137 45 97
      { lower := 11880, upper := 12003, witness := RowWitness.topPrime 11867 } = true := by
  exact good_top_prime_checked (i := 137) (r := 45) (s := 97) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row137_good091_checked :
    goodSegmentCheck 137 45 97
      { lower := 12004, upper := 12123, witness := RowWitness.topPrime 11987 } = true := by
  exact good_top_prime_checked (i := 137) (r := 45) (s := 97) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row137_good092_checked :
    goodSegmentCheck 137 45 97
      { lower := 12124, upper := 12255, witness := RowWitness.topPrime 12119 } = true := by
  exact good_top_prime_checked (i := 137) (r := 45) (s := 97) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row137_good093_checked :
    goodSegmentCheck 137 45 97
      { lower := 12256, upper := 12389, witness := RowWitness.topPrime 12253 } = true := by
  exact good_top_prime_checked (i := 137) (r := 45) (s := 97) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row137_good094_checked :
    goodSegmentCheck 137 45 97
      { lower := 12390, upper := 12515, witness := RowWitness.topPrime 12379 } = true := by
  exact good_top_prime_checked (i := 137) (r := 45) (s := 97) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row137_good095_checked :
    goodSegmentCheck 137 45 97
      { lower := 12516, upper := 12647, witness := RowWitness.topPrime 12511 } = true := by
  exact good_top_prime_checked (i := 137) (r := 45) (s := 97) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row137_good080_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row137_good081_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row137_good082_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row137_good083_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row137_good084_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row137_good085_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row137_good086_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row137_good087_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row137_good088_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row137_good089_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row137_good090_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row137_good091_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row137_good092_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row137_good093_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row137_good094_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row137_good095_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row137_good096_checked :
    goodSegmentCheck 137 45 97
      { lower := 12648, upper := 12783, witness := RowWitness.topPrime 12647 } = true := by
  exact good_top_prime_checked (i := 137) (r := 45) (s := 97) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row137_good097_checked :
    goodSegmentCheck 137 45 97
      { lower := 12784, upper := 12917, witness := RowWitness.topPrime 12781 } = true := by
  exact good_top_prime_checked (i := 137) (r := 45) (s := 97) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row137_good098_checked :
    goodSegmentCheck 137 45 97
      { lower := 12918, upper := 13053, witness := RowWitness.topPrime 12917 } = true := by
  exact good_top_prime_checked (i := 137) (r := 45) (s := 97) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row137_good099_checked :
    goodSegmentCheck 137 45 97
      { lower := 13054, upper := 13185, witness := RowWitness.topPrime 13049 } = true := by
  exact good_top_prime_checked (i := 137) (r := 45) (s := 97) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row137_good100_checked :
    goodSegmentCheck 137 45 97
      { lower := 13186, upper := 13319, witness := RowWitness.topPrime 13183 } = true := by
  exact good_top_prime_checked (i := 137) (r := 45) (s := 97) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row137_good101_checked :
    goodSegmentCheck 137 45 97
      { lower := 13320, upper := 13449, witness := RowWitness.topPrime 13313 } = true := by
  exact good_top_prime_checked (i := 137) (r := 45) (s := 97) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row137_good102_checked :
    goodSegmentCheck 137 45 97
      { lower := 13450, upper := 13577, witness := RowWitness.topPrime 13441 } = true := by
  exact good_top_prime_checked (i := 137) (r := 45) (s := 97) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row137_good103_checked :
    goodSegmentCheck 137 45 97
      { lower := 13578, upper := 13713, witness := RowWitness.topPrime 13577 } = true := by
  exact good_top_prime_checked (i := 137) (r := 45) (s := 97) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row137_good104_checked :
    goodSegmentCheck 137 45 97
      { lower := 13714, upper := 13847, witness := RowWitness.topPrime 13711 } = true := by
  exact good_top_prime_checked (i := 137) (r := 45) (s := 97) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row137_good105_checked :
    goodSegmentCheck 137 45 97
      { lower := 13848, upper := 13977, witness := RowWitness.topPrime 13841 } = true := by
  exact good_top_prime_checked (i := 137) (r := 45) (s := 97) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row137_good106_checked :
    goodSegmentCheck 137 45 97
      { lower := 13978, upper := 14103, witness := RowWitness.topPrime 13967 } = true := by
  exact good_top_prime_checked (i := 137) (r := 45) (s := 97) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row137_good107_checked :
    goodSegmentCheck 137 45 97
      { lower := 14104, upper := 14223, witness := RowWitness.topPrime 14087 } = true := by
  exact good_top_prime_checked (i := 137) (r := 45) (s := 97) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row137_good108_checked :
    goodSegmentCheck 137 45 97
      { lower := 14224, upper := 14357, witness := RowWitness.topPrime 14221 } = true := by
  exact good_top_prime_checked (i := 137) (r := 45) (s := 97) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row137_good109_checked :
    goodSegmentCheck 137 45 97
      { lower := 14358, upper := 14483, witness := RowWitness.topPrime 14347 } = true := by
  exact good_top_prime_checked (i := 137) (r := 45) (s := 97) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row137_good110_checked :
    goodSegmentCheck 137 45 97
      { lower := 14484, upper := 14615, witness := RowWitness.topPrime 14479 } = true := by
  exact good_top_prime_checked (i := 137) (r := 45) (s := 97) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row137_good111_checked :
    goodSegmentCheck 137 45 97
      { lower := 14616, upper := 14729, witness := RowWitness.topPrime 14593 } = true := by
  exact good_top_prime_checked (i := 137) (r := 45) (s := 97) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row137_good096_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row137_good097_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row137_good098_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row137_good099_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row137_good100_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row137_good101_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row137_good102_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row137_good103_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row137_good104_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row137_good105_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row137_good106_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row137_good107_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row137_good108_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row137_good109_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row137_good110_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row137_good111_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row137_good112_checked :
    goodSegmentCheck 137 45 97
      { lower := 14730, upper := 14859, witness := RowWitness.topPrime 14723 } = true := by
  exact good_top_prime_checked (i := 137) (r := 45) (s := 97) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row137_good113_checked :
    goodSegmentCheck 137 45 97
      { lower := 14860, upper := 14987, witness := RowWitness.topPrime 14851 } = true := by
  exact good_top_prime_checked (i := 137) (r := 45) (s := 97) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row137_good114_checked :
    goodSegmentCheck 137 45 97
      { lower := 14988, upper := 15119, witness := RowWitness.topPrime 14983 } = true := by
  exact good_top_prime_checked (i := 137) (r := 45) (s := 97) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row137_good115_checked :
    goodSegmentCheck 137 45 97
      { lower := 15120, upper := 15243, witness := RowWitness.topPrime 15107 } = true := by
  exact good_top_prime_checked (i := 137) (r := 45) (s := 97) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row137_good116_checked :
    goodSegmentCheck 137 45 97
      { lower := 15244, upper := 15377, witness := RowWitness.topPrime 15241 } = true := by
  exact good_top_prime_checked (i := 137) (r := 45) (s := 97) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row137_good117_checked :
    goodSegmentCheck 137 45 97
      { lower := 15378, upper := 15513, witness := RowWitness.topPrime 15377 } = true := by
  exact good_top_prime_checked (i := 137) (r := 45) (s := 97) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row137_good118_checked :
    goodSegmentCheck 137 45 97
      { lower := 15514, upper := 15647, witness := RowWitness.topPrime 15511 } = true := by
  exact good_top_prime_checked (i := 137) (r := 45) (s := 97) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row137_good119_checked :
    goodSegmentCheck 137 45 97
      { lower := 15648, upper := 15783, witness := RowWitness.topPrime 15647 } = true := by
  exact good_top_prime_checked (i := 137) (r := 45) (s := 97) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row137_good120_checked :
    goodSegmentCheck 137 45 97
      { lower := 15784, upper := 15909, witness := RowWitness.topPrime 15773 } = true := by
  exact good_top_prime_checked (i := 137) (r := 45) (s := 97) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row137_good121_checked :
    goodSegmentCheck 137 45 97
      { lower := 15910, upper := 16043, witness := RowWitness.topPrime 15907 } = true := by
  exact good_top_prime_checked (i := 137) (r := 45) (s := 97) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row137_good122_checked :
    goodSegmentCheck 137 45 97
      { lower := 16044, upper := 16169, witness := RowWitness.topPrime 16033 } = true := by
  exact good_top_prime_checked (i := 137) (r := 45) (s := 97) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row137_good123_checked :
    goodSegmentCheck 137 45 97
      { lower := 16170, upper := 16277, witness := RowWitness.topPrime 16141 } = true := by
  exact good_top_prime_checked (i := 137) (r := 45) (s := 97) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row137_good124_checked :
    goodSegmentCheck 137 45 97
      { lower := 16278, upper := 16409, witness := RowWitness.topPrime 16273 } = true := by
  exact good_top_prime_checked (i := 137) (r := 45) (s := 97) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row137_good125_checked :
    goodSegmentCheck 137 45 97
      { lower := 16410, upper := 16517, witness := RowWitness.topPrime 16381 } = true := by
  exact good_top_prime_checked (i := 137) (r := 45) (s := 97) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row137_good126_checked :
    goodSegmentCheck 137 45 97
      { lower := 16518, upper := 16629, witness := RowWitness.topPrime 16493 } = true := by
  exact good_top_prime_checked (i := 137) (r := 45) (s := 97) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row137_good127_checked :
    goodSegmentCheck 137 45 97
      { lower := 16630, upper := 16755, witness := RowWitness.topPrime 16619 } = true := by
  exact good_top_prime_checked (i := 137) (r := 45) (s := 97) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row137_good112_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row137_good113_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row137_good114_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row137_good115_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row137_good116_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row137_good117_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row137_good118_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row137_good119_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row137_good120_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row137_good121_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row137_good122_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row137_good123_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row137_good124_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row137_good125_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row137_good126_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row137_good127_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row137_good128_checked :
    goodSegmentCheck 137 45 97
      { lower := 16756, upper := 16883, witness := RowWitness.topPrime 16747 } = true := by
  exact good_top_prime_checked (i := 137) (r := 45) (s := 97) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row137_good129_checked :
    goodSegmentCheck 137 45 97
      { lower := 16884, upper := 17019, witness := RowWitness.topPrime 16883 } = true := by
  exact good_top_prime_checked (i := 137) (r := 45) (s := 97) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row137_good130_checked :
    goodSegmentCheck 137 45 97
      { lower := 17020, upper := 17147, witness := RowWitness.topPrime 17011 } = true := by
  exact good_top_prime_checked (i := 137) (r := 45) (s := 97) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row137_good131_checked :
    goodSegmentCheck 137 45 97
      { lower := 17148, upper := 17273, witness := RowWitness.topPrime 17137 } = true := by
  exact good_top_prime_checked (i := 137) (r := 45) (s := 97) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row137_good132_checked :
    goodSegmentCheck 137 45 97
      { lower := 17274, upper := 17393, witness := RowWitness.topPrime 17257 } = true := by
  exact good_top_prime_checked (i := 137) (r := 45) (s := 97) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row137_good133_checked :
    goodSegmentCheck 137 45 97
      { lower := 17394, upper := 17529, witness := RowWitness.topPrime 17393 } = true := by
  exact good_top_prime_checked (i := 137) (r := 45) (s := 97) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row137_good134_checked :
    goodSegmentCheck 137 45 97
      { lower := 17530, upper := 17655, witness := RowWitness.topPrime 17519 } = true := by
  exact good_top_prime_checked (i := 137) (r := 45) (s := 97) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row137_good135_checked :
    goodSegmentCheck 137 45 97
      { lower := 17656, upper := 17763, witness := RowWitness.topPrime 17627 } = true := by
  exact good_top_prime_checked (i := 137) (r := 45) (s := 97) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row137_good136_checked :
    goodSegmentCheck 137 45 97
      { lower := 17764, upper := 17897, witness := RowWitness.topPrime 17761 } = true := by
  exact good_top_prime_checked (i := 137) (r := 45) (s := 97) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row137_good137_checked :
    goodSegmentCheck 137 45 97
      { lower := 17898, upper := 18027, witness := RowWitness.topPrime 17891 } = true := by
  exact good_top_prime_checked (i := 137) (r := 45) (s := 97) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row137_good138_checked :
    goodSegmentCheck 137 45 97
      { lower := 18028, upper := 18149, witness := RowWitness.topPrime 18013 } = true := by
  exact good_top_prime_checked (i := 137) (r := 45) (s := 97) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row137_good139_checked :
    goodSegmentCheck 137 45 97
      { lower := 18150, upper := 18285, witness := RowWitness.topPrime 18149 } = true := by
  exact good_top_prime_checked (i := 137) (r := 45) (s := 97) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row137_good140_checked :
    goodSegmentCheck 137 45 97
      { lower := 18286, upper := 18405, witness := RowWitness.topPrime 18269 } = true := by
  exact good_top_prime_checked (i := 137) (r := 45) (s := 97) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row137_good141_checked :
    goodSegmentCheck 137 45 97
      { lower := 18406, upper := 18537, witness := RowWitness.topPrime 18401 } = true := by
  exact good_top_prime_checked (i := 137) (r := 45) (s := 97) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row137_good142_checked :
    goodSegmentCheck 137 45 97
      { lower := 18538, upper := 18631, witness := RowWitness.topPrime 18523 } = true := by
  exact good_top_prime_checked (i := 137) (r := 45) (s := 97) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row137_good143_checked :
    goodSegmentCheck 137 45 97
      { lower := 18634, upper := 18753, witness := RowWitness.topPrime 18617 } = true := by
  exact good_top_prime_checked (i := 137) (r := 45) (s := 97) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row137_good128_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row137_good129_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row137_good130_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row137_good131_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row137_good132_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row137_good133_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row137_good134_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row137_good135_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row137_good136_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row137_good137_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row137_good138_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row137_good139_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row137_good140_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row137_good141_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row137_good142_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row137_good143_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row137_good144_checked :
    goodSegmentCheck 137 45 97
      { lower := 18754, upper := 18885, witness := RowWitness.topPrime 18749 } = true := by
  exact good_top_prime_checked (i := 137) (r := 45) (s := 97) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row137_good145_checked :
    goodSegmentCheck 137 45 97
      { lower := 18886, upper := 18886, witness := RowWitness.topPrime 18869 } = true := by
  exact good_top_prime_checked (i := 137) (r := 45) (s := 97) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row137_good146_checked :
    goodSegmentCheck 137 45 97
      { lower := 19208, upper := 19302, witness := RowWitness.topPrime 19207 } = true := by
  exact good_top_prime_checked (i := 137) (r := 45) (s := 97) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row137_good147_checked :
    goodSegmentCheck 137 45 97
      { lower := 19663, upper := 19797, witness := RowWitness.topPrime 19661 } = true := by
  exact good_top_prime_checked (i := 137) (r := 45) (s := 97) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row137_good148_checked :
    goodSegmentCheck 137 45 97
      { lower := 19798, upper := 19819, witness := RowWitness.topPrime 19793 } = true := by
  exact good_top_prime_checked (i := 137) (r := 45) (s := 97) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row137_good149_checked :
    goodSegmentCheck 137 45 97
      { lower := 19881, upper := 19909, witness := RowWitness.topPrime 19867 } = true := by
  exact good_top_prime_checked (i := 137) (r := 45) (s := 97) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row137_good150_checked :
    goodSegmentCheck 137 45 97
      { lower := 20172, upper := 20297, witness := RowWitness.topPrime 20161 } = true := by
  exact good_top_prime_checked (i := 137) (r := 45) (s := 97) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row137_good151_checked :
    goodSegmentCheck 137 45 97
      { lower := 20298, upper := 20300, witness := RowWitness.topPrime 20297 } = true := by
  exact good_top_prime_checked (i := 137) (r := 45) (s := 97) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row137_good152_checked :
    goodSegmentCheck 137 45 97
      { lower := 20402, upper := 20475, witness := RowWitness.topPrime 20399 } = true := by
  exact good_top_prime_checked (i := 137) (r := 45) (s := 97) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row137_good153_checked :
    goodSegmentCheck 137 45 97
      { lower := 20480, upper := 20538, witness := RowWitness.topPrime 20479 } = true := by
  exact good_top_prime_checked (i := 137) (r := 45) (s := 97) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row137_good154_checked :
    goodSegmentCheck 137 45 97
      { lower := 20577, upper := 20616, witness := RowWitness.topPrime 20563 } = true := by
  exact good_top_prime_checked (i := 137) (r := 45) (s := 97) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row137_good155_checked :
    goodSegmentCheck 137 45 97
      { lower := 20667, upper := 20713, witness := RowWitness.topPrime 20663 } = true := by
  exact good_top_prime_checked (i := 137) (r := 45) (s := 97) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row137_good156_checked :
    goodSegmentCheck 137 45 97
      { lower := 21316, upper := 21354, witness := RowWitness.topPrime 21313 } = true := by
  exact good_top_prime_checked (i := 137) (r := 45) (s := 97) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row137_good157_checked :
    goodSegmentCheck 137 45 97
      { lower := 21870, upper := 21999, witness := RowWitness.topPrime 21863 } = true := by
  exact good_top_prime_checked (i := 137) (r := 45) (s := 97) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row137_good158_checked :
    goodSegmentCheck 137 45 97
      { lower := 22000, upper := 22011, witness := RowWitness.topPrime 21997 } = true := by
  exact good_top_prime_checked (i := 137) (r := 45) (s := 97) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row137_good159_checked :
    goodSegmentCheck 137 45 97
      { lower := 22090, upper := 22106, witness := RowWitness.topPrime 22079 } = true := by
  exact good_top_prime_checked (i := 137) (r := 45) (s := 97) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row137_good144_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row137_good145_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row137_good146_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row137_good147_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row137_good148_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row137_good149_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row137_good150_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row137_good151_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row137_good152_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row137_good153_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row137_good154_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row137_good155_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row137_good156_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row137_good157_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row137_good158_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row137_good159_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row137_good160_checked :
    goodSegmentCheck 137 45 97
      { lower := 22188, upper := 22226, witness := RowWitness.topPrime 22171 } = true := by
  exact good_top_prime_checked (i := 137) (r := 45) (s := 97) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row137_good161_checked :
    goodSegmentCheck 137 45 97
      { lower := 22445, upper := 22462, witness := RowWitness.topPrime 22441 } = true := by
  exact good_top_prime_checked (i := 137) (r := 45) (s := 97) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row137_good162_checked :
    goodSegmentCheck 137 45 97
      { lower := 22472, upper := 22605, witness := RowWitness.topPrime 22469 } = true := by
  exact good_top_prime_checked (i := 137) (r := 45) (s := 97) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row137_good163_checked :
    goodSegmentCheck 137 45 97
      { lower := 22606, upper := 22608, witness := RowWitness.topPrime 22573 } = true := by
  exact good_top_prime_checked (i := 137) (r := 45) (s := 97) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row137_good164_checked :
    goodSegmentCheck 137 45 97
      { lower := 23763, upper := 23897, witness := RowWitness.topPrime 23761 } = true := by
  exact good_top_prime_checked (i := 137) (r := 45) (s := 97) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row137_good165_checked :
    goodSegmentCheck 137 45 97
      { lower := 23898, upper := 23898, witness := RowWitness.topPrime 23893 } = true := by
  exact good_top_prime_checked (i := 137) (r := 45) (s := 97) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row137_good166_checked :
    goodSegmentCheck 137 45 97
      { lower := 24037, upper := 24165, witness := RowWitness.topPrime 24029 } = true := by
  exact good_top_prime_checked (i := 137) (r := 45) (s := 97) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row137_good167_checked :
    goodSegmentCheck 137 45 97
      { lower := 24166, upper := 24193, witness := RowWitness.topPrime 24151 } = true := by
  exact good_top_prime_checked (i := 137) (r := 45) (s := 97) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row137_good168_checked :
    goodSegmentCheck 137 45 97
      { lower := 24299, upper := 24303, witness := RowWitness.topPrime 24281 } = true := by
  exact good_top_prime_checked (i := 137) (r := 45) (s := 97) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row137_good169_checked :
    goodSegmentCheck 137 45 97
      { lower := 24334, upper := 24465, witness := RowWitness.topPrime 24329 } = true := by
  exact good_top_prime_checked (i := 137) (r := 45) (s := 97) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row137_good170_checked :
    goodSegmentCheck 137 45 97
      { lower := 24466, upper := 24503, witness := RowWitness.topPrime 24443 } = true := by
  exact good_top_prime_checked (i := 137) (r := 45) (s := 97) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row137_good171_checked :
    goodSegmentCheck 137 45 97
      { lower := 24576, upper := 24701, witness := RowWitness.topPrime 24571 } = true := by
  exact good_top_prime_checked (i := 137) (r := 45) (s := 97) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row137_good172_checked :
    goodSegmentCheck 137 45 97
      { lower := 25000, upper := 25100, witness := RowWitness.topPrime 24989 } = true := by
  exact good_top_prime_checked (i := 137) (r := 45) (s := 97) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row137_good173_checked :
    goodSegmentCheck 137 45 97
      { lower := 25281, upper := 25341, witness := RowWitness.topPrime 25261 } = true := by
  exact good_top_prime_checked (i := 137) (r := 45) (s := 97) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row137_good174_checked :
    goodSegmentCheck 137 45 97
      { lower := 26364, upper := 26380, witness := RowWitness.topPrime 26357 } = true := by
  exact good_top_prime_checked (i := 137) (r := 45) (s := 97) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row137_good175_checked :
    goodSegmentCheck 137 45 97
      { lower := 26411, upper := 26500, witness := RowWitness.topPrime 26407 } = true := by
  exact good_top_prime_checked (i := 137) (r := 45) (s := 97) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row137_good160_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row137_good161_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row137_good162_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row137_good163_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row137_good164_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row137_good165_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row137_good166_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row137_good167_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row137_good168_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row137_good169_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row137_good170_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row137_good171_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row137_good172_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row137_good173_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row137_good174_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row137_good175_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row137_good176_checked :
    goodSegmentCheck 137 45 97
      { lower := 26508, upper := 26547, witness := RowWitness.topPrime 26501 } = true := by
  exact good_top_prime_checked (i := 137) (r := 45) (s := 97) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row137_good177_checked :
    goodSegmentCheck 137 45 97
      { lower := 26624, upper := 26733, witness := RowWitness.topPrime 26597 } = true := by
  exact good_top_prime_checked (i := 137) (r := 45) (s := 97) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row137_good178_checked :
    goodSegmentCheck 137 45 97
      { lower := 26734, upper := 26760, witness := RowWitness.topPrime 26731 } = true := by
  exact good_top_prime_checked (i := 137) (r := 45) (s := 97) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row137_good179_checked :
    goodSegmentCheck 137 45 97
      { lower := 27556, upper := 27572, witness := RowWitness.topPrime 27551 } = true := by
  exact good_top_prime_checked (i := 137) (r := 45) (s := 97) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row137_good180_checked :
    goodSegmentCheck 137 45 97
      { lower := 28125, upper := 28259, witness := RowWitness.topPrime 28123 } = true := by
  exact good_top_prime_checked (i := 137) (r := 45) (s := 97) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row137_good181_checked :
    goodSegmentCheck 137 45 97
      { lower := 28260, upper := 28261, witness := RowWitness.topPrime 28229 } = true := by
  exact good_top_prime_checked (i := 137) (r := 45) (s := 97) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row137_good182_checked :
    goodSegmentCheck 137 45 97
      { lower := 28561, upper := 28567, witness := RowWitness.topPrime 28559 } = true := by
  exact good_top_prime_checked (i := 137) (r := 45) (s := 97) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row137_good183_checked :
    goodSegmentCheck 137 45 97
      { lower := 28672, upper := 28697, witness := RowWitness.topPrime 28669 } = true := by
  exact good_top_prime_checked (i := 137) (r := 45) (s := 97) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row137_good184_checked :
    goodSegmentCheck 137 45 97
      { lower := 28717, upper := 28808, witness := RowWitness.topPrime 28711 } = true := by
  exact good_top_prime_checked (i := 137) (r := 45) (s := 97) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row137_good185_checked :
    goodSegmentCheck 137 45 97
      { lower := 28812, upper := 28853, witness := RowWitness.topPrime 28807 } = true := by
  exact good_top_prime_checked (i := 137) (r := 45) (s := 97) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row137_good186_checked :
    goodSegmentCheck 137 45 97
      { lower := 29791, upper := 29904, witness := RowWitness.topPrime 29789 } = true := by
  exact good_top_prime_checked (i := 137) (r := 45) (s := 97) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row137_good187_checked :
    goodSegmentCheck 137 45 97
      { lower := 30618, upper := 30729, witness := RowWitness.topPrime 30593 } = true := by
  exact good_top_prime_checked (i := 137) (r := 45) (s := 97) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row137_good188_checked :
    goodSegmentCheck 137 45 97
      { lower := 30730, upper := 30739, witness := RowWitness.topPrime 30727 } = true := by
  exact good_top_prime_checked (i := 137) (r := 45) (s := 97) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row137_good189_checked :
    goodSegmentCheck 137 45 97
      { lower := 30926, upper := 31035, witness := RowWitness.topPrime 30911 } = true := by
  exact good_top_prime_checked (i := 137) (r := 45) (s := 97) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row137_good190_checked :
    goodSegmentCheck 137 45 97
      { lower := 31213, upper := 31329, witness := RowWitness.topPrime 31193 } = true := by
  exact good_top_prime_checked (i := 137) (r := 45) (s := 97) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row137_good191_checked :
    goodSegmentCheck 137 45 97
      { lower := 31330, upper := 31386, witness := RowWitness.topPrime 31327 } = true := by
  exact good_top_prime_checked (i := 137) (r := 45) (s := 97) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row137_good176_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row137_good177_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row137_good178_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row137_good179_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row137_good180_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row137_good181_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row137_good182_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row137_good183_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row137_good184_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row137_good185_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row137_good186_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row137_good187_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row137_good188_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row137_good189_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row137_good190_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row137_good191_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row137_good192_checked :
    goodSegmentCheck 137 45 97
      { lower := 31423, upper := 31465, witness := RowWitness.topPrime 31397 } = true := by
  exact good_top_prime_checked (i := 137) (r := 45) (s := 97) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row137_good193_checked :
    goodSegmentCheck 137 45 97
      { lower := 32805, upper := 32904, witness := RowWitness.topPrime 32803 } = true := by
  exact good_top_prime_checked (i := 137) (r := 45) (s := 97) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row137_good194_checked :
    goodSegmentCheck 137 45 97
      { lower := 33614, upper := 33625, witness := RowWitness.topPrime 33613 } = true := by
  exact good_top_prime_checked (i := 137) (r := 45) (s := 97) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row137_good195_checked :
    goodSegmentCheck 137 45 97
      { lower := 33708, upper := 33750, witness := RowWitness.topPrime 33703 } = true := by
  exact good_top_prime_checked (i := 137) (r := 45) (s := 97) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row137_good196_checked :
    goodSegmentCheck 137 45 97
      { lower := 34322, upper := 34455, witness := RowWitness.topPrime 34319 } = true := by
  exact good_top_prime_checked (i := 137) (r := 45) (s := 97) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row137_good197_checked :
    goodSegmentCheck 137 45 97
      { lower := 34456, upper := 34527, witness := RowWitness.topPrime 34439 } = true := by
  exact good_top_prime_checked (i := 137) (r := 45) (s := 97) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row137_good198_checked :
    goodSegmentCheck 137 45 97
      { lower := 36517, upper := 36633, witness := RowWitness.topPrime 36497 } = true := by
  exact good_top_prime_checked (i := 137) (r := 45) (s := 97) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row137_good199_checked :
    goodSegmentCheck 137 45 97
      { lower := 36634, upper := 36637, witness := RowWitness.topPrime 36629 } = true := by
  exact good_top_prime_checked (i := 137) (r := 45) (s := 97) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row137_good200_checked :
    goodSegmentCheck 137 45 97
      { lower := 37303, upper := 37346, witness := RowWitness.topPrime 37277 } = true := by
  exact good_top_prime_checked (i := 137) (r := 45) (s := 97) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row137_good201_checked :
    goodSegmentCheck 137 45 97
      { lower := 38307, upper := 38427, witness := RowWitness.topPrime 38303 } = true := by
  exact good_top_prime_checked (i := 137) (r := 45) (s := 97) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row137_good202_checked :
    goodSegmentCheck 137 45 97
      { lower := 39366, upper := 39440, witness := RowWitness.topPrime 39359 } = true := by
  exact good_top_prime_checked (i := 137) (r := 45) (s := 97) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row137_good203_checked :
    goodSegmentCheck 137 45 97
      { lower := 40401, upper := 40464, witness := RowWitness.topPrime 40387 } = true := by
  exact good_top_prime_checked (i := 137) (r := 45) (s := 97) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row137_good204_checked :
    goodSegmentCheck 137 45 97
      { lower := 40931, upper := 40940, witness := RowWitness.topPrime 40927 } = true := by
  exact good_top_prime_checked (i := 137) (r := 45) (s := 97) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row137_good205_checked :
    goodSegmentCheck 137 45 97
      { lower := 40960, upper := 41067, witness := RowWitness.topPrime 40949 } = true := by
  exact good_top_prime_checked (i := 137) (r := 45) (s := 97) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row137_good206_checked :
    goodSegmentCheck 137 45 97
      { lower := 45927, upper := 45932, witness := RowWitness.topPrime 45893 } = true := by
  exact good_top_prime_checked (i := 137) (r := 45) (s := 97) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row137_good207_checked :
    goodSegmentCheck 137 45 97
      { lower := 47526, upper := 47657, witness := RowWitness.topPrime 47521 } = true := by
  exact good_top_prime_checked (i := 137) (r := 45) (s := 97) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row137_good192_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row137_good193_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row137_good194_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row137_good195_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row137_good196_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row137_good197_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row137_good198_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row137_good199_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row137_good200_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row137_good201_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row137_good202_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row137_good203_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row137_good204_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row137_good205_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row137_good206_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row137_good207_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row137_good208_checked :
    goodSegmentCheck 137 45 97
      { lower := 47658, upper := 47660, witness := RowWitness.topPrime 47657 } = true := by
  exact good_top_prime_checked (i := 137) (r := 45) (s := 97) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row137_good209_checked :
    goodSegmentCheck 137 45 97
      { lower := 48013, upper := 48097, witness := RowWitness.topPrime 47981 } = true := by
  exact good_top_prime_checked (i := 137) (r := 45) (s := 97) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row137_good210_checked :
    goodSegmentCheck 137 45 97
      { lower := 48778, upper := 48804, witness := RowWitness.topPrime 48767 } = true := by
  exact good_top_prime_checked (i := 137) (r := 45) (s := 97) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row137_good211_checked :
    goodSegmentCheck 137 45 97
      { lower := 49152, upper := 49266, witness := RowWitness.topPrime 49139 } = true := by
  exact good_top_prime_checked (i := 137) (r := 45) (s := 97) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row137_good212_checked :
    goodSegmentCheck 137 45 97
      { lower := 50421, upper := 50546, witness := RowWitness.topPrime 50417 } = true := by
  exact good_top_prime_checked (i := 137) (r := 45) (s := 97) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row137_good213_checked :
    goodSegmentCheck 137 45 97
      { lower := 51076, upper := 51141, witness := RowWitness.topPrime 51071 } = true := by
  exact good_top_prime_checked (i := 137) (r := 45) (s := 97) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row137_good214_checked :
    goodSegmentCheck 137 45 97
      { lower := 55451, upper := 55577, witness := RowWitness.topPrime 55441 } = true := by
  exact good_top_prime_checked (i := 137) (r := 45) (s := 97) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row137_good215_checked :
    goodSegmentCheck 137 45 97
      { lower := 55578, upper := 55583, witness := RowWitness.topPrime 55547 } = true := by
  exact good_top_prime_checked (i := 137) (r := 45) (s := 97) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row137_good216_checked :
    goodSegmentCheck 137 45 97
      { lower := 57245, upper := 57258, witness := RowWitness.topPrime 57241 } = true := by
  exact good_top_prime_checked (i := 137) (r := 45) (s := 97) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row137_good217_checked :
    goodSegmentCheck 137 45 97
      { lower := 57344, upper := 57381, witness := RowWitness.topPrime 57331 } = true := by
  exact good_top_prime_checked (i := 137) (r := 45) (s := 97) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row137_good218_checked :
    goodSegmentCheck 137 45 97
      { lower := 58619, upper := 58700, witness := RowWitness.topPrime 58613 } = true := by
  exact good_top_prime_checked (i := 137) (r := 45) (s := 97) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row137_good219_checked :
    goodSegmentCheck 137 45 97
      { lower := 62500, upper := 62546, witness := RowWitness.topPrime 62497 } = true := by
  exact good_top_prime_checked (i := 137) (r := 45) (s := 97) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row137_good220_checked :
    goodSegmentCheck 137 45 97
      { lower := 65610, upper := 65672, witness := RowWitness.topPrime 65609 } = true := by
  exact good_top_prime_checked (i := 137) (r := 45) (s := 97) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row137_good221_checked :
    goodSegmentCheck 137 45 97
      { lower := 68644, upper := 68775, witness := RowWitness.topPrime 68639 } = true := by
  exact good_top_prime_checked (i := 137) (r := 45) (s := 97) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row137_good222_checked :
    goodSegmentCheck 137 45 97
      { lower := 68776, upper := 68787, witness := RowWitness.topPrime 68771 } = true := by
  exact good_top_prime_checked (i := 137) (r := 45) (s := 97) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row137_good223_checked :
    goodSegmentCheck 137 45 97
      { lower := 68921, upper := 69026, witness := RowWitness.topPrime 68917 } = true := by
  exact good_top_prime_checked (i := 137) (r := 45) (s := 97) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row137_good208_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row137_good209_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row137_good210_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row137_good211_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row137_good212_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row137_good213_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row137_good214_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row137_good215_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row137_good216_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row137_good217_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row137_good218_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row137_good219_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row137_good220_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row137_good221_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row137_good222_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row137_good223_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row137_good224_checked :
    goodSegmentCheck 137 45 97
      { lower := 71289, upper := 71423, witness := RowWitness.topPrime 71287 } = true := by
  exact good_top_prime_checked (i := 137) (r := 45) (s := 97) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row137_good225_checked :
    goodSegmentCheck 137 45 97
      { lower := 71424, upper := 71425, witness := RowWitness.topPrime 71419 } = true := by
  exact good_top_prime_checked (i := 137) (r := 45) (s := 97) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row137_good226_checked :
    goodSegmentCheck 137 45 97
      { lower := 73205, upper := 73303, witness := RowWitness.topPrime 73189 } = true := by
  exact good_top_prime_checked (i := 137) (r := 45) (s := 97) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row137_good227_checked :
    goodSegmentCheck 137 45 97
      { lower := 85805, upper := 85819, witness := RowWitness.topPrime 85793 } = true := by
  exact good_top_prime_checked (i := 137) (r := 45) (s := 97) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row137_good228_checked :
    goodSegmentCheck 137 45 97
      { lower := 89383, upper := 89509, witness := RowWitness.topPrime 89381 } = true := by
  exact good_top_prime_checked (i := 137) (r := 45) (s := 97) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row137_good229_checked :
    goodSegmentCheck 137 45 97
      { lower := 98415, upper := 98440, witness := RowWitness.topPrime 98411 } = true := by
  exact good_top_prime_checked (i := 137) (r := 45) (s := 97) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row137_good230_checked :
    goodSegmentCheck 137 45 97
      { lower := 137842, upper := 137917, witness := RowWitness.topPrime 137831 } = true := by
  exact good_top_prime_checked (i := 137) (r := 45) (s := 97) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row137_good231_checked :
    goodSegmentCheck 137 45 97
      { lower := 148955, upper := 149013, witness := RowWitness.topPrime 148949 } = true := by
  exact good_top_prime_checked (i := 137) (r := 45) (s := 97) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row137_good224_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row137_good225_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row137_good226_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row137_good227_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row137_good228_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row137_good229_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row137_good230_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row137_good231_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row137_goods_checked :
    row137.goods.all (goodSegmentCheck row137.height.i row137.height.r row137.height.s) = true := by
  change row137_goods.all (goodSegmentCheck 137 45 97) = true
  simp only [row137_goods, List.all_cons, List.all_nil,
    row137_good000_checked,
    row137_good001_checked,
    row137_good002_checked,
    row137_good003_checked,
    row137_good004_checked,
    row137_good005_checked,
    row137_good006_checked,
    row137_good007_checked,
    row137_good008_checked,
    row137_good009_checked,
    row137_good010_checked,
    row137_good011_checked,
    row137_good012_checked,
    row137_good013_checked,
    row137_good014_checked,
    row137_good015_checked,
    row137_good016_checked,
    row137_good017_checked,
    row137_good018_checked,
    row137_good019_checked,
    row137_good020_checked,
    row137_good021_checked,
    row137_good022_checked,
    row137_good023_checked,
    row137_good024_checked,
    row137_good025_checked,
    row137_good026_checked,
    row137_good027_checked,
    row137_good028_checked,
    row137_good029_checked,
    row137_good030_checked,
    row137_good031_checked,
    row137_good032_checked,
    row137_good033_checked,
    row137_good034_checked,
    row137_good035_checked,
    row137_good036_checked,
    row137_good037_checked,
    row137_good038_checked,
    row137_good039_checked,
    row137_good040_checked,
    row137_good041_checked,
    row137_good042_checked,
    row137_good043_checked,
    row137_good044_checked,
    row137_good045_checked,
    row137_good046_checked,
    row137_good047_checked,
    row137_good048_checked,
    row137_good049_checked,
    row137_good050_checked,
    row137_good051_checked,
    row137_good052_checked,
    row137_good053_checked,
    row137_good054_checked,
    row137_good055_checked,
    row137_good056_checked,
    row137_good057_checked,
    row137_good058_checked,
    row137_good059_checked,
    row137_good060_checked,
    row137_good061_checked,
    row137_good062_checked,
    row137_good063_checked,
    row137_good064_checked,
    row137_good065_checked,
    row137_good066_checked,
    row137_good067_checked,
    row137_good068_checked,
    row137_good069_checked,
    row137_good070_checked,
    row137_good071_checked,
    row137_good072_checked,
    row137_good073_checked,
    row137_good074_checked,
    row137_good075_checked,
    row137_good076_checked,
    row137_good077_checked,
    row137_good078_checked,
    row137_good079_checked,
    row137_good080_checked,
    row137_good081_checked,
    row137_good082_checked,
    row137_good083_checked,
    row137_good084_checked,
    row137_good085_checked,
    row137_good086_checked,
    row137_good087_checked,
    row137_good088_checked,
    row137_good089_checked,
    row137_good090_checked,
    row137_good091_checked,
    row137_good092_checked,
    row137_good093_checked,
    row137_good094_checked,
    row137_good095_checked,
    row137_good096_checked,
    row137_good097_checked,
    row137_good098_checked,
    row137_good099_checked,
    row137_good100_checked,
    row137_good101_checked,
    row137_good102_checked,
    row137_good103_checked,
    row137_good104_checked,
    row137_good105_checked,
    row137_good106_checked,
    row137_good107_checked,
    row137_good108_checked,
    row137_good109_checked,
    row137_good110_checked,
    row137_good111_checked,
    row137_good112_checked,
    row137_good113_checked,
    row137_good114_checked,
    row137_good115_checked,
    row137_good116_checked,
    row137_good117_checked,
    row137_good118_checked,
    row137_good119_checked,
    row137_good120_checked,
    row137_good121_checked,
    row137_good122_checked,
    row137_good123_checked,
    row137_good124_checked,
    row137_good125_checked,
    row137_good126_checked,
    row137_good127_checked,
    row137_good128_checked,
    row137_good129_checked,
    row137_good130_checked,
    row137_good131_checked,
    row137_good132_checked,
    row137_good133_checked,
    row137_good134_checked,
    row137_good135_checked,
    row137_good136_checked,
    row137_good137_checked,
    row137_good138_checked,
    row137_good139_checked,
    row137_good140_checked,
    row137_good141_checked,
    row137_good142_checked,
    row137_good143_checked,
    row137_good144_checked,
    row137_good145_checked,
    row137_good146_checked,
    row137_good147_checked,
    row137_good148_checked,
    row137_good149_checked,
    row137_good150_checked,
    row137_good151_checked,
    row137_good152_checked,
    row137_good153_checked,
    row137_good154_checked,
    row137_good155_checked,
    row137_good156_checked,
    row137_good157_checked,
    row137_good158_checked,
    row137_good159_checked,
    row137_good160_checked,
    row137_good161_checked,
    row137_good162_checked,
    row137_good163_checked,
    row137_good164_checked,
    row137_good165_checked,
    row137_good166_checked,
    row137_good167_checked,
    row137_good168_checked,
    row137_good169_checked,
    row137_good170_checked,
    row137_good171_checked,
    row137_good172_checked,
    row137_good173_checked,
    row137_good174_checked,
    row137_good175_checked,
    row137_good176_checked,
    row137_good177_checked,
    row137_good178_checked,
    row137_good179_checked,
    row137_good180_checked,
    row137_good181_checked,
    row137_good182_checked,
    row137_good183_checked,
    row137_good184_checked,
    row137_good185_checked,
    row137_good186_checked,
    row137_good187_checked,
    row137_good188_checked,
    row137_good189_checked,
    row137_good190_checked,
    row137_good191_checked,
    row137_good192_checked,
    row137_good193_checked,
    row137_good194_checked,
    row137_good195_checked,
    row137_good196_checked,
    row137_good197_checked,
    row137_good198_checked,
    row137_good199_checked,
    row137_good200_checked,
    row137_good201_checked,
    row137_good202_checked,
    row137_good203_checked,
    row137_good204_checked,
    row137_good205_checked,
    row137_good206_checked,
    row137_good207_checked,
    row137_good208_checked,
    row137_good209_checked,
    row137_good210_checked,
    row137_good211_checked,
    row137_good212_checked,
    row137_good213_checked,
    row137_good214_checked,
    row137_good215_checked,
    row137_good216_checked,
    row137_good217_checked,
    row137_good218_checked,
    row137_good219_checked,
    row137_good220_checked,
    row137_good221_checked,
    row137_good222_checked,
    row137_good223_checked,
    row137_good224_checked,
    row137_good225_checked,
    row137_good226_checked,
    row137_good227_checked,
    row137_good228_checked,
    row137_good229_checked,
    row137_good230_checked,
    row137_good231_checked, Bool.true_and]

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row137_goods_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row137_registered :
    decide (row137.height ∈ heightCertificateData) = true := by
  decide +kernel

theorem row137_small_checked :
    coverCheck (2 * row137.height.i + 2) (row137.height.i * (row137.height.i - 1) - 1)
      (row137.goods.map goodSegmentBounds) = true := by
  decide +kernel

theorem row137_layerCover_checked :
    coverCheck (row137.height.i * (row137.height.i - 1)) (row137.height.n0 - 1)
      (row137.layers.map CoverLayer.bounds) = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row137_registered
#print axioms B699LowIndex.LowIndexLean513dc7cc.row137_small_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row137_layerCover_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row137_bounds : List NatInterval :=
  [(276, 407), (408, 537), (538, 659), (660, 795), (796, 923), (924, 1055), (1056, 1187), (1188, 1323), (1324, 1457), (1458, 1589), (1590, 1719), (1720, 1845), (1846, 1967), (1968, 2087), (2088, 2223), (2224, 2357), (2358, 2493), (2494, 2613), (2614, 2745), (2746, 2877), (2878, 2997), (2998, 3107), (3108, 3225), (3226, 3357), (3358, 3483), (3484, 3605), (3606, 3729), (3730, 3863), (3864, 3999), (4000, 4125), (4126, 4247), (4248, 4379), (4380, 4509), (4510, 4643), (4644, 4779), (4780, 4895), (4896, 5025), (5026, 5159), (5160, 5289), (5290, 5417), (5418, 5553), (5554, 5667), (5668, 5795), (5796, 5927), (5928, 6063), (6064, 6189), (6190, 6309), (6310, 6437), (6438, 6563), (6564, 6699), (6700, 6827), (6828, 6963), (6964, 7097), (7098, 7215), (7216, 7349), (7350, 7485), (7486, 7617), (7618, 7743), (7744, 7877), (7878, 8013), (8014, 8147), (8148, 8283), (8284, 8409), (8410, 8525), (8526, 8657), (8658, 8783), (8784, 8919), (8920, 9029), (9030, 9165), (9166, 9297), (9298, 9429), (9430, 9557), (9558, 9687), (9688, 9815), (9816, 9947), (9948, 10077), (10078, 10205), (10206, 10329), (10330, 10457), (10458, 10593), (10594, 10725), (10726, 10859), (10860, 10995), (10996, 11129), (11130, 11255), (11256, 11387), (11388, 11519), (11520, 11655), (11656, 11769), (11770, 11879), (11880, 12003), (12004, 12123), (12124, 12255), (12256, 12389), (12390, 12515), (12516, 12647), (12648, 12783), (12784, 12917), (12918, 13053), (13054, 13185), (13186, 13319), (13320, 13449), (13450, 13577), (13578, 13713), (13714, 13847), (13848, 13977), (13978, 14103), (14104, 14223), (14224, 14357), (14358, 14483), (14484, 14615), (14616, 14729), (14730, 14859), (14860, 14987), (14988, 15119), (15120, 15243), (15244, 15377), (15378, 15513), (15514, 15647), (15648, 15783), (15784, 15909), (15910, 16043), (16044, 16169), (16170, 16277), (16278, 16409), (16410, 16517), (16518, 16629), (16630, 16755), (16756, 16883), (16884, 17019), (17020, 17147), (17148, 17273), (17274, 17393), (17394, 17529), (17530, 17655), (17656, 17763), (17764, 17897), (17898, 18027), (18028, 18149), (18150, 18285), (18286, 18405), (18406, 18537), (18538, 18631), (18634, 18753), (18754, 18885), (18886, 18886), (19208, 19302), (19663, 19797), (19798, 19819), (19881, 19909), (20172, 20297), (20298, 20300), (20402, 20475), (20480, 20538), (20577, 20616), (20667, 20713), (21316, 21354), (21870, 21999), (22000, 22011), (22090, 22106), (22188, 22226), (22445, 22462), (22472, 22605), (22606, 22608), (23763, 23897), (23898, 23898), (24037, 24165), (24166, 24193), (24299, 24303), (24334, 24465), (24466, 24503), (24576, 24701), (25000, 25100), (25281, 25341), (26364, 26380), (26411, 26500), (26508, 26547), (26624, 26733), (26734, 26760), (27556, 27572), (28125, 28259), (28260, 28261), (28561, 28567), (28672, 28697), (28717, 28808), (28812, 28853), (29791, 29904), (30618, 30729), (30730, 30739), (30926, 31035), (31213, 31329), (31330, 31386), (31423, 31465), (32805, 32904), (33614, 33625), (33708, 33750), (34322, 34455), (34456, 34527), (36517, 36633), (36634, 36637), (37303, 37346), (38307, 38427), (39366, 39440), (40401, 40464), (40931, 40940), (40960, 41067), (45927, 45932), (47526, 47657), (47658, 47660), (48013, 48097), (48778, 48804), (49152, 49266), (50421, 50546), (51076, 51141), (55451, 55577), (55578, 55583), (57245, 57258), (57344, 57381), (58619, 58700), (62500, 62546), (65610, 65672), (68644, 68775), (68776, 68787), (68921, 69026), (71289, 71423), (71424, 71425), (73205, 73303), (85805, 85819), (89383, 89509), (98415, 98440), (137842, 137917), (148955, 149013)]

theorem row137_bounds_eq : row137.goods.map goodSegmentBounds = row137_bounds := by
  rfl

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row137_bounds_eq

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row137_layer000_intervals : List ColouredInterval :=
  [(2, 20480, 20616), (2, 22528, 22664), (2, 24576, 24712), (2, 26624, 26760), (2, 28672, 28808), (2, 20480, 20616), (2, 24576, 24712), (2, 28672, 28808), (2, 32768, 32904), (2, 36864, 37000), (2, 24576, 24712), (2, 32768, 32904), (2, 32768, 32904), (2, 32768, 32904), (3, 19683, 19819), (3, 21870, 22006), (3, 24057, 24193), (3, 26244, 26380), (3, 28431, 28567), (3, 30618, 30754), (3, 19683, 19819), (3, 26244, 26380), (3, 32805, 32941), (3, 19683, 19819), (5, 18750, 18886), (5, 21875, 22011), (5, 25000, 25136), (5, 28125, 28261), (5, 31250, 31386), (5, 34375, 34511), (5, 31250, 31386), (7, 19208, 19344), (7, 21609, 21745), (7, 24010, 24146), (7, 26411, 26547), (7, 28812, 28948), (7, 31213, 31349), (7, 33614, 33750), (7, 33614, 33750), (11, 18634, 18770), (11, 29282, 29418), (13, 19773, 19909), (13, 21970, 22106), (13, 24167, 24303), (13, 26364, 26500), (13, 28561, 28697), (13, 30758, 30894), (13, 28561, 28697), (17, 19652, 19788), (17, 24565, 24701), (17, 29478, 29614), (17, 34391, 34527), (19, 20577, 20713), (19, 27436, 27572), (19, 34295, 34431), (23, 24334, 24470), (23, 36501, 36637), (29, 24389, 24525), (31, 29791, 29927), (37, 19166, 19302), (41, 20172, 20308), (41, 21853, 21989), (41, 23534, 23670), (43, 20339, 20475), (43, 22188, 22324), (43, 24037, 24173), (43, 25886, 26022), (47, 19881, 20017), (47, 22090, 22226), (47, 24299, 24435), (47, 26508, 26644), (47, 28717, 28853), (47, 30926, 31062), (53, 19663, 19799), (53, 22472, 22608), (53, 25281, 25417), (53, 28090, 28226), (53, 30899, 31035), (53, 33708, 33844), (53, 36517, 36653), (59, 20886, 21022), (59, 24367, 24503), (59, 27848, 27984), (59, 31329, 31465), (59, 34810, 34946), (61, 18632, 18741), (61, 22326, 22462), (61, 26047, 26183), (61, 29768, 29904), (61, 33489, 33625), (61, 37210, 37263), (67, 22445, 22581), (67, 26934, 27070), (67, 31423, 31559), (67, 35912, 36048), (71, 20164, 20300), (71, 25205, 25341), (71, 30246, 30382), (71, 35287, 35423), (73, 21316, 21452), (73, 26645, 26781), (73, 31974, 32110), (79, 18723, 18859), (79, 24964, 25100), (79, 31205, 31341), (83, 20667, 20803), (83, 27556, 27692), (83, 34445, 34581), (89, 23763, 23899), (89, 31684, 31820), (97, 18818, 18954), (97, 28227, 28363), (101, 20402, 20538), (101, 30603, 30739), (103, 21218, 21354), (103, 31827, 31963), (107, 22898, 23034), (107, 34347, 34483), (109, 23762, 23898), (109, 35643, 35779), (113, 25538, 25674), (127, 32258, 32394), (131, 34322, 34458)]

def row137_layer000_block000 : List ColouredInterval :=
  [(2, 20480, 20616), (2, 22528, 22664), (2, 24576, 24712), (2, 26624, 26760), (2, 28672, 28808), (2, 20480, 20616), (2, 24576, 24712), (2, 28672, 28808), (2, 32768, 32904), (2, 36864, 37000), (2, 24576, 24712), (2, 32768, 32904), (2, 32768, 32904), (2, 32768, 32904), (3, 19683, 19819), (3, 21870, 22006)]

def row137_layer000_block001 : List ColouredInterval :=
  [(3, 24057, 24193), (3, 26244, 26380), (3, 28431, 28567), (3, 30618, 30754), (3, 19683, 19819), (3, 26244, 26380), (3, 32805, 32941), (3, 19683, 19819), (5, 18750, 18886), (5, 21875, 22011), (5, 25000, 25136), (5, 28125, 28261), (5, 31250, 31386), (5, 34375, 34511), (5, 31250, 31386), (7, 19208, 19344)]

def row137_layer000_block002 : List ColouredInterval :=
  [(7, 21609, 21745), (7, 24010, 24146), (7, 26411, 26547), (7, 28812, 28948), (7, 31213, 31349), (7, 33614, 33750), (7, 33614, 33750), (11, 18634, 18770), (11, 29282, 29418), (13, 19773, 19909), (13, 21970, 22106), (13, 24167, 24303), (13, 26364, 26500), (13, 28561, 28697), (13, 30758, 30894), (13, 28561, 28697)]

def row137_layer000_block003 : List ColouredInterval :=
  [(17, 19652, 19788), (17, 24565, 24701), (17, 29478, 29614), (17, 34391, 34527), (19, 20577, 20713), (19, 27436, 27572), (19, 34295, 34431), (23, 24334, 24470), (23, 36501, 36637), (29, 24389, 24525), (31, 29791, 29927), (37, 19166, 19302), (41, 20172, 20308), (41, 21853, 21989), (41, 23534, 23670), (43, 20339, 20475)]

def row137_layer000_block004 : List ColouredInterval :=
  [(43, 22188, 22324), (43, 24037, 24173), (43, 25886, 26022), (47, 19881, 20017), (47, 22090, 22226), (47, 24299, 24435), (47, 26508, 26644), (47, 28717, 28853), (47, 30926, 31062), (53, 19663, 19799), (53, 22472, 22608), (53, 25281, 25417), (53, 28090, 28226), (53, 30899, 31035), (53, 33708, 33844), (53, 36517, 36653)]

def row137_layer000_block005 : List ColouredInterval :=
  [(59, 20886, 21022), (59, 24367, 24503), (59, 27848, 27984), (59, 31329, 31465), (59, 34810, 34946), (61, 18632, 18741), (61, 22326, 22462), (61, 26047, 26183), (61, 29768, 29904), (61, 33489, 33625), (61, 37210, 37263), (67, 22445, 22581), (67, 26934, 27070), (67, 31423, 31559), (67, 35912, 36048), (71, 20164, 20300)]

def row137_layer000_block006 : List ColouredInterval :=
  [(71, 25205, 25341), (71, 30246, 30382), (71, 35287, 35423), (73, 21316, 21452), (73, 26645, 26781), (73, 31974, 32110), (79, 18723, 18859), (79, 24964, 25100), (79, 31205, 31341), (83, 20667, 20803), (83, 27556, 27692), (83, 34445, 34581), (89, 23763, 23899), (89, 31684, 31820), (97, 18818, 18954), (97, 28227, 28363)]

def row137_layer000_block007 : List ColouredInterval :=
  [(101, 20402, 20538), (101, 30603, 30739), (103, 21218, 21354), (103, 31827, 31963), (107, 22898, 23034), (107, 34347, 34483), (109, 23762, 23898), (109, 35643, 35779), (113, 25538, 25674), (127, 32258, 32394), (131, 34322, 34458)]

def row137_layer000_chunks : List (List ColouredInterval) :=
  [row137_layer000_block000, row137_layer000_block001, row137_layer000_block002, row137_layer000_block003, row137_layer000_block004, row137_layer000_block005, row137_layer000_block006, row137_layer000_block007]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row137_layer000_intervals

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row137_layer000_arithmetic : LayerArithmeticValid row137.height { lower := 18632, upper := 37264, M := 14 } := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row137_layer000_arithmetic

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row137_layer000_enumeration :
    activePowerIntervalList 137 14 18632 37264 = row137_layer000_intervals := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row137_layer000_enumeration

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row137_layer000_pairs000 :
    row137_layer000_block000.all (fun I => row137_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row137_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row137_layer000_pairs000

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row137_layer000_pairs001 :
    row137_layer000_block001.all (fun I => row137_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row137_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row137_layer000_pairs001

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row137_layer000_pairs002 :
    row137_layer000_block002.all (fun I => row137_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row137_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row137_layer000_pairs002

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row137_layer000_pairs003 :
    row137_layer000_block003.all (fun I => row137_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row137_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row137_layer000_pairs003

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row137_layer000_pairs004 :
    row137_layer000_block004.all (fun I => row137_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row137_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row137_layer000_pairs004

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row137_layer000_pairs005 :
    row137_layer000_block005.all (fun I => row137_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row137_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row137_layer000_pairs005

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row137_layer000_pairs006 :
    row137_layer000_block006.all (fun I => row137_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row137_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row137_layer000_pairs006

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row137_layer000_pairs007 :
    row137_layer000_block007.all (fun I => row137_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row137_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row137_layer000_pairs007

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row137_layer000_chunks_eq : row137_layer000_chunks.flatten = row137_layer000_intervals := by
  rfl

theorem row137_layer000_pairs : pairCoverCheck row137_layer000_intervals row137_bounds = true := by
  apply pairCoverCheck_of_chunks row137_layer000_chunks_eq
  intro block hblock
  simp only [row137_layer000_chunks, List.mem_cons, List.mem_nil_iff, or_false] at hblock
  rcases hblock with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
  · exact row137_layer000_pairs000
  · exact row137_layer000_pairs001
  · exact row137_layer000_pairs002
  · exact row137_layer000_pairs003
  · exact row137_layer000_pairs004
  · exact row137_layer000_pairs005
  · exact row137_layer000_pairs006
  · exact row137_layer000_pairs007

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row137_layer000_chunks_eq
#print axioms B699LowIndex.LowIndexLean513dc7cc.row137_layer000_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row137_layer000_checked :
    coverLayerCheck row137.height row137.goods { lower := 18632, upper := 37264, M := 14 } = true := by
  exact coverLayerCheck_of_parts row137_layer000_arithmetic row137_layer000_enumeration row137_bounds_eq row137_layer000_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row137_layer000_checked

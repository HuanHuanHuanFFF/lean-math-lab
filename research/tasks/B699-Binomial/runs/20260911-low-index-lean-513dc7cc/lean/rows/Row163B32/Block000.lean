import research.tasks.«B699-Binomial».runs.«20260909-low-index-structure-b41a5a63».lean.FiniteCover
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.WitnessBridge
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.LayerParts
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.PairChunks

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row163_height : HeightCertificateDatum := { i := 163, r := 54, s := 116, n0Power10 := 7 }

def row163_goods : List GoodSegment := [
  { lower := 328, upper := 479, witness := RowWitness.topPrime 317 },
  { lower := 480, upper := 641, witness := RowWitness.topPrime 479 },
  { lower := 642, upper := 803, witness := RowWitness.topPrime 641 },
  { lower := 804, upper := 959, witness := RowWitness.topPrime 797 },
  { lower := 960, upper := 1115, witness := RowWitness.topPrime 953 },
  { lower := 1116, upper := 1271, witness := RowWitness.topPrime 1109 },
  { lower := 1272, upper := 1421, witness := RowWitness.topPrime 1259 },
  { lower := 1422, upper := 1571, witness := RowWitness.topPrime 1409 },
  { lower := 1572, upper := 1733, witness := RowWitness.topPrime 1571 },
  { lower := 1734, upper := 1895, witness := RowWitness.topPrime 1733 },
  { lower := 1896, upper := 2051, witness := RowWitness.topPrime 1889 },
  { lower := 2052, upper := 2201, witness := RowWitness.topPrime 2039 },
  { lower := 2202, upper := 2341, witness := RowWitness.topPrime 2179 },
  { lower := 2342, upper := 2503, witness := RowWitness.topPrime 2341 },
  { lower := 2504, upper := 2665, witness := RowWitness.topPrime 2503 },
  { lower := 2666, upper := 2825, witness := RowWitness.topPrime 2663 },
  { lower := 2826, upper := 2981, witness := RowWitness.topPrime 2819 },
  { lower := 2982, upper := 3133, witness := RowWitness.topPrime 2971 },
  { lower := 3134, upper := 3283, witness := RowWitness.topPrime 3121 },
  { lower := 3284, upper := 3433, witness := RowWitness.topPrime 3271 },
  { lower := 3434, upper := 3595, witness := RowWitness.topPrime 3433 },
  { lower := 3596, upper := 3755, witness := RowWitness.topPrime 3593 },
  { lower := 3756, upper := 3901, witness := RowWitness.topPrime 3739 },
  { lower := 3902, upper := 4051, witness := RowWitness.topPrime 3889 },
  { lower := 4052, upper := 4213, witness := RowWitness.topPrime 4051 },
  { lower := 4214, upper := 4373, witness := RowWitness.topPrime 4211 },
  { lower := 4374, upper := 4535, witness := RowWitness.topPrime 4373 },
  { lower := 4536, upper := 4685, witness := RowWitness.topPrime 4523 },
  { lower := 4686, upper := 4841, witness := RowWitness.topPrime 4679 },
  { lower := 4842, upper := 4993, witness := RowWitness.topPrime 4831 },
  { lower := 4994, upper := 5155, witness := RowWitness.topPrime 4993 },
  { lower := 5156, upper := 5315, witness := RowWitness.topPrime 5153 },
  { lower := 5316, upper := 5471, witness := RowWitness.topPrime 5309 },
  { lower := 5472, upper := 5633, witness := RowWitness.topPrime 5471 },
  { lower := 5634, upper := 5785, witness := RowWitness.topPrime 5623 },
  { lower := 5786, upper := 5945, witness := RowWitness.topPrime 5783 },
  { lower := 5946, upper := 6101, witness := RowWitness.topPrime 5939 },
  { lower := 6102, upper := 6263, witness := RowWitness.topPrime 6101 },
  { lower := 6264, upper := 6425, witness := RowWitness.topPrime 6263 },
  { lower := 6426, upper := 6583, witness := RowWitness.topPrime 6421 },
  { lower := 6584, upper := 6743, witness := RowWitness.topPrime 6581 },
  { lower := 6744, upper := 6899, witness := RowWitness.topPrime 6737 },
  { lower := 6900, upper := 7061, witness := RowWitness.topPrime 6899 },
  { lower := 7062, upper := 7219, witness := RowWitness.topPrime 7057 },
  { lower := 7220, upper := 7381, witness := RowWitness.topPrime 7219 },
  { lower := 7382, upper := 7531, witness := RowWitness.topPrime 7369 },
  { lower := 7532, upper := 7691, witness := RowWitness.topPrime 7529 },
  { lower := 7692, upper := 7853, witness := RowWitness.topPrime 7691 },
  { lower := 7854, upper := 8015, witness := RowWitness.topPrime 7853 },
  { lower := 8016, upper := 8173, witness := RowWitness.topPrime 8011 },
  { lower := 8174, upper := 8333, witness := RowWitness.topPrime 8171 },
  { lower := 8334, upper := 8491, witness := RowWitness.topPrime 8329 },
  { lower := 8492, upper := 8629, witness := RowWitness.topPrime 8467 },
  { lower := 8630, upper := 8791, witness := RowWitness.topPrime 8629 },
  { lower := 8792, upper := 8945, witness := RowWitness.topPrime 8783 },
  { lower := 8946, upper := 9103, witness := RowWitness.topPrime 8941 },
  { lower := 9104, upper := 9265, witness := RowWitness.topPrime 9103 },
  { lower := 9266, upper := 9419, witness := RowWitness.topPrime 9257 },
  { lower := 9420, upper := 9581, witness := RowWitness.topPrime 9419 },
  { lower := 9582, upper := 9713, witness := RowWitness.topPrime 9551 },
  { lower := 9714, upper := 9859, witness := RowWitness.topPrime 9697 },
  { lower := 9860, upper := 10021, witness := RowWitness.topPrime 9859 },
  { lower := 10022, upper := 10171, witness := RowWitness.topPrime 10009 },
  { lower := 10172, upper := 10331, witness := RowWitness.topPrime 10169 },
  { lower := 10332, upper := 10493, witness := RowWitness.topPrime 10331 },
  { lower := 10494, upper := 10649, witness := RowWitness.topPrime 10487 },
  { lower := 10650, upper := 10801, witness := RowWitness.topPrime 10639 },
  { lower := 10802, upper := 10961, witness := RowWitness.topPrime 10799 },
  { lower := 10962, upper := 11119, witness := RowWitness.topPrime 10957 },
  { lower := 11120, upper := 11281, witness := RowWitness.topPrime 11119 },
  { lower := 11282, upper := 11441, witness := RowWitness.topPrime 11279 },
  { lower := 11442, upper := 11599, witness := RowWitness.topPrime 11437 },
  { lower := 11600, upper := 11759, witness := RowWitness.topPrime 11597 },
  { lower := 11760, upper := 11905, witness := RowWitness.topPrime 11743 },
  { lower := 11906, upper := 12065, witness := RowWitness.topPrime 11903 },
  { lower := 12066, upper := 12211, witness := RowWitness.topPrime 12049 },
  { lower := 12212, upper := 12373, witness := RowWitness.topPrime 12211 },
  { lower := 12374, upper := 12535, witness := RowWitness.topPrime 12373 },
  { lower := 12536, upper := 12689, witness := RowWitness.topPrime 12527 },
  { lower := 12690, upper := 12851, witness := RowWitness.topPrime 12689 },
  { lower := 12852, upper := 13003, witness := RowWitness.topPrime 12841 },
  { lower := 13004, upper := 13165, witness := RowWitness.topPrime 13003 },
  { lower := 13166, upper := 13325, witness := RowWitness.topPrime 13163 },
  { lower := 13326, upper := 13475, witness := RowWitness.topPrime 13313 },
  { lower := 13476, upper := 13631, witness := RowWitness.topPrime 13469 },
  { lower := 13632, upper := 13789, witness := RowWitness.topPrime 13627 },
  { lower := 13790, upper := 13951, witness := RowWitness.topPrime 13789 },
  { lower := 13952, upper := 14095, witness := RowWitness.topPrime 13933 },
  { lower := 14096, upper := 14249, witness := RowWitness.topPrime 14087 },
  { lower := 14250, upper := 14411, witness := RowWitness.topPrime 14249 },
  { lower := 14412, upper := 14573, witness := RowWitness.topPrime 14411 },
  { lower := 14574, upper := 14725, witness := RowWitness.topPrime 14563 },
  { lower := 14726, upper := 14885, witness := RowWitness.topPrime 14723 },
  { lower := 14886, upper := 15041, witness := RowWitness.topPrime 14879 },
  { lower := 15042, upper := 15193, witness := RowWitness.topPrime 15031 },
  { lower := 15194, upper := 15355, witness := RowWitness.topPrime 15193 },
  { lower := 15356, upper := 15511, witness := RowWitness.topPrime 15349 },
  { lower := 15512, upper := 15673, witness := RowWitness.topPrime 15511 },
  { lower := 15674, upper := 15833, witness := RowWitness.topPrime 15671 },
  { lower := 15834, upper := 15985, witness := RowWitness.topPrime 15823 },
  { lower := 15986, upper := 16135, witness := RowWitness.topPrime 15973 },
  { lower := 16136, upper := 16289, witness := RowWitness.topPrime 16127 },
  { lower := 16290, upper := 16435, witness := RowWitness.topPrime 16273 },
  { lower := 16436, upper := 16595, witness := RowWitness.topPrime 16433 },
  { lower := 16596, upper := 16735, witness := RowWitness.topPrime 16573 },
  { lower := 16736, upper := 16891, witness := RowWitness.topPrime 16729 },
  { lower := 16892, upper := 17051, witness := RowWitness.topPrime 16889 },
  { lower := 17052, upper := 17209, witness := RowWitness.topPrime 17047 },
  { lower := 17210, upper := 17371, witness := RowWitness.topPrime 17209 },
  { lower := 17372, upper := 17521, witness := RowWitness.topPrime 17359 },
  { lower := 17522, upper := 17681, witness := RowWitness.topPrime 17519 },
  { lower := 17682, upper := 17843, witness := RowWitness.topPrime 17681 },
  { lower := 17844, upper := 18001, witness := RowWitness.topPrime 17839 },
  { lower := 18002, upper := 18151, witness := RowWitness.topPrime 17989 },
  { lower := 18152, upper := 18311, witness := RowWitness.topPrime 18149 },
  { lower := 18312, upper := 18473, witness := RowWitness.topPrime 18311 },
  { lower := 18474, upper := 18623, witness := RowWitness.topPrime 18461 },
  { lower := 18624, upper := 18779, witness := RowWitness.topPrime 18617 },
  { lower := 18780, upper := 18935, witness := RowWitness.topPrime 18773 },
  { lower := 18936, upper := 19081, witness := RowWitness.topPrime 18919 },
  { lower := 19082, upper := 19243, witness := RowWitness.topPrime 19081 },
  { lower := 19244, upper := 19399, witness := RowWitness.topPrime 19237 },
  { lower := 19400, upper := 19553, witness := RowWitness.topPrime 19391 },
  { lower := 19554, upper := 19715, witness := RowWitness.topPrime 19553 },
  { lower := 19716, upper := 19871, witness := RowWitness.topPrime 19709 },
  { lower := 19872, upper := 20029, witness := RowWitness.topPrime 19867 },
  { lower := 20030, upper := 20191, witness := RowWitness.topPrime 20029 },
  { lower := 20192, upper := 20345, witness := RowWitness.topPrime 20183 },
  { lower := 20346, upper := 20503, witness := RowWitness.topPrime 20341 },
  { lower := 20504, upper := 20645, witness := RowWitness.topPrime 20483 },
  { lower := 20646, upper := 20803, witness := RowWitness.topPrime 20641 },
  { lower := 20804, upper := 20951, witness := RowWitness.topPrime 20789 },
  { lower := 20952, upper := 21109, witness := RowWitness.topPrime 20947 },
  { lower := 21110, upper := 21269, witness := RowWitness.topPrime 21107 },
  { lower := 21270, upper := 21431, witness := RowWitness.topPrime 21269 },
  { lower := 21432, upper := 21581, witness := RowWitness.topPrime 21419 },
  { lower := 21582, upper := 21739, witness := RowWitness.topPrime 21577 },
  { lower := 21740, upper := 21901, witness := RowWitness.topPrime 21739 },
  { lower := 21902, upper := 22055, witness := RowWitness.topPrime 21893 },
  { lower := 22056, upper := 22213, witness := RowWitness.topPrime 22051 },
  { lower := 22214, upper := 22355, witness := RowWitness.topPrime 22193 },
  { lower := 22356, upper := 22511, witness := RowWitness.topPrime 22349 },
  { lower := 22512, upper := 22673, witness := RowWitness.topPrime 22511 },
  { lower := 22674, upper := 22831, witness := RowWitness.topPrime 22669 },
  { lower := 22832, upper := 22979, witness := RowWitness.topPrime 22817 },
  { lower := 22980, upper := 23135, witness := RowWitness.topPrime 22973 },
  { lower := 23136, upper := 23293, witness := RowWitness.topPrime 23131 },
  { lower := 23294, upper := 23455, witness := RowWitness.topPrime 23293 },
  { lower := 23456, upper := 23609, witness := RowWitness.topPrime 23447 },
  { lower := 23610, upper := 23771, witness := RowWitness.topPrime 23609 },
  { lower := 23772, upper := 23929, witness := RowWitness.topPrime 23767 },
  { lower := 23930, upper := 24091, witness := RowWitness.topPrime 23929 },
  { lower := 24092, upper := 24253, witness := RowWitness.topPrime 24091 },
  { lower := 24254, upper := 24413, witness := RowWitness.topPrime 24251 },
  { lower := 24414, upper := 24575, witness := RowWitness.topPrime 24413 },
  { lower := 24576, upper := 24733, witness := RowWitness.topPrime 24571 },
  { lower := 24734, upper := 24895, witness := RowWitness.topPrime 24733 },
  { lower := 24896, upper := 25051, witness := RowWitness.topPrime 24889 },
  { lower := 25052, upper := 25199, witness := RowWitness.topPrime 25037 },
  { lower := 25200, upper := 25351, witness := RowWitness.topPrime 25189 },
  { lower := 25352, upper := 25511, witness := RowWitness.topPrime 25349 },
  { lower := 25512, upper := 25633, witness := RowWitness.topPrime 25471 },
  { lower := 25634, upper := 25795, witness := RowWitness.topPrime 25633 },
  { lower := 25796, upper := 25955, witness := RowWitness.topPrime 25793 },
  { lower := 25956, upper := 26113, witness := RowWitness.topPrime 25951 },
  { lower := 26114, upper := 26275, witness := RowWitness.topPrime 26113 },
  { lower := 26276, upper := 26406, witness := RowWitness.topPrime 26267 },
  { lower := 26411, upper := 26569, witness := RowWitness.topPrime 26407 },
  { lower := 26570, upper := 26573, witness := RowWitness.topPrime 26561 },
  { lower := 26624, upper := 26759, witness := RowWitness.topPrime 26597 },
  { lower := 26760, upper := 26786, witness := RowWitness.topPrime 26759 },
  { lower := 27556, upper := 27598, witness := RowWitness.topPrime 27551 },
  { lower := 28125, upper := 28285, witness := RowWitness.topPrime 28123 },
  { lower := 28286, upper := 28287, witness := RowWitness.topPrime 28283 },
  { lower := 28561, upper := 28593, witness := RowWitness.topPrime 28559 },
  { lower := 28672, upper := 28831, witness := RowWitness.topPrime 28669 },
  { lower := 28832, upper := 28879, witness := RowWitness.topPrime 28817 },
  { lower := 29791, upper := 29930, witness := RowWitness.topPrime 29789 },
  { lower := 31213, upper := 31355, witness := RowWitness.topPrime 31193 },
  { lower := 31356, upper := 31412, witness := RowWitness.topPrime 31337 },
  { lower := 31423, upper := 31491, witness := RowWitness.topPrime 31397 },
  { lower := 31827, upper := 31846, witness := RowWitness.topPrime 31817 },
  { lower := 31974, upper := 31989, witness := RowWitness.topPrime 31973 },
  { lower := 32805, upper := 32930, witness := RowWitness.topPrime 32803 },
  { lower := 33614, upper := 33651, witness := RowWitness.topPrime 33613 },
  { lower := 33708, upper := 33776, witness := RowWitness.topPrime 33703 },
  { lower := 34322, upper := 34481, witness := RowWitness.topPrime 34319 },
  { lower := 34482, upper := 34553, witness := RowWitness.topPrime 34471 },
  { lower := 36517, upper := 36659, witness := RowWitness.topPrime 36497 },
  { lower := 36660, upper := 36663, witness := RowWitness.topPrime 36653 },
  { lower := 37303, upper := 37372, witness := RowWitness.topPrime 37277 },
  { lower := 37446, upper := 37465, witness := RowWitness.topPrime 37441 },
  { lower := 37500, upper := 37655, witness := RowWitness.topPrime 37493 },
  { lower := 37656, upper := 37700, witness := RowWitness.topPrime 37649 },
  { lower := 38307, upper := 38453, witness := RowWitness.topPrime 38303 },
  { lower := 39366, upper := 39466, witness := RowWitness.topPrime 39359 },
  { lower := 40401, upper := 40490, witness := RowWitness.topPrime 40387 },
  { lower := 40931, upper := 41089, witness := RowWitness.topPrime 40927 },
  { lower := 41090, upper := 41093, witness := RowWitness.topPrime 41081 },
  { lower := 45369, upper := 45415, witness := RowWitness.topPrime 45361 },
  { lower := 45927, upper := 45958, witness := RowWitness.topPrime 45893 },
  { lower := 47526, upper := 47683, witness := RowWitness.topPrime 47521 },
  { lower := 47684, upper := 47686, witness := RowWitness.topPrime 47681 },
  { lower := 48013, upper := 48123, witness := RowWitness.topPrime 47981 },
  { lower := 48373, upper := 48385, witness := RowWitness.topPrime 48371 },
  { lower := 48387, upper := 48535, witness := RowWitness.topPrime 48383 },
  { lower := 48778, upper := 48830, witness := RowWitness.topPrime 48767 },
  { lower := 49152, upper := 49292, witness := RowWitness.topPrime 49139 },
  { lower := 49298, upper := 49314, witness := RowWitness.topPrime 49297 },
  { lower := 49379, upper := 49460, witness := RowWitness.topPrime 49369 },
  { lower := 50421, upper := 50572, witness := RowWitness.topPrime 50417 },
  { lower := 51076, upper := 51167, witness := RowWitness.topPrime 51071 },
  { lower := 56307, upper := 56331, witness := RowWitness.topPrime 56299 },
  { lower := 56454, upper := 56469, witness := RowWitness.topPrime 56453 },
  { lower := 57245, upper := 57284, witness := RowWitness.topPrime 57241 },
  { lower := 57344, upper := 57407, witness := RowWitness.topPrime 57331 },
  { lower := 68694, upper := 68806, witness := RowWitness.topPrime 68687 },
  { lower := 71289, upper := 71449, witness := RowWitness.topPrime 71287 },
  { lower := 71450, upper := 71451, witness := RowWitness.topPrime 71443 },
  { lower := 73205, upper := 73329, witness := RowWitness.topPrime 73189 },
  { lower := 85805, upper := 85845, witness := RowWitness.topPrime 85793 },
  { lower := 89383, upper := 89535, witness := RowWitness.topPrime 89381 },
  { lower := 93845, upper := 93912, witness := RowWitness.topPrime 93827 },
  { lower := 98415, upper := 98466, witness := RowWitness.topPrime 98411 },
  { lower := 103041, upper := 103128, witness := RowWitness.topPrime 103007 },
  { lower := 137842, upper := 137943, witness := RowWitness.topPrime 137831 },
  { lower := 148955, upper := 149039, witness := RowWitness.topPrime 148949 }
]

def row163_layers : List CoverLayer := [
  { lower := 26406, upper := 52812, M := 13 },
  { lower := 52812, upper := 105624, M := 9 },
  { lower := 105624, upper := 211248, M := 7 },
  { lower := 211248, upper := 422496, M := 5 },
  { lower := 422496, upper := 844992, M := 4 },
  { lower := 844992, upper := 1689984, M := 3 },
  { lower := 1689984, upper := 3379968, M := 2 },
  { lower := 3379968, upper := 6759936, M := 2 },
  { lower := 6759936, upper := 10000000, M := 1 }
]

def row163 : FiniteCoverRow := {
  height := row163_height,
  goods := row163_goods,
  layers := row163_layers
}


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row163

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row163_good000_checked :
    goodSegmentCheck 163 54 116
      { lower := 328, upper := 479, witness := RowWitness.topPrime 317 } = true := by
  exact good_top_prime_checked (i := 163) (r := 54) (s := 116) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row163_good001_checked :
    goodSegmentCheck 163 54 116
      { lower := 480, upper := 641, witness := RowWitness.topPrime 479 } = true := by
  exact good_top_prime_checked (i := 163) (r := 54) (s := 116) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row163_good002_checked :
    goodSegmentCheck 163 54 116
      { lower := 642, upper := 803, witness := RowWitness.topPrime 641 } = true := by
  exact good_top_prime_checked (i := 163) (r := 54) (s := 116) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row163_good003_checked :
    goodSegmentCheck 163 54 116
      { lower := 804, upper := 959, witness := RowWitness.topPrime 797 } = true := by
  exact good_top_prime_checked (i := 163) (r := 54) (s := 116) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row163_good004_checked :
    goodSegmentCheck 163 54 116
      { lower := 960, upper := 1115, witness := RowWitness.topPrime 953 } = true := by
  exact good_top_prime_checked (i := 163) (r := 54) (s := 116) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row163_good005_checked :
    goodSegmentCheck 163 54 116
      { lower := 1116, upper := 1271, witness := RowWitness.topPrime 1109 } = true := by
  exact good_top_prime_checked (i := 163) (r := 54) (s := 116) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row163_good006_checked :
    goodSegmentCheck 163 54 116
      { lower := 1272, upper := 1421, witness := RowWitness.topPrime 1259 } = true := by
  exact good_top_prime_checked (i := 163) (r := 54) (s := 116) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row163_good007_checked :
    goodSegmentCheck 163 54 116
      { lower := 1422, upper := 1571, witness := RowWitness.topPrime 1409 } = true := by
  exact good_top_prime_checked (i := 163) (r := 54) (s := 116) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row163_good008_checked :
    goodSegmentCheck 163 54 116
      { lower := 1572, upper := 1733, witness := RowWitness.topPrime 1571 } = true := by
  exact good_top_prime_checked (i := 163) (r := 54) (s := 116) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row163_good009_checked :
    goodSegmentCheck 163 54 116
      { lower := 1734, upper := 1895, witness := RowWitness.topPrime 1733 } = true := by
  exact good_top_prime_checked (i := 163) (r := 54) (s := 116) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row163_good010_checked :
    goodSegmentCheck 163 54 116
      { lower := 1896, upper := 2051, witness := RowWitness.topPrime 1889 } = true := by
  exact good_top_prime_checked (i := 163) (r := 54) (s := 116) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row163_good011_checked :
    goodSegmentCheck 163 54 116
      { lower := 2052, upper := 2201, witness := RowWitness.topPrime 2039 } = true := by
  exact good_top_prime_checked (i := 163) (r := 54) (s := 116) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row163_good012_checked :
    goodSegmentCheck 163 54 116
      { lower := 2202, upper := 2341, witness := RowWitness.topPrime 2179 } = true := by
  exact good_top_prime_checked (i := 163) (r := 54) (s := 116) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row163_good013_checked :
    goodSegmentCheck 163 54 116
      { lower := 2342, upper := 2503, witness := RowWitness.topPrime 2341 } = true := by
  exact good_top_prime_checked (i := 163) (r := 54) (s := 116) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row163_good014_checked :
    goodSegmentCheck 163 54 116
      { lower := 2504, upper := 2665, witness := RowWitness.topPrime 2503 } = true := by
  exact good_top_prime_checked (i := 163) (r := 54) (s := 116) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row163_good015_checked :
    goodSegmentCheck 163 54 116
      { lower := 2666, upper := 2825, witness := RowWitness.topPrime 2663 } = true := by
  exact good_top_prime_checked (i := 163) (r := 54) (s := 116) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row163_good000_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row163_good001_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row163_good002_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row163_good003_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row163_good004_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row163_good005_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row163_good006_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row163_good007_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row163_good008_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row163_good009_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row163_good010_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row163_good011_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row163_good012_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row163_good013_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row163_good014_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row163_good015_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row163_good016_checked :
    goodSegmentCheck 163 54 116
      { lower := 2826, upper := 2981, witness := RowWitness.topPrime 2819 } = true := by
  exact good_top_prime_checked (i := 163) (r := 54) (s := 116) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row163_good017_checked :
    goodSegmentCheck 163 54 116
      { lower := 2982, upper := 3133, witness := RowWitness.topPrime 2971 } = true := by
  exact good_top_prime_checked (i := 163) (r := 54) (s := 116) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row163_good018_checked :
    goodSegmentCheck 163 54 116
      { lower := 3134, upper := 3283, witness := RowWitness.topPrime 3121 } = true := by
  exact good_top_prime_checked (i := 163) (r := 54) (s := 116) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row163_good019_checked :
    goodSegmentCheck 163 54 116
      { lower := 3284, upper := 3433, witness := RowWitness.topPrime 3271 } = true := by
  exact good_top_prime_checked (i := 163) (r := 54) (s := 116) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row163_good020_checked :
    goodSegmentCheck 163 54 116
      { lower := 3434, upper := 3595, witness := RowWitness.topPrime 3433 } = true := by
  exact good_top_prime_checked (i := 163) (r := 54) (s := 116) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row163_good021_checked :
    goodSegmentCheck 163 54 116
      { lower := 3596, upper := 3755, witness := RowWitness.topPrime 3593 } = true := by
  exact good_top_prime_checked (i := 163) (r := 54) (s := 116) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row163_good022_checked :
    goodSegmentCheck 163 54 116
      { lower := 3756, upper := 3901, witness := RowWitness.topPrime 3739 } = true := by
  exact good_top_prime_checked (i := 163) (r := 54) (s := 116) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row163_good023_checked :
    goodSegmentCheck 163 54 116
      { lower := 3902, upper := 4051, witness := RowWitness.topPrime 3889 } = true := by
  exact good_top_prime_checked (i := 163) (r := 54) (s := 116) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row163_good024_checked :
    goodSegmentCheck 163 54 116
      { lower := 4052, upper := 4213, witness := RowWitness.topPrime 4051 } = true := by
  exact good_top_prime_checked (i := 163) (r := 54) (s := 116) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row163_good025_checked :
    goodSegmentCheck 163 54 116
      { lower := 4214, upper := 4373, witness := RowWitness.topPrime 4211 } = true := by
  exact good_top_prime_checked (i := 163) (r := 54) (s := 116) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row163_good026_checked :
    goodSegmentCheck 163 54 116
      { lower := 4374, upper := 4535, witness := RowWitness.topPrime 4373 } = true := by
  exact good_top_prime_checked (i := 163) (r := 54) (s := 116) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row163_good027_checked :
    goodSegmentCheck 163 54 116
      { lower := 4536, upper := 4685, witness := RowWitness.topPrime 4523 } = true := by
  exact good_top_prime_checked (i := 163) (r := 54) (s := 116) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row163_good028_checked :
    goodSegmentCheck 163 54 116
      { lower := 4686, upper := 4841, witness := RowWitness.topPrime 4679 } = true := by
  exact good_top_prime_checked (i := 163) (r := 54) (s := 116) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row163_good029_checked :
    goodSegmentCheck 163 54 116
      { lower := 4842, upper := 4993, witness := RowWitness.topPrime 4831 } = true := by
  exact good_top_prime_checked (i := 163) (r := 54) (s := 116) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row163_good030_checked :
    goodSegmentCheck 163 54 116
      { lower := 4994, upper := 5155, witness := RowWitness.topPrime 4993 } = true := by
  exact good_top_prime_checked (i := 163) (r := 54) (s := 116) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row163_good031_checked :
    goodSegmentCheck 163 54 116
      { lower := 5156, upper := 5315, witness := RowWitness.topPrime 5153 } = true := by
  exact good_top_prime_checked (i := 163) (r := 54) (s := 116) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row163_good016_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row163_good017_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row163_good018_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row163_good019_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row163_good020_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row163_good021_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row163_good022_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row163_good023_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row163_good024_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row163_good025_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row163_good026_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row163_good027_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row163_good028_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row163_good029_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row163_good030_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row163_good031_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row163_good032_checked :
    goodSegmentCheck 163 54 116
      { lower := 5316, upper := 5471, witness := RowWitness.topPrime 5309 } = true := by
  exact good_top_prime_checked (i := 163) (r := 54) (s := 116) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row163_good033_checked :
    goodSegmentCheck 163 54 116
      { lower := 5472, upper := 5633, witness := RowWitness.topPrime 5471 } = true := by
  exact good_top_prime_checked (i := 163) (r := 54) (s := 116) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row163_good034_checked :
    goodSegmentCheck 163 54 116
      { lower := 5634, upper := 5785, witness := RowWitness.topPrime 5623 } = true := by
  exact good_top_prime_checked (i := 163) (r := 54) (s := 116) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row163_good035_checked :
    goodSegmentCheck 163 54 116
      { lower := 5786, upper := 5945, witness := RowWitness.topPrime 5783 } = true := by
  exact good_top_prime_checked (i := 163) (r := 54) (s := 116) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row163_good036_checked :
    goodSegmentCheck 163 54 116
      { lower := 5946, upper := 6101, witness := RowWitness.topPrime 5939 } = true := by
  exact good_top_prime_checked (i := 163) (r := 54) (s := 116) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row163_good037_checked :
    goodSegmentCheck 163 54 116
      { lower := 6102, upper := 6263, witness := RowWitness.topPrime 6101 } = true := by
  exact good_top_prime_checked (i := 163) (r := 54) (s := 116) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row163_good038_checked :
    goodSegmentCheck 163 54 116
      { lower := 6264, upper := 6425, witness := RowWitness.topPrime 6263 } = true := by
  exact good_top_prime_checked (i := 163) (r := 54) (s := 116) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row163_good039_checked :
    goodSegmentCheck 163 54 116
      { lower := 6426, upper := 6583, witness := RowWitness.topPrime 6421 } = true := by
  exact good_top_prime_checked (i := 163) (r := 54) (s := 116) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row163_good040_checked :
    goodSegmentCheck 163 54 116
      { lower := 6584, upper := 6743, witness := RowWitness.topPrime 6581 } = true := by
  exact good_top_prime_checked (i := 163) (r := 54) (s := 116) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row163_good041_checked :
    goodSegmentCheck 163 54 116
      { lower := 6744, upper := 6899, witness := RowWitness.topPrime 6737 } = true := by
  exact good_top_prime_checked (i := 163) (r := 54) (s := 116) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row163_good042_checked :
    goodSegmentCheck 163 54 116
      { lower := 6900, upper := 7061, witness := RowWitness.topPrime 6899 } = true := by
  exact good_top_prime_checked (i := 163) (r := 54) (s := 116) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row163_good043_checked :
    goodSegmentCheck 163 54 116
      { lower := 7062, upper := 7219, witness := RowWitness.topPrime 7057 } = true := by
  exact good_top_prime_checked (i := 163) (r := 54) (s := 116) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row163_good044_checked :
    goodSegmentCheck 163 54 116
      { lower := 7220, upper := 7381, witness := RowWitness.topPrime 7219 } = true := by
  exact good_top_prime_checked (i := 163) (r := 54) (s := 116) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row163_good045_checked :
    goodSegmentCheck 163 54 116
      { lower := 7382, upper := 7531, witness := RowWitness.topPrime 7369 } = true := by
  exact good_top_prime_checked (i := 163) (r := 54) (s := 116) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row163_good046_checked :
    goodSegmentCheck 163 54 116
      { lower := 7532, upper := 7691, witness := RowWitness.topPrime 7529 } = true := by
  exact good_top_prime_checked (i := 163) (r := 54) (s := 116) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row163_good047_checked :
    goodSegmentCheck 163 54 116
      { lower := 7692, upper := 7853, witness := RowWitness.topPrime 7691 } = true := by
  exact good_top_prime_checked (i := 163) (r := 54) (s := 116) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row163_good032_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row163_good033_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row163_good034_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row163_good035_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row163_good036_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row163_good037_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row163_good038_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row163_good039_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row163_good040_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row163_good041_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row163_good042_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row163_good043_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row163_good044_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row163_good045_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row163_good046_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row163_good047_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row163_good048_checked :
    goodSegmentCheck 163 54 116
      { lower := 7854, upper := 8015, witness := RowWitness.topPrime 7853 } = true := by
  exact good_top_prime_checked (i := 163) (r := 54) (s := 116) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row163_good049_checked :
    goodSegmentCheck 163 54 116
      { lower := 8016, upper := 8173, witness := RowWitness.topPrime 8011 } = true := by
  exact good_top_prime_checked (i := 163) (r := 54) (s := 116) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row163_good050_checked :
    goodSegmentCheck 163 54 116
      { lower := 8174, upper := 8333, witness := RowWitness.topPrime 8171 } = true := by
  exact good_top_prime_checked (i := 163) (r := 54) (s := 116) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row163_good051_checked :
    goodSegmentCheck 163 54 116
      { lower := 8334, upper := 8491, witness := RowWitness.topPrime 8329 } = true := by
  exact good_top_prime_checked (i := 163) (r := 54) (s := 116) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row163_good052_checked :
    goodSegmentCheck 163 54 116
      { lower := 8492, upper := 8629, witness := RowWitness.topPrime 8467 } = true := by
  exact good_top_prime_checked (i := 163) (r := 54) (s := 116) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row163_good053_checked :
    goodSegmentCheck 163 54 116
      { lower := 8630, upper := 8791, witness := RowWitness.topPrime 8629 } = true := by
  exact good_top_prime_checked (i := 163) (r := 54) (s := 116) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row163_good054_checked :
    goodSegmentCheck 163 54 116
      { lower := 8792, upper := 8945, witness := RowWitness.topPrime 8783 } = true := by
  exact good_top_prime_checked (i := 163) (r := 54) (s := 116) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row163_good055_checked :
    goodSegmentCheck 163 54 116
      { lower := 8946, upper := 9103, witness := RowWitness.topPrime 8941 } = true := by
  exact good_top_prime_checked (i := 163) (r := 54) (s := 116) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row163_good056_checked :
    goodSegmentCheck 163 54 116
      { lower := 9104, upper := 9265, witness := RowWitness.topPrime 9103 } = true := by
  exact good_top_prime_checked (i := 163) (r := 54) (s := 116) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row163_good057_checked :
    goodSegmentCheck 163 54 116
      { lower := 9266, upper := 9419, witness := RowWitness.topPrime 9257 } = true := by
  exact good_top_prime_checked (i := 163) (r := 54) (s := 116) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row163_good058_checked :
    goodSegmentCheck 163 54 116
      { lower := 9420, upper := 9581, witness := RowWitness.topPrime 9419 } = true := by
  exact good_top_prime_checked (i := 163) (r := 54) (s := 116) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row163_good059_checked :
    goodSegmentCheck 163 54 116
      { lower := 9582, upper := 9713, witness := RowWitness.topPrime 9551 } = true := by
  exact good_top_prime_checked (i := 163) (r := 54) (s := 116) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row163_good060_checked :
    goodSegmentCheck 163 54 116
      { lower := 9714, upper := 9859, witness := RowWitness.topPrime 9697 } = true := by
  exact good_top_prime_checked (i := 163) (r := 54) (s := 116) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row163_good061_checked :
    goodSegmentCheck 163 54 116
      { lower := 9860, upper := 10021, witness := RowWitness.topPrime 9859 } = true := by
  exact good_top_prime_checked (i := 163) (r := 54) (s := 116) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row163_good062_checked :
    goodSegmentCheck 163 54 116
      { lower := 10022, upper := 10171, witness := RowWitness.topPrime 10009 } = true := by
  exact good_top_prime_checked (i := 163) (r := 54) (s := 116) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row163_good063_checked :
    goodSegmentCheck 163 54 116
      { lower := 10172, upper := 10331, witness := RowWitness.topPrime 10169 } = true := by
  exact good_top_prime_checked (i := 163) (r := 54) (s := 116) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row163_good048_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row163_good049_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row163_good050_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row163_good051_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row163_good052_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row163_good053_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row163_good054_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row163_good055_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row163_good056_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row163_good057_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row163_good058_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row163_good059_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row163_good060_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row163_good061_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row163_good062_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row163_good063_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row163_good064_checked :
    goodSegmentCheck 163 54 116
      { lower := 10332, upper := 10493, witness := RowWitness.topPrime 10331 } = true := by
  exact good_top_prime_checked (i := 163) (r := 54) (s := 116) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row163_good065_checked :
    goodSegmentCheck 163 54 116
      { lower := 10494, upper := 10649, witness := RowWitness.topPrime 10487 } = true := by
  exact good_top_prime_checked (i := 163) (r := 54) (s := 116) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row163_good066_checked :
    goodSegmentCheck 163 54 116
      { lower := 10650, upper := 10801, witness := RowWitness.topPrime 10639 } = true := by
  exact good_top_prime_checked (i := 163) (r := 54) (s := 116) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row163_good067_checked :
    goodSegmentCheck 163 54 116
      { lower := 10802, upper := 10961, witness := RowWitness.topPrime 10799 } = true := by
  exact good_top_prime_checked (i := 163) (r := 54) (s := 116) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row163_good068_checked :
    goodSegmentCheck 163 54 116
      { lower := 10962, upper := 11119, witness := RowWitness.topPrime 10957 } = true := by
  exact good_top_prime_checked (i := 163) (r := 54) (s := 116) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row163_good069_checked :
    goodSegmentCheck 163 54 116
      { lower := 11120, upper := 11281, witness := RowWitness.topPrime 11119 } = true := by
  exact good_top_prime_checked (i := 163) (r := 54) (s := 116) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row163_good070_checked :
    goodSegmentCheck 163 54 116
      { lower := 11282, upper := 11441, witness := RowWitness.topPrime 11279 } = true := by
  exact good_top_prime_checked (i := 163) (r := 54) (s := 116) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row163_good071_checked :
    goodSegmentCheck 163 54 116
      { lower := 11442, upper := 11599, witness := RowWitness.topPrime 11437 } = true := by
  exact good_top_prime_checked (i := 163) (r := 54) (s := 116) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row163_good072_checked :
    goodSegmentCheck 163 54 116
      { lower := 11600, upper := 11759, witness := RowWitness.topPrime 11597 } = true := by
  exact good_top_prime_checked (i := 163) (r := 54) (s := 116) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row163_good073_checked :
    goodSegmentCheck 163 54 116
      { lower := 11760, upper := 11905, witness := RowWitness.topPrime 11743 } = true := by
  exact good_top_prime_checked (i := 163) (r := 54) (s := 116) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row163_good074_checked :
    goodSegmentCheck 163 54 116
      { lower := 11906, upper := 12065, witness := RowWitness.topPrime 11903 } = true := by
  exact good_top_prime_checked (i := 163) (r := 54) (s := 116) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row163_good075_checked :
    goodSegmentCheck 163 54 116
      { lower := 12066, upper := 12211, witness := RowWitness.topPrime 12049 } = true := by
  exact good_top_prime_checked (i := 163) (r := 54) (s := 116) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row163_good076_checked :
    goodSegmentCheck 163 54 116
      { lower := 12212, upper := 12373, witness := RowWitness.topPrime 12211 } = true := by
  exact good_top_prime_checked (i := 163) (r := 54) (s := 116) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row163_good077_checked :
    goodSegmentCheck 163 54 116
      { lower := 12374, upper := 12535, witness := RowWitness.topPrime 12373 } = true := by
  exact good_top_prime_checked (i := 163) (r := 54) (s := 116) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row163_good078_checked :
    goodSegmentCheck 163 54 116
      { lower := 12536, upper := 12689, witness := RowWitness.topPrime 12527 } = true := by
  exact good_top_prime_checked (i := 163) (r := 54) (s := 116) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row163_good079_checked :
    goodSegmentCheck 163 54 116
      { lower := 12690, upper := 12851, witness := RowWitness.topPrime 12689 } = true := by
  exact good_top_prime_checked (i := 163) (r := 54) (s := 116) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row163_good064_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row163_good065_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row163_good066_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row163_good067_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row163_good068_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row163_good069_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row163_good070_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row163_good071_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row163_good072_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row163_good073_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row163_good074_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row163_good075_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row163_good076_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row163_good077_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row163_good078_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row163_good079_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row163_good080_checked :
    goodSegmentCheck 163 54 116
      { lower := 12852, upper := 13003, witness := RowWitness.topPrime 12841 } = true := by
  exact good_top_prime_checked (i := 163) (r := 54) (s := 116) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row163_good081_checked :
    goodSegmentCheck 163 54 116
      { lower := 13004, upper := 13165, witness := RowWitness.topPrime 13003 } = true := by
  exact good_top_prime_checked (i := 163) (r := 54) (s := 116) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row163_good082_checked :
    goodSegmentCheck 163 54 116
      { lower := 13166, upper := 13325, witness := RowWitness.topPrime 13163 } = true := by
  exact good_top_prime_checked (i := 163) (r := 54) (s := 116) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row163_good083_checked :
    goodSegmentCheck 163 54 116
      { lower := 13326, upper := 13475, witness := RowWitness.topPrime 13313 } = true := by
  exact good_top_prime_checked (i := 163) (r := 54) (s := 116) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row163_good084_checked :
    goodSegmentCheck 163 54 116
      { lower := 13476, upper := 13631, witness := RowWitness.topPrime 13469 } = true := by
  exact good_top_prime_checked (i := 163) (r := 54) (s := 116) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row163_good085_checked :
    goodSegmentCheck 163 54 116
      { lower := 13632, upper := 13789, witness := RowWitness.topPrime 13627 } = true := by
  exact good_top_prime_checked (i := 163) (r := 54) (s := 116) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row163_good086_checked :
    goodSegmentCheck 163 54 116
      { lower := 13790, upper := 13951, witness := RowWitness.topPrime 13789 } = true := by
  exact good_top_prime_checked (i := 163) (r := 54) (s := 116) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row163_good087_checked :
    goodSegmentCheck 163 54 116
      { lower := 13952, upper := 14095, witness := RowWitness.topPrime 13933 } = true := by
  exact good_top_prime_checked (i := 163) (r := 54) (s := 116) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row163_good088_checked :
    goodSegmentCheck 163 54 116
      { lower := 14096, upper := 14249, witness := RowWitness.topPrime 14087 } = true := by
  exact good_top_prime_checked (i := 163) (r := 54) (s := 116) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row163_good089_checked :
    goodSegmentCheck 163 54 116
      { lower := 14250, upper := 14411, witness := RowWitness.topPrime 14249 } = true := by
  exact good_top_prime_checked (i := 163) (r := 54) (s := 116) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row163_good090_checked :
    goodSegmentCheck 163 54 116
      { lower := 14412, upper := 14573, witness := RowWitness.topPrime 14411 } = true := by
  exact good_top_prime_checked (i := 163) (r := 54) (s := 116) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row163_good091_checked :
    goodSegmentCheck 163 54 116
      { lower := 14574, upper := 14725, witness := RowWitness.topPrime 14563 } = true := by
  exact good_top_prime_checked (i := 163) (r := 54) (s := 116) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row163_good092_checked :
    goodSegmentCheck 163 54 116
      { lower := 14726, upper := 14885, witness := RowWitness.topPrime 14723 } = true := by
  exact good_top_prime_checked (i := 163) (r := 54) (s := 116) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row163_good093_checked :
    goodSegmentCheck 163 54 116
      { lower := 14886, upper := 15041, witness := RowWitness.topPrime 14879 } = true := by
  exact good_top_prime_checked (i := 163) (r := 54) (s := 116) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row163_good094_checked :
    goodSegmentCheck 163 54 116
      { lower := 15042, upper := 15193, witness := RowWitness.topPrime 15031 } = true := by
  exact good_top_prime_checked (i := 163) (r := 54) (s := 116) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row163_good095_checked :
    goodSegmentCheck 163 54 116
      { lower := 15194, upper := 15355, witness := RowWitness.topPrime 15193 } = true := by
  exact good_top_prime_checked (i := 163) (r := 54) (s := 116) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row163_good080_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row163_good081_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row163_good082_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row163_good083_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row163_good084_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row163_good085_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row163_good086_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row163_good087_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row163_good088_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row163_good089_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row163_good090_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row163_good091_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row163_good092_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row163_good093_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row163_good094_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row163_good095_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row163_good096_checked :
    goodSegmentCheck 163 54 116
      { lower := 15356, upper := 15511, witness := RowWitness.topPrime 15349 } = true := by
  exact good_top_prime_checked (i := 163) (r := 54) (s := 116) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row163_good097_checked :
    goodSegmentCheck 163 54 116
      { lower := 15512, upper := 15673, witness := RowWitness.topPrime 15511 } = true := by
  exact good_top_prime_checked (i := 163) (r := 54) (s := 116) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row163_good098_checked :
    goodSegmentCheck 163 54 116
      { lower := 15674, upper := 15833, witness := RowWitness.topPrime 15671 } = true := by
  exact good_top_prime_checked (i := 163) (r := 54) (s := 116) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row163_good099_checked :
    goodSegmentCheck 163 54 116
      { lower := 15834, upper := 15985, witness := RowWitness.topPrime 15823 } = true := by
  exact good_top_prime_checked (i := 163) (r := 54) (s := 116) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row163_good100_checked :
    goodSegmentCheck 163 54 116
      { lower := 15986, upper := 16135, witness := RowWitness.topPrime 15973 } = true := by
  exact good_top_prime_checked (i := 163) (r := 54) (s := 116) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row163_good101_checked :
    goodSegmentCheck 163 54 116
      { lower := 16136, upper := 16289, witness := RowWitness.topPrime 16127 } = true := by
  exact good_top_prime_checked (i := 163) (r := 54) (s := 116) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row163_good102_checked :
    goodSegmentCheck 163 54 116
      { lower := 16290, upper := 16435, witness := RowWitness.topPrime 16273 } = true := by
  exact good_top_prime_checked (i := 163) (r := 54) (s := 116) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row163_good103_checked :
    goodSegmentCheck 163 54 116
      { lower := 16436, upper := 16595, witness := RowWitness.topPrime 16433 } = true := by
  exact good_top_prime_checked (i := 163) (r := 54) (s := 116) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row163_good104_checked :
    goodSegmentCheck 163 54 116
      { lower := 16596, upper := 16735, witness := RowWitness.topPrime 16573 } = true := by
  exact good_top_prime_checked (i := 163) (r := 54) (s := 116) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row163_good105_checked :
    goodSegmentCheck 163 54 116
      { lower := 16736, upper := 16891, witness := RowWitness.topPrime 16729 } = true := by
  exact good_top_prime_checked (i := 163) (r := 54) (s := 116) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row163_good106_checked :
    goodSegmentCheck 163 54 116
      { lower := 16892, upper := 17051, witness := RowWitness.topPrime 16889 } = true := by
  exact good_top_prime_checked (i := 163) (r := 54) (s := 116) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row163_good107_checked :
    goodSegmentCheck 163 54 116
      { lower := 17052, upper := 17209, witness := RowWitness.topPrime 17047 } = true := by
  exact good_top_prime_checked (i := 163) (r := 54) (s := 116) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row163_good108_checked :
    goodSegmentCheck 163 54 116
      { lower := 17210, upper := 17371, witness := RowWitness.topPrime 17209 } = true := by
  exact good_top_prime_checked (i := 163) (r := 54) (s := 116) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row163_good109_checked :
    goodSegmentCheck 163 54 116
      { lower := 17372, upper := 17521, witness := RowWitness.topPrime 17359 } = true := by
  exact good_top_prime_checked (i := 163) (r := 54) (s := 116) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row163_good110_checked :
    goodSegmentCheck 163 54 116
      { lower := 17522, upper := 17681, witness := RowWitness.topPrime 17519 } = true := by
  exact good_top_prime_checked (i := 163) (r := 54) (s := 116) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row163_good111_checked :
    goodSegmentCheck 163 54 116
      { lower := 17682, upper := 17843, witness := RowWitness.topPrime 17681 } = true := by
  exact good_top_prime_checked (i := 163) (r := 54) (s := 116) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row163_good096_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row163_good097_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row163_good098_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row163_good099_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row163_good100_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row163_good101_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row163_good102_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row163_good103_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row163_good104_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row163_good105_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row163_good106_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row163_good107_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row163_good108_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row163_good109_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row163_good110_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row163_good111_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row163_good112_checked :
    goodSegmentCheck 163 54 116
      { lower := 17844, upper := 18001, witness := RowWitness.topPrime 17839 } = true := by
  exact good_top_prime_checked (i := 163) (r := 54) (s := 116) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row163_good113_checked :
    goodSegmentCheck 163 54 116
      { lower := 18002, upper := 18151, witness := RowWitness.topPrime 17989 } = true := by
  exact good_top_prime_checked (i := 163) (r := 54) (s := 116) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row163_good114_checked :
    goodSegmentCheck 163 54 116
      { lower := 18152, upper := 18311, witness := RowWitness.topPrime 18149 } = true := by
  exact good_top_prime_checked (i := 163) (r := 54) (s := 116) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row163_good115_checked :
    goodSegmentCheck 163 54 116
      { lower := 18312, upper := 18473, witness := RowWitness.topPrime 18311 } = true := by
  exact good_top_prime_checked (i := 163) (r := 54) (s := 116) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row163_good116_checked :
    goodSegmentCheck 163 54 116
      { lower := 18474, upper := 18623, witness := RowWitness.topPrime 18461 } = true := by
  exact good_top_prime_checked (i := 163) (r := 54) (s := 116) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row163_good117_checked :
    goodSegmentCheck 163 54 116
      { lower := 18624, upper := 18779, witness := RowWitness.topPrime 18617 } = true := by
  exact good_top_prime_checked (i := 163) (r := 54) (s := 116) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row163_good118_checked :
    goodSegmentCheck 163 54 116
      { lower := 18780, upper := 18935, witness := RowWitness.topPrime 18773 } = true := by
  exact good_top_prime_checked (i := 163) (r := 54) (s := 116) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row163_good119_checked :
    goodSegmentCheck 163 54 116
      { lower := 18936, upper := 19081, witness := RowWitness.topPrime 18919 } = true := by
  exact good_top_prime_checked (i := 163) (r := 54) (s := 116) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row163_good120_checked :
    goodSegmentCheck 163 54 116
      { lower := 19082, upper := 19243, witness := RowWitness.topPrime 19081 } = true := by
  exact good_top_prime_checked (i := 163) (r := 54) (s := 116) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row163_good121_checked :
    goodSegmentCheck 163 54 116
      { lower := 19244, upper := 19399, witness := RowWitness.topPrime 19237 } = true := by
  exact good_top_prime_checked (i := 163) (r := 54) (s := 116) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row163_good122_checked :
    goodSegmentCheck 163 54 116
      { lower := 19400, upper := 19553, witness := RowWitness.topPrime 19391 } = true := by
  exact good_top_prime_checked (i := 163) (r := 54) (s := 116) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row163_good123_checked :
    goodSegmentCheck 163 54 116
      { lower := 19554, upper := 19715, witness := RowWitness.topPrime 19553 } = true := by
  exact good_top_prime_checked (i := 163) (r := 54) (s := 116) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row163_good124_checked :
    goodSegmentCheck 163 54 116
      { lower := 19716, upper := 19871, witness := RowWitness.topPrime 19709 } = true := by
  exact good_top_prime_checked (i := 163) (r := 54) (s := 116) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row163_good125_checked :
    goodSegmentCheck 163 54 116
      { lower := 19872, upper := 20029, witness := RowWitness.topPrime 19867 } = true := by
  exact good_top_prime_checked (i := 163) (r := 54) (s := 116) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row163_good126_checked :
    goodSegmentCheck 163 54 116
      { lower := 20030, upper := 20191, witness := RowWitness.topPrime 20029 } = true := by
  exact good_top_prime_checked (i := 163) (r := 54) (s := 116) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row163_good127_checked :
    goodSegmentCheck 163 54 116
      { lower := 20192, upper := 20345, witness := RowWitness.topPrime 20183 } = true := by
  exact good_top_prime_checked (i := 163) (r := 54) (s := 116) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row163_good112_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row163_good113_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row163_good114_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row163_good115_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row163_good116_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row163_good117_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row163_good118_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row163_good119_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row163_good120_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row163_good121_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row163_good122_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row163_good123_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row163_good124_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row163_good125_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row163_good126_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row163_good127_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row163_good128_checked :
    goodSegmentCheck 163 54 116
      { lower := 20346, upper := 20503, witness := RowWitness.topPrime 20341 } = true := by
  exact good_top_prime_checked (i := 163) (r := 54) (s := 116) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row163_good129_checked :
    goodSegmentCheck 163 54 116
      { lower := 20504, upper := 20645, witness := RowWitness.topPrime 20483 } = true := by
  exact good_top_prime_checked (i := 163) (r := 54) (s := 116) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row163_good130_checked :
    goodSegmentCheck 163 54 116
      { lower := 20646, upper := 20803, witness := RowWitness.topPrime 20641 } = true := by
  exact good_top_prime_checked (i := 163) (r := 54) (s := 116) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row163_good131_checked :
    goodSegmentCheck 163 54 116
      { lower := 20804, upper := 20951, witness := RowWitness.topPrime 20789 } = true := by
  exact good_top_prime_checked (i := 163) (r := 54) (s := 116) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row163_good132_checked :
    goodSegmentCheck 163 54 116
      { lower := 20952, upper := 21109, witness := RowWitness.topPrime 20947 } = true := by
  exact good_top_prime_checked (i := 163) (r := 54) (s := 116) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row163_good133_checked :
    goodSegmentCheck 163 54 116
      { lower := 21110, upper := 21269, witness := RowWitness.topPrime 21107 } = true := by
  exact good_top_prime_checked (i := 163) (r := 54) (s := 116) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row163_good134_checked :
    goodSegmentCheck 163 54 116
      { lower := 21270, upper := 21431, witness := RowWitness.topPrime 21269 } = true := by
  exact good_top_prime_checked (i := 163) (r := 54) (s := 116) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row163_good135_checked :
    goodSegmentCheck 163 54 116
      { lower := 21432, upper := 21581, witness := RowWitness.topPrime 21419 } = true := by
  exact good_top_prime_checked (i := 163) (r := 54) (s := 116) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row163_good136_checked :
    goodSegmentCheck 163 54 116
      { lower := 21582, upper := 21739, witness := RowWitness.topPrime 21577 } = true := by
  exact good_top_prime_checked (i := 163) (r := 54) (s := 116) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row163_good137_checked :
    goodSegmentCheck 163 54 116
      { lower := 21740, upper := 21901, witness := RowWitness.topPrime 21739 } = true := by
  exact good_top_prime_checked (i := 163) (r := 54) (s := 116) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row163_good138_checked :
    goodSegmentCheck 163 54 116
      { lower := 21902, upper := 22055, witness := RowWitness.topPrime 21893 } = true := by
  exact good_top_prime_checked (i := 163) (r := 54) (s := 116) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row163_good139_checked :
    goodSegmentCheck 163 54 116
      { lower := 22056, upper := 22213, witness := RowWitness.topPrime 22051 } = true := by
  exact good_top_prime_checked (i := 163) (r := 54) (s := 116) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row163_good140_checked :
    goodSegmentCheck 163 54 116
      { lower := 22214, upper := 22355, witness := RowWitness.topPrime 22193 } = true := by
  exact good_top_prime_checked (i := 163) (r := 54) (s := 116) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row163_good141_checked :
    goodSegmentCheck 163 54 116
      { lower := 22356, upper := 22511, witness := RowWitness.topPrime 22349 } = true := by
  exact good_top_prime_checked (i := 163) (r := 54) (s := 116) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row163_good142_checked :
    goodSegmentCheck 163 54 116
      { lower := 22512, upper := 22673, witness := RowWitness.topPrime 22511 } = true := by
  exact good_top_prime_checked (i := 163) (r := 54) (s := 116) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row163_good143_checked :
    goodSegmentCheck 163 54 116
      { lower := 22674, upper := 22831, witness := RowWitness.topPrime 22669 } = true := by
  exact good_top_prime_checked (i := 163) (r := 54) (s := 116) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row163_good128_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row163_good129_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row163_good130_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row163_good131_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row163_good132_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row163_good133_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row163_good134_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row163_good135_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row163_good136_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row163_good137_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row163_good138_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row163_good139_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row163_good140_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row163_good141_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row163_good142_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row163_good143_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row163_good144_checked :
    goodSegmentCheck 163 54 116
      { lower := 22832, upper := 22979, witness := RowWitness.topPrime 22817 } = true := by
  exact good_top_prime_checked (i := 163) (r := 54) (s := 116) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row163_good145_checked :
    goodSegmentCheck 163 54 116
      { lower := 22980, upper := 23135, witness := RowWitness.topPrime 22973 } = true := by
  exact good_top_prime_checked (i := 163) (r := 54) (s := 116) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row163_good146_checked :
    goodSegmentCheck 163 54 116
      { lower := 23136, upper := 23293, witness := RowWitness.topPrime 23131 } = true := by
  exact good_top_prime_checked (i := 163) (r := 54) (s := 116) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row163_good147_checked :
    goodSegmentCheck 163 54 116
      { lower := 23294, upper := 23455, witness := RowWitness.topPrime 23293 } = true := by
  exact good_top_prime_checked (i := 163) (r := 54) (s := 116) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row163_good148_checked :
    goodSegmentCheck 163 54 116
      { lower := 23456, upper := 23609, witness := RowWitness.topPrime 23447 } = true := by
  exact good_top_prime_checked (i := 163) (r := 54) (s := 116) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row163_good149_checked :
    goodSegmentCheck 163 54 116
      { lower := 23610, upper := 23771, witness := RowWitness.topPrime 23609 } = true := by
  exact good_top_prime_checked (i := 163) (r := 54) (s := 116) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row163_good150_checked :
    goodSegmentCheck 163 54 116
      { lower := 23772, upper := 23929, witness := RowWitness.topPrime 23767 } = true := by
  exact good_top_prime_checked (i := 163) (r := 54) (s := 116) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row163_good151_checked :
    goodSegmentCheck 163 54 116
      { lower := 23930, upper := 24091, witness := RowWitness.topPrime 23929 } = true := by
  exact good_top_prime_checked (i := 163) (r := 54) (s := 116) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row163_good152_checked :
    goodSegmentCheck 163 54 116
      { lower := 24092, upper := 24253, witness := RowWitness.topPrime 24091 } = true := by
  exact good_top_prime_checked (i := 163) (r := 54) (s := 116) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row163_good153_checked :
    goodSegmentCheck 163 54 116
      { lower := 24254, upper := 24413, witness := RowWitness.topPrime 24251 } = true := by
  exact good_top_prime_checked (i := 163) (r := 54) (s := 116) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row163_good154_checked :
    goodSegmentCheck 163 54 116
      { lower := 24414, upper := 24575, witness := RowWitness.topPrime 24413 } = true := by
  exact good_top_prime_checked (i := 163) (r := 54) (s := 116) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row163_good155_checked :
    goodSegmentCheck 163 54 116
      { lower := 24576, upper := 24733, witness := RowWitness.topPrime 24571 } = true := by
  exact good_top_prime_checked (i := 163) (r := 54) (s := 116) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row163_good156_checked :
    goodSegmentCheck 163 54 116
      { lower := 24734, upper := 24895, witness := RowWitness.topPrime 24733 } = true := by
  exact good_top_prime_checked (i := 163) (r := 54) (s := 116) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row163_good157_checked :
    goodSegmentCheck 163 54 116
      { lower := 24896, upper := 25051, witness := RowWitness.topPrime 24889 } = true := by
  exact good_top_prime_checked (i := 163) (r := 54) (s := 116) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row163_good158_checked :
    goodSegmentCheck 163 54 116
      { lower := 25052, upper := 25199, witness := RowWitness.topPrime 25037 } = true := by
  exact good_top_prime_checked (i := 163) (r := 54) (s := 116) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row163_good159_checked :
    goodSegmentCheck 163 54 116
      { lower := 25200, upper := 25351, witness := RowWitness.topPrime 25189 } = true := by
  exact good_top_prime_checked (i := 163) (r := 54) (s := 116) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row163_good144_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row163_good145_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row163_good146_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row163_good147_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row163_good148_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row163_good149_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row163_good150_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row163_good151_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row163_good152_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row163_good153_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row163_good154_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row163_good155_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row163_good156_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row163_good157_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row163_good158_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row163_good159_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row163_good160_checked :
    goodSegmentCheck 163 54 116
      { lower := 25352, upper := 25511, witness := RowWitness.topPrime 25349 } = true := by
  exact good_top_prime_checked (i := 163) (r := 54) (s := 116) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row163_good161_checked :
    goodSegmentCheck 163 54 116
      { lower := 25512, upper := 25633, witness := RowWitness.topPrime 25471 } = true := by
  exact good_top_prime_checked (i := 163) (r := 54) (s := 116) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row163_good162_checked :
    goodSegmentCheck 163 54 116
      { lower := 25634, upper := 25795, witness := RowWitness.topPrime 25633 } = true := by
  exact good_top_prime_checked (i := 163) (r := 54) (s := 116) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row163_good163_checked :
    goodSegmentCheck 163 54 116
      { lower := 25796, upper := 25955, witness := RowWitness.topPrime 25793 } = true := by
  exact good_top_prime_checked (i := 163) (r := 54) (s := 116) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row163_good164_checked :
    goodSegmentCheck 163 54 116
      { lower := 25956, upper := 26113, witness := RowWitness.topPrime 25951 } = true := by
  exact good_top_prime_checked (i := 163) (r := 54) (s := 116) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row163_good165_checked :
    goodSegmentCheck 163 54 116
      { lower := 26114, upper := 26275, witness := RowWitness.topPrime 26113 } = true := by
  exact good_top_prime_checked (i := 163) (r := 54) (s := 116) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row163_good166_checked :
    goodSegmentCheck 163 54 116
      { lower := 26276, upper := 26406, witness := RowWitness.topPrime 26267 } = true := by
  exact good_top_prime_checked (i := 163) (r := 54) (s := 116) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row163_good167_checked :
    goodSegmentCheck 163 54 116
      { lower := 26411, upper := 26569, witness := RowWitness.topPrime 26407 } = true := by
  exact good_top_prime_checked (i := 163) (r := 54) (s := 116) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row163_good168_checked :
    goodSegmentCheck 163 54 116
      { lower := 26570, upper := 26573, witness := RowWitness.topPrime 26561 } = true := by
  exact good_top_prime_checked (i := 163) (r := 54) (s := 116) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row163_good169_checked :
    goodSegmentCheck 163 54 116
      { lower := 26624, upper := 26759, witness := RowWitness.topPrime 26597 } = true := by
  exact good_top_prime_checked (i := 163) (r := 54) (s := 116) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row163_good170_checked :
    goodSegmentCheck 163 54 116
      { lower := 26760, upper := 26786, witness := RowWitness.topPrime 26759 } = true := by
  exact good_top_prime_checked (i := 163) (r := 54) (s := 116) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row163_good171_checked :
    goodSegmentCheck 163 54 116
      { lower := 27556, upper := 27598, witness := RowWitness.topPrime 27551 } = true := by
  exact good_top_prime_checked (i := 163) (r := 54) (s := 116) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row163_good172_checked :
    goodSegmentCheck 163 54 116
      { lower := 28125, upper := 28285, witness := RowWitness.topPrime 28123 } = true := by
  exact good_top_prime_checked (i := 163) (r := 54) (s := 116) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row163_good173_checked :
    goodSegmentCheck 163 54 116
      { lower := 28286, upper := 28287, witness := RowWitness.topPrime 28283 } = true := by
  exact good_top_prime_checked (i := 163) (r := 54) (s := 116) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row163_good174_checked :
    goodSegmentCheck 163 54 116
      { lower := 28561, upper := 28593, witness := RowWitness.topPrime 28559 } = true := by
  exact good_top_prime_checked (i := 163) (r := 54) (s := 116) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row163_good175_checked :
    goodSegmentCheck 163 54 116
      { lower := 28672, upper := 28831, witness := RowWitness.topPrime 28669 } = true := by
  exact good_top_prime_checked (i := 163) (r := 54) (s := 116) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row163_good160_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row163_good161_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row163_good162_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row163_good163_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row163_good164_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row163_good165_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row163_good166_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row163_good167_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row163_good168_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row163_good169_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row163_good170_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row163_good171_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row163_good172_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row163_good173_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row163_good174_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row163_good175_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row163_good176_checked :
    goodSegmentCheck 163 54 116
      { lower := 28832, upper := 28879, witness := RowWitness.topPrime 28817 } = true := by
  exact good_top_prime_checked (i := 163) (r := 54) (s := 116) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row163_good177_checked :
    goodSegmentCheck 163 54 116
      { lower := 29791, upper := 29930, witness := RowWitness.topPrime 29789 } = true := by
  exact good_top_prime_checked (i := 163) (r := 54) (s := 116) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row163_good178_checked :
    goodSegmentCheck 163 54 116
      { lower := 31213, upper := 31355, witness := RowWitness.topPrime 31193 } = true := by
  exact good_top_prime_checked (i := 163) (r := 54) (s := 116) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row163_good179_checked :
    goodSegmentCheck 163 54 116
      { lower := 31356, upper := 31412, witness := RowWitness.topPrime 31337 } = true := by
  exact good_top_prime_checked (i := 163) (r := 54) (s := 116) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row163_good180_checked :
    goodSegmentCheck 163 54 116
      { lower := 31423, upper := 31491, witness := RowWitness.topPrime 31397 } = true := by
  exact good_top_prime_checked (i := 163) (r := 54) (s := 116) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row163_good181_checked :
    goodSegmentCheck 163 54 116
      { lower := 31827, upper := 31846, witness := RowWitness.topPrime 31817 } = true := by
  exact good_top_prime_checked (i := 163) (r := 54) (s := 116) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row163_good182_checked :
    goodSegmentCheck 163 54 116
      { lower := 31974, upper := 31989, witness := RowWitness.topPrime 31973 } = true := by
  exact good_top_prime_checked (i := 163) (r := 54) (s := 116) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row163_good183_checked :
    goodSegmentCheck 163 54 116
      { lower := 32805, upper := 32930, witness := RowWitness.topPrime 32803 } = true := by
  exact good_top_prime_checked (i := 163) (r := 54) (s := 116) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row163_good184_checked :
    goodSegmentCheck 163 54 116
      { lower := 33614, upper := 33651, witness := RowWitness.topPrime 33613 } = true := by
  exact good_top_prime_checked (i := 163) (r := 54) (s := 116) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row163_good185_checked :
    goodSegmentCheck 163 54 116
      { lower := 33708, upper := 33776, witness := RowWitness.topPrime 33703 } = true := by
  exact good_top_prime_checked (i := 163) (r := 54) (s := 116) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row163_good186_checked :
    goodSegmentCheck 163 54 116
      { lower := 34322, upper := 34481, witness := RowWitness.topPrime 34319 } = true := by
  exact good_top_prime_checked (i := 163) (r := 54) (s := 116) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row163_good187_checked :
    goodSegmentCheck 163 54 116
      { lower := 34482, upper := 34553, witness := RowWitness.topPrime 34471 } = true := by
  exact good_top_prime_checked (i := 163) (r := 54) (s := 116) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row163_good188_checked :
    goodSegmentCheck 163 54 116
      { lower := 36517, upper := 36659, witness := RowWitness.topPrime 36497 } = true := by
  exact good_top_prime_checked (i := 163) (r := 54) (s := 116) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row163_good189_checked :
    goodSegmentCheck 163 54 116
      { lower := 36660, upper := 36663, witness := RowWitness.topPrime 36653 } = true := by
  exact good_top_prime_checked (i := 163) (r := 54) (s := 116) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row163_good190_checked :
    goodSegmentCheck 163 54 116
      { lower := 37303, upper := 37372, witness := RowWitness.topPrime 37277 } = true := by
  exact good_top_prime_checked (i := 163) (r := 54) (s := 116) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row163_good191_checked :
    goodSegmentCheck 163 54 116
      { lower := 37446, upper := 37465, witness := RowWitness.topPrime 37441 } = true := by
  exact good_top_prime_checked (i := 163) (r := 54) (s := 116) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row163_good176_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row163_good177_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row163_good178_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row163_good179_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row163_good180_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row163_good181_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row163_good182_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row163_good183_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row163_good184_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row163_good185_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row163_good186_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row163_good187_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row163_good188_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row163_good189_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row163_good190_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row163_good191_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row163_good192_checked :
    goodSegmentCheck 163 54 116
      { lower := 37500, upper := 37655, witness := RowWitness.topPrime 37493 } = true := by
  exact good_top_prime_checked (i := 163) (r := 54) (s := 116) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row163_good193_checked :
    goodSegmentCheck 163 54 116
      { lower := 37656, upper := 37700, witness := RowWitness.topPrime 37649 } = true := by
  exact good_top_prime_checked (i := 163) (r := 54) (s := 116) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row163_good194_checked :
    goodSegmentCheck 163 54 116
      { lower := 38307, upper := 38453, witness := RowWitness.topPrime 38303 } = true := by
  exact good_top_prime_checked (i := 163) (r := 54) (s := 116) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row163_good195_checked :
    goodSegmentCheck 163 54 116
      { lower := 39366, upper := 39466, witness := RowWitness.topPrime 39359 } = true := by
  exact good_top_prime_checked (i := 163) (r := 54) (s := 116) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row163_good196_checked :
    goodSegmentCheck 163 54 116
      { lower := 40401, upper := 40490, witness := RowWitness.topPrime 40387 } = true := by
  exact good_top_prime_checked (i := 163) (r := 54) (s := 116) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row163_good197_checked :
    goodSegmentCheck 163 54 116
      { lower := 40931, upper := 41089, witness := RowWitness.topPrime 40927 } = true := by
  exact good_top_prime_checked (i := 163) (r := 54) (s := 116) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row163_good198_checked :
    goodSegmentCheck 163 54 116
      { lower := 41090, upper := 41093, witness := RowWitness.topPrime 41081 } = true := by
  exact good_top_prime_checked (i := 163) (r := 54) (s := 116) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row163_good199_checked :
    goodSegmentCheck 163 54 116
      { lower := 45369, upper := 45415, witness := RowWitness.topPrime 45361 } = true := by
  exact good_top_prime_checked (i := 163) (r := 54) (s := 116) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row163_good200_checked :
    goodSegmentCheck 163 54 116
      { lower := 45927, upper := 45958, witness := RowWitness.topPrime 45893 } = true := by
  exact good_top_prime_checked (i := 163) (r := 54) (s := 116) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row163_good201_checked :
    goodSegmentCheck 163 54 116
      { lower := 47526, upper := 47683, witness := RowWitness.topPrime 47521 } = true := by
  exact good_top_prime_checked (i := 163) (r := 54) (s := 116) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row163_good202_checked :
    goodSegmentCheck 163 54 116
      { lower := 47684, upper := 47686, witness := RowWitness.topPrime 47681 } = true := by
  exact good_top_prime_checked (i := 163) (r := 54) (s := 116) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row163_good203_checked :
    goodSegmentCheck 163 54 116
      { lower := 48013, upper := 48123, witness := RowWitness.topPrime 47981 } = true := by
  exact good_top_prime_checked (i := 163) (r := 54) (s := 116) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row163_good204_checked :
    goodSegmentCheck 163 54 116
      { lower := 48373, upper := 48385, witness := RowWitness.topPrime 48371 } = true := by
  exact good_top_prime_checked (i := 163) (r := 54) (s := 116) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row163_good205_checked :
    goodSegmentCheck 163 54 116
      { lower := 48387, upper := 48535, witness := RowWitness.topPrime 48383 } = true := by
  exact good_top_prime_checked (i := 163) (r := 54) (s := 116) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row163_good206_checked :
    goodSegmentCheck 163 54 116
      { lower := 48778, upper := 48830, witness := RowWitness.topPrime 48767 } = true := by
  exact good_top_prime_checked (i := 163) (r := 54) (s := 116) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row163_good207_checked :
    goodSegmentCheck 163 54 116
      { lower := 49152, upper := 49292, witness := RowWitness.topPrime 49139 } = true := by
  exact good_top_prime_checked (i := 163) (r := 54) (s := 116) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row163_good192_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row163_good193_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row163_good194_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row163_good195_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row163_good196_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row163_good197_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row163_good198_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row163_good199_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row163_good200_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row163_good201_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row163_good202_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row163_good203_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row163_good204_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row163_good205_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row163_good206_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row163_good207_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row163_good208_checked :
    goodSegmentCheck 163 54 116
      { lower := 49298, upper := 49314, witness := RowWitness.topPrime 49297 } = true := by
  exact good_top_prime_checked (i := 163) (r := 54) (s := 116) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row163_good209_checked :
    goodSegmentCheck 163 54 116
      { lower := 49379, upper := 49460, witness := RowWitness.topPrime 49369 } = true := by
  exact good_top_prime_checked (i := 163) (r := 54) (s := 116) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row163_good210_checked :
    goodSegmentCheck 163 54 116
      { lower := 50421, upper := 50572, witness := RowWitness.topPrime 50417 } = true := by
  exact good_top_prime_checked (i := 163) (r := 54) (s := 116) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row163_good211_checked :
    goodSegmentCheck 163 54 116
      { lower := 51076, upper := 51167, witness := RowWitness.topPrime 51071 } = true := by
  exact good_top_prime_checked (i := 163) (r := 54) (s := 116) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row163_good212_checked :
    goodSegmentCheck 163 54 116
      { lower := 56307, upper := 56331, witness := RowWitness.topPrime 56299 } = true := by
  exact good_top_prime_checked (i := 163) (r := 54) (s := 116) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row163_good213_checked :
    goodSegmentCheck 163 54 116
      { lower := 56454, upper := 56469, witness := RowWitness.topPrime 56453 } = true := by
  exact good_top_prime_checked (i := 163) (r := 54) (s := 116) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row163_good214_checked :
    goodSegmentCheck 163 54 116
      { lower := 57245, upper := 57284, witness := RowWitness.topPrime 57241 } = true := by
  exact good_top_prime_checked (i := 163) (r := 54) (s := 116) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row163_good215_checked :
    goodSegmentCheck 163 54 116
      { lower := 57344, upper := 57407, witness := RowWitness.topPrime 57331 } = true := by
  exact good_top_prime_checked (i := 163) (r := 54) (s := 116) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row163_good216_checked :
    goodSegmentCheck 163 54 116
      { lower := 68694, upper := 68806, witness := RowWitness.topPrime 68687 } = true := by
  exact good_top_prime_checked (i := 163) (r := 54) (s := 116) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row163_good217_checked :
    goodSegmentCheck 163 54 116
      { lower := 71289, upper := 71449, witness := RowWitness.topPrime 71287 } = true := by
  exact good_top_prime_checked (i := 163) (r := 54) (s := 116) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row163_good218_checked :
    goodSegmentCheck 163 54 116
      { lower := 71450, upper := 71451, witness := RowWitness.topPrime 71443 } = true := by
  exact good_top_prime_checked (i := 163) (r := 54) (s := 116) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row163_good219_checked :
    goodSegmentCheck 163 54 116
      { lower := 73205, upper := 73329, witness := RowWitness.topPrime 73189 } = true := by
  exact good_top_prime_checked (i := 163) (r := 54) (s := 116) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row163_good220_checked :
    goodSegmentCheck 163 54 116
      { lower := 85805, upper := 85845, witness := RowWitness.topPrime 85793 } = true := by
  exact good_top_prime_checked (i := 163) (r := 54) (s := 116) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row163_good221_checked :
    goodSegmentCheck 163 54 116
      { lower := 89383, upper := 89535, witness := RowWitness.topPrime 89381 } = true := by
  exact good_top_prime_checked (i := 163) (r := 54) (s := 116) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row163_good222_checked :
    goodSegmentCheck 163 54 116
      { lower := 93845, upper := 93912, witness := RowWitness.topPrime 93827 } = true := by
  exact good_top_prime_checked (i := 163) (r := 54) (s := 116) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row163_good223_checked :
    goodSegmentCheck 163 54 116
      { lower := 98415, upper := 98466, witness := RowWitness.topPrime 98411 } = true := by
  exact good_top_prime_checked (i := 163) (r := 54) (s := 116) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row163_good208_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row163_good209_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row163_good210_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row163_good211_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row163_good212_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row163_good213_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row163_good214_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row163_good215_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row163_good216_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row163_good217_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row163_good218_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row163_good219_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row163_good220_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row163_good221_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row163_good222_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row163_good223_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row163_good224_checked :
    goodSegmentCheck 163 54 116
      { lower := 103041, upper := 103128, witness := RowWitness.topPrime 103007 } = true := by
  exact good_top_prime_checked (i := 163) (r := 54) (s := 116) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row163_good225_checked :
    goodSegmentCheck 163 54 116
      { lower := 137842, upper := 137943, witness := RowWitness.topPrime 137831 } = true := by
  exact good_top_prime_checked (i := 163) (r := 54) (s := 116) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row163_good226_checked :
    goodSegmentCheck 163 54 116
      { lower := 148955, upper := 149039, witness := RowWitness.topPrime 148949 } = true := by
  exact good_top_prime_checked (i := 163) (r := 54) (s := 116) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row163_good224_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row163_good225_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row163_good226_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row163_goods_checked :
    row163.goods.all (goodSegmentCheck row163.height.i row163.height.r row163.height.s) = true := by
  change row163_goods.all (goodSegmentCheck 163 54 116) = true
  simp only [row163_goods, List.all_cons, List.all_nil,
    row163_good000_checked,
    row163_good001_checked,
    row163_good002_checked,
    row163_good003_checked,
    row163_good004_checked,
    row163_good005_checked,
    row163_good006_checked,
    row163_good007_checked,
    row163_good008_checked,
    row163_good009_checked,
    row163_good010_checked,
    row163_good011_checked,
    row163_good012_checked,
    row163_good013_checked,
    row163_good014_checked,
    row163_good015_checked,
    row163_good016_checked,
    row163_good017_checked,
    row163_good018_checked,
    row163_good019_checked,
    row163_good020_checked,
    row163_good021_checked,
    row163_good022_checked,
    row163_good023_checked,
    row163_good024_checked,
    row163_good025_checked,
    row163_good026_checked,
    row163_good027_checked,
    row163_good028_checked,
    row163_good029_checked,
    row163_good030_checked,
    row163_good031_checked,
    row163_good032_checked,
    row163_good033_checked,
    row163_good034_checked,
    row163_good035_checked,
    row163_good036_checked,
    row163_good037_checked,
    row163_good038_checked,
    row163_good039_checked,
    row163_good040_checked,
    row163_good041_checked,
    row163_good042_checked,
    row163_good043_checked,
    row163_good044_checked,
    row163_good045_checked,
    row163_good046_checked,
    row163_good047_checked,
    row163_good048_checked,
    row163_good049_checked,
    row163_good050_checked,
    row163_good051_checked,
    row163_good052_checked,
    row163_good053_checked,
    row163_good054_checked,
    row163_good055_checked,
    row163_good056_checked,
    row163_good057_checked,
    row163_good058_checked,
    row163_good059_checked,
    row163_good060_checked,
    row163_good061_checked,
    row163_good062_checked,
    row163_good063_checked,
    row163_good064_checked,
    row163_good065_checked,
    row163_good066_checked,
    row163_good067_checked,
    row163_good068_checked,
    row163_good069_checked,
    row163_good070_checked,
    row163_good071_checked,
    row163_good072_checked,
    row163_good073_checked,
    row163_good074_checked,
    row163_good075_checked,
    row163_good076_checked,
    row163_good077_checked,
    row163_good078_checked,
    row163_good079_checked,
    row163_good080_checked,
    row163_good081_checked,
    row163_good082_checked,
    row163_good083_checked,
    row163_good084_checked,
    row163_good085_checked,
    row163_good086_checked,
    row163_good087_checked,
    row163_good088_checked,
    row163_good089_checked,
    row163_good090_checked,
    row163_good091_checked,
    row163_good092_checked,
    row163_good093_checked,
    row163_good094_checked,
    row163_good095_checked,
    row163_good096_checked,
    row163_good097_checked,
    row163_good098_checked,
    row163_good099_checked,
    row163_good100_checked,
    row163_good101_checked,
    row163_good102_checked,
    row163_good103_checked,
    row163_good104_checked,
    row163_good105_checked,
    row163_good106_checked,
    row163_good107_checked,
    row163_good108_checked,
    row163_good109_checked,
    row163_good110_checked,
    row163_good111_checked,
    row163_good112_checked,
    row163_good113_checked,
    row163_good114_checked,
    row163_good115_checked,
    row163_good116_checked,
    row163_good117_checked,
    row163_good118_checked,
    row163_good119_checked,
    row163_good120_checked,
    row163_good121_checked,
    row163_good122_checked,
    row163_good123_checked,
    row163_good124_checked,
    row163_good125_checked,
    row163_good126_checked,
    row163_good127_checked,
    row163_good128_checked,
    row163_good129_checked,
    row163_good130_checked,
    row163_good131_checked,
    row163_good132_checked,
    row163_good133_checked,
    row163_good134_checked,
    row163_good135_checked,
    row163_good136_checked,
    row163_good137_checked,
    row163_good138_checked,
    row163_good139_checked,
    row163_good140_checked,
    row163_good141_checked,
    row163_good142_checked,
    row163_good143_checked,
    row163_good144_checked,
    row163_good145_checked,
    row163_good146_checked,
    row163_good147_checked,
    row163_good148_checked,
    row163_good149_checked,
    row163_good150_checked,
    row163_good151_checked,
    row163_good152_checked,
    row163_good153_checked,
    row163_good154_checked,
    row163_good155_checked,
    row163_good156_checked,
    row163_good157_checked,
    row163_good158_checked,
    row163_good159_checked,
    row163_good160_checked,
    row163_good161_checked,
    row163_good162_checked,
    row163_good163_checked,
    row163_good164_checked,
    row163_good165_checked,
    row163_good166_checked,
    row163_good167_checked,
    row163_good168_checked,
    row163_good169_checked,
    row163_good170_checked,
    row163_good171_checked,
    row163_good172_checked,
    row163_good173_checked,
    row163_good174_checked,
    row163_good175_checked,
    row163_good176_checked,
    row163_good177_checked,
    row163_good178_checked,
    row163_good179_checked,
    row163_good180_checked,
    row163_good181_checked,
    row163_good182_checked,
    row163_good183_checked,
    row163_good184_checked,
    row163_good185_checked,
    row163_good186_checked,
    row163_good187_checked,
    row163_good188_checked,
    row163_good189_checked,
    row163_good190_checked,
    row163_good191_checked,
    row163_good192_checked,
    row163_good193_checked,
    row163_good194_checked,
    row163_good195_checked,
    row163_good196_checked,
    row163_good197_checked,
    row163_good198_checked,
    row163_good199_checked,
    row163_good200_checked,
    row163_good201_checked,
    row163_good202_checked,
    row163_good203_checked,
    row163_good204_checked,
    row163_good205_checked,
    row163_good206_checked,
    row163_good207_checked,
    row163_good208_checked,
    row163_good209_checked,
    row163_good210_checked,
    row163_good211_checked,
    row163_good212_checked,
    row163_good213_checked,
    row163_good214_checked,
    row163_good215_checked,
    row163_good216_checked,
    row163_good217_checked,
    row163_good218_checked,
    row163_good219_checked,
    row163_good220_checked,
    row163_good221_checked,
    row163_good222_checked,
    row163_good223_checked,
    row163_good224_checked,
    row163_good225_checked,
    row163_good226_checked, Bool.true_and]

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row163_goods_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row163_registered :
    decide (row163.height ∈ heightCertificateData) = true := by
  decide +kernel

theorem row163_small_checked :
    coverCheck (2 * row163.height.i + 2) (row163.height.i * (row163.height.i - 1) - 1)
      (row163.goods.map goodSegmentBounds) = true := by
  decide +kernel

theorem row163_layerCover_checked :
    coverCheck (row163.height.i * (row163.height.i - 1)) (row163.height.n0 - 1)
      (row163.layers.map CoverLayer.bounds) = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row163_registered
#print axioms B699LowIndex.LowIndexLean513dc7cc.row163_small_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row163_layerCover_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row163_bounds : List NatInterval :=
  [(328, 479), (480, 641), (642, 803), (804, 959), (960, 1115), (1116, 1271), (1272, 1421), (1422, 1571), (1572, 1733), (1734, 1895), (1896, 2051), (2052, 2201), (2202, 2341), (2342, 2503), (2504, 2665), (2666, 2825), (2826, 2981), (2982, 3133), (3134, 3283), (3284, 3433), (3434, 3595), (3596, 3755), (3756, 3901), (3902, 4051), (4052, 4213), (4214, 4373), (4374, 4535), (4536, 4685), (4686, 4841), (4842, 4993), (4994, 5155), (5156, 5315), (5316, 5471), (5472, 5633), (5634, 5785), (5786, 5945), (5946, 6101), (6102, 6263), (6264, 6425), (6426, 6583), (6584, 6743), (6744, 6899), (6900, 7061), (7062, 7219), (7220, 7381), (7382, 7531), (7532, 7691), (7692, 7853), (7854, 8015), (8016, 8173), (8174, 8333), (8334, 8491), (8492, 8629), (8630, 8791), (8792, 8945), (8946, 9103), (9104, 9265), (9266, 9419), (9420, 9581), (9582, 9713), (9714, 9859), (9860, 10021), (10022, 10171), (10172, 10331), (10332, 10493), (10494, 10649), (10650, 10801), (10802, 10961), (10962, 11119), (11120, 11281), (11282, 11441), (11442, 11599), (11600, 11759), (11760, 11905), (11906, 12065), (12066, 12211), (12212, 12373), (12374, 12535), (12536, 12689), (12690, 12851), (12852, 13003), (13004, 13165), (13166, 13325), (13326, 13475), (13476, 13631), (13632, 13789), (13790, 13951), (13952, 14095), (14096, 14249), (14250, 14411), (14412, 14573), (14574, 14725), (14726, 14885), (14886, 15041), (15042, 15193), (15194, 15355), (15356, 15511), (15512, 15673), (15674, 15833), (15834, 15985), (15986, 16135), (16136, 16289), (16290, 16435), (16436, 16595), (16596, 16735), (16736, 16891), (16892, 17051), (17052, 17209), (17210, 17371), (17372, 17521), (17522, 17681), (17682, 17843), (17844, 18001), (18002, 18151), (18152, 18311), (18312, 18473), (18474, 18623), (18624, 18779), (18780, 18935), (18936, 19081), (19082, 19243), (19244, 19399), (19400, 19553), (19554, 19715), (19716, 19871), (19872, 20029), (20030, 20191), (20192, 20345), (20346, 20503), (20504, 20645), (20646, 20803), (20804, 20951), (20952, 21109), (21110, 21269), (21270, 21431), (21432, 21581), (21582, 21739), (21740, 21901), (21902, 22055), (22056, 22213), (22214, 22355), (22356, 22511), (22512, 22673), (22674, 22831), (22832, 22979), (22980, 23135), (23136, 23293), (23294, 23455), (23456, 23609), (23610, 23771), (23772, 23929), (23930, 24091), (24092, 24253), (24254, 24413), (24414, 24575), (24576, 24733), (24734, 24895), (24896, 25051), (25052, 25199), (25200, 25351), (25352, 25511), (25512, 25633), (25634, 25795), (25796, 25955), (25956, 26113), (26114, 26275), (26276, 26406), (26411, 26569), (26570, 26573), (26624, 26759), (26760, 26786), (27556, 27598), (28125, 28285), (28286, 28287), (28561, 28593), (28672, 28831), (28832, 28879), (29791, 29930), (31213, 31355), (31356, 31412), (31423, 31491), (31827, 31846), (31974, 31989), (32805, 32930), (33614, 33651), (33708, 33776), (34322, 34481), (34482, 34553), (36517, 36659), (36660, 36663), (37303, 37372), (37446, 37465), (37500, 37655), (37656, 37700), (38307, 38453), (39366, 39466), (40401, 40490), (40931, 41089), (41090, 41093), (45369, 45415), (45927, 45958), (47526, 47683), (47684, 47686), (48013, 48123), (48373, 48385), (48387, 48535), (48778, 48830), (49152, 49292), (49298, 49314), (49379, 49460), (50421, 50572), (51076, 51167), (56307, 56331), (56454, 56469), (57245, 57284), (57344, 57407), (68694, 68806), (71289, 71449), (71450, 71451), (73205, 73329), (85805, 85845), (89383, 89535), (93845, 93912), (98415, 98466), (103041, 103128), (137842, 137943), (148955, 149039)]

theorem row163_bounds_eq : row163.goods.map goodSegmentBounds = row163_bounds := by
  rfl

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row163_bounds_eq

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row163_layer000_intervals : List ColouredInterval :=
  [(2, 26624, 26786), (2, 28672, 28834), (2, 32768, 32930), (2, 36864, 37026), (2, 40960, 41122), (2, 45056, 45218), (2, 49152, 49314), (2, 32768, 32930), (2, 40960, 41122), (2, 49152, 49314), (2, 32768, 32930), (2, 49152, 49314), (2, 32768, 32930), (3, 26406, 26406), (3, 28431, 28593), (3, 26406, 26406), (3, 32805, 32967), (3, 39366, 39528), (3, 45927, 46089), (3, 52488, 52650), (3, 39366, 39528), (5, 28125, 28287), (5, 31250, 31412), (5, 34375, 34537), (5, 37500, 37662), (5, 40625, 40787), (5, 31250, 31412), (5, 46875, 47037), (7, 26411, 26573), (7, 28812, 28974), (7, 31213, 31375), (7, 33614, 33776), (7, 50421, 50583), (11, 29282, 29444), (11, 43923, 44085), (13, 26406, 26526), (13, 28561, 28723), (13, 28561, 28723), (17, 29478, 29640), (17, 34391, 34553), (17, 39304, 39466), (17, 44217, 44379), (17, 49130, 49292), (19, 27436, 27598), (19, 34295, 34457), (19, 41154, 41316), (19, 48013, 48175), (23, 36501, 36663), (23, 48668, 48830), (29, 48778, 48940), (31, 29791, 29953), (37, 50653, 50815), (47, 26508, 26670), (47, 28717, 28879), (53, 28090, 28252), (53, 30899, 31061), (53, 33708, 33870), (53, 36517, 36679), (59, 27848, 28010), (59, 31329, 31491), (59, 34810, 34972), (59, 38291, 38453), (59, 41772, 41934), (59, 45253, 45415), (61, 29768, 29930), (61, 33489, 33651), (61, 37210, 37372), (61, 40931, 41093), (61, 44652, 44814), (61, 48373, 48535), (67, 26934, 27096), (67, 31423, 31585), (67, 35912, 36074), (67, 40401, 40563), (67, 44890, 45052), (67, 49379, 49541), (71, 30246, 30408), (71, 35287, 35449), (71, 40328, 40490), (71, 45369, 45531), (71, 50410, 50572), (73, 26645, 26807), (73, 31974, 32136), (73, 37303, 37465), (73, 42632, 42794), (73, 47961, 48123), (79, 31205, 31367), (79, 37446, 37608), (79, 43687, 43849), (79, 49928, 50090), (83, 27556, 27718), (83, 34445, 34607), (83, 41334, 41496), (83, 48223, 48385), (89, 31684, 31846), (89, 39605, 39767), (89, 47526, 47688), (97, 28227, 28389), (97, 37636, 37798), (97, 47045, 47207), (101, 30603, 30765), (101, 40804, 40966), (101, 51005, 51167), (103, 31827, 31989), (103, 42436, 42598), (107, 34347, 34509), (107, 45796, 45958), (109, 35643, 35805), (109, 47524, 47686), (113, 38307, 38469), (113, 51076, 51238), (127, 32258, 32420), (127, 48387, 48549), (131, 34322, 34484), (131, 51483, 51645), (137, 37538, 37700), (139, 38642, 38804), (149, 44402, 44564), (151, 45602, 45764), (157, 49298, 49460)]

def row163_layer000_block000 : List ColouredInterval :=
  [(2, 26624, 26786), (2, 28672, 28834), (2, 32768, 32930), (2, 36864, 37026), (2, 40960, 41122), (2, 45056, 45218), (2, 49152, 49314), (2, 32768, 32930), (2, 40960, 41122), (2, 49152, 49314), (2, 32768, 32930), (2, 49152, 49314), (2, 32768, 32930), (3, 26406, 26406), (3, 28431, 28593), (3, 26406, 26406)]

def row163_layer000_block001 : List ColouredInterval :=
  [(3, 32805, 32967), (3, 39366, 39528), (3, 45927, 46089), (3, 52488, 52650), (3, 39366, 39528), (5, 28125, 28287), (5, 31250, 31412), (5, 34375, 34537), (5, 37500, 37662), (5, 40625, 40787), (5, 31250, 31412), (5, 46875, 47037), (7, 26411, 26573), (7, 28812, 28974), (7, 31213, 31375), (7, 33614, 33776)]

def row163_layer000_block002 : List ColouredInterval :=
  [(7, 50421, 50583), (11, 29282, 29444), (11, 43923, 44085), (13, 26406, 26526), (13, 28561, 28723), (13, 28561, 28723), (17, 29478, 29640), (17, 34391, 34553), (17, 39304, 39466), (17, 44217, 44379), (17, 49130, 49292), (19, 27436, 27598), (19, 34295, 34457), (19, 41154, 41316), (19, 48013, 48175), (23, 36501, 36663)]

def row163_layer000_block003 : List ColouredInterval :=
  [(23, 48668, 48830), (29, 48778, 48940), (31, 29791, 29953), (37, 50653, 50815), (47, 26508, 26670), (47, 28717, 28879), (53, 28090, 28252), (53, 30899, 31061), (53, 33708, 33870), (53, 36517, 36679), (59, 27848, 28010), (59, 31329, 31491), (59, 34810, 34972), (59, 38291, 38453), (59, 41772, 41934), (59, 45253, 45415)]

def row163_layer000_block004 : List ColouredInterval :=
  [(61, 29768, 29930), (61, 33489, 33651), (61, 37210, 37372), (61, 40931, 41093), (61, 44652, 44814), (61, 48373, 48535), (67, 26934, 27096), (67, 31423, 31585), (67, 35912, 36074), (67, 40401, 40563), (67, 44890, 45052), (67, 49379, 49541), (71, 30246, 30408), (71, 35287, 35449), (71, 40328, 40490), (71, 45369, 45531)]

def row163_layer000_block005 : List ColouredInterval :=
  [(71, 50410, 50572), (73, 26645, 26807), (73, 31974, 32136), (73, 37303, 37465), (73, 42632, 42794), (73, 47961, 48123), (79, 31205, 31367), (79, 37446, 37608), (79, 43687, 43849), (79, 49928, 50090), (83, 27556, 27718), (83, 34445, 34607), (83, 41334, 41496), (83, 48223, 48385), (89, 31684, 31846), (89, 39605, 39767)]

def row163_layer000_block006 : List ColouredInterval :=
  [(89, 47526, 47688), (97, 28227, 28389), (97, 37636, 37798), (97, 47045, 47207), (101, 30603, 30765), (101, 40804, 40966), (101, 51005, 51167), (103, 31827, 31989), (103, 42436, 42598), (107, 34347, 34509), (107, 45796, 45958), (109, 35643, 35805), (109, 47524, 47686), (113, 38307, 38469), (113, 51076, 51238), (127, 32258, 32420)]

def row163_layer000_block007 : List ColouredInterval :=
  [(127, 48387, 48549), (131, 34322, 34484), (131, 51483, 51645), (137, 37538, 37700), (139, 38642, 38804), (149, 44402, 44564), (151, 45602, 45764), (157, 49298, 49460)]

def row163_layer000_chunks : List (List ColouredInterval) :=
  [row163_layer000_block000, row163_layer000_block001, row163_layer000_block002, row163_layer000_block003, row163_layer000_block004, row163_layer000_block005, row163_layer000_block006, row163_layer000_block007]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row163_layer000_intervals

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row163_layer000_arithmetic : LayerArithmeticValid row163.height { lower := 26406, upper := 52812, M := 13 } := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row163_layer000_arithmetic

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row163_layer000_enumeration :
    activePowerIntervalList 163 13 26406 52812 = row163_layer000_intervals := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row163_layer000_enumeration

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row163_layer000_pairs000 :
    row163_layer000_block000.all (fun I => row163_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row163_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row163_layer000_pairs000

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row163_layer000_pairs001 :
    row163_layer000_block001.all (fun I => row163_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row163_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row163_layer000_pairs001

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row163_layer000_pairs002 :
    row163_layer000_block002.all (fun I => row163_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row163_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row163_layer000_pairs002

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row163_layer000_pairs003 :
    row163_layer000_block003.all (fun I => row163_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row163_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row163_layer000_pairs003

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row163_layer000_pairs004 :
    row163_layer000_block004.all (fun I => row163_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row163_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row163_layer000_pairs004

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row163_layer000_pairs005 :
    row163_layer000_block005.all (fun I => row163_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row163_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row163_layer000_pairs005

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row163_layer000_pairs006 :
    row163_layer000_block006.all (fun I => row163_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row163_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row163_layer000_pairs006

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row163_layer000_pairs007 :
    row163_layer000_block007.all (fun I => row163_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row163_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row163_layer000_pairs007

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row163_layer000_chunks_eq : row163_layer000_chunks.flatten = row163_layer000_intervals := by
  rfl

theorem row163_layer000_pairs : pairCoverCheck row163_layer000_intervals row163_bounds = true := by
  apply pairCoverCheck_of_chunks row163_layer000_chunks_eq
  intro block hblock
  simp only [row163_layer000_chunks, List.mem_cons, List.mem_nil_iff, or_false] at hblock
  rcases hblock with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
  · exact row163_layer000_pairs000
  · exact row163_layer000_pairs001
  · exact row163_layer000_pairs002
  · exact row163_layer000_pairs003
  · exact row163_layer000_pairs004
  · exact row163_layer000_pairs005
  · exact row163_layer000_pairs006
  · exact row163_layer000_pairs007

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row163_layer000_chunks_eq
#print axioms B699LowIndex.LowIndexLean513dc7cc.row163_layer000_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row163_layer000_checked :
    coverLayerCheck row163.height row163.goods { lower := 26406, upper := 52812, M := 13 } = true := by
  exact coverLayerCheck_of_parts row163_layer000_arithmetic row163_layer000_enumeration row163_bounds_eq row163_layer000_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row163_layer000_checked

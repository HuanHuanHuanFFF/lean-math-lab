import research.tasks.«B699-Binomial».runs.«20260909-low-index-structure-b41a5a63».lean.FiniteCover
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.WitnessBridge
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.LayerParts
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.PairChunks

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row095_height : HeightCertificateDatum := { i := 95, r := 31, s := 66, n0Power10 := 9 }

def row095_goods : List GoodSegment := [
  { lower := 192, upper := 285, witness := RowWitness.topPrime 191 },
  { lower := 286, upper := 377, witness := RowWitness.topPrime 283 },
  { lower := 378, upper := 467, witness := RowWitness.topPrime 373 },
  { lower := 468, upper := 561, witness := RowWitness.topPrime 467 },
  { lower := 562, upper := 651, witness := RowWitness.topPrime 557 },
  { lower := 652, upper := 741, witness := RowWitness.topPrime 647 },
  { lower := 742, upper := 833, witness := RowWitness.topPrime 739 },
  { lower := 834, upper := 923, witness := RowWitness.topPrime 829 },
  { lower := 924, upper := 1013, witness := RowWitness.topPrime 919 },
  { lower := 1014, upper := 1107, witness := RowWitness.topPrime 1013 },
  { lower := 1108, upper := 1197, witness := RowWitness.topPrime 1103 },
  { lower := 1198, upper := 1287, witness := RowWitness.topPrime 1193 },
  { lower := 1288, upper := 1377, witness := RowWitness.topPrime 1283 },
  { lower := 1378, upper := 1467, witness := RowWitness.topPrime 1373 },
  { lower := 1468, upper := 1553, witness := RowWitness.topPrime 1459 },
  { lower := 1554, upper := 1647, witness := RowWitness.topPrime 1553 },
  { lower := 1648, upper := 1731, witness := RowWitness.topPrime 1637 },
  { lower := 1732, upper := 1817, witness := RowWitness.topPrime 1723 },
  { lower := 1818, upper := 1905, witness := RowWitness.topPrime 1811 },
  { lower := 1906, upper := 1995, witness := RowWitness.topPrime 1901 },
  { lower := 1996, upper := 2087, witness := RowWitness.topPrime 1993 },
  { lower := 2088, upper := 2181, witness := RowWitness.topPrime 2087 },
  { lower := 2182, upper := 2273, witness := RowWitness.topPrime 2179 },
  { lower := 2274, upper := 2367, witness := RowWitness.topPrime 2273 },
  { lower := 2368, upper := 2451, witness := RowWitness.topPrime 2357 },
  { lower := 2452, upper := 2541, witness := RowWitness.topPrime 2447 },
  { lower := 2542, upper := 2633, witness := RowWitness.topPrime 2539 },
  { lower := 2634, upper := 2727, witness := RowWitness.topPrime 2633 },
  { lower := 2728, upper := 2813, witness := RowWitness.topPrime 2719 },
  { lower := 2814, upper := 2897, witness := RowWitness.topPrime 2803 },
  { lower := 2898, upper := 2991, witness := RowWitness.topPrime 2897 },
  { lower := 2992, upper := 3065, witness := RowWitness.topPrime 2971 },
  { lower := 3066, upper := 3155, witness := RowWitness.topPrime 3061 },
  { lower := 3156, upper := 3231, witness := RowWitness.topPrime 3137 },
  { lower := 3232, upper := 3323, witness := RowWitness.topPrime 3229 },
  { lower := 3324, upper := 3417, witness := RowWitness.topPrime 3323 },
  { lower := 3418, upper := 3507, witness := RowWitness.topPrime 3413 },
  { lower := 3508, upper := 3593, witness := RowWitness.topPrime 3499 },
  { lower := 3594, upper := 3687, witness := RowWitness.topPrime 3593 },
  { lower := 3688, upper := 3771, witness := RowWitness.topPrime 3677 },
  { lower := 3772, upper := 3863, witness := RowWitness.topPrime 3769 },
  { lower := 3864, upper := 3957, witness := RowWitness.topPrime 3863 },
  { lower := 3958, upper := 4041, witness := RowWitness.topPrime 3947 },
  { lower := 4042, upper := 4121, witness := RowWitness.topPrime 4027 },
  { lower := 4122, upper := 4205, witness := RowWitness.topPrime 4111 },
  { lower := 4206, upper := 4295, witness := RowWitness.topPrime 4201 },
  { lower := 4296, upper := 4383, witness := RowWitness.topPrime 4289 },
  { lower := 4384, upper := 4467, witness := RowWitness.topPrime 4373 },
  { lower := 4468, upper := 4557, witness := RowWitness.topPrime 4463 },
  { lower := 4558, upper := 4643, witness := RowWitness.topPrime 4549 },
  { lower := 4644, upper := 4737, witness := RowWitness.topPrime 4643 },
  { lower := 4738, upper := 4827, witness := RowWitness.topPrime 4733 },
  { lower := 4828, upper := 4911, witness := RowWitness.topPrime 4817 },
  { lower := 4912, upper := 5003, witness := RowWitness.topPrime 4909 },
  { lower := 5004, upper := 5097, witness := RowWitness.topPrime 5003 },
  { lower := 5098, upper := 5181, witness := RowWitness.topPrime 5087 },
  { lower := 5182, upper := 5273, witness := RowWitness.topPrime 5179 },
  { lower := 5274, upper := 5367, witness := RowWitness.topPrime 5273 },
  { lower := 5368, upper := 5445, witness := RowWitness.topPrime 5351 },
  { lower := 5446, upper := 5537, witness := RowWitness.topPrime 5443 },
  { lower := 5538, upper := 5625, witness := RowWitness.topPrime 5531 },
  { lower := 5626, upper := 5717, witness := RowWitness.topPrime 5623 },
  { lower := 5718, upper := 5811, witness := RowWitness.topPrime 5717 },
  { lower := 5812, upper := 5901, witness := RowWitness.topPrime 5807 },
  { lower := 5902, upper := 5991, witness := RowWitness.topPrime 5897 },
  { lower := 5992, upper := 6081, witness := RowWitness.topPrime 5987 },
  { lower := 6082, upper := 6173, witness := RowWitness.topPrime 6079 },
  { lower := 6174, upper := 6267, witness := RowWitness.topPrime 6173 },
  { lower := 6268, upper := 6357, witness := RowWitness.topPrime 6263 },
  { lower := 6358, upper := 6447, witness := RowWitness.topPrime 6353 },
  { lower := 6448, upper := 6521, witness := RowWitness.topPrime 6427 },
  { lower := 6522, upper := 6615, witness := RowWitness.topPrime 6521 },
  { lower := 6616, upper := 6701, witness := RowWitness.topPrime 6607 },
  { lower := 6702, upper := 6795, witness := RowWitness.topPrime 6701 },
  { lower := 6796, upper := 6887, witness := RowWitness.topPrime 6793 },
  { lower := 6888, upper := 6977, witness := RowWitness.topPrime 6883 },
  { lower := 6978, upper := 7071, witness := RowWitness.topPrime 6977 },
  { lower := 7072, upper := 7163, witness := RowWitness.topPrime 7069 },
  { lower := 7164, upper := 7253, witness := RowWitness.topPrime 7159 },
  { lower := 7254, upper := 7347, witness := RowWitness.topPrime 7253 },
  { lower := 7348, upper := 7427, witness := RowWitness.topPrime 7333 },
  { lower := 7428, upper := 7511, witness := RowWitness.topPrime 7417 },
  { lower := 7512, upper := 7601, witness := RowWitness.topPrime 7507 },
  { lower := 7602, upper := 7685, witness := RowWitness.topPrime 7591 },
  { lower := 7686, upper := 7775, witness := RowWitness.topPrime 7681 },
  { lower := 7776, upper := 7853, witness := RowWitness.topPrime 7759 },
  { lower := 7854, upper := 7947, witness := RowWitness.topPrime 7853 },
  { lower := 7948, upper := 8031, witness := RowWitness.topPrime 7937 },
  { lower := 8032, upper := 8111, witness := RowWitness.topPrime 8017 },
  { lower := 8112, upper := 8205, witness := RowWitness.topPrime 8111 },
  { lower := 8206, upper := 8285, witness := RowWitness.topPrime 8191 },
  { lower := 8286, upper := 8367, witness := RowWitness.topPrime 8273 },
  { lower := 8368, upper := 8457, witness := RowWitness.topPrime 8363 },
  { lower := 8458, upper := 8541, witness := RowWitness.topPrime 8447 },
  { lower := 8542, upper := 8633, witness := RowWitness.topPrime 8539 },
  { lower := 8634, upper := 8723, witness := RowWitness.topPrime 8629 },
  { lower := 8724, upper := 8813, witness := RowWitness.topPrime 8719 },
  { lower := 8814, upper := 8901, witness := RowWitness.topPrime 8807 },
  { lower := 8902, upper := 8929, witness := RowWitness.topPrime 8893 },
  { lower := 8993, upper := 9065, witness := RowWitness.topPrime 8971 },
  { lower := 9066, upper := 9072, witness := RowWitness.topPrime 9059 },
  { lower := 9245, upper := 9335, witness := RowWitness.topPrime 9241 },
  { lower := 9336, upper := 9345, witness := RowWitness.topPrime 9323 },
  { lower := 9375, upper := 9411, witness := RowWitness.topPrime 9371 },
  { lower := 9522, upper := 9571, witness := RowWitness.topPrime 9521 },
  { lower := 9583, upper := 9645, witness := RowWitness.topPrime 9551 },
  { lower := 9646, upper := 9698, witness := RowWitness.topPrime 9643 },
  { lower := 10082, upper := 10173, witness := RowWitness.topPrime 10079 },
  { lower := 10174, upper := 10180, witness := RowWitness.topPrime 10169 },
  { lower := 10240, upper := 10300, witness := RowWitness.topPrime 10223 },
  { lower := 10580, upper := 10661, witness := RowWitness.topPrime 10567 },
  { lower := 10662, upper := 10742, witness := RowWitness.topPrime 10657 },
  { lower := 10752, upper := 10752, witness := RowWitness.topPrime 10739 },
  { lower := 10935, upper := 11003, witness := RowWitness.topPrime 10909 },
  { lower := 11004, upper := 11079, witness := RowWitness.topPrime 11003 },
  { lower := 11094, upper := 11187, witness := RowWitness.topPrime 11093 },
  { lower := 11188, upper := 11203, witness := RowWitness.topPrime 11177 },
  { lower := 11236, upper := 11257, witness := RowWitness.topPrime 11213 },
  { lower := 11264, upper := 11330, witness := RowWitness.topPrime 11261 },
  { lower := 11774, upper := 11837, witness := RowWitness.topPrime 11743 },
  { lower := 11838, upper := 11861, witness := RowWitness.topPrime 11833 },
  { lower := 12005, upper := 12073, witness := RowWitness.topPrime 11987 },
  { lower := 12321, upper := 12382, witness := RowWitness.topPrime 12301 },
  { lower := 12393, upper := 12415, witness := RowWitness.topPrime 12391 },
  { lower := 12482, upper := 12487, witness := RowWitness.topPrime 12479 },
  { lower := 12493, upper := 12585, witness := RowWitness.topPrime 12491 },
  { lower := 12586, upper := 12587, witness := RowWitness.topPrime 12583 },
  { lower := 13182, upper := 13216, witness := RowWitness.topPrime 13177 },
  { lower := 13254, upper := 13276, witness := RowWitness.topPrime 13249 },
  { lower := 13310, upper := 13403, witness := RowWitness.topPrime 13309 },
  { lower := 13404, upper := 13404, witness := RowWitness.topPrime 13399 },
  { lower := 13454, upper := 13545, witness := RowWitness.topPrime 13451 },
  { lower := 13546, upper := 13550, witness := RowWitness.topPrime 13537 },
  { lower := 13778, upper := 13784, witness := RowWitness.topPrime 13763 },
  { lower := 13851, upper := 13872, witness := RowWitness.topPrime 13841 },
  { lower := 13924, upper := 13945, witness := RowWitness.topPrime 13921 },
  { lower := 14336, upper := 14391, witness := RowWitness.topPrime 14327 },
  { lower := 14406, upper := 14495, witness := RowWitness.topPrime 14401 },
  { lower := 14496, upper := 14500, witness := RowWitness.topPrime 14489 },
  { lower := 14641, upper := 14674, witness := RowWitness.topPrime 14639 },
  { lower := 14792, upper := 14833, witness := RowWitness.topPrime 14783 },
  { lower := 14884, upper := 14886, witness := RowWitness.topPrime 14879 },
  { lower := 15123, upper := 15215, witness := RowWitness.topPrime 15121 },
  { lower := 15216, upper := 15223, witness := RowWitness.topPrime 15199 },
  { lower := 15360, upper := 15453, witness := RowWitness.topPrime 15359 },
  { lower := 15454, upper := 15473, witness := RowWitness.topPrime 15451 },
  { lower := 15979, upper := 16067, witness := RowWitness.topPrime 15973 },
  { lower := 16068, upper := 16073, witness := RowWitness.topPrime 16067 },
  { lower := 16384, upper := 16475, witness := RowWitness.topPrime 16381 },
  { lower := 16476, upper := 16478, witness := RowWitness.topPrime 16453 },
  { lower := 16810, upper := 16881, witness := RowWitness.topPrime 16787 },
  { lower := 16882, upper := 16914, witness := RowWitness.topPrime 16879 },
  { lower := 17303, upper := 17392, witness := RowWitness.topPrime 17299 },
  { lower := 17408, upper := 17495, witness := RowWitness.topPrime 17401 },
  { lower := 17496, upper := 17502, witness := RowWitness.topPrime 17491 },
  { lower := 17576, upper := 17590, witness := RowWitness.topPrime 17573 },
  { lower := 17661, upper := 17670, witness := RowWitness.topPrime 17659 },
  { lower := 17672, upper := 17755, witness := RowWitness.topPrime 17669 },
  { lower := 18490, upper := 18575, witness := RowWitness.topPrime 18481 },
  { lower := 18576, upper := 18584, witness := RowWitness.topPrime 18553 },
  { lower := 18634, upper := 18699, witness := RowWitness.topPrime 18617 },
  { lower := 18723, upper := 18728, witness := RowWitness.topPrime 18719 },
  { lower := 19208, upper := 19260, witness := RowWitness.topPrime 19207 },
  { lower := 19663, upper := 19755, witness := RowWitness.topPrime 19661 },
  { lower := 19756, upper := 19757, witness := RowWitness.topPrime 19753 },
  { lower := 19773, upper := 19777, witness := RowWitness.topPrime 19763 },
  { lower := 19965, upper := 19975, witness := RowWitness.topPrime 19963 },
  { lower := 20172, upper := 20255, witness := RowWitness.topPrime 20161 },
  { lower := 20256, upper := 20258, witness := RowWitness.topPrime 20249 },
  { lower := 20535, upper := 20574, witness := RowWitness.topPrime 20533 },
  { lower := 21316, upper := 21390, witness := RowWitness.topPrime 21313 },
  { lower := 21870, upper := 21957, witness := RowWitness.topPrime 21863 },
  { lower := 21958, upper := 21964, witness := RowWitness.topPrime 21943 },
  { lower := 21970, upper := 21998, witness := RowWitness.topPrime 21961 },
  { lower := 22472, upper := 22563, witness := RowWitness.topPrime 22469 },
  { lower := 22564, upper := 22566, witness := RowWitness.topPrime 22549 },
  { lower := 24037, upper := 24123, witness := RowWitness.topPrime 24029 },
  { lower := 24124, upper := 24131, witness := RowWitness.topPrime 24121 },
  { lower := 24334, upper := 24423, witness := RowWitness.topPrime 24329 },
  { lower := 24424, upper := 24461, witness := RowWitness.topPrime 24421 },
  { lower := 24576, upper := 24659, witness := RowWitness.topPrime 24571 },
  { lower := 25215, upper := 25283, witness := RowWitness.topPrime 25189 },
  { lower := 25284, upper := 25309, witness := RowWitness.topPrime 25261 },
  { lower := 26411, upper := 26458, witness := RowWitness.topPrime 26407 },
  { lower := 26645, upper := 26718, witness := RowWitness.topPrime 26641 },
  { lower := 26934, upper := 26990, witness := RowWitness.topPrime 26927 },
  { lower := 28577, upper := 28655, witness := RowWitness.topPrime 28573 },
  { lower := 28717, upper := 28766, witness := RowWitness.topPrime 28711 },
  { lower := 29791, upper := 29862, witness := RowWitness.topPrime 29789 },
  { lower := 30758, upper := 30814, witness := RowWitness.topPrime 30757 },
  { lower := 30926, upper := 30993, witness := RowWitness.topPrime 30911 },
  { lower := 31213, upper := 31287, witness := RowWitness.topPrime 31193 },
  { lower := 31288, upper := 31307, witness := RowWitness.topPrime 31277 },
  { lower := 31329, upper := 31344, witness := RowWitness.topPrime 31327 },
  { lower := 31423, upper := 31423, witness := RowWitness.topPrime 31397 },
  { lower := 31433, upper := 31491, witness := RowWitness.topPrime 31397 },
  { lower := 31492, upper := 31517, witness := RowWitness.topPrime 31489 },
  { lower := 32805, upper := 32862, witness := RowWitness.topPrime 32803 },
  { lower := 33708, upper := 33708, witness := RowWitness.topPrime 33703 },
  { lower := 34445, upper := 34485, witness := RowWitness.topPrime 34439 },
  { lower := 34816, upper := 34901, witness := RowWitness.topPrime 34807 },
  { lower := 34902, upper := 34904, witness := RowWitness.topPrime 34897 },
  { lower := 35344, upper := 35381, witness := RowWitness.topPrime 35339 },
  { lower := 36517, upper := 36591, witness := RowWitness.topPrime 36497 },
  { lower := 36592, upper := 36595, witness := RowWitness.topPrime 36587 },
  { lower := 37303, upper := 37304, witness := RowWitness.topPrime 37277 },
  { lower := 39326, upper := 39417, witness := RowWitness.topPrime 39323 },
  { lower := 39418, upper := 39420, witness := RowWitness.topPrime 39409 },
  { lower := 40401, upper := 40422, witness := RowWitness.topPrime 40387 },
  { lower := 40960, upper := 41025, witness := RowWitness.topPrime 40949 },
  { lower := 48734, upper := 48762, witness := RowWitness.topPrime 48733 },
  { lower := 48778, upper := 48828, witness := RowWitness.topPrime 48767 },
  { lower := 49152, upper := 49224, witness := RowWitness.topPrime 49139 },
  { lower := 50421, upper := 50504, witness := RowWitness.topPrime 50417 },
  { lower := 53290, upper := 53342, witness := RowWitness.topPrime 53281 },
  { lower := 55451, upper := 55535, witness := RowWitness.topPrime 55441 },
  { lower := 55536, upper := 55541, witness := RowWitness.topPrime 55529 },
  { lower := 58619, upper := 58658, witness := RowWitness.topPrime 58613 },
  { lower := 59049, upper := 59050, witness := RowWitness.topPrime 59029 },
  { lower := 63948, upper := 63963, witness := RowWitness.topPrime 63929 },
  { lower := 65536, upper := 65615, witness := RowWitness.topPrime 65521 },
  { lower := 65616, upper := 65630, witness := RowWitness.topPrime 65609 },
  { lower := 68921, upper := 68984, witness := RowWitness.topPrime 68917 },
  { lower := 73205, upper := 73261, witness := RowWitness.topPrime 73189 },
  { lower := 137842, upper := 137875, witness := RowWitness.topPrime 137831 },
  { lower := 148955, upper := 148971, witness := RowWitness.topPrime 148949 }
]

def row095_layers : List CoverLayer := [
  { lower := 8930, upper := 17860, M := 21 },
  { lower := 17860, upper := 35720, M := 17 },
  { lower := 35720, upper := 71440, M := 14 },
  { lower := 71440, upper := 142880, M := 11 },
  { lower := 142880, upper := 285760, M := 9 },
  { lower := 285760, upper := 571520, M := 7 },
  { lower := 571520, upper := 1143040, M := 6 },
  { lower := 1143040, upper := 2286080, M := 5 },
  { lower := 2286080, upper := 4572160, M := 4 },
  { lower := 4572160, upper := 9144320, M := 3 },
  { lower := 9144320, upper := 18288640, M := 3 },
  { lower := 18288640, upper := 36577280, M := 2 },
  { lower := 36577280, upper := 73154560, M := 2 },
  { lower := 73154560, upper := 146309120, M := 2 },
  { lower := 146309120, upper := 292618240, M := 1 },
  { lower := 292618240, upper := 585236480, M := 1 },
  { lower := 585236480, upper := 1000000000, M := 1 }
]

def row095 : FiniteCoverRow := {
  height := row095_height,
  goods := row095_goods,
  layers := row095_layers
}


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row095

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row095_good000_checked :
    goodSegmentCheck 95 31 66
      { lower := 192, upper := 285, witness := RowWitness.topPrime 191 } = true := by
  exact good_top_prime_checked (i := 95) (r := 31) (s := 66) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row095_good001_checked :
    goodSegmentCheck 95 31 66
      { lower := 286, upper := 377, witness := RowWitness.topPrime 283 } = true := by
  exact good_top_prime_checked (i := 95) (r := 31) (s := 66) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row095_good002_checked :
    goodSegmentCheck 95 31 66
      { lower := 378, upper := 467, witness := RowWitness.topPrime 373 } = true := by
  exact good_top_prime_checked (i := 95) (r := 31) (s := 66) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row095_good003_checked :
    goodSegmentCheck 95 31 66
      { lower := 468, upper := 561, witness := RowWitness.topPrime 467 } = true := by
  exact good_top_prime_checked (i := 95) (r := 31) (s := 66) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row095_good004_checked :
    goodSegmentCheck 95 31 66
      { lower := 562, upper := 651, witness := RowWitness.topPrime 557 } = true := by
  exact good_top_prime_checked (i := 95) (r := 31) (s := 66) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row095_good005_checked :
    goodSegmentCheck 95 31 66
      { lower := 652, upper := 741, witness := RowWitness.topPrime 647 } = true := by
  exact good_top_prime_checked (i := 95) (r := 31) (s := 66) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row095_good006_checked :
    goodSegmentCheck 95 31 66
      { lower := 742, upper := 833, witness := RowWitness.topPrime 739 } = true := by
  exact good_top_prime_checked (i := 95) (r := 31) (s := 66) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row095_good007_checked :
    goodSegmentCheck 95 31 66
      { lower := 834, upper := 923, witness := RowWitness.topPrime 829 } = true := by
  exact good_top_prime_checked (i := 95) (r := 31) (s := 66) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row095_good008_checked :
    goodSegmentCheck 95 31 66
      { lower := 924, upper := 1013, witness := RowWitness.topPrime 919 } = true := by
  exact good_top_prime_checked (i := 95) (r := 31) (s := 66) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row095_good009_checked :
    goodSegmentCheck 95 31 66
      { lower := 1014, upper := 1107, witness := RowWitness.topPrime 1013 } = true := by
  exact good_top_prime_checked (i := 95) (r := 31) (s := 66) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row095_good010_checked :
    goodSegmentCheck 95 31 66
      { lower := 1108, upper := 1197, witness := RowWitness.topPrime 1103 } = true := by
  exact good_top_prime_checked (i := 95) (r := 31) (s := 66) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row095_good011_checked :
    goodSegmentCheck 95 31 66
      { lower := 1198, upper := 1287, witness := RowWitness.topPrime 1193 } = true := by
  exact good_top_prime_checked (i := 95) (r := 31) (s := 66) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row095_good012_checked :
    goodSegmentCheck 95 31 66
      { lower := 1288, upper := 1377, witness := RowWitness.topPrime 1283 } = true := by
  exact good_top_prime_checked (i := 95) (r := 31) (s := 66) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row095_good013_checked :
    goodSegmentCheck 95 31 66
      { lower := 1378, upper := 1467, witness := RowWitness.topPrime 1373 } = true := by
  exact good_top_prime_checked (i := 95) (r := 31) (s := 66) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row095_good014_checked :
    goodSegmentCheck 95 31 66
      { lower := 1468, upper := 1553, witness := RowWitness.topPrime 1459 } = true := by
  exact good_top_prime_checked (i := 95) (r := 31) (s := 66) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row095_good015_checked :
    goodSegmentCheck 95 31 66
      { lower := 1554, upper := 1647, witness := RowWitness.topPrime 1553 } = true := by
  exact good_top_prime_checked (i := 95) (r := 31) (s := 66) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row095_good000_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row095_good001_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row095_good002_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row095_good003_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row095_good004_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row095_good005_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row095_good006_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row095_good007_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row095_good008_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row095_good009_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row095_good010_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row095_good011_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row095_good012_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row095_good013_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row095_good014_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row095_good015_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row095_good016_checked :
    goodSegmentCheck 95 31 66
      { lower := 1648, upper := 1731, witness := RowWitness.topPrime 1637 } = true := by
  exact good_top_prime_checked (i := 95) (r := 31) (s := 66) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row095_good017_checked :
    goodSegmentCheck 95 31 66
      { lower := 1732, upper := 1817, witness := RowWitness.topPrime 1723 } = true := by
  exact good_top_prime_checked (i := 95) (r := 31) (s := 66) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row095_good018_checked :
    goodSegmentCheck 95 31 66
      { lower := 1818, upper := 1905, witness := RowWitness.topPrime 1811 } = true := by
  exact good_top_prime_checked (i := 95) (r := 31) (s := 66) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row095_good019_checked :
    goodSegmentCheck 95 31 66
      { lower := 1906, upper := 1995, witness := RowWitness.topPrime 1901 } = true := by
  exact good_top_prime_checked (i := 95) (r := 31) (s := 66) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row095_good020_checked :
    goodSegmentCheck 95 31 66
      { lower := 1996, upper := 2087, witness := RowWitness.topPrime 1993 } = true := by
  exact good_top_prime_checked (i := 95) (r := 31) (s := 66) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row095_good021_checked :
    goodSegmentCheck 95 31 66
      { lower := 2088, upper := 2181, witness := RowWitness.topPrime 2087 } = true := by
  exact good_top_prime_checked (i := 95) (r := 31) (s := 66) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row095_good022_checked :
    goodSegmentCheck 95 31 66
      { lower := 2182, upper := 2273, witness := RowWitness.topPrime 2179 } = true := by
  exact good_top_prime_checked (i := 95) (r := 31) (s := 66) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row095_good023_checked :
    goodSegmentCheck 95 31 66
      { lower := 2274, upper := 2367, witness := RowWitness.topPrime 2273 } = true := by
  exact good_top_prime_checked (i := 95) (r := 31) (s := 66) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row095_good024_checked :
    goodSegmentCheck 95 31 66
      { lower := 2368, upper := 2451, witness := RowWitness.topPrime 2357 } = true := by
  exact good_top_prime_checked (i := 95) (r := 31) (s := 66) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row095_good025_checked :
    goodSegmentCheck 95 31 66
      { lower := 2452, upper := 2541, witness := RowWitness.topPrime 2447 } = true := by
  exact good_top_prime_checked (i := 95) (r := 31) (s := 66) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row095_good026_checked :
    goodSegmentCheck 95 31 66
      { lower := 2542, upper := 2633, witness := RowWitness.topPrime 2539 } = true := by
  exact good_top_prime_checked (i := 95) (r := 31) (s := 66) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row095_good027_checked :
    goodSegmentCheck 95 31 66
      { lower := 2634, upper := 2727, witness := RowWitness.topPrime 2633 } = true := by
  exact good_top_prime_checked (i := 95) (r := 31) (s := 66) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row095_good028_checked :
    goodSegmentCheck 95 31 66
      { lower := 2728, upper := 2813, witness := RowWitness.topPrime 2719 } = true := by
  exact good_top_prime_checked (i := 95) (r := 31) (s := 66) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row095_good029_checked :
    goodSegmentCheck 95 31 66
      { lower := 2814, upper := 2897, witness := RowWitness.topPrime 2803 } = true := by
  exact good_top_prime_checked (i := 95) (r := 31) (s := 66) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row095_good030_checked :
    goodSegmentCheck 95 31 66
      { lower := 2898, upper := 2991, witness := RowWitness.topPrime 2897 } = true := by
  exact good_top_prime_checked (i := 95) (r := 31) (s := 66) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row095_good031_checked :
    goodSegmentCheck 95 31 66
      { lower := 2992, upper := 3065, witness := RowWitness.topPrime 2971 } = true := by
  exact good_top_prime_checked (i := 95) (r := 31) (s := 66) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row095_good016_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row095_good017_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row095_good018_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row095_good019_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row095_good020_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row095_good021_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row095_good022_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row095_good023_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row095_good024_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row095_good025_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row095_good026_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row095_good027_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row095_good028_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row095_good029_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row095_good030_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row095_good031_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row095_good032_checked :
    goodSegmentCheck 95 31 66
      { lower := 3066, upper := 3155, witness := RowWitness.topPrime 3061 } = true := by
  exact good_top_prime_checked (i := 95) (r := 31) (s := 66) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row095_good033_checked :
    goodSegmentCheck 95 31 66
      { lower := 3156, upper := 3231, witness := RowWitness.topPrime 3137 } = true := by
  exact good_top_prime_checked (i := 95) (r := 31) (s := 66) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row095_good034_checked :
    goodSegmentCheck 95 31 66
      { lower := 3232, upper := 3323, witness := RowWitness.topPrime 3229 } = true := by
  exact good_top_prime_checked (i := 95) (r := 31) (s := 66) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row095_good035_checked :
    goodSegmentCheck 95 31 66
      { lower := 3324, upper := 3417, witness := RowWitness.topPrime 3323 } = true := by
  exact good_top_prime_checked (i := 95) (r := 31) (s := 66) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row095_good036_checked :
    goodSegmentCheck 95 31 66
      { lower := 3418, upper := 3507, witness := RowWitness.topPrime 3413 } = true := by
  exact good_top_prime_checked (i := 95) (r := 31) (s := 66) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row095_good037_checked :
    goodSegmentCheck 95 31 66
      { lower := 3508, upper := 3593, witness := RowWitness.topPrime 3499 } = true := by
  exact good_top_prime_checked (i := 95) (r := 31) (s := 66) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row095_good038_checked :
    goodSegmentCheck 95 31 66
      { lower := 3594, upper := 3687, witness := RowWitness.topPrime 3593 } = true := by
  exact good_top_prime_checked (i := 95) (r := 31) (s := 66) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row095_good039_checked :
    goodSegmentCheck 95 31 66
      { lower := 3688, upper := 3771, witness := RowWitness.topPrime 3677 } = true := by
  exact good_top_prime_checked (i := 95) (r := 31) (s := 66) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row095_good040_checked :
    goodSegmentCheck 95 31 66
      { lower := 3772, upper := 3863, witness := RowWitness.topPrime 3769 } = true := by
  exact good_top_prime_checked (i := 95) (r := 31) (s := 66) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row095_good041_checked :
    goodSegmentCheck 95 31 66
      { lower := 3864, upper := 3957, witness := RowWitness.topPrime 3863 } = true := by
  exact good_top_prime_checked (i := 95) (r := 31) (s := 66) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row095_good042_checked :
    goodSegmentCheck 95 31 66
      { lower := 3958, upper := 4041, witness := RowWitness.topPrime 3947 } = true := by
  exact good_top_prime_checked (i := 95) (r := 31) (s := 66) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row095_good043_checked :
    goodSegmentCheck 95 31 66
      { lower := 4042, upper := 4121, witness := RowWitness.topPrime 4027 } = true := by
  exact good_top_prime_checked (i := 95) (r := 31) (s := 66) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row095_good044_checked :
    goodSegmentCheck 95 31 66
      { lower := 4122, upper := 4205, witness := RowWitness.topPrime 4111 } = true := by
  exact good_top_prime_checked (i := 95) (r := 31) (s := 66) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row095_good045_checked :
    goodSegmentCheck 95 31 66
      { lower := 4206, upper := 4295, witness := RowWitness.topPrime 4201 } = true := by
  exact good_top_prime_checked (i := 95) (r := 31) (s := 66) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row095_good046_checked :
    goodSegmentCheck 95 31 66
      { lower := 4296, upper := 4383, witness := RowWitness.topPrime 4289 } = true := by
  exact good_top_prime_checked (i := 95) (r := 31) (s := 66) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row095_good047_checked :
    goodSegmentCheck 95 31 66
      { lower := 4384, upper := 4467, witness := RowWitness.topPrime 4373 } = true := by
  exact good_top_prime_checked (i := 95) (r := 31) (s := 66) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row095_good032_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row095_good033_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row095_good034_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row095_good035_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row095_good036_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row095_good037_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row095_good038_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row095_good039_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row095_good040_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row095_good041_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row095_good042_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row095_good043_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row095_good044_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row095_good045_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row095_good046_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row095_good047_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row095_good048_checked :
    goodSegmentCheck 95 31 66
      { lower := 4468, upper := 4557, witness := RowWitness.topPrime 4463 } = true := by
  exact good_top_prime_checked (i := 95) (r := 31) (s := 66) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row095_good049_checked :
    goodSegmentCheck 95 31 66
      { lower := 4558, upper := 4643, witness := RowWitness.topPrime 4549 } = true := by
  exact good_top_prime_checked (i := 95) (r := 31) (s := 66) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row095_good050_checked :
    goodSegmentCheck 95 31 66
      { lower := 4644, upper := 4737, witness := RowWitness.topPrime 4643 } = true := by
  exact good_top_prime_checked (i := 95) (r := 31) (s := 66) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row095_good051_checked :
    goodSegmentCheck 95 31 66
      { lower := 4738, upper := 4827, witness := RowWitness.topPrime 4733 } = true := by
  exact good_top_prime_checked (i := 95) (r := 31) (s := 66) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row095_good052_checked :
    goodSegmentCheck 95 31 66
      { lower := 4828, upper := 4911, witness := RowWitness.topPrime 4817 } = true := by
  exact good_top_prime_checked (i := 95) (r := 31) (s := 66) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row095_good053_checked :
    goodSegmentCheck 95 31 66
      { lower := 4912, upper := 5003, witness := RowWitness.topPrime 4909 } = true := by
  exact good_top_prime_checked (i := 95) (r := 31) (s := 66) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row095_good054_checked :
    goodSegmentCheck 95 31 66
      { lower := 5004, upper := 5097, witness := RowWitness.topPrime 5003 } = true := by
  exact good_top_prime_checked (i := 95) (r := 31) (s := 66) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row095_good055_checked :
    goodSegmentCheck 95 31 66
      { lower := 5098, upper := 5181, witness := RowWitness.topPrime 5087 } = true := by
  exact good_top_prime_checked (i := 95) (r := 31) (s := 66) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row095_good056_checked :
    goodSegmentCheck 95 31 66
      { lower := 5182, upper := 5273, witness := RowWitness.topPrime 5179 } = true := by
  exact good_top_prime_checked (i := 95) (r := 31) (s := 66) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row095_good057_checked :
    goodSegmentCheck 95 31 66
      { lower := 5274, upper := 5367, witness := RowWitness.topPrime 5273 } = true := by
  exact good_top_prime_checked (i := 95) (r := 31) (s := 66) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row095_good058_checked :
    goodSegmentCheck 95 31 66
      { lower := 5368, upper := 5445, witness := RowWitness.topPrime 5351 } = true := by
  exact good_top_prime_checked (i := 95) (r := 31) (s := 66) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row095_good059_checked :
    goodSegmentCheck 95 31 66
      { lower := 5446, upper := 5537, witness := RowWitness.topPrime 5443 } = true := by
  exact good_top_prime_checked (i := 95) (r := 31) (s := 66) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row095_good060_checked :
    goodSegmentCheck 95 31 66
      { lower := 5538, upper := 5625, witness := RowWitness.topPrime 5531 } = true := by
  exact good_top_prime_checked (i := 95) (r := 31) (s := 66) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row095_good061_checked :
    goodSegmentCheck 95 31 66
      { lower := 5626, upper := 5717, witness := RowWitness.topPrime 5623 } = true := by
  exact good_top_prime_checked (i := 95) (r := 31) (s := 66) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row095_good062_checked :
    goodSegmentCheck 95 31 66
      { lower := 5718, upper := 5811, witness := RowWitness.topPrime 5717 } = true := by
  exact good_top_prime_checked (i := 95) (r := 31) (s := 66) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row095_good063_checked :
    goodSegmentCheck 95 31 66
      { lower := 5812, upper := 5901, witness := RowWitness.topPrime 5807 } = true := by
  exact good_top_prime_checked (i := 95) (r := 31) (s := 66) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row095_good048_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row095_good049_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row095_good050_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row095_good051_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row095_good052_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row095_good053_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row095_good054_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row095_good055_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row095_good056_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row095_good057_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row095_good058_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row095_good059_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row095_good060_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row095_good061_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row095_good062_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row095_good063_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row095_good064_checked :
    goodSegmentCheck 95 31 66
      { lower := 5902, upper := 5991, witness := RowWitness.topPrime 5897 } = true := by
  exact good_top_prime_checked (i := 95) (r := 31) (s := 66) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row095_good065_checked :
    goodSegmentCheck 95 31 66
      { lower := 5992, upper := 6081, witness := RowWitness.topPrime 5987 } = true := by
  exact good_top_prime_checked (i := 95) (r := 31) (s := 66) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row095_good066_checked :
    goodSegmentCheck 95 31 66
      { lower := 6082, upper := 6173, witness := RowWitness.topPrime 6079 } = true := by
  exact good_top_prime_checked (i := 95) (r := 31) (s := 66) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row095_good067_checked :
    goodSegmentCheck 95 31 66
      { lower := 6174, upper := 6267, witness := RowWitness.topPrime 6173 } = true := by
  exact good_top_prime_checked (i := 95) (r := 31) (s := 66) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row095_good068_checked :
    goodSegmentCheck 95 31 66
      { lower := 6268, upper := 6357, witness := RowWitness.topPrime 6263 } = true := by
  exact good_top_prime_checked (i := 95) (r := 31) (s := 66) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row095_good069_checked :
    goodSegmentCheck 95 31 66
      { lower := 6358, upper := 6447, witness := RowWitness.topPrime 6353 } = true := by
  exact good_top_prime_checked (i := 95) (r := 31) (s := 66) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row095_good070_checked :
    goodSegmentCheck 95 31 66
      { lower := 6448, upper := 6521, witness := RowWitness.topPrime 6427 } = true := by
  exact good_top_prime_checked (i := 95) (r := 31) (s := 66) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row095_good071_checked :
    goodSegmentCheck 95 31 66
      { lower := 6522, upper := 6615, witness := RowWitness.topPrime 6521 } = true := by
  exact good_top_prime_checked (i := 95) (r := 31) (s := 66) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row095_good072_checked :
    goodSegmentCheck 95 31 66
      { lower := 6616, upper := 6701, witness := RowWitness.topPrime 6607 } = true := by
  exact good_top_prime_checked (i := 95) (r := 31) (s := 66) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row095_good073_checked :
    goodSegmentCheck 95 31 66
      { lower := 6702, upper := 6795, witness := RowWitness.topPrime 6701 } = true := by
  exact good_top_prime_checked (i := 95) (r := 31) (s := 66) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row095_good074_checked :
    goodSegmentCheck 95 31 66
      { lower := 6796, upper := 6887, witness := RowWitness.topPrime 6793 } = true := by
  exact good_top_prime_checked (i := 95) (r := 31) (s := 66) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row095_good075_checked :
    goodSegmentCheck 95 31 66
      { lower := 6888, upper := 6977, witness := RowWitness.topPrime 6883 } = true := by
  exact good_top_prime_checked (i := 95) (r := 31) (s := 66) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row095_good076_checked :
    goodSegmentCheck 95 31 66
      { lower := 6978, upper := 7071, witness := RowWitness.topPrime 6977 } = true := by
  exact good_top_prime_checked (i := 95) (r := 31) (s := 66) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row095_good077_checked :
    goodSegmentCheck 95 31 66
      { lower := 7072, upper := 7163, witness := RowWitness.topPrime 7069 } = true := by
  exact good_top_prime_checked (i := 95) (r := 31) (s := 66) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row095_good078_checked :
    goodSegmentCheck 95 31 66
      { lower := 7164, upper := 7253, witness := RowWitness.topPrime 7159 } = true := by
  exact good_top_prime_checked (i := 95) (r := 31) (s := 66) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row095_good079_checked :
    goodSegmentCheck 95 31 66
      { lower := 7254, upper := 7347, witness := RowWitness.topPrime 7253 } = true := by
  exact good_top_prime_checked (i := 95) (r := 31) (s := 66) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row095_good064_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row095_good065_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row095_good066_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row095_good067_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row095_good068_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row095_good069_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row095_good070_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row095_good071_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row095_good072_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row095_good073_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row095_good074_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row095_good075_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row095_good076_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row095_good077_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row095_good078_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row095_good079_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row095_good080_checked :
    goodSegmentCheck 95 31 66
      { lower := 7348, upper := 7427, witness := RowWitness.topPrime 7333 } = true := by
  exact good_top_prime_checked (i := 95) (r := 31) (s := 66) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row095_good081_checked :
    goodSegmentCheck 95 31 66
      { lower := 7428, upper := 7511, witness := RowWitness.topPrime 7417 } = true := by
  exact good_top_prime_checked (i := 95) (r := 31) (s := 66) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row095_good082_checked :
    goodSegmentCheck 95 31 66
      { lower := 7512, upper := 7601, witness := RowWitness.topPrime 7507 } = true := by
  exact good_top_prime_checked (i := 95) (r := 31) (s := 66) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row095_good083_checked :
    goodSegmentCheck 95 31 66
      { lower := 7602, upper := 7685, witness := RowWitness.topPrime 7591 } = true := by
  exact good_top_prime_checked (i := 95) (r := 31) (s := 66) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row095_good084_checked :
    goodSegmentCheck 95 31 66
      { lower := 7686, upper := 7775, witness := RowWitness.topPrime 7681 } = true := by
  exact good_top_prime_checked (i := 95) (r := 31) (s := 66) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row095_good085_checked :
    goodSegmentCheck 95 31 66
      { lower := 7776, upper := 7853, witness := RowWitness.topPrime 7759 } = true := by
  exact good_top_prime_checked (i := 95) (r := 31) (s := 66) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row095_good086_checked :
    goodSegmentCheck 95 31 66
      { lower := 7854, upper := 7947, witness := RowWitness.topPrime 7853 } = true := by
  exact good_top_prime_checked (i := 95) (r := 31) (s := 66) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row095_good087_checked :
    goodSegmentCheck 95 31 66
      { lower := 7948, upper := 8031, witness := RowWitness.topPrime 7937 } = true := by
  exact good_top_prime_checked (i := 95) (r := 31) (s := 66) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row095_good088_checked :
    goodSegmentCheck 95 31 66
      { lower := 8032, upper := 8111, witness := RowWitness.topPrime 8017 } = true := by
  exact good_top_prime_checked (i := 95) (r := 31) (s := 66) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row095_good089_checked :
    goodSegmentCheck 95 31 66
      { lower := 8112, upper := 8205, witness := RowWitness.topPrime 8111 } = true := by
  exact good_top_prime_checked (i := 95) (r := 31) (s := 66) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row095_good090_checked :
    goodSegmentCheck 95 31 66
      { lower := 8206, upper := 8285, witness := RowWitness.topPrime 8191 } = true := by
  exact good_top_prime_checked (i := 95) (r := 31) (s := 66) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row095_good091_checked :
    goodSegmentCheck 95 31 66
      { lower := 8286, upper := 8367, witness := RowWitness.topPrime 8273 } = true := by
  exact good_top_prime_checked (i := 95) (r := 31) (s := 66) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row095_good092_checked :
    goodSegmentCheck 95 31 66
      { lower := 8368, upper := 8457, witness := RowWitness.topPrime 8363 } = true := by
  exact good_top_prime_checked (i := 95) (r := 31) (s := 66) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row095_good093_checked :
    goodSegmentCheck 95 31 66
      { lower := 8458, upper := 8541, witness := RowWitness.topPrime 8447 } = true := by
  exact good_top_prime_checked (i := 95) (r := 31) (s := 66) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row095_good094_checked :
    goodSegmentCheck 95 31 66
      { lower := 8542, upper := 8633, witness := RowWitness.topPrime 8539 } = true := by
  exact good_top_prime_checked (i := 95) (r := 31) (s := 66) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row095_good095_checked :
    goodSegmentCheck 95 31 66
      { lower := 8634, upper := 8723, witness := RowWitness.topPrime 8629 } = true := by
  exact good_top_prime_checked (i := 95) (r := 31) (s := 66) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row095_good080_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row095_good081_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row095_good082_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row095_good083_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row095_good084_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row095_good085_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row095_good086_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row095_good087_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row095_good088_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row095_good089_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row095_good090_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row095_good091_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row095_good092_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row095_good093_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row095_good094_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row095_good095_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row095_good096_checked :
    goodSegmentCheck 95 31 66
      { lower := 8724, upper := 8813, witness := RowWitness.topPrime 8719 } = true := by
  exact good_top_prime_checked (i := 95) (r := 31) (s := 66) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row095_good097_checked :
    goodSegmentCheck 95 31 66
      { lower := 8814, upper := 8901, witness := RowWitness.topPrime 8807 } = true := by
  exact good_top_prime_checked (i := 95) (r := 31) (s := 66) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row095_good098_checked :
    goodSegmentCheck 95 31 66
      { lower := 8902, upper := 8929, witness := RowWitness.topPrime 8893 } = true := by
  exact good_top_prime_checked (i := 95) (r := 31) (s := 66) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row095_good099_checked :
    goodSegmentCheck 95 31 66
      { lower := 8993, upper := 9065, witness := RowWitness.topPrime 8971 } = true := by
  exact good_top_prime_checked (i := 95) (r := 31) (s := 66) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row095_good100_checked :
    goodSegmentCheck 95 31 66
      { lower := 9066, upper := 9072, witness := RowWitness.topPrime 9059 } = true := by
  exact good_top_prime_checked (i := 95) (r := 31) (s := 66) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row095_good101_checked :
    goodSegmentCheck 95 31 66
      { lower := 9245, upper := 9335, witness := RowWitness.topPrime 9241 } = true := by
  exact good_top_prime_checked (i := 95) (r := 31) (s := 66) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row095_good102_checked :
    goodSegmentCheck 95 31 66
      { lower := 9336, upper := 9345, witness := RowWitness.topPrime 9323 } = true := by
  exact good_top_prime_checked (i := 95) (r := 31) (s := 66) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row095_good103_checked :
    goodSegmentCheck 95 31 66
      { lower := 9375, upper := 9411, witness := RowWitness.topPrime 9371 } = true := by
  exact good_top_prime_checked (i := 95) (r := 31) (s := 66) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row095_good104_checked :
    goodSegmentCheck 95 31 66
      { lower := 9522, upper := 9571, witness := RowWitness.topPrime 9521 } = true := by
  exact good_top_prime_checked (i := 95) (r := 31) (s := 66) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row095_good105_checked :
    goodSegmentCheck 95 31 66
      { lower := 9583, upper := 9645, witness := RowWitness.topPrime 9551 } = true := by
  exact good_top_prime_checked (i := 95) (r := 31) (s := 66) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row095_good106_checked :
    goodSegmentCheck 95 31 66
      { lower := 9646, upper := 9698, witness := RowWitness.topPrime 9643 } = true := by
  exact good_top_prime_checked (i := 95) (r := 31) (s := 66) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row095_good107_checked :
    goodSegmentCheck 95 31 66
      { lower := 10082, upper := 10173, witness := RowWitness.topPrime 10079 } = true := by
  exact good_top_prime_checked (i := 95) (r := 31) (s := 66) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row095_good108_checked :
    goodSegmentCheck 95 31 66
      { lower := 10174, upper := 10180, witness := RowWitness.topPrime 10169 } = true := by
  exact good_top_prime_checked (i := 95) (r := 31) (s := 66) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row095_good109_checked :
    goodSegmentCheck 95 31 66
      { lower := 10240, upper := 10300, witness := RowWitness.topPrime 10223 } = true := by
  exact good_top_prime_checked (i := 95) (r := 31) (s := 66) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row095_good110_checked :
    goodSegmentCheck 95 31 66
      { lower := 10580, upper := 10661, witness := RowWitness.topPrime 10567 } = true := by
  exact good_top_prime_checked (i := 95) (r := 31) (s := 66) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row095_good111_checked :
    goodSegmentCheck 95 31 66
      { lower := 10662, upper := 10742, witness := RowWitness.topPrime 10657 } = true := by
  exact good_top_prime_checked (i := 95) (r := 31) (s := 66) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row095_good096_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row095_good097_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row095_good098_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row095_good099_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row095_good100_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row095_good101_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row095_good102_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row095_good103_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row095_good104_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row095_good105_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row095_good106_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row095_good107_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row095_good108_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row095_good109_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row095_good110_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row095_good111_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row095_good112_checked :
    goodSegmentCheck 95 31 66
      { lower := 10752, upper := 10752, witness := RowWitness.topPrime 10739 } = true := by
  exact good_top_prime_checked (i := 95) (r := 31) (s := 66) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row095_good113_checked :
    goodSegmentCheck 95 31 66
      { lower := 10935, upper := 11003, witness := RowWitness.topPrime 10909 } = true := by
  exact good_top_prime_checked (i := 95) (r := 31) (s := 66) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row095_good114_checked :
    goodSegmentCheck 95 31 66
      { lower := 11004, upper := 11079, witness := RowWitness.topPrime 11003 } = true := by
  exact good_top_prime_checked (i := 95) (r := 31) (s := 66) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row095_good115_checked :
    goodSegmentCheck 95 31 66
      { lower := 11094, upper := 11187, witness := RowWitness.topPrime 11093 } = true := by
  exact good_top_prime_checked (i := 95) (r := 31) (s := 66) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row095_good116_checked :
    goodSegmentCheck 95 31 66
      { lower := 11188, upper := 11203, witness := RowWitness.topPrime 11177 } = true := by
  exact good_top_prime_checked (i := 95) (r := 31) (s := 66) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row095_good117_checked :
    goodSegmentCheck 95 31 66
      { lower := 11236, upper := 11257, witness := RowWitness.topPrime 11213 } = true := by
  exact good_top_prime_checked (i := 95) (r := 31) (s := 66) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row095_good118_checked :
    goodSegmentCheck 95 31 66
      { lower := 11264, upper := 11330, witness := RowWitness.topPrime 11261 } = true := by
  exact good_top_prime_checked (i := 95) (r := 31) (s := 66) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row095_good119_checked :
    goodSegmentCheck 95 31 66
      { lower := 11774, upper := 11837, witness := RowWitness.topPrime 11743 } = true := by
  exact good_top_prime_checked (i := 95) (r := 31) (s := 66) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row095_good120_checked :
    goodSegmentCheck 95 31 66
      { lower := 11838, upper := 11861, witness := RowWitness.topPrime 11833 } = true := by
  exact good_top_prime_checked (i := 95) (r := 31) (s := 66) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row095_good121_checked :
    goodSegmentCheck 95 31 66
      { lower := 12005, upper := 12073, witness := RowWitness.topPrime 11987 } = true := by
  exact good_top_prime_checked (i := 95) (r := 31) (s := 66) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row095_good122_checked :
    goodSegmentCheck 95 31 66
      { lower := 12321, upper := 12382, witness := RowWitness.topPrime 12301 } = true := by
  exact good_top_prime_checked (i := 95) (r := 31) (s := 66) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row095_good123_checked :
    goodSegmentCheck 95 31 66
      { lower := 12393, upper := 12415, witness := RowWitness.topPrime 12391 } = true := by
  exact good_top_prime_checked (i := 95) (r := 31) (s := 66) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row095_good124_checked :
    goodSegmentCheck 95 31 66
      { lower := 12482, upper := 12487, witness := RowWitness.topPrime 12479 } = true := by
  exact good_top_prime_checked (i := 95) (r := 31) (s := 66) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row095_good125_checked :
    goodSegmentCheck 95 31 66
      { lower := 12493, upper := 12585, witness := RowWitness.topPrime 12491 } = true := by
  exact good_top_prime_checked (i := 95) (r := 31) (s := 66) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row095_good126_checked :
    goodSegmentCheck 95 31 66
      { lower := 12586, upper := 12587, witness := RowWitness.topPrime 12583 } = true := by
  exact good_top_prime_checked (i := 95) (r := 31) (s := 66) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row095_good127_checked :
    goodSegmentCheck 95 31 66
      { lower := 13182, upper := 13216, witness := RowWitness.topPrime 13177 } = true := by
  exact good_top_prime_checked (i := 95) (r := 31) (s := 66) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row095_good112_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row095_good113_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row095_good114_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row095_good115_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row095_good116_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row095_good117_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row095_good118_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row095_good119_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row095_good120_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row095_good121_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row095_good122_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row095_good123_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row095_good124_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row095_good125_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row095_good126_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row095_good127_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row095_good128_checked :
    goodSegmentCheck 95 31 66
      { lower := 13254, upper := 13276, witness := RowWitness.topPrime 13249 } = true := by
  exact good_top_prime_checked (i := 95) (r := 31) (s := 66) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row095_good129_checked :
    goodSegmentCheck 95 31 66
      { lower := 13310, upper := 13403, witness := RowWitness.topPrime 13309 } = true := by
  exact good_top_prime_checked (i := 95) (r := 31) (s := 66) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row095_good130_checked :
    goodSegmentCheck 95 31 66
      { lower := 13404, upper := 13404, witness := RowWitness.topPrime 13399 } = true := by
  exact good_top_prime_checked (i := 95) (r := 31) (s := 66) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row095_good131_checked :
    goodSegmentCheck 95 31 66
      { lower := 13454, upper := 13545, witness := RowWitness.topPrime 13451 } = true := by
  exact good_top_prime_checked (i := 95) (r := 31) (s := 66) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row095_good132_checked :
    goodSegmentCheck 95 31 66
      { lower := 13546, upper := 13550, witness := RowWitness.topPrime 13537 } = true := by
  exact good_top_prime_checked (i := 95) (r := 31) (s := 66) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row095_good133_checked :
    goodSegmentCheck 95 31 66
      { lower := 13778, upper := 13784, witness := RowWitness.topPrime 13763 } = true := by
  exact good_top_prime_checked (i := 95) (r := 31) (s := 66) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row095_good134_checked :
    goodSegmentCheck 95 31 66
      { lower := 13851, upper := 13872, witness := RowWitness.topPrime 13841 } = true := by
  exact good_top_prime_checked (i := 95) (r := 31) (s := 66) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row095_good135_checked :
    goodSegmentCheck 95 31 66
      { lower := 13924, upper := 13945, witness := RowWitness.topPrime 13921 } = true := by
  exact good_top_prime_checked (i := 95) (r := 31) (s := 66) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row095_good136_checked :
    goodSegmentCheck 95 31 66
      { lower := 14336, upper := 14391, witness := RowWitness.topPrime 14327 } = true := by
  exact good_top_prime_checked (i := 95) (r := 31) (s := 66) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row095_good137_checked :
    goodSegmentCheck 95 31 66
      { lower := 14406, upper := 14495, witness := RowWitness.topPrime 14401 } = true := by
  exact good_top_prime_checked (i := 95) (r := 31) (s := 66) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row095_good138_checked :
    goodSegmentCheck 95 31 66
      { lower := 14496, upper := 14500, witness := RowWitness.topPrime 14489 } = true := by
  exact good_top_prime_checked (i := 95) (r := 31) (s := 66) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row095_good139_checked :
    goodSegmentCheck 95 31 66
      { lower := 14641, upper := 14674, witness := RowWitness.topPrime 14639 } = true := by
  exact good_top_prime_checked (i := 95) (r := 31) (s := 66) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row095_good140_checked :
    goodSegmentCheck 95 31 66
      { lower := 14792, upper := 14833, witness := RowWitness.topPrime 14783 } = true := by
  exact good_top_prime_checked (i := 95) (r := 31) (s := 66) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row095_good141_checked :
    goodSegmentCheck 95 31 66
      { lower := 14884, upper := 14886, witness := RowWitness.topPrime 14879 } = true := by
  exact good_top_prime_checked (i := 95) (r := 31) (s := 66) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row095_good142_checked :
    goodSegmentCheck 95 31 66
      { lower := 15123, upper := 15215, witness := RowWitness.topPrime 15121 } = true := by
  exact good_top_prime_checked (i := 95) (r := 31) (s := 66) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row095_good143_checked :
    goodSegmentCheck 95 31 66
      { lower := 15216, upper := 15223, witness := RowWitness.topPrime 15199 } = true := by
  exact good_top_prime_checked (i := 95) (r := 31) (s := 66) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row095_good128_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row095_good129_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row095_good130_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row095_good131_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row095_good132_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row095_good133_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row095_good134_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row095_good135_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row095_good136_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row095_good137_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row095_good138_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row095_good139_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row095_good140_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row095_good141_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row095_good142_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row095_good143_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row095_good144_checked :
    goodSegmentCheck 95 31 66
      { lower := 15360, upper := 15453, witness := RowWitness.topPrime 15359 } = true := by
  exact good_top_prime_checked (i := 95) (r := 31) (s := 66) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row095_good145_checked :
    goodSegmentCheck 95 31 66
      { lower := 15454, upper := 15473, witness := RowWitness.topPrime 15451 } = true := by
  exact good_top_prime_checked (i := 95) (r := 31) (s := 66) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row095_good146_checked :
    goodSegmentCheck 95 31 66
      { lower := 15979, upper := 16067, witness := RowWitness.topPrime 15973 } = true := by
  exact good_top_prime_checked (i := 95) (r := 31) (s := 66) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row095_good147_checked :
    goodSegmentCheck 95 31 66
      { lower := 16068, upper := 16073, witness := RowWitness.topPrime 16067 } = true := by
  exact good_top_prime_checked (i := 95) (r := 31) (s := 66) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row095_good148_checked :
    goodSegmentCheck 95 31 66
      { lower := 16384, upper := 16475, witness := RowWitness.topPrime 16381 } = true := by
  exact good_top_prime_checked (i := 95) (r := 31) (s := 66) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row095_good149_checked :
    goodSegmentCheck 95 31 66
      { lower := 16476, upper := 16478, witness := RowWitness.topPrime 16453 } = true := by
  exact good_top_prime_checked (i := 95) (r := 31) (s := 66) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row095_good150_checked :
    goodSegmentCheck 95 31 66
      { lower := 16810, upper := 16881, witness := RowWitness.topPrime 16787 } = true := by
  exact good_top_prime_checked (i := 95) (r := 31) (s := 66) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row095_good151_checked :
    goodSegmentCheck 95 31 66
      { lower := 16882, upper := 16914, witness := RowWitness.topPrime 16879 } = true := by
  exact good_top_prime_checked (i := 95) (r := 31) (s := 66) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row095_good152_checked :
    goodSegmentCheck 95 31 66
      { lower := 17303, upper := 17392, witness := RowWitness.topPrime 17299 } = true := by
  exact good_top_prime_checked (i := 95) (r := 31) (s := 66) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row095_good153_checked :
    goodSegmentCheck 95 31 66
      { lower := 17408, upper := 17495, witness := RowWitness.topPrime 17401 } = true := by
  exact good_top_prime_checked (i := 95) (r := 31) (s := 66) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row095_good154_checked :
    goodSegmentCheck 95 31 66
      { lower := 17496, upper := 17502, witness := RowWitness.topPrime 17491 } = true := by
  exact good_top_prime_checked (i := 95) (r := 31) (s := 66) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row095_good155_checked :
    goodSegmentCheck 95 31 66
      { lower := 17576, upper := 17590, witness := RowWitness.topPrime 17573 } = true := by
  exact good_top_prime_checked (i := 95) (r := 31) (s := 66) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row095_good156_checked :
    goodSegmentCheck 95 31 66
      { lower := 17661, upper := 17670, witness := RowWitness.topPrime 17659 } = true := by
  exact good_top_prime_checked (i := 95) (r := 31) (s := 66) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row095_good157_checked :
    goodSegmentCheck 95 31 66
      { lower := 17672, upper := 17755, witness := RowWitness.topPrime 17669 } = true := by
  exact good_top_prime_checked (i := 95) (r := 31) (s := 66) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row095_good158_checked :
    goodSegmentCheck 95 31 66
      { lower := 18490, upper := 18575, witness := RowWitness.topPrime 18481 } = true := by
  exact good_top_prime_checked (i := 95) (r := 31) (s := 66) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row095_good159_checked :
    goodSegmentCheck 95 31 66
      { lower := 18576, upper := 18584, witness := RowWitness.topPrime 18553 } = true := by
  exact good_top_prime_checked (i := 95) (r := 31) (s := 66) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row095_good144_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row095_good145_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row095_good146_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row095_good147_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row095_good148_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row095_good149_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row095_good150_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row095_good151_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row095_good152_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row095_good153_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row095_good154_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row095_good155_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row095_good156_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row095_good157_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row095_good158_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row095_good159_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row095_good160_checked :
    goodSegmentCheck 95 31 66
      { lower := 18634, upper := 18699, witness := RowWitness.topPrime 18617 } = true := by
  exact good_top_prime_checked (i := 95) (r := 31) (s := 66) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row095_good161_checked :
    goodSegmentCheck 95 31 66
      { lower := 18723, upper := 18728, witness := RowWitness.topPrime 18719 } = true := by
  exact good_top_prime_checked (i := 95) (r := 31) (s := 66) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row095_good162_checked :
    goodSegmentCheck 95 31 66
      { lower := 19208, upper := 19260, witness := RowWitness.topPrime 19207 } = true := by
  exact good_top_prime_checked (i := 95) (r := 31) (s := 66) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row095_good163_checked :
    goodSegmentCheck 95 31 66
      { lower := 19663, upper := 19755, witness := RowWitness.topPrime 19661 } = true := by
  exact good_top_prime_checked (i := 95) (r := 31) (s := 66) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row095_good164_checked :
    goodSegmentCheck 95 31 66
      { lower := 19756, upper := 19757, witness := RowWitness.topPrime 19753 } = true := by
  exact good_top_prime_checked (i := 95) (r := 31) (s := 66) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row095_good165_checked :
    goodSegmentCheck 95 31 66
      { lower := 19773, upper := 19777, witness := RowWitness.topPrime 19763 } = true := by
  exact good_top_prime_checked (i := 95) (r := 31) (s := 66) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row095_good166_checked :
    goodSegmentCheck 95 31 66
      { lower := 19965, upper := 19975, witness := RowWitness.topPrime 19963 } = true := by
  exact good_top_prime_checked (i := 95) (r := 31) (s := 66) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row095_good167_checked :
    goodSegmentCheck 95 31 66
      { lower := 20172, upper := 20255, witness := RowWitness.topPrime 20161 } = true := by
  exact good_top_prime_checked (i := 95) (r := 31) (s := 66) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row095_good168_checked :
    goodSegmentCheck 95 31 66
      { lower := 20256, upper := 20258, witness := RowWitness.topPrime 20249 } = true := by
  exact good_top_prime_checked (i := 95) (r := 31) (s := 66) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row095_good169_checked :
    goodSegmentCheck 95 31 66
      { lower := 20535, upper := 20574, witness := RowWitness.topPrime 20533 } = true := by
  exact good_top_prime_checked (i := 95) (r := 31) (s := 66) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row095_good170_checked :
    goodSegmentCheck 95 31 66
      { lower := 21316, upper := 21390, witness := RowWitness.topPrime 21313 } = true := by
  exact good_top_prime_checked (i := 95) (r := 31) (s := 66) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row095_good171_checked :
    goodSegmentCheck 95 31 66
      { lower := 21870, upper := 21957, witness := RowWitness.topPrime 21863 } = true := by
  exact good_top_prime_checked (i := 95) (r := 31) (s := 66) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row095_good172_checked :
    goodSegmentCheck 95 31 66
      { lower := 21958, upper := 21964, witness := RowWitness.topPrime 21943 } = true := by
  exact good_top_prime_checked (i := 95) (r := 31) (s := 66) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row095_good173_checked :
    goodSegmentCheck 95 31 66
      { lower := 21970, upper := 21998, witness := RowWitness.topPrime 21961 } = true := by
  exact good_top_prime_checked (i := 95) (r := 31) (s := 66) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row095_good174_checked :
    goodSegmentCheck 95 31 66
      { lower := 22472, upper := 22563, witness := RowWitness.topPrime 22469 } = true := by
  exact good_top_prime_checked (i := 95) (r := 31) (s := 66) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row095_good175_checked :
    goodSegmentCheck 95 31 66
      { lower := 22564, upper := 22566, witness := RowWitness.topPrime 22549 } = true := by
  exact good_top_prime_checked (i := 95) (r := 31) (s := 66) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row095_good160_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row095_good161_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row095_good162_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row095_good163_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row095_good164_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row095_good165_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row095_good166_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row095_good167_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row095_good168_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row095_good169_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row095_good170_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row095_good171_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row095_good172_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row095_good173_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row095_good174_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row095_good175_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row095_good176_checked :
    goodSegmentCheck 95 31 66
      { lower := 24037, upper := 24123, witness := RowWitness.topPrime 24029 } = true := by
  exact good_top_prime_checked (i := 95) (r := 31) (s := 66) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row095_good177_checked :
    goodSegmentCheck 95 31 66
      { lower := 24124, upper := 24131, witness := RowWitness.topPrime 24121 } = true := by
  exact good_top_prime_checked (i := 95) (r := 31) (s := 66) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row095_good178_checked :
    goodSegmentCheck 95 31 66
      { lower := 24334, upper := 24423, witness := RowWitness.topPrime 24329 } = true := by
  exact good_top_prime_checked (i := 95) (r := 31) (s := 66) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row095_good179_checked :
    goodSegmentCheck 95 31 66
      { lower := 24424, upper := 24461, witness := RowWitness.topPrime 24421 } = true := by
  exact good_top_prime_checked (i := 95) (r := 31) (s := 66) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row095_good180_checked :
    goodSegmentCheck 95 31 66
      { lower := 24576, upper := 24659, witness := RowWitness.topPrime 24571 } = true := by
  exact good_top_prime_checked (i := 95) (r := 31) (s := 66) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row095_good181_checked :
    goodSegmentCheck 95 31 66
      { lower := 25215, upper := 25283, witness := RowWitness.topPrime 25189 } = true := by
  exact good_top_prime_checked (i := 95) (r := 31) (s := 66) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row095_good182_checked :
    goodSegmentCheck 95 31 66
      { lower := 25284, upper := 25309, witness := RowWitness.topPrime 25261 } = true := by
  exact good_top_prime_checked (i := 95) (r := 31) (s := 66) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row095_good183_checked :
    goodSegmentCheck 95 31 66
      { lower := 26411, upper := 26458, witness := RowWitness.topPrime 26407 } = true := by
  exact good_top_prime_checked (i := 95) (r := 31) (s := 66) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row095_good184_checked :
    goodSegmentCheck 95 31 66
      { lower := 26645, upper := 26718, witness := RowWitness.topPrime 26641 } = true := by
  exact good_top_prime_checked (i := 95) (r := 31) (s := 66) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row095_good185_checked :
    goodSegmentCheck 95 31 66
      { lower := 26934, upper := 26990, witness := RowWitness.topPrime 26927 } = true := by
  exact good_top_prime_checked (i := 95) (r := 31) (s := 66) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row095_good186_checked :
    goodSegmentCheck 95 31 66
      { lower := 28577, upper := 28655, witness := RowWitness.topPrime 28573 } = true := by
  exact good_top_prime_checked (i := 95) (r := 31) (s := 66) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row095_good187_checked :
    goodSegmentCheck 95 31 66
      { lower := 28717, upper := 28766, witness := RowWitness.topPrime 28711 } = true := by
  exact good_top_prime_checked (i := 95) (r := 31) (s := 66) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row095_good188_checked :
    goodSegmentCheck 95 31 66
      { lower := 29791, upper := 29862, witness := RowWitness.topPrime 29789 } = true := by
  exact good_top_prime_checked (i := 95) (r := 31) (s := 66) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row095_good189_checked :
    goodSegmentCheck 95 31 66
      { lower := 30758, upper := 30814, witness := RowWitness.topPrime 30757 } = true := by
  exact good_top_prime_checked (i := 95) (r := 31) (s := 66) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row095_good190_checked :
    goodSegmentCheck 95 31 66
      { lower := 30926, upper := 30993, witness := RowWitness.topPrime 30911 } = true := by
  exact good_top_prime_checked (i := 95) (r := 31) (s := 66) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row095_good191_checked :
    goodSegmentCheck 95 31 66
      { lower := 31213, upper := 31287, witness := RowWitness.topPrime 31193 } = true := by
  exact good_top_prime_checked (i := 95) (r := 31) (s := 66) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row095_good176_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row095_good177_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row095_good178_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row095_good179_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row095_good180_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row095_good181_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row095_good182_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row095_good183_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row095_good184_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row095_good185_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row095_good186_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row095_good187_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row095_good188_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row095_good189_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row095_good190_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row095_good191_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row095_good192_checked :
    goodSegmentCheck 95 31 66
      { lower := 31288, upper := 31307, witness := RowWitness.topPrime 31277 } = true := by
  exact good_top_prime_checked (i := 95) (r := 31) (s := 66) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row095_good193_checked :
    goodSegmentCheck 95 31 66
      { lower := 31329, upper := 31344, witness := RowWitness.topPrime 31327 } = true := by
  exact good_top_prime_checked (i := 95) (r := 31) (s := 66) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row095_good194_checked :
    goodSegmentCheck 95 31 66
      { lower := 31423, upper := 31423, witness := RowWitness.topPrime 31397 } = true := by
  exact good_top_prime_checked (i := 95) (r := 31) (s := 66) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row095_good195_checked :
    goodSegmentCheck 95 31 66
      { lower := 31433, upper := 31491, witness := RowWitness.topPrime 31397 } = true := by
  exact good_top_prime_checked (i := 95) (r := 31) (s := 66) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row095_good196_checked :
    goodSegmentCheck 95 31 66
      { lower := 31492, upper := 31517, witness := RowWitness.topPrime 31489 } = true := by
  exact good_top_prime_checked (i := 95) (r := 31) (s := 66) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row095_good197_checked :
    goodSegmentCheck 95 31 66
      { lower := 32805, upper := 32862, witness := RowWitness.topPrime 32803 } = true := by
  exact good_top_prime_checked (i := 95) (r := 31) (s := 66) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row095_good198_checked :
    goodSegmentCheck 95 31 66
      { lower := 33708, upper := 33708, witness := RowWitness.topPrime 33703 } = true := by
  exact good_top_prime_checked (i := 95) (r := 31) (s := 66) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row095_good199_checked :
    goodSegmentCheck 95 31 66
      { lower := 34445, upper := 34485, witness := RowWitness.topPrime 34439 } = true := by
  exact good_top_prime_checked (i := 95) (r := 31) (s := 66) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row095_good200_checked :
    goodSegmentCheck 95 31 66
      { lower := 34816, upper := 34901, witness := RowWitness.topPrime 34807 } = true := by
  exact good_top_prime_checked (i := 95) (r := 31) (s := 66) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row095_good201_checked :
    goodSegmentCheck 95 31 66
      { lower := 34902, upper := 34904, witness := RowWitness.topPrime 34897 } = true := by
  exact good_top_prime_checked (i := 95) (r := 31) (s := 66) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row095_good202_checked :
    goodSegmentCheck 95 31 66
      { lower := 35344, upper := 35381, witness := RowWitness.topPrime 35339 } = true := by
  exact good_top_prime_checked (i := 95) (r := 31) (s := 66) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row095_good203_checked :
    goodSegmentCheck 95 31 66
      { lower := 36517, upper := 36591, witness := RowWitness.topPrime 36497 } = true := by
  exact good_top_prime_checked (i := 95) (r := 31) (s := 66) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row095_good204_checked :
    goodSegmentCheck 95 31 66
      { lower := 36592, upper := 36595, witness := RowWitness.topPrime 36587 } = true := by
  exact good_top_prime_checked (i := 95) (r := 31) (s := 66) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row095_good205_checked :
    goodSegmentCheck 95 31 66
      { lower := 37303, upper := 37304, witness := RowWitness.topPrime 37277 } = true := by
  exact good_top_prime_checked (i := 95) (r := 31) (s := 66) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row095_good206_checked :
    goodSegmentCheck 95 31 66
      { lower := 39326, upper := 39417, witness := RowWitness.topPrime 39323 } = true := by
  exact good_top_prime_checked (i := 95) (r := 31) (s := 66) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row095_good207_checked :
    goodSegmentCheck 95 31 66
      { lower := 39418, upper := 39420, witness := RowWitness.topPrime 39409 } = true := by
  exact good_top_prime_checked (i := 95) (r := 31) (s := 66) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row095_good192_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row095_good193_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row095_good194_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row095_good195_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row095_good196_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row095_good197_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row095_good198_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row095_good199_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row095_good200_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row095_good201_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row095_good202_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row095_good203_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row095_good204_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row095_good205_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row095_good206_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row095_good207_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row095_good208_checked :
    goodSegmentCheck 95 31 66
      { lower := 40401, upper := 40422, witness := RowWitness.topPrime 40387 } = true := by
  exact good_top_prime_checked (i := 95) (r := 31) (s := 66) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row095_good209_checked :
    goodSegmentCheck 95 31 66
      { lower := 40960, upper := 41025, witness := RowWitness.topPrime 40949 } = true := by
  exact good_top_prime_checked (i := 95) (r := 31) (s := 66) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row095_good210_checked :
    goodSegmentCheck 95 31 66
      { lower := 48734, upper := 48762, witness := RowWitness.topPrime 48733 } = true := by
  exact good_top_prime_checked (i := 95) (r := 31) (s := 66) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row095_good211_checked :
    goodSegmentCheck 95 31 66
      { lower := 48778, upper := 48828, witness := RowWitness.topPrime 48767 } = true := by
  exact good_top_prime_checked (i := 95) (r := 31) (s := 66) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row095_good212_checked :
    goodSegmentCheck 95 31 66
      { lower := 49152, upper := 49224, witness := RowWitness.topPrime 49139 } = true := by
  exact good_top_prime_checked (i := 95) (r := 31) (s := 66) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row095_good213_checked :
    goodSegmentCheck 95 31 66
      { lower := 50421, upper := 50504, witness := RowWitness.topPrime 50417 } = true := by
  exact good_top_prime_checked (i := 95) (r := 31) (s := 66) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row095_good214_checked :
    goodSegmentCheck 95 31 66
      { lower := 53290, upper := 53342, witness := RowWitness.topPrime 53281 } = true := by
  exact good_top_prime_checked (i := 95) (r := 31) (s := 66) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row095_good215_checked :
    goodSegmentCheck 95 31 66
      { lower := 55451, upper := 55535, witness := RowWitness.topPrime 55441 } = true := by
  exact good_top_prime_checked (i := 95) (r := 31) (s := 66) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row095_good216_checked :
    goodSegmentCheck 95 31 66
      { lower := 55536, upper := 55541, witness := RowWitness.topPrime 55529 } = true := by
  exact good_top_prime_checked (i := 95) (r := 31) (s := 66) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row095_good217_checked :
    goodSegmentCheck 95 31 66
      { lower := 58619, upper := 58658, witness := RowWitness.topPrime 58613 } = true := by
  exact good_top_prime_checked (i := 95) (r := 31) (s := 66) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row095_good218_checked :
    goodSegmentCheck 95 31 66
      { lower := 59049, upper := 59050, witness := RowWitness.topPrime 59029 } = true := by
  exact good_top_prime_checked (i := 95) (r := 31) (s := 66) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row095_good219_checked :
    goodSegmentCheck 95 31 66
      { lower := 63948, upper := 63963, witness := RowWitness.topPrime 63929 } = true := by
  exact good_top_prime_checked (i := 95) (r := 31) (s := 66) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row095_good220_checked :
    goodSegmentCheck 95 31 66
      { lower := 65536, upper := 65615, witness := RowWitness.topPrime 65521 } = true := by
  exact good_top_prime_checked (i := 95) (r := 31) (s := 66) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row095_good221_checked :
    goodSegmentCheck 95 31 66
      { lower := 65616, upper := 65630, witness := RowWitness.topPrime 65609 } = true := by
  exact good_top_prime_checked (i := 95) (r := 31) (s := 66) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row095_good222_checked :
    goodSegmentCheck 95 31 66
      { lower := 68921, upper := 68984, witness := RowWitness.topPrime 68917 } = true := by
  exact good_top_prime_checked (i := 95) (r := 31) (s := 66) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row095_good223_checked :
    goodSegmentCheck 95 31 66
      { lower := 73205, upper := 73261, witness := RowWitness.topPrime 73189 } = true := by
  exact good_top_prime_checked (i := 95) (r := 31) (s := 66) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row095_good208_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row095_good209_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row095_good210_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row095_good211_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row095_good212_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row095_good213_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row095_good214_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row095_good215_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row095_good216_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row095_good217_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row095_good218_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row095_good219_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row095_good220_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row095_good221_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row095_good222_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row095_good223_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row095_good224_checked :
    goodSegmentCheck 95 31 66
      { lower := 137842, upper := 137875, witness := RowWitness.topPrime 137831 } = true := by
  exact good_top_prime_checked (i := 95) (r := 31) (s := 66) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row095_good225_checked :
    goodSegmentCheck 95 31 66
      { lower := 148955, upper := 148971, witness := RowWitness.topPrime 148949 } = true := by
  exact good_top_prime_checked (i := 95) (r := 31) (s := 66) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row095_good224_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row095_good225_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row095_goods_checked :
    row095.goods.all (goodSegmentCheck row095.height.i row095.height.r row095.height.s) = true := by
  change row095_goods.all (goodSegmentCheck 95 31 66) = true
  simp only [row095_goods, List.all_cons, List.all_nil,
    row095_good000_checked,
    row095_good001_checked,
    row095_good002_checked,
    row095_good003_checked,
    row095_good004_checked,
    row095_good005_checked,
    row095_good006_checked,
    row095_good007_checked,
    row095_good008_checked,
    row095_good009_checked,
    row095_good010_checked,
    row095_good011_checked,
    row095_good012_checked,
    row095_good013_checked,
    row095_good014_checked,
    row095_good015_checked,
    row095_good016_checked,
    row095_good017_checked,
    row095_good018_checked,
    row095_good019_checked,
    row095_good020_checked,
    row095_good021_checked,
    row095_good022_checked,
    row095_good023_checked,
    row095_good024_checked,
    row095_good025_checked,
    row095_good026_checked,
    row095_good027_checked,
    row095_good028_checked,
    row095_good029_checked,
    row095_good030_checked,
    row095_good031_checked,
    row095_good032_checked,
    row095_good033_checked,
    row095_good034_checked,
    row095_good035_checked,
    row095_good036_checked,
    row095_good037_checked,
    row095_good038_checked,
    row095_good039_checked,
    row095_good040_checked,
    row095_good041_checked,
    row095_good042_checked,
    row095_good043_checked,
    row095_good044_checked,
    row095_good045_checked,
    row095_good046_checked,
    row095_good047_checked,
    row095_good048_checked,
    row095_good049_checked,
    row095_good050_checked,
    row095_good051_checked,
    row095_good052_checked,
    row095_good053_checked,
    row095_good054_checked,
    row095_good055_checked,
    row095_good056_checked,
    row095_good057_checked,
    row095_good058_checked,
    row095_good059_checked,
    row095_good060_checked,
    row095_good061_checked,
    row095_good062_checked,
    row095_good063_checked,
    row095_good064_checked,
    row095_good065_checked,
    row095_good066_checked,
    row095_good067_checked,
    row095_good068_checked,
    row095_good069_checked,
    row095_good070_checked,
    row095_good071_checked,
    row095_good072_checked,
    row095_good073_checked,
    row095_good074_checked,
    row095_good075_checked,
    row095_good076_checked,
    row095_good077_checked,
    row095_good078_checked,
    row095_good079_checked,
    row095_good080_checked,
    row095_good081_checked,
    row095_good082_checked,
    row095_good083_checked,
    row095_good084_checked,
    row095_good085_checked,
    row095_good086_checked,
    row095_good087_checked,
    row095_good088_checked,
    row095_good089_checked,
    row095_good090_checked,
    row095_good091_checked,
    row095_good092_checked,
    row095_good093_checked,
    row095_good094_checked,
    row095_good095_checked,
    row095_good096_checked,
    row095_good097_checked,
    row095_good098_checked,
    row095_good099_checked,
    row095_good100_checked,
    row095_good101_checked,
    row095_good102_checked,
    row095_good103_checked,
    row095_good104_checked,
    row095_good105_checked,
    row095_good106_checked,
    row095_good107_checked,
    row095_good108_checked,
    row095_good109_checked,
    row095_good110_checked,
    row095_good111_checked,
    row095_good112_checked,
    row095_good113_checked,
    row095_good114_checked,
    row095_good115_checked,
    row095_good116_checked,
    row095_good117_checked,
    row095_good118_checked,
    row095_good119_checked,
    row095_good120_checked,
    row095_good121_checked,
    row095_good122_checked,
    row095_good123_checked,
    row095_good124_checked,
    row095_good125_checked,
    row095_good126_checked,
    row095_good127_checked,
    row095_good128_checked,
    row095_good129_checked,
    row095_good130_checked,
    row095_good131_checked,
    row095_good132_checked,
    row095_good133_checked,
    row095_good134_checked,
    row095_good135_checked,
    row095_good136_checked,
    row095_good137_checked,
    row095_good138_checked,
    row095_good139_checked,
    row095_good140_checked,
    row095_good141_checked,
    row095_good142_checked,
    row095_good143_checked,
    row095_good144_checked,
    row095_good145_checked,
    row095_good146_checked,
    row095_good147_checked,
    row095_good148_checked,
    row095_good149_checked,
    row095_good150_checked,
    row095_good151_checked,
    row095_good152_checked,
    row095_good153_checked,
    row095_good154_checked,
    row095_good155_checked,
    row095_good156_checked,
    row095_good157_checked,
    row095_good158_checked,
    row095_good159_checked,
    row095_good160_checked,
    row095_good161_checked,
    row095_good162_checked,
    row095_good163_checked,
    row095_good164_checked,
    row095_good165_checked,
    row095_good166_checked,
    row095_good167_checked,
    row095_good168_checked,
    row095_good169_checked,
    row095_good170_checked,
    row095_good171_checked,
    row095_good172_checked,
    row095_good173_checked,
    row095_good174_checked,
    row095_good175_checked,
    row095_good176_checked,
    row095_good177_checked,
    row095_good178_checked,
    row095_good179_checked,
    row095_good180_checked,
    row095_good181_checked,
    row095_good182_checked,
    row095_good183_checked,
    row095_good184_checked,
    row095_good185_checked,
    row095_good186_checked,
    row095_good187_checked,
    row095_good188_checked,
    row095_good189_checked,
    row095_good190_checked,
    row095_good191_checked,
    row095_good192_checked,
    row095_good193_checked,
    row095_good194_checked,
    row095_good195_checked,
    row095_good196_checked,
    row095_good197_checked,
    row095_good198_checked,
    row095_good199_checked,
    row095_good200_checked,
    row095_good201_checked,
    row095_good202_checked,
    row095_good203_checked,
    row095_good204_checked,
    row095_good205_checked,
    row095_good206_checked,
    row095_good207_checked,
    row095_good208_checked,
    row095_good209_checked,
    row095_good210_checked,
    row095_good211_checked,
    row095_good212_checked,
    row095_good213_checked,
    row095_good214_checked,
    row095_good215_checked,
    row095_good216_checked,
    row095_good217_checked,
    row095_good218_checked,
    row095_good219_checked,
    row095_good220_checked,
    row095_good221_checked,
    row095_good222_checked,
    row095_good223_checked,
    row095_good224_checked,
    row095_good225_checked, Bool.true_and]

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row095_goods_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row095_registered :
    decide (row095.height ∈ heightCertificateData) = true := by
  decide +kernel

theorem row095_small_checked :
    coverCheck (2 * row095.height.i + 2) (row095.height.i * (row095.height.i - 1) - 1)
      (row095.goods.map goodSegmentBounds) = true := by
  decide +kernel

theorem row095_layerCover_checked :
    coverCheck (row095.height.i * (row095.height.i - 1)) (row095.height.n0 - 1)
      (row095.layers.map CoverLayer.bounds) = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row095_registered
#print axioms B699LowIndex.LowIndexLean513dc7cc.row095_small_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row095_layerCover_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row095_bounds : List NatInterval :=
  [(192, 285), (286, 377), (378, 467), (468, 561), (562, 651), (652, 741), (742, 833), (834, 923), (924, 1013), (1014, 1107), (1108, 1197), (1198, 1287), (1288, 1377), (1378, 1467), (1468, 1553), (1554, 1647), (1648, 1731), (1732, 1817), (1818, 1905), (1906, 1995), (1996, 2087), (2088, 2181), (2182, 2273), (2274, 2367), (2368, 2451), (2452, 2541), (2542, 2633), (2634, 2727), (2728, 2813), (2814, 2897), (2898, 2991), (2992, 3065), (3066, 3155), (3156, 3231), (3232, 3323), (3324, 3417), (3418, 3507), (3508, 3593), (3594, 3687), (3688, 3771), (3772, 3863), (3864, 3957), (3958, 4041), (4042, 4121), (4122, 4205), (4206, 4295), (4296, 4383), (4384, 4467), (4468, 4557), (4558, 4643), (4644, 4737), (4738, 4827), (4828, 4911), (4912, 5003), (5004, 5097), (5098, 5181), (5182, 5273), (5274, 5367), (5368, 5445), (5446, 5537), (5538, 5625), (5626, 5717), (5718, 5811), (5812, 5901), (5902, 5991), (5992, 6081), (6082, 6173), (6174, 6267), (6268, 6357), (6358, 6447), (6448, 6521), (6522, 6615), (6616, 6701), (6702, 6795), (6796, 6887), (6888, 6977), (6978, 7071), (7072, 7163), (7164, 7253), (7254, 7347), (7348, 7427), (7428, 7511), (7512, 7601), (7602, 7685), (7686, 7775), (7776, 7853), (7854, 7947), (7948, 8031), (8032, 8111), (8112, 8205), (8206, 8285), (8286, 8367), (8368, 8457), (8458, 8541), (8542, 8633), (8634, 8723), (8724, 8813), (8814, 8901), (8902, 8929), (8993, 9065), (9066, 9072), (9245, 9335), (9336, 9345), (9375, 9411), (9522, 9571), (9583, 9645), (9646, 9698), (10082, 10173), (10174, 10180), (10240, 10300), (10580, 10661), (10662, 10742), (10752, 10752), (10935, 11003), (11004, 11079), (11094, 11187), (11188, 11203), (11236, 11257), (11264, 11330), (11774, 11837), (11838, 11861), (12005, 12073), (12321, 12382), (12393, 12415), (12482, 12487), (12493, 12585), (12586, 12587), (13182, 13216), (13254, 13276), (13310, 13403), (13404, 13404), (13454, 13545), (13546, 13550), (13778, 13784), (13851, 13872), (13924, 13945), (14336, 14391), (14406, 14495), (14496, 14500), (14641, 14674), (14792, 14833), (14884, 14886), (15123, 15215), (15216, 15223), (15360, 15453), (15454, 15473), (15979, 16067), (16068, 16073), (16384, 16475), (16476, 16478), (16810, 16881), (16882, 16914), (17303, 17392), (17408, 17495), (17496, 17502), (17576, 17590), (17661, 17670), (17672, 17755), (18490, 18575), (18576, 18584), (18634, 18699), (18723, 18728), (19208, 19260), (19663, 19755), (19756, 19757), (19773, 19777), (19965, 19975), (20172, 20255), (20256, 20258), (20535, 20574), (21316, 21390), (21870, 21957), (21958, 21964), (21970, 21998), (22472, 22563), (22564, 22566), (24037, 24123), (24124, 24131), (24334, 24423), (24424, 24461), (24576, 24659), (25215, 25283), (25284, 25309), (26411, 26458), (26645, 26718), (26934, 26990), (28577, 28655), (28717, 28766), (29791, 29862), (30758, 30814), (30926, 30993), (31213, 31287), (31288, 31307), (31329, 31344), (31423, 31423), (31433, 31491), (31492, 31517), (32805, 32862), (33708, 33708), (34445, 34485), (34816, 34901), (34902, 34904), (35344, 35381), (36517, 36591), (36592, 36595), (37303, 37304), (39326, 39417), (39418, 39420), (40401, 40422), (40960, 41025), (48734, 48762), (48778, 48828), (49152, 49224), (50421, 50504), (53290, 53342), (55451, 55535), (55536, 55541), (58619, 58658), (59049, 59050), (63948, 63963), (65536, 65615), (65616, 65630), (68921, 68984), (73205, 73261), (137842, 137875), (148955, 148971)]

theorem row095_bounds_eq : row095.goods.map goodSegmentBounds = row095_bounds := by
  rfl

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row095_bounds_eq

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row095_layer000_intervals : List ColouredInterval :=
  [(2, 9216, 9310), (2, 9728, 9822), (2, 10240, 10334), (2, 10752, 10846), (2, 9216, 9310), (2, 10240, 10334), (2, 11264, 11358), (2, 12288, 12382), (2, 13312, 13406), (2, 14336, 14430), (2, 15360, 15454), (2, 16384, 16478), (2, 17408, 17502), (2, 10240, 10334), (2, 12288, 12382), (2, 14336, 14430), (2, 16384, 16478), (2, 12288, 12382), (2, 16384, 16478), (2, 16384, 16478), (2, 16384, 16478), (3, 9477, 9571), (3, 10206, 10300), (3, 10935, 11029), (3, 11664, 11758), (3, 12393, 12487), (3, 13122, 13216), (3, 13851, 13945), (3, 14580, 14674), (3, 15309, 15403), (3, 10935, 11029), (3, 13122, 13216), (3, 15309, 15403), (3, 17496, 17590), (3, 13122, 13216), (5, 9375, 9469), (5, 12500, 12594), (5, 15625, 15719), (7, 9604, 9698), (7, 12005, 12099), (7, 14406, 14500), (7, 16807, 16901), (7, 16807, 16901), (11, 9317, 9411), (11, 10648, 10742), (11, 11979, 12073), (11, 13310, 13404), (11, 14641, 14735), (11, 15972, 16066), (11, 17303, 17397), (11, 14641, 14735), (13, 10985, 11079), (13, 13182, 13276), (13, 15379, 15473), (13, 17576, 17670), (17, 9826, 9920), (17, 14739, 14833), (23, 8993, 9087), (23, 9522, 9616), (23, 10051, 10145), (23, 10580, 10674), (23, 11109, 11203), (23, 12167, 12261), (29, 9251, 9345), (29, 10092, 10186), (29, 10933, 11027), (29, 11774, 11868), (29, 12615, 12709), (29, 13456, 13550), (29, 14297, 14391), (29, 15138, 15232), (29, 15979, 16073), (29, 16820, 16914), (29, 17661, 17755), (31, 9610, 9704), (31, 10571, 10665), (31, 11532, 11626), (31, 12493, 12587), (31, 13454, 13548), (31, 14415, 14509), (31, 15376, 15470), (31, 16337, 16431), (31, 17298, 17392), (37, 9583, 9677), (37, 10952, 11046), (37, 12321, 12415), (37, 13690, 13784), (37, 15059, 15153), (37, 16428, 16522), (37, 17797, 17859), (41, 10086, 10180), (41, 11767, 11861), (41, 13448, 13542), (41, 15129, 15223), (41, 16810, 16904), (43, 9245, 9339), (43, 11094, 11188), (43, 12943, 13037), (43, 14792, 14886), (43, 16641, 16735), (47, 8930, 8930), (47, 11045, 11139), (47, 13254, 13348), (47, 15463, 15557), (47, 17672, 17766), (53, 11236, 11330), (53, 14045, 14139), (53, 16854, 16948), (59, 10443, 10537), (59, 13924, 14018), (59, 17405, 17499), (61, 11163, 11257), (61, 14884, 14978), (67, 8978, 9072), (67, 13467, 13561), (71, 10082, 10176), (71, 15123, 15217), (73, 10658, 10752), (73, 15987, 16081), (79, 12482, 12576), (83, 13778, 13872), (89, 15842, 15936)]

def row095_layer000_block000 : List ColouredInterval :=
  [(2, 9216, 9310), (2, 9728, 9822), (2, 10240, 10334), (2, 10752, 10846), (2, 9216, 9310), (2, 10240, 10334), (2, 11264, 11358), (2, 12288, 12382), (2, 13312, 13406), (2, 14336, 14430), (2, 15360, 15454), (2, 16384, 16478), (2, 17408, 17502), (2, 10240, 10334), (2, 12288, 12382), (2, 14336, 14430)]

def row095_layer000_block001 : List ColouredInterval :=
  [(2, 16384, 16478), (2, 12288, 12382), (2, 16384, 16478), (2, 16384, 16478), (2, 16384, 16478), (3, 9477, 9571), (3, 10206, 10300), (3, 10935, 11029), (3, 11664, 11758), (3, 12393, 12487), (3, 13122, 13216), (3, 13851, 13945), (3, 14580, 14674), (3, 15309, 15403), (3, 10935, 11029), (3, 13122, 13216)]

def row095_layer000_block002 : List ColouredInterval :=
  [(3, 15309, 15403), (3, 17496, 17590), (3, 13122, 13216), (5, 9375, 9469), (5, 12500, 12594), (5, 15625, 15719), (7, 9604, 9698), (7, 12005, 12099), (7, 14406, 14500), (7, 16807, 16901), (7, 16807, 16901), (11, 9317, 9411), (11, 10648, 10742), (11, 11979, 12073), (11, 13310, 13404), (11, 14641, 14735)]

def row095_layer000_block003 : List ColouredInterval :=
  [(11, 15972, 16066), (11, 17303, 17397), (11, 14641, 14735), (13, 10985, 11079), (13, 13182, 13276), (13, 15379, 15473), (13, 17576, 17670), (17, 9826, 9920), (17, 14739, 14833), (23, 8993, 9087), (23, 9522, 9616), (23, 10051, 10145), (23, 10580, 10674), (23, 11109, 11203), (23, 12167, 12261), (29, 9251, 9345)]

def row095_layer000_block004 : List ColouredInterval :=
  [(29, 10092, 10186), (29, 10933, 11027), (29, 11774, 11868), (29, 12615, 12709), (29, 13456, 13550), (29, 14297, 14391), (29, 15138, 15232), (29, 15979, 16073), (29, 16820, 16914), (29, 17661, 17755), (31, 9610, 9704), (31, 10571, 10665), (31, 11532, 11626), (31, 12493, 12587), (31, 13454, 13548), (31, 14415, 14509)]

def row095_layer000_block005 : List ColouredInterval :=
  [(31, 15376, 15470), (31, 16337, 16431), (31, 17298, 17392), (37, 9583, 9677), (37, 10952, 11046), (37, 12321, 12415), (37, 13690, 13784), (37, 15059, 15153), (37, 16428, 16522), (37, 17797, 17859), (41, 10086, 10180), (41, 11767, 11861), (41, 13448, 13542), (41, 15129, 15223), (41, 16810, 16904), (43, 9245, 9339)]

def row095_layer000_block006 : List ColouredInterval :=
  [(43, 11094, 11188), (43, 12943, 13037), (43, 14792, 14886), (43, 16641, 16735), (47, 8930, 8930), (47, 11045, 11139), (47, 13254, 13348), (47, 15463, 15557), (47, 17672, 17766), (53, 11236, 11330), (53, 14045, 14139), (53, 16854, 16948), (59, 10443, 10537), (59, 13924, 14018), (59, 17405, 17499), (61, 11163, 11257)]

def row095_layer000_block007 : List ColouredInterval :=
  [(61, 14884, 14978), (67, 8978, 9072), (67, 13467, 13561), (71, 10082, 10176), (71, 15123, 15217), (73, 10658, 10752), (73, 15987, 16081), (79, 12482, 12576), (83, 13778, 13872), (89, 15842, 15936)]

def row095_layer000_chunks : List (List ColouredInterval) :=
  [row095_layer000_block000, row095_layer000_block001, row095_layer000_block002, row095_layer000_block003, row095_layer000_block004, row095_layer000_block005, row095_layer000_block006, row095_layer000_block007]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row095_layer000_intervals

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row095_layer000_arithmetic : LayerArithmeticValid row095.height { lower := 8930, upper := 17860, M := 21 } := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row095_layer000_arithmetic

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row095_layer000_enumeration :
    activePowerIntervalList 95 21 8930 17860 = row095_layer000_intervals := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row095_layer000_enumeration

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row095_layer000_pairs000 :
    row095_layer000_block000.all (fun I => row095_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row095_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row095_layer000_pairs000

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row095_layer000_pairs001 :
    row095_layer000_block001.all (fun I => row095_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row095_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row095_layer000_pairs001

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row095_layer000_pairs002 :
    row095_layer000_block002.all (fun I => row095_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row095_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row095_layer000_pairs002

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row095_layer000_pairs003 :
    row095_layer000_block003.all (fun I => row095_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row095_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row095_layer000_pairs003

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row095_layer000_pairs004 :
    row095_layer000_block004.all (fun I => row095_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row095_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row095_layer000_pairs004

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row095_layer000_pairs005 :
    row095_layer000_block005.all (fun I => row095_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row095_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row095_layer000_pairs005

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row095_layer000_pairs006 :
    row095_layer000_block006.all (fun I => row095_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row095_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row095_layer000_pairs006

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row095_layer000_pairs007 :
    row095_layer000_block007.all (fun I => row095_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row095_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row095_layer000_pairs007

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row095_layer000_chunks_eq : row095_layer000_chunks.flatten = row095_layer000_intervals := by
  rfl

theorem row095_layer000_pairs : pairCoverCheck row095_layer000_intervals row095_bounds = true := by
  apply pairCoverCheck_of_chunks row095_layer000_chunks_eq
  intro block hblock
  simp only [row095_layer000_chunks, List.mem_cons, List.mem_nil_iff, or_false] at hblock
  rcases hblock with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
  · exact row095_layer000_pairs000
  · exact row095_layer000_pairs001
  · exact row095_layer000_pairs002
  · exact row095_layer000_pairs003
  · exact row095_layer000_pairs004
  · exact row095_layer000_pairs005
  · exact row095_layer000_pairs006
  · exact row095_layer000_pairs007

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row095_layer000_chunks_eq
#print axioms B699LowIndex.LowIndexLean513dc7cc.row095_layer000_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row095_layer000_checked :
    coverLayerCheck row095.height row095.goods { lower := 8930, upper := 17860, M := 21 } = true := by
  exact coverLayerCheck_of_parts row095_layer000_arithmetic row095_layer000_enumeration row095_bounds_eq row095_layer000_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row095_layer000_checked

import research.tasks.«B699-Binomial».runs.«20260909-low-index-structure-b41a5a63».lean.FiniteCover
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.WitnessBridge
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.LayerParts
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.PairChunks

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row147_height : HeightCertificateDatum := { i := 147, r := 48, s := 104, n0Power10 := 7 }

def row147_goods : List GoodSegment := [
  { lower := 296, upper := 439, witness := RowWitness.topPrime 293 },
  { lower := 440, upper := 585, witness := RowWitness.topPrime 439 },
  { lower := 586, upper := 723, witness := RowWitness.topPrime 577 },
  { lower := 724, upper := 865, witness := RowWitness.topPrime 719 },
  { lower := 866, upper := 1009, witness := RowWitness.topPrime 863 },
  { lower := 1010, upper := 1155, witness := RowWitness.topPrime 1009 },
  { lower := 1156, upper := 1299, witness := RowWitness.topPrime 1153 },
  { lower := 1300, upper := 1443, witness := RowWitness.topPrime 1297 },
  { lower := 1444, upper := 1585, witness := RowWitness.topPrime 1439 },
  { lower := 1586, upper := 1729, witness := RowWitness.topPrime 1583 },
  { lower := 1730, upper := 1869, witness := RowWitness.topPrime 1723 },
  { lower := 1870, upper := 2013, witness := RowWitness.topPrime 1867 },
  { lower := 2014, upper := 2157, witness := RowWitness.topPrime 2011 },
  { lower := 2158, upper := 2299, witness := RowWitness.topPrime 2153 },
  { lower := 2300, upper := 2443, witness := RowWitness.topPrime 2297 },
  { lower := 2444, upper := 2587, witness := RowWitness.topPrime 2441 },
  { lower := 2588, upper := 2725, witness := RowWitness.topPrime 2579 },
  { lower := 2726, upper := 2865, witness := RowWitness.topPrime 2719 },
  { lower := 2866, upper := 3007, witness := RowWitness.topPrime 2861 },
  { lower := 3008, upper := 3147, witness := RowWitness.topPrime 3001 },
  { lower := 3148, upper := 3283, witness := RowWitness.topPrime 3137 },
  { lower := 3284, upper := 3417, witness := RowWitness.topPrime 3271 },
  { lower := 3418, upper := 3559, witness := RowWitness.topPrime 3413 },
  { lower := 3560, upper := 3705, witness := RowWitness.topPrime 3559 },
  { lower := 3706, upper := 3847, witness := RowWitness.topPrime 3701 },
  { lower := 3848, upper := 3993, witness := RowWitness.topPrime 3847 },
  { lower := 3994, upper := 4135, witness := RowWitness.topPrime 3989 },
  { lower := 4136, upper := 4279, witness := RowWitness.topPrime 4133 },
  { lower := 4280, upper := 4419, witness := RowWitness.topPrime 4273 },
  { lower := 4420, upper := 4555, witness := RowWitness.topPrime 4409 },
  { lower := 4556, upper := 4695, witness := RowWitness.topPrime 4549 },
  { lower := 4696, upper := 4837, witness := RowWitness.topPrime 4691 },
  { lower := 4838, upper := 4977, witness := RowWitness.topPrime 4831 },
  { lower := 4978, upper := 5119, witness := RowWitness.topPrime 4973 },
  { lower := 5120, upper := 5265, witness := RowWitness.topPrime 5119 },
  { lower := 5266, upper := 5407, witness := RowWitness.topPrime 5261 },
  { lower := 5408, upper := 5553, witness := RowWitness.topPrime 5407 },
  { lower := 5554, upper := 5677, witness := RowWitness.topPrime 5531 },
  { lower := 5678, upper := 5815, witness := RowWitness.topPrime 5669 },
  { lower := 5816, upper := 5959, witness := RowWitness.topPrime 5813 },
  { lower := 5960, upper := 6099, witness := RowWitness.topPrime 5953 },
  { lower := 6100, upper := 6237, witness := RowWitness.topPrime 6091 },
  { lower := 6238, upper := 6375, witness := RowWitness.topPrime 6229 },
  { lower := 6376, upper := 6519, witness := RowWitness.topPrime 6373 },
  { lower := 6520, upper := 6637, witness := RowWitness.topPrime 6491 },
  { lower := 6638, upper := 6783, witness := RowWitness.topPrime 6637 },
  { lower := 6784, upper := 6927, witness := RowWitness.topPrime 6781 },
  { lower := 6928, upper := 7063, witness := RowWitness.topPrime 6917 },
  { lower := 7064, upper := 7203, witness := RowWitness.topPrime 7057 },
  { lower := 7204, upper := 7339, witness := RowWitness.topPrime 7193 },
  { lower := 7340, upper := 7479, witness := RowWitness.topPrime 7333 },
  { lower := 7480, upper := 7623, witness := RowWitness.topPrime 7477 },
  { lower := 7624, upper := 7767, witness := RowWitness.topPrime 7621 },
  { lower := 7768, upper := 7905, witness := RowWitness.topPrime 7759 },
  { lower := 7906, upper := 8047, witness := RowWitness.topPrime 7901 },
  { lower := 8048, upper := 8185, witness := RowWitness.topPrime 8039 },
  { lower := 8186, upper := 8325, witness := RowWitness.topPrime 8179 },
  { lower := 8326, upper := 8463, witness := RowWitness.topPrime 8317 },
  { lower := 8464, upper := 8607, witness := RowWitness.topPrime 8461 },
  { lower := 8608, upper := 8745, witness := RowWitness.topPrime 8599 },
  { lower := 8746, upper := 8887, witness := RowWitness.topPrime 8741 },
  { lower := 8888, upper := 9033, witness := RowWitness.topPrime 8887 },
  { lower := 9034, upper := 9175, witness := RowWitness.topPrime 9029 },
  { lower := 9176, upper := 9319, witness := RowWitness.topPrime 9173 },
  { lower := 9320, upper := 9465, witness := RowWitness.topPrime 9319 },
  { lower := 9466, upper := 9609, witness := RowWitness.topPrime 9463 },
  { lower := 9610, upper := 9747, witness := RowWitness.topPrime 9601 },
  { lower := 9748, upper := 9889, witness := RowWitness.topPrime 9743 },
  { lower := 9890, upper := 10033, witness := RowWitness.topPrime 9887 },
  { lower := 10034, upper := 10155, witness := RowWitness.topPrime 10009 },
  { lower := 10156, upper := 10297, witness := RowWitness.topPrime 10151 },
  { lower := 10298, upper := 10435, witness := RowWitness.topPrime 10289 },
  { lower := 10436, upper := 10579, witness := RowWitness.topPrime 10433 },
  { lower := 10580, upper := 10713, witness := RowWitness.topPrime 10567 },
  { lower := 10714, upper := 10857, witness := RowWitness.topPrime 10711 },
  { lower := 10858, upper := 10999, witness := RowWitness.topPrime 10853 },
  { lower := 11000, upper := 11139, witness := RowWitness.topPrime 10993 },
  { lower := 11140, upper := 11277, witness := RowWitness.topPrime 11131 },
  { lower := 11278, upper := 11419, witness := RowWitness.topPrime 11273 },
  { lower := 11420, upper := 11557, witness := RowWitness.topPrime 11411 },
  { lower := 11558, upper := 11697, witness := RowWitness.topPrime 11551 },
  { lower := 11698, upper := 11835, witness := RowWitness.topPrime 11689 },
  { lower := 11836, upper := 11979, witness := RowWitness.topPrime 11833 },
  { lower := 11980, upper := 12117, witness := RowWitness.topPrime 11971 },
  { lower := 12118, upper := 12259, witness := RowWitness.topPrime 12113 },
  { lower := 12260, upper := 12399, witness := RowWitness.topPrime 12253 },
  { lower := 12400, upper := 12537, witness := RowWitness.topPrime 12391 },
  { lower := 12538, upper := 12673, witness := RowWitness.topPrime 12527 },
  { lower := 12674, upper := 12817, witness := RowWitness.topPrime 12671 },
  { lower := 12818, upper := 12955, witness := RowWitness.topPrime 12809 },
  { lower := 12956, upper := 13099, witness := RowWitness.topPrime 12953 },
  { lower := 13100, upper := 13245, witness := RowWitness.topPrime 13099 },
  { lower := 13246, upper := 13387, witness := RowWitness.topPrime 13241 },
  { lower := 13388, upper := 13527, witness := RowWitness.topPrime 13381 },
  { lower := 13528, upper := 13669, witness := RowWitness.topPrime 13523 },
  { lower := 13670, upper := 13815, witness := RowWitness.topPrime 13669 },
  { lower := 13816, upper := 13953, witness := RowWitness.topPrime 13807 },
  { lower := 13954, upper := 14079, witness := RowWitness.topPrime 13933 },
  { lower := 14080, upper := 14217, witness := RowWitness.topPrime 14071 },
  { lower := 14218, upper := 14353, witness := RowWitness.topPrime 14207 },
  { lower := 14354, upper := 14493, witness := RowWitness.topPrime 14347 },
  { lower := 14494, upper := 14635, witness := RowWitness.topPrime 14489 },
  { lower := 14636, upper := 14779, witness := RowWitness.topPrime 14633 },
  { lower := 14780, upper := 14925, witness := RowWitness.topPrime 14779 },
  { lower := 14926, upper := 15069, witness := RowWitness.topPrime 14923 },
  { lower := 15070, upper := 15207, witness := RowWitness.topPrime 15061 },
  { lower := 15208, upper := 15345, witness := RowWitness.topPrime 15199 },
  { lower := 15346, upper := 15477, witness := RowWitness.topPrime 15331 },
  { lower := 15478, upper := 15619, witness := RowWitness.topPrime 15473 },
  { lower := 15620, upper := 15765, witness := RowWitness.topPrime 15619 },
  { lower := 15766, upper := 15907, witness := RowWitness.topPrime 15761 },
  { lower := 15908, upper := 16053, witness := RowWitness.topPrime 15907 },
  { lower := 16054, upper := 16179, witness := RowWitness.topPrime 16033 },
  { lower := 16180, upper := 16287, witness := RowWitness.topPrime 16141 },
  { lower := 16288, upper := 16419, witness := RowWitness.topPrime 16273 },
  { lower := 16420, upper := 16563, witness := RowWitness.topPrime 16417 },
  { lower := 16564, upper := 16707, witness := RowWitness.topPrime 16561 },
  { lower := 16708, upper := 16849, witness := RowWitness.topPrime 16703 },
  { lower := 16850, upper := 16989, witness := RowWitness.topPrime 16843 },
  { lower := 16990, upper := 17133, witness := RowWitness.topPrime 16987 },
  { lower := 17134, upper := 17269, witness := RowWitness.topPrime 17123 },
  { lower := 17270, upper := 17403, witness := RowWitness.topPrime 17257 },
  { lower := 17404, upper := 17547, witness := RowWitness.topPrime 17401 },
  { lower := 17548, upper := 17685, witness := RowWitness.topPrime 17539 },
  { lower := 17686, upper := 17829, witness := RowWitness.topPrime 17683 },
  { lower := 17830, upper := 17973, witness := RowWitness.topPrime 17827 },
  { lower := 17974, upper := 18117, witness := RowWitness.topPrime 17971 },
  { lower := 18118, upper := 18243, witness := RowWitness.topPrime 18097 },
  { lower := 18244, upper := 18379, witness := RowWitness.topPrime 18233 },
  { lower := 18380, upper := 18525, witness := RowWitness.topPrime 18379 },
  { lower := 18526, upper := 18669, witness := RowWitness.topPrime 18523 },
  { lower := 18670, upper := 18807, witness := RowWitness.topPrime 18661 },
  { lower := 18808, upper := 18949, witness := RowWitness.topPrime 18803 },
  { lower := 18950, upper := 19093, witness := RowWitness.topPrime 18947 },
  { lower := 19094, upper := 19233, witness := RowWitness.topPrime 19087 },
  { lower := 19234, upper := 19377, witness := RowWitness.topPrime 19231 },
  { lower := 19378, upper := 19519, witness := RowWitness.topPrime 19373 },
  { lower := 19520, upper := 19653, witness := RowWitness.topPrime 19507 },
  { lower := 19654, upper := 19755, witness := RowWitness.topPrime 19609 },
  { lower := 19756, upper := 19899, witness := RowWitness.topPrime 19753 },
  { lower := 19900, upper := 20037, witness := RowWitness.topPrime 19891 },
  { lower := 20038, upper := 20175, witness := RowWitness.topPrime 20029 },
  { lower := 20176, upper := 20319, witness := RowWitness.topPrime 20173 },
  { lower := 20320, upper := 20443, witness := RowWitness.topPrime 20297 },
  { lower := 20444, upper := 20589, witness := RowWitness.topPrime 20443 },
  { lower := 20590, upper := 20709, witness := RowWitness.topPrime 20563 },
  { lower := 20710, upper := 20853, witness := RowWitness.topPrime 20707 },
  { lower := 20854, upper := 20995, witness := RowWitness.topPrime 20849 },
  { lower := 20996, upper := 21129, witness := RowWitness.topPrime 20983 },
  { lower := 21130, upper := 21267, witness := RowWitness.topPrime 21121 },
  { lower := 21268, upper := 21393, witness := RowWitness.topPrime 21247 },
  { lower := 21394, upper := 21461, witness := RowWitness.topPrime 21391 },
  { lower := 21875, upper := 22017, witness := RowWitness.topPrime 21871 },
  { lower := 22018, upper := 22021, witness := RowWitness.topPrime 22013 },
  { lower := 22090, upper := 22116, witness := RowWitness.topPrime 22079 },
  { lower := 22188, upper := 22236, witness := RowWitness.topPrime 22171 },
  { lower := 22326, upper := 22334, witness := RowWitness.topPrime 22307 },
  { lower := 22445, upper := 22587, witness := RowWitness.topPrime 22441 },
  { lower := 22588, upper := 22618, witness := RowWitness.topPrime 22573 },
  { lower := 23763, upper := 23907, witness := RowWitness.topPrime 23761 },
  { lower := 23908, upper := 23908, witness := RowWitness.topPrime 23899 },
  { lower := 24167, upper := 24183, witness := RowWitness.topPrime 24151 },
  { lower := 24299, upper := 24313, witness := RowWitness.topPrime 24281 },
  { lower := 24334, upper := 24475, witness := RowWitness.topPrime 24329 },
  { lower := 24476, upper := 24513, witness := RowWitness.topPrime 24473 },
  { lower := 24576, upper := 24711, witness := RowWitness.topPrime 24571 },
  { lower := 25000, upper := 25110, witness := RowWitness.topPrime 24989 },
  { lower := 25281, upper := 25351, witness := RowWitness.topPrime 25261 },
  { lower := 26364, upper := 26390, witness := RowWitness.topPrime 26357 },
  { lower := 26508, upper := 26510, witness := RowWitness.topPrime 26501 },
  { lower := 26624, upper := 26743, witness := RowWitness.topPrime 26597 },
  { lower := 26744, upper := 26770, witness := RowWitness.topPrime 26737 },
  { lower := 27556, upper := 27582, witness := RowWitness.topPrime 27551 },
  { lower := 28125, upper := 28269, witness := RowWitness.topPrime 28123 },
  { lower := 28270, upper := 28271, witness := RowWitness.topPrime 28229 },
  { lower := 28672, upper := 28707, witness := RowWitness.topPrime 28669 },
  { lower := 28717, upper := 28818, witness := RowWitness.topPrime 28711 },
  { lower := 29791, upper := 29914, witness := RowWitness.topPrime 29789 },
  { lower := 30899, upper := 30904, witness := RowWitness.topPrime 30893 },
  { lower := 30926, upper := 31045, witness := RowWitness.topPrime 30911 },
  { lower := 31250, upper := 31395, witness := RowWitness.topPrime 31249 },
  { lower := 31396, upper := 31396, witness := RowWitness.topPrime 31393 },
  { lower := 31423, upper := 31475, witness := RowWitness.topPrime 31397 },
  { lower := 31827, upper := 31830, witness := RowWitness.topPrime 31817 },
  { lower := 34322, upper := 34465, witness := RowWitness.topPrime 34319 },
  { lower := 34466, upper := 34537, witness := RowWitness.topPrime 34457 },
  { lower := 36517, upper := 36643, witness := RowWitness.topPrime 36497 },
  { lower := 36644, upper := 36647, witness := RowWitness.topPrime 36643 },
  { lower := 37303, upper := 37356, witness := RowWitness.topPrime 37277 },
  { lower := 37446, upper := 37449, witness := RowWitness.topPrime 37441 },
  { lower := 37500, upper := 37639, witness := RowWitness.topPrime 37493 },
  { lower := 37640, upper := 37684, witness := RowWitness.topPrime 37633 },
  { lower := 38307, upper := 38437, witness := RowWitness.topPrime 38303 },
  { lower := 39326, upper := 39469, witness := RowWitness.topPrime 39323 },
  { lower := 39470, upper := 39472, witness := RowWitness.topPrime 39461 },
  { lower := 40401, upper := 40474, witness := RowWitness.topPrime 40387 },
  { lower := 40931, upper := 40950, witness := RowWitness.topPrime 40927 },
  { lower := 40960, upper := 41077, witness := RowWitness.topPrime 40949 },
  { lower := 47526, upper := 47667, witness := RowWitness.topPrime 47521 },
  { lower := 47668, upper := 47670, witness := RowWitness.topPrime 47659 },
  { lower := 48013, upper := 48107, witness := RowWitness.topPrime 47981 },
  { lower := 48778, upper := 48814, witness := RowWitness.topPrime 48767 },
  { lower := 49152, upper := 49276, witness := RowWitness.topPrime 49139 },
  { lower := 51076, upper := 51151, witness := RowWitness.topPrime 51071 },
  { lower := 56307, upper := 56315, witness := RowWitness.topPrime 56299 },
  { lower := 57245, upper := 57268, witness := RowWitness.topPrime 57241 },
  { lower := 57344, upper := 57391, witness := RowWitness.topPrime 57331 },
  { lower := 62500, upper := 62556, witness := RowWitness.topPrime 62497 },
  { lower := 68644, upper := 68785, witness := RowWitness.topPrime 68639 },
  { lower := 68786, upper := 68790, witness := RowWitness.topPrime 68777 },
  { lower := 68921, upper := 69036, witness := RowWitness.topPrime 68917 },
  { lower := 71289, upper := 71433, witness := RowWitness.topPrime 71287 },
  { lower := 71434, upper := 71435, witness := RowWitness.topPrime 71429 },
  { lower := 73205, upper := 73313, witness := RowWitness.topPrime 73189 },
  { lower := 85805, upper := 85829, witness := RowWitness.topPrime 85793 },
  { lower := 89383, upper := 89519, witness := RowWitness.topPrime 89381 },
  { lower := 93845, upper := 93896, witness := RowWitness.topPrime 93827 },
  { lower := 148955, upper := 149023, witness := RowWitness.topPrime 148949 }
]

def row147_layers : List CoverLayer := [
  { lower := 21462, upper := 42924, M := 14 },
  { lower := 42924, upper := 85848, M := 10 },
  { lower := 85848, upper := 171696, M := 8 },
  { lower := 171696, upper := 343392, M := 6 },
  { lower := 343392, upper := 686784, M := 4 },
  { lower := 686784, upper := 1373568, M := 3 },
  { lower := 1373568, upper := 2747136, M := 3 },
  { lower := 2747136, upper := 5494272, M := 2 },
  { lower := 5494272, upper := 10000000, M := 2 }
]

def row147 : FiniteCoverRow := {
  height := row147_height,
  goods := row147_goods,
  layers := row147_layers
}


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row147

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row147_good000_checked :
    goodSegmentCheck 147 48 104
      { lower := 296, upper := 439, witness := RowWitness.topPrime 293 } = true := by
  exact good_top_prime_checked (i := 147) (r := 48) (s := 104) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row147_good001_checked :
    goodSegmentCheck 147 48 104
      { lower := 440, upper := 585, witness := RowWitness.topPrime 439 } = true := by
  exact good_top_prime_checked (i := 147) (r := 48) (s := 104) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row147_good002_checked :
    goodSegmentCheck 147 48 104
      { lower := 586, upper := 723, witness := RowWitness.topPrime 577 } = true := by
  exact good_top_prime_checked (i := 147) (r := 48) (s := 104) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row147_good003_checked :
    goodSegmentCheck 147 48 104
      { lower := 724, upper := 865, witness := RowWitness.topPrime 719 } = true := by
  exact good_top_prime_checked (i := 147) (r := 48) (s := 104) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row147_good004_checked :
    goodSegmentCheck 147 48 104
      { lower := 866, upper := 1009, witness := RowWitness.topPrime 863 } = true := by
  exact good_top_prime_checked (i := 147) (r := 48) (s := 104) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row147_good005_checked :
    goodSegmentCheck 147 48 104
      { lower := 1010, upper := 1155, witness := RowWitness.topPrime 1009 } = true := by
  exact good_top_prime_checked (i := 147) (r := 48) (s := 104) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row147_good006_checked :
    goodSegmentCheck 147 48 104
      { lower := 1156, upper := 1299, witness := RowWitness.topPrime 1153 } = true := by
  exact good_top_prime_checked (i := 147) (r := 48) (s := 104) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row147_good007_checked :
    goodSegmentCheck 147 48 104
      { lower := 1300, upper := 1443, witness := RowWitness.topPrime 1297 } = true := by
  exact good_top_prime_checked (i := 147) (r := 48) (s := 104) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row147_good008_checked :
    goodSegmentCheck 147 48 104
      { lower := 1444, upper := 1585, witness := RowWitness.topPrime 1439 } = true := by
  exact good_top_prime_checked (i := 147) (r := 48) (s := 104) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row147_good009_checked :
    goodSegmentCheck 147 48 104
      { lower := 1586, upper := 1729, witness := RowWitness.topPrime 1583 } = true := by
  exact good_top_prime_checked (i := 147) (r := 48) (s := 104) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row147_good010_checked :
    goodSegmentCheck 147 48 104
      { lower := 1730, upper := 1869, witness := RowWitness.topPrime 1723 } = true := by
  exact good_top_prime_checked (i := 147) (r := 48) (s := 104) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row147_good011_checked :
    goodSegmentCheck 147 48 104
      { lower := 1870, upper := 2013, witness := RowWitness.topPrime 1867 } = true := by
  exact good_top_prime_checked (i := 147) (r := 48) (s := 104) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row147_good012_checked :
    goodSegmentCheck 147 48 104
      { lower := 2014, upper := 2157, witness := RowWitness.topPrime 2011 } = true := by
  exact good_top_prime_checked (i := 147) (r := 48) (s := 104) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row147_good013_checked :
    goodSegmentCheck 147 48 104
      { lower := 2158, upper := 2299, witness := RowWitness.topPrime 2153 } = true := by
  exact good_top_prime_checked (i := 147) (r := 48) (s := 104) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row147_good014_checked :
    goodSegmentCheck 147 48 104
      { lower := 2300, upper := 2443, witness := RowWitness.topPrime 2297 } = true := by
  exact good_top_prime_checked (i := 147) (r := 48) (s := 104) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row147_good015_checked :
    goodSegmentCheck 147 48 104
      { lower := 2444, upper := 2587, witness := RowWitness.topPrime 2441 } = true := by
  exact good_top_prime_checked (i := 147) (r := 48) (s := 104) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row147_good000_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row147_good001_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row147_good002_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row147_good003_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row147_good004_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row147_good005_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row147_good006_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row147_good007_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row147_good008_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row147_good009_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row147_good010_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row147_good011_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row147_good012_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row147_good013_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row147_good014_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row147_good015_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row147_good016_checked :
    goodSegmentCheck 147 48 104
      { lower := 2588, upper := 2725, witness := RowWitness.topPrime 2579 } = true := by
  exact good_top_prime_checked (i := 147) (r := 48) (s := 104) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row147_good017_checked :
    goodSegmentCheck 147 48 104
      { lower := 2726, upper := 2865, witness := RowWitness.topPrime 2719 } = true := by
  exact good_top_prime_checked (i := 147) (r := 48) (s := 104) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row147_good018_checked :
    goodSegmentCheck 147 48 104
      { lower := 2866, upper := 3007, witness := RowWitness.topPrime 2861 } = true := by
  exact good_top_prime_checked (i := 147) (r := 48) (s := 104) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row147_good019_checked :
    goodSegmentCheck 147 48 104
      { lower := 3008, upper := 3147, witness := RowWitness.topPrime 3001 } = true := by
  exact good_top_prime_checked (i := 147) (r := 48) (s := 104) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row147_good020_checked :
    goodSegmentCheck 147 48 104
      { lower := 3148, upper := 3283, witness := RowWitness.topPrime 3137 } = true := by
  exact good_top_prime_checked (i := 147) (r := 48) (s := 104) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row147_good021_checked :
    goodSegmentCheck 147 48 104
      { lower := 3284, upper := 3417, witness := RowWitness.topPrime 3271 } = true := by
  exact good_top_prime_checked (i := 147) (r := 48) (s := 104) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row147_good022_checked :
    goodSegmentCheck 147 48 104
      { lower := 3418, upper := 3559, witness := RowWitness.topPrime 3413 } = true := by
  exact good_top_prime_checked (i := 147) (r := 48) (s := 104) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row147_good023_checked :
    goodSegmentCheck 147 48 104
      { lower := 3560, upper := 3705, witness := RowWitness.topPrime 3559 } = true := by
  exact good_top_prime_checked (i := 147) (r := 48) (s := 104) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row147_good024_checked :
    goodSegmentCheck 147 48 104
      { lower := 3706, upper := 3847, witness := RowWitness.topPrime 3701 } = true := by
  exact good_top_prime_checked (i := 147) (r := 48) (s := 104) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row147_good025_checked :
    goodSegmentCheck 147 48 104
      { lower := 3848, upper := 3993, witness := RowWitness.topPrime 3847 } = true := by
  exact good_top_prime_checked (i := 147) (r := 48) (s := 104) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row147_good026_checked :
    goodSegmentCheck 147 48 104
      { lower := 3994, upper := 4135, witness := RowWitness.topPrime 3989 } = true := by
  exact good_top_prime_checked (i := 147) (r := 48) (s := 104) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row147_good027_checked :
    goodSegmentCheck 147 48 104
      { lower := 4136, upper := 4279, witness := RowWitness.topPrime 4133 } = true := by
  exact good_top_prime_checked (i := 147) (r := 48) (s := 104) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row147_good028_checked :
    goodSegmentCheck 147 48 104
      { lower := 4280, upper := 4419, witness := RowWitness.topPrime 4273 } = true := by
  exact good_top_prime_checked (i := 147) (r := 48) (s := 104) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row147_good029_checked :
    goodSegmentCheck 147 48 104
      { lower := 4420, upper := 4555, witness := RowWitness.topPrime 4409 } = true := by
  exact good_top_prime_checked (i := 147) (r := 48) (s := 104) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row147_good030_checked :
    goodSegmentCheck 147 48 104
      { lower := 4556, upper := 4695, witness := RowWitness.topPrime 4549 } = true := by
  exact good_top_prime_checked (i := 147) (r := 48) (s := 104) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row147_good031_checked :
    goodSegmentCheck 147 48 104
      { lower := 4696, upper := 4837, witness := RowWitness.topPrime 4691 } = true := by
  exact good_top_prime_checked (i := 147) (r := 48) (s := 104) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row147_good016_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row147_good017_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row147_good018_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row147_good019_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row147_good020_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row147_good021_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row147_good022_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row147_good023_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row147_good024_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row147_good025_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row147_good026_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row147_good027_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row147_good028_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row147_good029_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row147_good030_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row147_good031_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row147_good032_checked :
    goodSegmentCheck 147 48 104
      { lower := 4838, upper := 4977, witness := RowWitness.topPrime 4831 } = true := by
  exact good_top_prime_checked (i := 147) (r := 48) (s := 104) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row147_good033_checked :
    goodSegmentCheck 147 48 104
      { lower := 4978, upper := 5119, witness := RowWitness.topPrime 4973 } = true := by
  exact good_top_prime_checked (i := 147) (r := 48) (s := 104) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row147_good034_checked :
    goodSegmentCheck 147 48 104
      { lower := 5120, upper := 5265, witness := RowWitness.topPrime 5119 } = true := by
  exact good_top_prime_checked (i := 147) (r := 48) (s := 104) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row147_good035_checked :
    goodSegmentCheck 147 48 104
      { lower := 5266, upper := 5407, witness := RowWitness.topPrime 5261 } = true := by
  exact good_top_prime_checked (i := 147) (r := 48) (s := 104) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row147_good036_checked :
    goodSegmentCheck 147 48 104
      { lower := 5408, upper := 5553, witness := RowWitness.topPrime 5407 } = true := by
  exact good_top_prime_checked (i := 147) (r := 48) (s := 104) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row147_good037_checked :
    goodSegmentCheck 147 48 104
      { lower := 5554, upper := 5677, witness := RowWitness.topPrime 5531 } = true := by
  exact good_top_prime_checked (i := 147) (r := 48) (s := 104) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row147_good038_checked :
    goodSegmentCheck 147 48 104
      { lower := 5678, upper := 5815, witness := RowWitness.topPrime 5669 } = true := by
  exact good_top_prime_checked (i := 147) (r := 48) (s := 104) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row147_good039_checked :
    goodSegmentCheck 147 48 104
      { lower := 5816, upper := 5959, witness := RowWitness.topPrime 5813 } = true := by
  exact good_top_prime_checked (i := 147) (r := 48) (s := 104) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row147_good040_checked :
    goodSegmentCheck 147 48 104
      { lower := 5960, upper := 6099, witness := RowWitness.topPrime 5953 } = true := by
  exact good_top_prime_checked (i := 147) (r := 48) (s := 104) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row147_good041_checked :
    goodSegmentCheck 147 48 104
      { lower := 6100, upper := 6237, witness := RowWitness.topPrime 6091 } = true := by
  exact good_top_prime_checked (i := 147) (r := 48) (s := 104) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row147_good042_checked :
    goodSegmentCheck 147 48 104
      { lower := 6238, upper := 6375, witness := RowWitness.topPrime 6229 } = true := by
  exact good_top_prime_checked (i := 147) (r := 48) (s := 104) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row147_good043_checked :
    goodSegmentCheck 147 48 104
      { lower := 6376, upper := 6519, witness := RowWitness.topPrime 6373 } = true := by
  exact good_top_prime_checked (i := 147) (r := 48) (s := 104) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row147_good044_checked :
    goodSegmentCheck 147 48 104
      { lower := 6520, upper := 6637, witness := RowWitness.topPrime 6491 } = true := by
  exact good_top_prime_checked (i := 147) (r := 48) (s := 104) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row147_good045_checked :
    goodSegmentCheck 147 48 104
      { lower := 6638, upper := 6783, witness := RowWitness.topPrime 6637 } = true := by
  exact good_top_prime_checked (i := 147) (r := 48) (s := 104) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row147_good046_checked :
    goodSegmentCheck 147 48 104
      { lower := 6784, upper := 6927, witness := RowWitness.topPrime 6781 } = true := by
  exact good_top_prime_checked (i := 147) (r := 48) (s := 104) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row147_good047_checked :
    goodSegmentCheck 147 48 104
      { lower := 6928, upper := 7063, witness := RowWitness.topPrime 6917 } = true := by
  exact good_top_prime_checked (i := 147) (r := 48) (s := 104) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row147_good032_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row147_good033_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row147_good034_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row147_good035_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row147_good036_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row147_good037_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row147_good038_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row147_good039_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row147_good040_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row147_good041_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row147_good042_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row147_good043_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row147_good044_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row147_good045_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row147_good046_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row147_good047_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row147_good048_checked :
    goodSegmentCheck 147 48 104
      { lower := 7064, upper := 7203, witness := RowWitness.topPrime 7057 } = true := by
  exact good_top_prime_checked (i := 147) (r := 48) (s := 104) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row147_good049_checked :
    goodSegmentCheck 147 48 104
      { lower := 7204, upper := 7339, witness := RowWitness.topPrime 7193 } = true := by
  exact good_top_prime_checked (i := 147) (r := 48) (s := 104) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row147_good050_checked :
    goodSegmentCheck 147 48 104
      { lower := 7340, upper := 7479, witness := RowWitness.topPrime 7333 } = true := by
  exact good_top_prime_checked (i := 147) (r := 48) (s := 104) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row147_good051_checked :
    goodSegmentCheck 147 48 104
      { lower := 7480, upper := 7623, witness := RowWitness.topPrime 7477 } = true := by
  exact good_top_prime_checked (i := 147) (r := 48) (s := 104) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row147_good052_checked :
    goodSegmentCheck 147 48 104
      { lower := 7624, upper := 7767, witness := RowWitness.topPrime 7621 } = true := by
  exact good_top_prime_checked (i := 147) (r := 48) (s := 104) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row147_good053_checked :
    goodSegmentCheck 147 48 104
      { lower := 7768, upper := 7905, witness := RowWitness.topPrime 7759 } = true := by
  exact good_top_prime_checked (i := 147) (r := 48) (s := 104) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row147_good054_checked :
    goodSegmentCheck 147 48 104
      { lower := 7906, upper := 8047, witness := RowWitness.topPrime 7901 } = true := by
  exact good_top_prime_checked (i := 147) (r := 48) (s := 104) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row147_good055_checked :
    goodSegmentCheck 147 48 104
      { lower := 8048, upper := 8185, witness := RowWitness.topPrime 8039 } = true := by
  exact good_top_prime_checked (i := 147) (r := 48) (s := 104) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row147_good056_checked :
    goodSegmentCheck 147 48 104
      { lower := 8186, upper := 8325, witness := RowWitness.topPrime 8179 } = true := by
  exact good_top_prime_checked (i := 147) (r := 48) (s := 104) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row147_good057_checked :
    goodSegmentCheck 147 48 104
      { lower := 8326, upper := 8463, witness := RowWitness.topPrime 8317 } = true := by
  exact good_top_prime_checked (i := 147) (r := 48) (s := 104) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row147_good058_checked :
    goodSegmentCheck 147 48 104
      { lower := 8464, upper := 8607, witness := RowWitness.topPrime 8461 } = true := by
  exact good_top_prime_checked (i := 147) (r := 48) (s := 104) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row147_good059_checked :
    goodSegmentCheck 147 48 104
      { lower := 8608, upper := 8745, witness := RowWitness.topPrime 8599 } = true := by
  exact good_top_prime_checked (i := 147) (r := 48) (s := 104) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row147_good060_checked :
    goodSegmentCheck 147 48 104
      { lower := 8746, upper := 8887, witness := RowWitness.topPrime 8741 } = true := by
  exact good_top_prime_checked (i := 147) (r := 48) (s := 104) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row147_good061_checked :
    goodSegmentCheck 147 48 104
      { lower := 8888, upper := 9033, witness := RowWitness.topPrime 8887 } = true := by
  exact good_top_prime_checked (i := 147) (r := 48) (s := 104) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row147_good062_checked :
    goodSegmentCheck 147 48 104
      { lower := 9034, upper := 9175, witness := RowWitness.topPrime 9029 } = true := by
  exact good_top_prime_checked (i := 147) (r := 48) (s := 104) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row147_good063_checked :
    goodSegmentCheck 147 48 104
      { lower := 9176, upper := 9319, witness := RowWitness.topPrime 9173 } = true := by
  exact good_top_prime_checked (i := 147) (r := 48) (s := 104) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row147_good048_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row147_good049_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row147_good050_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row147_good051_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row147_good052_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row147_good053_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row147_good054_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row147_good055_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row147_good056_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row147_good057_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row147_good058_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row147_good059_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row147_good060_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row147_good061_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row147_good062_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row147_good063_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row147_good064_checked :
    goodSegmentCheck 147 48 104
      { lower := 9320, upper := 9465, witness := RowWitness.topPrime 9319 } = true := by
  exact good_top_prime_checked (i := 147) (r := 48) (s := 104) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row147_good065_checked :
    goodSegmentCheck 147 48 104
      { lower := 9466, upper := 9609, witness := RowWitness.topPrime 9463 } = true := by
  exact good_top_prime_checked (i := 147) (r := 48) (s := 104) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row147_good066_checked :
    goodSegmentCheck 147 48 104
      { lower := 9610, upper := 9747, witness := RowWitness.topPrime 9601 } = true := by
  exact good_top_prime_checked (i := 147) (r := 48) (s := 104) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row147_good067_checked :
    goodSegmentCheck 147 48 104
      { lower := 9748, upper := 9889, witness := RowWitness.topPrime 9743 } = true := by
  exact good_top_prime_checked (i := 147) (r := 48) (s := 104) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row147_good068_checked :
    goodSegmentCheck 147 48 104
      { lower := 9890, upper := 10033, witness := RowWitness.topPrime 9887 } = true := by
  exact good_top_prime_checked (i := 147) (r := 48) (s := 104) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row147_good069_checked :
    goodSegmentCheck 147 48 104
      { lower := 10034, upper := 10155, witness := RowWitness.topPrime 10009 } = true := by
  exact good_top_prime_checked (i := 147) (r := 48) (s := 104) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row147_good070_checked :
    goodSegmentCheck 147 48 104
      { lower := 10156, upper := 10297, witness := RowWitness.topPrime 10151 } = true := by
  exact good_top_prime_checked (i := 147) (r := 48) (s := 104) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row147_good071_checked :
    goodSegmentCheck 147 48 104
      { lower := 10298, upper := 10435, witness := RowWitness.topPrime 10289 } = true := by
  exact good_top_prime_checked (i := 147) (r := 48) (s := 104) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row147_good072_checked :
    goodSegmentCheck 147 48 104
      { lower := 10436, upper := 10579, witness := RowWitness.topPrime 10433 } = true := by
  exact good_top_prime_checked (i := 147) (r := 48) (s := 104) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row147_good073_checked :
    goodSegmentCheck 147 48 104
      { lower := 10580, upper := 10713, witness := RowWitness.topPrime 10567 } = true := by
  exact good_top_prime_checked (i := 147) (r := 48) (s := 104) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row147_good074_checked :
    goodSegmentCheck 147 48 104
      { lower := 10714, upper := 10857, witness := RowWitness.topPrime 10711 } = true := by
  exact good_top_prime_checked (i := 147) (r := 48) (s := 104) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row147_good075_checked :
    goodSegmentCheck 147 48 104
      { lower := 10858, upper := 10999, witness := RowWitness.topPrime 10853 } = true := by
  exact good_top_prime_checked (i := 147) (r := 48) (s := 104) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row147_good076_checked :
    goodSegmentCheck 147 48 104
      { lower := 11000, upper := 11139, witness := RowWitness.topPrime 10993 } = true := by
  exact good_top_prime_checked (i := 147) (r := 48) (s := 104) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row147_good077_checked :
    goodSegmentCheck 147 48 104
      { lower := 11140, upper := 11277, witness := RowWitness.topPrime 11131 } = true := by
  exact good_top_prime_checked (i := 147) (r := 48) (s := 104) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row147_good078_checked :
    goodSegmentCheck 147 48 104
      { lower := 11278, upper := 11419, witness := RowWitness.topPrime 11273 } = true := by
  exact good_top_prime_checked (i := 147) (r := 48) (s := 104) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row147_good079_checked :
    goodSegmentCheck 147 48 104
      { lower := 11420, upper := 11557, witness := RowWitness.topPrime 11411 } = true := by
  exact good_top_prime_checked (i := 147) (r := 48) (s := 104) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row147_good064_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row147_good065_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row147_good066_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row147_good067_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row147_good068_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row147_good069_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row147_good070_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row147_good071_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row147_good072_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row147_good073_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row147_good074_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row147_good075_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row147_good076_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row147_good077_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row147_good078_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row147_good079_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row147_good080_checked :
    goodSegmentCheck 147 48 104
      { lower := 11558, upper := 11697, witness := RowWitness.topPrime 11551 } = true := by
  exact good_top_prime_checked (i := 147) (r := 48) (s := 104) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row147_good081_checked :
    goodSegmentCheck 147 48 104
      { lower := 11698, upper := 11835, witness := RowWitness.topPrime 11689 } = true := by
  exact good_top_prime_checked (i := 147) (r := 48) (s := 104) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row147_good082_checked :
    goodSegmentCheck 147 48 104
      { lower := 11836, upper := 11979, witness := RowWitness.topPrime 11833 } = true := by
  exact good_top_prime_checked (i := 147) (r := 48) (s := 104) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row147_good083_checked :
    goodSegmentCheck 147 48 104
      { lower := 11980, upper := 12117, witness := RowWitness.topPrime 11971 } = true := by
  exact good_top_prime_checked (i := 147) (r := 48) (s := 104) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row147_good084_checked :
    goodSegmentCheck 147 48 104
      { lower := 12118, upper := 12259, witness := RowWitness.topPrime 12113 } = true := by
  exact good_top_prime_checked (i := 147) (r := 48) (s := 104) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row147_good085_checked :
    goodSegmentCheck 147 48 104
      { lower := 12260, upper := 12399, witness := RowWitness.topPrime 12253 } = true := by
  exact good_top_prime_checked (i := 147) (r := 48) (s := 104) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row147_good086_checked :
    goodSegmentCheck 147 48 104
      { lower := 12400, upper := 12537, witness := RowWitness.topPrime 12391 } = true := by
  exact good_top_prime_checked (i := 147) (r := 48) (s := 104) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row147_good087_checked :
    goodSegmentCheck 147 48 104
      { lower := 12538, upper := 12673, witness := RowWitness.topPrime 12527 } = true := by
  exact good_top_prime_checked (i := 147) (r := 48) (s := 104) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row147_good088_checked :
    goodSegmentCheck 147 48 104
      { lower := 12674, upper := 12817, witness := RowWitness.topPrime 12671 } = true := by
  exact good_top_prime_checked (i := 147) (r := 48) (s := 104) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row147_good089_checked :
    goodSegmentCheck 147 48 104
      { lower := 12818, upper := 12955, witness := RowWitness.topPrime 12809 } = true := by
  exact good_top_prime_checked (i := 147) (r := 48) (s := 104) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row147_good090_checked :
    goodSegmentCheck 147 48 104
      { lower := 12956, upper := 13099, witness := RowWitness.topPrime 12953 } = true := by
  exact good_top_prime_checked (i := 147) (r := 48) (s := 104) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row147_good091_checked :
    goodSegmentCheck 147 48 104
      { lower := 13100, upper := 13245, witness := RowWitness.topPrime 13099 } = true := by
  exact good_top_prime_checked (i := 147) (r := 48) (s := 104) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row147_good092_checked :
    goodSegmentCheck 147 48 104
      { lower := 13246, upper := 13387, witness := RowWitness.topPrime 13241 } = true := by
  exact good_top_prime_checked (i := 147) (r := 48) (s := 104) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row147_good093_checked :
    goodSegmentCheck 147 48 104
      { lower := 13388, upper := 13527, witness := RowWitness.topPrime 13381 } = true := by
  exact good_top_prime_checked (i := 147) (r := 48) (s := 104) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row147_good094_checked :
    goodSegmentCheck 147 48 104
      { lower := 13528, upper := 13669, witness := RowWitness.topPrime 13523 } = true := by
  exact good_top_prime_checked (i := 147) (r := 48) (s := 104) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row147_good095_checked :
    goodSegmentCheck 147 48 104
      { lower := 13670, upper := 13815, witness := RowWitness.topPrime 13669 } = true := by
  exact good_top_prime_checked (i := 147) (r := 48) (s := 104) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row147_good080_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row147_good081_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row147_good082_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row147_good083_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row147_good084_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row147_good085_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row147_good086_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row147_good087_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row147_good088_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row147_good089_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row147_good090_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row147_good091_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row147_good092_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row147_good093_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row147_good094_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row147_good095_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row147_good096_checked :
    goodSegmentCheck 147 48 104
      { lower := 13816, upper := 13953, witness := RowWitness.topPrime 13807 } = true := by
  exact good_top_prime_checked (i := 147) (r := 48) (s := 104) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row147_good097_checked :
    goodSegmentCheck 147 48 104
      { lower := 13954, upper := 14079, witness := RowWitness.topPrime 13933 } = true := by
  exact good_top_prime_checked (i := 147) (r := 48) (s := 104) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row147_good098_checked :
    goodSegmentCheck 147 48 104
      { lower := 14080, upper := 14217, witness := RowWitness.topPrime 14071 } = true := by
  exact good_top_prime_checked (i := 147) (r := 48) (s := 104) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row147_good099_checked :
    goodSegmentCheck 147 48 104
      { lower := 14218, upper := 14353, witness := RowWitness.topPrime 14207 } = true := by
  exact good_top_prime_checked (i := 147) (r := 48) (s := 104) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row147_good100_checked :
    goodSegmentCheck 147 48 104
      { lower := 14354, upper := 14493, witness := RowWitness.topPrime 14347 } = true := by
  exact good_top_prime_checked (i := 147) (r := 48) (s := 104) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row147_good101_checked :
    goodSegmentCheck 147 48 104
      { lower := 14494, upper := 14635, witness := RowWitness.topPrime 14489 } = true := by
  exact good_top_prime_checked (i := 147) (r := 48) (s := 104) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row147_good102_checked :
    goodSegmentCheck 147 48 104
      { lower := 14636, upper := 14779, witness := RowWitness.topPrime 14633 } = true := by
  exact good_top_prime_checked (i := 147) (r := 48) (s := 104) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row147_good103_checked :
    goodSegmentCheck 147 48 104
      { lower := 14780, upper := 14925, witness := RowWitness.topPrime 14779 } = true := by
  exact good_top_prime_checked (i := 147) (r := 48) (s := 104) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row147_good104_checked :
    goodSegmentCheck 147 48 104
      { lower := 14926, upper := 15069, witness := RowWitness.topPrime 14923 } = true := by
  exact good_top_prime_checked (i := 147) (r := 48) (s := 104) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row147_good105_checked :
    goodSegmentCheck 147 48 104
      { lower := 15070, upper := 15207, witness := RowWitness.topPrime 15061 } = true := by
  exact good_top_prime_checked (i := 147) (r := 48) (s := 104) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row147_good106_checked :
    goodSegmentCheck 147 48 104
      { lower := 15208, upper := 15345, witness := RowWitness.topPrime 15199 } = true := by
  exact good_top_prime_checked (i := 147) (r := 48) (s := 104) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row147_good107_checked :
    goodSegmentCheck 147 48 104
      { lower := 15346, upper := 15477, witness := RowWitness.topPrime 15331 } = true := by
  exact good_top_prime_checked (i := 147) (r := 48) (s := 104) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row147_good108_checked :
    goodSegmentCheck 147 48 104
      { lower := 15478, upper := 15619, witness := RowWitness.topPrime 15473 } = true := by
  exact good_top_prime_checked (i := 147) (r := 48) (s := 104) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row147_good109_checked :
    goodSegmentCheck 147 48 104
      { lower := 15620, upper := 15765, witness := RowWitness.topPrime 15619 } = true := by
  exact good_top_prime_checked (i := 147) (r := 48) (s := 104) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row147_good110_checked :
    goodSegmentCheck 147 48 104
      { lower := 15766, upper := 15907, witness := RowWitness.topPrime 15761 } = true := by
  exact good_top_prime_checked (i := 147) (r := 48) (s := 104) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row147_good111_checked :
    goodSegmentCheck 147 48 104
      { lower := 15908, upper := 16053, witness := RowWitness.topPrime 15907 } = true := by
  exact good_top_prime_checked (i := 147) (r := 48) (s := 104) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row147_good096_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row147_good097_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row147_good098_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row147_good099_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row147_good100_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row147_good101_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row147_good102_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row147_good103_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row147_good104_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row147_good105_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row147_good106_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row147_good107_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row147_good108_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row147_good109_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row147_good110_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row147_good111_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row147_good112_checked :
    goodSegmentCheck 147 48 104
      { lower := 16054, upper := 16179, witness := RowWitness.topPrime 16033 } = true := by
  exact good_top_prime_checked (i := 147) (r := 48) (s := 104) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row147_good113_checked :
    goodSegmentCheck 147 48 104
      { lower := 16180, upper := 16287, witness := RowWitness.topPrime 16141 } = true := by
  exact good_top_prime_checked (i := 147) (r := 48) (s := 104) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row147_good114_checked :
    goodSegmentCheck 147 48 104
      { lower := 16288, upper := 16419, witness := RowWitness.topPrime 16273 } = true := by
  exact good_top_prime_checked (i := 147) (r := 48) (s := 104) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row147_good115_checked :
    goodSegmentCheck 147 48 104
      { lower := 16420, upper := 16563, witness := RowWitness.topPrime 16417 } = true := by
  exact good_top_prime_checked (i := 147) (r := 48) (s := 104) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row147_good116_checked :
    goodSegmentCheck 147 48 104
      { lower := 16564, upper := 16707, witness := RowWitness.topPrime 16561 } = true := by
  exact good_top_prime_checked (i := 147) (r := 48) (s := 104) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row147_good117_checked :
    goodSegmentCheck 147 48 104
      { lower := 16708, upper := 16849, witness := RowWitness.topPrime 16703 } = true := by
  exact good_top_prime_checked (i := 147) (r := 48) (s := 104) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row147_good118_checked :
    goodSegmentCheck 147 48 104
      { lower := 16850, upper := 16989, witness := RowWitness.topPrime 16843 } = true := by
  exact good_top_prime_checked (i := 147) (r := 48) (s := 104) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row147_good119_checked :
    goodSegmentCheck 147 48 104
      { lower := 16990, upper := 17133, witness := RowWitness.topPrime 16987 } = true := by
  exact good_top_prime_checked (i := 147) (r := 48) (s := 104) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row147_good120_checked :
    goodSegmentCheck 147 48 104
      { lower := 17134, upper := 17269, witness := RowWitness.topPrime 17123 } = true := by
  exact good_top_prime_checked (i := 147) (r := 48) (s := 104) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row147_good121_checked :
    goodSegmentCheck 147 48 104
      { lower := 17270, upper := 17403, witness := RowWitness.topPrime 17257 } = true := by
  exact good_top_prime_checked (i := 147) (r := 48) (s := 104) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row147_good122_checked :
    goodSegmentCheck 147 48 104
      { lower := 17404, upper := 17547, witness := RowWitness.topPrime 17401 } = true := by
  exact good_top_prime_checked (i := 147) (r := 48) (s := 104) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row147_good123_checked :
    goodSegmentCheck 147 48 104
      { lower := 17548, upper := 17685, witness := RowWitness.topPrime 17539 } = true := by
  exact good_top_prime_checked (i := 147) (r := 48) (s := 104) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row147_good124_checked :
    goodSegmentCheck 147 48 104
      { lower := 17686, upper := 17829, witness := RowWitness.topPrime 17683 } = true := by
  exact good_top_prime_checked (i := 147) (r := 48) (s := 104) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row147_good125_checked :
    goodSegmentCheck 147 48 104
      { lower := 17830, upper := 17973, witness := RowWitness.topPrime 17827 } = true := by
  exact good_top_prime_checked (i := 147) (r := 48) (s := 104) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row147_good126_checked :
    goodSegmentCheck 147 48 104
      { lower := 17974, upper := 18117, witness := RowWitness.topPrime 17971 } = true := by
  exact good_top_prime_checked (i := 147) (r := 48) (s := 104) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row147_good127_checked :
    goodSegmentCheck 147 48 104
      { lower := 18118, upper := 18243, witness := RowWitness.topPrime 18097 } = true := by
  exact good_top_prime_checked (i := 147) (r := 48) (s := 104) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row147_good112_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row147_good113_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row147_good114_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row147_good115_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row147_good116_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row147_good117_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row147_good118_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row147_good119_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row147_good120_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row147_good121_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row147_good122_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row147_good123_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row147_good124_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row147_good125_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row147_good126_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row147_good127_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row147_good128_checked :
    goodSegmentCheck 147 48 104
      { lower := 18244, upper := 18379, witness := RowWitness.topPrime 18233 } = true := by
  exact good_top_prime_checked (i := 147) (r := 48) (s := 104) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row147_good129_checked :
    goodSegmentCheck 147 48 104
      { lower := 18380, upper := 18525, witness := RowWitness.topPrime 18379 } = true := by
  exact good_top_prime_checked (i := 147) (r := 48) (s := 104) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row147_good130_checked :
    goodSegmentCheck 147 48 104
      { lower := 18526, upper := 18669, witness := RowWitness.topPrime 18523 } = true := by
  exact good_top_prime_checked (i := 147) (r := 48) (s := 104) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row147_good131_checked :
    goodSegmentCheck 147 48 104
      { lower := 18670, upper := 18807, witness := RowWitness.topPrime 18661 } = true := by
  exact good_top_prime_checked (i := 147) (r := 48) (s := 104) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row147_good132_checked :
    goodSegmentCheck 147 48 104
      { lower := 18808, upper := 18949, witness := RowWitness.topPrime 18803 } = true := by
  exact good_top_prime_checked (i := 147) (r := 48) (s := 104) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row147_good133_checked :
    goodSegmentCheck 147 48 104
      { lower := 18950, upper := 19093, witness := RowWitness.topPrime 18947 } = true := by
  exact good_top_prime_checked (i := 147) (r := 48) (s := 104) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row147_good134_checked :
    goodSegmentCheck 147 48 104
      { lower := 19094, upper := 19233, witness := RowWitness.topPrime 19087 } = true := by
  exact good_top_prime_checked (i := 147) (r := 48) (s := 104) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row147_good135_checked :
    goodSegmentCheck 147 48 104
      { lower := 19234, upper := 19377, witness := RowWitness.topPrime 19231 } = true := by
  exact good_top_prime_checked (i := 147) (r := 48) (s := 104) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row147_good136_checked :
    goodSegmentCheck 147 48 104
      { lower := 19378, upper := 19519, witness := RowWitness.topPrime 19373 } = true := by
  exact good_top_prime_checked (i := 147) (r := 48) (s := 104) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row147_good137_checked :
    goodSegmentCheck 147 48 104
      { lower := 19520, upper := 19653, witness := RowWitness.topPrime 19507 } = true := by
  exact good_top_prime_checked (i := 147) (r := 48) (s := 104) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row147_good138_checked :
    goodSegmentCheck 147 48 104
      { lower := 19654, upper := 19755, witness := RowWitness.topPrime 19609 } = true := by
  exact good_top_prime_checked (i := 147) (r := 48) (s := 104) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row147_good139_checked :
    goodSegmentCheck 147 48 104
      { lower := 19756, upper := 19899, witness := RowWitness.topPrime 19753 } = true := by
  exact good_top_prime_checked (i := 147) (r := 48) (s := 104) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row147_good140_checked :
    goodSegmentCheck 147 48 104
      { lower := 19900, upper := 20037, witness := RowWitness.topPrime 19891 } = true := by
  exact good_top_prime_checked (i := 147) (r := 48) (s := 104) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row147_good141_checked :
    goodSegmentCheck 147 48 104
      { lower := 20038, upper := 20175, witness := RowWitness.topPrime 20029 } = true := by
  exact good_top_prime_checked (i := 147) (r := 48) (s := 104) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row147_good142_checked :
    goodSegmentCheck 147 48 104
      { lower := 20176, upper := 20319, witness := RowWitness.topPrime 20173 } = true := by
  exact good_top_prime_checked (i := 147) (r := 48) (s := 104) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row147_good143_checked :
    goodSegmentCheck 147 48 104
      { lower := 20320, upper := 20443, witness := RowWitness.topPrime 20297 } = true := by
  exact good_top_prime_checked (i := 147) (r := 48) (s := 104) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row147_good128_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row147_good129_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row147_good130_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row147_good131_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row147_good132_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row147_good133_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row147_good134_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row147_good135_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row147_good136_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row147_good137_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row147_good138_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row147_good139_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row147_good140_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row147_good141_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row147_good142_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row147_good143_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row147_good144_checked :
    goodSegmentCheck 147 48 104
      { lower := 20444, upper := 20589, witness := RowWitness.topPrime 20443 } = true := by
  exact good_top_prime_checked (i := 147) (r := 48) (s := 104) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row147_good145_checked :
    goodSegmentCheck 147 48 104
      { lower := 20590, upper := 20709, witness := RowWitness.topPrime 20563 } = true := by
  exact good_top_prime_checked (i := 147) (r := 48) (s := 104) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row147_good146_checked :
    goodSegmentCheck 147 48 104
      { lower := 20710, upper := 20853, witness := RowWitness.topPrime 20707 } = true := by
  exact good_top_prime_checked (i := 147) (r := 48) (s := 104) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row147_good147_checked :
    goodSegmentCheck 147 48 104
      { lower := 20854, upper := 20995, witness := RowWitness.topPrime 20849 } = true := by
  exact good_top_prime_checked (i := 147) (r := 48) (s := 104) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row147_good148_checked :
    goodSegmentCheck 147 48 104
      { lower := 20996, upper := 21129, witness := RowWitness.topPrime 20983 } = true := by
  exact good_top_prime_checked (i := 147) (r := 48) (s := 104) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row147_good149_checked :
    goodSegmentCheck 147 48 104
      { lower := 21130, upper := 21267, witness := RowWitness.topPrime 21121 } = true := by
  exact good_top_prime_checked (i := 147) (r := 48) (s := 104) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row147_good150_checked :
    goodSegmentCheck 147 48 104
      { lower := 21268, upper := 21393, witness := RowWitness.topPrime 21247 } = true := by
  exact good_top_prime_checked (i := 147) (r := 48) (s := 104) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row147_good151_checked :
    goodSegmentCheck 147 48 104
      { lower := 21394, upper := 21461, witness := RowWitness.topPrime 21391 } = true := by
  exact good_top_prime_checked (i := 147) (r := 48) (s := 104) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row147_good152_checked :
    goodSegmentCheck 147 48 104
      { lower := 21875, upper := 22017, witness := RowWitness.topPrime 21871 } = true := by
  exact good_top_prime_checked (i := 147) (r := 48) (s := 104) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row147_good153_checked :
    goodSegmentCheck 147 48 104
      { lower := 22018, upper := 22021, witness := RowWitness.topPrime 22013 } = true := by
  exact good_top_prime_checked (i := 147) (r := 48) (s := 104) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row147_good154_checked :
    goodSegmentCheck 147 48 104
      { lower := 22090, upper := 22116, witness := RowWitness.topPrime 22079 } = true := by
  exact good_top_prime_checked (i := 147) (r := 48) (s := 104) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row147_good155_checked :
    goodSegmentCheck 147 48 104
      { lower := 22188, upper := 22236, witness := RowWitness.topPrime 22171 } = true := by
  exact good_top_prime_checked (i := 147) (r := 48) (s := 104) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row147_good156_checked :
    goodSegmentCheck 147 48 104
      { lower := 22326, upper := 22334, witness := RowWitness.topPrime 22307 } = true := by
  exact good_top_prime_checked (i := 147) (r := 48) (s := 104) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row147_good157_checked :
    goodSegmentCheck 147 48 104
      { lower := 22445, upper := 22587, witness := RowWitness.topPrime 22441 } = true := by
  exact good_top_prime_checked (i := 147) (r := 48) (s := 104) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row147_good158_checked :
    goodSegmentCheck 147 48 104
      { lower := 22588, upper := 22618, witness := RowWitness.topPrime 22573 } = true := by
  exact good_top_prime_checked (i := 147) (r := 48) (s := 104) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row147_good159_checked :
    goodSegmentCheck 147 48 104
      { lower := 23763, upper := 23907, witness := RowWitness.topPrime 23761 } = true := by
  exact good_top_prime_checked (i := 147) (r := 48) (s := 104) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row147_good144_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row147_good145_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row147_good146_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row147_good147_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row147_good148_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row147_good149_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row147_good150_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row147_good151_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row147_good152_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row147_good153_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row147_good154_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row147_good155_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row147_good156_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row147_good157_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row147_good158_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row147_good159_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row147_good160_checked :
    goodSegmentCheck 147 48 104
      { lower := 23908, upper := 23908, witness := RowWitness.topPrime 23899 } = true := by
  exact good_top_prime_checked (i := 147) (r := 48) (s := 104) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row147_good161_checked :
    goodSegmentCheck 147 48 104
      { lower := 24167, upper := 24183, witness := RowWitness.topPrime 24151 } = true := by
  exact good_top_prime_checked (i := 147) (r := 48) (s := 104) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row147_good162_checked :
    goodSegmentCheck 147 48 104
      { lower := 24299, upper := 24313, witness := RowWitness.topPrime 24281 } = true := by
  exact good_top_prime_checked (i := 147) (r := 48) (s := 104) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row147_good163_checked :
    goodSegmentCheck 147 48 104
      { lower := 24334, upper := 24475, witness := RowWitness.topPrime 24329 } = true := by
  exact good_top_prime_checked (i := 147) (r := 48) (s := 104) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row147_good164_checked :
    goodSegmentCheck 147 48 104
      { lower := 24476, upper := 24513, witness := RowWitness.topPrime 24473 } = true := by
  exact good_top_prime_checked (i := 147) (r := 48) (s := 104) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row147_good165_checked :
    goodSegmentCheck 147 48 104
      { lower := 24576, upper := 24711, witness := RowWitness.topPrime 24571 } = true := by
  exact good_top_prime_checked (i := 147) (r := 48) (s := 104) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row147_good166_checked :
    goodSegmentCheck 147 48 104
      { lower := 25000, upper := 25110, witness := RowWitness.topPrime 24989 } = true := by
  exact good_top_prime_checked (i := 147) (r := 48) (s := 104) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row147_good167_checked :
    goodSegmentCheck 147 48 104
      { lower := 25281, upper := 25351, witness := RowWitness.topPrime 25261 } = true := by
  exact good_top_prime_checked (i := 147) (r := 48) (s := 104) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row147_good168_checked :
    goodSegmentCheck 147 48 104
      { lower := 26364, upper := 26390, witness := RowWitness.topPrime 26357 } = true := by
  exact good_top_prime_checked (i := 147) (r := 48) (s := 104) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row147_good169_checked :
    goodSegmentCheck 147 48 104
      { lower := 26508, upper := 26510, witness := RowWitness.topPrime 26501 } = true := by
  exact good_top_prime_checked (i := 147) (r := 48) (s := 104) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row147_good170_checked :
    goodSegmentCheck 147 48 104
      { lower := 26624, upper := 26743, witness := RowWitness.topPrime 26597 } = true := by
  exact good_top_prime_checked (i := 147) (r := 48) (s := 104) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row147_good171_checked :
    goodSegmentCheck 147 48 104
      { lower := 26744, upper := 26770, witness := RowWitness.topPrime 26737 } = true := by
  exact good_top_prime_checked (i := 147) (r := 48) (s := 104) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row147_good172_checked :
    goodSegmentCheck 147 48 104
      { lower := 27556, upper := 27582, witness := RowWitness.topPrime 27551 } = true := by
  exact good_top_prime_checked (i := 147) (r := 48) (s := 104) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row147_good173_checked :
    goodSegmentCheck 147 48 104
      { lower := 28125, upper := 28269, witness := RowWitness.topPrime 28123 } = true := by
  exact good_top_prime_checked (i := 147) (r := 48) (s := 104) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row147_good174_checked :
    goodSegmentCheck 147 48 104
      { lower := 28270, upper := 28271, witness := RowWitness.topPrime 28229 } = true := by
  exact good_top_prime_checked (i := 147) (r := 48) (s := 104) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row147_good175_checked :
    goodSegmentCheck 147 48 104
      { lower := 28672, upper := 28707, witness := RowWitness.topPrime 28669 } = true := by
  exact good_top_prime_checked (i := 147) (r := 48) (s := 104) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row147_good160_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row147_good161_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row147_good162_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row147_good163_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row147_good164_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row147_good165_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row147_good166_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row147_good167_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row147_good168_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row147_good169_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row147_good170_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row147_good171_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row147_good172_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row147_good173_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row147_good174_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row147_good175_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row147_good176_checked :
    goodSegmentCheck 147 48 104
      { lower := 28717, upper := 28818, witness := RowWitness.topPrime 28711 } = true := by
  exact good_top_prime_checked (i := 147) (r := 48) (s := 104) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row147_good177_checked :
    goodSegmentCheck 147 48 104
      { lower := 29791, upper := 29914, witness := RowWitness.topPrime 29789 } = true := by
  exact good_top_prime_checked (i := 147) (r := 48) (s := 104) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row147_good178_checked :
    goodSegmentCheck 147 48 104
      { lower := 30899, upper := 30904, witness := RowWitness.topPrime 30893 } = true := by
  exact good_top_prime_checked (i := 147) (r := 48) (s := 104) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row147_good179_checked :
    goodSegmentCheck 147 48 104
      { lower := 30926, upper := 31045, witness := RowWitness.topPrime 30911 } = true := by
  exact good_top_prime_checked (i := 147) (r := 48) (s := 104) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row147_good180_checked :
    goodSegmentCheck 147 48 104
      { lower := 31250, upper := 31395, witness := RowWitness.topPrime 31249 } = true := by
  exact good_top_prime_checked (i := 147) (r := 48) (s := 104) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row147_good181_checked :
    goodSegmentCheck 147 48 104
      { lower := 31396, upper := 31396, witness := RowWitness.topPrime 31393 } = true := by
  exact good_top_prime_checked (i := 147) (r := 48) (s := 104) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row147_good182_checked :
    goodSegmentCheck 147 48 104
      { lower := 31423, upper := 31475, witness := RowWitness.topPrime 31397 } = true := by
  exact good_top_prime_checked (i := 147) (r := 48) (s := 104) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row147_good183_checked :
    goodSegmentCheck 147 48 104
      { lower := 31827, upper := 31830, witness := RowWitness.topPrime 31817 } = true := by
  exact good_top_prime_checked (i := 147) (r := 48) (s := 104) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row147_good184_checked :
    goodSegmentCheck 147 48 104
      { lower := 34322, upper := 34465, witness := RowWitness.topPrime 34319 } = true := by
  exact good_top_prime_checked (i := 147) (r := 48) (s := 104) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row147_good185_checked :
    goodSegmentCheck 147 48 104
      { lower := 34466, upper := 34537, witness := RowWitness.topPrime 34457 } = true := by
  exact good_top_prime_checked (i := 147) (r := 48) (s := 104) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row147_good186_checked :
    goodSegmentCheck 147 48 104
      { lower := 36517, upper := 36643, witness := RowWitness.topPrime 36497 } = true := by
  exact good_top_prime_checked (i := 147) (r := 48) (s := 104) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row147_good187_checked :
    goodSegmentCheck 147 48 104
      { lower := 36644, upper := 36647, witness := RowWitness.topPrime 36643 } = true := by
  exact good_top_prime_checked (i := 147) (r := 48) (s := 104) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row147_good188_checked :
    goodSegmentCheck 147 48 104
      { lower := 37303, upper := 37356, witness := RowWitness.topPrime 37277 } = true := by
  exact good_top_prime_checked (i := 147) (r := 48) (s := 104) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row147_good189_checked :
    goodSegmentCheck 147 48 104
      { lower := 37446, upper := 37449, witness := RowWitness.topPrime 37441 } = true := by
  exact good_top_prime_checked (i := 147) (r := 48) (s := 104) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row147_good190_checked :
    goodSegmentCheck 147 48 104
      { lower := 37500, upper := 37639, witness := RowWitness.topPrime 37493 } = true := by
  exact good_top_prime_checked (i := 147) (r := 48) (s := 104) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row147_good191_checked :
    goodSegmentCheck 147 48 104
      { lower := 37640, upper := 37684, witness := RowWitness.topPrime 37633 } = true := by
  exact good_top_prime_checked (i := 147) (r := 48) (s := 104) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row147_good176_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row147_good177_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row147_good178_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row147_good179_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row147_good180_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row147_good181_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row147_good182_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row147_good183_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row147_good184_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row147_good185_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row147_good186_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row147_good187_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row147_good188_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row147_good189_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row147_good190_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row147_good191_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row147_good192_checked :
    goodSegmentCheck 147 48 104
      { lower := 38307, upper := 38437, witness := RowWitness.topPrime 38303 } = true := by
  exact good_top_prime_checked (i := 147) (r := 48) (s := 104) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row147_good193_checked :
    goodSegmentCheck 147 48 104
      { lower := 39326, upper := 39469, witness := RowWitness.topPrime 39323 } = true := by
  exact good_top_prime_checked (i := 147) (r := 48) (s := 104) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row147_good194_checked :
    goodSegmentCheck 147 48 104
      { lower := 39470, upper := 39472, witness := RowWitness.topPrime 39461 } = true := by
  exact good_top_prime_checked (i := 147) (r := 48) (s := 104) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row147_good195_checked :
    goodSegmentCheck 147 48 104
      { lower := 40401, upper := 40474, witness := RowWitness.topPrime 40387 } = true := by
  exact good_top_prime_checked (i := 147) (r := 48) (s := 104) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row147_good196_checked :
    goodSegmentCheck 147 48 104
      { lower := 40931, upper := 40950, witness := RowWitness.topPrime 40927 } = true := by
  exact good_top_prime_checked (i := 147) (r := 48) (s := 104) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row147_good197_checked :
    goodSegmentCheck 147 48 104
      { lower := 40960, upper := 41077, witness := RowWitness.topPrime 40949 } = true := by
  exact good_top_prime_checked (i := 147) (r := 48) (s := 104) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row147_good198_checked :
    goodSegmentCheck 147 48 104
      { lower := 47526, upper := 47667, witness := RowWitness.topPrime 47521 } = true := by
  exact good_top_prime_checked (i := 147) (r := 48) (s := 104) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row147_good199_checked :
    goodSegmentCheck 147 48 104
      { lower := 47668, upper := 47670, witness := RowWitness.topPrime 47659 } = true := by
  exact good_top_prime_checked (i := 147) (r := 48) (s := 104) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row147_good200_checked :
    goodSegmentCheck 147 48 104
      { lower := 48013, upper := 48107, witness := RowWitness.topPrime 47981 } = true := by
  exact good_top_prime_checked (i := 147) (r := 48) (s := 104) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row147_good201_checked :
    goodSegmentCheck 147 48 104
      { lower := 48778, upper := 48814, witness := RowWitness.topPrime 48767 } = true := by
  exact good_top_prime_checked (i := 147) (r := 48) (s := 104) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row147_good202_checked :
    goodSegmentCheck 147 48 104
      { lower := 49152, upper := 49276, witness := RowWitness.topPrime 49139 } = true := by
  exact good_top_prime_checked (i := 147) (r := 48) (s := 104) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row147_good203_checked :
    goodSegmentCheck 147 48 104
      { lower := 51076, upper := 51151, witness := RowWitness.topPrime 51071 } = true := by
  exact good_top_prime_checked (i := 147) (r := 48) (s := 104) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row147_good204_checked :
    goodSegmentCheck 147 48 104
      { lower := 56307, upper := 56315, witness := RowWitness.topPrime 56299 } = true := by
  exact good_top_prime_checked (i := 147) (r := 48) (s := 104) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row147_good205_checked :
    goodSegmentCheck 147 48 104
      { lower := 57245, upper := 57268, witness := RowWitness.topPrime 57241 } = true := by
  exact good_top_prime_checked (i := 147) (r := 48) (s := 104) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row147_good206_checked :
    goodSegmentCheck 147 48 104
      { lower := 57344, upper := 57391, witness := RowWitness.topPrime 57331 } = true := by
  exact good_top_prime_checked (i := 147) (r := 48) (s := 104) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row147_good207_checked :
    goodSegmentCheck 147 48 104
      { lower := 62500, upper := 62556, witness := RowWitness.topPrime 62497 } = true := by
  exact good_top_prime_checked (i := 147) (r := 48) (s := 104) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row147_good192_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row147_good193_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row147_good194_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row147_good195_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row147_good196_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row147_good197_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row147_good198_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row147_good199_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row147_good200_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row147_good201_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row147_good202_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row147_good203_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row147_good204_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row147_good205_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row147_good206_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row147_good207_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row147_good208_checked :
    goodSegmentCheck 147 48 104
      { lower := 68644, upper := 68785, witness := RowWitness.topPrime 68639 } = true := by
  exact good_top_prime_checked (i := 147) (r := 48) (s := 104) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row147_good209_checked :
    goodSegmentCheck 147 48 104
      { lower := 68786, upper := 68790, witness := RowWitness.topPrime 68777 } = true := by
  exact good_top_prime_checked (i := 147) (r := 48) (s := 104) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row147_good210_checked :
    goodSegmentCheck 147 48 104
      { lower := 68921, upper := 69036, witness := RowWitness.topPrime 68917 } = true := by
  exact good_top_prime_checked (i := 147) (r := 48) (s := 104) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row147_good211_checked :
    goodSegmentCheck 147 48 104
      { lower := 71289, upper := 71433, witness := RowWitness.topPrime 71287 } = true := by
  exact good_top_prime_checked (i := 147) (r := 48) (s := 104) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row147_good212_checked :
    goodSegmentCheck 147 48 104
      { lower := 71434, upper := 71435, witness := RowWitness.topPrime 71429 } = true := by
  exact good_top_prime_checked (i := 147) (r := 48) (s := 104) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row147_good213_checked :
    goodSegmentCheck 147 48 104
      { lower := 73205, upper := 73313, witness := RowWitness.topPrime 73189 } = true := by
  exact good_top_prime_checked (i := 147) (r := 48) (s := 104) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row147_good214_checked :
    goodSegmentCheck 147 48 104
      { lower := 85805, upper := 85829, witness := RowWitness.topPrime 85793 } = true := by
  exact good_top_prime_checked (i := 147) (r := 48) (s := 104) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row147_good215_checked :
    goodSegmentCheck 147 48 104
      { lower := 89383, upper := 89519, witness := RowWitness.topPrime 89381 } = true := by
  exact good_top_prime_checked (i := 147) (r := 48) (s := 104) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row147_good216_checked :
    goodSegmentCheck 147 48 104
      { lower := 93845, upper := 93896, witness := RowWitness.topPrime 93827 } = true := by
  exact good_top_prime_checked (i := 147) (r := 48) (s := 104) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row147_good217_checked :
    goodSegmentCheck 147 48 104
      { lower := 148955, upper := 149023, witness := RowWitness.topPrime 148949 } = true := by
  exact good_top_prime_checked (i := 147) (r := 48) (s := 104) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row147_good208_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row147_good209_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row147_good210_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row147_good211_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row147_good212_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row147_good213_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row147_good214_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row147_good215_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row147_good216_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row147_good217_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row147_goods_checked :
    row147.goods.all (goodSegmentCheck row147.height.i row147.height.r row147.height.s) = true := by
  change row147_goods.all (goodSegmentCheck 147 48 104) = true
  simp only [row147_goods, List.all_cons, List.all_nil,
    row147_good000_checked,
    row147_good001_checked,
    row147_good002_checked,
    row147_good003_checked,
    row147_good004_checked,
    row147_good005_checked,
    row147_good006_checked,
    row147_good007_checked,
    row147_good008_checked,
    row147_good009_checked,
    row147_good010_checked,
    row147_good011_checked,
    row147_good012_checked,
    row147_good013_checked,
    row147_good014_checked,
    row147_good015_checked,
    row147_good016_checked,
    row147_good017_checked,
    row147_good018_checked,
    row147_good019_checked,
    row147_good020_checked,
    row147_good021_checked,
    row147_good022_checked,
    row147_good023_checked,
    row147_good024_checked,
    row147_good025_checked,
    row147_good026_checked,
    row147_good027_checked,
    row147_good028_checked,
    row147_good029_checked,
    row147_good030_checked,
    row147_good031_checked,
    row147_good032_checked,
    row147_good033_checked,
    row147_good034_checked,
    row147_good035_checked,
    row147_good036_checked,
    row147_good037_checked,
    row147_good038_checked,
    row147_good039_checked,
    row147_good040_checked,
    row147_good041_checked,
    row147_good042_checked,
    row147_good043_checked,
    row147_good044_checked,
    row147_good045_checked,
    row147_good046_checked,
    row147_good047_checked,
    row147_good048_checked,
    row147_good049_checked,
    row147_good050_checked,
    row147_good051_checked,
    row147_good052_checked,
    row147_good053_checked,
    row147_good054_checked,
    row147_good055_checked,
    row147_good056_checked,
    row147_good057_checked,
    row147_good058_checked,
    row147_good059_checked,
    row147_good060_checked,
    row147_good061_checked,
    row147_good062_checked,
    row147_good063_checked,
    row147_good064_checked,
    row147_good065_checked,
    row147_good066_checked,
    row147_good067_checked,
    row147_good068_checked,
    row147_good069_checked,
    row147_good070_checked,
    row147_good071_checked,
    row147_good072_checked,
    row147_good073_checked,
    row147_good074_checked,
    row147_good075_checked,
    row147_good076_checked,
    row147_good077_checked,
    row147_good078_checked,
    row147_good079_checked,
    row147_good080_checked,
    row147_good081_checked,
    row147_good082_checked,
    row147_good083_checked,
    row147_good084_checked,
    row147_good085_checked,
    row147_good086_checked,
    row147_good087_checked,
    row147_good088_checked,
    row147_good089_checked,
    row147_good090_checked,
    row147_good091_checked,
    row147_good092_checked,
    row147_good093_checked,
    row147_good094_checked,
    row147_good095_checked,
    row147_good096_checked,
    row147_good097_checked,
    row147_good098_checked,
    row147_good099_checked,
    row147_good100_checked,
    row147_good101_checked,
    row147_good102_checked,
    row147_good103_checked,
    row147_good104_checked,
    row147_good105_checked,
    row147_good106_checked,
    row147_good107_checked,
    row147_good108_checked,
    row147_good109_checked,
    row147_good110_checked,
    row147_good111_checked,
    row147_good112_checked,
    row147_good113_checked,
    row147_good114_checked,
    row147_good115_checked,
    row147_good116_checked,
    row147_good117_checked,
    row147_good118_checked,
    row147_good119_checked,
    row147_good120_checked,
    row147_good121_checked,
    row147_good122_checked,
    row147_good123_checked,
    row147_good124_checked,
    row147_good125_checked,
    row147_good126_checked,
    row147_good127_checked,
    row147_good128_checked,
    row147_good129_checked,
    row147_good130_checked,
    row147_good131_checked,
    row147_good132_checked,
    row147_good133_checked,
    row147_good134_checked,
    row147_good135_checked,
    row147_good136_checked,
    row147_good137_checked,
    row147_good138_checked,
    row147_good139_checked,
    row147_good140_checked,
    row147_good141_checked,
    row147_good142_checked,
    row147_good143_checked,
    row147_good144_checked,
    row147_good145_checked,
    row147_good146_checked,
    row147_good147_checked,
    row147_good148_checked,
    row147_good149_checked,
    row147_good150_checked,
    row147_good151_checked,
    row147_good152_checked,
    row147_good153_checked,
    row147_good154_checked,
    row147_good155_checked,
    row147_good156_checked,
    row147_good157_checked,
    row147_good158_checked,
    row147_good159_checked,
    row147_good160_checked,
    row147_good161_checked,
    row147_good162_checked,
    row147_good163_checked,
    row147_good164_checked,
    row147_good165_checked,
    row147_good166_checked,
    row147_good167_checked,
    row147_good168_checked,
    row147_good169_checked,
    row147_good170_checked,
    row147_good171_checked,
    row147_good172_checked,
    row147_good173_checked,
    row147_good174_checked,
    row147_good175_checked,
    row147_good176_checked,
    row147_good177_checked,
    row147_good178_checked,
    row147_good179_checked,
    row147_good180_checked,
    row147_good181_checked,
    row147_good182_checked,
    row147_good183_checked,
    row147_good184_checked,
    row147_good185_checked,
    row147_good186_checked,
    row147_good187_checked,
    row147_good188_checked,
    row147_good189_checked,
    row147_good190_checked,
    row147_good191_checked,
    row147_good192_checked,
    row147_good193_checked,
    row147_good194_checked,
    row147_good195_checked,
    row147_good196_checked,
    row147_good197_checked,
    row147_good198_checked,
    row147_good199_checked,
    row147_good200_checked,
    row147_good201_checked,
    row147_good202_checked,
    row147_good203_checked,
    row147_good204_checked,
    row147_good205_checked,
    row147_good206_checked,
    row147_good207_checked,
    row147_good208_checked,
    row147_good209_checked,
    row147_good210_checked,
    row147_good211_checked,
    row147_good212_checked,
    row147_good213_checked,
    row147_good214_checked,
    row147_good215_checked,
    row147_good216_checked,
    row147_good217_checked, Bool.true_and]

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row147_goods_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row147_registered :
    decide (row147.height ∈ heightCertificateData) = true := by
  decide +kernel

theorem row147_small_checked :
    coverCheck (2 * row147.height.i + 2) (row147.height.i * (row147.height.i - 1) - 1)
      (row147.goods.map goodSegmentBounds) = true := by
  decide +kernel

theorem row147_layerCover_checked :
    coverCheck (row147.height.i * (row147.height.i - 1)) (row147.height.n0 - 1)
      (row147.layers.map CoverLayer.bounds) = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row147_registered
#print axioms B699LowIndex.LowIndexLean513dc7cc.row147_small_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row147_layerCover_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row147_bounds : List NatInterval :=
  [(296, 439), (440, 585), (586, 723), (724, 865), (866, 1009), (1010, 1155), (1156, 1299), (1300, 1443), (1444, 1585), (1586, 1729), (1730, 1869), (1870, 2013), (2014, 2157), (2158, 2299), (2300, 2443), (2444, 2587), (2588, 2725), (2726, 2865), (2866, 3007), (3008, 3147), (3148, 3283), (3284, 3417), (3418, 3559), (3560, 3705), (3706, 3847), (3848, 3993), (3994, 4135), (4136, 4279), (4280, 4419), (4420, 4555), (4556, 4695), (4696, 4837), (4838, 4977), (4978, 5119), (5120, 5265), (5266, 5407), (5408, 5553), (5554, 5677), (5678, 5815), (5816, 5959), (5960, 6099), (6100, 6237), (6238, 6375), (6376, 6519), (6520, 6637), (6638, 6783), (6784, 6927), (6928, 7063), (7064, 7203), (7204, 7339), (7340, 7479), (7480, 7623), (7624, 7767), (7768, 7905), (7906, 8047), (8048, 8185), (8186, 8325), (8326, 8463), (8464, 8607), (8608, 8745), (8746, 8887), (8888, 9033), (9034, 9175), (9176, 9319), (9320, 9465), (9466, 9609), (9610, 9747), (9748, 9889), (9890, 10033), (10034, 10155), (10156, 10297), (10298, 10435), (10436, 10579), (10580, 10713), (10714, 10857), (10858, 10999), (11000, 11139), (11140, 11277), (11278, 11419), (11420, 11557), (11558, 11697), (11698, 11835), (11836, 11979), (11980, 12117), (12118, 12259), (12260, 12399), (12400, 12537), (12538, 12673), (12674, 12817), (12818, 12955), (12956, 13099), (13100, 13245), (13246, 13387), (13388, 13527), (13528, 13669), (13670, 13815), (13816, 13953), (13954, 14079), (14080, 14217), (14218, 14353), (14354, 14493), (14494, 14635), (14636, 14779), (14780, 14925), (14926, 15069), (15070, 15207), (15208, 15345), (15346, 15477), (15478, 15619), (15620, 15765), (15766, 15907), (15908, 16053), (16054, 16179), (16180, 16287), (16288, 16419), (16420, 16563), (16564, 16707), (16708, 16849), (16850, 16989), (16990, 17133), (17134, 17269), (17270, 17403), (17404, 17547), (17548, 17685), (17686, 17829), (17830, 17973), (17974, 18117), (18118, 18243), (18244, 18379), (18380, 18525), (18526, 18669), (18670, 18807), (18808, 18949), (18950, 19093), (19094, 19233), (19234, 19377), (19378, 19519), (19520, 19653), (19654, 19755), (19756, 19899), (19900, 20037), (20038, 20175), (20176, 20319), (20320, 20443), (20444, 20589), (20590, 20709), (20710, 20853), (20854, 20995), (20996, 21129), (21130, 21267), (21268, 21393), (21394, 21461), (21875, 22017), (22018, 22021), (22090, 22116), (22188, 22236), (22326, 22334), (22445, 22587), (22588, 22618), (23763, 23907), (23908, 23908), (24167, 24183), (24299, 24313), (24334, 24475), (24476, 24513), (24576, 24711), (25000, 25110), (25281, 25351), (26364, 26390), (26508, 26510), (26624, 26743), (26744, 26770), (27556, 27582), (28125, 28269), (28270, 28271), (28672, 28707), (28717, 28818), (29791, 29914), (30899, 30904), (30926, 31045), (31250, 31395), (31396, 31396), (31423, 31475), (31827, 31830), (34322, 34465), (34466, 34537), (36517, 36643), (36644, 36647), (37303, 37356), (37446, 37449), (37500, 37639), (37640, 37684), (38307, 38437), (39326, 39469), (39470, 39472), (40401, 40474), (40931, 40950), (40960, 41077), (47526, 47667), (47668, 47670), (48013, 48107), (48778, 48814), (49152, 49276), (51076, 51151), (56307, 56315), (57245, 57268), (57344, 57391), (62500, 62556), (68644, 68785), (68786, 68790), (68921, 69036), (71289, 71433), (71434, 71435), (73205, 73313), (85805, 85829), (89383, 89519), (93845, 93896), (148955, 149023)]

theorem row147_bounds_eq : row147.goods.map goodSegmentBounds = row147_bounds := by
  rfl

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row147_bounds_eq

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row147_layer000_intervals : List ColouredInterval :=
  [(2, 22528, 22674), (2, 24576, 24722), (2, 26624, 26770), (2, 28672, 28818), (2, 24576, 24722), (2, 28672, 28818), (2, 32768, 32914), (2, 36864, 37010), (2, 40960, 41106), (2, 24576, 24722), (2, 32768, 32914), (2, 40960, 41106), (2, 32768, 32914), (2, 32768, 32914), (3, 26244, 26390), (3, 39366, 39512), (5, 21875, 22021), (5, 25000, 25146), (5, 28125, 28271), (5, 31250, 31396), (5, 34375, 34521), (5, 37500, 37646), (5, 40625, 40771), (5, 31250, 31396), (11, 29282, 29428), (13, 21970, 22116), (13, 24167, 24313), (13, 26364, 26510), (13, 28561, 28707), (13, 30758, 30904), (13, 28561, 28707), (17, 24565, 24711), (17, 29478, 29624), (17, 34391, 34537), (17, 39304, 39450), (19, 27436, 27582), (19, 34295, 34441), (19, 41154, 41300), (23, 24334, 24480), (23, 36501, 36647), (29, 24389, 24535), (31, 29791, 29937), (41, 21853, 21999), (41, 23534, 23680), (43, 22188, 22334), (43, 24037, 24183), (43, 25886, 26032), (47, 22090, 22236), (47, 24299, 24445), (47, 26508, 26654), (47, 28717, 28863), (47, 30926, 31072), (53, 22472, 22618), (53, 25281, 25427), (53, 28090, 28236), (53, 30899, 31045), (53, 33708, 33854), (53, 36517, 36663), (53, 39326, 39472), (59, 24367, 24513), (59, 27848, 27994), (59, 31329, 31475), (59, 34810, 34956), (59, 38291, 38437), (59, 41772, 41918), (61, 22326, 22472), (61, 26047, 26193), (61, 29768, 29914), (61, 33489, 33635), (61, 37210, 37356), (61, 40931, 41077), (67, 22445, 22591), (67, 26934, 27080), (67, 31423, 31569), (67, 35912, 36058), (67, 40401, 40547), (71, 25205, 25351), (71, 30246, 30392), (71, 35287, 35433), (71, 40328, 40474), (73, 21462, 21462), (73, 26645, 26791), (73, 31974, 32120), (73, 37303, 37449), (73, 42632, 42778), (79, 24964, 25110), (79, 31205, 31351), (79, 37446, 37592), (83, 27556, 27702), (83, 34445, 34591), (83, 41334, 41480), (89, 23763, 23909), (89, 31684, 31830), (89, 39605, 39751), (97, 28227, 28373), (97, 37636, 37782), (101, 30603, 30749), (101, 40804, 40950), (103, 31827, 31973), (103, 42436, 42582), (107, 22898, 23044), (107, 34347, 34493), (109, 23762, 23908), (109, 35643, 35789), (113, 25538, 25684), (113, 38307, 38453), (127, 32258, 32404), (131, 34322, 34468), (137, 37538, 37684), (139, 38642, 38788)]

def row147_layer000_block000 : List ColouredInterval :=
  [(2, 22528, 22674), (2, 24576, 24722), (2, 26624, 26770), (2, 28672, 28818), (2, 24576, 24722), (2, 28672, 28818), (2, 32768, 32914), (2, 36864, 37010), (2, 40960, 41106), (2, 24576, 24722), (2, 32768, 32914), (2, 40960, 41106), (2, 32768, 32914), (2, 32768, 32914), (3, 26244, 26390), (3, 39366, 39512)]

def row147_layer000_block001 : List ColouredInterval :=
  [(5, 21875, 22021), (5, 25000, 25146), (5, 28125, 28271), (5, 31250, 31396), (5, 34375, 34521), (5, 37500, 37646), (5, 40625, 40771), (5, 31250, 31396), (11, 29282, 29428), (13, 21970, 22116), (13, 24167, 24313), (13, 26364, 26510), (13, 28561, 28707), (13, 30758, 30904), (13, 28561, 28707), (17, 24565, 24711)]

def row147_layer000_block002 : List ColouredInterval :=
  [(17, 29478, 29624), (17, 34391, 34537), (17, 39304, 39450), (19, 27436, 27582), (19, 34295, 34441), (19, 41154, 41300), (23, 24334, 24480), (23, 36501, 36647), (29, 24389, 24535), (31, 29791, 29937), (41, 21853, 21999), (41, 23534, 23680), (43, 22188, 22334), (43, 24037, 24183), (43, 25886, 26032), (47, 22090, 22236)]

def row147_layer000_block003 : List ColouredInterval :=
  [(47, 24299, 24445), (47, 26508, 26654), (47, 28717, 28863), (47, 30926, 31072), (53, 22472, 22618), (53, 25281, 25427), (53, 28090, 28236), (53, 30899, 31045), (53, 33708, 33854), (53, 36517, 36663), (53, 39326, 39472), (59, 24367, 24513), (59, 27848, 27994), (59, 31329, 31475), (59, 34810, 34956), (59, 38291, 38437)]

def row147_layer000_block004 : List ColouredInterval :=
  [(59, 41772, 41918), (61, 22326, 22472), (61, 26047, 26193), (61, 29768, 29914), (61, 33489, 33635), (61, 37210, 37356), (61, 40931, 41077), (67, 22445, 22591), (67, 26934, 27080), (67, 31423, 31569), (67, 35912, 36058), (67, 40401, 40547), (71, 25205, 25351), (71, 30246, 30392), (71, 35287, 35433), (71, 40328, 40474)]

def row147_layer000_block005 : List ColouredInterval :=
  [(73, 21462, 21462), (73, 26645, 26791), (73, 31974, 32120), (73, 37303, 37449), (73, 42632, 42778), (79, 24964, 25110), (79, 31205, 31351), (79, 37446, 37592), (83, 27556, 27702), (83, 34445, 34591), (83, 41334, 41480), (89, 23763, 23909), (89, 31684, 31830), (89, 39605, 39751), (97, 28227, 28373), (97, 37636, 37782)]

def row147_layer000_block006 : List ColouredInterval :=
  [(101, 30603, 30749), (101, 40804, 40950), (103, 31827, 31973), (103, 42436, 42582), (107, 22898, 23044), (107, 34347, 34493), (109, 23762, 23908), (109, 35643, 35789), (113, 25538, 25684), (113, 38307, 38453), (127, 32258, 32404), (131, 34322, 34468), (137, 37538, 37684), (139, 38642, 38788)]

def row147_layer000_chunks : List (List ColouredInterval) :=
  [row147_layer000_block000, row147_layer000_block001, row147_layer000_block002, row147_layer000_block003, row147_layer000_block004, row147_layer000_block005, row147_layer000_block006]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row147_layer000_intervals

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row147_layer000_arithmetic : LayerArithmeticValid row147.height { lower := 21462, upper := 42924, M := 14 } := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row147_layer000_arithmetic

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row147_layer000_enumeration :
    activePowerIntervalList 147 14 21462 42924 = row147_layer000_intervals := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row147_layer000_enumeration

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row147_layer000_pairs000 :
    row147_layer000_block000.all (fun I => row147_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row147_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row147_layer000_pairs000

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row147_layer000_pairs001 :
    row147_layer000_block001.all (fun I => row147_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row147_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row147_layer000_pairs001

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row147_layer000_pairs002 :
    row147_layer000_block002.all (fun I => row147_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row147_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row147_layer000_pairs002

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row147_layer000_pairs003 :
    row147_layer000_block003.all (fun I => row147_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row147_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row147_layer000_pairs003

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row147_layer000_pairs004 :
    row147_layer000_block004.all (fun I => row147_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row147_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row147_layer000_pairs004

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row147_layer000_pairs005 :
    row147_layer000_block005.all (fun I => row147_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row147_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row147_layer000_pairs005

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row147_layer000_pairs006 :
    row147_layer000_block006.all (fun I => row147_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row147_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row147_layer000_pairs006

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row147_layer000_chunks_eq : row147_layer000_chunks.flatten = row147_layer000_intervals := by
  rfl

theorem row147_layer000_pairs : pairCoverCheck row147_layer000_intervals row147_bounds = true := by
  apply pairCoverCheck_of_chunks row147_layer000_chunks_eq
  intro block hblock
  simp only [row147_layer000_chunks, List.mem_cons, List.mem_nil_iff, or_false] at hblock
  rcases hblock with rfl | rfl | rfl | rfl | rfl | rfl | rfl
  · exact row147_layer000_pairs000
  · exact row147_layer000_pairs001
  · exact row147_layer000_pairs002
  · exact row147_layer000_pairs003
  · exact row147_layer000_pairs004
  · exact row147_layer000_pairs005
  · exact row147_layer000_pairs006

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row147_layer000_chunks_eq
#print axioms B699LowIndex.LowIndexLean513dc7cc.row147_layer000_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row147_layer000_checked :
    coverLayerCheck row147.height row147.goods { lower := 21462, upper := 42924, M := 14 } = true := by
  exact coverLayerCheck_of_parts row147_layer000_arithmetic row147_layer000_enumeration row147_bounds_eq row147_layer000_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row147_layer000_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row147_layer001_intervals : List ColouredInterval :=
  [(2, 49152, 49298), (2, 57344, 57490), (2, 65536, 65682), (2, 73728, 73874), (2, 81920, 82066), (2, 49152, 49298), (2, 65536, 65682), (2, 81920, 82066), (2, 65536, 65682), (2, 65536, 65682), (3, 59049, 59195), (3, 59049, 59195), (5, 46875, 47021), (5, 62500, 62646), (5, 78125, 78271), (5, 78125, 78271), (11, 43923, 44069), (11, 58564, 58710), (11, 73205, 73351), (13, 57122, 57268), (13, 85683, 85829), (17, 44217, 44363), (17, 49130, 49276), (17, 83521, 83667), (19, 48013, 48159), (19, 54872, 55018), (19, 61731, 61877), (19, 68590, 68736), (23, 48668, 48814), (23, 60835, 60981), (23, 73002, 73148), (23, 85169, 85315), (29, 48778, 48924), (29, 73167, 73313), (31, 59582, 59728), (37, 50653, 50799), (41, 68921, 69067), (43, 79507, 79653), (67, 44890, 45036), (71, 45369, 45515), (71, 50410, 50556), (73, 47961, 48107), (73, 53290, 53436), (79, 43687, 43833), (79, 49928, 50074), (79, 56169, 56315), (79, 62410, 62556), (83, 48223, 48369), (83, 55112, 55258), (83, 62001, 62147), (83, 68890, 69036), (89, 47526, 47672), (89, 55447, 55593), (89, 63368, 63514), (89, 71289, 71435), (89, 79210, 79356), (97, 47045, 47191), (97, 56454, 56600), (97, 65863, 66009), (97, 75272, 75418), (97, 84681, 84827), (101, 51005, 51151), (101, 61206, 61352), (101, 71407, 71553), (101, 81608, 81754), (103, 53045, 53191), (103, 63654, 63800), (103, 74263, 74409), (103, 84872, 85018), (107, 45796, 45942), (107, 57245, 57391), (107, 68694, 68840), (107, 80143, 80289), (109, 47524, 47670), (109, 59405, 59551), (109, 71286, 71432), (109, 83167, 83313), (113, 51076, 51222), (113, 63845, 63991), (113, 76614, 76760), (127, 48387, 48533), (127, 64516, 64662), (127, 80645, 80791), (131, 51483, 51629), (131, 68644, 68790), (131, 85805, 85847), (137, 56307, 56453), (137, 75076, 75222), (139, 57963, 58109), (139, 77284, 77430)]

def row147_layer001_block000 : List ColouredInterval :=
  [(2, 49152, 49298), (2, 57344, 57490), (2, 65536, 65682), (2, 73728, 73874), (2, 81920, 82066), (2, 49152, 49298), (2, 65536, 65682), (2, 81920, 82066), (2, 65536, 65682), (2, 65536, 65682), (3, 59049, 59195), (3, 59049, 59195), (5, 46875, 47021), (5, 62500, 62646), (5, 78125, 78271), (5, 78125, 78271)]

def row147_layer001_block001 : List ColouredInterval :=
  [(11, 43923, 44069), (11, 58564, 58710), (11, 73205, 73351), (13, 57122, 57268), (13, 85683, 85829), (17, 44217, 44363), (17, 49130, 49276), (17, 83521, 83667), (19, 48013, 48159), (19, 54872, 55018), (19, 61731, 61877), (19, 68590, 68736), (23, 48668, 48814), (23, 60835, 60981), (23, 73002, 73148), (23, 85169, 85315)]

def row147_layer001_block002 : List ColouredInterval :=
  [(29, 48778, 48924), (29, 73167, 73313), (31, 59582, 59728), (37, 50653, 50799), (41, 68921, 69067), (43, 79507, 79653), (67, 44890, 45036), (71, 45369, 45515), (71, 50410, 50556), (73, 47961, 48107), (73, 53290, 53436), (79, 43687, 43833), (79, 49928, 50074), (79, 56169, 56315), (79, 62410, 62556), (83, 48223, 48369)]

def row147_layer001_block003 : List ColouredInterval :=
  [(83, 55112, 55258), (83, 62001, 62147), (83, 68890, 69036), (89, 47526, 47672), (89, 55447, 55593), (89, 63368, 63514), (89, 71289, 71435), (89, 79210, 79356), (97, 47045, 47191), (97, 56454, 56600), (97, 65863, 66009), (97, 75272, 75418), (97, 84681, 84827), (101, 51005, 51151), (101, 61206, 61352), (101, 71407, 71553)]

def row147_layer001_block004 : List ColouredInterval :=
  [(101, 81608, 81754), (103, 53045, 53191), (103, 63654, 63800), (103, 74263, 74409), (103, 84872, 85018), (107, 45796, 45942), (107, 57245, 57391), (107, 68694, 68840), (107, 80143, 80289), (109, 47524, 47670), (109, 59405, 59551), (109, 71286, 71432), (109, 83167, 83313), (113, 51076, 51222), (113, 63845, 63991), (113, 76614, 76760)]

def row147_layer001_block005 : List ColouredInterval :=
  [(127, 48387, 48533), (127, 64516, 64662), (127, 80645, 80791), (131, 51483, 51629), (131, 68644, 68790), (131, 85805, 85847), (137, 56307, 56453), (137, 75076, 75222), (139, 57963, 58109), (139, 77284, 77430)]

def row147_layer001_chunks : List (List ColouredInterval) :=
  [row147_layer001_block000, row147_layer001_block001, row147_layer001_block002, row147_layer001_block003, row147_layer001_block004, row147_layer001_block005]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row147_layer001_intervals

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row147_layer001_arithmetic : LayerArithmeticValid row147.height { lower := 42924, upper := 85848, M := 10 } := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row147_layer001_arithmetic

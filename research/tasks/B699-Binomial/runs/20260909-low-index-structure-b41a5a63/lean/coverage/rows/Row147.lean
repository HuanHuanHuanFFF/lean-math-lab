import research.tasks.«B699-Binomial».runs.«20260909-low-index-structure-b41a5a63».lean.FiniteCover

set_option maxRecDepth 65536
set_option maxHeartbeats 0
set_option exponentiation.threshold 1000000

namespace B699LowIndex

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

theorem row147_registered :
    decide (row147.height ∈ heightCertificateData) = true := by
  decide +kernel

theorem row147_goods_checked :
    row147.goods.all (goodSegmentCheck row147.height.i row147.height.r row147.height.s) = true := by
  decide +kernel

theorem row147_small_checked :
    coverCheck (2 * row147.height.i + 2) (row147.height.i * (row147.height.i - 1) - 1)
      (row147.goods.map goodSegmentBounds) = true := by
  decide +kernel

theorem row147_layerCover_checked :
    coverCheck (row147.height.i * (row147.height.i - 1)) (row147.height.n0 - 1)
      (row147.layers.map CoverLayer.bounds) = true := by
  decide +kernel

theorem row147_layer000_checked :
    coverLayerCheck row147.height row147.goods { lower := 21462, upper := 42924, M := 14 } = true := by
  decide +kernel

theorem row147_layer001_checked :
    coverLayerCheck row147.height row147.goods { lower := 42924, upper := 85848, M := 10 } = true := by
  decide +kernel

theorem row147_layer002_checked :
    coverLayerCheck row147.height row147.goods { lower := 85848, upper := 171696, M := 8 } = true := by
  decide +kernel

theorem row147_layer003_checked :
    coverLayerCheck row147.height row147.goods { lower := 171696, upper := 343392, M := 6 } = true := by
  decide +kernel

theorem row147_layer004_checked :
    coverLayerCheck row147.height row147.goods { lower := 343392, upper := 686784, M := 4 } = true := by
  decide +kernel

theorem row147_layer005_checked :
    coverLayerCheck row147.height row147.goods { lower := 686784, upper := 1373568, M := 3 } = true := by
  decide +kernel

theorem row147_layer006_checked :
    coverLayerCheck row147.height row147.goods { lower := 1373568, upper := 2747136, M := 3 } = true := by
  decide +kernel

theorem row147_layer007_checked :
    coverLayerCheck row147.height row147.goods { lower := 2747136, upper := 5494272, M := 2 } = true := by
  decide +kernel

theorem row147_layer008_checked :
    coverLayerCheck row147.height row147.goods { lower := 5494272, upper := 10000000, M := 2 } = true := by
  decide +kernel

theorem row147_layers_checked :
    row147.layers.all (coverLayerCheck row147.height row147.goods) = true := by
  change List.all [
    { lower := 21462, upper := 42924, M := 14 },
    { lower := 42924, upper := 85848, M := 10 },
    { lower := 85848, upper := 171696, M := 8 },
    { lower := 171696, upper := 343392, M := 6 },
    { lower := 343392, upper := 686784, M := 4 },
    { lower := 686784, upper := 1373568, M := 3 },
    { lower := 1373568, upper := 2747136, M := 3 },
    { lower := 2747136, upper := 5494272, M := 2 },
    { lower := 5494272, upper := 10000000, M := 2 }
  ] (coverLayerCheck row147.height row147.goods) = true
  simp only [List.all_cons, List.all_nil,
    row147_layer000_checked,
    row147_layer001_checked,
    row147_layer002_checked,
    row147_layer003_checked,
    row147_layer004_checked,
    row147_layer005_checked,
    row147_layer006_checked,
    row147_layer007_checked,
    row147_layer008_checked,
    Bool.true_and]

theorem row147_checked : finiteCoverRowCheck row147 = true := by
  simp only [finiteCoverRowCheck, row147_registered, row147_goods_checked,
    row147_small_checked, row147_layerCover_checked, row147_layers_checked,
    Bool.true_and]

#print axioms B699LowIndex.row147_checked

end B699LowIndex

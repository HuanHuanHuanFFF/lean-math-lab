import research.tasks.«B699-Binomial».runs.«20260909-low-index-structure-b41a5a63».lean.FiniteCover

set_option maxRecDepth 65536
set_option maxHeartbeats 0
set_option exponentiation.threshold 1000000

namespace B699LowIndex

def row146_height : HeightCertificateDatum := { i := 146, r := 48, s := 103, n0Power10 := 7 }

def row146_goods : List GoodSegment := [
  { lower := 294, upper := 438, witness := RowWitness.topPrime 293 },
  { lower := 439, upper := 584, witness := RowWitness.topPrime 439 },
  { lower := 585, upper := 722, witness := RowWitness.topPrime 577 },
  { lower := 723, upper := 864, witness := RowWitness.topPrime 719 },
  { lower := 865, upper := 1008, witness := RowWitness.topPrime 863 },
  { lower := 1009, upper := 1154, witness := RowWitness.topPrime 1009 },
  { lower := 1155, upper := 1298, witness := RowWitness.topPrime 1153 },
  { lower := 1299, upper := 1442, witness := RowWitness.topPrime 1297 },
  { lower := 1443, upper := 1584, witness := RowWitness.topPrime 1439 },
  { lower := 1585, upper := 1728, witness := RowWitness.topPrime 1583 },
  { lower := 1729, upper := 1868, witness := RowWitness.topPrime 1723 },
  { lower := 1869, upper := 2012, witness := RowWitness.topPrime 1867 },
  { lower := 2013, upper := 2156, witness := RowWitness.topPrime 2011 },
  { lower := 2157, upper := 2298, witness := RowWitness.topPrime 2153 },
  { lower := 2299, upper := 2442, witness := RowWitness.topPrime 2297 },
  { lower := 2443, upper := 2586, witness := RowWitness.topPrime 2441 },
  { lower := 2587, upper := 2724, witness := RowWitness.topPrime 2579 },
  { lower := 2725, upper := 2864, witness := RowWitness.topPrime 2719 },
  { lower := 2865, upper := 3006, witness := RowWitness.topPrime 2861 },
  { lower := 3007, upper := 3146, witness := RowWitness.topPrime 3001 },
  { lower := 3147, upper := 3282, witness := RowWitness.topPrime 3137 },
  { lower := 3283, upper := 3416, witness := RowWitness.topPrime 3271 },
  { lower := 3417, upper := 3558, witness := RowWitness.topPrime 3413 },
  { lower := 3559, upper := 3704, witness := RowWitness.topPrime 3559 },
  { lower := 3705, upper := 3846, witness := RowWitness.topPrime 3701 },
  { lower := 3847, upper := 3992, witness := RowWitness.topPrime 3847 },
  { lower := 3993, upper := 4134, witness := RowWitness.topPrime 3989 },
  { lower := 4135, upper := 4278, witness := RowWitness.topPrime 4133 },
  { lower := 4279, upper := 4418, witness := RowWitness.topPrime 4273 },
  { lower := 4419, upper := 4554, witness := RowWitness.topPrime 4409 },
  { lower := 4555, upper := 4694, witness := RowWitness.topPrime 4549 },
  { lower := 4695, upper := 4836, witness := RowWitness.topPrime 4691 },
  { lower := 4837, upper := 4976, witness := RowWitness.topPrime 4831 },
  { lower := 4977, upper := 5118, witness := RowWitness.topPrime 4973 },
  { lower := 5119, upper := 5264, witness := RowWitness.topPrime 5119 },
  { lower := 5265, upper := 5406, witness := RowWitness.topPrime 5261 },
  { lower := 5407, upper := 5552, witness := RowWitness.topPrime 5407 },
  { lower := 5553, upper := 5676, witness := RowWitness.topPrime 5531 },
  { lower := 5677, upper := 5814, witness := RowWitness.topPrime 5669 },
  { lower := 5815, upper := 5958, witness := RowWitness.topPrime 5813 },
  { lower := 5959, upper := 6098, witness := RowWitness.topPrime 5953 },
  { lower := 6099, upper := 6236, witness := RowWitness.topPrime 6091 },
  { lower := 6237, upper := 6374, witness := RowWitness.topPrime 6229 },
  { lower := 6375, upper := 6518, witness := RowWitness.topPrime 6373 },
  { lower := 6519, upper := 6636, witness := RowWitness.topPrime 6491 },
  { lower := 6637, upper := 6782, witness := RowWitness.topPrime 6637 },
  { lower := 6783, upper := 6926, witness := RowWitness.topPrime 6781 },
  { lower := 6927, upper := 7062, witness := RowWitness.topPrime 6917 },
  { lower := 7063, upper := 7202, witness := RowWitness.topPrime 7057 },
  { lower := 7203, upper := 7338, witness := RowWitness.topPrime 7193 },
  { lower := 7339, upper := 7478, witness := RowWitness.topPrime 7333 },
  { lower := 7479, upper := 7622, witness := RowWitness.topPrime 7477 },
  { lower := 7623, upper := 7766, witness := RowWitness.topPrime 7621 },
  { lower := 7767, upper := 7904, witness := RowWitness.topPrime 7759 },
  { lower := 7905, upper := 8046, witness := RowWitness.topPrime 7901 },
  { lower := 8047, upper := 8184, witness := RowWitness.topPrime 8039 },
  { lower := 8185, upper := 8324, witness := RowWitness.topPrime 8179 },
  { lower := 8325, upper := 8462, witness := RowWitness.topPrime 8317 },
  { lower := 8463, upper := 8606, witness := RowWitness.topPrime 8461 },
  { lower := 8607, upper := 8744, witness := RowWitness.topPrime 8599 },
  { lower := 8745, upper := 8886, witness := RowWitness.topPrime 8741 },
  { lower := 8887, upper := 9032, witness := RowWitness.topPrime 8887 },
  { lower := 9033, upper := 9174, witness := RowWitness.topPrime 9029 },
  { lower := 9175, upper := 9318, witness := RowWitness.topPrime 9173 },
  { lower := 9319, upper := 9464, witness := RowWitness.topPrime 9319 },
  { lower := 9465, upper := 9608, witness := RowWitness.topPrime 9463 },
  { lower := 9609, upper := 9746, witness := RowWitness.topPrime 9601 },
  { lower := 9747, upper := 9888, witness := RowWitness.topPrime 9743 },
  { lower := 9889, upper := 10032, witness := RowWitness.topPrime 9887 },
  { lower := 10033, upper := 10154, witness := RowWitness.topPrime 10009 },
  { lower := 10155, upper := 10296, witness := RowWitness.topPrime 10151 },
  { lower := 10297, upper := 10434, witness := RowWitness.topPrime 10289 },
  { lower := 10435, upper := 10578, witness := RowWitness.topPrime 10433 },
  { lower := 10579, upper := 10712, witness := RowWitness.topPrime 10567 },
  { lower := 10713, upper := 10856, witness := RowWitness.topPrime 10711 },
  { lower := 10857, upper := 10998, witness := RowWitness.topPrime 10853 },
  { lower := 10999, upper := 11138, witness := RowWitness.topPrime 10993 },
  { lower := 11139, upper := 11276, witness := RowWitness.topPrime 11131 },
  { lower := 11277, upper := 11418, witness := RowWitness.topPrime 11273 },
  { lower := 11419, upper := 11556, witness := RowWitness.topPrime 11411 },
  { lower := 11557, upper := 11696, witness := RowWitness.topPrime 11551 },
  { lower := 11697, upper := 11834, witness := RowWitness.topPrime 11689 },
  { lower := 11835, upper := 11978, witness := RowWitness.topPrime 11833 },
  { lower := 11979, upper := 12116, witness := RowWitness.topPrime 11971 },
  { lower := 12117, upper := 12258, witness := RowWitness.topPrime 12113 },
  { lower := 12259, upper := 12398, witness := RowWitness.topPrime 12253 },
  { lower := 12399, upper := 12536, witness := RowWitness.topPrime 12391 },
  { lower := 12537, upper := 12672, witness := RowWitness.topPrime 12527 },
  { lower := 12673, upper := 12816, witness := RowWitness.topPrime 12671 },
  { lower := 12817, upper := 12954, witness := RowWitness.topPrime 12809 },
  { lower := 12955, upper := 13098, witness := RowWitness.topPrime 12953 },
  { lower := 13099, upper := 13244, witness := RowWitness.topPrime 13099 },
  { lower := 13245, upper := 13386, witness := RowWitness.topPrime 13241 },
  { lower := 13387, upper := 13526, witness := RowWitness.topPrime 13381 },
  { lower := 13527, upper := 13668, witness := RowWitness.topPrime 13523 },
  { lower := 13669, upper := 13814, witness := RowWitness.topPrime 13669 },
  { lower := 13815, upper := 13952, witness := RowWitness.topPrime 13807 },
  { lower := 13953, upper := 14078, witness := RowWitness.topPrime 13933 },
  { lower := 14079, upper := 14216, witness := RowWitness.topPrime 14071 },
  { lower := 14217, upper := 14352, witness := RowWitness.topPrime 14207 },
  { lower := 14353, upper := 14492, witness := RowWitness.topPrime 14347 },
  { lower := 14493, upper := 14634, witness := RowWitness.topPrime 14489 },
  { lower := 14635, upper := 14778, witness := RowWitness.topPrime 14633 },
  { lower := 14779, upper := 14924, witness := RowWitness.topPrime 14779 },
  { lower := 14925, upper := 15068, witness := RowWitness.topPrime 14923 },
  { lower := 15069, upper := 15206, witness := RowWitness.topPrime 15061 },
  { lower := 15207, upper := 15344, witness := RowWitness.topPrime 15199 },
  { lower := 15345, upper := 15476, witness := RowWitness.topPrime 15331 },
  { lower := 15477, upper := 15618, witness := RowWitness.topPrime 15473 },
  { lower := 15619, upper := 15764, witness := RowWitness.topPrime 15619 },
  { lower := 15765, upper := 15906, witness := RowWitness.topPrime 15761 },
  { lower := 15907, upper := 16052, witness := RowWitness.topPrime 15907 },
  { lower := 16053, upper := 16178, witness := RowWitness.topPrime 16033 },
  { lower := 16179, upper := 16286, witness := RowWitness.topPrime 16141 },
  { lower := 16287, upper := 16418, witness := RowWitness.topPrime 16273 },
  { lower := 16419, upper := 16562, witness := RowWitness.topPrime 16417 },
  { lower := 16563, upper := 16706, witness := RowWitness.topPrime 16561 },
  { lower := 16707, upper := 16848, witness := RowWitness.topPrime 16703 },
  { lower := 16849, upper := 16988, witness := RowWitness.topPrime 16843 },
  { lower := 16989, upper := 17132, witness := RowWitness.topPrime 16987 },
  { lower := 17133, upper := 17268, witness := RowWitness.topPrime 17123 },
  { lower := 17269, upper := 17402, witness := RowWitness.topPrime 17257 },
  { lower := 17403, upper := 17546, witness := RowWitness.topPrime 17401 },
  { lower := 17547, upper := 17684, witness := RowWitness.topPrime 17539 },
  { lower := 17685, upper := 17828, witness := RowWitness.topPrime 17683 },
  { lower := 17829, upper := 17972, witness := RowWitness.topPrime 17827 },
  { lower := 17973, upper := 18116, witness := RowWitness.topPrime 17971 },
  { lower := 18117, upper := 18242, witness := RowWitness.topPrime 18097 },
  { lower := 18243, upper := 18378, witness := RowWitness.topPrime 18233 },
  { lower := 18379, upper := 18524, witness := RowWitness.topPrime 18379 },
  { lower := 18525, upper := 18668, witness := RowWitness.topPrime 18523 },
  { lower := 18669, upper := 18806, witness := RowWitness.topPrime 18661 },
  { lower := 18807, upper := 18948, witness := RowWitness.topPrime 18803 },
  { lower := 18949, upper := 19092, witness := RowWitness.topPrime 18947 },
  { lower := 19093, upper := 19232, witness := RowWitness.topPrime 19087 },
  { lower := 19233, upper := 19376, witness := RowWitness.topPrime 19231 },
  { lower := 19377, upper := 19518, witness := RowWitness.topPrime 19373 },
  { lower := 19519, upper := 19652, witness := RowWitness.topPrime 19507 },
  { lower := 19653, upper := 19754, witness := RowWitness.topPrime 19609 },
  { lower := 19755, upper := 19898, witness := RowWitness.topPrime 19753 },
  { lower := 19899, upper := 20036, witness := RowWitness.topPrime 19891 },
  { lower := 20037, upper := 20174, witness := RowWitness.topPrime 20029 },
  { lower := 20175, upper := 20318, witness := RowWitness.topPrime 20173 },
  { lower := 20319, upper := 20442, witness := RowWitness.topPrime 20297 },
  { lower := 20443, upper := 20588, witness := RowWitness.topPrime 20443 },
  { lower := 20589, upper := 20708, witness := RowWitness.topPrime 20563 },
  { lower := 20709, upper := 20852, witness := RowWitness.topPrime 20707 },
  { lower := 20853, upper := 20994, witness := RowWitness.topPrime 20849 },
  { lower := 20995, upper := 21128, witness := RowWitness.topPrime 20983 },
  { lower := 21129, upper := 21169, witness := RowWitness.topPrime 21121 },
  { lower := 21870, upper := 22008, witness := RowWitness.topPrime 21863 },
  { lower := 22009, upper := 22020, witness := RowWitness.topPrime 22003 },
  { lower := 22090, upper := 22115, witness := RowWitness.topPrime 22079 },
  { lower := 22188, upper := 22235, witness := RowWitness.topPrime 22171 },
  { lower := 22326, upper := 22333, witness := RowWitness.topPrime 22307 },
  { lower := 22445, upper := 22586, witness := RowWitness.topPrime 22441 },
  { lower := 22587, upper := 22590, witness := RowWitness.topPrime 22573 },
  { lower := 23763, upper := 23906, witness := RowWitness.topPrime 23761 },
  { lower := 23907, upper := 23907, witness := RowWitness.topPrime 23899 },
  { lower := 24037, upper := 24174, witness := RowWitness.topPrime 24029 },
  { lower := 24175, upper := 24202, witness := RowWitness.topPrime 24169 },
  { lower := 24299, upper := 24312, witness := RowWitness.topPrime 24281 },
  { lower := 24334, upper := 24474, witness := RowWitness.topPrime 24329 },
  { lower := 24475, upper := 24512, witness := RowWitness.topPrime 24473 },
  { lower := 24576, upper := 24710, witness := RowWitness.topPrime 24571 },
  { lower := 25000, upper := 25109, witness := RowWitness.topPrime 24989 },
  { lower := 25215, upper := 25334, witness := RowWitness.topPrime 25189 },
  { lower := 25335, upper := 25360, witness := RowWitness.topPrime 25321 },
  { lower := 26364, upper := 26389, witness := RowWitness.topPrime 26357 },
  { lower := 26411, upper := 26552, witness := RowWitness.topPrime 26407 },
  { lower := 26553, upper := 26556, witness := RowWitness.topPrime 26539 },
  { lower := 27556, upper := 27581, witness := RowWitness.topPrime 27551 },
  { lower := 27848, upper := 27880, witness := RowWitness.topPrime 27847 },
  { lower := 28125, upper := 28268, witness := RowWitness.topPrime 28123 },
  { lower := 28269, upper := 28270, witness := RowWitness.topPrime 28229 },
  { lower := 28561, upper := 28576, witness := RowWitness.topPrime 28559 },
  { lower := 28672, upper := 28706, witness := RowWitness.topPrime 28669 },
  { lower := 28717, upper := 28856, witness := RowWitness.topPrime 28711 },
  { lower := 28857, upper := 28862, witness := RowWitness.topPrime 28843 },
  { lower := 29791, upper := 29913, witness := RowWitness.topPrime 29789 },
  { lower := 30618, upper := 30738, witness := RowWitness.topPrime 30593 },
  { lower := 30739, upper := 30748, witness := RowWitness.topPrime 30727 },
  { lower := 30758, upper := 30763, witness := RowWitness.topPrime 30757 },
  { lower := 30899, upper := 30903, witness := RowWitness.topPrime 30893 },
  { lower := 30926, upper := 31044, witness := RowWitness.topPrime 30911 },
  { lower := 31213, upper := 31338, witness := RowWitness.topPrime 31193 },
  { lower := 31339, upper := 31395, witness := RowWitness.topPrime 31337 },
  { lower := 31423, upper := 31474, witness := RowWitness.topPrime 31397 },
  { lower := 31827, upper := 31829, witness := RowWitness.topPrime 31817 },
  { lower := 32805, upper := 32913, witness := RowWitness.topPrime 32803 },
  { lower := 33614, upper := 33634, witness := RowWitness.topPrime 33613 },
  { lower := 33708, upper := 33759, witness := RowWitness.topPrime 33703 },
  { lower := 34322, upper := 34464, witness := RowWitness.topPrime 34319 },
  { lower := 34465, upper := 34536, witness := RowWitness.topPrime 34457 },
  { lower := 36015, upper := 36057, witness := RowWitness.topPrime 36013 },
  { lower := 36517, upper := 36642, witness := RowWitness.topPrime 36497 },
  { lower := 36643, upper := 36646, witness := RowWitness.topPrime 36643 },
  { lower := 37500, upper := 37638, witness := RowWitness.topPrime 37493 },
  { lower := 37639, upper := 37683, witness := RowWitness.topPrime 37633 },
  { lower := 38307, upper := 38436, witness := RowWitness.topPrime 38303 },
  { lower := 39326, upper := 39468, witness := RowWitness.topPrime 39323 },
  { lower := 39469, upper := 39471, witness := RowWitness.topPrime 39461 },
  { lower := 40401, upper := 40473, witness := RowWitness.topPrime 40387 },
  { lower := 40931, upper := 40949, witness := RowWitness.topPrime 40927 },
  { lower := 40960, upper := 41076, witness := RowWitness.topPrime 40949 },
  { lower := 45927, upper := 45941, witness := RowWitness.topPrime 45893 },
  { lower := 47526, upper := 47666, witness := RowWitness.topPrime 47521 },
  { lower := 47667, upper := 47669, witness := RowWitness.topPrime 47659 },
  { lower := 48778, upper := 48813, witness := RowWitness.topPrime 48767 },
  { lower := 49152, upper := 49275, witness := RowWitness.topPrime 49139 },
  { lower := 50421, upper := 50555, witness := RowWitness.topPrime 50417 },
  { lower := 51076, upper := 51150, witness := RowWitness.topPrime 51071 },
  { lower := 55451, upper := 55586, witness := RowWitness.topPrime 55441 },
  { lower := 55587, upper := 55592, witness := RowWitness.topPrime 55579 },
  { lower := 56307, upper := 56314, witness := RowWitness.topPrime 56299 },
  { lower := 57245, upper := 57267, witness := RowWitness.topPrime 57241 },
  { lower := 62500, upper := 62555, witness := RowWitness.topPrime 62497 },
  { lower := 65610, upper := 65681, witness := RowWitness.topPrime 65609 },
  { lower := 68644, upper := 68784, witness := RowWitness.topPrime 68639 },
  { lower := 68785, upper := 68796, witness := RowWitness.topPrime 68777 },
  { lower := 68921, upper := 69035, witness := RowWitness.topPrime 68917 },
  { lower := 71289, upper := 71432, witness := RowWitness.topPrime 71287 },
  { lower := 71433, upper := 71434, witness := RowWitness.topPrime 71429 },
  { lower := 73205, upper := 73312, witness := RowWitness.topPrime 73189 },
  { lower := 85805, upper := 85828, witness := RowWitness.topPrime 85793 },
  { lower := 89383, upper := 89518, witness := RowWitness.topPrime 89381 },
  { lower := 93845, upper := 93895, witness := RowWitness.topPrime 93827 },
  { lower := 98415, upper := 98449, witness := RowWitness.topPrime 98411 },
  { lower := 137842, upper := 137926, witness := RowWitness.topPrime 137831 },
  { lower := 148955, upper := 149022, witness := RowWitness.topPrime 148949 }
]

def row146_layers : List CoverLayer := [
  { lower := 21170, upper := 42340, M := 15 },
  { lower := 42340, upper := 84680, M := 11 },
  { lower := 84680, upper := 169360, M := 8 },
  { lower := 169360, upper := 338720, M := 6 },
  { lower := 338720, upper := 677440, M := 5 },
  { lower := 677440, upper := 1354880, M := 4 },
  { lower := 1354880, upper := 2709760, M := 3 },
  { lower := 2709760, upper := 5419520, M := 2 },
  { lower := 5419520, upper := 10000000, M := 2 }
]

def row146 : FiniteCoverRow := {
  height := row146_height,
  goods := row146_goods,
  layers := row146_layers
}

theorem row146_registered :
    decide (row146.height ∈ heightCertificateData) = true := by
  decide +kernel

theorem row146_goods_checked :
    row146.goods.all (goodSegmentCheck row146.height.i row146.height.r row146.height.s) = true := by
  decide +kernel

theorem row146_small_checked :
    coverCheck (2 * row146.height.i + 2) (row146.height.i * (row146.height.i - 1) - 1)
      (row146.goods.map goodSegmentBounds) = true := by
  decide +kernel

theorem row146_layerCover_checked :
    coverCheck (row146.height.i * (row146.height.i - 1)) (row146.height.n0 - 1)
      (row146.layers.map CoverLayer.bounds) = true := by
  decide +kernel

theorem row146_layer000_checked :
    coverLayerCheck row146.height row146.goods { lower := 21170, upper := 42340, M := 15 } = true := by
  decide +kernel

theorem row146_layer001_checked :
    coverLayerCheck row146.height row146.goods { lower := 42340, upper := 84680, M := 11 } = true := by
  decide +kernel

theorem row146_layer002_checked :
    coverLayerCheck row146.height row146.goods { lower := 84680, upper := 169360, M := 8 } = true := by
  decide +kernel

theorem row146_layer003_checked :
    coverLayerCheck row146.height row146.goods { lower := 169360, upper := 338720, M := 6 } = true := by
  decide +kernel

theorem row146_layer004_checked :
    coverLayerCheck row146.height row146.goods { lower := 338720, upper := 677440, M := 5 } = true := by
  decide +kernel

theorem row146_layer005_checked :
    coverLayerCheck row146.height row146.goods { lower := 677440, upper := 1354880, M := 4 } = true := by
  decide +kernel

theorem row146_layer006_checked :
    coverLayerCheck row146.height row146.goods { lower := 1354880, upper := 2709760, M := 3 } = true := by
  decide +kernel

theorem row146_layer007_checked :
    coverLayerCheck row146.height row146.goods { lower := 2709760, upper := 5419520, M := 2 } = true := by
  decide +kernel

theorem row146_layer008_checked :
    coverLayerCheck row146.height row146.goods { lower := 5419520, upper := 10000000, M := 2 } = true := by
  decide +kernel

theorem row146_layers_checked :
    row146.layers.all (coverLayerCheck row146.height row146.goods) = true := by
  change List.all [
    { lower := 21170, upper := 42340, M := 15 },
    { lower := 42340, upper := 84680, M := 11 },
    { lower := 84680, upper := 169360, M := 8 },
    { lower := 169360, upper := 338720, M := 6 },
    { lower := 338720, upper := 677440, M := 5 },
    { lower := 677440, upper := 1354880, M := 4 },
    { lower := 1354880, upper := 2709760, M := 3 },
    { lower := 2709760, upper := 5419520, M := 2 },
    { lower := 5419520, upper := 10000000, M := 2 }
  ] (coverLayerCheck row146.height row146.goods) = true
  simp only [List.all_cons, List.all_nil,
    row146_layer000_checked,
    row146_layer001_checked,
    row146_layer002_checked,
    row146_layer003_checked,
    row146_layer004_checked,
    row146_layer005_checked,
    row146_layer006_checked,
    row146_layer007_checked,
    row146_layer008_checked,
    Bool.true_and]

theorem row146_checked : finiteCoverRowCheck row146 = true := by
  simp only [finiteCoverRowCheck, row146_registered, row146_goods_checked,
    row146_small_checked, row146_layerCover_checked, row146_layers_checked,
    Bool.true_and]

#print axioms B699LowIndex.row146_checked

end B699LowIndex

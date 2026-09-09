import research.tasks.«B699-Binomial».runs.«20260909-low-index-structure-b41a5a63».lean.FiniteCover

set_option maxRecDepth 65536
set_option maxHeartbeats 0
set_option exponentiation.threshold 1000000

namespace B699LowIndex

def row125_height : HeightCertificateDatum := { i := 125, r := 41, s := 88, n0Power10 := 8 }

def row125_goods : List GoodSegment := [
  { lower := 252, upper := 375, witness := RowWitness.topPrime 251 },
  { lower := 376, upper := 497, witness := RowWitness.topPrime 373 },
  { lower := 498, upper := 615, witness := RowWitness.topPrime 491 },
  { lower := 616, upper := 737, witness := RowWitness.topPrime 613 },
  { lower := 738, upper := 857, witness := RowWitness.topPrime 733 },
  { lower := 858, upper := 981, witness := RowWitness.topPrime 857 },
  { lower := 982, upper := 1101, witness := RowWitness.topPrime 977 },
  { lower := 1102, upper := 1221, witness := RowWitness.topPrime 1097 },
  { lower := 1222, upper := 1341, witness := RowWitness.topPrime 1217 },
  { lower := 1342, upper := 1451, witness := RowWitness.topPrime 1327 },
  { lower := 1452, upper := 1575, witness := RowWitness.topPrime 1451 },
  { lower := 1576, upper := 1695, witness := RowWitness.topPrime 1571 },
  { lower := 1696, upper := 1817, witness := RowWitness.topPrime 1693 },
  { lower := 1818, upper := 1935, witness := RowWitness.topPrime 1811 },
  { lower := 1936, upper := 2057, witness := RowWitness.topPrime 1933 },
  { lower := 2058, upper := 2177, witness := RowWitness.topPrime 2053 },
  { lower := 2178, upper := 2285, witness := RowWitness.topPrime 2161 },
  { lower := 2286, upper := 2405, witness := RowWitness.topPrime 2281 },
  { lower := 2406, upper := 2523, witness := RowWitness.topPrime 2399 },
  { lower := 2524, upper := 2645, witness := RowWitness.topPrime 2521 },
  { lower := 2646, upper := 2757, witness := RowWitness.topPrime 2633 },
  { lower := 2758, upper := 2877, witness := RowWitness.topPrime 2753 },
  { lower := 2878, upper := 2985, witness := RowWitness.topPrime 2861 },
  { lower := 2986, upper := 3095, witness := RowWitness.topPrime 2971 },
  { lower := 3096, upper := 3213, witness := RowWitness.topPrime 3089 },
  { lower := 3214, upper := 3333, witness := RowWitness.topPrime 3209 },
  { lower := 3334, upper := 3455, witness := RowWitness.topPrime 3331 },
  { lower := 3456, upper := 3573, witness := RowWitness.topPrime 3449 },
  { lower := 3574, upper := 3695, witness := RowWitness.topPrime 3571 },
  { lower := 3696, upper := 3815, witness := RowWitness.topPrime 3691 },
  { lower := 3816, upper := 3927, witness := RowWitness.topPrime 3803 },
  { lower := 3928, upper := 4047, witness := RowWitness.topPrime 3923 },
  { lower := 4048, upper := 4151, witness := RowWitness.topPrime 4027 },
  { lower := 4152, upper := 4263, witness := RowWitness.topPrime 4139 },
  { lower := 4264, upper := 4385, witness := RowWitness.topPrime 4261 },
  { lower := 4386, upper := 4497, witness := RowWitness.topPrime 4373 },
  { lower := 4498, upper := 4617, witness := RowWitness.topPrime 4493 },
  { lower := 4618, upper := 4727, witness := RowWitness.topPrime 4603 },
  { lower := 4728, upper := 4847, witness := RowWitness.topPrime 4723 },
  { lower := 4848, upper := 4955, witness := RowWitness.topPrime 4831 },
  { lower := 4956, upper := 5075, witness := RowWitness.topPrime 4951 },
  { lower := 5076, upper := 5183, witness := RowWitness.topPrime 5059 },
  { lower := 5184, upper := 5303, witness := RowWitness.topPrime 5179 },
  { lower := 5304, upper := 5427, witness := RowWitness.topPrime 5303 },
  { lower := 5428, upper := 5543, witness := RowWitness.topPrime 5419 },
  { lower := 5544, upper := 5655, witness := RowWitness.topPrime 5531 },
  { lower := 5656, upper := 5777, witness := RowWitness.topPrime 5653 },
  { lower := 5778, upper := 5873, witness := RowWitness.topPrime 5749 },
  { lower := 5874, upper := 5993, witness := RowWitness.topPrime 5869 },
  { lower := 5994, upper := 6111, witness := RowWitness.topPrime 5987 },
  { lower := 6112, upper := 6225, witness := RowWitness.topPrime 6101 },
  { lower := 6226, upper := 6345, witness := RowWitness.topPrime 6221 },
  { lower := 6346, upper := 6467, witness := RowWitness.topPrime 6343 },
  { lower := 6468, upper := 6575, witness := RowWitness.topPrime 6451 },
  { lower := 6576, upper := 6695, witness := RowWitness.topPrime 6571 },
  { lower := 6696, upper := 6815, witness := RowWitness.topPrime 6691 },
  { lower := 6816, upper := 6927, witness := RowWitness.topPrime 6803 },
  { lower := 6928, upper := 7041, witness := RowWitness.topPrime 6917 },
  { lower := 7042, upper := 7163, witness := RowWitness.topPrime 7039 },
  { lower := 7164, upper := 7283, witness := RowWitness.topPrime 7159 },
  { lower := 7284, upper := 7407, witness := RowWitness.topPrime 7283 },
  { lower := 7408, upper := 7517, witness := RowWitness.topPrime 7393 },
  { lower := 7518, upper := 7641, witness := RowWitness.topPrime 7517 },
  { lower := 7642, upper := 7763, witness := RowWitness.topPrime 7639 },
  { lower := 7764, upper := 7883, witness := RowWitness.topPrime 7759 },
  { lower := 7884, upper := 8007, witness := RowWitness.topPrime 7883 },
  { lower := 8008, upper := 8117, witness := RowWitness.topPrime 7993 },
  { lower := 8118, upper := 8241, witness := RowWitness.topPrime 8117 },
  { lower := 8242, upper := 8361, witness := RowWitness.topPrime 8237 },
  { lower := 8362, upper := 8477, witness := RowWitness.topPrime 8353 },
  { lower := 8478, upper := 8591, witness := RowWitness.topPrime 8467 },
  { lower := 8592, upper := 8705, witness := RowWitness.topPrime 8581 },
  { lower := 8706, upper := 8823, witness := RowWitness.topPrime 8699 },
  { lower := 8824, upper := 8945, witness := RowWitness.topPrime 8821 },
  { lower := 8946, upper := 9065, witness := RowWitness.topPrime 8941 },
  { lower := 9066, upper := 9183, witness := RowWitness.topPrime 9059 },
  { lower := 9184, upper := 9305, witness := RowWitness.topPrime 9181 },
  { lower := 9306, upper := 9417, witness := RowWitness.topPrime 9293 },
  { lower := 9418, upper := 9537, witness := RowWitness.topPrime 9413 },
  { lower := 9538, upper := 9657, witness := RowWitness.topPrime 9533 },
  { lower := 9658, upper := 9773, witness := RowWitness.topPrime 9649 },
  { lower := 9774, upper := 9893, witness := RowWitness.topPrime 9769 },
  { lower := 9894, upper := 10011, witness := RowWitness.topPrime 9887 },
  { lower := 10012, upper := 10133, witness := RowWitness.topPrime 10009 },
  { lower := 10134, upper := 10257, witness := RowWitness.topPrime 10133 },
  { lower := 10258, upper := 10377, witness := RowWitness.topPrime 10253 },
  { lower := 10378, upper := 10493, witness := RowWitness.topPrime 10369 },
  { lower := 10494, upper := 10611, witness := RowWitness.topPrime 10487 },
  { lower := 10612, upper := 10731, witness := RowWitness.topPrime 10607 },
  { lower := 10732, upper := 10853, witness := RowWitness.topPrime 10729 },
  { lower := 10854, upper := 10977, witness := RowWitness.topPrime 10853 },
  { lower := 10978, upper := 11097, witness := RowWitness.topPrime 10973 },
  { lower := 11098, upper := 11217, witness := RowWitness.topPrime 11093 },
  { lower := 11218, upper := 11337, witness := RowWitness.topPrime 11213 },
  { lower := 11338, upper := 11453, witness := RowWitness.topPrime 11329 },
  { lower := 11454, upper := 11571, witness := RowWitness.topPrime 11447 },
  { lower := 11572, upper := 11675, witness := RowWitness.topPrime 11551 },
  { lower := 11676, upper := 11781, witness := RowWitness.topPrime 11657 },
  { lower := 11782, upper := 11903, witness := RowWitness.topPrime 11779 },
  { lower := 11904, upper := 12027, witness := RowWitness.topPrime 11903 },
  { lower := 12028, upper := 12135, witness := RowWitness.topPrime 12011 },
  { lower := 12136, upper := 12243, witness := RowWitness.topPrime 12119 },
  { lower := 12244, upper := 12365, witness := RowWitness.topPrime 12241 },
  { lower := 12366, upper := 12471, witness := RowWitness.topPrime 12347 },
  { lower := 12472, upper := 12581, witness := RowWitness.topPrime 12457 },
  { lower := 12582, upper := 12701, witness := RowWitness.topPrime 12577 },
  { lower := 12702, upper := 12821, witness := RowWitness.topPrime 12697 },
  { lower := 12822, upper := 12945, witness := RowWitness.topPrime 12821 },
  { lower := 12946, upper := 13065, witness := RowWitness.topPrime 12941 },
  { lower := 13066, upper := 13187, witness := RowWitness.topPrime 13063 },
  { lower := 13188, upper := 13311, witness := RowWitness.topPrime 13187 },
  { lower := 13312, upper := 13433, witness := RowWitness.topPrime 13309 },
  { lower := 13434, upper := 13545, witness := RowWitness.topPrime 13421 },
  { lower := 13546, upper := 13661, witness := RowWitness.topPrime 13537 },
  { lower := 13662, upper := 13773, witness := RowWitness.topPrime 13649 },
  { lower := 13774, upper := 13887, witness := RowWitness.topPrime 13763 },
  { lower := 13888, upper := 14007, witness := RowWitness.topPrime 13883 },
  { lower := 14008, upper := 14123, witness := RowWitness.topPrime 13999 },
  { lower := 14124, upper := 14231, witness := RowWitness.topPrime 14107 },
  { lower := 14232, upper := 14345, witness := RowWitness.topPrime 14221 },
  { lower := 14346, upper := 14465, witness := RowWitness.topPrime 14341 },
  { lower := 14466, upper := 14585, witness := RowWitness.topPrime 14461 },
  { lower := 14586, upper := 14687, witness := RowWitness.topPrime 14563 },
  { lower := 14688, upper := 14807, witness := RowWitness.topPrime 14683 },
  { lower := 14808, upper := 14921, witness := RowWitness.topPrime 14797 },
  { lower := 14922, upper := 15021, witness := RowWitness.topPrime 14897 },
  { lower := 15022, upper := 15141, witness := RowWitness.topPrime 15017 },
  { lower := 15142, upper := 15263, witness := RowWitness.topPrime 15139 },
  { lower := 15264, upper := 15387, witness := RowWitness.topPrime 15263 },
  { lower := 15388, upper := 15503, witness := RowWitness.topPrime 15383 },
  { lower := 15987, upper := 16096, witness := RowWitness.topPrime 15973 },
  { lower := 16384, upper := 16505, witness := RowWitness.topPrime 16381 },
  { lower := 16506, upper := 16508, witness := RowWitness.topPrime 16493 },
  { lower := 16810, upper := 16911, witness := RowWitness.topPrime 16787 },
  { lower := 16912, upper := 16934, witness := RowWitness.topPrime 16903 },
  { lower := 17405, upper := 17525, witness := RowWitness.topPrime 17401 },
  { lower := 17526, upper := 17532, witness := RowWitness.topPrime 17519 },
  { lower := 17576, upper := 17620, witness := RowWitness.topPrime 17573 },
  { lower := 17672, upper := 17700, witness := RowWitness.topPrime 17669 },
  { lower := 18490, upper := 18605, witness := RowWitness.topPrime 18481 },
  { lower := 18606, upper := 18615, witness := RowWitness.topPrime 18593 },
  { lower := 18634, upper := 18741, witness := RowWitness.topPrime 18617 },
  { lower := 18742, upper := 18758, witness := RowWitness.topPrime 18731 },
  { lower := 18818, upper := 18847, witness := RowWitness.topPrime 18803 },
  { lower := 19208, upper := 19290, witness := RowWitness.topPrime 19207 },
  { lower := 19663, upper := 19785, witness := RowWitness.topPrime 19661 },
  { lower := 19786, upper := 19807, witness := RowWitness.topPrime 19777 },
  { lower := 19881, upper := 19897, witness := RowWitness.topPrime 19867 },
  { lower := 19965, upper := 20005, witness := RowWitness.topPrime 19963 },
  { lower := 20172, upper := 20285, witness := RowWitness.topPrime 20161 },
  { lower := 20286, upper := 20288, witness := RowWitness.topPrime 20269 },
  { lower := 20402, upper := 20463, witness := RowWitness.topPrime 20399 },
  { lower := 20480, upper := 20526, witness := RowWitness.topPrime 20479 },
  { lower := 20535, upper := 20657, witness := RowWitness.topPrime 20533 },
  { lower := 20658, upper := 20659, witness := RowWitness.topPrime 20641 },
  { lower := 20667, upper := 20701, witness := RowWitness.topPrime 20663 },
  { lower := 21296, upper := 21407, witness := RowWitness.topPrime 21283 },
  { lower := 21408, upper := 21420, witness := RowWitness.topPrime 21407 },
  { lower := 21870, upper := 21987, witness := RowWitness.topPrime 21863 },
  { lower := 21988, upper := 22028, witness := RowWitness.topPrime 21977 },
  { lower := 22090, upper := 22094, witness := RowWitness.topPrime 22079 },
  { lower := 22188, upper := 22214, witness := RowWitness.topPrime 22171 },
  { lower := 22445, upper := 22450, witness := RowWitness.topPrime 22441 },
  { lower := 22472, upper := 22593, witness := RowWitness.topPrime 22469 },
  { lower := 22594, upper := 22596, witness := RowWitness.topPrime 22573 },
  { lower := 22627, upper := 22652, witness := RowWitness.topPrime 22621 },
  { lower := 23763, upper := 23885, witness := RowWitness.topPrime 23761 },
  { lower := 23886, upper := 23886, witness := RowWitness.topPrime 23879 },
  { lower := 24037, upper := 24153, witness := RowWitness.topPrime 24029 },
  { lower := 24154, upper := 24161, witness := RowWitness.topPrime 24151 },
  { lower := 24167, upper := 24181, witness := RowWitness.topPrime 24151 },
  { lower := 24334, upper := 24453, witness := RowWitness.topPrime 24329 },
  { lower := 24454, upper := 24491, witness := RowWitness.topPrime 24443 },
  { lower := 24576, upper := 24689, witness := RowWitness.topPrime 24571 },
  { lower := 25215, upper := 25313, witness := RowWitness.topPrime 25189 },
  { lower := 25314, upper := 25339, witness := RowWitness.topPrime 25309 },
  { lower := 26364, upper := 26368, witness := RowWitness.topPrime 26357 },
  { lower := 26411, upper := 26488, witness := RowWitness.topPrime 26407 },
  { lower := 26508, upper := 26535, witness := RowWitness.topPrime 26501 },
  { lower := 26624, upper := 26632, witness := RowWitness.topPrime 26597 },
  { lower := 26645, upper := 26748, witness := RowWitness.topPrime 26641 },
  { lower := 26934, upper := 27020, witness := RowWitness.topPrime 26927 },
  { lower := 27556, upper := 27560, witness := RowWitness.topPrime 27551 },
  { lower := 27848, upper := 27859, witness := RowWitness.topPrime 27847 },
  { lower := 28577, upper := 28697, witness := RowWitness.topPrime 28573 },
  { lower := 28698, upper := 28701, witness := RowWitness.topPrime 28697 },
  { lower := 28717, upper := 28796, witness := RowWitness.topPrime 28711 },
  { lower := 28812, upper := 28841, witness := RowWitness.topPrime 28807 },
  { lower := 29584, upper := 29602, witness := RowWitness.topPrime 29581 },
  { lower := 29791, upper := 29892, witness := RowWitness.topPrime 29789 },
  { lower := 30618, upper := 30717, witness := RowWitness.topPrime 30593 },
  { lower := 30718, upper := 30742, witness := RowWitness.topPrime 30713 },
  { lower := 30758, upper := 30844, witness := RowWitness.topPrime 30757 },
  { lower := 30926, upper := 30999, witness := RowWitness.topPrime 30911 },
  { lower := 31213, upper := 31317, witness := RowWitness.topPrime 31193 },
  { lower := 31318, upper := 31337, witness := RowWitness.topPrime 31307 },
  { lower := 31423, upper := 31453, witness := RowWitness.topPrime 31397 },
  { lower := 32805, upper := 32892, witness := RowWitness.topPrime 32803 },
  { lower := 33708, upper := 33738, witness := RowWitness.topPrime 33703 },
  { lower := 34347, upper := 34461, witness := RowWitness.topPrime 34337 },
  { lower := 34462, upper := 34515, witness := RowWitness.topPrime 34457 },
  { lower := 36517, upper := 36621, witness := RowWitness.topPrime 36497 },
  { lower := 36622, upper := 36625, witness := RowWitness.topPrime 36607 },
  { lower := 37303, upper := 37334, witness := RowWitness.topPrime 37277 },
  { lower := 38307, upper := 38415, witness := RowWitness.topPrime 38303 },
  { lower := 39366, upper := 39428, witness := RowWitness.topPrime 39359 },
  { lower := 40401, upper := 40452, witness := RowWitness.topPrime 40387 },
  { lower := 40960, upper := 41055, witness := RowWitness.topPrime 40949 },
  { lower := 45369, upper := 45377, witness := RowWitness.topPrime 45361 },
  { lower := 47526, upper := 47645, witness := RowWitness.topPrime 47521 },
  { lower := 47646, upper := 47648, witness := RowWitness.topPrime 47639 },
  { lower := 48013, upper := 48085, witness := RowWitness.topPrime 47981 },
  { lower := 48778, upper := 48792, witness := RowWitness.topPrime 48767 },
  { lower := 49152, upper := 49254, witness := RowWitness.topPrime 49139 },
  { lower := 50421, upper := 50534, witness := RowWitness.topPrime 50417 },
  { lower := 51076, upper := 51129, witness := RowWitness.topPrime 51071 },
  { lower := 53290, upper := 53372, witness := RowWitness.topPrime 53281 },
  { lower := 55451, upper := 55565, witness := RowWitness.topPrime 55441 },
  { lower := 55566, upper := 55571, witness := RowWitness.topPrime 55547 },
  { lower := 57245, upper := 57246, witness := RowWitness.topPrime 57241 },
  { lower := 57344, upper := 57369, witness := RowWitness.topPrime 57331 },
  { lower := 58619, upper := 58688, witness := RowWitness.topPrime 58613 },
  { lower := 59049, upper := 59080, witness := RowWitness.topPrime 59029 },
  { lower := 65610, upper := 65660, witness := RowWitness.topPrime 65609 },
  { lower := 68694, upper := 68714, witness := RowWitness.topPrime 68687 },
  { lower := 68921, upper := 69014, witness := RowWitness.topPrime 68917 },
  { lower := 71289, upper := 71411, witness := RowWitness.topPrime 71287 },
  { lower := 71412, upper := 71413, witness := RowWitness.topPrime 71411 },
  { lower := 73205, upper := 73291, witness := RowWitness.topPrime 73189 },
  { lower := 89383, upper := 89497, witness := RowWitness.topPrime 89381 },
  { lower := 98415, upper := 98428, witness := RowWitness.topPrime 98411 },
  { lower := 137842, upper := 137905, witness := RowWitness.topPrime 137831 },
  { lower := 148955, upper := 149001, witness := RowWitness.topPrime 148949 }
]

def row125_layers : List CoverLayer := [
  { lower := 15500, upper := 31000, M := 17 },
  { lower := 31000, upper := 62000, M := 13 },
  { lower := 62000, upper := 124000, M := 10 },
  { lower := 124000, upper := 248000, M := 8 },
  { lower := 248000, upper := 496000, M := 6 },
  { lower := 496000, upper := 992000, M := 5 },
  { lower := 992000, upper := 1984000, M := 4 },
  { lower := 1984000, upper := 3968000, M := 3 },
  { lower := 3968000, upper := 7936000, M := 2 },
  { lower := 7936000, upper := 15872000, M := 2 },
  { lower := 15872000, upper := 31744000, M := 2 },
  { lower := 31744000, upper := 63488000, M := 1 },
  { lower := 63488000, upper := 100000000, M := 1 }
]

def row125 : FiniteCoverRow := {
  height := row125_height,
  goods := row125_goods,
  layers := row125_layers
}

theorem row125_registered :
    decide (row125.height ∈ heightCertificateData) = true := by
  decide +kernel

theorem row125_goods_checked :
    row125.goods.all (goodSegmentCheck row125.height.i row125.height.r row125.height.s) = true := by
  decide +kernel

theorem row125_small_checked :
    coverCheck (2 * row125.height.i + 2) (row125.height.i * (row125.height.i - 1) - 1)
      (row125.goods.map goodSegmentBounds) = true := by
  decide +kernel

theorem row125_layerCover_checked :
    coverCheck (row125.height.i * (row125.height.i - 1)) (row125.height.n0 - 1)
      (row125.layers.map CoverLayer.bounds) = true := by
  decide +kernel

theorem row125_layer000_checked :
    coverLayerCheck row125.height row125.goods { lower := 15500, upper := 31000, M := 17 } = true := by
  decide +kernel

theorem row125_layer001_checked :
    coverLayerCheck row125.height row125.goods { lower := 31000, upper := 62000, M := 13 } = true := by
  decide +kernel

theorem row125_layer002_checked :
    coverLayerCheck row125.height row125.goods { lower := 62000, upper := 124000, M := 10 } = true := by
  decide +kernel

theorem row125_layer003_checked :
    coverLayerCheck row125.height row125.goods { lower := 124000, upper := 248000, M := 8 } = true := by
  decide +kernel

theorem row125_layer004_checked :
    coverLayerCheck row125.height row125.goods { lower := 248000, upper := 496000, M := 6 } = true := by
  decide +kernel

theorem row125_layer005_checked :
    coverLayerCheck row125.height row125.goods { lower := 496000, upper := 992000, M := 5 } = true := by
  decide +kernel

theorem row125_layer006_checked :
    coverLayerCheck row125.height row125.goods { lower := 992000, upper := 1984000, M := 4 } = true := by
  decide +kernel

theorem row125_layer007_checked :
    coverLayerCheck row125.height row125.goods { lower := 1984000, upper := 3968000, M := 3 } = true := by
  decide +kernel

theorem row125_layer008_checked :
    coverLayerCheck row125.height row125.goods { lower := 3968000, upper := 7936000, M := 2 } = true := by
  decide +kernel

theorem row125_layer009_checked :
    coverLayerCheck row125.height row125.goods { lower := 7936000, upper := 15872000, M := 2 } = true := by
  decide +kernel

theorem row125_layer010_checked :
    coverLayerCheck row125.height row125.goods { lower := 15872000, upper := 31744000, M := 2 } = true := by
  decide +kernel

theorem row125_layer011_checked :
    coverLayerCheck row125.height row125.goods { lower := 31744000, upper := 63488000, M := 1 } = true := by
  decide +kernel

theorem row125_layer012_checked :
    coverLayerCheck row125.height row125.goods { lower := 63488000, upper := 100000000, M := 1 } = true := by
  decide +kernel

theorem row125_layers_checked :
    row125.layers.all (coverLayerCheck row125.height row125.goods) = true := by
  change List.all [
    { lower := 15500, upper := 31000, M := 17 },
    { lower := 31000, upper := 62000, M := 13 },
    { lower := 62000, upper := 124000, M := 10 },
    { lower := 124000, upper := 248000, M := 8 },
    { lower := 248000, upper := 496000, M := 6 },
    { lower := 496000, upper := 992000, M := 5 },
    { lower := 992000, upper := 1984000, M := 4 },
    { lower := 1984000, upper := 3968000, M := 3 },
    { lower := 3968000, upper := 7936000, M := 2 },
    { lower := 7936000, upper := 15872000, M := 2 },
    { lower := 15872000, upper := 31744000, M := 2 },
    { lower := 31744000, upper := 63488000, M := 1 },
    { lower := 63488000, upper := 100000000, M := 1 }
  ] (coverLayerCheck row125.height row125.goods) = true
  simp only [List.all_cons, List.all_nil,
    row125_layer000_checked,
    row125_layer001_checked,
    row125_layer002_checked,
    row125_layer003_checked,
    row125_layer004_checked,
    row125_layer005_checked,
    row125_layer006_checked,
    row125_layer007_checked,
    row125_layer008_checked,
    row125_layer009_checked,
    row125_layer010_checked,
    row125_layer011_checked,
    row125_layer012_checked,
    Bool.true_and]

theorem row125_checked : finiteCoverRowCheck row125 = true := by
  simp only [finiteCoverRowCheck, row125_registered, row125_goods_checked,
    row125_small_checked, row125_layerCover_checked, row125_layers_checked,
    Bool.true_and]

#print axioms B699LowIndex.row125_checked

end B699LowIndex

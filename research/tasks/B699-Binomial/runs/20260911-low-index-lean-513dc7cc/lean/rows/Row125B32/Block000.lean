import research.tasks.«B699-Binomial».runs.«20260909-low-index-structure-b41a5a63».lean.FiniteCover
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.WitnessBridge
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.LayerParts
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.PairChunks

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

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


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row125

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row125_good000_checked :
    goodSegmentCheck 125 41 88
      { lower := 252, upper := 375, witness := RowWitness.topPrime 251 } = true := by
  exact good_top_prime_checked (i := 125) (r := 41) (s := 88) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row125_good001_checked :
    goodSegmentCheck 125 41 88
      { lower := 376, upper := 497, witness := RowWitness.topPrime 373 } = true := by
  exact good_top_prime_checked (i := 125) (r := 41) (s := 88) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row125_good002_checked :
    goodSegmentCheck 125 41 88
      { lower := 498, upper := 615, witness := RowWitness.topPrime 491 } = true := by
  exact good_top_prime_checked (i := 125) (r := 41) (s := 88) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row125_good003_checked :
    goodSegmentCheck 125 41 88
      { lower := 616, upper := 737, witness := RowWitness.topPrime 613 } = true := by
  exact good_top_prime_checked (i := 125) (r := 41) (s := 88) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row125_good004_checked :
    goodSegmentCheck 125 41 88
      { lower := 738, upper := 857, witness := RowWitness.topPrime 733 } = true := by
  exact good_top_prime_checked (i := 125) (r := 41) (s := 88) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row125_good005_checked :
    goodSegmentCheck 125 41 88
      { lower := 858, upper := 981, witness := RowWitness.topPrime 857 } = true := by
  exact good_top_prime_checked (i := 125) (r := 41) (s := 88) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row125_good006_checked :
    goodSegmentCheck 125 41 88
      { lower := 982, upper := 1101, witness := RowWitness.topPrime 977 } = true := by
  exact good_top_prime_checked (i := 125) (r := 41) (s := 88) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row125_good007_checked :
    goodSegmentCheck 125 41 88
      { lower := 1102, upper := 1221, witness := RowWitness.topPrime 1097 } = true := by
  exact good_top_prime_checked (i := 125) (r := 41) (s := 88) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row125_good008_checked :
    goodSegmentCheck 125 41 88
      { lower := 1222, upper := 1341, witness := RowWitness.topPrime 1217 } = true := by
  exact good_top_prime_checked (i := 125) (r := 41) (s := 88) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row125_good009_checked :
    goodSegmentCheck 125 41 88
      { lower := 1342, upper := 1451, witness := RowWitness.topPrime 1327 } = true := by
  exact good_top_prime_checked (i := 125) (r := 41) (s := 88) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row125_good010_checked :
    goodSegmentCheck 125 41 88
      { lower := 1452, upper := 1575, witness := RowWitness.topPrime 1451 } = true := by
  exact good_top_prime_checked (i := 125) (r := 41) (s := 88) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row125_good011_checked :
    goodSegmentCheck 125 41 88
      { lower := 1576, upper := 1695, witness := RowWitness.topPrime 1571 } = true := by
  exact good_top_prime_checked (i := 125) (r := 41) (s := 88) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row125_good012_checked :
    goodSegmentCheck 125 41 88
      { lower := 1696, upper := 1817, witness := RowWitness.topPrime 1693 } = true := by
  exact good_top_prime_checked (i := 125) (r := 41) (s := 88) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row125_good013_checked :
    goodSegmentCheck 125 41 88
      { lower := 1818, upper := 1935, witness := RowWitness.topPrime 1811 } = true := by
  exact good_top_prime_checked (i := 125) (r := 41) (s := 88) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row125_good014_checked :
    goodSegmentCheck 125 41 88
      { lower := 1936, upper := 2057, witness := RowWitness.topPrime 1933 } = true := by
  exact good_top_prime_checked (i := 125) (r := 41) (s := 88) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row125_good015_checked :
    goodSegmentCheck 125 41 88
      { lower := 2058, upper := 2177, witness := RowWitness.topPrime 2053 } = true := by
  exact good_top_prime_checked (i := 125) (r := 41) (s := 88) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row125_good000_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row125_good001_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row125_good002_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row125_good003_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row125_good004_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row125_good005_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row125_good006_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row125_good007_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row125_good008_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row125_good009_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row125_good010_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row125_good011_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row125_good012_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row125_good013_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row125_good014_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row125_good015_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row125_good016_checked :
    goodSegmentCheck 125 41 88
      { lower := 2178, upper := 2285, witness := RowWitness.topPrime 2161 } = true := by
  exact good_top_prime_checked (i := 125) (r := 41) (s := 88) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row125_good017_checked :
    goodSegmentCheck 125 41 88
      { lower := 2286, upper := 2405, witness := RowWitness.topPrime 2281 } = true := by
  exact good_top_prime_checked (i := 125) (r := 41) (s := 88) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row125_good018_checked :
    goodSegmentCheck 125 41 88
      { lower := 2406, upper := 2523, witness := RowWitness.topPrime 2399 } = true := by
  exact good_top_prime_checked (i := 125) (r := 41) (s := 88) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row125_good019_checked :
    goodSegmentCheck 125 41 88
      { lower := 2524, upper := 2645, witness := RowWitness.topPrime 2521 } = true := by
  exact good_top_prime_checked (i := 125) (r := 41) (s := 88) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row125_good020_checked :
    goodSegmentCheck 125 41 88
      { lower := 2646, upper := 2757, witness := RowWitness.topPrime 2633 } = true := by
  exact good_top_prime_checked (i := 125) (r := 41) (s := 88) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row125_good021_checked :
    goodSegmentCheck 125 41 88
      { lower := 2758, upper := 2877, witness := RowWitness.topPrime 2753 } = true := by
  exact good_top_prime_checked (i := 125) (r := 41) (s := 88) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row125_good022_checked :
    goodSegmentCheck 125 41 88
      { lower := 2878, upper := 2985, witness := RowWitness.topPrime 2861 } = true := by
  exact good_top_prime_checked (i := 125) (r := 41) (s := 88) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row125_good023_checked :
    goodSegmentCheck 125 41 88
      { lower := 2986, upper := 3095, witness := RowWitness.topPrime 2971 } = true := by
  exact good_top_prime_checked (i := 125) (r := 41) (s := 88) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row125_good024_checked :
    goodSegmentCheck 125 41 88
      { lower := 3096, upper := 3213, witness := RowWitness.topPrime 3089 } = true := by
  exact good_top_prime_checked (i := 125) (r := 41) (s := 88) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row125_good025_checked :
    goodSegmentCheck 125 41 88
      { lower := 3214, upper := 3333, witness := RowWitness.topPrime 3209 } = true := by
  exact good_top_prime_checked (i := 125) (r := 41) (s := 88) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row125_good026_checked :
    goodSegmentCheck 125 41 88
      { lower := 3334, upper := 3455, witness := RowWitness.topPrime 3331 } = true := by
  exact good_top_prime_checked (i := 125) (r := 41) (s := 88) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row125_good027_checked :
    goodSegmentCheck 125 41 88
      { lower := 3456, upper := 3573, witness := RowWitness.topPrime 3449 } = true := by
  exact good_top_prime_checked (i := 125) (r := 41) (s := 88) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row125_good028_checked :
    goodSegmentCheck 125 41 88
      { lower := 3574, upper := 3695, witness := RowWitness.topPrime 3571 } = true := by
  exact good_top_prime_checked (i := 125) (r := 41) (s := 88) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row125_good029_checked :
    goodSegmentCheck 125 41 88
      { lower := 3696, upper := 3815, witness := RowWitness.topPrime 3691 } = true := by
  exact good_top_prime_checked (i := 125) (r := 41) (s := 88) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row125_good030_checked :
    goodSegmentCheck 125 41 88
      { lower := 3816, upper := 3927, witness := RowWitness.topPrime 3803 } = true := by
  exact good_top_prime_checked (i := 125) (r := 41) (s := 88) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row125_good031_checked :
    goodSegmentCheck 125 41 88
      { lower := 3928, upper := 4047, witness := RowWitness.topPrime 3923 } = true := by
  exact good_top_prime_checked (i := 125) (r := 41) (s := 88) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row125_good016_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row125_good017_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row125_good018_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row125_good019_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row125_good020_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row125_good021_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row125_good022_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row125_good023_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row125_good024_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row125_good025_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row125_good026_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row125_good027_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row125_good028_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row125_good029_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row125_good030_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row125_good031_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row125_good032_checked :
    goodSegmentCheck 125 41 88
      { lower := 4048, upper := 4151, witness := RowWitness.topPrime 4027 } = true := by
  exact good_top_prime_checked (i := 125) (r := 41) (s := 88) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row125_good033_checked :
    goodSegmentCheck 125 41 88
      { lower := 4152, upper := 4263, witness := RowWitness.topPrime 4139 } = true := by
  exact good_top_prime_checked (i := 125) (r := 41) (s := 88) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row125_good034_checked :
    goodSegmentCheck 125 41 88
      { lower := 4264, upper := 4385, witness := RowWitness.topPrime 4261 } = true := by
  exact good_top_prime_checked (i := 125) (r := 41) (s := 88) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row125_good035_checked :
    goodSegmentCheck 125 41 88
      { lower := 4386, upper := 4497, witness := RowWitness.topPrime 4373 } = true := by
  exact good_top_prime_checked (i := 125) (r := 41) (s := 88) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row125_good036_checked :
    goodSegmentCheck 125 41 88
      { lower := 4498, upper := 4617, witness := RowWitness.topPrime 4493 } = true := by
  exact good_top_prime_checked (i := 125) (r := 41) (s := 88) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row125_good037_checked :
    goodSegmentCheck 125 41 88
      { lower := 4618, upper := 4727, witness := RowWitness.topPrime 4603 } = true := by
  exact good_top_prime_checked (i := 125) (r := 41) (s := 88) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row125_good038_checked :
    goodSegmentCheck 125 41 88
      { lower := 4728, upper := 4847, witness := RowWitness.topPrime 4723 } = true := by
  exact good_top_prime_checked (i := 125) (r := 41) (s := 88) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row125_good039_checked :
    goodSegmentCheck 125 41 88
      { lower := 4848, upper := 4955, witness := RowWitness.topPrime 4831 } = true := by
  exact good_top_prime_checked (i := 125) (r := 41) (s := 88) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row125_good040_checked :
    goodSegmentCheck 125 41 88
      { lower := 4956, upper := 5075, witness := RowWitness.topPrime 4951 } = true := by
  exact good_top_prime_checked (i := 125) (r := 41) (s := 88) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row125_good041_checked :
    goodSegmentCheck 125 41 88
      { lower := 5076, upper := 5183, witness := RowWitness.topPrime 5059 } = true := by
  exact good_top_prime_checked (i := 125) (r := 41) (s := 88) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row125_good042_checked :
    goodSegmentCheck 125 41 88
      { lower := 5184, upper := 5303, witness := RowWitness.topPrime 5179 } = true := by
  exact good_top_prime_checked (i := 125) (r := 41) (s := 88) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row125_good043_checked :
    goodSegmentCheck 125 41 88
      { lower := 5304, upper := 5427, witness := RowWitness.topPrime 5303 } = true := by
  exact good_top_prime_checked (i := 125) (r := 41) (s := 88) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row125_good044_checked :
    goodSegmentCheck 125 41 88
      { lower := 5428, upper := 5543, witness := RowWitness.topPrime 5419 } = true := by
  exact good_top_prime_checked (i := 125) (r := 41) (s := 88) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row125_good045_checked :
    goodSegmentCheck 125 41 88
      { lower := 5544, upper := 5655, witness := RowWitness.topPrime 5531 } = true := by
  exact good_top_prime_checked (i := 125) (r := 41) (s := 88) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row125_good046_checked :
    goodSegmentCheck 125 41 88
      { lower := 5656, upper := 5777, witness := RowWitness.topPrime 5653 } = true := by
  exact good_top_prime_checked (i := 125) (r := 41) (s := 88) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row125_good047_checked :
    goodSegmentCheck 125 41 88
      { lower := 5778, upper := 5873, witness := RowWitness.topPrime 5749 } = true := by
  exact good_top_prime_checked (i := 125) (r := 41) (s := 88) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row125_good032_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row125_good033_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row125_good034_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row125_good035_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row125_good036_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row125_good037_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row125_good038_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row125_good039_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row125_good040_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row125_good041_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row125_good042_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row125_good043_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row125_good044_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row125_good045_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row125_good046_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row125_good047_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row125_good048_checked :
    goodSegmentCheck 125 41 88
      { lower := 5874, upper := 5993, witness := RowWitness.topPrime 5869 } = true := by
  exact good_top_prime_checked (i := 125) (r := 41) (s := 88) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row125_good049_checked :
    goodSegmentCheck 125 41 88
      { lower := 5994, upper := 6111, witness := RowWitness.topPrime 5987 } = true := by
  exact good_top_prime_checked (i := 125) (r := 41) (s := 88) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row125_good050_checked :
    goodSegmentCheck 125 41 88
      { lower := 6112, upper := 6225, witness := RowWitness.topPrime 6101 } = true := by
  exact good_top_prime_checked (i := 125) (r := 41) (s := 88) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row125_good051_checked :
    goodSegmentCheck 125 41 88
      { lower := 6226, upper := 6345, witness := RowWitness.topPrime 6221 } = true := by
  exact good_top_prime_checked (i := 125) (r := 41) (s := 88) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row125_good052_checked :
    goodSegmentCheck 125 41 88
      { lower := 6346, upper := 6467, witness := RowWitness.topPrime 6343 } = true := by
  exact good_top_prime_checked (i := 125) (r := 41) (s := 88) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row125_good053_checked :
    goodSegmentCheck 125 41 88
      { lower := 6468, upper := 6575, witness := RowWitness.topPrime 6451 } = true := by
  exact good_top_prime_checked (i := 125) (r := 41) (s := 88) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row125_good054_checked :
    goodSegmentCheck 125 41 88
      { lower := 6576, upper := 6695, witness := RowWitness.topPrime 6571 } = true := by
  exact good_top_prime_checked (i := 125) (r := 41) (s := 88) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row125_good055_checked :
    goodSegmentCheck 125 41 88
      { lower := 6696, upper := 6815, witness := RowWitness.topPrime 6691 } = true := by
  exact good_top_prime_checked (i := 125) (r := 41) (s := 88) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row125_good056_checked :
    goodSegmentCheck 125 41 88
      { lower := 6816, upper := 6927, witness := RowWitness.topPrime 6803 } = true := by
  exact good_top_prime_checked (i := 125) (r := 41) (s := 88) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row125_good057_checked :
    goodSegmentCheck 125 41 88
      { lower := 6928, upper := 7041, witness := RowWitness.topPrime 6917 } = true := by
  exact good_top_prime_checked (i := 125) (r := 41) (s := 88) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row125_good058_checked :
    goodSegmentCheck 125 41 88
      { lower := 7042, upper := 7163, witness := RowWitness.topPrime 7039 } = true := by
  exact good_top_prime_checked (i := 125) (r := 41) (s := 88) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row125_good059_checked :
    goodSegmentCheck 125 41 88
      { lower := 7164, upper := 7283, witness := RowWitness.topPrime 7159 } = true := by
  exact good_top_prime_checked (i := 125) (r := 41) (s := 88) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row125_good060_checked :
    goodSegmentCheck 125 41 88
      { lower := 7284, upper := 7407, witness := RowWitness.topPrime 7283 } = true := by
  exact good_top_prime_checked (i := 125) (r := 41) (s := 88) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row125_good061_checked :
    goodSegmentCheck 125 41 88
      { lower := 7408, upper := 7517, witness := RowWitness.topPrime 7393 } = true := by
  exact good_top_prime_checked (i := 125) (r := 41) (s := 88) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row125_good062_checked :
    goodSegmentCheck 125 41 88
      { lower := 7518, upper := 7641, witness := RowWitness.topPrime 7517 } = true := by
  exact good_top_prime_checked (i := 125) (r := 41) (s := 88) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row125_good063_checked :
    goodSegmentCheck 125 41 88
      { lower := 7642, upper := 7763, witness := RowWitness.topPrime 7639 } = true := by
  exact good_top_prime_checked (i := 125) (r := 41) (s := 88) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row125_good048_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row125_good049_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row125_good050_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row125_good051_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row125_good052_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row125_good053_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row125_good054_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row125_good055_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row125_good056_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row125_good057_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row125_good058_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row125_good059_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row125_good060_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row125_good061_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row125_good062_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row125_good063_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row125_good064_checked :
    goodSegmentCheck 125 41 88
      { lower := 7764, upper := 7883, witness := RowWitness.topPrime 7759 } = true := by
  exact good_top_prime_checked (i := 125) (r := 41) (s := 88) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row125_good065_checked :
    goodSegmentCheck 125 41 88
      { lower := 7884, upper := 8007, witness := RowWitness.topPrime 7883 } = true := by
  exact good_top_prime_checked (i := 125) (r := 41) (s := 88) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row125_good066_checked :
    goodSegmentCheck 125 41 88
      { lower := 8008, upper := 8117, witness := RowWitness.topPrime 7993 } = true := by
  exact good_top_prime_checked (i := 125) (r := 41) (s := 88) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row125_good067_checked :
    goodSegmentCheck 125 41 88
      { lower := 8118, upper := 8241, witness := RowWitness.topPrime 8117 } = true := by
  exact good_top_prime_checked (i := 125) (r := 41) (s := 88) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row125_good068_checked :
    goodSegmentCheck 125 41 88
      { lower := 8242, upper := 8361, witness := RowWitness.topPrime 8237 } = true := by
  exact good_top_prime_checked (i := 125) (r := 41) (s := 88) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row125_good069_checked :
    goodSegmentCheck 125 41 88
      { lower := 8362, upper := 8477, witness := RowWitness.topPrime 8353 } = true := by
  exact good_top_prime_checked (i := 125) (r := 41) (s := 88) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row125_good070_checked :
    goodSegmentCheck 125 41 88
      { lower := 8478, upper := 8591, witness := RowWitness.topPrime 8467 } = true := by
  exact good_top_prime_checked (i := 125) (r := 41) (s := 88) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row125_good071_checked :
    goodSegmentCheck 125 41 88
      { lower := 8592, upper := 8705, witness := RowWitness.topPrime 8581 } = true := by
  exact good_top_prime_checked (i := 125) (r := 41) (s := 88) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row125_good072_checked :
    goodSegmentCheck 125 41 88
      { lower := 8706, upper := 8823, witness := RowWitness.topPrime 8699 } = true := by
  exact good_top_prime_checked (i := 125) (r := 41) (s := 88) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row125_good073_checked :
    goodSegmentCheck 125 41 88
      { lower := 8824, upper := 8945, witness := RowWitness.topPrime 8821 } = true := by
  exact good_top_prime_checked (i := 125) (r := 41) (s := 88) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row125_good074_checked :
    goodSegmentCheck 125 41 88
      { lower := 8946, upper := 9065, witness := RowWitness.topPrime 8941 } = true := by
  exact good_top_prime_checked (i := 125) (r := 41) (s := 88) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row125_good075_checked :
    goodSegmentCheck 125 41 88
      { lower := 9066, upper := 9183, witness := RowWitness.topPrime 9059 } = true := by
  exact good_top_prime_checked (i := 125) (r := 41) (s := 88) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row125_good076_checked :
    goodSegmentCheck 125 41 88
      { lower := 9184, upper := 9305, witness := RowWitness.topPrime 9181 } = true := by
  exact good_top_prime_checked (i := 125) (r := 41) (s := 88) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row125_good077_checked :
    goodSegmentCheck 125 41 88
      { lower := 9306, upper := 9417, witness := RowWitness.topPrime 9293 } = true := by
  exact good_top_prime_checked (i := 125) (r := 41) (s := 88) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row125_good078_checked :
    goodSegmentCheck 125 41 88
      { lower := 9418, upper := 9537, witness := RowWitness.topPrime 9413 } = true := by
  exact good_top_prime_checked (i := 125) (r := 41) (s := 88) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row125_good079_checked :
    goodSegmentCheck 125 41 88
      { lower := 9538, upper := 9657, witness := RowWitness.topPrime 9533 } = true := by
  exact good_top_prime_checked (i := 125) (r := 41) (s := 88) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row125_good064_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row125_good065_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row125_good066_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row125_good067_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row125_good068_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row125_good069_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row125_good070_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row125_good071_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row125_good072_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row125_good073_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row125_good074_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row125_good075_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row125_good076_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row125_good077_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row125_good078_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row125_good079_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row125_good080_checked :
    goodSegmentCheck 125 41 88
      { lower := 9658, upper := 9773, witness := RowWitness.topPrime 9649 } = true := by
  exact good_top_prime_checked (i := 125) (r := 41) (s := 88) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row125_good081_checked :
    goodSegmentCheck 125 41 88
      { lower := 9774, upper := 9893, witness := RowWitness.topPrime 9769 } = true := by
  exact good_top_prime_checked (i := 125) (r := 41) (s := 88) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row125_good082_checked :
    goodSegmentCheck 125 41 88
      { lower := 9894, upper := 10011, witness := RowWitness.topPrime 9887 } = true := by
  exact good_top_prime_checked (i := 125) (r := 41) (s := 88) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row125_good083_checked :
    goodSegmentCheck 125 41 88
      { lower := 10012, upper := 10133, witness := RowWitness.topPrime 10009 } = true := by
  exact good_top_prime_checked (i := 125) (r := 41) (s := 88) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row125_good084_checked :
    goodSegmentCheck 125 41 88
      { lower := 10134, upper := 10257, witness := RowWitness.topPrime 10133 } = true := by
  exact good_top_prime_checked (i := 125) (r := 41) (s := 88) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row125_good085_checked :
    goodSegmentCheck 125 41 88
      { lower := 10258, upper := 10377, witness := RowWitness.topPrime 10253 } = true := by
  exact good_top_prime_checked (i := 125) (r := 41) (s := 88) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row125_good086_checked :
    goodSegmentCheck 125 41 88
      { lower := 10378, upper := 10493, witness := RowWitness.topPrime 10369 } = true := by
  exact good_top_prime_checked (i := 125) (r := 41) (s := 88) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row125_good087_checked :
    goodSegmentCheck 125 41 88
      { lower := 10494, upper := 10611, witness := RowWitness.topPrime 10487 } = true := by
  exact good_top_prime_checked (i := 125) (r := 41) (s := 88) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row125_good088_checked :
    goodSegmentCheck 125 41 88
      { lower := 10612, upper := 10731, witness := RowWitness.topPrime 10607 } = true := by
  exact good_top_prime_checked (i := 125) (r := 41) (s := 88) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row125_good089_checked :
    goodSegmentCheck 125 41 88
      { lower := 10732, upper := 10853, witness := RowWitness.topPrime 10729 } = true := by
  exact good_top_prime_checked (i := 125) (r := 41) (s := 88) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row125_good090_checked :
    goodSegmentCheck 125 41 88
      { lower := 10854, upper := 10977, witness := RowWitness.topPrime 10853 } = true := by
  exact good_top_prime_checked (i := 125) (r := 41) (s := 88) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row125_good091_checked :
    goodSegmentCheck 125 41 88
      { lower := 10978, upper := 11097, witness := RowWitness.topPrime 10973 } = true := by
  exact good_top_prime_checked (i := 125) (r := 41) (s := 88) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row125_good092_checked :
    goodSegmentCheck 125 41 88
      { lower := 11098, upper := 11217, witness := RowWitness.topPrime 11093 } = true := by
  exact good_top_prime_checked (i := 125) (r := 41) (s := 88) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row125_good093_checked :
    goodSegmentCheck 125 41 88
      { lower := 11218, upper := 11337, witness := RowWitness.topPrime 11213 } = true := by
  exact good_top_prime_checked (i := 125) (r := 41) (s := 88) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row125_good094_checked :
    goodSegmentCheck 125 41 88
      { lower := 11338, upper := 11453, witness := RowWitness.topPrime 11329 } = true := by
  exact good_top_prime_checked (i := 125) (r := 41) (s := 88) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row125_good095_checked :
    goodSegmentCheck 125 41 88
      { lower := 11454, upper := 11571, witness := RowWitness.topPrime 11447 } = true := by
  exact good_top_prime_checked (i := 125) (r := 41) (s := 88) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row125_good080_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row125_good081_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row125_good082_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row125_good083_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row125_good084_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row125_good085_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row125_good086_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row125_good087_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row125_good088_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row125_good089_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row125_good090_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row125_good091_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row125_good092_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row125_good093_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row125_good094_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row125_good095_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row125_good096_checked :
    goodSegmentCheck 125 41 88
      { lower := 11572, upper := 11675, witness := RowWitness.topPrime 11551 } = true := by
  exact good_top_prime_checked (i := 125) (r := 41) (s := 88) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row125_good097_checked :
    goodSegmentCheck 125 41 88
      { lower := 11676, upper := 11781, witness := RowWitness.topPrime 11657 } = true := by
  exact good_top_prime_checked (i := 125) (r := 41) (s := 88) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row125_good098_checked :
    goodSegmentCheck 125 41 88
      { lower := 11782, upper := 11903, witness := RowWitness.topPrime 11779 } = true := by
  exact good_top_prime_checked (i := 125) (r := 41) (s := 88) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row125_good099_checked :
    goodSegmentCheck 125 41 88
      { lower := 11904, upper := 12027, witness := RowWitness.topPrime 11903 } = true := by
  exact good_top_prime_checked (i := 125) (r := 41) (s := 88) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row125_good100_checked :
    goodSegmentCheck 125 41 88
      { lower := 12028, upper := 12135, witness := RowWitness.topPrime 12011 } = true := by
  exact good_top_prime_checked (i := 125) (r := 41) (s := 88) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row125_good101_checked :
    goodSegmentCheck 125 41 88
      { lower := 12136, upper := 12243, witness := RowWitness.topPrime 12119 } = true := by
  exact good_top_prime_checked (i := 125) (r := 41) (s := 88) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row125_good102_checked :
    goodSegmentCheck 125 41 88
      { lower := 12244, upper := 12365, witness := RowWitness.topPrime 12241 } = true := by
  exact good_top_prime_checked (i := 125) (r := 41) (s := 88) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row125_good103_checked :
    goodSegmentCheck 125 41 88
      { lower := 12366, upper := 12471, witness := RowWitness.topPrime 12347 } = true := by
  exact good_top_prime_checked (i := 125) (r := 41) (s := 88) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row125_good104_checked :
    goodSegmentCheck 125 41 88
      { lower := 12472, upper := 12581, witness := RowWitness.topPrime 12457 } = true := by
  exact good_top_prime_checked (i := 125) (r := 41) (s := 88) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row125_good105_checked :
    goodSegmentCheck 125 41 88
      { lower := 12582, upper := 12701, witness := RowWitness.topPrime 12577 } = true := by
  exact good_top_prime_checked (i := 125) (r := 41) (s := 88) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row125_good106_checked :
    goodSegmentCheck 125 41 88
      { lower := 12702, upper := 12821, witness := RowWitness.topPrime 12697 } = true := by
  exact good_top_prime_checked (i := 125) (r := 41) (s := 88) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row125_good107_checked :
    goodSegmentCheck 125 41 88
      { lower := 12822, upper := 12945, witness := RowWitness.topPrime 12821 } = true := by
  exact good_top_prime_checked (i := 125) (r := 41) (s := 88) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row125_good108_checked :
    goodSegmentCheck 125 41 88
      { lower := 12946, upper := 13065, witness := RowWitness.topPrime 12941 } = true := by
  exact good_top_prime_checked (i := 125) (r := 41) (s := 88) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row125_good109_checked :
    goodSegmentCheck 125 41 88
      { lower := 13066, upper := 13187, witness := RowWitness.topPrime 13063 } = true := by
  exact good_top_prime_checked (i := 125) (r := 41) (s := 88) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row125_good110_checked :
    goodSegmentCheck 125 41 88
      { lower := 13188, upper := 13311, witness := RowWitness.topPrime 13187 } = true := by
  exact good_top_prime_checked (i := 125) (r := 41) (s := 88) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row125_good111_checked :
    goodSegmentCheck 125 41 88
      { lower := 13312, upper := 13433, witness := RowWitness.topPrime 13309 } = true := by
  exact good_top_prime_checked (i := 125) (r := 41) (s := 88) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row125_good096_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row125_good097_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row125_good098_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row125_good099_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row125_good100_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row125_good101_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row125_good102_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row125_good103_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row125_good104_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row125_good105_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row125_good106_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row125_good107_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row125_good108_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row125_good109_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row125_good110_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row125_good111_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row125_good112_checked :
    goodSegmentCheck 125 41 88
      { lower := 13434, upper := 13545, witness := RowWitness.topPrime 13421 } = true := by
  exact good_top_prime_checked (i := 125) (r := 41) (s := 88) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row125_good113_checked :
    goodSegmentCheck 125 41 88
      { lower := 13546, upper := 13661, witness := RowWitness.topPrime 13537 } = true := by
  exact good_top_prime_checked (i := 125) (r := 41) (s := 88) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row125_good114_checked :
    goodSegmentCheck 125 41 88
      { lower := 13662, upper := 13773, witness := RowWitness.topPrime 13649 } = true := by
  exact good_top_prime_checked (i := 125) (r := 41) (s := 88) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row125_good115_checked :
    goodSegmentCheck 125 41 88
      { lower := 13774, upper := 13887, witness := RowWitness.topPrime 13763 } = true := by
  exact good_top_prime_checked (i := 125) (r := 41) (s := 88) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row125_good116_checked :
    goodSegmentCheck 125 41 88
      { lower := 13888, upper := 14007, witness := RowWitness.topPrime 13883 } = true := by
  exact good_top_prime_checked (i := 125) (r := 41) (s := 88) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row125_good117_checked :
    goodSegmentCheck 125 41 88
      { lower := 14008, upper := 14123, witness := RowWitness.topPrime 13999 } = true := by
  exact good_top_prime_checked (i := 125) (r := 41) (s := 88) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row125_good118_checked :
    goodSegmentCheck 125 41 88
      { lower := 14124, upper := 14231, witness := RowWitness.topPrime 14107 } = true := by
  exact good_top_prime_checked (i := 125) (r := 41) (s := 88) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row125_good119_checked :
    goodSegmentCheck 125 41 88
      { lower := 14232, upper := 14345, witness := RowWitness.topPrime 14221 } = true := by
  exact good_top_prime_checked (i := 125) (r := 41) (s := 88) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row125_good120_checked :
    goodSegmentCheck 125 41 88
      { lower := 14346, upper := 14465, witness := RowWitness.topPrime 14341 } = true := by
  exact good_top_prime_checked (i := 125) (r := 41) (s := 88) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row125_good121_checked :
    goodSegmentCheck 125 41 88
      { lower := 14466, upper := 14585, witness := RowWitness.topPrime 14461 } = true := by
  exact good_top_prime_checked (i := 125) (r := 41) (s := 88) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row125_good122_checked :
    goodSegmentCheck 125 41 88
      { lower := 14586, upper := 14687, witness := RowWitness.topPrime 14563 } = true := by
  exact good_top_prime_checked (i := 125) (r := 41) (s := 88) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row125_good123_checked :
    goodSegmentCheck 125 41 88
      { lower := 14688, upper := 14807, witness := RowWitness.topPrime 14683 } = true := by
  exact good_top_prime_checked (i := 125) (r := 41) (s := 88) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row125_good124_checked :
    goodSegmentCheck 125 41 88
      { lower := 14808, upper := 14921, witness := RowWitness.topPrime 14797 } = true := by
  exact good_top_prime_checked (i := 125) (r := 41) (s := 88) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row125_good125_checked :
    goodSegmentCheck 125 41 88
      { lower := 14922, upper := 15021, witness := RowWitness.topPrime 14897 } = true := by
  exact good_top_prime_checked (i := 125) (r := 41) (s := 88) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row125_good126_checked :
    goodSegmentCheck 125 41 88
      { lower := 15022, upper := 15141, witness := RowWitness.topPrime 15017 } = true := by
  exact good_top_prime_checked (i := 125) (r := 41) (s := 88) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row125_good127_checked :
    goodSegmentCheck 125 41 88
      { lower := 15142, upper := 15263, witness := RowWitness.topPrime 15139 } = true := by
  exact good_top_prime_checked (i := 125) (r := 41) (s := 88) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row125_good112_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row125_good113_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row125_good114_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row125_good115_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row125_good116_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row125_good117_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row125_good118_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row125_good119_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row125_good120_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row125_good121_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row125_good122_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row125_good123_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row125_good124_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row125_good125_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row125_good126_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row125_good127_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row125_good128_checked :
    goodSegmentCheck 125 41 88
      { lower := 15264, upper := 15387, witness := RowWitness.topPrime 15263 } = true := by
  exact good_top_prime_checked (i := 125) (r := 41) (s := 88) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row125_good129_checked :
    goodSegmentCheck 125 41 88
      { lower := 15388, upper := 15503, witness := RowWitness.topPrime 15383 } = true := by
  exact good_top_prime_checked (i := 125) (r := 41) (s := 88) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row125_good130_checked :
    goodSegmentCheck 125 41 88
      { lower := 15987, upper := 16096, witness := RowWitness.topPrime 15973 } = true := by
  exact good_top_prime_checked (i := 125) (r := 41) (s := 88) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row125_good131_checked :
    goodSegmentCheck 125 41 88
      { lower := 16384, upper := 16505, witness := RowWitness.topPrime 16381 } = true := by
  exact good_top_prime_checked (i := 125) (r := 41) (s := 88) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row125_good132_checked :
    goodSegmentCheck 125 41 88
      { lower := 16506, upper := 16508, witness := RowWitness.topPrime 16493 } = true := by
  exact good_top_prime_checked (i := 125) (r := 41) (s := 88) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row125_good133_checked :
    goodSegmentCheck 125 41 88
      { lower := 16810, upper := 16911, witness := RowWitness.topPrime 16787 } = true := by
  exact good_top_prime_checked (i := 125) (r := 41) (s := 88) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row125_good134_checked :
    goodSegmentCheck 125 41 88
      { lower := 16912, upper := 16934, witness := RowWitness.topPrime 16903 } = true := by
  exact good_top_prime_checked (i := 125) (r := 41) (s := 88) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row125_good135_checked :
    goodSegmentCheck 125 41 88
      { lower := 17405, upper := 17525, witness := RowWitness.topPrime 17401 } = true := by
  exact good_top_prime_checked (i := 125) (r := 41) (s := 88) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row125_good136_checked :
    goodSegmentCheck 125 41 88
      { lower := 17526, upper := 17532, witness := RowWitness.topPrime 17519 } = true := by
  exact good_top_prime_checked (i := 125) (r := 41) (s := 88) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row125_good137_checked :
    goodSegmentCheck 125 41 88
      { lower := 17576, upper := 17620, witness := RowWitness.topPrime 17573 } = true := by
  exact good_top_prime_checked (i := 125) (r := 41) (s := 88) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row125_good138_checked :
    goodSegmentCheck 125 41 88
      { lower := 17672, upper := 17700, witness := RowWitness.topPrime 17669 } = true := by
  exact good_top_prime_checked (i := 125) (r := 41) (s := 88) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row125_good139_checked :
    goodSegmentCheck 125 41 88
      { lower := 18490, upper := 18605, witness := RowWitness.topPrime 18481 } = true := by
  exact good_top_prime_checked (i := 125) (r := 41) (s := 88) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row125_good140_checked :
    goodSegmentCheck 125 41 88
      { lower := 18606, upper := 18615, witness := RowWitness.topPrime 18593 } = true := by
  exact good_top_prime_checked (i := 125) (r := 41) (s := 88) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row125_good141_checked :
    goodSegmentCheck 125 41 88
      { lower := 18634, upper := 18741, witness := RowWitness.topPrime 18617 } = true := by
  exact good_top_prime_checked (i := 125) (r := 41) (s := 88) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row125_good142_checked :
    goodSegmentCheck 125 41 88
      { lower := 18742, upper := 18758, witness := RowWitness.topPrime 18731 } = true := by
  exact good_top_prime_checked (i := 125) (r := 41) (s := 88) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row125_good143_checked :
    goodSegmentCheck 125 41 88
      { lower := 18818, upper := 18847, witness := RowWitness.topPrime 18803 } = true := by
  exact good_top_prime_checked (i := 125) (r := 41) (s := 88) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row125_good128_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row125_good129_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row125_good130_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row125_good131_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row125_good132_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row125_good133_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row125_good134_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row125_good135_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row125_good136_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row125_good137_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row125_good138_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row125_good139_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row125_good140_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row125_good141_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row125_good142_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row125_good143_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row125_good144_checked :
    goodSegmentCheck 125 41 88
      { lower := 19208, upper := 19290, witness := RowWitness.topPrime 19207 } = true := by
  exact good_top_prime_checked (i := 125) (r := 41) (s := 88) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row125_good145_checked :
    goodSegmentCheck 125 41 88
      { lower := 19663, upper := 19785, witness := RowWitness.topPrime 19661 } = true := by
  exact good_top_prime_checked (i := 125) (r := 41) (s := 88) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row125_good146_checked :
    goodSegmentCheck 125 41 88
      { lower := 19786, upper := 19807, witness := RowWitness.topPrime 19777 } = true := by
  exact good_top_prime_checked (i := 125) (r := 41) (s := 88) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row125_good147_checked :
    goodSegmentCheck 125 41 88
      { lower := 19881, upper := 19897, witness := RowWitness.topPrime 19867 } = true := by
  exact good_top_prime_checked (i := 125) (r := 41) (s := 88) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row125_good148_checked :
    goodSegmentCheck 125 41 88
      { lower := 19965, upper := 20005, witness := RowWitness.topPrime 19963 } = true := by
  exact good_top_prime_checked (i := 125) (r := 41) (s := 88) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row125_good149_checked :
    goodSegmentCheck 125 41 88
      { lower := 20172, upper := 20285, witness := RowWitness.topPrime 20161 } = true := by
  exact good_top_prime_checked (i := 125) (r := 41) (s := 88) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row125_good150_checked :
    goodSegmentCheck 125 41 88
      { lower := 20286, upper := 20288, witness := RowWitness.topPrime 20269 } = true := by
  exact good_top_prime_checked (i := 125) (r := 41) (s := 88) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row125_good151_checked :
    goodSegmentCheck 125 41 88
      { lower := 20402, upper := 20463, witness := RowWitness.topPrime 20399 } = true := by
  exact good_top_prime_checked (i := 125) (r := 41) (s := 88) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row125_good152_checked :
    goodSegmentCheck 125 41 88
      { lower := 20480, upper := 20526, witness := RowWitness.topPrime 20479 } = true := by
  exact good_top_prime_checked (i := 125) (r := 41) (s := 88) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row125_good153_checked :
    goodSegmentCheck 125 41 88
      { lower := 20535, upper := 20657, witness := RowWitness.topPrime 20533 } = true := by
  exact good_top_prime_checked (i := 125) (r := 41) (s := 88) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row125_good154_checked :
    goodSegmentCheck 125 41 88
      { lower := 20658, upper := 20659, witness := RowWitness.topPrime 20641 } = true := by
  exact good_top_prime_checked (i := 125) (r := 41) (s := 88) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row125_good155_checked :
    goodSegmentCheck 125 41 88
      { lower := 20667, upper := 20701, witness := RowWitness.topPrime 20663 } = true := by
  exact good_top_prime_checked (i := 125) (r := 41) (s := 88) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row125_good156_checked :
    goodSegmentCheck 125 41 88
      { lower := 21296, upper := 21407, witness := RowWitness.topPrime 21283 } = true := by
  exact good_top_prime_checked (i := 125) (r := 41) (s := 88) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row125_good157_checked :
    goodSegmentCheck 125 41 88
      { lower := 21408, upper := 21420, witness := RowWitness.topPrime 21407 } = true := by
  exact good_top_prime_checked (i := 125) (r := 41) (s := 88) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row125_good158_checked :
    goodSegmentCheck 125 41 88
      { lower := 21870, upper := 21987, witness := RowWitness.topPrime 21863 } = true := by
  exact good_top_prime_checked (i := 125) (r := 41) (s := 88) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row125_good159_checked :
    goodSegmentCheck 125 41 88
      { lower := 21988, upper := 22028, witness := RowWitness.topPrime 21977 } = true := by
  exact good_top_prime_checked (i := 125) (r := 41) (s := 88) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row125_good144_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row125_good145_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row125_good146_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row125_good147_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row125_good148_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row125_good149_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row125_good150_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row125_good151_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row125_good152_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row125_good153_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row125_good154_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row125_good155_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row125_good156_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row125_good157_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row125_good158_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row125_good159_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row125_good160_checked :
    goodSegmentCheck 125 41 88
      { lower := 22090, upper := 22094, witness := RowWitness.topPrime 22079 } = true := by
  exact good_top_prime_checked (i := 125) (r := 41) (s := 88) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row125_good161_checked :
    goodSegmentCheck 125 41 88
      { lower := 22188, upper := 22214, witness := RowWitness.topPrime 22171 } = true := by
  exact good_top_prime_checked (i := 125) (r := 41) (s := 88) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row125_good162_checked :
    goodSegmentCheck 125 41 88
      { lower := 22445, upper := 22450, witness := RowWitness.topPrime 22441 } = true := by
  exact good_top_prime_checked (i := 125) (r := 41) (s := 88) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row125_good163_checked :
    goodSegmentCheck 125 41 88
      { lower := 22472, upper := 22593, witness := RowWitness.topPrime 22469 } = true := by
  exact good_top_prime_checked (i := 125) (r := 41) (s := 88) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row125_good164_checked :
    goodSegmentCheck 125 41 88
      { lower := 22594, upper := 22596, witness := RowWitness.topPrime 22573 } = true := by
  exact good_top_prime_checked (i := 125) (r := 41) (s := 88) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row125_good165_checked :
    goodSegmentCheck 125 41 88
      { lower := 22627, upper := 22652, witness := RowWitness.topPrime 22621 } = true := by
  exact good_top_prime_checked (i := 125) (r := 41) (s := 88) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row125_good166_checked :
    goodSegmentCheck 125 41 88
      { lower := 23763, upper := 23885, witness := RowWitness.topPrime 23761 } = true := by
  exact good_top_prime_checked (i := 125) (r := 41) (s := 88) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row125_good167_checked :
    goodSegmentCheck 125 41 88
      { lower := 23886, upper := 23886, witness := RowWitness.topPrime 23879 } = true := by
  exact good_top_prime_checked (i := 125) (r := 41) (s := 88) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row125_good168_checked :
    goodSegmentCheck 125 41 88
      { lower := 24037, upper := 24153, witness := RowWitness.topPrime 24029 } = true := by
  exact good_top_prime_checked (i := 125) (r := 41) (s := 88) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row125_good169_checked :
    goodSegmentCheck 125 41 88
      { lower := 24154, upper := 24161, witness := RowWitness.topPrime 24151 } = true := by
  exact good_top_prime_checked (i := 125) (r := 41) (s := 88) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row125_good170_checked :
    goodSegmentCheck 125 41 88
      { lower := 24167, upper := 24181, witness := RowWitness.topPrime 24151 } = true := by
  exact good_top_prime_checked (i := 125) (r := 41) (s := 88) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row125_good171_checked :
    goodSegmentCheck 125 41 88
      { lower := 24334, upper := 24453, witness := RowWitness.topPrime 24329 } = true := by
  exact good_top_prime_checked (i := 125) (r := 41) (s := 88) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row125_good172_checked :
    goodSegmentCheck 125 41 88
      { lower := 24454, upper := 24491, witness := RowWitness.topPrime 24443 } = true := by
  exact good_top_prime_checked (i := 125) (r := 41) (s := 88) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row125_good173_checked :
    goodSegmentCheck 125 41 88
      { lower := 24576, upper := 24689, witness := RowWitness.topPrime 24571 } = true := by
  exact good_top_prime_checked (i := 125) (r := 41) (s := 88) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row125_good174_checked :
    goodSegmentCheck 125 41 88
      { lower := 25215, upper := 25313, witness := RowWitness.topPrime 25189 } = true := by
  exact good_top_prime_checked (i := 125) (r := 41) (s := 88) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row125_good175_checked :
    goodSegmentCheck 125 41 88
      { lower := 25314, upper := 25339, witness := RowWitness.topPrime 25309 } = true := by
  exact good_top_prime_checked (i := 125) (r := 41) (s := 88) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row125_good160_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row125_good161_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row125_good162_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row125_good163_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row125_good164_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row125_good165_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row125_good166_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row125_good167_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row125_good168_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row125_good169_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row125_good170_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row125_good171_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row125_good172_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row125_good173_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row125_good174_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row125_good175_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row125_good176_checked :
    goodSegmentCheck 125 41 88
      { lower := 26364, upper := 26368, witness := RowWitness.topPrime 26357 } = true := by
  exact good_top_prime_checked (i := 125) (r := 41) (s := 88) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row125_good177_checked :
    goodSegmentCheck 125 41 88
      { lower := 26411, upper := 26488, witness := RowWitness.topPrime 26407 } = true := by
  exact good_top_prime_checked (i := 125) (r := 41) (s := 88) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row125_good178_checked :
    goodSegmentCheck 125 41 88
      { lower := 26508, upper := 26535, witness := RowWitness.topPrime 26501 } = true := by
  exact good_top_prime_checked (i := 125) (r := 41) (s := 88) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row125_good179_checked :
    goodSegmentCheck 125 41 88
      { lower := 26624, upper := 26632, witness := RowWitness.topPrime 26597 } = true := by
  exact good_top_prime_checked (i := 125) (r := 41) (s := 88) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row125_good180_checked :
    goodSegmentCheck 125 41 88
      { lower := 26645, upper := 26748, witness := RowWitness.topPrime 26641 } = true := by
  exact good_top_prime_checked (i := 125) (r := 41) (s := 88) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row125_good181_checked :
    goodSegmentCheck 125 41 88
      { lower := 26934, upper := 27020, witness := RowWitness.topPrime 26927 } = true := by
  exact good_top_prime_checked (i := 125) (r := 41) (s := 88) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row125_good182_checked :
    goodSegmentCheck 125 41 88
      { lower := 27556, upper := 27560, witness := RowWitness.topPrime 27551 } = true := by
  exact good_top_prime_checked (i := 125) (r := 41) (s := 88) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row125_good183_checked :
    goodSegmentCheck 125 41 88
      { lower := 27848, upper := 27859, witness := RowWitness.topPrime 27847 } = true := by
  exact good_top_prime_checked (i := 125) (r := 41) (s := 88) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row125_good184_checked :
    goodSegmentCheck 125 41 88
      { lower := 28577, upper := 28697, witness := RowWitness.topPrime 28573 } = true := by
  exact good_top_prime_checked (i := 125) (r := 41) (s := 88) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row125_good185_checked :
    goodSegmentCheck 125 41 88
      { lower := 28698, upper := 28701, witness := RowWitness.topPrime 28697 } = true := by
  exact good_top_prime_checked (i := 125) (r := 41) (s := 88) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row125_good186_checked :
    goodSegmentCheck 125 41 88
      { lower := 28717, upper := 28796, witness := RowWitness.topPrime 28711 } = true := by
  exact good_top_prime_checked (i := 125) (r := 41) (s := 88) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row125_good187_checked :
    goodSegmentCheck 125 41 88
      { lower := 28812, upper := 28841, witness := RowWitness.topPrime 28807 } = true := by
  exact good_top_prime_checked (i := 125) (r := 41) (s := 88) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row125_good188_checked :
    goodSegmentCheck 125 41 88
      { lower := 29584, upper := 29602, witness := RowWitness.topPrime 29581 } = true := by
  exact good_top_prime_checked (i := 125) (r := 41) (s := 88) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row125_good189_checked :
    goodSegmentCheck 125 41 88
      { lower := 29791, upper := 29892, witness := RowWitness.topPrime 29789 } = true := by
  exact good_top_prime_checked (i := 125) (r := 41) (s := 88) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row125_good190_checked :
    goodSegmentCheck 125 41 88
      { lower := 30618, upper := 30717, witness := RowWitness.topPrime 30593 } = true := by
  exact good_top_prime_checked (i := 125) (r := 41) (s := 88) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row125_good191_checked :
    goodSegmentCheck 125 41 88
      { lower := 30718, upper := 30742, witness := RowWitness.topPrime 30713 } = true := by
  exact good_top_prime_checked (i := 125) (r := 41) (s := 88) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row125_good176_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row125_good177_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row125_good178_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row125_good179_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row125_good180_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row125_good181_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row125_good182_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row125_good183_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row125_good184_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row125_good185_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row125_good186_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row125_good187_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row125_good188_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row125_good189_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row125_good190_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row125_good191_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row125_good192_checked :
    goodSegmentCheck 125 41 88
      { lower := 30758, upper := 30844, witness := RowWitness.topPrime 30757 } = true := by
  exact good_top_prime_checked (i := 125) (r := 41) (s := 88) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row125_good193_checked :
    goodSegmentCheck 125 41 88
      { lower := 30926, upper := 30999, witness := RowWitness.topPrime 30911 } = true := by
  exact good_top_prime_checked (i := 125) (r := 41) (s := 88) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row125_good194_checked :
    goodSegmentCheck 125 41 88
      { lower := 31213, upper := 31317, witness := RowWitness.topPrime 31193 } = true := by
  exact good_top_prime_checked (i := 125) (r := 41) (s := 88) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row125_good195_checked :
    goodSegmentCheck 125 41 88
      { lower := 31318, upper := 31337, witness := RowWitness.topPrime 31307 } = true := by
  exact good_top_prime_checked (i := 125) (r := 41) (s := 88) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row125_good196_checked :
    goodSegmentCheck 125 41 88
      { lower := 31423, upper := 31453, witness := RowWitness.topPrime 31397 } = true := by
  exact good_top_prime_checked (i := 125) (r := 41) (s := 88) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row125_good197_checked :
    goodSegmentCheck 125 41 88
      { lower := 32805, upper := 32892, witness := RowWitness.topPrime 32803 } = true := by
  exact good_top_prime_checked (i := 125) (r := 41) (s := 88) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row125_good198_checked :
    goodSegmentCheck 125 41 88
      { lower := 33708, upper := 33738, witness := RowWitness.topPrime 33703 } = true := by
  exact good_top_prime_checked (i := 125) (r := 41) (s := 88) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row125_good199_checked :
    goodSegmentCheck 125 41 88
      { lower := 34347, upper := 34461, witness := RowWitness.topPrime 34337 } = true := by
  exact good_top_prime_checked (i := 125) (r := 41) (s := 88) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row125_good200_checked :
    goodSegmentCheck 125 41 88
      { lower := 34462, upper := 34515, witness := RowWitness.topPrime 34457 } = true := by
  exact good_top_prime_checked (i := 125) (r := 41) (s := 88) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row125_good201_checked :
    goodSegmentCheck 125 41 88
      { lower := 36517, upper := 36621, witness := RowWitness.topPrime 36497 } = true := by
  exact good_top_prime_checked (i := 125) (r := 41) (s := 88) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row125_good202_checked :
    goodSegmentCheck 125 41 88
      { lower := 36622, upper := 36625, witness := RowWitness.topPrime 36607 } = true := by
  exact good_top_prime_checked (i := 125) (r := 41) (s := 88) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row125_good203_checked :
    goodSegmentCheck 125 41 88
      { lower := 37303, upper := 37334, witness := RowWitness.topPrime 37277 } = true := by
  exact good_top_prime_checked (i := 125) (r := 41) (s := 88) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row125_good204_checked :
    goodSegmentCheck 125 41 88
      { lower := 38307, upper := 38415, witness := RowWitness.topPrime 38303 } = true := by
  exact good_top_prime_checked (i := 125) (r := 41) (s := 88) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row125_good205_checked :
    goodSegmentCheck 125 41 88
      { lower := 39366, upper := 39428, witness := RowWitness.topPrime 39359 } = true := by
  exact good_top_prime_checked (i := 125) (r := 41) (s := 88) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row125_good206_checked :
    goodSegmentCheck 125 41 88
      { lower := 40401, upper := 40452, witness := RowWitness.topPrime 40387 } = true := by
  exact good_top_prime_checked (i := 125) (r := 41) (s := 88) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row125_good207_checked :
    goodSegmentCheck 125 41 88
      { lower := 40960, upper := 41055, witness := RowWitness.topPrime 40949 } = true := by
  exact good_top_prime_checked (i := 125) (r := 41) (s := 88) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row125_good192_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row125_good193_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row125_good194_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row125_good195_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row125_good196_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row125_good197_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row125_good198_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row125_good199_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row125_good200_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row125_good201_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row125_good202_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row125_good203_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row125_good204_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row125_good205_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row125_good206_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row125_good207_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row125_good208_checked :
    goodSegmentCheck 125 41 88
      { lower := 45369, upper := 45377, witness := RowWitness.topPrime 45361 } = true := by
  exact good_top_prime_checked (i := 125) (r := 41) (s := 88) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row125_good209_checked :
    goodSegmentCheck 125 41 88
      { lower := 47526, upper := 47645, witness := RowWitness.topPrime 47521 } = true := by
  exact good_top_prime_checked (i := 125) (r := 41) (s := 88) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row125_good210_checked :
    goodSegmentCheck 125 41 88
      { lower := 47646, upper := 47648, witness := RowWitness.topPrime 47639 } = true := by
  exact good_top_prime_checked (i := 125) (r := 41) (s := 88) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row125_good211_checked :
    goodSegmentCheck 125 41 88
      { lower := 48013, upper := 48085, witness := RowWitness.topPrime 47981 } = true := by
  exact good_top_prime_checked (i := 125) (r := 41) (s := 88) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row125_good212_checked :
    goodSegmentCheck 125 41 88
      { lower := 48778, upper := 48792, witness := RowWitness.topPrime 48767 } = true := by
  exact good_top_prime_checked (i := 125) (r := 41) (s := 88) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row125_good213_checked :
    goodSegmentCheck 125 41 88
      { lower := 49152, upper := 49254, witness := RowWitness.topPrime 49139 } = true := by
  exact good_top_prime_checked (i := 125) (r := 41) (s := 88) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row125_good214_checked :
    goodSegmentCheck 125 41 88
      { lower := 50421, upper := 50534, witness := RowWitness.topPrime 50417 } = true := by
  exact good_top_prime_checked (i := 125) (r := 41) (s := 88) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row125_good215_checked :
    goodSegmentCheck 125 41 88
      { lower := 51076, upper := 51129, witness := RowWitness.topPrime 51071 } = true := by
  exact good_top_prime_checked (i := 125) (r := 41) (s := 88) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row125_good216_checked :
    goodSegmentCheck 125 41 88
      { lower := 53290, upper := 53372, witness := RowWitness.topPrime 53281 } = true := by
  exact good_top_prime_checked (i := 125) (r := 41) (s := 88) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row125_good217_checked :
    goodSegmentCheck 125 41 88
      { lower := 55451, upper := 55565, witness := RowWitness.topPrime 55441 } = true := by
  exact good_top_prime_checked (i := 125) (r := 41) (s := 88) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row125_good218_checked :
    goodSegmentCheck 125 41 88
      { lower := 55566, upper := 55571, witness := RowWitness.topPrime 55547 } = true := by
  exact good_top_prime_checked (i := 125) (r := 41) (s := 88) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row125_good219_checked :
    goodSegmentCheck 125 41 88
      { lower := 57245, upper := 57246, witness := RowWitness.topPrime 57241 } = true := by
  exact good_top_prime_checked (i := 125) (r := 41) (s := 88) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row125_good220_checked :
    goodSegmentCheck 125 41 88
      { lower := 57344, upper := 57369, witness := RowWitness.topPrime 57331 } = true := by
  exact good_top_prime_checked (i := 125) (r := 41) (s := 88) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row125_good221_checked :
    goodSegmentCheck 125 41 88
      { lower := 58619, upper := 58688, witness := RowWitness.topPrime 58613 } = true := by
  exact good_top_prime_checked (i := 125) (r := 41) (s := 88) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row125_good222_checked :
    goodSegmentCheck 125 41 88
      { lower := 59049, upper := 59080, witness := RowWitness.topPrime 59029 } = true := by
  exact good_top_prime_checked (i := 125) (r := 41) (s := 88) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row125_good223_checked :
    goodSegmentCheck 125 41 88
      { lower := 65610, upper := 65660, witness := RowWitness.topPrime 65609 } = true := by
  exact good_top_prime_checked (i := 125) (r := 41) (s := 88) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row125_good208_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row125_good209_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row125_good210_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row125_good211_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row125_good212_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row125_good213_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row125_good214_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row125_good215_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row125_good216_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row125_good217_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row125_good218_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row125_good219_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row125_good220_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row125_good221_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row125_good222_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row125_good223_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row125_good224_checked :
    goodSegmentCheck 125 41 88
      { lower := 68694, upper := 68714, witness := RowWitness.topPrime 68687 } = true := by
  exact good_top_prime_checked (i := 125) (r := 41) (s := 88) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row125_good225_checked :
    goodSegmentCheck 125 41 88
      { lower := 68921, upper := 69014, witness := RowWitness.topPrime 68917 } = true := by
  exact good_top_prime_checked (i := 125) (r := 41) (s := 88) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row125_good226_checked :
    goodSegmentCheck 125 41 88
      { lower := 71289, upper := 71411, witness := RowWitness.topPrime 71287 } = true := by
  exact good_top_prime_checked (i := 125) (r := 41) (s := 88) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row125_good227_checked :
    goodSegmentCheck 125 41 88
      { lower := 71412, upper := 71413, witness := RowWitness.topPrime 71411 } = true := by
  exact good_top_prime_checked (i := 125) (r := 41) (s := 88) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row125_good228_checked :
    goodSegmentCheck 125 41 88
      { lower := 73205, upper := 73291, witness := RowWitness.topPrime 73189 } = true := by
  exact good_top_prime_checked (i := 125) (r := 41) (s := 88) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row125_good229_checked :
    goodSegmentCheck 125 41 88
      { lower := 89383, upper := 89497, witness := RowWitness.topPrime 89381 } = true := by
  exact good_top_prime_checked (i := 125) (r := 41) (s := 88) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row125_good230_checked :
    goodSegmentCheck 125 41 88
      { lower := 98415, upper := 98428, witness := RowWitness.topPrime 98411 } = true := by
  exact good_top_prime_checked (i := 125) (r := 41) (s := 88) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row125_good231_checked :
    goodSegmentCheck 125 41 88
      { lower := 137842, upper := 137905, witness := RowWitness.topPrime 137831 } = true := by
  exact good_top_prime_checked (i := 125) (r := 41) (s := 88) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row125_good232_checked :
    goodSegmentCheck 125 41 88
      { lower := 148955, upper := 149001, witness := RowWitness.topPrime 148949 } = true := by
  exact good_top_prime_checked (i := 125) (r := 41) (s := 88) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row125_good224_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row125_good225_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row125_good226_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row125_good227_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row125_good228_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row125_good229_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row125_good230_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row125_good231_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row125_good232_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row125_goods_checked :
    row125.goods.all (goodSegmentCheck row125.height.i row125.height.r row125.height.s) = true := by
  change row125_goods.all (goodSegmentCheck 125 41 88) = true
  simp only [row125_goods, List.all_cons, List.all_nil,
    row125_good000_checked,
    row125_good001_checked,
    row125_good002_checked,
    row125_good003_checked,
    row125_good004_checked,
    row125_good005_checked,
    row125_good006_checked,
    row125_good007_checked,
    row125_good008_checked,
    row125_good009_checked,
    row125_good010_checked,
    row125_good011_checked,
    row125_good012_checked,
    row125_good013_checked,
    row125_good014_checked,
    row125_good015_checked,
    row125_good016_checked,
    row125_good017_checked,
    row125_good018_checked,
    row125_good019_checked,
    row125_good020_checked,
    row125_good021_checked,
    row125_good022_checked,
    row125_good023_checked,
    row125_good024_checked,
    row125_good025_checked,
    row125_good026_checked,
    row125_good027_checked,
    row125_good028_checked,
    row125_good029_checked,
    row125_good030_checked,
    row125_good031_checked,
    row125_good032_checked,
    row125_good033_checked,
    row125_good034_checked,
    row125_good035_checked,
    row125_good036_checked,
    row125_good037_checked,
    row125_good038_checked,
    row125_good039_checked,
    row125_good040_checked,
    row125_good041_checked,
    row125_good042_checked,
    row125_good043_checked,
    row125_good044_checked,
    row125_good045_checked,
    row125_good046_checked,
    row125_good047_checked,
    row125_good048_checked,
    row125_good049_checked,
    row125_good050_checked,
    row125_good051_checked,
    row125_good052_checked,
    row125_good053_checked,
    row125_good054_checked,
    row125_good055_checked,
    row125_good056_checked,
    row125_good057_checked,
    row125_good058_checked,
    row125_good059_checked,
    row125_good060_checked,
    row125_good061_checked,
    row125_good062_checked,
    row125_good063_checked,
    row125_good064_checked,
    row125_good065_checked,
    row125_good066_checked,
    row125_good067_checked,
    row125_good068_checked,
    row125_good069_checked,
    row125_good070_checked,
    row125_good071_checked,
    row125_good072_checked,
    row125_good073_checked,
    row125_good074_checked,
    row125_good075_checked,
    row125_good076_checked,
    row125_good077_checked,
    row125_good078_checked,
    row125_good079_checked,
    row125_good080_checked,
    row125_good081_checked,
    row125_good082_checked,
    row125_good083_checked,
    row125_good084_checked,
    row125_good085_checked,
    row125_good086_checked,
    row125_good087_checked,
    row125_good088_checked,
    row125_good089_checked,
    row125_good090_checked,
    row125_good091_checked,
    row125_good092_checked,
    row125_good093_checked,
    row125_good094_checked,
    row125_good095_checked,
    row125_good096_checked,
    row125_good097_checked,
    row125_good098_checked,
    row125_good099_checked,
    row125_good100_checked,
    row125_good101_checked,
    row125_good102_checked,
    row125_good103_checked,
    row125_good104_checked,
    row125_good105_checked,
    row125_good106_checked,
    row125_good107_checked,
    row125_good108_checked,
    row125_good109_checked,
    row125_good110_checked,
    row125_good111_checked,
    row125_good112_checked,
    row125_good113_checked,
    row125_good114_checked,
    row125_good115_checked,
    row125_good116_checked,
    row125_good117_checked,
    row125_good118_checked,
    row125_good119_checked,
    row125_good120_checked,
    row125_good121_checked,
    row125_good122_checked,
    row125_good123_checked,
    row125_good124_checked,
    row125_good125_checked,
    row125_good126_checked,
    row125_good127_checked,
    row125_good128_checked,
    row125_good129_checked,
    row125_good130_checked,
    row125_good131_checked,
    row125_good132_checked,
    row125_good133_checked,
    row125_good134_checked,
    row125_good135_checked,
    row125_good136_checked,
    row125_good137_checked,
    row125_good138_checked,
    row125_good139_checked,
    row125_good140_checked,
    row125_good141_checked,
    row125_good142_checked,
    row125_good143_checked,
    row125_good144_checked,
    row125_good145_checked,
    row125_good146_checked,
    row125_good147_checked,
    row125_good148_checked,
    row125_good149_checked,
    row125_good150_checked,
    row125_good151_checked,
    row125_good152_checked,
    row125_good153_checked,
    row125_good154_checked,
    row125_good155_checked,
    row125_good156_checked,
    row125_good157_checked,
    row125_good158_checked,
    row125_good159_checked,
    row125_good160_checked,
    row125_good161_checked,
    row125_good162_checked,
    row125_good163_checked,
    row125_good164_checked,
    row125_good165_checked,
    row125_good166_checked,
    row125_good167_checked,
    row125_good168_checked,
    row125_good169_checked,
    row125_good170_checked,
    row125_good171_checked,
    row125_good172_checked,
    row125_good173_checked,
    row125_good174_checked,
    row125_good175_checked,
    row125_good176_checked,
    row125_good177_checked,
    row125_good178_checked,
    row125_good179_checked,
    row125_good180_checked,
    row125_good181_checked,
    row125_good182_checked,
    row125_good183_checked,
    row125_good184_checked,
    row125_good185_checked,
    row125_good186_checked,
    row125_good187_checked,
    row125_good188_checked,
    row125_good189_checked,
    row125_good190_checked,
    row125_good191_checked,
    row125_good192_checked,
    row125_good193_checked,
    row125_good194_checked,
    row125_good195_checked,
    row125_good196_checked,
    row125_good197_checked,
    row125_good198_checked,
    row125_good199_checked,
    row125_good200_checked,
    row125_good201_checked,
    row125_good202_checked,
    row125_good203_checked,
    row125_good204_checked,
    row125_good205_checked,
    row125_good206_checked,
    row125_good207_checked,
    row125_good208_checked,
    row125_good209_checked,
    row125_good210_checked,
    row125_good211_checked,
    row125_good212_checked,
    row125_good213_checked,
    row125_good214_checked,
    row125_good215_checked,
    row125_good216_checked,
    row125_good217_checked,
    row125_good218_checked,
    row125_good219_checked,
    row125_good220_checked,
    row125_good221_checked,
    row125_good222_checked,
    row125_good223_checked,
    row125_good224_checked,
    row125_good225_checked,
    row125_good226_checked,
    row125_good227_checked,
    row125_good228_checked,
    row125_good229_checked,
    row125_good230_checked,
    row125_good231_checked,
    row125_good232_checked, Bool.true_and]

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row125_goods_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row125_registered :
    decide (row125.height ∈ heightCertificateData) = true := by
  decide +kernel

theorem row125_small_checked :
    coverCheck (2 * row125.height.i + 2) (row125.height.i * (row125.height.i - 1) - 1)
      (row125.goods.map goodSegmentBounds) = true := by
  decide +kernel

theorem row125_layerCover_checked :
    coverCheck (row125.height.i * (row125.height.i - 1)) (row125.height.n0 - 1)
      (row125.layers.map CoverLayer.bounds) = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row125_registered
#print axioms B699LowIndex.LowIndexLean513dc7cc.row125_small_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row125_layerCover_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row125_bounds : List NatInterval :=
  [(252, 375), (376, 497), (498, 615), (616, 737), (738, 857), (858, 981), (982, 1101), (1102, 1221), (1222, 1341), (1342, 1451), (1452, 1575), (1576, 1695), (1696, 1817), (1818, 1935), (1936, 2057), (2058, 2177), (2178, 2285), (2286, 2405), (2406, 2523), (2524, 2645), (2646, 2757), (2758, 2877), (2878, 2985), (2986, 3095), (3096, 3213), (3214, 3333), (3334, 3455), (3456, 3573), (3574, 3695), (3696, 3815), (3816, 3927), (3928, 4047), (4048, 4151), (4152, 4263), (4264, 4385), (4386, 4497), (4498, 4617), (4618, 4727), (4728, 4847), (4848, 4955), (4956, 5075), (5076, 5183), (5184, 5303), (5304, 5427), (5428, 5543), (5544, 5655), (5656, 5777), (5778, 5873), (5874, 5993), (5994, 6111), (6112, 6225), (6226, 6345), (6346, 6467), (6468, 6575), (6576, 6695), (6696, 6815), (6816, 6927), (6928, 7041), (7042, 7163), (7164, 7283), (7284, 7407), (7408, 7517), (7518, 7641), (7642, 7763), (7764, 7883), (7884, 8007), (8008, 8117), (8118, 8241), (8242, 8361), (8362, 8477), (8478, 8591), (8592, 8705), (8706, 8823), (8824, 8945), (8946, 9065), (9066, 9183), (9184, 9305), (9306, 9417), (9418, 9537), (9538, 9657), (9658, 9773), (9774, 9893), (9894, 10011), (10012, 10133), (10134, 10257), (10258, 10377), (10378, 10493), (10494, 10611), (10612, 10731), (10732, 10853), (10854, 10977), (10978, 11097), (11098, 11217), (11218, 11337), (11338, 11453), (11454, 11571), (11572, 11675), (11676, 11781), (11782, 11903), (11904, 12027), (12028, 12135), (12136, 12243), (12244, 12365), (12366, 12471), (12472, 12581), (12582, 12701), (12702, 12821), (12822, 12945), (12946, 13065), (13066, 13187), (13188, 13311), (13312, 13433), (13434, 13545), (13546, 13661), (13662, 13773), (13774, 13887), (13888, 14007), (14008, 14123), (14124, 14231), (14232, 14345), (14346, 14465), (14466, 14585), (14586, 14687), (14688, 14807), (14808, 14921), (14922, 15021), (15022, 15141), (15142, 15263), (15264, 15387), (15388, 15503), (15987, 16096), (16384, 16505), (16506, 16508), (16810, 16911), (16912, 16934), (17405, 17525), (17526, 17532), (17576, 17620), (17672, 17700), (18490, 18605), (18606, 18615), (18634, 18741), (18742, 18758), (18818, 18847), (19208, 19290), (19663, 19785), (19786, 19807), (19881, 19897), (19965, 20005), (20172, 20285), (20286, 20288), (20402, 20463), (20480, 20526), (20535, 20657), (20658, 20659), (20667, 20701), (21296, 21407), (21408, 21420), (21870, 21987), (21988, 22028), (22090, 22094), (22188, 22214), (22445, 22450), (22472, 22593), (22594, 22596), (22627, 22652), (23763, 23885), (23886, 23886), (24037, 24153), (24154, 24161), (24167, 24181), (24334, 24453), (24454, 24491), (24576, 24689), (25215, 25313), (25314, 25339), (26364, 26368), (26411, 26488), (26508, 26535), (26624, 26632), (26645, 26748), (26934, 27020), (27556, 27560), (27848, 27859), (28577, 28697), (28698, 28701), (28717, 28796), (28812, 28841), (29584, 29602), (29791, 29892), (30618, 30717), (30718, 30742), (30758, 30844), (30926, 30999), (31213, 31317), (31318, 31337), (31423, 31453), (32805, 32892), (33708, 33738), (34347, 34461), (34462, 34515), (36517, 36621), (36622, 36625), (37303, 37334), (38307, 38415), (39366, 39428), (40401, 40452), (40960, 41055), (45369, 45377), (47526, 47645), (47646, 47648), (48013, 48085), (48778, 48792), (49152, 49254), (50421, 50534), (51076, 51129), (53290, 53372), (55451, 55565), (55566, 55571), (57245, 57246), (57344, 57369), (58619, 58688), (59049, 59080), (65610, 65660), (68694, 68714), (68921, 69014), (71289, 71411), (71412, 71413), (73205, 73291), (89383, 89497), (98415, 98428), (137842, 137905), (148955, 149001)]

theorem row125_bounds_eq : row125.goods.map goodSegmentBounds = row125_bounds := by
  rfl

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row125_bounds_eq

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row125_layer000_intervals : List ColouredInterval :=
  [(2, 16384, 16508), (2, 17408, 17532), (2, 16384, 16508), (2, 18432, 18556), (2, 20480, 20604), (2, 22528, 22652), (2, 24576, 24700), (2, 26624, 26748), (2, 28672, 28796), (2, 30720, 30844), (2, 16384, 16508), (2, 20480, 20604), (2, 24576, 24700), (2, 28672, 28796), (2, 16384, 16508), (2, 24576, 24700), (2, 16384, 16508), (3, 17496, 17620), (3, 19683, 19807), (3, 21870, 21994), (3, 24057, 24181), (3, 26244, 26368), (3, 28431, 28555), (3, 30618, 30742), (3, 19683, 19807), (3, 26244, 26368), (3, 19683, 19807), (7, 16807, 16931), (7, 19208, 19332), (7, 21609, 21733), (7, 24010, 24134), (7, 26411, 26535), (7, 28812, 28936), (7, 16807, 16931), (11, 15972, 16096), (11, 17303, 17427), (11, 18634, 18758), (11, 19965, 20089), (11, 21296, 21420), (11, 22627, 22751), (11, 29282, 29406), (13, 15500, 15503), (13, 17576, 17700), (13, 19773, 19897), (13, 21970, 22094), (13, 24167, 24291), (13, 26364, 26488), (13, 28561, 28685), (13, 30758, 30882), (13, 28561, 28685), (17, 19652, 19776), (17, 24565, 24689), (17, 29478, 29602), (19, 20577, 20701), (19, 27436, 27560), (23, 24334, 24458), (29, 24389, 24513), (31, 15500, 15500), (31, 16337, 16461), (31, 29791, 29915), (37, 16428, 16552), (37, 17797, 17921), (37, 19166, 19290), (37, 20535, 20659), (37, 21904, 22028), (37, 23273, 23397), (41, 16810, 16934), (41, 18491, 18615), (41, 20172, 20296), (41, 21853, 21977), (41, 23534, 23658), (41, 25215, 25339), (41, 26896, 27020), (41, 28577, 28701), (43, 16641, 16765), (43, 18490, 18614), (43, 20339, 20463), (43, 22188, 22312), (43, 24037, 24161), (43, 25886, 26010), (43, 27735, 27859), (43, 29584, 29708), (47, 15500, 15587), (47, 17672, 17796), (47, 19881, 20005), (47, 22090, 22214), (47, 24299, 24423), (47, 26508, 26632), (47, 28717, 28841), (47, 30926, 30999), (53, 16854, 16978), (53, 19663, 19787), (53, 22472, 22596), (53, 25281, 25405), (53, 28090, 28214), (53, 30899, 30999), (59, 17405, 17529), (59, 20886, 21010), (59, 24367, 24491), (59, 27848, 27972), (61, 18605, 18729), (61, 22326, 22450), (61, 26047, 26171), (61, 29768, 29892), (67, 17956, 18080), (67, 22445, 22569), (67, 26934, 27058), (71, 20164, 20288), (71, 25205, 25329), (71, 30246, 30370), (73, 15987, 16111), (73, 21316, 21440), (73, 26645, 26769), (79, 18723, 18847), (79, 24964, 25088), (83, 20667, 20791), (83, 27556, 27680), (89, 15842, 15966), (89, 23763, 23887), (97, 18818, 18942), (97, 28227, 28351), (101, 20402, 20526), (101, 30603, 30727), (103, 21218, 21342), (107, 22898, 23022), (109, 23762, 23886), (113, 25538, 25662)]

def row125_layer000_block000 : List ColouredInterval :=
  [(2, 16384, 16508), (2, 17408, 17532), (2, 16384, 16508), (2, 18432, 18556), (2, 20480, 20604), (2, 22528, 22652), (2, 24576, 24700), (2, 26624, 26748), (2, 28672, 28796), (2, 30720, 30844), (2, 16384, 16508), (2, 20480, 20604), (2, 24576, 24700), (2, 28672, 28796), (2, 16384, 16508), (2, 24576, 24700)]

def row125_layer000_block001 : List ColouredInterval :=
  [(2, 16384, 16508), (3, 17496, 17620), (3, 19683, 19807), (3, 21870, 21994), (3, 24057, 24181), (3, 26244, 26368), (3, 28431, 28555), (3, 30618, 30742), (3, 19683, 19807), (3, 26244, 26368), (3, 19683, 19807), (7, 16807, 16931), (7, 19208, 19332), (7, 21609, 21733), (7, 24010, 24134), (7, 26411, 26535)]

def row125_layer000_block002 : List ColouredInterval :=
  [(7, 28812, 28936), (7, 16807, 16931), (11, 15972, 16096), (11, 17303, 17427), (11, 18634, 18758), (11, 19965, 20089), (11, 21296, 21420), (11, 22627, 22751), (11, 29282, 29406), (13, 15500, 15503), (13, 17576, 17700), (13, 19773, 19897), (13, 21970, 22094), (13, 24167, 24291), (13, 26364, 26488), (13, 28561, 28685)]

def row125_layer000_block003 : List ColouredInterval :=
  [(13, 30758, 30882), (13, 28561, 28685), (17, 19652, 19776), (17, 24565, 24689), (17, 29478, 29602), (19, 20577, 20701), (19, 27436, 27560), (23, 24334, 24458), (29, 24389, 24513), (31, 15500, 15500), (31, 16337, 16461), (31, 29791, 29915), (37, 16428, 16552), (37, 17797, 17921), (37, 19166, 19290), (37, 20535, 20659)]

def row125_layer000_block004 : List ColouredInterval :=
  [(37, 21904, 22028), (37, 23273, 23397), (41, 16810, 16934), (41, 18491, 18615), (41, 20172, 20296), (41, 21853, 21977), (41, 23534, 23658), (41, 25215, 25339), (41, 26896, 27020), (41, 28577, 28701), (43, 16641, 16765), (43, 18490, 18614), (43, 20339, 20463), (43, 22188, 22312), (43, 24037, 24161), (43, 25886, 26010)]

def row125_layer000_block005 : List ColouredInterval :=
  [(43, 27735, 27859), (43, 29584, 29708), (47, 15500, 15587), (47, 17672, 17796), (47, 19881, 20005), (47, 22090, 22214), (47, 24299, 24423), (47, 26508, 26632), (47, 28717, 28841), (47, 30926, 30999), (53, 16854, 16978), (53, 19663, 19787), (53, 22472, 22596), (53, 25281, 25405), (53, 28090, 28214), (53, 30899, 30999)]

def row125_layer000_block006 : List ColouredInterval :=
  [(59, 17405, 17529), (59, 20886, 21010), (59, 24367, 24491), (59, 27848, 27972), (61, 18605, 18729), (61, 22326, 22450), (61, 26047, 26171), (61, 29768, 29892), (67, 17956, 18080), (67, 22445, 22569), (67, 26934, 27058), (71, 20164, 20288), (71, 25205, 25329), (71, 30246, 30370), (73, 15987, 16111), (73, 21316, 21440)]

def row125_layer000_block007 : List ColouredInterval :=
  [(73, 26645, 26769), (79, 18723, 18847), (79, 24964, 25088), (83, 20667, 20791), (83, 27556, 27680), (89, 15842, 15966), (89, 23763, 23887), (97, 18818, 18942), (97, 28227, 28351), (101, 20402, 20526), (101, 30603, 30727), (103, 21218, 21342), (107, 22898, 23022), (109, 23762, 23886), (113, 25538, 25662)]

def row125_layer000_chunks : List (List ColouredInterval) :=
  [row125_layer000_block000, row125_layer000_block001, row125_layer000_block002, row125_layer000_block003, row125_layer000_block004, row125_layer000_block005, row125_layer000_block006, row125_layer000_block007]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row125_layer000_intervals

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row125_layer000_arithmetic : LayerArithmeticValid row125.height { lower := 15500, upper := 31000, M := 17 } := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row125_layer000_arithmetic

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row125_layer000_enumeration :
    activePowerIntervalList 125 17 15500 31000 = row125_layer000_intervals := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row125_layer000_enumeration

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row125_layer000_pairs000 :
    row125_layer000_block000.all (fun I => row125_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row125_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row125_layer000_pairs000

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row125_layer000_pairs001 :
    row125_layer000_block001.all (fun I => row125_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row125_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row125_layer000_pairs001

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row125_layer000_pairs002 :
    row125_layer000_block002.all (fun I => row125_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row125_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row125_layer000_pairs002

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row125_layer000_pairs003 :
    row125_layer000_block003.all (fun I => row125_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row125_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row125_layer000_pairs003

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row125_layer000_pairs004 :
    row125_layer000_block004.all (fun I => row125_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row125_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row125_layer000_pairs004

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row125_layer000_pairs005 :
    row125_layer000_block005.all (fun I => row125_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row125_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row125_layer000_pairs005

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row125_layer000_pairs006 :
    row125_layer000_block006.all (fun I => row125_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row125_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row125_layer000_pairs006

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row125_layer000_pairs007 :
    row125_layer000_block007.all (fun I => row125_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row125_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row125_layer000_pairs007

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row125_layer000_chunks_eq : row125_layer000_chunks.flatten = row125_layer000_intervals := by
  rfl

theorem row125_layer000_pairs : pairCoverCheck row125_layer000_intervals row125_bounds = true := by
  apply pairCoverCheck_of_chunks row125_layer000_chunks_eq
  intro block hblock
  simp only [row125_layer000_chunks, List.mem_cons, List.mem_nil_iff, or_false] at hblock
  rcases hblock with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
  · exact row125_layer000_pairs000
  · exact row125_layer000_pairs001
  · exact row125_layer000_pairs002
  · exact row125_layer000_pairs003
  · exact row125_layer000_pairs004
  · exact row125_layer000_pairs005
  · exact row125_layer000_pairs006
  · exact row125_layer000_pairs007

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row125_layer000_chunks_eq
#print axioms B699LowIndex.LowIndexLean513dc7cc.row125_layer000_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row125_layer000_checked :
    coverLayerCheck row125.height row125.goods { lower := 15500, upper := 31000, M := 17 } = true := by
  exact coverLayerCheck_of_parts row125_layer000_arithmetic row125_layer000_enumeration row125_bounds_eq row125_layer000_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row125_layer000_checked

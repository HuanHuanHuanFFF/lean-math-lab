import research.tasks.«B699-Binomial».runs.«20260909-low-index-structure-b41a5a63».lean.FiniteCover

set_option maxRecDepth 65536
set_option maxHeartbeats 0
set_option exponentiation.threshold 1000000

namespace B699LowIndex

def row124_height : HeightCertificateDatum := { i := 124, r := 41, s := 87, n0Power10 := 8 }

def row124_goods : List GoodSegment := [
  { lower := 250, upper := 364, witness := RowWitness.topPrime 241 },
  { lower := 365, upper := 482, witness := RowWitness.topPrime 359 },
  { lower := 483, upper := 602, witness := RowWitness.topPrime 479 },
  { lower := 603, upper := 724, witness := RowWitness.topPrime 601 },
  { lower := 725, upper := 842, witness := RowWitness.topPrime 719 },
  { lower := 843, upper := 962, witness := RowWitness.topPrime 839 },
  { lower := 963, upper := 1076, witness := RowWitness.topPrime 953 },
  { lower := 1077, upper := 1192, witness := RowWitness.topPrime 1069 },
  { lower := 1193, upper := 1316, witness := RowWitness.topPrime 1193 },
  { lower := 1317, upper := 1430, witness := RowWitness.topPrime 1307 },
  { lower := 1431, upper := 1552, witness := RowWitness.topPrime 1429 },
  { lower := 1553, upper := 1676, witness := RowWitness.topPrime 1553 },
  { lower := 1677, upper := 1792, witness := RowWitness.topPrime 1669 },
  { lower := 1793, upper := 1912, witness := RowWitness.topPrime 1789 },
  { lower := 1913, upper := 2036, witness := RowWitness.topPrime 1913 },
  { lower := 2037, upper := 2152, witness := RowWitness.topPrime 2029 },
  { lower := 2153, upper := 2276, witness := RowWitness.topPrime 2153 },
  { lower := 2277, upper := 2396, witness := RowWitness.topPrime 2273 },
  { lower := 2397, upper := 2516, witness := RowWitness.topPrime 2393 },
  { lower := 2517, upper := 2626, witness := RowWitness.topPrime 2503 },
  { lower := 2627, upper := 2744, witness := RowWitness.topPrime 2621 },
  { lower := 2745, upper := 2864, witness := RowWitness.topPrime 2741 },
  { lower := 2865, upper := 2984, witness := RowWitness.topPrime 2861 },
  { lower := 2985, upper := 3094, witness := RowWitness.topPrime 2971 },
  { lower := 3095, upper := 3212, witness := RowWitness.topPrime 3089 },
  { lower := 3213, upper := 3332, witness := RowWitness.topPrime 3209 },
  { lower := 3333, upper := 3454, witness := RowWitness.topPrime 3331 },
  { lower := 3455, upper := 3572, witness := RowWitness.topPrime 3449 },
  { lower := 3573, upper := 3694, witness := RowWitness.topPrime 3571 },
  { lower := 3695, upper := 3814, witness := RowWitness.topPrime 3691 },
  { lower := 3815, upper := 3926, witness := RowWitness.topPrime 3803 },
  { lower := 3927, upper := 4046, witness := RowWitness.topPrime 3923 },
  { lower := 4047, upper := 4150, witness := RowWitness.topPrime 4027 },
  { lower := 4151, upper := 4262, witness := RowWitness.topPrime 4139 },
  { lower := 4263, upper := 4384, witness := RowWitness.topPrime 4261 },
  { lower := 4385, upper := 4496, witness := RowWitness.topPrime 4373 },
  { lower := 4497, upper := 4616, witness := RowWitness.topPrime 4493 },
  { lower := 4617, upper := 4726, witness := RowWitness.topPrime 4603 },
  { lower := 4727, upper := 4846, witness := RowWitness.topPrime 4723 },
  { lower := 4847, upper := 4954, witness := RowWitness.topPrime 4831 },
  { lower := 4955, upper := 5074, witness := RowWitness.topPrime 4951 },
  { lower := 5075, upper := 5182, witness := RowWitness.topPrime 5059 },
  { lower := 5183, upper := 5302, witness := RowWitness.topPrime 5179 },
  { lower := 5303, upper := 5426, witness := RowWitness.topPrime 5303 },
  { lower := 5427, upper := 5542, witness := RowWitness.topPrime 5419 },
  { lower := 5543, upper := 5654, witness := RowWitness.topPrime 5531 },
  { lower := 5655, upper := 5776, witness := RowWitness.topPrime 5653 },
  { lower := 5777, upper := 5872, witness := RowWitness.topPrime 5749 },
  { lower := 5873, upper := 5992, witness := RowWitness.topPrime 5869 },
  { lower := 5993, upper := 6110, witness := RowWitness.topPrime 5987 },
  { lower := 6111, upper := 6224, witness := RowWitness.topPrime 6101 },
  { lower := 6225, upper := 6344, witness := RowWitness.topPrime 6221 },
  { lower := 6345, upper := 6466, witness := RowWitness.topPrime 6343 },
  { lower := 6467, upper := 6574, witness := RowWitness.topPrime 6451 },
  { lower := 6575, upper := 6694, witness := RowWitness.topPrime 6571 },
  { lower := 6695, upper := 6814, witness := RowWitness.topPrime 6691 },
  { lower := 6815, upper := 6926, witness := RowWitness.topPrime 6803 },
  { lower := 6927, upper := 7040, witness := RowWitness.topPrime 6917 },
  { lower := 7041, upper := 7162, witness := RowWitness.topPrime 7039 },
  { lower := 7163, upper := 7282, witness := RowWitness.topPrime 7159 },
  { lower := 7283, upper := 7406, witness := RowWitness.topPrime 7283 },
  { lower := 7407, upper := 7516, witness := RowWitness.topPrime 7393 },
  { lower := 7517, upper := 7640, witness := RowWitness.topPrime 7517 },
  { lower := 7641, upper := 7762, witness := RowWitness.topPrime 7639 },
  { lower := 7763, upper := 7882, witness := RowWitness.topPrime 7759 },
  { lower := 7883, upper := 8006, witness := RowWitness.topPrime 7883 },
  { lower := 8007, upper := 8116, witness := RowWitness.topPrime 7993 },
  { lower := 8117, upper := 8240, witness := RowWitness.topPrime 8117 },
  { lower := 8241, upper := 8360, witness := RowWitness.topPrime 8237 },
  { lower := 8361, upper := 8476, witness := RowWitness.topPrime 8353 },
  { lower := 8477, upper := 8590, witness := RowWitness.topPrime 8467 },
  { lower := 8591, upper := 8704, witness := RowWitness.topPrime 8581 },
  { lower := 8705, upper := 8822, witness := RowWitness.topPrime 8699 },
  { lower := 8823, upper := 8944, witness := RowWitness.topPrime 8821 },
  { lower := 8945, upper := 9064, witness := RowWitness.topPrime 8941 },
  { lower := 9065, upper := 9182, witness := RowWitness.topPrime 9059 },
  { lower := 9183, upper := 9304, witness := RowWitness.topPrime 9181 },
  { lower := 9305, upper := 9416, witness := RowWitness.topPrime 9293 },
  { lower := 9417, upper := 9536, witness := RowWitness.topPrime 9413 },
  { lower := 9537, upper := 9656, witness := RowWitness.topPrime 9533 },
  { lower := 9657, upper := 9772, witness := RowWitness.topPrime 9649 },
  { lower := 9773, upper := 9892, witness := RowWitness.topPrime 9769 },
  { lower := 9893, upper := 10010, witness := RowWitness.topPrime 9887 },
  { lower := 10011, upper := 10132, witness := RowWitness.topPrime 10009 },
  { lower := 10133, upper := 10256, witness := RowWitness.topPrime 10133 },
  { lower := 10257, upper := 10376, witness := RowWitness.topPrime 10253 },
  { lower := 10377, upper := 10492, witness := RowWitness.topPrime 10369 },
  { lower := 10493, upper := 10610, witness := RowWitness.topPrime 10487 },
  { lower := 10611, upper := 10730, witness := RowWitness.topPrime 10607 },
  { lower := 10731, upper := 10852, witness := RowWitness.topPrime 10729 },
  { lower := 10853, upper := 10976, witness := RowWitness.topPrime 10853 },
  { lower := 10977, upper := 11096, witness := RowWitness.topPrime 10973 },
  { lower := 11097, upper := 11216, witness := RowWitness.topPrime 11093 },
  { lower := 11217, upper := 11336, witness := RowWitness.topPrime 11213 },
  { lower := 11337, upper := 11452, witness := RowWitness.topPrime 11329 },
  { lower := 11453, upper := 11570, witness := RowWitness.topPrime 11447 },
  { lower := 11571, upper := 11674, witness := RowWitness.topPrime 11551 },
  { lower := 11675, upper := 11780, witness := RowWitness.topPrime 11657 },
  { lower := 11781, upper := 11902, witness := RowWitness.topPrime 11779 },
  { lower := 11903, upper := 12026, witness := RowWitness.topPrime 11903 },
  { lower := 12027, upper := 12134, witness := RowWitness.topPrime 12011 },
  { lower := 12135, upper := 12242, witness := RowWitness.topPrime 12119 },
  { lower := 12243, upper := 12364, witness := RowWitness.topPrime 12241 },
  { lower := 12365, upper := 12470, witness := RowWitness.topPrime 12347 },
  { lower := 12471, upper := 12580, witness := RowWitness.topPrime 12457 },
  { lower := 12581, upper := 12700, witness := RowWitness.topPrime 12577 },
  { lower := 12701, upper := 12820, witness := RowWitness.topPrime 12697 },
  { lower := 12821, upper := 12944, witness := RowWitness.topPrime 12821 },
  { lower := 12945, upper := 13064, witness := RowWitness.topPrime 12941 },
  { lower := 13065, upper := 13186, witness := RowWitness.topPrime 13063 },
  { lower := 13187, upper := 13310, witness := RowWitness.topPrime 13187 },
  { lower := 13311, upper := 13432, witness := RowWitness.topPrime 13309 },
  { lower := 13433, upper := 13544, witness := RowWitness.topPrime 13421 },
  { lower := 13545, upper := 13660, witness := RowWitness.topPrime 13537 },
  { lower := 13661, upper := 13772, witness := RowWitness.topPrime 13649 },
  { lower := 13773, upper := 13886, witness := RowWitness.topPrime 13763 },
  { lower := 13887, upper := 14006, witness := RowWitness.topPrime 13883 },
  { lower := 14007, upper := 14122, witness := RowWitness.topPrime 13999 },
  { lower := 14123, upper := 14230, witness := RowWitness.topPrime 14107 },
  { lower := 14231, upper := 14344, witness := RowWitness.topPrime 14221 },
  { lower := 14345, upper := 14464, witness := RowWitness.topPrime 14341 },
  { lower := 14465, upper := 14584, witness := RowWitness.topPrime 14461 },
  { lower := 14585, upper := 14686, witness := RowWitness.topPrime 14563 },
  { lower := 14687, upper := 14806, witness := RowWitness.topPrime 14683 },
  { lower := 14807, upper := 14920, witness := RowWitness.topPrime 14797 },
  { lower := 14921, upper := 15020, witness := RowWitness.topPrime 14897 },
  { lower := 15021, upper := 15140, witness := RowWitness.topPrime 15017 },
  { lower := 15141, upper := 15252, witness := RowWitness.topPrime 15139 },
  { lower := 15379, upper := 15432, witness := RowWitness.topPrime 15377 },
  { lower := 15463, upper := 15502, witness := RowWitness.topPrime 15461 },
  { lower := 15987, upper := 16095, witness := RowWitness.topPrime 15973 },
  { lower := 16428, upper := 16507, witness := RowWitness.topPrime 16427 },
  { lower := 16810, upper := 16910, witness := RowWitness.topPrime 16787 },
  { lower := 16911, upper := 16933, witness := RowWitness.topPrime 16903 },
  { lower := 17405, upper := 17426, witness := RowWitness.topPrime 17401 },
  { lower := 17496, upper := 17528, witness := RowWitness.topPrime 17491 },
  { lower := 17576, upper := 17619, witness := RowWitness.topPrime 17573 },
  { lower := 17672, upper := 17699, witness := RowWitness.topPrime 17669 },
  { lower := 18491, upper := 18604, witness := RowWitness.topPrime 18481 },
  { lower := 18605, upper := 18614, witness := RowWitness.topPrime 18593 },
  { lower := 18634, upper := 18740, witness := RowWitness.topPrime 18617 },
  { lower := 18741, upper := 18854, witness := RowWitness.topPrime 18731 },
  { lower := 18855, upper := 18873, witness := RowWitness.topPrime 18839 },
  { lower := 19208, upper := 19289, witness := RowWitness.topPrime 19207 },
  { lower := 19663, upper := 19784, witness := RowWitness.topPrime 19661 },
  { lower := 19785, upper := 19806, witness := RowWitness.topPrime 19777 },
  { lower := 19881, upper := 19896, witness := RowWitness.topPrime 19867 },
  { lower := 19965, upper := 20004, witness := RowWitness.topPrime 19963 },
  { lower := 20172, upper := 20284, witness := RowWitness.topPrime 20161 },
  { lower := 20285, upper := 20287, witness := RowWitness.topPrime 20269 },
  { lower := 20402, upper := 20462, witness := RowWitness.topPrime 20399 },
  { lower := 20577, upper := 20658, witness := RowWitness.topPrime 20563 },
  { lower := 20667, upper := 20700, witness := RowWitness.topPrime 20663 },
  { lower := 21296, upper := 21406, witness := RowWitness.topPrime 21283 },
  { lower := 21407, upper := 21419, witness := RowWitness.topPrime 21407 },
  { lower := 21870, upper := 21986, witness := RowWitness.topPrime 21863 },
  { lower := 21987, upper := 22027, witness := RowWitness.topPrime 21977 },
  { lower := 22090, upper := 22093, witness := RowWitness.topPrime 22079 },
  { lower := 22188, upper := 22213, witness := RowWitness.topPrime 22171 },
  { lower := 22445, upper := 22449, witness := RowWitness.topPrime 22441 },
  { lower := 22472, upper := 22568, witness := RowWitness.topPrime 22469 },
  { lower := 23763, upper := 23884, witness := RowWitness.topPrime 23761 },
  { lower := 23885, upper := 23885, witness := RowWitness.topPrime 23879 },
  { lower := 24010, upper := 24130, witness := RowWitness.topPrime 24007 },
  { lower := 24131, upper := 24160, witness := RowWitness.topPrime 24121 },
  { lower := 24167, upper := 24180, witness := RowWitness.topPrime 24151 },
  { lower := 24334, upper := 24452, witness := RowWitness.topPrime 24329 },
  { lower := 24453, upper := 24490, witness := RowWitness.topPrime 24443 },
  { lower := 24576, upper := 24694, witness := RowWitness.topPrime 24571 },
  { lower := 24695, upper := 24699, witness := RowWitness.topPrime 24691 },
  { lower := 25000, upper := 25087, witness := RowWitness.topPrime 24989 },
  { lower := 25215, upper := 25312, witness := RowWitness.topPrime 25189 },
  { lower := 25313, upper := 25338, witness := RowWitness.topPrime 25309 },
  { lower := 26364, upper := 26367, witness := RowWitness.topPrime 26357 },
  { lower := 26411, upper := 26487, witness := RowWitness.topPrime 26407 },
  { lower := 26508, upper := 26534, witness := RowWitness.topPrime 26501 },
  { lower := 26934, upper := 27019, witness := RowWitness.topPrime 26927 },
  { lower := 27556, upper := 27559, witness := RowWitness.topPrime 27551 },
  { lower := 27848, upper := 27858, witness := RowWitness.topPrime 27847 },
  { lower := 28125, upper := 28213, witness := RowWitness.topPrime 28123 },
  { lower := 28227, upper := 28248, witness := RowWitness.topPrime 28219 },
  { lower := 28577, upper := 28684, witness := RowWitness.topPrime 28573 },
  { lower := 28812, upper := 28840, witness := RowWitness.topPrime 28807 },
  { lower := 29584, upper := 29601, witness := RowWitness.topPrime 29581 },
  { lower := 30258, upper := 30369, witness := RowWitness.topPrime 30253 },
  { lower := 30618, upper := 30716, witness := RowWitness.topPrime 30593 },
  { lower := 30717, upper := 30726, witness := RowWitness.topPrime 30713 },
  { lower := 30926, upper := 31022, witness := RowWitness.topPrime 30911 },
  { lower := 31213, upper := 31316, witness := RowWitness.topPrime 31193 },
  { lower := 31317, upper := 31373, witness := RowWitness.topPrime 31307 },
  { lower := 31423, upper := 31452, witness := RowWitness.topPrime 31397 },
  { lower := 32805, upper := 32891, witness := RowWitness.topPrime 32803 },
  { lower := 33708, upper := 33737, witness := RowWitness.topPrime 33703 },
  { lower := 34347, upper := 34460, witness := RowWitness.topPrime 34337 },
  { lower := 34461, upper := 34514, witness := RowWitness.topPrime 34457 },
  { lower := 36517, upper := 36620, witness := RowWitness.topPrime 36497 },
  { lower := 36621, upper := 36624, witness := RowWitness.topPrime 36607 },
  { lower := 37303, upper := 37333, witness := RowWitness.topPrime 37277 },
  { lower := 37500, upper := 37569, witness := RowWitness.topPrime 37493 },
  { lower := 38307, upper := 38414, witness := RowWitness.topPrime 38303 },
  { lower := 39326, upper := 39446, witness := RowWitness.topPrime 39323 },
  { lower := 39447, upper := 39449, witness := RowWitness.topPrime 39443 },
  { lower := 40401, upper := 40451, witness := RowWitness.topPrime 40387 },
  { lower := 43750, upper := 43810, witness := RowWitness.topPrime 43721 },
  { lower := 45369, upper := 45376, witness := RowWitness.topPrime 45361 },
  { lower := 47526, upper := 47644, witness := RowWitness.topPrime 47521 },
  { lower := 47645, upper := 47647, witness := RowWitness.topPrime 47639 },
  { lower := 48013, upper := 48084, witness := RowWitness.topPrime 47981 },
  { lower := 48734, upper := 48856, witness := RowWitness.topPrime 48733 },
  { lower := 48857, upper := 48857, witness := RowWitness.topPrime 48857 },
  { lower := 49152, upper := 49253, witness := RowWitness.topPrime 49139 },
  { lower := 50421, upper := 50533, witness := RowWitness.topPrime 50417 },
  { lower := 51076, upper := 51128, witness := RowWitness.topPrime 51071 },
  { lower := 55451, upper := 55564, witness := RowWitness.topPrime 55441 },
  { lower := 55565, upper := 55570, witness := RowWitness.topPrime 55547 },
  { lower := 57245, upper := 57245, witness := RowWitness.topPrime 57241 },
  { lower := 58619, upper := 58687, witness := RowWitness.topPrime 58613 },
  { lower := 59049, upper := 59079, witness := RowWitness.topPrime 59029 },
  { lower := 62500, upper := 62533, witness := RowWitness.topPrime 62497 },
  { lower := 65610, upper := 65659, witness := RowWitness.topPrime 65609 },
  { lower := 68651, upper := 68762, witness := RowWitness.topPrime 68639 },
  { lower := 68763, upper := 68774, witness := RowWitness.topPrime 68749 },
  { lower := 68921, upper := 69013, witness := RowWitness.topPrime 68917 },
  { lower := 71289, upper := 71410, witness := RowWitness.topPrime 71287 },
  { lower := 71411, upper := 71412, witness := RowWitness.topPrime 71411 },
  { lower := 73205, upper := 73290, witness := RowWitness.topPrime 73189 },
  { lower := 137842, upper := 137904, witness := RowWitness.topPrime 137831 }
]

def row124_layers : List CoverLayer := [
  { lower := 15252, upper := 30504, M := 18 },
  { lower := 30504, upper := 61008, M := 14 },
  { lower := 61008, upper := 122016, M := 11 },
  { lower := 122016, upper := 244032, M := 8 },
  { lower := 244032, upper := 488064, M := 7 },
  { lower := 488064, upper := 976128, M := 5 },
  { lower := 976128, upper := 1952256, M := 4 },
  { lower := 1952256, upper := 3904512, M := 3 },
  { lower := 3904512, upper := 7809024, M := 3 },
  { lower := 7809024, upper := 15618048, M := 2 },
  { lower := 15618048, upper := 31236096, M := 2 },
  { lower := 31236096, upper := 62472192, M := 1 },
  { lower := 62472192, upper := 100000000, M := 1 }
]

def row124 : FiniteCoverRow := {
  height := row124_height,
  goods := row124_goods,
  layers := row124_layers
}

theorem row124_registered :
    decide (row124.height ∈ heightCertificateData) = true := by
  decide +kernel

theorem row124_goods_checked :
    row124.goods.all (goodSegmentCheck row124.height.i row124.height.r row124.height.s) = true := by
  decide +kernel

theorem row124_small_checked :
    coverCheck (2 * row124.height.i + 2) (row124.height.i * (row124.height.i - 1) - 1)
      (row124.goods.map goodSegmentBounds) = true := by
  decide +kernel

theorem row124_layerCover_checked :
    coverCheck (row124.height.i * (row124.height.i - 1)) (row124.height.n0 - 1)
      (row124.layers.map CoverLayer.bounds) = true := by
  decide +kernel

theorem row124_layer000_checked :
    coverLayerCheck row124.height row124.goods { lower := 15252, upper := 30504, M := 18 } = true := by
  decide +kernel

theorem row124_layer001_checked :
    coverLayerCheck row124.height row124.goods { lower := 30504, upper := 61008, M := 14 } = true := by
  decide +kernel

theorem row124_layer002_checked :
    coverLayerCheck row124.height row124.goods { lower := 61008, upper := 122016, M := 11 } = true := by
  decide +kernel

theorem row124_layer003_checked :
    coverLayerCheck row124.height row124.goods { lower := 122016, upper := 244032, M := 8 } = true := by
  decide +kernel

theorem row124_layer004_checked :
    coverLayerCheck row124.height row124.goods { lower := 244032, upper := 488064, M := 7 } = true := by
  decide +kernel

theorem row124_layer005_checked :
    coverLayerCheck row124.height row124.goods { lower := 488064, upper := 976128, M := 5 } = true := by
  decide +kernel

theorem row124_layer006_checked :
    coverLayerCheck row124.height row124.goods { lower := 976128, upper := 1952256, M := 4 } = true := by
  decide +kernel

theorem row124_layer007_checked :
    coverLayerCheck row124.height row124.goods { lower := 1952256, upper := 3904512, M := 3 } = true := by
  decide +kernel

theorem row124_layer008_checked :
    coverLayerCheck row124.height row124.goods { lower := 3904512, upper := 7809024, M := 3 } = true := by
  decide +kernel

theorem row124_layer009_checked :
    coverLayerCheck row124.height row124.goods { lower := 7809024, upper := 15618048, M := 2 } = true := by
  decide +kernel

theorem row124_layer010_checked :
    coverLayerCheck row124.height row124.goods { lower := 15618048, upper := 31236096, M := 2 } = true := by
  decide +kernel

theorem row124_layer011_checked :
    coverLayerCheck row124.height row124.goods { lower := 31236096, upper := 62472192, M := 1 } = true := by
  decide +kernel

theorem row124_layer012_checked :
    coverLayerCheck row124.height row124.goods { lower := 62472192, upper := 100000000, M := 1 } = true := by
  decide +kernel

theorem row124_layers_checked :
    row124.layers.all (coverLayerCheck row124.height row124.goods) = true := by
  change List.all [
    { lower := 15252, upper := 30504, M := 18 },
    { lower := 30504, upper := 61008, M := 14 },
    { lower := 61008, upper := 122016, M := 11 },
    { lower := 122016, upper := 244032, M := 8 },
    { lower := 244032, upper := 488064, M := 7 },
    { lower := 488064, upper := 976128, M := 5 },
    { lower := 976128, upper := 1952256, M := 4 },
    { lower := 1952256, upper := 3904512, M := 3 },
    { lower := 3904512, upper := 7809024, M := 3 },
    { lower := 7809024, upper := 15618048, M := 2 },
    { lower := 15618048, upper := 31236096, M := 2 },
    { lower := 31236096, upper := 62472192, M := 1 },
    { lower := 62472192, upper := 100000000, M := 1 }
  ] (coverLayerCheck row124.height row124.goods) = true
  simp only [List.all_cons, List.all_nil,
    row124_layer000_checked,
    row124_layer001_checked,
    row124_layer002_checked,
    row124_layer003_checked,
    row124_layer004_checked,
    row124_layer005_checked,
    row124_layer006_checked,
    row124_layer007_checked,
    row124_layer008_checked,
    row124_layer009_checked,
    row124_layer010_checked,
    row124_layer011_checked,
    row124_layer012_checked,
    Bool.true_and]

theorem row124_checked : finiteCoverRowCheck row124 = true := by
  simp only [finiteCoverRowCheck, row124_registered, row124_goods_checked,
    row124_small_checked, row124_layerCover_checked, row124_layers_checked,
    Bool.true_and]

#print axioms B699LowIndex.row124_checked

end B699LowIndex

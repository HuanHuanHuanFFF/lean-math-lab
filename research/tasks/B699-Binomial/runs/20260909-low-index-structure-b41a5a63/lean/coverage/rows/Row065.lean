import research.tasks.«B699-Binomial».runs.«20260909-low-index-structure-b41a5a63».lean.FiniteCover

set_option maxRecDepth 65536
set_option maxHeartbeats 0
set_option exponentiation.threshold 1000000

namespace B699LowIndex

def row065_height : HeightCertificateDatum := { i := 65, r := 21, s := 45, n0Power10 := 11 }

def row065_goods : List GoodSegment := [
  { lower := 132, upper := 195, witness := RowWitness.topPrime 131 },
  { lower := 196, upper := 257, witness := RowWitness.topPrime 193 },
  { lower := 258, upper := 321, witness := RowWitness.topPrime 257 },
  { lower := 322, upper := 381, witness := RowWitness.topPrime 317 },
  { lower := 382, upper := 443, witness := RowWitness.topPrime 379 },
  { lower := 444, upper := 507, witness := RowWitness.topPrime 443 },
  { lower := 508, upper := 567, witness := RowWitness.topPrime 503 },
  { lower := 568, upper := 627, witness := RowWitness.topPrime 563 },
  { lower := 628, upper := 683, witness := RowWitness.topPrime 619 },
  { lower := 684, upper := 747, witness := RowWitness.topPrime 683 },
  { lower := 748, upper := 807, witness := RowWitness.topPrime 743 },
  { lower := 808, upper := 861, witness := RowWitness.topPrime 797 },
  { lower := 862, upper := 923, witness := RowWitness.topPrime 859 },
  { lower := 924, upper := 983, witness := RowWitness.topPrime 919 },
  { lower := 984, upper := 1047, witness := RowWitness.topPrime 983 },
  { lower := 1048, upper := 1103, witness := RowWitness.topPrime 1039 },
  { lower := 1104, upper := 1167, witness := RowWitness.topPrime 1103 },
  { lower := 1168, upper := 1227, witness := RowWitness.topPrime 1163 },
  { lower := 1228, upper := 1287, witness := RowWitness.topPrime 1223 },
  { lower := 1288, upper := 1347, witness := RowWitness.topPrime 1283 },
  { lower := 1348, upper := 1391, witness := RowWitness.topPrime 1327 },
  { lower := 1392, upper := 1445, witness := RowWitness.topPrime 1381 },
  { lower := 1446, upper := 1503, witness := RowWitness.topPrime 1439 },
  { lower := 1504, upper := 1563, witness := RowWitness.topPrime 1499 },
  { lower := 1564, upper := 1623, witness := RowWitness.topPrime 1559 },
  { lower := 1624, upper := 1685, witness := RowWitness.topPrime 1621 },
  { lower := 1686, upper := 1733, witness := RowWitness.topPrime 1669 },
  { lower := 1734, upper := 1797, witness := RowWitness.topPrime 1733 },
  { lower := 1798, upper := 1853, witness := RowWitness.topPrime 1789 },
  { lower := 1854, upper := 1911, witness := RowWitness.topPrime 1847 },
  { lower := 1912, upper := 1971, witness := RowWitness.topPrime 1907 },
  { lower := 1972, upper := 2015, witness := RowWitness.topPrime 1951 },
  { lower := 2016, upper := 2075, witness := RowWitness.topPrime 2011 },
  { lower := 2076, upper := 2133, witness := RowWitness.topPrime 2069 },
  { lower := 2134, upper := 2195, witness := RowWitness.topPrime 2131 },
  { lower := 2196, upper := 2243, witness := RowWitness.topPrime 2179 },
  { lower := 2244, upper := 2307, witness := RowWitness.topPrime 2243 },
  { lower := 2308, upper := 2361, witness := RowWitness.topPrime 2297 },
  { lower := 2362, upper := 2421, witness := RowWitness.topPrime 2357 },
  { lower := 2422, upper := 2481, witness := RowWitness.topPrime 2417 },
  { lower := 2482, upper := 2541, witness := RowWitness.topPrime 2477 },
  { lower := 2542, upper := 2603, witness := RowWitness.topPrime 2539 },
  { lower := 2604, upper := 2657, witness := RowWitness.topPrime 2593 },
  { lower := 2658, upper := 2721, witness := RowWitness.topPrime 2657 },
  { lower := 2722, upper := 2783, witness := RowWitness.topPrime 2719 },
  { lower := 2784, upper := 2841, witness := RowWitness.topPrime 2777 },
  { lower := 2842, upper := 2901, witness := RowWitness.topPrime 2837 },
  { lower := 2902, upper := 2961, witness := RowWitness.topPrime 2897 },
  { lower := 2962, upper := 3021, witness := RowWitness.topPrime 2957 },
  { lower := 3022, upper := 3083, witness := RowWitness.topPrime 3019 },
  { lower := 3084, upper := 3147, witness := RowWitness.topPrime 3083 },
  { lower := 3148, upper := 3201, witness := RowWitness.topPrime 3137 },
  { lower := 3202, upper := 3255, witness := RowWitness.topPrime 3191 },
  { lower := 3256, upper := 3317, witness := RowWitness.topPrime 3253 },
  { lower := 3318, upper := 3377, witness := RowWitness.topPrime 3313 },
  { lower := 3378, upper := 3437, witness := RowWitness.topPrime 3373 },
  { lower := 3438, upper := 3497, witness := RowWitness.topPrime 3433 },
  { lower := 3498, upper := 3555, witness := RowWitness.topPrime 3491 },
  { lower := 3556, upper := 3611, witness := RowWitness.topPrime 3547 },
  { lower := 3612, upper := 3671, witness := RowWitness.topPrime 3607 },
  { lower := 3672, upper := 3735, witness := RowWitness.topPrime 3671 },
  { lower := 3736, upper := 3797, witness := RowWitness.topPrime 3733 },
  { lower := 3798, upper := 3861, witness := RowWitness.topPrime 3797 },
  { lower := 3862, upper := 3917, witness := RowWitness.topPrime 3853 },
  { lower := 3918, upper := 3981, witness := RowWitness.topPrime 3917 },
  { lower := 3982, upper := 4031, witness := RowWitness.topPrime 3967 },
  { lower := 4032, upper := 4091, witness := RowWitness.topPrime 4027 },
  { lower := 4092, upper := 4155, witness := RowWitness.topPrime 4091 },
  { lower := 4156, upper := 4180, witness := RowWitness.topPrime 4153 },
  { lower := 4232, upper := 4269, witness := RowWitness.topPrime 4231 },
  { lower := 4335, upper := 4391, witness := RowWitness.topPrime 4327 },
  { lower := 4392, upper := 4455, witness := RowWitness.topPrime 4391 },
  { lower := 4456, upper := 4482, witness := RowWitness.topPrime 4451 },
  { lower := 4617, upper := 4667, witness := RowWitness.topPrime 4603 },
  { lower := 4668, upper := 4681, witness := RowWitness.topPrime 4663 },
  { lower := 4802, upper := 4865, witness := RowWitness.topPrime 4801 },
  { lower := 4866, upper := 4925, witness := RowWitness.topPrime 4861 },
  { lower := 4926, upper := 4928, witness := RowWitness.topPrime 4919 },
  { lower := 5046, upper := 5103, witness := RowWitness.topPrime 5039 },
  { lower := 5104, upper := 5118, witness := RowWitness.topPrime 5101 },
  { lower := 5120, upper := 5183, witness := RowWitness.topPrime 5119 },
  { lower := 5184, upper := 5184, witness := RowWitness.topPrime 5179 },
  { lower := 5202, upper := 5209, witness := RowWitness.topPrime 5197 },
  { lower := 5324, upper := 5387, witness := RowWitness.topPrime 5323 },
  { lower := 5388, upper := 5410, witness := RowWitness.topPrime 5387 },
  { lower := 5415, upper := 5440, witness := RowWitness.topPrime 5413 },
  { lower := 5476, upper := 5479, witness := RowWitness.topPrime 5471 },
  { lower := 5488, upper := 5547, witness := RowWitness.topPrime 5483 },
  { lower := 5548, upper := 5555, witness := RowWitness.topPrime 5531 },
  { lower := 5589, upper := 5611, witness := RowWitness.topPrime 5581 },
  { lower := 5618, upper := 5655, witness := RowWitness.topPrime 5591 },
  { lower := 5656, upper := 5682, witness := RowWitness.topPrime 5653 },
  { lower := 5776, upper := 5813, witness := RowWitness.topPrime 5749 },
  { lower := 5814, upper := 5877, witness := RowWitness.topPrime 5813 },
  { lower := 5878, upper := 5933, witness := RowWitness.topPrime 5869 },
  { lower := 5934, upper := 5951, witness := RowWitness.topPrime 5927 },
  { lower := 6075, upper := 6133, witness := RowWitness.topPrime 6073 },
  { lower := 6137, upper := 6139, witness := RowWitness.topPrime 6133 },
  { lower := 6144, upper := 6207, witness := RowWitness.topPrime 6143 },
  { lower := 6208, upper := 6208, witness := RowWitness.topPrime 6203 },
  { lower := 6348, upper := 6407, witness := RowWitness.topPrime 6343 },
  { lower := 6408, upper := 6422, witness := RowWitness.topPrime 6397 },
  { lower := 6517, upper := 6555, witness := RowWitness.topPrime 6491 },
  { lower := 6556, upper := 6581, witness := RowWitness.topPrime 6553 },
  { lower := 6647, upper := 6701, witness := RowWitness.topPrime 6637 },
  { lower := 6702, upper := 6719, witness := RowWitness.topPrime 6701 },
  { lower := 6727, upper := 6783, witness := RowWitness.topPrime 6719 },
  { lower := 6784, upper := 6791, witness := RowWitness.topPrime 6781 },
  { lower := 6845, upper := 6905, witness := RowWitness.topPrime 6841 },
  { lower := 6906, upper := 6963, witness := RowWitness.topPrime 6899 },
  { lower := 6964, upper := 7000, witness := RowWitness.topPrime 6961 },
  { lower := 7203, upper := 7257, witness := RowWitness.topPrime 7193 },
  { lower := 7258, upper := 7284, witness := RowWitness.topPrime 7253 },
  { lower := 7406, upper := 7457, witness := RowWitness.topPrime 7393 },
  { lower := 7458, upper := 7470, witness := RowWitness.topPrime 7457 },
  { lower := 7546, upper := 7605, witness := RowWitness.topPrime 7541 },
  { lower := 7606, upper := 7633, witness := RowWitness.topPrime 7603 },
  { lower := 7688, upper := 7744, witness := RowWitness.topPrime 7687 },
  { lower := 7935, upper := 7997, witness := RowWitness.topPrime 7933 },
  { lower := 7998, upper := 8006, witness := RowWitness.topPrime 7993 },
  { lower := 8019, upper := 8050, witness := RowWitness.topPrime 8017 },
  { lower := 8214, upper := 8273, witness := RowWitness.topPrime 8209 },
  { lower := 8274, upper := 8278, witness := RowWitness.topPrime 8273 },
  { lower := 8410, upper := 8453, witness := RowWitness.topPrime 8389 },
  { lower := 8454, upper := 8491, witness := RowWitness.topPrime 8447 },
  { lower := 8664, upper := 8727, witness := RowWitness.topPrime 8663 },
  { lower := 8728, upper := 8728, witness := RowWitness.topPrime 8719 },
  { lower := 8748, upper := 8768, witness := RowWitness.topPrime 8747 },
  { lower := 9025, upper := 9057, witness := RowWitness.topPrime 9013 },
  { lower := 9245, upper := 9305, witness := RowWitness.topPrime 9241 },
  { lower := 9306, upper := 9309, witness := RowWitness.topPrime 9293 },
  { lower := 9375, upper := 9381, witness := RowWitness.topPrime 9371 },
  { lower := 9522, upper := 9541, witness := RowWitness.topPrime 9521 },
  { lower := 9583, upper := 9586, witness := RowWitness.topPrime 9551 },
  { lower := 9604, upper := 9665, witness := RowWitness.topPrime 9601 },
  { lower := 9666, upper := 9668, witness := RowWitness.topPrime 9661 },
  { lower := 10086, upper := 10143, witness := RowWitness.topPrime 10079 },
  { lower := 10144, upper := 10150, witness := RowWitness.topPrime 10141 },
  { lower := 10240, upper := 10270, witness := RowWitness.topPrime 10223 },
  { lower := 10580, upper := 10631, witness := RowWitness.topPrime 10567 },
  { lower := 10632, upper := 10635, witness := RowWitness.topPrime 10631 },
  { lower := 10935, upper := 10973, witness := RowWitness.topPrime 10909 },
  { lower := 10974, upper := 10999, witness := RowWitness.topPrime 10973 },
  { lower := 11094, upper := 11157, witness := RowWitness.topPrime 11093 },
  { lower := 11158, upper := 11158, witness := RowWitness.topPrime 11149 },
  { lower := 11163, upper := 11173, witness := RowWitness.topPrime 11161 },
  { lower := 11264, upper := 11300, witness := RowWitness.topPrime 11261 },
  { lower := 11664, upper := 11702, witness := RowWitness.topPrime 11657 },
  { lower := 11774, upper := 11807, witness := RowWitness.topPrime 11743 },
  { lower := 11808, upper := 11838, witness := RowWitness.topPrime 11807 },
  { lower := 12005, upper := 12043, witness := RowWitness.topPrime 11987 },
  { lower := 12321, upper := 12352, witness := RowWitness.topPrime 12301 },
  { lower := 12500, upper := 12557, witness := RowWitness.topPrime 12497 },
  { lower := 13254, upper := 13289, witness := RowWitness.topPrime 13249 },
  { lower := 13310, upper := 13373, witness := RowWitness.topPrime 13309 },
  { lower := 13374, upper := 13374, witness := RowWitness.topPrime 13367 },
  { lower := 13454, upper := 13515, witness := RowWitness.topPrime 13451 },
  { lower := 13516, upper := 13518, witness := RowWitness.topPrime 13513 },
  { lower := 13718, upper := 13754, witness := RowWitness.topPrime 13711 },
  { lower := 14336, upper := 14361, witness := RowWitness.topPrime 14327 },
  { lower := 14415, upper := 14470, witness := RowWitness.topPrime 14411 },
  { lower := 14641, upper := 14644, witness := RowWitness.topPrime 14639 },
  { lower := 14792, upper := 14803, witness := RowWitness.topPrime 14783 },
  { lower := 15138, upper := 15193, witness := RowWitness.topPrime 15137 },
  { lower := 15360, upper := 15373, witness := RowWitness.topPrime 15359 },
  { lower := 15376, upper := 15424, witness := RowWitness.topPrime 15373 },
  { lower := 15979, upper := 16036, witness := RowWitness.topPrime 15973 },
  { lower := 16038, upper := 16043, witness := RowWitness.topPrime 16033 },
  { lower := 16384, upper := 16401, witness := RowWitness.topPrime 16381 },
  { lower := 16428, upper := 16448, witness := RowWitness.topPrime 16427 },
  { lower := 16810, upper := 16851, witness := RowWitness.topPrime 16787 },
  { lower := 16852, upper := 16884, witness := RowWitness.topPrime 16843 },
  { lower := 17303, upper := 17362, witness := RowWitness.topPrime 17299 },
  { lower := 17408, upper := 17465, witness := RowWitness.topPrime 17401 },
  { lower := 17466, upper := 17469, witness := RowWitness.topPrime 17449 },
  { lower := 17672, upper := 17725, witness := RowWitness.topPrime 17669 },
  { lower := 18490, upper := 18545, witness := RowWitness.topPrime 18481 },
  { lower := 18546, upper := 18555, witness := RowWitness.topPrime 18541 },
  { lower := 18634, upper := 18669, witness := RowWitness.topPrime 18617 },
  { lower := 19208, upper := 19271, witness := RowWitness.topPrime 19207 },
  { lower := 19272, upper := 19272, witness := RowWitness.topPrime 19267 },
  { lower := 19663, upper := 19725, witness := RowWitness.topPrime 19661 },
  { lower := 19726, upper := 19727, witness := RowWitness.topPrime 19717 },
  { lower := 20181, upper := 20236, witness := RowWitness.topPrime 20177 },
  { lower := 20535, upper := 20544, witness := RowWitness.topPrime 20533 },
  { lower := 20577, upper := 20599, witness := RowWitness.topPrime 20563 },
  { lower := 21870, upper := 21927, witness := RowWitness.topPrime 21863 },
  { lower := 21928, upper := 21934, witness := RowWitness.topPrime 21911 },
  { lower := 22528, upper := 22536, witness := RowWitness.topPrime 22511 },
  { lower := 24010, upper := 24022, witness := RowWitness.topPrime 24007 },
  { lower := 24037, upper := 24093, witness := RowWitness.topPrime 24029 },
  { lower := 24094, upper := 24101, witness := RowWitness.topPrime 24091 },
  { lower := 24334, upper := 24363, witness := RowWitness.topPrime 24329 },
  { lower := 24367, upper := 24423, witness := RowWitness.topPrime 24359 },
  { lower := 24424, upper := 24431, witness := RowWitness.topPrime 24421 },
  { lower := 24576, upper := 24629, witness := RowWitness.topPrime 24571 },
  { lower := 25289, upper := 25325, witness := RowWitness.topPrime 25261 },
  { lower := 25326, upper := 25345, witness := RowWitness.topPrime 25321 },
  { lower := 26047, upper := 26075, witness := RowWitness.topPrime 26041 },
  { lower := 26624, upper := 26661, witness := RowWitness.topPrime 26597 },
  { lower := 26662, upper := 26684, witness := RowWitness.topPrime 26647 },
  { lower := 27436, upper := 27444, witness := RowWitness.topPrime 27431 },
  { lower := 28577, upper := 28625, witness := RowWitness.topPrime 28573 },
  { lower := 28717, upper := 28736, witness := RowWitness.topPrime 28711 },
  { lower := 28749, upper := 28781, witness := RowWitness.topPrime 28729 },
  { lower := 28812, upper := 28813, witness := RowWitness.topPrime 28807 },
  { lower := 29791, upper := 29832, witness := RowWitness.topPrime 29789 },
  { lower := 30926, upper := 30963, witness := RowWitness.topPrime 30911 },
  { lower := 31250, upper := 31277, witness := RowWitness.topPrime 31249 },
  { lower := 32805, upper := 32832, witness := RowWitness.topPrime 32803 },
  { lower := 34816, upper := 34871, witness := RowWitness.topPrime 34807 },
  { lower := 34872, upper := 34874, witness := RowWitness.topPrime 34871 },
  { lower := 36517, upper := 36561, witness := RowWitness.topPrime 36497 },
  { lower := 36562, upper := 36565, witness := RowWitness.topPrime 36559 },
  { lower := 37210, upper := 37243, witness := RowWitness.topPrime 37201 },
  { lower := 39326, upper := 39387, witness := RowWitness.topPrime 39323 },
  { lower := 39388, upper := 39390, witness := RowWitness.topPrime 39383 },
  { lower := 40960, upper := 40995, witness := RowWitness.topPrime 40949 },
  { lower := 48778, upper := 48798, witness := RowWitness.topPrime 48767 },
  { lower := 49152, upper := 49194, witness := RowWitness.topPrime 49139 },
  { lower := 59582, upper := 59600, witness := RowWitness.topPrime 59581 },
  { lower := 73205, upper := 73231, witness := RowWitness.topPrime 73189 },
  { lower := 73728, upper := 73759, witness := RowWitness.topPrime 73727 },
  { lower := 137842, upper := 137845, witness := RowWitness.topPrime 137831 },
  { lower := 327701, upper := 327744, witness := RowWitness.topPrime 327689 }
]

def row065_layers : List CoverLayer := [
  { lower := 4160, upper := 8320, M := 28 },
  { lower := 8320, upper := 16640, M := 25 },
  { lower := 16640, upper := 33280, M := 22 },
  { lower := 33280, upper := 66560, M := 19 },
  { lower := 66560, upper := 133120, M := 17 },
  { lower := 133120, upper := 266240, M := 15 },
  { lower := 266240, upper := 532480, M := 13 },
  { lower := 532480, upper := 1064960, M := 11 },
  { lower := 1064960, upper := 2129920, M := 10 },
  { lower := 2129920, upper := 4259840, M := 9 },
  { lower := 4259840, upper := 8519680, M := 8 },
  { lower := 8519680, upper := 17039360, M := 7 },
  { lower := 17039360, upper := 34078720, M := 6 },
  { lower := 34078720, upper := 68157440, M := 5 },
  { lower := 68157440, upper := 136314880, M := 5 },
  { lower := 136314880, upper := 272629760, M := 4 },
  { lower := 272629760, upper := 545259520, M := 4 },
  { lower := 545259520, upper := 1090519040, M := 3 },
  { lower := 1090519040, upper := 2181038080, M := 3 },
  { lower := 2181038080, upper := 4362076160, M := 3 },
  { lower := 4362076160, upper := 8724152320, M := 2 },
  { lower := 8724152320, upper := 17448304640, M := 2 },
  { lower := 17448304640, upper := 34896609280, M := 2 },
  { lower := 34896609280, upper := 69793218560, M := 2 },
  { lower := 69793218560, upper := 100000000000, M := 2 }
]

def row065 : FiniteCoverRow := {
  height := row065_height,
  goods := row065_goods,
  layers := row065_layers
}

theorem row065_registered :
    decide (row065.height ∈ heightCertificateData) = true := by
  decide +kernel

theorem row065_goods_checked :
    row065.goods.all (goodSegmentCheck row065.height.i row065.height.r row065.height.s) = true := by
  decide +kernel

theorem row065_small_checked :
    coverCheck (2 * row065.height.i + 2) (row065.height.i * (row065.height.i - 1) - 1)
      (row065.goods.map goodSegmentBounds) = true := by
  decide +kernel

theorem row065_layerCover_checked :
    coverCheck (row065.height.i * (row065.height.i - 1)) (row065.height.n0 - 1)
      (row065.layers.map CoverLayer.bounds) = true := by
  decide +kernel

theorem row065_layer000_checked :
    coverLayerCheck row065.height row065.goods { lower := 4160, upper := 8320, M := 28 } = true := by
  decide +kernel

theorem row065_layer001_checked :
    coverLayerCheck row065.height row065.goods { lower := 8320, upper := 16640, M := 25 } = true := by
  decide +kernel

theorem row065_layer002_checked :
    coverLayerCheck row065.height row065.goods { lower := 16640, upper := 33280, M := 22 } = true := by
  decide +kernel

theorem row065_layer003_checked :
    coverLayerCheck row065.height row065.goods { lower := 33280, upper := 66560, M := 19 } = true := by
  decide +kernel

theorem row065_layer004_checked :
    coverLayerCheck row065.height row065.goods { lower := 66560, upper := 133120, M := 17 } = true := by
  decide +kernel

theorem row065_layer005_checked :
    coverLayerCheck row065.height row065.goods { lower := 133120, upper := 266240, M := 15 } = true := by
  decide +kernel

theorem row065_layer006_checked :
    coverLayerCheck row065.height row065.goods { lower := 266240, upper := 532480, M := 13 } = true := by
  decide +kernel

theorem row065_layer007_checked :
    coverLayerCheck row065.height row065.goods { lower := 532480, upper := 1064960, M := 11 } = true := by
  decide +kernel

theorem row065_layer008_checked :
    coverLayerCheck row065.height row065.goods { lower := 1064960, upper := 2129920, M := 10 } = true := by
  decide +kernel

theorem row065_layer009_checked :
    coverLayerCheck row065.height row065.goods { lower := 2129920, upper := 4259840, M := 9 } = true := by
  decide +kernel

theorem row065_layer010_checked :
    coverLayerCheck row065.height row065.goods { lower := 4259840, upper := 8519680, M := 8 } = true := by
  decide +kernel

theorem row065_layer011_checked :
    coverLayerCheck row065.height row065.goods { lower := 8519680, upper := 17039360, M := 7 } = true := by
  decide +kernel

theorem row065_layer012_checked :
    coverLayerCheck row065.height row065.goods { lower := 17039360, upper := 34078720, M := 6 } = true := by
  decide +kernel

theorem row065_layer013_checked :
    coverLayerCheck row065.height row065.goods { lower := 34078720, upper := 68157440, M := 5 } = true := by
  decide +kernel

theorem row065_layer014_checked :
    coverLayerCheck row065.height row065.goods { lower := 68157440, upper := 136314880, M := 5 } = true := by
  decide +kernel

theorem row065_layer015_checked :
    coverLayerCheck row065.height row065.goods { lower := 136314880, upper := 272629760, M := 4 } = true := by
  decide +kernel

theorem row065_layer016_checked :
    coverLayerCheck row065.height row065.goods { lower := 272629760, upper := 545259520, M := 4 } = true := by
  decide +kernel

theorem row065_layer017_checked :
    coverLayerCheck row065.height row065.goods { lower := 545259520, upper := 1090519040, M := 3 } = true := by
  decide +kernel

theorem row065_layer018_checked :
    coverLayerCheck row065.height row065.goods { lower := 1090519040, upper := 2181038080, M := 3 } = true := by
  decide +kernel

theorem row065_layer019_checked :
    coverLayerCheck row065.height row065.goods { lower := 2181038080, upper := 4362076160, M := 3 } = true := by
  decide +kernel

theorem row065_layer020_checked :
    coverLayerCheck row065.height row065.goods { lower := 4362076160, upper := 8724152320, M := 2 } = true := by
  decide +kernel

theorem row065_layer021_checked :
    coverLayerCheck row065.height row065.goods { lower := 8724152320, upper := 17448304640, M := 2 } = true := by
  decide +kernel

theorem row065_layer022_checked :
    coverLayerCheck row065.height row065.goods { lower := 17448304640, upper := 34896609280, M := 2 } = true := by
  decide +kernel

theorem row065_layer023_checked :
    coverLayerCheck row065.height row065.goods { lower := 34896609280, upper := 69793218560, M := 2 } = true := by
  decide +kernel

theorem row065_layer024_checked :
    coverLayerCheck row065.height row065.goods { lower := 69793218560, upper := 100000000000, M := 2 } = true := by
  decide +kernel

theorem row065_layers_checked :
    row065.layers.all (coverLayerCheck row065.height row065.goods) = true := by
  change List.all [
    { lower := 4160, upper := 8320, M := 28 },
    { lower := 8320, upper := 16640, M := 25 },
    { lower := 16640, upper := 33280, M := 22 },
    { lower := 33280, upper := 66560, M := 19 },
    { lower := 66560, upper := 133120, M := 17 },
    { lower := 133120, upper := 266240, M := 15 },
    { lower := 266240, upper := 532480, M := 13 },
    { lower := 532480, upper := 1064960, M := 11 },
    { lower := 1064960, upper := 2129920, M := 10 },
    { lower := 2129920, upper := 4259840, M := 9 },
    { lower := 4259840, upper := 8519680, M := 8 },
    { lower := 8519680, upper := 17039360, M := 7 },
    { lower := 17039360, upper := 34078720, M := 6 },
    { lower := 34078720, upper := 68157440, M := 5 },
    { lower := 68157440, upper := 136314880, M := 5 },
    { lower := 136314880, upper := 272629760, M := 4 },
    { lower := 272629760, upper := 545259520, M := 4 },
    { lower := 545259520, upper := 1090519040, M := 3 },
    { lower := 1090519040, upper := 2181038080, M := 3 },
    { lower := 2181038080, upper := 4362076160, M := 3 },
    { lower := 4362076160, upper := 8724152320, M := 2 },
    { lower := 8724152320, upper := 17448304640, M := 2 },
    { lower := 17448304640, upper := 34896609280, M := 2 },
    { lower := 34896609280, upper := 69793218560, M := 2 },
    { lower := 69793218560, upper := 100000000000, M := 2 }
  ] (coverLayerCheck row065.height row065.goods) = true
  simp only [List.all_cons, List.all_nil,
    row065_layer000_checked,
    row065_layer001_checked,
    row065_layer002_checked,
    row065_layer003_checked,
    row065_layer004_checked,
    row065_layer005_checked,
    row065_layer006_checked,
    row065_layer007_checked,
    row065_layer008_checked,
    row065_layer009_checked,
    row065_layer010_checked,
    row065_layer011_checked,
    row065_layer012_checked,
    row065_layer013_checked,
    row065_layer014_checked,
    row065_layer015_checked,
    row065_layer016_checked,
    row065_layer017_checked,
    row065_layer018_checked,
    row065_layer019_checked,
    row065_layer020_checked,
    row065_layer021_checked,
    row065_layer022_checked,
    row065_layer023_checked,
    row065_layer024_checked,
    Bool.true_and]

theorem row065_checked : finiteCoverRowCheck row065 = true := by
  simp only [finiteCoverRowCheck, row065_registered, row065_goods_checked,
    row065_small_checked, row065_layerCover_checked, row065_layers_checked,
    Bool.true_and]

#print axioms B699LowIndex.row065_checked

end B699LowIndex

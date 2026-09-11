import research.tasks.«B699-Binomial».runs.«20260909-low-index-structure-b41a5a63».lean.FiniteCover
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.WitnessBridge
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.LayerParts
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.PairChunks

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

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


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row065

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row065_good000_checked :
    goodSegmentCheck 65 21 45
      { lower := 132, upper := 195, witness := RowWitness.topPrime 131 } = true := by
  exact good_top_prime_checked (i := 65) (r := 21) (s := 45) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row065_good001_checked :
    goodSegmentCheck 65 21 45
      { lower := 196, upper := 257, witness := RowWitness.topPrime 193 } = true := by
  exact good_top_prime_checked (i := 65) (r := 21) (s := 45) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row065_good002_checked :
    goodSegmentCheck 65 21 45
      { lower := 258, upper := 321, witness := RowWitness.topPrime 257 } = true := by
  exact good_top_prime_checked (i := 65) (r := 21) (s := 45) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row065_good003_checked :
    goodSegmentCheck 65 21 45
      { lower := 322, upper := 381, witness := RowWitness.topPrime 317 } = true := by
  exact good_top_prime_checked (i := 65) (r := 21) (s := 45) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row065_good004_checked :
    goodSegmentCheck 65 21 45
      { lower := 382, upper := 443, witness := RowWitness.topPrime 379 } = true := by
  exact good_top_prime_checked (i := 65) (r := 21) (s := 45) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row065_good005_checked :
    goodSegmentCheck 65 21 45
      { lower := 444, upper := 507, witness := RowWitness.topPrime 443 } = true := by
  exact good_top_prime_checked (i := 65) (r := 21) (s := 45) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row065_good006_checked :
    goodSegmentCheck 65 21 45
      { lower := 508, upper := 567, witness := RowWitness.topPrime 503 } = true := by
  exact good_top_prime_checked (i := 65) (r := 21) (s := 45) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row065_good007_checked :
    goodSegmentCheck 65 21 45
      { lower := 568, upper := 627, witness := RowWitness.topPrime 563 } = true := by
  exact good_top_prime_checked (i := 65) (r := 21) (s := 45) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row065_good008_checked :
    goodSegmentCheck 65 21 45
      { lower := 628, upper := 683, witness := RowWitness.topPrime 619 } = true := by
  exact good_top_prime_checked (i := 65) (r := 21) (s := 45) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row065_good009_checked :
    goodSegmentCheck 65 21 45
      { lower := 684, upper := 747, witness := RowWitness.topPrime 683 } = true := by
  exact good_top_prime_checked (i := 65) (r := 21) (s := 45) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row065_good010_checked :
    goodSegmentCheck 65 21 45
      { lower := 748, upper := 807, witness := RowWitness.topPrime 743 } = true := by
  exact good_top_prime_checked (i := 65) (r := 21) (s := 45) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row065_good011_checked :
    goodSegmentCheck 65 21 45
      { lower := 808, upper := 861, witness := RowWitness.topPrime 797 } = true := by
  exact good_top_prime_checked (i := 65) (r := 21) (s := 45) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row065_good012_checked :
    goodSegmentCheck 65 21 45
      { lower := 862, upper := 923, witness := RowWitness.topPrime 859 } = true := by
  exact good_top_prime_checked (i := 65) (r := 21) (s := 45) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row065_good013_checked :
    goodSegmentCheck 65 21 45
      { lower := 924, upper := 983, witness := RowWitness.topPrime 919 } = true := by
  exact good_top_prime_checked (i := 65) (r := 21) (s := 45) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row065_good014_checked :
    goodSegmentCheck 65 21 45
      { lower := 984, upper := 1047, witness := RowWitness.topPrime 983 } = true := by
  exact good_top_prime_checked (i := 65) (r := 21) (s := 45) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row065_good015_checked :
    goodSegmentCheck 65 21 45
      { lower := 1048, upper := 1103, witness := RowWitness.topPrime 1039 } = true := by
  exact good_top_prime_checked (i := 65) (r := 21) (s := 45) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row065_good000_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row065_good001_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row065_good002_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row065_good003_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row065_good004_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row065_good005_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row065_good006_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row065_good007_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row065_good008_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row065_good009_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row065_good010_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row065_good011_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row065_good012_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row065_good013_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row065_good014_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row065_good015_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row065_good016_checked :
    goodSegmentCheck 65 21 45
      { lower := 1104, upper := 1167, witness := RowWitness.topPrime 1103 } = true := by
  exact good_top_prime_checked (i := 65) (r := 21) (s := 45) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row065_good017_checked :
    goodSegmentCheck 65 21 45
      { lower := 1168, upper := 1227, witness := RowWitness.topPrime 1163 } = true := by
  exact good_top_prime_checked (i := 65) (r := 21) (s := 45) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row065_good018_checked :
    goodSegmentCheck 65 21 45
      { lower := 1228, upper := 1287, witness := RowWitness.topPrime 1223 } = true := by
  exact good_top_prime_checked (i := 65) (r := 21) (s := 45) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row065_good019_checked :
    goodSegmentCheck 65 21 45
      { lower := 1288, upper := 1347, witness := RowWitness.topPrime 1283 } = true := by
  exact good_top_prime_checked (i := 65) (r := 21) (s := 45) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row065_good020_checked :
    goodSegmentCheck 65 21 45
      { lower := 1348, upper := 1391, witness := RowWitness.topPrime 1327 } = true := by
  exact good_top_prime_checked (i := 65) (r := 21) (s := 45) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row065_good021_checked :
    goodSegmentCheck 65 21 45
      { lower := 1392, upper := 1445, witness := RowWitness.topPrime 1381 } = true := by
  exact good_top_prime_checked (i := 65) (r := 21) (s := 45) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row065_good022_checked :
    goodSegmentCheck 65 21 45
      { lower := 1446, upper := 1503, witness := RowWitness.topPrime 1439 } = true := by
  exact good_top_prime_checked (i := 65) (r := 21) (s := 45) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row065_good023_checked :
    goodSegmentCheck 65 21 45
      { lower := 1504, upper := 1563, witness := RowWitness.topPrime 1499 } = true := by
  exact good_top_prime_checked (i := 65) (r := 21) (s := 45) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row065_good024_checked :
    goodSegmentCheck 65 21 45
      { lower := 1564, upper := 1623, witness := RowWitness.topPrime 1559 } = true := by
  exact good_top_prime_checked (i := 65) (r := 21) (s := 45) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row065_good025_checked :
    goodSegmentCheck 65 21 45
      { lower := 1624, upper := 1685, witness := RowWitness.topPrime 1621 } = true := by
  exact good_top_prime_checked (i := 65) (r := 21) (s := 45) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row065_good026_checked :
    goodSegmentCheck 65 21 45
      { lower := 1686, upper := 1733, witness := RowWitness.topPrime 1669 } = true := by
  exact good_top_prime_checked (i := 65) (r := 21) (s := 45) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row065_good027_checked :
    goodSegmentCheck 65 21 45
      { lower := 1734, upper := 1797, witness := RowWitness.topPrime 1733 } = true := by
  exact good_top_prime_checked (i := 65) (r := 21) (s := 45) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row065_good028_checked :
    goodSegmentCheck 65 21 45
      { lower := 1798, upper := 1853, witness := RowWitness.topPrime 1789 } = true := by
  exact good_top_prime_checked (i := 65) (r := 21) (s := 45) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row065_good029_checked :
    goodSegmentCheck 65 21 45
      { lower := 1854, upper := 1911, witness := RowWitness.topPrime 1847 } = true := by
  exact good_top_prime_checked (i := 65) (r := 21) (s := 45) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row065_good030_checked :
    goodSegmentCheck 65 21 45
      { lower := 1912, upper := 1971, witness := RowWitness.topPrime 1907 } = true := by
  exact good_top_prime_checked (i := 65) (r := 21) (s := 45) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row065_good031_checked :
    goodSegmentCheck 65 21 45
      { lower := 1972, upper := 2015, witness := RowWitness.topPrime 1951 } = true := by
  exact good_top_prime_checked (i := 65) (r := 21) (s := 45) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row065_good016_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row065_good017_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row065_good018_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row065_good019_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row065_good020_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row065_good021_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row065_good022_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row065_good023_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row065_good024_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row065_good025_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row065_good026_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row065_good027_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row065_good028_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row065_good029_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row065_good030_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row065_good031_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row065_good032_checked :
    goodSegmentCheck 65 21 45
      { lower := 2016, upper := 2075, witness := RowWitness.topPrime 2011 } = true := by
  exact good_top_prime_checked (i := 65) (r := 21) (s := 45) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row065_good033_checked :
    goodSegmentCheck 65 21 45
      { lower := 2076, upper := 2133, witness := RowWitness.topPrime 2069 } = true := by
  exact good_top_prime_checked (i := 65) (r := 21) (s := 45) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row065_good034_checked :
    goodSegmentCheck 65 21 45
      { lower := 2134, upper := 2195, witness := RowWitness.topPrime 2131 } = true := by
  exact good_top_prime_checked (i := 65) (r := 21) (s := 45) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row065_good035_checked :
    goodSegmentCheck 65 21 45
      { lower := 2196, upper := 2243, witness := RowWitness.topPrime 2179 } = true := by
  exact good_top_prime_checked (i := 65) (r := 21) (s := 45) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row065_good036_checked :
    goodSegmentCheck 65 21 45
      { lower := 2244, upper := 2307, witness := RowWitness.topPrime 2243 } = true := by
  exact good_top_prime_checked (i := 65) (r := 21) (s := 45) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row065_good037_checked :
    goodSegmentCheck 65 21 45
      { lower := 2308, upper := 2361, witness := RowWitness.topPrime 2297 } = true := by
  exact good_top_prime_checked (i := 65) (r := 21) (s := 45) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row065_good038_checked :
    goodSegmentCheck 65 21 45
      { lower := 2362, upper := 2421, witness := RowWitness.topPrime 2357 } = true := by
  exact good_top_prime_checked (i := 65) (r := 21) (s := 45) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row065_good039_checked :
    goodSegmentCheck 65 21 45
      { lower := 2422, upper := 2481, witness := RowWitness.topPrime 2417 } = true := by
  exact good_top_prime_checked (i := 65) (r := 21) (s := 45) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row065_good040_checked :
    goodSegmentCheck 65 21 45
      { lower := 2482, upper := 2541, witness := RowWitness.topPrime 2477 } = true := by
  exact good_top_prime_checked (i := 65) (r := 21) (s := 45) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row065_good041_checked :
    goodSegmentCheck 65 21 45
      { lower := 2542, upper := 2603, witness := RowWitness.topPrime 2539 } = true := by
  exact good_top_prime_checked (i := 65) (r := 21) (s := 45) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row065_good042_checked :
    goodSegmentCheck 65 21 45
      { lower := 2604, upper := 2657, witness := RowWitness.topPrime 2593 } = true := by
  exact good_top_prime_checked (i := 65) (r := 21) (s := 45) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row065_good043_checked :
    goodSegmentCheck 65 21 45
      { lower := 2658, upper := 2721, witness := RowWitness.topPrime 2657 } = true := by
  exact good_top_prime_checked (i := 65) (r := 21) (s := 45) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row065_good044_checked :
    goodSegmentCheck 65 21 45
      { lower := 2722, upper := 2783, witness := RowWitness.topPrime 2719 } = true := by
  exact good_top_prime_checked (i := 65) (r := 21) (s := 45) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row065_good045_checked :
    goodSegmentCheck 65 21 45
      { lower := 2784, upper := 2841, witness := RowWitness.topPrime 2777 } = true := by
  exact good_top_prime_checked (i := 65) (r := 21) (s := 45) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row065_good046_checked :
    goodSegmentCheck 65 21 45
      { lower := 2842, upper := 2901, witness := RowWitness.topPrime 2837 } = true := by
  exact good_top_prime_checked (i := 65) (r := 21) (s := 45) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row065_good047_checked :
    goodSegmentCheck 65 21 45
      { lower := 2902, upper := 2961, witness := RowWitness.topPrime 2897 } = true := by
  exact good_top_prime_checked (i := 65) (r := 21) (s := 45) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row065_good032_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row065_good033_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row065_good034_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row065_good035_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row065_good036_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row065_good037_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row065_good038_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row065_good039_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row065_good040_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row065_good041_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row065_good042_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row065_good043_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row065_good044_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row065_good045_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row065_good046_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row065_good047_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row065_good048_checked :
    goodSegmentCheck 65 21 45
      { lower := 2962, upper := 3021, witness := RowWitness.topPrime 2957 } = true := by
  exact good_top_prime_checked (i := 65) (r := 21) (s := 45) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row065_good049_checked :
    goodSegmentCheck 65 21 45
      { lower := 3022, upper := 3083, witness := RowWitness.topPrime 3019 } = true := by
  exact good_top_prime_checked (i := 65) (r := 21) (s := 45) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row065_good050_checked :
    goodSegmentCheck 65 21 45
      { lower := 3084, upper := 3147, witness := RowWitness.topPrime 3083 } = true := by
  exact good_top_prime_checked (i := 65) (r := 21) (s := 45) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row065_good051_checked :
    goodSegmentCheck 65 21 45
      { lower := 3148, upper := 3201, witness := RowWitness.topPrime 3137 } = true := by
  exact good_top_prime_checked (i := 65) (r := 21) (s := 45) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row065_good052_checked :
    goodSegmentCheck 65 21 45
      { lower := 3202, upper := 3255, witness := RowWitness.topPrime 3191 } = true := by
  exact good_top_prime_checked (i := 65) (r := 21) (s := 45) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row065_good053_checked :
    goodSegmentCheck 65 21 45
      { lower := 3256, upper := 3317, witness := RowWitness.topPrime 3253 } = true := by
  exact good_top_prime_checked (i := 65) (r := 21) (s := 45) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row065_good054_checked :
    goodSegmentCheck 65 21 45
      { lower := 3318, upper := 3377, witness := RowWitness.topPrime 3313 } = true := by
  exact good_top_prime_checked (i := 65) (r := 21) (s := 45) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row065_good055_checked :
    goodSegmentCheck 65 21 45
      { lower := 3378, upper := 3437, witness := RowWitness.topPrime 3373 } = true := by
  exact good_top_prime_checked (i := 65) (r := 21) (s := 45) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row065_good056_checked :
    goodSegmentCheck 65 21 45
      { lower := 3438, upper := 3497, witness := RowWitness.topPrime 3433 } = true := by
  exact good_top_prime_checked (i := 65) (r := 21) (s := 45) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row065_good057_checked :
    goodSegmentCheck 65 21 45
      { lower := 3498, upper := 3555, witness := RowWitness.topPrime 3491 } = true := by
  exact good_top_prime_checked (i := 65) (r := 21) (s := 45) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row065_good058_checked :
    goodSegmentCheck 65 21 45
      { lower := 3556, upper := 3611, witness := RowWitness.topPrime 3547 } = true := by
  exact good_top_prime_checked (i := 65) (r := 21) (s := 45) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row065_good059_checked :
    goodSegmentCheck 65 21 45
      { lower := 3612, upper := 3671, witness := RowWitness.topPrime 3607 } = true := by
  exact good_top_prime_checked (i := 65) (r := 21) (s := 45) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row065_good060_checked :
    goodSegmentCheck 65 21 45
      { lower := 3672, upper := 3735, witness := RowWitness.topPrime 3671 } = true := by
  exact good_top_prime_checked (i := 65) (r := 21) (s := 45) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row065_good061_checked :
    goodSegmentCheck 65 21 45
      { lower := 3736, upper := 3797, witness := RowWitness.topPrime 3733 } = true := by
  exact good_top_prime_checked (i := 65) (r := 21) (s := 45) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row065_good062_checked :
    goodSegmentCheck 65 21 45
      { lower := 3798, upper := 3861, witness := RowWitness.topPrime 3797 } = true := by
  exact good_top_prime_checked (i := 65) (r := 21) (s := 45) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row065_good063_checked :
    goodSegmentCheck 65 21 45
      { lower := 3862, upper := 3917, witness := RowWitness.topPrime 3853 } = true := by
  exact good_top_prime_checked (i := 65) (r := 21) (s := 45) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row065_good048_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row065_good049_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row065_good050_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row065_good051_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row065_good052_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row065_good053_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row065_good054_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row065_good055_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row065_good056_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row065_good057_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row065_good058_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row065_good059_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row065_good060_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row065_good061_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row065_good062_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row065_good063_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row065_good064_checked :
    goodSegmentCheck 65 21 45
      { lower := 3918, upper := 3981, witness := RowWitness.topPrime 3917 } = true := by
  exact good_top_prime_checked (i := 65) (r := 21) (s := 45) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row065_good065_checked :
    goodSegmentCheck 65 21 45
      { lower := 3982, upper := 4031, witness := RowWitness.topPrime 3967 } = true := by
  exact good_top_prime_checked (i := 65) (r := 21) (s := 45) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row065_good066_checked :
    goodSegmentCheck 65 21 45
      { lower := 4032, upper := 4091, witness := RowWitness.topPrime 4027 } = true := by
  exact good_top_prime_checked (i := 65) (r := 21) (s := 45) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row065_good067_checked :
    goodSegmentCheck 65 21 45
      { lower := 4092, upper := 4155, witness := RowWitness.topPrime 4091 } = true := by
  exact good_top_prime_checked (i := 65) (r := 21) (s := 45) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row065_good068_checked :
    goodSegmentCheck 65 21 45
      { lower := 4156, upper := 4180, witness := RowWitness.topPrime 4153 } = true := by
  exact good_top_prime_checked (i := 65) (r := 21) (s := 45) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row065_good069_checked :
    goodSegmentCheck 65 21 45
      { lower := 4232, upper := 4269, witness := RowWitness.topPrime 4231 } = true := by
  exact good_top_prime_checked (i := 65) (r := 21) (s := 45) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row065_good070_checked :
    goodSegmentCheck 65 21 45
      { lower := 4335, upper := 4391, witness := RowWitness.topPrime 4327 } = true := by
  exact good_top_prime_checked (i := 65) (r := 21) (s := 45) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row065_good071_checked :
    goodSegmentCheck 65 21 45
      { lower := 4392, upper := 4455, witness := RowWitness.topPrime 4391 } = true := by
  exact good_top_prime_checked (i := 65) (r := 21) (s := 45) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row065_good072_checked :
    goodSegmentCheck 65 21 45
      { lower := 4456, upper := 4482, witness := RowWitness.topPrime 4451 } = true := by
  exact good_top_prime_checked (i := 65) (r := 21) (s := 45) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row065_good073_checked :
    goodSegmentCheck 65 21 45
      { lower := 4617, upper := 4667, witness := RowWitness.topPrime 4603 } = true := by
  exact good_top_prime_checked (i := 65) (r := 21) (s := 45) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row065_good074_checked :
    goodSegmentCheck 65 21 45
      { lower := 4668, upper := 4681, witness := RowWitness.topPrime 4663 } = true := by
  exact good_top_prime_checked (i := 65) (r := 21) (s := 45) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row065_good075_checked :
    goodSegmentCheck 65 21 45
      { lower := 4802, upper := 4865, witness := RowWitness.topPrime 4801 } = true := by
  exact good_top_prime_checked (i := 65) (r := 21) (s := 45) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row065_good076_checked :
    goodSegmentCheck 65 21 45
      { lower := 4866, upper := 4925, witness := RowWitness.topPrime 4861 } = true := by
  exact good_top_prime_checked (i := 65) (r := 21) (s := 45) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row065_good077_checked :
    goodSegmentCheck 65 21 45
      { lower := 4926, upper := 4928, witness := RowWitness.topPrime 4919 } = true := by
  exact good_top_prime_checked (i := 65) (r := 21) (s := 45) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row065_good078_checked :
    goodSegmentCheck 65 21 45
      { lower := 5046, upper := 5103, witness := RowWitness.topPrime 5039 } = true := by
  exact good_top_prime_checked (i := 65) (r := 21) (s := 45) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row065_good079_checked :
    goodSegmentCheck 65 21 45
      { lower := 5104, upper := 5118, witness := RowWitness.topPrime 5101 } = true := by
  exact good_top_prime_checked (i := 65) (r := 21) (s := 45) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row065_good064_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row065_good065_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row065_good066_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row065_good067_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row065_good068_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row065_good069_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row065_good070_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row065_good071_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row065_good072_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row065_good073_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row065_good074_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row065_good075_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row065_good076_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row065_good077_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row065_good078_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row065_good079_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row065_good080_checked :
    goodSegmentCheck 65 21 45
      { lower := 5120, upper := 5183, witness := RowWitness.topPrime 5119 } = true := by
  exact good_top_prime_checked (i := 65) (r := 21) (s := 45) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row065_good081_checked :
    goodSegmentCheck 65 21 45
      { lower := 5184, upper := 5184, witness := RowWitness.topPrime 5179 } = true := by
  exact good_top_prime_checked (i := 65) (r := 21) (s := 45) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row065_good082_checked :
    goodSegmentCheck 65 21 45
      { lower := 5202, upper := 5209, witness := RowWitness.topPrime 5197 } = true := by
  exact good_top_prime_checked (i := 65) (r := 21) (s := 45) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row065_good083_checked :
    goodSegmentCheck 65 21 45
      { lower := 5324, upper := 5387, witness := RowWitness.topPrime 5323 } = true := by
  exact good_top_prime_checked (i := 65) (r := 21) (s := 45) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row065_good084_checked :
    goodSegmentCheck 65 21 45
      { lower := 5388, upper := 5410, witness := RowWitness.topPrime 5387 } = true := by
  exact good_top_prime_checked (i := 65) (r := 21) (s := 45) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row065_good085_checked :
    goodSegmentCheck 65 21 45
      { lower := 5415, upper := 5440, witness := RowWitness.topPrime 5413 } = true := by
  exact good_top_prime_checked (i := 65) (r := 21) (s := 45) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row065_good086_checked :
    goodSegmentCheck 65 21 45
      { lower := 5476, upper := 5479, witness := RowWitness.topPrime 5471 } = true := by
  exact good_top_prime_checked (i := 65) (r := 21) (s := 45) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row065_good087_checked :
    goodSegmentCheck 65 21 45
      { lower := 5488, upper := 5547, witness := RowWitness.topPrime 5483 } = true := by
  exact good_top_prime_checked (i := 65) (r := 21) (s := 45) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row065_good088_checked :
    goodSegmentCheck 65 21 45
      { lower := 5548, upper := 5555, witness := RowWitness.topPrime 5531 } = true := by
  exact good_top_prime_checked (i := 65) (r := 21) (s := 45) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row065_good089_checked :
    goodSegmentCheck 65 21 45
      { lower := 5589, upper := 5611, witness := RowWitness.topPrime 5581 } = true := by
  exact good_top_prime_checked (i := 65) (r := 21) (s := 45) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row065_good090_checked :
    goodSegmentCheck 65 21 45
      { lower := 5618, upper := 5655, witness := RowWitness.topPrime 5591 } = true := by
  exact good_top_prime_checked (i := 65) (r := 21) (s := 45) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row065_good091_checked :
    goodSegmentCheck 65 21 45
      { lower := 5656, upper := 5682, witness := RowWitness.topPrime 5653 } = true := by
  exact good_top_prime_checked (i := 65) (r := 21) (s := 45) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row065_good092_checked :
    goodSegmentCheck 65 21 45
      { lower := 5776, upper := 5813, witness := RowWitness.topPrime 5749 } = true := by
  exact good_top_prime_checked (i := 65) (r := 21) (s := 45) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row065_good093_checked :
    goodSegmentCheck 65 21 45
      { lower := 5814, upper := 5877, witness := RowWitness.topPrime 5813 } = true := by
  exact good_top_prime_checked (i := 65) (r := 21) (s := 45) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row065_good094_checked :
    goodSegmentCheck 65 21 45
      { lower := 5878, upper := 5933, witness := RowWitness.topPrime 5869 } = true := by
  exact good_top_prime_checked (i := 65) (r := 21) (s := 45) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row065_good095_checked :
    goodSegmentCheck 65 21 45
      { lower := 5934, upper := 5951, witness := RowWitness.topPrime 5927 } = true := by
  exact good_top_prime_checked (i := 65) (r := 21) (s := 45) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row065_good080_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row065_good081_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row065_good082_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row065_good083_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row065_good084_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row065_good085_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row065_good086_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row065_good087_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row065_good088_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row065_good089_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row065_good090_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row065_good091_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row065_good092_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row065_good093_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row065_good094_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row065_good095_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row065_good096_checked :
    goodSegmentCheck 65 21 45
      { lower := 6075, upper := 6133, witness := RowWitness.topPrime 6073 } = true := by
  exact good_top_prime_checked (i := 65) (r := 21) (s := 45) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row065_good097_checked :
    goodSegmentCheck 65 21 45
      { lower := 6137, upper := 6139, witness := RowWitness.topPrime 6133 } = true := by
  exact good_top_prime_checked (i := 65) (r := 21) (s := 45) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row065_good098_checked :
    goodSegmentCheck 65 21 45
      { lower := 6144, upper := 6207, witness := RowWitness.topPrime 6143 } = true := by
  exact good_top_prime_checked (i := 65) (r := 21) (s := 45) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row065_good099_checked :
    goodSegmentCheck 65 21 45
      { lower := 6208, upper := 6208, witness := RowWitness.topPrime 6203 } = true := by
  exact good_top_prime_checked (i := 65) (r := 21) (s := 45) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row065_good100_checked :
    goodSegmentCheck 65 21 45
      { lower := 6348, upper := 6407, witness := RowWitness.topPrime 6343 } = true := by
  exact good_top_prime_checked (i := 65) (r := 21) (s := 45) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row065_good101_checked :
    goodSegmentCheck 65 21 45
      { lower := 6408, upper := 6422, witness := RowWitness.topPrime 6397 } = true := by
  exact good_top_prime_checked (i := 65) (r := 21) (s := 45) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row065_good102_checked :
    goodSegmentCheck 65 21 45
      { lower := 6517, upper := 6555, witness := RowWitness.topPrime 6491 } = true := by
  exact good_top_prime_checked (i := 65) (r := 21) (s := 45) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row065_good103_checked :
    goodSegmentCheck 65 21 45
      { lower := 6556, upper := 6581, witness := RowWitness.topPrime 6553 } = true := by
  exact good_top_prime_checked (i := 65) (r := 21) (s := 45) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row065_good104_checked :
    goodSegmentCheck 65 21 45
      { lower := 6647, upper := 6701, witness := RowWitness.topPrime 6637 } = true := by
  exact good_top_prime_checked (i := 65) (r := 21) (s := 45) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row065_good105_checked :
    goodSegmentCheck 65 21 45
      { lower := 6702, upper := 6719, witness := RowWitness.topPrime 6701 } = true := by
  exact good_top_prime_checked (i := 65) (r := 21) (s := 45) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row065_good106_checked :
    goodSegmentCheck 65 21 45
      { lower := 6727, upper := 6783, witness := RowWitness.topPrime 6719 } = true := by
  exact good_top_prime_checked (i := 65) (r := 21) (s := 45) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row065_good107_checked :
    goodSegmentCheck 65 21 45
      { lower := 6784, upper := 6791, witness := RowWitness.topPrime 6781 } = true := by
  exact good_top_prime_checked (i := 65) (r := 21) (s := 45) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row065_good108_checked :
    goodSegmentCheck 65 21 45
      { lower := 6845, upper := 6905, witness := RowWitness.topPrime 6841 } = true := by
  exact good_top_prime_checked (i := 65) (r := 21) (s := 45) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row065_good109_checked :
    goodSegmentCheck 65 21 45
      { lower := 6906, upper := 6963, witness := RowWitness.topPrime 6899 } = true := by
  exact good_top_prime_checked (i := 65) (r := 21) (s := 45) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row065_good110_checked :
    goodSegmentCheck 65 21 45
      { lower := 6964, upper := 7000, witness := RowWitness.topPrime 6961 } = true := by
  exact good_top_prime_checked (i := 65) (r := 21) (s := 45) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row065_good111_checked :
    goodSegmentCheck 65 21 45
      { lower := 7203, upper := 7257, witness := RowWitness.topPrime 7193 } = true := by
  exact good_top_prime_checked (i := 65) (r := 21) (s := 45) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row065_good096_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row065_good097_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row065_good098_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row065_good099_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row065_good100_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row065_good101_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row065_good102_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row065_good103_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row065_good104_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row065_good105_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row065_good106_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row065_good107_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row065_good108_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row065_good109_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row065_good110_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row065_good111_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row065_good112_checked :
    goodSegmentCheck 65 21 45
      { lower := 7258, upper := 7284, witness := RowWitness.topPrime 7253 } = true := by
  exact good_top_prime_checked (i := 65) (r := 21) (s := 45) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row065_good113_checked :
    goodSegmentCheck 65 21 45
      { lower := 7406, upper := 7457, witness := RowWitness.topPrime 7393 } = true := by
  exact good_top_prime_checked (i := 65) (r := 21) (s := 45) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row065_good114_checked :
    goodSegmentCheck 65 21 45
      { lower := 7458, upper := 7470, witness := RowWitness.topPrime 7457 } = true := by
  exact good_top_prime_checked (i := 65) (r := 21) (s := 45) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row065_good115_checked :
    goodSegmentCheck 65 21 45
      { lower := 7546, upper := 7605, witness := RowWitness.topPrime 7541 } = true := by
  exact good_top_prime_checked (i := 65) (r := 21) (s := 45) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row065_good116_checked :
    goodSegmentCheck 65 21 45
      { lower := 7606, upper := 7633, witness := RowWitness.topPrime 7603 } = true := by
  exact good_top_prime_checked (i := 65) (r := 21) (s := 45) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row065_good117_checked :
    goodSegmentCheck 65 21 45
      { lower := 7688, upper := 7744, witness := RowWitness.topPrime 7687 } = true := by
  exact good_top_prime_checked (i := 65) (r := 21) (s := 45) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row065_good118_checked :
    goodSegmentCheck 65 21 45
      { lower := 7935, upper := 7997, witness := RowWitness.topPrime 7933 } = true := by
  exact good_top_prime_checked (i := 65) (r := 21) (s := 45) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row065_good119_checked :
    goodSegmentCheck 65 21 45
      { lower := 7998, upper := 8006, witness := RowWitness.topPrime 7993 } = true := by
  exact good_top_prime_checked (i := 65) (r := 21) (s := 45) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row065_good120_checked :
    goodSegmentCheck 65 21 45
      { lower := 8019, upper := 8050, witness := RowWitness.topPrime 8017 } = true := by
  exact good_top_prime_checked (i := 65) (r := 21) (s := 45) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row065_good121_checked :
    goodSegmentCheck 65 21 45
      { lower := 8214, upper := 8273, witness := RowWitness.topPrime 8209 } = true := by
  exact good_top_prime_checked (i := 65) (r := 21) (s := 45) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row065_good122_checked :
    goodSegmentCheck 65 21 45
      { lower := 8274, upper := 8278, witness := RowWitness.topPrime 8273 } = true := by
  exact good_top_prime_checked (i := 65) (r := 21) (s := 45) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row065_good123_checked :
    goodSegmentCheck 65 21 45
      { lower := 8410, upper := 8453, witness := RowWitness.topPrime 8389 } = true := by
  exact good_top_prime_checked (i := 65) (r := 21) (s := 45) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row065_good124_checked :
    goodSegmentCheck 65 21 45
      { lower := 8454, upper := 8491, witness := RowWitness.topPrime 8447 } = true := by
  exact good_top_prime_checked (i := 65) (r := 21) (s := 45) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row065_good125_checked :
    goodSegmentCheck 65 21 45
      { lower := 8664, upper := 8727, witness := RowWitness.topPrime 8663 } = true := by
  exact good_top_prime_checked (i := 65) (r := 21) (s := 45) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row065_good126_checked :
    goodSegmentCheck 65 21 45
      { lower := 8728, upper := 8728, witness := RowWitness.topPrime 8719 } = true := by
  exact good_top_prime_checked (i := 65) (r := 21) (s := 45) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row065_good127_checked :
    goodSegmentCheck 65 21 45
      { lower := 8748, upper := 8768, witness := RowWitness.topPrime 8747 } = true := by
  exact good_top_prime_checked (i := 65) (r := 21) (s := 45) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row065_good112_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row065_good113_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row065_good114_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row065_good115_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row065_good116_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row065_good117_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row065_good118_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row065_good119_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row065_good120_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row065_good121_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row065_good122_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row065_good123_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row065_good124_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row065_good125_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row065_good126_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row065_good127_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row065_good128_checked :
    goodSegmentCheck 65 21 45
      { lower := 9025, upper := 9057, witness := RowWitness.topPrime 9013 } = true := by
  exact good_top_prime_checked (i := 65) (r := 21) (s := 45) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row065_good129_checked :
    goodSegmentCheck 65 21 45
      { lower := 9245, upper := 9305, witness := RowWitness.topPrime 9241 } = true := by
  exact good_top_prime_checked (i := 65) (r := 21) (s := 45) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row065_good130_checked :
    goodSegmentCheck 65 21 45
      { lower := 9306, upper := 9309, witness := RowWitness.topPrime 9293 } = true := by
  exact good_top_prime_checked (i := 65) (r := 21) (s := 45) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row065_good131_checked :
    goodSegmentCheck 65 21 45
      { lower := 9375, upper := 9381, witness := RowWitness.topPrime 9371 } = true := by
  exact good_top_prime_checked (i := 65) (r := 21) (s := 45) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row065_good132_checked :
    goodSegmentCheck 65 21 45
      { lower := 9522, upper := 9541, witness := RowWitness.topPrime 9521 } = true := by
  exact good_top_prime_checked (i := 65) (r := 21) (s := 45) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row065_good133_checked :
    goodSegmentCheck 65 21 45
      { lower := 9583, upper := 9586, witness := RowWitness.topPrime 9551 } = true := by
  exact good_top_prime_checked (i := 65) (r := 21) (s := 45) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row065_good134_checked :
    goodSegmentCheck 65 21 45
      { lower := 9604, upper := 9665, witness := RowWitness.topPrime 9601 } = true := by
  exact good_top_prime_checked (i := 65) (r := 21) (s := 45) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row065_good135_checked :
    goodSegmentCheck 65 21 45
      { lower := 9666, upper := 9668, witness := RowWitness.topPrime 9661 } = true := by
  exact good_top_prime_checked (i := 65) (r := 21) (s := 45) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row065_good136_checked :
    goodSegmentCheck 65 21 45
      { lower := 10086, upper := 10143, witness := RowWitness.topPrime 10079 } = true := by
  exact good_top_prime_checked (i := 65) (r := 21) (s := 45) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row065_good137_checked :
    goodSegmentCheck 65 21 45
      { lower := 10144, upper := 10150, witness := RowWitness.topPrime 10141 } = true := by
  exact good_top_prime_checked (i := 65) (r := 21) (s := 45) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row065_good138_checked :
    goodSegmentCheck 65 21 45
      { lower := 10240, upper := 10270, witness := RowWitness.topPrime 10223 } = true := by
  exact good_top_prime_checked (i := 65) (r := 21) (s := 45) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row065_good139_checked :
    goodSegmentCheck 65 21 45
      { lower := 10580, upper := 10631, witness := RowWitness.topPrime 10567 } = true := by
  exact good_top_prime_checked (i := 65) (r := 21) (s := 45) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row065_good140_checked :
    goodSegmentCheck 65 21 45
      { lower := 10632, upper := 10635, witness := RowWitness.topPrime 10631 } = true := by
  exact good_top_prime_checked (i := 65) (r := 21) (s := 45) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row065_good141_checked :
    goodSegmentCheck 65 21 45
      { lower := 10935, upper := 10973, witness := RowWitness.topPrime 10909 } = true := by
  exact good_top_prime_checked (i := 65) (r := 21) (s := 45) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row065_good142_checked :
    goodSegmentCheck 65 21 45
      { lower := 10974, upper := 10999, witness := RowWitness.topPrime 10973 } = true := by
  exact good_top_prime_checked (i := 65) (r := 21) (s := 45) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row065_good143_checked :
    goodSegmentCheck 65 21 45
      { lower := 11094, upper := 11157, witness := RowWitness.topPrime 11093 } = true := by
  exact good_top_prime_checked (i := 65) (r := 21) (s := 45) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row065_good128_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row065_good129_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row065_good130_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row065_good131_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row065_good132_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row065_good133_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row065_good134_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row065_good135_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row065_good136_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row065_good137_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row065_good138_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row065_good139_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row065_good140_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row065_good141_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row065_good142_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row065_good143_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row065_good144_checked :
    goodSegmentCheck 65 21 45
      { lower := 11158, upper := 11158, witness := RowWitness.topPrime 11149 } = true := by
  exact good_top_prime_checked (i := 65) (r := 21) (s := 45) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row065_good145_checked :
    goodSegmentCheck 65 21 45
      { lower := 11163, upper := 11173, witness := RowWitness.topPrime 11161 } = true := by
  exact good_top_prime_checked (i := 65) (r := 21) (s := 45) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row065_good146_checked :
    goodSegmentCheck 65 21 45
      { lower := 11264, upper := 11300, witness := RowWitness.topPrime 11261 } = true := by
  exact good_top_prime_checked (i := 65) (r := 21) (s := 45) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row065_good147_checked :
    goodSegmentCheck 65 21 45
      { lower := 11664, upper := 11702, witness := RowWitness.topPrime 11657 } = true := by
  exact good_top_prime_checked (i := 65) (r := 21) (s := 45) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row065_good148_checked :
    goodSegmentCheck 65 21 45
      { lower := 11774, upper := 11807, witness := RowWitness.topPrime 11743 } = true := by
  exact good_top_prime_checked (i := 65) (r := 21) (s := 45) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row065_good149_checked :
    goodSegmentCheck 65 21 45
      { lower := 11808, upper := 11838, witness := RowWitness.topPrime 11807 } = true := by
  exact good_top_prime_checked (i := 65) (r := 21) (s := 45) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row065_good150_checked :
    goodSegmentCheck 65 21 45
      { lower := 12005, upper := 12043, witness := RowWitness.topPrime 11987 } = true := by
  exact good_top_prime_checked (i := 65) (r := 21) (s := 45) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row065_good151_checked :
    goodSegmentCheck 65 21 45
      { lower := 12321, upper := 12352, witness := RowWitness.topPrime 12301 } = true := by
  exact good_top_prime_checked (i := 65) (r := 21) (s := 45) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row065_good152_checked :
    goodSegmentCheck 65 21 45
      { lower := 12500, upper := 12557, witness := RowWitness.topPrime 12497 } = true := by
  exact good_top_prime_checked (i := 65) (r := 21) (s := 45) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row065_good153_checked :
    goodSegmentCheck 65 21 45
      { lower := 13254, upper := 13289, witness := RowWitness.topPrime 13249 } = true := by
  exact good_top_prime_checked (i := 65) (r := 21) (s := 45) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row065_good154_checked :
    goodSegmentCheck 65 21 45
      { lower := 13310, upper := 13373, witness := RowWitness.topPrime 13309 } = true := by
  exact good_top_prime_checked (i := 65) (r := 21) (s := 45) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row065_good155_checked :
    goodSegmentCheck 65 21 45
      { lower := 13374, upper := 13374, witness := RowWitness.topPrime 13367 } = true := by
  exact good_top_prime_checked (i := 65) (r := 21) (s := 45) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row065_good156_checked :
    goodSegmentCheck 65 21 45
      { lower := 13454, upper := 13515, witness := RowWitness.topPrime 13451 } = true := by
  exact good_top_prime_checked (i := 65) (r := 21) (s := 45) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row065_good157_checked :
    goodSegmentCheck 65 21 45
      { lower := 13516, upper := 13518, witness := RowWitness.topPrime 13513 } = true := by
  exact good_top_prime_checked (i := 65) (r := 21) (s := 45) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row065_good158_checked :
    goodSegmentCheck 65 21 45
      { lower := 13718, upper := 13754, witness := RowWitness.topPrime 13711 } = true := by
  exact good_top_prime_checked (i := 65) (r := 21) (s := 45) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row065_good159_checked :
    goodSegmentCheck 65 21 45
      { lower := 14336, upper := 14361, witness := RowWitness.topPrime 14327 } = true := by
  exact good_top_prime_checked (i := 65) (r := 21) (s := 45) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row065_good144_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row065_good145_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row065_good146_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row065_good147_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row065_good148_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row065_good149_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row065_good150_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row065_good151_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row065_good152_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row065_good153_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row065_good154_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row065_good155_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row065_good156_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row065_good157_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row065_good158_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row065_good159_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row065_good160_checked :
    goodSegmentCheck 65 21 45
      { lower := 14415, upper := 14470, witness := RowWitness.topPrime 14411 } = true := by
  exact good_top_prime_checked (i := 65) (r := 21) (s := 45) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row065_good161_checked :
    goodSegmentCheck 65 21 45
      { lower := 14641, upper := 14644, witness := RowWitness.topPrime 14639 } = true := by
  exact good_top_prime_checked (i := 65) (r := 21) (s := 45) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row065_good162_checked :
    goodSegmentCheck 65 21 45
      { lower := 14792, upper := 14803, witness := RowWitness.topPrime 14783 } = true := by
  exact good_top_prime_checked (i := 65) (r := 21) (s := 45) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row065_good163_checked :
    goodSegmentCheck 65 21 45
      { lower := 15138, upper := 15193, witness := RowWitness.topPrime 15137 } = true := by
  exact good_top_prime_checked (i := 65) (r := 21) (s := 45) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row065_good164_checked :
    goodSegmentCheck 65 21 45
      { lower := 15360, upper := 15373, witness := RowWitness.topPrime 15359 } = true := by
  exact good_top_prime_checked (i := 65) (r := 21) (s := 45) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row065_good165_checked :
    goodSegmentCheck 65 21 45
      { lower := 15376, upper := 15424, witness := RowWitness.topPrime 15373 } = true := by
  exact good_top_prime_checked (i := 65) (r := 21) (s := 45) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row065_good166_checked :
    goodSegmentCheck 65 21 45
      { lower := 15979, upper := 16036, witness := RowWitness.topPrime 15973 } = true := by
  exact good_top_prime_checked (i := 65) (r := 21) (s := 45) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row065_good167_checked :
    goodSegmentCheck 65 21 45
      { lower := 16038, upper := 16043, witness := RowWitness.topPrime 16033 } = true := by
  exact good_top_prime_checked (i := 65) (r := 21) (s := 45) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row065_good168_checked :
    goodSegmentCheck 65 21 45
      { lower := 16384, upper := 16401, witness := RowWitness.topPrime 16381 } = true := by
  exact good_top_prime_checked (i := 65) (r := 21) (s := 45) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row065_good169_checked :
    goodSegmentCheck 65 21 45
      { lower := 16428, upper := 16448, witness := RowWitness.topPrime 16427 } = true := by
  exact good_top_prime_checked (i := 65) (r := 21) (s := 45) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row065_good170_checked :
    goodSegmentCheck 65 21 45
      { lower := 16810, upper := 16851, witness := RowWitness.topPrime 16787 } = true := by
  exact good_top_prime_checked (i := 65) (r := 21) (s := 45) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row065_good171_checked :
    goodSegmentCheck 65 21 45
      { lower := 16852, upper := 16884, witness := RowWitness.topPrime 16843 } = true := by
  exact good_top_prime_checked (i := 65) (r := 21) (s := 45) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row065_good172_checked :
    goodSegmentCheck 65 21 45
      { lower := 17303, upper := 17362, witness := RowWitness.topPrime 17299 } = true := by
  exact good_top_prime_checked (i := 65) (r := 21) (s := 45) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row065_good173_checked :
    goodSegmentCheck 65 21 45
      { lower := 17408, upper := 17465, witness := RowWitness.topPrime 17401 } = true := by
  exact good_top_prime_checked (i := 65) (r := 21) (s := 45) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row065_good174_checked :
    goodSegmentCheck 65 21 45
      { lower := 17466, upper := 17469, witness := RowWitness.topPrime 17449 } = true := by
  exact good_top_prime_checked (i := 65) (r := 21) (s := 45) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row065_good175_checked :
    goodSegmentCheck 65 21 45
      { lower := 17672, upper := 17725, witness := RowWitness.topPrime 17669 } = true := by
  exact good_top_prime_checked (i := 65) (r := 21) (s := 45) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row065_good160_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row065_good161_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row065_good162_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row065_good163_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row065_good164_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row065_good165_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row065_good166_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row065_good167_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row065_good168_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row065_good169_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row065_good170_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row065_good171_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row065_good172_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row065_good173_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row065_good174_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row065_good175_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row065_good176_checked :
    goodSegmentCheck 65 21 45
      { lower := 18490, upper := 18545, witness := RowWitness.topPrime 18481 } = true := by
  exact good_top_prime_checked (i := 65) (r := 21) (s := 45) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row065_good177_checked :
    goodSegmentCheck 65 21 45
      { lower := 18546, upper := 18555, witness := RowWitness.topPrime 18541 } = true := by
  exact good_top_prime_checked (i := 65) (r := 21) (s := 45) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row065_good178_checked :
    goodSegmentCheck 65 21 45
      { lower := 18634, upper := 18669, witness := RowWitness.topPrime 18617 } = true := by
  exact good_top_prime_checked (i := 65) (r := 21) (s := 45) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row065_good179_checked :
    goodSegmentCheck 65 21 45
      { lower := 19208, upper := 19271, witness := RowWitness.topPrime 19207 } = true := by
  exact good_top_prime_checked (i := 65) (r := 21) (s := 45) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row065_good180_checked :
    goodSegmentCheck 65 21 45
      { lower := 19272, upper := 19272, witness := RowWitness.topPrime 19267 } = true := by
  exact good_top_prime_checked (i := 65) (r := 21) (s := 45) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row065_good181_checked :
    goodSegmentCheck 65 21 45
      { lower := 19663, upper := 19725, witness := RowWitness.topPrime 19661 } = true := by
  exact good_top_prime_checked (i := 65) (r := 21) (s := 45) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row065_good182_checked :
    goodSegmentCheck 65 21 45
      { lower := 19726, upper := 19727, witness := RowWitness.topPrime 19717 } = true := by
  exact good_top_prime_checked (i := 65) (r := 21) (s := 45) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row065_good183_checked :
    goodSegmentCheck 65 21 45
      { lower := 20181, upper := 20236, witness := RowWitness.topPrime 20177 } = true := by
  exact good_top_prime_checked (i := 65) (r := 21) (s := 45) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row065_good184_checked :
    goodSegmentCheck 65 21 45
      { lower := 20535, upper := 20544, witness := RowWitness.topPrime 20533 } = true := by
  exact good_top_prime_checked (i := 65) (r := 21) (s := 45) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row065_good185_checked :
    goodSegmentCheck 65 21 45
      { lower := 20577, upper := 20599, witness := RowWitness.topPrime 20563 } = true := by
  exact good_top_prime_checked (i := 65) (r := 21) (s := 45) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row065_good186_checked :
    goodSegmentCheck 65 21 45
      { lower := 21870, upper := 21927, witness := RowWitness.topPrime 21863 } = true := by
  exact good_top_prime_checked (i := 65) (r := 21) (s := 45) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row065_good187_checked :
    goodSegmentCheck 65 21 45
      { lower := 21928, upper := 21934, witness := RowWitness.topPrime 21911 } = true := by
  exact good_top_prime_checked (i := 65) (r := 21) (s := 45) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row065_good188_checked :
    goodSegmentCheck 65 21 45
      { lower := 22528, upper := 22536, witness := RowWitness.topPrime 22511 } = true := by
  exact good_top_prime_checked (i := 65) (r := 21) (s := 45) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row065_good189_checked :
    goodSegmentCheck 65 21 45
      { lower := 24010, upper := 24022, witness := RowWitness.topPrime 24007 } = true := by
  exact good_top_prime_checked (i := 65) (r := 21) (s := 45) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row065_good190_checked :
    goodSegmentCheck 65 21 45
      { lower := 24037, upper := 24093, witness := RowWitness.topPrime 24029 } = true := by
  exact good_top_prime_checked (i := 65) (r := 21) (s := 45) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row065_good191_checked :
    goodSegmentCheck 65 21 45
      { lower := 24094, upper := 24101, witness := RowWitness.topPrime 24091 } = true := by
  exact good_top_prime_checked (i := 65) (r := 21) (s := 45) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row065_good176_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row065_good177_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row065_good178_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row065_good179_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row065_good180_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row065_good181_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row065_good182_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row065_good183_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row065_good184_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row065_good185_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row065_good186_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row065_good187_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row065_good188_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row065_good189_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row065_good190_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row065_good191_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row065_good192_checked :
    goodSegmentCheck 65 21 45
      { lower := 24334, upper := 24363, witness := RowWitness.topPrime 24329 } = true := by
  exact good_top_prime_checked (i := 65) (r := 21) (s := 45) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row065_good193_checked :
    goodSegmentCheck 65 21 45
      { lower := 24367, upper := 24423, witness := RowWitness.topPrime 24359 } = true := by
  exact good_top_prime_checked (i := 65) (r := 21) (s := 45) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row065_good194_checked :
    goodSegmentCheck 65 21 45
      { lower := 24424, upper := 24431, witness := RowWitness.topPrime 24421 } = true := by
  exact good_top_prime_checked (i := 65) (r := 21) (s := 45) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row065_good195_checked :
    goodSegmentCheck 65 21 45
      { lower := 24576, upper := 24629, witness := RowWitness.topPrime 24571 } = true := by
  exact good_top_prime_checked (i := 65) (r := 21) (s := 45) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row065_good196_checked :
    goodSegmentCheck 65 21 45
      { lower := 25289, upper := 25325, witness := RowWitness.topPrime 25261 } = true := by
  exact good_top_prime_checked (i := 65) (r := 21) (s := 45) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row065_good197_checked :
    goodSegmentCheck 65 21 45
      { lower := 25326, upper := 25345, witness := RowWitness.topPrime 25321 } = true := by
  exact good_top_prime_checked (i := 65) (r := 21) (s := 45) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row065_good198_checked :
    goodSegmentCheck 65 21 45
      { lower := 26047, upper := 26075, witness := RowWitness.topPrime 26041 } = true := by
  exact good_top_prime_checked (i := 65) (r := 21) (s := 45) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row065_good199_checked :
    goodSegmentCheck 65 21 45
      { lower := 26624, upper := 26661, witness := RowWitness.topPrime 26597 } = true := by
  exact good_top_prime_checked (i := 65) (r := 21) (s := 45) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row065_good200_checked :
    goodSegmentCheck 65 21 45
      { lower := 26662, upper := 26684, witness := RowWitness.topPrime 26647 } = true := by
  exact good_top_prime_checked (i := 65) (r := 21) (s := 45) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row065_good201_checked :
    goodSegmentCheck 65 21 45
      { lower := 27436, upper := 27444, witness := RowWitness.topPrime 27431 } = true := by
  exact good_top_prime_checked (i := 65) (r := 21) (s := 45) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row065_good202_checked :
    goodSegmentCheck 65 21 45
      { lower := 28577, upper := 28625, witness := RowWitness.topPrime 28573 } = true := by
  exact good_top_prime_checked (i := 65) (r := 21) (s := 45) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row065_good203_checked :
    goodSegmentCheck 65 21 45
      { lower := 28717, upper := 28736, witness := RowWitness.topPrime 28711 } = true := by
  exact good_top_prime_checked (i := 65) (r := 21) (s := 45) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row065_good204_checked :
    goodSegmentCheck 65 21 45
      { lower := 28749, upper := 28781, witness := RowWitness.topPrime 28729 } = true := by
  exact good_top_prime_checked (i := 65) (r := 21) (s := 45) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row065_good205_checked :
    goodSegmentCheck 65 21 45
      { lower := 28812, upper := 28813, witness := RowWitness.topPrime 28807 } = true := by
  exact good_top_prime_checked (i := 65) (r := 21) (s := 45) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row065_good206_checked :
    goodSegmentCheck 65 21 45
      { lower := 29791, upper := 29832, witness := RowWitness.topPrime 29789 } = true := by
  exact good_top_prime_checked (i := 65) (r := 21) (s := 45) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row065_good207_checked :
    goodSegmentCheck 65 21 45
      { lower := 30926, upper := 30963, witness := RowWitness.topPrime 30911 } = true := by
  exact good_top_prime_checked (i := 65) (r := 21) (s := 45) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row065_good192_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row065_good193_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row065_good194_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row065_good195_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row065_good196_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row065_good197_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row065_good198_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row065_good199_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row065_good200_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row065_good201_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row065_good202_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row065_good203_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row065_good204_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row065_good205_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row065_good206_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row065_good207_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row065_good208_checked :
    goodSegmentCheck 65 21 45
      { lower := 31250, upper := 31277, witness := RowWitness.topPrime 31249 } = true := by
  exact good_top_prime_checked (i := 65) (r := 21) (s := 45) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row065_good209_checked :
    goodSegmentCheck 65 21 45
      { lower := 32805, upper := 32832, witness := RowWitness.topPrime 32803 } = true := by
  exact good_top_prime_checked (i := 65) (r := 21) (s := 45) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row065_good210_checked :
    goodSegmentCheck 65 21 45
      { lower := 34816, upper := 34871, witness := RowWitness.topPrime 34807 } = true := by
  exact good_top_prime_checked (i := 65) (r := 21) (s := 45) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row065_good211_checked :
    goodSegmentCheck 65 21 45
      { lower := 34872, upper := 34874, witness := RowWitness.topPrime 34871 } = true := by
  exact good_top_prime_checked (i := 65) (r := 21) (s := 45) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row065_good212_checked :
    goodSegmentCheck 65 21 45
      { lower := 36517, upper := 36561, witness := RowWitness.topPrime 36497 } = true := by
  exact good_top_prime_checked (i := 65) (r := 21) (s := 45) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row065_good213_checked :
    goodSegmentCheck 65 21 45
      { lower := 36562, upper := 36565, witness := RowWitness.topPrime 36559 } = true := by
  exact good_top_prime_checked (i := 65) (r := 21) (s := 45) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row065_good214_checked :
    goodSegmentCheck 65 21 45
      { lower := 37210, upper := 37243, witness := RowWitness.topPrime 37201 } = true := by
  exact good_top_prime_checked (i := 65) (r := 21) (s := 45) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row065_good215_checked :
    goodSegmentCheck 65 21 45
      { lower := 39326, upper := 39387, witness := RowWitness.topPrime 39323 } = true := by
  exact good_top_prime_checked (i := 65) (r := 21) (s := 45) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row065_good216_checked :
    goodSegmentCheck 65 21 45
      { lower := 39388, upper := 39390, witness := RowWitness.topPrime 39383 } = true := by
  exact good_top_prime_checked (i := 65) (r := 21) (s := 45) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row065_good217_checked :
    goodSegmentCheck 65 21 45
      { lower := 40960, upper := 40995, witness := RowWitness.topPrime 40949 } = true := by
  exact good_top_prime_checked (i := 65) (r := 21) (s := 45) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row065_good218_checked :
    goodSegmentCheck 65 21 45
      { lower := 48778, upper := 48798, witness := RowWitness.topPrime 48767 } = true := by
  exact good_top_prime_checked (i := 65) (r := 21) (s := 45) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row065_good219_checked :
    goodSegmentCheck 65 21 45
      { lower := 49152, upper := 49194, witness := RowWitness.topPrime 49139 } = true := by
  exact good_top_prime_checked (i := 65) (r := 21) (s := 45) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row065_good220_checked :
    goodSegmentCheck 65 21 45
      { lower := 59582, upper := 59600, witness := RowWitness.topPrime 59581 } = true := by
  exact good_top_prime_checked (i := 65) (r := 21) (s := 45) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row065_good221_checked :
    goodSegmentCheck 65 21 45
      { lower := 73205, upper := 73231, witness := RowWitness.topPrime 73189 } = true := by
  exact good_top_prime_checked (i := 65) (r := 21) (s := 45) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row065_good222_checked :
    goodSegmentCheck 65 21 45
      { lower := 73728, upper := 73759, witness := RowWitness.topPrime 73727 } = true := by
  exact good_top_prime_checked (i := 65) (r := 21) (s := 45) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row065_good223_checked :
    goodSegmentCheck 65 21 45
      { lower := 137842, upper := 137845, witness := RowWitness.topPrime 137831 } = true := by
  exact good_top_prime_checked (i := 65) (r := 21) (s := 45) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row065_good208_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row065_good209_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row065_good210_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row065_good211_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row065_good212_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row065_good213_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row065_good214_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row065_good215_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row065_good216_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row065_good217_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row065_good218_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row065_good219_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row065_good220_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row065_good221_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row065_good222_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row065_good223_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row065_good224_checked :
    goodSegmentCheck 65 21 45
      { lower := 327701, upper := 327744, witness := RowWitness.topPrime 327689 } = true := by
  exact good_top_prime_checked (i := 65) (r := 21) (s := 45) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row065_good224_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row065_goods_checked :
    row065.goods.all (goodSegmentCheck row065.height.i row065.height.r row065.height.s) = true := by
  change row065_goods.all (goodSegmentCheck 65 21 45) = true
  simp only [row065_goods, List.all_cons, List.all_nil,
    row065_good000_checked,
    row065_good001_checked,
    row065_good002_checked,
    row065_good003_checked,
    row065_good004_checked,
    row065_good005_checked,
    row065_good006_checked,
    row065_good007_checked,
    row065_good008_checked,
    row065_good009_checked,
    row065_good010_checked,
    row065_good011_checked,
    row065_good012_checked,
    row065_good013_checked,
    row065_good014_checked,
    row065_good015_checked,
    row065_good016_checked,
    row065_good017_checked,
    row065_good018_checked,
    row065_good019_checked,
    row065_good020_checked,
    row065_good021_checked,
    row065_good022_checked,
    row065_good023_checked,
    row065_good024_checked,
    row065_good025_checked,
    row065_good026_checked,
    row065_good027_checked,
    row065_good028_checked,
    row065_good029_checked,
    row065_good030_checked,
    row065_good031_checked,
    row065_good032_checked,
    row065_good033_checked,
    row065_good034_checked,
    row065_good035_checked,
    row065_good036_checked,
    row065_good037_checked,
    row065_good038_checked,
    row065_good039_checked,
    row065_good040_checked,
    row065_good041_checked,
    row065_good042_checked,
    row065_good043_checked,
    row065_good044_checked,
    row065_good045_checked,
    row065_good046_checked,
    row065_good047_checked,
    row065_good048_checked,
    row065_good049_checked,
    row065_good050_checked,
    row065_good051_checked,
    row065_good052_checked,
    row065_good053_checked,
    row065_good054_checked,
    row065_good055_checked,
    row065_good056_checked,
    row065_good057_checked,
    row065_good058_checked,
    row065_good059_checked,
    row065_good060_checked,
    row065_good061_checked,
    row065_good062_checked,
    row065_good063_checked,
    row065_good064_checked,
    row065_good065_checked,
    row065_good066_checked,
    row065_good067_checked,
    row065_good068_checked,
    row065_good069_checked,
    row065_good070_checked,
    row065_good071_checked,
    row065_good072_checked,
    row065_good073_checked,
    row065_good074_checked,
    row065_good075_checked,
    row065_good076_checked,
    row065_good077_checked,
    row065_good078_checked,
    row065_good079_checked,
    row065_good080_checked,
    row065_good081_checked,
    row065_good082_checked,
    row065_good083_checked,
    row065_good084_checked,
    row065_good085_checked,
    row065_good086_checked,
    row065_good087_checked,
    row065_good088_checked,
    row065_good089_checked,
    row065_good090_checked,
    row065_good091_checked,
    row065_good092_checked,
    row065_good093_checked,
    row065_good094_checked,
    row065_good095_checked,
    row065_good096_checked,
    row065_good097_checked,
    row065_good098_checked,
    row065_good099_checked,
    row065_good100_checked,
    row065_good101_checked,
    row065_good102_checked,
    row065_good103_checked,
    row065_good104_checked,
    row065_good105_checked,
    row065_good106_checked,
    row065_good107_checked,
    row065_good108_checked,
    row065_good109_checked,
    row065_good110_checked,
    row065_good111_checked,
    row065_good112_checked,
    row065_good113_checked,
    row065_good114_checked,
    row065_good115_checked,
    row065_good116_checked,
    row065_good117_checked,
    row065_good118_checked,
    row065_good119_checked,
    row065_good120_checked,
    row065_good121_checked,
    row065_good122_checked,
    row065_good123_checked,
    row065_good124_checked,
    row065_good125_checked,
    row065_good126_checked,
    row065_good127_checked,
    row065_good128_checked,
    row065_good129_checked,
    row065_good130_checked,
    row065_good131_checked,
    row065_good132_checked,
    row065_good133_checked,
    row065_good134_checked,
    row065_good135_checked,
    row065_good136_checked,
    row065_good137_checked,
    row065_good138_checked,
    row065_good139_checked,
    row065_good140_checked,
    row065_good141_checked,
    row065_good142_checked,
    row065_good143_checked,
    row065_good144_checked,
    row065_good145_checked,
    row065_good146_checked,
    row065_good147_checked,
    row065_good148_checked,
    row065_good149_checked,
    row065_good150_checked,
    row065_good151_checked,
    row065_good152_checked,
    row065_good153_checked,
    row065_good154_checked,
    row065_good155_checked,
    row065_good156_checked,
    row065_good157_checked,
    row065_good158_checked,
    row065_good159_checked,
    row065_good160_checked,
    row065_good161_checked,
    row065_good162_checked,
    row065_good163_checked,
    row065_good164_checked,
    row065_good165_checked,
    row065_good166_checked,
    row065_good167_checked,
    row065_good168_checked,
    row065_good169_checked,
    row065_good170_checked,
    row065_good171_checked,
    row065_good172_checked,
    row065_good173_checked,
    row065_good174_checked,
    row065_good175_checked,
    row065_good176_checked,
    row065_good177_checked,
    row065_good178_checked,
    row065_good179_checked,
    row065_good180_checked,
    row065_good181_checked,
    row065_good182_checked,
    row065_good183_checked,
    row065_good184_checked,
    row065_good185_checked,
    row065_good186_checked,
    row065_good187_checked,
    row065_good188_checked,
    row065_good189_checked,
    row065_good190_checked,
    row065_good191_checked,
    row065_good192_checked,
    row065_good193_checked,
    row065_good194_checked,
    row065_good195_checked,
    row065_good196_checked,
    row065_good197_checked,
    row065_good198_checked,
    row065_good199_checked,
    row065_good200_checked,
    row065_good201_checked,
    row065_good202_checked,
    row065_good203_checked,
    row065_good204_checked,
    row065_good205_checked,
    row065_good206_checked,
    row065_good207_checked,
    row065_good208_checked,
    row065_good209_checked,
    row065_good210_checked,
    row065_good211_checked,
    row065_good212_checked,
    row065_good213_checked,
    row065_good214_checked,
    row065_good215_checked,
    row065_good216_checked,
    row065_good217_checked,
    row065_good218_checked,
    row065_good219_checked,
    row065_good220_checked,
    row065_good221_checked,
    row065_good222_checked,
    row065_good223_checked,
    row065_good224_checked, Bool.true_and]

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row065_goods_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row065_registered :
    decide (row065.height ∈ heightCertificateData) = true := by
  decide +kernel

theorem row065_small_checked :
    coverCheck (2 * row065.height.i + 2) (row065.height.i * (row065.height.i - 1) - 1)
      (row065.goods.map goodSegmentBounds) = true := by
  decide +kernel

theorem row065_layerCover_checked :
    coverCheck (row065.height.i * (row065.height.i - 1)) (row065.height.n0 - 1)
      (row065.layers.map CoverLayer.bounds) = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row065_registered
#print axioms B699LowIndex.LowIndexLean513dc7cc.row065_small_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row065_layerCover_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row065_bounds : List NatInterval :=
  [(132, 195), (196, 257), (258, 321), (322, 381), (382, 443), (444, 507), (508, 567), (568, 627), (628, 683), (684, 747), (748, 807), (808, 861), (862, 923), (924, 983), (984, 1047), (1048, 1103), (1104, 1167), (1168, 1227), (1228, 1287), (1288, 1347), (1348, 1391), (1392, 1445), (1446, 1503), (1504, 1563), (1564, 1623), (1624, 1685), (1686, 1733), (1734, 1797), (1798, 1853), (1854, 1911), (1912, 1971), (1972, 2015), (2016, 2075), (2076, 2133), (2134, 2195), (2196, 2243), (2244, 2307), (2308, 2361), (2362, 2421), (2422, 2481), (2482, 2541), (2542, 2603), (2604, 2657), (2658, 2721), (2722, 2783), (2784, 2841), (2842, 2901), (2902, 2961), (2962, 3021), (3022, 3083), (3084, 3147), (3148, 3201), (3202, 3255), (3256, 3317), (3318, 3377), (3378, 3437), (3438, 3497), (3498, 3555), (3556, 3611), (3612, 3671), (3672, 3735), (3736, 3797), (3798, 3861), (3862, 3917), (3918, 3981), (3982, 4031), (4032, 4091), (4092, 4155), (4156, 4180), (4232, 4269), (4335, 4391), (4392, 4455), (4456, 4482), (4617, 4667), (4668, 4681), (4802, 4865), (4866, 4925), (4926, 4928), (5046, 5103), (5104, 5118), (5120, 5183), (5184, 5184), (5202, 5209), (5324, 5387), (5388, 5410), (5415, 5440), (5476, 5479), (5488, 5547), (5548, 5555), (5589, 5611), (5618, 5655), (5656, 5682), (5776, 5813), (5814, 5877), (5878, 5933), (5934, 5951), (6075, 6133), (6137, 6139), (6144, 6207), (6208, 6208), (6348, 6407), (6408, 6422), (6517, 6555), (6556, 6581), (6647, 6701), (6702, 6719), (6727, 6783), (6784, 6791), (6845, 6905), (6906, 6963), (6964, 7000), (7203, 7257), (7258, 7284), (7406, 7457), (7458, 7470), (7546, 7605), (7606, 7633), (7688, 7744), (7935, 7997), (7998, 8006), (8019, 8050), (8214, 8273), (8274, 8278), (8410, 8453), (8454, 8491), (8664, 8727), (8728, 8728), (8748, 8768), (9025, 9057), (9245, 9305), (9306, 9309), (9375, 9381), (9522, 9541), (9583, 9586), (9604, 9665), (9666, 9668), (10086, 10143), (10144, 10150), (10240, 10270), (10580, 10631), (10632, 10635), (10935, 10973), (10974, 10999), (11094, 11157), (11158, 11158), (11163, 11173), (11264, 11300), (11664, 11702), (11774, 11807), (11808, 11838), (12005, 12043), (12321, 12352), (12500, 12557), (13254, 13289), (13310, 13373), (13374, 13374), (13454, 13515), (13516, 13518), (13718, 13754), (14336, 14361), (14415, 14470), (14641, 14644), (14792, 14803), (15138, 15193), (15360, 15373), (15376, 15424), (15979, 16036), (16038, 16043), (16384, 16401), (16428, 16448), (16810, 16851), (16852, 16884), (17303, 17362), (17408, 17465), (17466, 17469), (17672, 17725), (18490, 18545), (18546, 18555), (18634, 18669), (19208, 19271), (19272, 19272), (19663, 19725), (19726, 19727), (20181, 20236), (20535, 20544), (20577, 20599), (21870, 21927), (21928, 21934), (22528, 22536), (24010, 24022), (24037, 24093), (24094, 24101), (24334, 24363), (24367, 24423), (24424, 24431), (24576, 24629), (25289, 25325), (25326, 25345), (26047, 26075), (26624, 26661), (26662, 26684), (27436, 27444), (28577, 28625), (28717, 28736), (28749, 28781), (28812, 28813), (29791, 29832), (30926, 30963), (31250, 31277), (32805, 32832), (34816, 34871), (34872, 34874), (36517, 36561), (36562, 36565), (37210, 37243), (39326, 39387), (39388, 39390), (40960, 40995), (48778, 48798), (49152, 49194), (59582, 59600), (73205, 73231), (73728, 73759), (137842, 137845), (327701, 327744)]

theorem row065_bounds_eq : row065.goods.map goodSegmentBounds = row065_bounds := by
  rfl

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row065_bounds_eq

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row065_layer000_intervals : List ColouredInterval :=
  [(2, 4160, 4160), (2, 4352, 4416), (2, 4608, 4672), (2, 4864, 4928), (2, 5120, 5184), (2, 5376, 5440), (2, 5632, 5696), (2, 5888, 5952), (2, 6144, 6208), (2, 6400, 6464), (2, 6656, 6720), (2, 6912, 6976), (2, 7168, 7232), (2, 4160, 4160), (2, 4608, 4672), (2, 5120, 5184), (2, 5632, 5696), (2, 6144, 6208), (2, 6656, 6720), (2, 7168, 7232), (2, 7680, 7744), (2, 8192, 8256), (2, 4160, 4160), (2, 5120, 5184), (2, 6144, 6208), (2, 7168, 7232), (2, 8192, 8256), (2, 4160, 4160), (2, 6144, 6208), (2, 8192, 8256), (2, 4160, 4160), (2, 8192, 8256), (2, 8192, 8256), (3, 4160, 4195), (3, 4374, 4438), (3, 4617, 4681), (3, 4860, 4924), (3, 5103, 5167), (3, 5346, 5410), (3, 5589, 5653), (3, 5832, 5896), (3, 6075, 6139), (3, 6318, 6382), (3, 6561, 6625), (3, 6804, 6868), (3, 4374, 4438), (3, 5103, 5167), (3, 5832, 5896), (3, 6561, 6625), (3, 7290, 7354), (3, 8019, 8083), (3, 4374, 4438), (3, 6561, 6625), (3, 6561, 6625), (5, 6250, 6314), (7, 4160, 4180), (7, 4459, 4523), (7, 4802, 4866), (7, 5145, 5209), (7, 5488, 5552), (7, 5831, 5895), (7, 6174, 6238), (7, 6517, 6581), (7, 6860, 6924), (7, 7203, 7267), (7, 7546, 7610), (7, 7889, 7953), (7, 8232, 8296), (7, 4802, 4866), (7, 7203, 7267), (11, 5324, 5388), (11, 6655, 6719), (11, 7986, 8050), (13, 4394, 4458), (17, 4335, 4399), (17, 4624, 4688), (17, 4913, 4977), (17, 5202, 5266), (17, 5491, 5555), (17, 5780, 5844), (17, 6069, 6133), (17, 6358, 6422), (17, 6647, 6711), (17, 6936, 7000), (17, 7225, 7289), (17, 7514, 7578), (17, 7803, 7867), (17, 8092, 8156), (17, 4913, 4977), (19, 4332, 4396), (19, 4693, 4757), (19, 5054, 5118), (19, 5415, 5479), (19, 5776, 5840), (19, 6137, 6201), (19, 6498, 6562), (19, 6859, 6923), (19, 7220, 7284), (19, 7581, 7645), (19, 7942, 8006), (19, 8303, 8319), (19, 6859, 6923), (23, 4232, 4296), (23, 4761, 4825), (23, 5290, 5354), (23, 5819, 5883), (23, 6348, 6412), (23, 6877, 6941), (23, 7406, 7470), (23, 7935, 7999), (29, 4205, 4269), (29, 5046, 5110), (29, 5887, 5951), (29, 6728, 6792), (29, 7569, 7633), (31, 4805, 4869), (31, 5766, 5830), (31, 6727, 6791), (31, 7688, 7752), (37, 4160, 4171), (37, 5476, 5540), (37, 6845, 6909), (37, 8214, 8278), (41, 5043, 5107), (41, 6724, 6788), (43, 5547, 5611), (43, 7396, 7460), (47, 4418, 4482), (47, 6627, 6691), (53, 5618, 5682), (59, 6962, 7026), (61, 7442, 7506)]

def row065_layer000_block000 : List ColouredInterval :=
  [(2, 4160, 4160), (2, 4352, 4416), (2, 4608, 4672), (2, 4864, 4928), (2, 5120, 5184), (2, 5376, 5440), (2, 5632, 5696), (2, 5888, 5952), (2, 6144, 6208), (2, 6400, 6464), (2, 6656, 6720), (2, 6912, 6976), (2, 7168, 7232), (2, 4160, 4160), (2, 4608, 4672)]

def row065_layer000_block001 : List ColouredInterval :=
  [(2, 5120, 5184), (2, 5632, 5696), (2, 6144, 6208), (2, 6656, 6720), (2, 7168, 7232), (2, 7680, 7744), (2, 8192, 8256), (2, 4160, 4160), (2, 5120, 5184), (2, 6144, 6208), (2, 7168, 7232), (2, 8192, 8256), (2, 4160, 4160), (2, 6144, 6208), (2, 8192, 8256)]

def row065_layer000_block002 : List ColouredInterval :=
  [(2, 4160, 4160), (2, 8192, 8256), (2, 8192, 8256), (3, 4160, 4195), (3, 4374, 4438), (3, 4617, 4681), (3, 4860, 4924), (3, 5103, 5167), (3, 5346, 5410), (3, 5589, 5653), (3, 5832, 5896), (3, 6075, 6139), (3, 6318, 6382), (3, 6561, 6625), (3, 6804, 6868)]

def row065_layer000_block003 : List ColouredInterval :=
  [(3, 4374, 4438), (3, 5103, 5167), (3, 5832, 5896), (3, 6561, 6625), (3, 7290, 7354), (3, 8019, 8083), (3, 4374, 4438), (3, 6561, 6625), (3, 6561, 6625), (5, 6250, 6314), (7, 4160, 4180), (7, 4459, 4523), (7, 4802, 4866), (7, 5145, 5209), (7, 5488, 5552)]

def row065_layer000_block004 : List ColouredInterval :=
  [(7, 5831, 5895), (7, 6174, 6238), (7, 6517, 6581), (7, 6860, 6924), (7, 7203, 7267), (7, 7546, 7610), (7, 7889, 7953), (7, 8232, 8296), (7, 4802, 4866), (7, 7203, 7267), (11, 5324, 5388), (11, 6655, 6719), (11, 7986, 8050), (13, 4394, 4458), (17, 4335, 4399)]

def row065_layer000_block005 : List ColouredInterval :=
  [(17, 4624, 4688), (17, 4913, 4977), (17, 5202, 5266), (17, 5491, 5555), (17, 5780, 5844), (17, 6069, 6133), (17, 6358, 6422), (17, 6647, 6711), (17, 6936, 7000), (17, 7225, 7289), (17, 7514, 7578), (17, 7803, 7867), (17, 8092, 8156), (17, 4913, 4977), (19, 4332, 4396)]

def row065_layer000_block006 : List ColouredInterval :=
  [(19, 4693, 4757), (19, 5054, 5118), (19, 5415, 5479), (19, 5776, 5840), (19, 6137, 6201), (19, 6498, 6562), (19, 6859, 6923), (19, 7220, 7284), (19, 7581, 7645), (19, 7942, 8006), (19, 8303, 8319), (19, 6859, 6923), (23, 4232, 4296), (23, 4761, 4825), (23, 5290, 5354)]

def row065_layer000_block007 : List ColouredInterval :=
  [(23, 5819, 5883), (23, 6348, 6412), (23, 6877, 6941), (23, 7406, 7470), (23, 7935, 7999), (29, 4205, 4269), (29, 5046, 5110), (29, 5887, 5951), (29, 6728, 6792), (29, 7569, 7633), (31, 4805, 4869), (31, 5766, 5830), (31, 6727, 6791), (31, 7688, 7752), (37, 4160, 4171)]

def row065_layer000_block008 : List ColouredInterval :=
  [(37, 5476, 5540), (37, 6845, 6909), (37, 8214, 8278), (41, 5043, 5107), (41, 6724, 6788), (43, 5547, 5611), (43, 7396, 7460), (47, 4418, 4482), (47, 6627, 6691), (53, 5618, 5682), (59, 6962, 7026), (61, 7442, 7506)]

def row065_layer000_chunks : List (List ColouredInterval) :=
  [row065_layer000_block000, row065_layer000_block001, row065_layer000_block002, row065_layer000_block003, row065_layer000_block004, row065_layer000_block005, row065_layer000_block006, row065_layer000_block007, row065_layer000_block008]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row065_layer000_intervals

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row065_layer000_arithmetic : LayerArithmeticValid row065.height { lower := 4160, upper := 8320, M := 28 } := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row065_layer000_arithmetic

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row065_layer000_enumeration :
    activePowerIntervalList 65 28 4160 8320 = row065_layer000_intervals := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row065_layer000_enumeration

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row065_layer000_pairs000 :
    row065_layer000_block000.all (fun I => row065_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row065_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row065_layer000_pairs000

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row065_layer000_pairs001 :
    row065_layer000_block001.all (fun I => row065_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row065_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row065_layer000_pairs001

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row065_layer000_pairs002 :
    row065_layer000_block002.all (fun I => row065_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row065_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row065_layer000_pairs002

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row065_layer000_pairs003 :
    row065_layer000_block003.all (fun I => row065_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row065_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row065_layer000_pairs003

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row065_layer000_pairs004 :
    row065_layer000_block004.all (fun I => row065_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row065_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row065_layer000_pairs004

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row065_layer000_pairs005 :
    row065_layer000_block005.all (fun I => row065_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row065_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row065_layer000_pairs005

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row065_layer000_pairs006 :
    row065_layer000_block006.all (fun I => row065_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row065_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row065_layer000_pairs006

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row065_layer000_pairs007 :
    row065_layer000_block007.all (fun I => row065_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row065_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row065_layer000_pairs007

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row065_layer000_pairs008 :
    row065_layer000_block008.all (fun I => row065_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row065_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row065_layer000_pairs008

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row065_layer000_chunks_eq : row065_layer000_chunks.flatten = row065_layer000_intervals := by
  rfl

theorem row065_layer000_pairs : pairCoverCheck row065_layer000_intervals row065_bounds = true := by
  apply pairCoverCheck_of_chunks row065_layer000_chunks_eq
  intro block hblock
  simp only [row065_layer000_chunks, List.mem_cons, List.mem_nil_iff, or_false] at hblock
  rcases hblock with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
  · exact row065_layer000_pairs000
  · exact row065_layer000_pairs001
  · exact row065_layer000_pairs002
  · exact row065_layer000_pairs003
  · exact row065_layer000_pairs004
  · exact row065_layer000_pairs005
  · exact row065_layer000_pairs006
  · exact row065_layer000_pairs007
  · exact row065_layer000_pairs008

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row065_layer000_chunks_eq
#print axioms B699LowIndex.LowIndexLean513dc7cc.row065_layer000_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row065_layer000_checked :
    coverLayerCheck row065.height row065.goods { lower := 4160, upper := 8320, M := 28 } = true := by
  exact coverLayerCheck_of_parts row065_layer000_arithmetic row065_layer000_enumeration row065_bounds_eq row065_layer000_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row065_layer000_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row065_layer001_intervals : List ColouredInterval :=
  [(2, 8704, 8768), (2, 9216, 9280), (2, 9728, 9792), (2, 10240, 10304), (2, 10752, 10816), (2, 11264, 11328), (2, 11776, 11840), (2, 12288, 12352), (2, 12800, 12864), (2, 9216, 9280), (2, 10240, 10304), (2, 11264, 11328), (2, 12288, 12352), (2, 13312, 13376), (2, 14336, 14400), (2, 15360, 15424), (2, 16384, 16448), (2, 10240, 10304), (2, 12288, 12352), (2, 14336, 14400), (2, 16384, 16448), (2, 12288, 12352), (2, 16384, 16448), (2, 16384, 16448), (2, 16384, 16448), (3, 8748, 8812), (3, 9477, 9541), (3, 10206, 10270), (3, 10935, 10999), (3, 11664, 11728), (3, 12393, 12457), (3, 13122, 13186), (3, 13851, 13915), (3, 14580, 14644), (3, 15309, 15373), (3, 16038, 16102), (3, 8748, 8812), (3, 10935, 10999), (3, 13122, 13186), (3, 15309, 15373), (3, 13122, 13186), (5, 9375, 9439), (5, 12500, 12564), (5, 15625, 15689), (5, 15625, 15689), (7, 8575, 8639), (7, 9604, 9668), (7, 12005, 12069), (7, 14406, 14470), (11, 9317, 9381), (11, 10648, 10712), (11, 11979, 12043), (11, 13310, 13374), (11, 14641, 14705), (11, 15972, 16036), (11, 14641, 14705), (17, 9826, 9890), (17, 14739, 14803), (19, 8320, 8367), (19, 8664, 8728), (19, 9025, 9089), (19, 13718, 13782), (23, 8464, 8528), (23, 8993, 9057), (23, 9522, 9586), (23, 10051, 10115), (23, 10580, 10644), (23, 11109, 11173), (23, 11638, 11702), (23, 12167, 12231), (23, 12696, 12760), (23, 13225, 13289), (23, 12167, 12231), (29, 8410, 8474), (29, 9251, 9315), (29, 10092, 10156), (29, 10933, 10997), (29, 11774, 11838), (29, 12615, 12679), (29, 13456, 13520), (29, 14297, 14361), (29, 15138, 15202), (29, 15979, 16043), (31, 8649, 8713), (31, 9610, 9674), (31, 10571, 10635), (31, 11532, 11596), (31, 12493, 12557), (31, 13454, 13518), (31, 14415, 14479), (31, 15376, 15440), (31, 16337, 16401), (37, 9583, 9647), (37, 10952, 11016), (37, 12321, 12385), (37, 13690, 13754), (37, 15059, 15123), (37, 16428, 16492), (41, 8405, 8469), (41, 10086, 10150), (41, 11767, 11831), (41, 13448, 13512), (41, 15129, 15193), (43, 9245, 9309), (43, 11094, 11158), (43, 12943, 13007), (43, 14792, 14856), (47, 8836, 8900), (47, 11045, 11109), (47, 13254, 13318), (47, 15463, 15527), (53, 8427, 8491), (53, 11236, 11300), (53, 14045, 14109), (59, 10443, 10507), (59, 13924, 13988), (61, 11163, 11227), (61, 14884, 14948)]

def row065_layer001_block000 : List ColouredInterval :=
  [(2, 8704, 8768), (2, 9216, 9280), (2, 9728, 9792), (2, 10240, 10304), (2, 10752, 10816), (2, 11264, 11328), (2, 11776, 11840), (2, 12288, 12352), (2, 12800, 12864), (2, 9216, 9280), (2, 10240, 10304), (2, 11264, 11328), (2, 12288, 12352), (2, 13312, 13376), (2, 14336, 14400), (2, 15360, 15424)]

def row065_layer001_block001 : List ColouredInterval :=
  [(2, 16384, 16448), (2, 10240, 10304), (2, 12288, 12352), (2, 14336, 14400), (2, 16384, 16448), (2, 12288, 12352), (2, 16384, 16448), (2, 16384, 16448), (2, 16384, 16448), (3, 8748, 8812), (3, 9477, 9541), (3, 10206, 10270), (3, 10935, 10999), (3, 11664, 11728), (3, 12393, 12457), (3, 13122, 13186)]

def row065_layer001_block002 : List ColouredInterval :=
  [(3, 13851, 13915), (3, 14580, 14644), (3, 15309, 15373), (3, 16038, 16102), (3, 8748, 8812), (3, 10935, 10999), (3, 13122, 13186), (3, 15309, 15373), (3, 13122, 13186), (5, 9375, 9439), (5, 12500, 12564), (5, 15625, 15689), (5, 15625, 15689), (7, 8575, 8639), (7, 9604, 9668), (7, 12005, 12069)]

def row065_layer001_block003 : List ColouredInterval :=
  [(7, 14406, 14470), (11, 9317, 9381), (11, 10648, 10712), (11, 11979, 12043), (11, 13310, 13374), (11, 14641, 14705), (11, 15972, 16036), (11, 14641, 14705), (17, 9826, 9890), (17, 14739, 14803), (19, 8320, 8367), (19, 8664, 8728), (19, 9025, 9089), (19, 13718, 13782), (23, 8464, 8528), (23, 8993, 9057)]

def row065_layer001_block004 : List ColouredInterval :=
  [(23, 9522, 9586), (23, 10051, 10115), (23, 10580, 10644), (23, 11109, 11173), (23, 11638, 11702), (23, 12167, 12231), (23, 12696, 12760), (23, 13225, 13289), (23, 12167, 12231), (29, 8410, 8474), (29, 9251, 9315), (29, 10092, 10156), (29, 10933, 10997), (29, 11774, 11838), (29, 12615, 12679), (29, 13456, 13520)]

def row065_layer001_block005 : List ColouredInterval :=
  [(29, 14297, 14361), (29, 15138, 15202), (29, 15979, 16043), (31, 8649, 8713), (31, 9610, 9674), (31, 10571, 10635), (31, 11532, 11596), (31, 12493, 12557), (31, 13454, 13518), (31, 14415, 14479), (31, 15376, 15440), (31, 16337, 16401), (37, 9583, 9647), (37, 10952, 11016), (37, 12321, 12385), (37, 13690, 13754)]

def row065_layer001_block006 : List ColouredInterval :=
  [(37, 15059, 15123), (37, 16428, 16492), (41, 8405, 8469), (41, 10086, 10150), (41, 11767, 11831), (41, 13448, 13512), (41, 15129, 15193), (43, 9245, 9309), (43, 11094, 11158), (43, 12943, 13007), (43, 14792, 14856), (47, 8836, 8900), (47, 11045, 11109), (47, 13254, 13318), (47, 15463, 15527), (53, 8427, 8491)]

def row065_layer001_block007 : List ColouredInterval :=
  [(53, 11236, 11300), (53, 14045, 14109), (59, 10443, 10507), (59, 13924, 13988), (61, 11163, 11227), (61, 14884, 14948)]

def row065_layer001_chunks : List (List ColouredInterval) :=
  [row065_layer001_block000, row065_layer001_block001, row065_layer001_block002, row065_layer001_block003, row065_layer001_block004, row065_layer001_block005, row065_layer001_block006, row065_layer001_block007]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row065_layer001_intervals

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row065_layer001_arithmetic : LayerArithmeticValid row065.height { lower := 8320, upper := 16640, M := 25 } := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row065_layer001_arithmetic

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row065_layer001_enumeration :
    activePowerIntervalList 65 25 8320 16640 = row065_layer001_intervals := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row065_layer001_enumeration

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row065_layer001_pairs000 :
    row065_layer001_block000.all (fun I => row065_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row065_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row065_layer001_pairs000

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row065_layer001_pairs001 :
    row065_layer001_block001.all (fun I => row065_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row065_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row065_layer001_pairs001

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row065_layer001_pairs002 :
    row065_layer001_block002.all (fun I => row065_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row065_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row065_layer001_pairs002

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row065_layer001_pairs003 :
    row065_layer001_block003.all (fun I => row065_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row065_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row065_layer001_pairs003

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row065_layer001_pairs004 :
    row065_layer001_block004.all (fun I => row065_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row065_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row065_layer001_pairs004

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row065_layer001_pairs005 :
    row065_layer001_block005.all (fun I => row065_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row065_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row065_layer001_pairs005

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row065_layer001_pairs006 :
    row065_layer001_block006.all (fun I => row065_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row065_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row065_layer001_pairs006

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row065_layer001_pairs007 :
    row065_layer001_block007.all (fun I => row065_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row065_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row065_layer001_pairs007

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row065_layer001_chunks_eq : row065_layer001_chunks.flatten = row065_layer001_intervals := by
  rfl

theorem row065_layer001_pairs : pairCoverCheck row065_layer001_intervals row065_bounds = true := by
  apply pairCoverCheck_of_chunks row065_layer001_chunks_eq
  intro block hblock
  simp only [row065_layer001_chunks, List.mem_cons, List.mem_nil_iff, or_false] at hblock
  rcases hblock with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
  · exact row065_layer001_pairs000
  · exact row065_layer001_pairs001
  · exact row065_layer001_pairs002
  · exact row065_layer001_pairs003
  · exact row065_layer001_pairs004
  · exact row065_layer001_pairs005
  · exact row065_layer001_pairs006
  · exact row065_layer001_pairs007

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row065_layer001_chunks_eq
#print axioms B699LowIndex.LowIndexLean513dc7cc.row065_layer001_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row065_layer001_checked :
    coverLayerCheck row065.height row065.goods { lower := 8320, upper := 16640, M := 25 } = true := by
  exact coverLayerCheck_of_parts row065_layer001_arithmetic row065_layer001_enumeration row065_bounds_eq row065_layer001_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row065_layer001_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row065_layer002_intervals : List ColouredInterval :=
  [(2, 17408, 17472), (2, 18432, 18496), (2, 19456, 19520), (2, 20480, 20544), (2, 21504, 21568), (2, 22528, 22592), (2, 18432, 18496), (2, 20480, 20544), (2, 22528, 22592), (2, 24576, 24640), (2, 26624, 26688), (2, 28672, 28736), (2, 30720, 30784), (2, 32768, 32832), (2, 20480, 20544), (2, 24576, 24640), (2, 28672, 28736), (2, 32768, 32832), (2, 24576, 24640), (2, 32768, 32832), (2, 32768, 32832), (2, 32768, 32832), (3, 17496, 17560), (3, 19683, 19747), (3, 21870, 21934), (3, 24057, 24121), (3, 26244, 26308), (3, 28431, 28495), (3, 30618, 30682), (3, 32805, 32869), (3, 19683, 19747), (3, 26244, 26308), (3, 32805, 32869), (3, 19683, 19747), (5, 31250, 31314), (7, 16807, 16871), (7, 19208, 19272), (7, 21609, 21673), (7, 24010, 24074), (7, 26411, 26475), (7, 28812, 28876), (7, 31213, 31277), (7, 16807, 16871), (11, 17303, 17367), (11, 18634, 18698), (11, 19965, 20029), (11, 21296, 21360), (11, 22627, 22691), (11, 23958, 24022), (11, 25289, 25353), (11, 26620, 26684), (11, 27951, 28015), (11, 29282, 29346), (11, 29282, 29346), (13, 28561, 28625), (17, 19652, 19716), (17, 24565, 24629), (17, 29478, 29542), (19, 20577, 20641), (19, 27436, 27500), (23, 24334, 24398), (29, 16820, 16884), (29, 17661, 17725), (29, 18502, 18566), (29, 24389, 24453), (31, 17298, 17362), (31, 18259, 18323), (31, 19220, 19284), (31, 20181, 20245), (31, 21142, 21206), (31, 29791, 29855), (37, 17797, 17861), (37, 19166, 19230), (37, 20535, 20599), (37, 21904, 21968), (37, 23273, 23337), (37, 24642, 24706), (37, 26011, 26075), (37, 27380, 27444), (37, 28749, 28813), (37, 30118, 30182), (41, 16810, 16874), (41, 18491, 18555), (41, 20172, 20236), (41, 21853, 21917), (41, 23534, 23598), (41, 25215, 25279), (41, 26896, 26960), (41, 28577, 28641), (41, 30258, 30322), (41, 31939, 32003), (43, 16641, 16705), (43, 18490, 18554), (43, 20339, 20403), (43, 22188, 22252), (43, 24037, 24101), (43, 25886, 25950), (43, 27735, 27799), (43, 29584, 29648), (43, 31433, 31497), (47, 17672, 17736), (47, 19881, 19945), (47, 22090, 22154), (47, 24299, 24363), (47, 26508, 26572), (47, 28717, 28781), (47, 30926, 30990), (47, 33135, 33199), (53, 16854, 16918), (53, 19663, 19727), (53, 22472, 22536), (53, 25281, 25345), (53, 28090, 28154), (53, 30899, 30963), (59, 17405, 17469), (59, 20886, 20950), (59, 24367, 24431), (59, 27848, 27912), (59, 31329, 31393), (61, 18605, 18669), (61, 22326, 22390), (61, 26047, 26111), (61, 29768, 29832)]

def row065_layer002_block000 : List ColouredInterval :=
  [(2, 17408, 17472), (2, 18432, 18496), (2, 19456, 19520), (2, 20480, 20544), (2, 21504, 21568), (2, 22528, 22592), (2, 18432, 18496), (2, 20480, 20544), (2, 22528, 22592), (2, 24576, 24640), (2, 26624, 26688), (2, 28672, 28736), (2, 30720, 30784), (2, 32768, 32832), (2, 20480, 20544), (2, 24576, 24640)]

def row065_layer002_block001 : List ColouredInterval :=
  [(2, 28672, 28736), (2, 32768, 32832), (2, 24576, 24640), (2, 32768, 32832), (2, 32768, 32832), (2, 32768, 32832), (3, 17496, 17560), (3, 19683, 19747), (3, 21870, 21934), (3, 24057, 24121), (3, 26244, 26308), (3, 28431, 28495), (3, 30618, 30682), (3, 32805, 32869), (3, 19683, 19747), (3, 26244, 26308)]

def row065_layer002_block002 : List ColouredInterval :=
  [(3, 32805, 32869), (3, 19683, 19747), (5, 31250, 31314), (7, 16807, 16871), (7, 19208, 19272), (7, 21609, 21673), (7, 24010, 24074), (7, 26411, 26475), (7, 28812, 28876), (7, 31213, 31277), (7, 16807, 16871), (11, 17303, 17367), (11, 18634, 18698), (11, 19965, 20029), (11, 21296, 21360), (11, 22627, 22691)]

def row065_layer002_block003 : List ColouredInterval :=
  [(11, 23958, 24022), (11, 25289, 25353), (11, 26620, 26684), (11, 27951, 28015), (11, 29282, 29346), (11, 29282, 29346), (13, 28561, 28625), (17, 19652, 19716), (17, 24565, 24629), (17, 29478, 29542), (19, 20577, 20641), (19, 27436, 27500), (23, 24334, 24398), (29, 16820, 16884), (29, 17661, 17725), (29, 18502, 18566)]

def row065_layer002_block004 : List ColouredInterval :=
  [(29, 24389, 24453), (31, 17298, 17362), (31, 18259, 18323), (31, 19220, 19284), (31, 20181, 20245), (31, 21142, 21206), (31, 29791, 29855), (37, 17797, 17861), (37, 19166, 19230), (37, 20535, 20599), (37, 21904, 21968), (37, 23273, 23337), (37, 24642, 24706), (37, 26011, 26075), (37, 27380, 27444), (37, 28749, 28813)]

def row065_layer002_block005 : List ColouredInterval :=
  [(37, 30118, 30182), (41, 16810, 16874), (41, 18491, 18555), (41, 20172, 20236), (41, 21853, 21917), (41, 23534, 23598), (41, 25215, 25279), (41, 26896, 26960), (41, 28577, 28641), (41, 30258, 30322), (41, 31939, 32003), (43, 16641, 16705), (43, 18490, 18554), (43, 20339, 20403), (43, 22188, 22252), (43, 24037, 24101)]

def row065_layer002_block006 : List ColouredInterval :=
  [(43, 25886, 25950), (43, 27735, 27799), (43, 29584, 29648), (43, 31433, 31497), (47, 17672, 17736), (47, 19881, 19945), (47, 22090, 22154), (47, 24299, 24363), (47, 26508, 26572), (47, 28717, 28781), (47, 30926, 30990), (47, 33135, 33199), (53, 16854, 16918), (53, 19663, 19727), (53, 22472, 22536), (53, 25281, 25345)]

def row065_layer002_block007 : List ColouredInterval :=
  [(53, 28090, 28154), (53, 30899, 30963), (59, 17405, 17469), (59, 20886, 20950), (59, 24367, 24431), (59, 27848, 27912), (59, 31329, 31393), (61, 18605, 18669), (61, 22326, 22390), (61, 26047, 26111), (61, 29768, 29832)]

def row065_layer002_chunks : List (List ColouredInterval) :=
  [row065_layer002_block000, row065_layer002_block001, row065_layer002_block002, row065_layer002_block003, row065_layer002_block004, row065_layer002_block005, row065_layer002_block006, row065_layer002_block007]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row065_layer002_intervals

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row065_layer002_arithmetic : LayerArithmeticValid row065.height { lower := 16640, upper := 33280, M := 22 } := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row065_layer002_arithmetic

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row065_layer002_enumeration :
    activePowerIntervalList 65 22 16640 33280 = row065_layer002_intervals := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row065_layer002_enumeration

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row065_layer002_pairs000 :
    row065_layer002_block000.all (fun I => row065_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row065_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row065_layer002_pairs000

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row065_layer002_pairs001 :
    row065_layer002_block001.all (fun I => row065_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row065_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row065_layer002_pairs001

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row065_layer002_pairs002 :
    row065_layer002_block002.all (fun I => row065_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row065_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row065_layer002_pairs002

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row065_layer002_pairs003 :
    row065_layer002_block003.all (fun I => row065_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row065_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row065_layer002_pairs003

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row065_layer002_pairs004 :
    row065_layer002_block004.all (fun I => row065_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row065_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row065_layer002_pairs004

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row065_layer002_pairs005 :
    row065_layer002_block005.all (fun I => row065_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row065_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row065_layer002_pairs005

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row065_layer002_pairs006 :
    row065_layer002_block006.all (fun I => row065_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row065_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row065_layer002_pairs006

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row065_layer002_pairs007 :
    row065_layer002_block007.all (fun I => row065_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row065_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row065_layer002_pairs007

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row065_layer002_chunks_eq : row065_layer002_chunks.flatten = row065_layer002_intervals := by
  rfl

theorem row065_layer002_pairs : pairCoverCheck row065_layer002_intervals row065_bounds = true := by
  apply pairCoverCheck_of_chunks row065_layer002_chunks_eq
  intro block hblock
  simp only [row065_layer002_chunks, List.mem_cons, List.mem_nil_iff, or_false] at hblock
  rcases hblock with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
  · exact row065_layer002_pairs000
  · exact row065_layer002_pairs001
  · exact row065_layer002_pairs002
  · exact row065_layer002_pairs003
  · exact row065_layer002_pairs004
  · exact row065_layer002_pairs005
  · exact row065_layer002_pairs006
  · exact row065_layer002_pairs007

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row065_layer002_chunks_eq
#print axioms B699LowIndex.LowIndexLean513dc7cc.row065_layer002_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row065_layer002_checked :
    coverLayerCheck row065.height row065.goods { lower := 16640, upper := 33280, M := 22 } = true := by
  exact coverLayerCheck_of_parts row065_layer002_arithmetic row065_layer002_enumeration row065_bounds_eq row065_layer002_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row065_layer002_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row065_layer003_intervals : List ColouredInterval :=
  [(2, 34816, 34880), (2, 36864, 36928), (2, 38912, 38976), (2, 36864, 36928), (2, 40960, 41024), (2, 45056, 45120), (2, 49152, 49216), (2, 53248, 53312), (2, 57344, 57408), (2, 61440, 61504), (2, 65536, 65600), (2, 40960, 41024), (2, 49152, 49216), (2, 57344, 57408), (2, 65536, 65600), (2, 49152, 49216), (2, 65536, 65600), (2, 65536, 65600), (2, 65536, 65600), (3, 34992, 35056), (3, 37179, 37243), (3, 39366, 39430), (3, 41553, 41617), (3, 39366, 39430), (3, 45927, 45991), (3, 52488, 52552), (3, 59049, 59113), (3, 65610, 65674), (3, 39366, 39430), (3, 59049, 59113), (3, 59049, 59113), (5, 46875, 46939), (7, 33614, 33678), (7, 36015, 36079), (7, 38416, 38480), (7, 40817, 40881), (7, 43218, 43282), (7, 45619, 45683), (7, 33614, 33678), (7, 50421, 50485), (11, 43923, 43987), (11, 58564, 58628), (17, 34391, 34455), (17, 39304, 39368), (17, 44217, 44281), (17, 49130, 49194), (17, 54043, 54107), (17, 58956, 59020), (17, 63869, 63933), (19, 34295, 34359), (19, 41154, 41218), (19, 48013, 48077), (19, 54872, 54936), (19, 61731, 61795), (23, 36501, 36565), (23, 48668, 48732), (23, 60835, 60899), (29, 48778, 48842), (31, 59582, 59646), (37, 50653, 50717), (43, 33282, 33346), (43, 35131, 35195), (47, 35344, 35408), (47, 37553, 37617), (47, 39762, 39826), (47, 41971, 42035), (53, 33708, 33772), (53, 36517, 36581), (53, 39326, 39390), (53, 42135, 42199), (53, 44944, 45008), (53, 47753, 47817), (53, 50562, 50626), (53, 53371, 53435), (59, 34810, 34874), (59, 38291, 38355), (59, 41772, 41836), (59, 45253, 45317), (59, 48734, 48798), (59, 52215, 52279), (59, 55696, 55760), (59, 59177, 59241), (59, 62658, 62722), (59, 66139, 66203), (61, 33489, 33553), (61, 37210, 37274), (61, 40931, 40995), (61, 44652, 44716), (61, 48373, 48437), (61, 52094, 52158), (61, 55815, 55879), (61, 59536, 59600), (61, 63257, 63321)]

def row065_layer003_block000 : List ColouredInterval :=
  [(2, 34816, 34880), (2, 36864, 36928), (2, 38912, 38976), (2, 36864, 36928), (2, 40960, 41024), (2, 45056, 45120), (2, 49152, 49216), (2, 53248, 53312), (2, 57344, 57408), (2, 61440, 61504), (2, 65536, 65600), (2, 40960, 41024), (2, 49152, 49216), (2, 57344, 57408), (2, 65536, 65600), (2, 49152, 49216)]

def row065_layer003_block001 : List ColouredInterval :=
  [(2, 65536, 65600), (2, 65536, 65600), (2, 65536, 65600), (3, 34992, 35056), (3, 37179, 37243), (3, 39366, 39430), (3, 41553, 41617), (3, 39366, 39430), (3, 45927, 45991), (3, 52488, 52552), (3, 59049, 59113), (3, 65610, 65674), (3, 39366, 39430), (3, 59049, 59113), (3, 59049, 59113), (5, 46875, 46939)]

def row065_layer003_block002 : List ColouredInterval :=
  [(7, 33614, 33678), (7, 36015, 36079), (7, 38416, 38480), (7, 40817, 40881), (7, 43218, 43282), (7, 45619, 45683), (7, 33614, 33678), (7, 50421, 50485), (11, 43923, 43987), (11, 58564, 58628), (17, 34391, 34455), (17, 39304, 39368), (17, 44217, 44281), (17, 49130, 49194), (17, 54043, 54107), (17, 58956, 59020)]

def row065_layer003_block003 : List ColouredInterval :=
  [(17, 63869, 63933), (19, 34295, 34359), (19, 41154, 41218), (19, 48013, 48077), (19, 54872, 54936), (19, 61731, 61795), (23, 36501, 36565), (23, 48668, 48732), (23, 60835, 60899), (29, 48778, 48842), (31, 59582, 59646), (37, 50653, 50717), (43, 33282, 33346), (43, 35131, 35195), (47, 35344, 35408), (47, 37553, 37617)]

def row065_layer003_block004 : List ColouredInterval :=
  [(47, 39762, 39826), (47, 41971, 42035), (53, 33708, 33772), (53, 36517, 36581), (53, 39326, 39390), (53, 42135, 42199), (53, 44944, 45008), (53, 47753, 47817), (53, 50562, 50626), (53, 53371, 53435), (59, 34810, 34874), (59, 38291, 38355), (59, 41772, 41836), (59, 45253, 45317), (59, 48734, 48798), (59, 52215, 52279)]

def row065_layer003_block005 : List ColouredInterval :=
  [(59, 55696, 55760), (59, 59177, 59241), (59, 62658, 62722), (59, 66139, 66203), (61, 33489, 33553), (61, 37210, 37274), (61, 40931, 40995), (61, 44652, 44716), (61, 48373, 48437), (61, 52094, 52158), (61, 55815, 55879), (61, 59536, 59600), (61, 63257, 63321)]

def row065_layer003_chunks : List (List ColouredInterval) :=
  [row065_layer003_block000, row065_layer003_block001, row065_layer003_block002, row065_layer003_block003, row065_layer003_block004, row065_layer003_block005]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row065_layer003_intervals

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row065_layer003_arithmetic : LayerArithmeticValid row065.height { lower := 33280, upper := 66560, M := 19 } := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row065_layer003_arithmetic

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row065_layer003_enumeration :
    activePowerIntervalList 65 19 33280 66560 = row065_layer003_intervals := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row065_layer003_enumeration

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row065_layer003_pairs000 :
    row065_layer003_block000.all (fun I => row065_layer003_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row065_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row065_layer003_pairs000

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row065_layer003_pairs001 :
    row065_layer003_block001.all (fun I => row065_layer003_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row065_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row065_layer003_pairs001

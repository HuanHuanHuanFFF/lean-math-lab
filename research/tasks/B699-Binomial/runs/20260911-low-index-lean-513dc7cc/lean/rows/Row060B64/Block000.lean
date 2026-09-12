import research.tasks.«B699-Binomial».runs.«20260909-low-index-structure-b41a5a63».lean.FiniteCover
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.WitnessBridge
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.LayerParts
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.PairChunks

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row060_height : HeightCertificateDatum := { i := 60, r := 19, s := 41, n0Power10 := 13 }

def row060_goods : List GoodSegment := [
  { lower := 122, upper := 172, witness := RowWitness.topPrime 113 },
  { lower := 173, upper := 232, witness := RowWitness.topPrime 173 },
  { lower := 233, upper := 292, witness := RowWitness.topPrime 233 },
  { lower := 293, upper := 352, witness := RowWitness.topPrime 293 },
  { lower := 353, upper := 412, witness := RowWitness.topPrime 353 },
  { lower := 413, upper := 468, witness := RowWitness.topPrime 409 },
  { lower := 469, upper := 526, witness := RowWitness.topPrime 467 },
  { lower := 527, upper := 582, witness := RowWitness.topPrime 523 },
  { lower := 583, upper := 636, witness := RowWitness.topPrime 577 },
  { lower := 637, upper := 690, witness := RowWitness.topPrime 631 },
  { lower := 691, upper := 750, witness := RowWitness.topPrime 691 },
  { lower := 751, upper := 810, witness := RowWitness.topPrime 751 },
  { lower := 811, upper := 870, witness := RowWitness.topPrime 811 },
  { lower := 871, upper := 922, witness := RowWitness.topPrime 863 },
  { lower := 923, upper := 978, witness := RowWitness.topPrime 919 },
  { lower := 979, upper := 1036, witness := RowWitness.topPrime 977 },
  { lower := 1037, upper := 1092, witness := RowWitness.topPrime 1033 },
  { lower := 1093, upper := 1152, witness := RowWitness.topPrime 1093 },
  { lower := 1153, upper := 1212, witness := RowWitness.topPrime 1153 },
  { lower := 1213, upper := 1272, witness := RowWitness.topPrime 1213 },
  { lower := 1273, upper := 1318, witness := RowWitness.topPrime 1259 },
  { lower := 1319, upper := 1378, witness := RowWitness.topPrime 1319 },
  { lower := 1379, upper := 1432, witness := RowWitness.topPrime 1373 },
  { lower := 1433, upper := 1492, witness := RowWitness.topPrime 1433 },
  { lower := 1493, upper := 1552, witness := RowWitness.topPrime 1493 },
  { lower := 1553, upper := 1612, witness := RowWitness.topPrime 1553 },
  { lower := 1613, upper := 1672, witness := RowWitness.topPrime 1613 },
  { lower := 1673, upper := 1728, witness := RowWitness.topPrime 1669 },
  { lower := 1729, upper := 1782, witness := RowWitness.topPrime 1723 },
  { lower := 1783, upper := 1842, witness := RowWitness.topPrime 1783 },
  { lower := 1843, upper := 1890, witness := RowWitness.topPrime 1831 },
  { lower := 1891, upper := 1948, witness := RowWitness.topPrime 1889 },
  { lower := 1949, upper := 2008, witness := RowWitness.topPrime 1949 },
  { lower := 2009, upper := 2062, witness := RowWitness.topPrime 2003 },
  { lower := 2063, upper := 2122, witness := RowWitness.topPrime 2063 },
  { lower := 2123, upper := 2172, witness := RowWitness.topPrime 2113 },
  { lower := 2173, upper := 2220, witness := RowWitness.topPrime 2161 },
  { lower := 2221, upper := 2280, witness := RowWitness.topPrime 2221 },
  { lower := 2281, upper := 2340, witness := RowWitness.topPrime 2281 },
  { lower := 2341, upper := 2400, witness := RowWitness.topPrime 2341 },
  { lower := 2401, upper := 2458, witness := RowWitness.topPrime 2399 },
  { lower := 2459, upper := 2518, witness := RowWitness.topPrime 2459 },
  { lower := 2519, upper := 2562, witness := RowWitness.topPrime 2503 },
  { lower := 2563, upper := 2616, witness := RowWitness.topPrime 2557 },
  { lower := 2617, upper := 2676, witness := RowWitness.topPrime 2617 },
  { lower := 2677, upper := 2736, witness := RowWitness.topPrime 2677 },
  { lower := 2737, upper := 2790, witness := RowWitness.topPrime 2731 },
  { lower := 2791, upper := 2850, witness := RowWitness.topPrime 2791 },
  { lower := 2851, upper := 2910, witness := RowWitness.topPrime 2851 },
  { lower := 2911, upper := 2968, witness := RowWitness.topPrime 2909 },
  { lower := 2969, upper := 3028, witness := RowWitness.topPrime 2969 },
  { lower := 3029, upper := 3082, witness := RowWitness.topPrime 3023 },
  { lower := 3083, upper := 3142, witness := RowWitness.topPrime 3083 },
  { lower := 3143, upper := 3196, witness := RowWitness.topPrime 3137 },
  { lower := 3197, upper := 3250, witness := RowWitness.topPrime 3191 },
  { lower := 3251, upper := 3310, witness := RowWitness.topPrime 3251 },
  { lower := 3311, upper := 3366, witness := RowWitness.topPrime 3307 },
  { lower := 3367, upper := 3420, witness := RowWitness.topPrime 3361 },
  { lower := 3421, upper := 3472, witness := RowWitness.topPrime 3413 },
  { lower := 3473, upper := 3528, witness := RowWitness.topPrime 3469 },
  { lower := 3529, upper := 3540, witness := RowWitness.topPrime 3529 },
  { lower := 3549, upper := 3568, witness := RowWitness.topPrime 3547 },
  { lower := 3584, upper := 3608, witness := RowWitness.topPrime 3583 },
  { lower := 3610, upper := 3666, witness := RowWitness.topPrime 3607 },
  { lower := 3667, upper := 3689, witness := RowWitness.topPrime 3659 },
  { lower := 3698, upper := 3756, witness := RowWitness.topPrime 3697 },
  { lower := 3757, upper := 3798, witness := RowWitness.topPrime 3739 },
  { lower := 3799, upper := 3816, witness := RowWitness.topPrime 3797 },
  { lower := 3887, upper := 3903, witness := RowWitness.topPrime 3881 },
  { lower := 3993, upper := 4030, witness := RowWitness.topPrime 3989 },
  { lower := 4046, upper := 4052, witness := RowWitness.topPrime 4027 },
  { lower := 4056, upper := 4110, witness := RowWitness.topPrime 4051 },
  { lower := 4111, upper := 4166, witness := RowWitness.topPrime 4111 },
  { lower := 4225, upper := 4278, witness := RowWitness.topPrime 4219 },
  { lower := 4279, upper := 4284, witness := RowWitness.topPrime 4273 },
  { lower := 4335, upper := 4386, witness := RowWitness.topPrime 4327 },
  { lower := 4387, upper := 4432, witness := RowWitness.topPrime 4373 },
  { lower := 4433, upper := 4453, witness := RowWitness.topPrime 4423 },
  { lower := 4459, upper := 4477, witness := RowWitness.topPrime 4457 },
  { lower := 4732, upper := 4752, witness := RowWitness.topPrime 4729 },
  { lower := 4761, upper := 4791, witness := RowWitness.topPrime 4759 },
  { lower := 4802, upper := 4860, witness := RowWitness.topPrime 4801 },
  { lower := 4861, upper := 4861, witness := RowWitness.topPrime 4861 },
  { lower := 4913, upper := 4960, witness := RowWitness.topPrime 4909 },
  { lower := 5046, upper := 5098, witness := RowWitness.topPrime 5039 },
  { lower := 5099, upper := 5158, witness := RowWitness.topPrime 5099 },
  { lower := 5159, upper := 5179, witness := RowWitness.topPrime 5153 },
  { lower := 5202, upper := 5204, witness := RowWitness.topPrime 5197 },
  { lower := 5239, upper := 5261, witness := RowWitness.topPrime 5237 },
  { lower := 5290, upper := 5298, witness := RowWitness.topPrime 5281 },
  { lower := 5324, upper := 5349, witness := RowWitness.topPrime 5323 },
  { lower := 5488, upper := 5542, witness := RowWitness.topPrime 5483 },
  { lower := 5543, upper := 5550, witness := RowWitness.topPrime 5531 },
  { lower := 5776, upper := 5808, witness := RowWitness.topPrime 5749 },
  { lower := 5809, upper := 5866, witness := RowWitness.topPrime 5807 },
  { lower := 5867, upper := 5891, witness := RowWitness.topPrime 5867 },
  { lower := 6144, upper := 6202, witness := RowWitness.topPrime 6143 },
  { lower := 6203, upper := 6203, witness := RowWitness.topPrime 6203 },
  { lower := 6358, upper := 6407, witness := RowWitness.topPrime 6353 },
  { lower := 6517, upper := 6550, witness := RowWitness.topPrime 6491 },
  { lower := 6551, upper := 6557, witness := RowWitness.topPrime 6551 },
  { lower := 6561, upper := 6576, witness := RowWitness.topPrime 6553 },
  { lower := 6591, upper := 6620, witness := RowWitness.topPrime 6581 },
  { lower := 6627, upper := 6678, witness := RowWitness.topPrime 6619 },
  { lower := 6679, upper := 6706, witness := RowWitness.topPrime 6679 },
  { lower := 6727, upper := 6778, witness := RowWitness.topPrime 6719 },
  { lower := 6779, upper := 6786, witness := RowWitness.topPrime 6779 },
  { lower := 6859, upper := 6916, witness := RowWitness.topPrime 6857 },
  { lower := 6917, upper := 6919, witness := RowWitness.topPrime 6917 },
  { lower := 6936, upper := 6936, witness := RowWitness.topPrime 6917 },
  { lower := 6962, upper := 6995, witness := RowWitness.topPrime 6961 },
  { lower := 7203, upper := 7252, witness := RowWitness.topPrime 7193 },
  { lower := 7253, upper := 7279, witness := RowWitness.topPrime 7253 },
  { lower := 7406, upper := 7452, witness := RowWitness.topPrime 7393 },
  { lower := 7453, upper := 7455, witness := RowWitness.topPrime 7451 },
  { lower := 7546, upper := 7600, witness := RowWitness.topPrime 7541 },
  { lower := 7601, upper := 7628, witness := RowWitness.topPrime 7591 },
  { lower := 7935, upper := 7992, witness := RowWitness.topPrime 7933 },
  { lower := 7993, upper := 8001, witness := RowWitness.topPrime 7993 },
  { lower := 8214, upper := 8268, witness := RowWitness.topPrime 8209 },
  { lower := 8269, upper := 8273, witness := RowWitness.topPrime 8269 },
  { lower := 8410, upper := 8448, witness := RowWitness.topPrime 8389 },
  { lower := 8449, upper := 8486, witness := RowWitness.topPrime 8447 },
  { lower := 8664, upper := 8708, witness := RowWitness.topPrime 8663 },
  { lower := 8788, upper := 8807, witness := RowWitness.topPrime 8783 },
  { lower := 8836, upper := 8847, witness := RowWitness.topPrime 8831 },
  { lower := 9025, upper := 9052, witness := RowWitness.topPrime 9013 },
  { lower := 9251, upper := 9300, witness := RowWitness.topPrime 9241 },
  { lower := 9301, upper := 9310, witness := RowWitness.topPrime 9293 },
  { lower := 9317, upper := 9320, witness := RowWitness.topPrime 9311 },
  { lower := 9375, upper := 9376, witness := RowWitness.topPrime 9371 },
  { lower := 9386, upper := 9434, witness := RowWitness.topPrime 9377 },
  { lower := 9604, upper := 9660, witness := RowWitness.topPrime 9601 },
  { lower := 9661, upper := 9663, witness := RowWitness.topPrime 9661 },
  { lower := 10086, upper := 10138, witness := RowWitness.topPrime 10079 },
  { lower := 10139, upper := 10151, witness := RowWitness.topPrime 10139 },
  { lower := 10580, upper := 10626, witness := RowWitness.topPrime 10567 },
  { lower := 10627, upper := 10630, witness := RowWitness.topPrime 10627 },
  { lower := 10935, upper := 10968, witness := RowWitness.topPrime 10909 },
  { lower := 10969, upper := 11011, witness := RowWitness.topPrime 10957 },
  { lower := 11094, upper := 11104, witness := RowWitness.topPrime 11093 },
  { lower := 11109, upper := 11152, witness := RowWitness.topPrime 11093 },
  { lower := 11153, upper := 11153, witness := RowWitness.topPrime 11149 },
  { lower := 11774, upper := 11802, witness := RowWitness.topPrime 11743 },
  { lower := 11803, upper := 11826, witness := RowWitness.topPrime 11801 },
  { lower := 12005, upper := 12038, witness := RowWitness.topPrime 11987 },
  { lower := 12321, upper := 12347, witness := RowWitness.topPrime 12301 },
  { lower := 12500, upper := 12552, witness := RowWitness.topPrime 12497 },
  { lower := 13225, upper := 13241, witness := RowWitness.topPrime 13219 },
  { lower := 13254, upper := 13284, witness := RowWitness.topPrime 13249 },
  { lower := 13310, upper := 13313, witness := RowWitness.topPrime 13309 },
  { lower := 13454, upper := 13510, witness := RowWitness.topPrime 13451 },
  { lower := 13511, upper := 13513, witness := RowWitness.topPrime 13499 },
  { lower := 13718, upper := 13749, witness := RowWitness.topPrime 13711 },
  { lower := 13754, upper := 13777, witness := RowWitness.topPrime 13751 },
  { lower := 14415, upper := 14465, witness := RowWitness.topPrime 14411 },
  { lower := 14792, upper := 14798, witness := RowWitness.topPrime 14783 },
  { lower := 15138, upper := 15188, witness := RowWitness.topPrime 15137 },
  { lower := 15379, upper := 15435, witness := RowWitness.topPrime 15377 },
  { lower := 15979, upper := 16031, witness := RowWitness.topPrime 15973 },
  { lower := 16384, upper := 16396, witness := RowWitness.topPrime 16381 },
  { lower := 16428, upper := 16443, witness := RowWitness.topPrime 16427 },
  { lower := 16810, upper := 16846, witness := RowWitness.topPrime 16787 },
  { lower := 16847, upper := 16879, witness := RowWitness.topPrime 16843 },
  { lower := 17303, upper := 17357, witness := RowWitness.topPrime 17299 },
  { lower := 17672, upper := 17720, witness := RowWitness.topPrime 17669 },
  { lower := 18491, upper := 18540, witness := RowWitness.topPrime 18481 },
  { lower := 18541, upper := 18550, witness := RowWitness.topPrime 18541 },
  { lower := 19208, upper := 19266, witness := RowWitness.topPrime 19207 },
  { lower := 19267, upper := 19267, witness := RowWitness.topPrime 19267 },
  { lower := 19663, upper := 19720, witness := RowWitness.topPrime 19661 },
  { lower := 19721, upper := 19722, witness := RowWitness.topPrime 19717 },
  { lower := 20181, upper := 20236, witness := RowWitness.topPrime 20177 },
  { lower := 20237, upper := 20240, witness := RowWitness.topPrime 20233 },
  { lower := 20535, upper := 20539, witness := RowWitness.topPrime 20533 },
  { lower := 20577, upper := 20594, witness := RowWitness.topPrime 20563 },
  { lower := 21904, upper := 21912, witness := RowWitness.topPrime 21893 },
  { lower := 22103, upper := 22149, witness := RowWitness.topPrime 22093 },
  { lower := 24010, upper := 24017, witness := RowWitness.topPrime 24007 },
  { lower := 24025, upper := 24082, witness := RowWitness.topPrime 24023 },
  { lower := 24083, upper := 24084, witness := RowWitness.topPrime 24083 },
  { lower := 24334, upper := 24358, witness := RowWitness.topPrime 24329 },
  { lower := 24367, upper := 24418, witness := RowWitness.topPrime 24359 },
  { lower := 24419, upper := 24426, witness := RowWitness.topPrime 24419 },
  { lower := 24576, upper := 24624, witness := RowWitness.topPrime 24571 },
  { lower := 25289, upper := 25320, witness := RowWitness.topPrime 25261 },
  { lower := 25321, upper := 25340, witness := RowWitness.topPrime 25321 },
  { lower := 26411, upper := 26423, witness := RowWitness.topPrime 26407 },
  { lower := 27436, upper := 27439, witness := RowWitness.topPrime 27431 },
  { lower := 28577, upper := 28620, witness := RowWitness.topPrime 28573 },
  { lower := 28749, upper := 28776, witness := RowWitness.topPrime 28729 },
  { lower := 30926, upper := 30958, witness := RowWitness.topPrime 30911 },
  { lower := 31250, upper := 31272, witness := RowWitness.topPrime 31249 },
  { lower := 32805, upper := 32827, witness := RowWitness.topPrime 32803 },
  { lower := 33620, upper := 33673, witness := RowWitness.topPrime 33619 },
  { lower := 35152, upper := 35190, witness := RowWitness.topPrime 35149 },
  { lower := 35344, upper := 35360, witness := RowWitness.topPrime 35339 },
  { lower := 36517, upper := 36556, witness := RowWitness.topPrime 36497 },
  { lower := 36557, upper := 36560, witness := RowWitness.topPrime 36551 },
  { lower := 36982, upper := 37038, witness := RowWitness.topPrime 36979 },
  { lower := 37039, upper := 37039, witness := RowWitness.topPrime 37039 },
  { lower := 39326, upper := 39363, witness := RowWitness.topPrime 39323 },
  { lower := 39366, upper := 39385, witness := RowWitness.topPrime 39359 },
  { lower := 41772, upper := 41802, witness := RowWitness.topPrime 41771 },
  { lower := 43940, upper := 43982, witness := RowWitness.topPrime 43933 },
  { lower := 44217, upper := 44239, witness := RowWitness.topPrime 44207 },
  { lower := 48020, upper := 48072, witness := RowWitness.topPrime 48017 },
  { lower := 48778, upper := 48793, witness := RowWitness.topPrime 48767 },
  { lower := 49152, upper := 49189, witness := RowWitness.topPrime 49139 },
  { lower := 73205, upper := 73226, witness := RowWitness.topPrime 73189 },
  { lower := 98304, upper := 98319, witness := RowWitness.topPrime 98299 }
]

def row060_layers : List CoverLayer := [
  { lower := 3540, upper := 7080, M := 31 },
  { lower := 7080, upper := 14160, M := 28 },
  { lower := 14160, upper := 28320, M := 25 },
  { lower := 28320, upper := 56640, M := 22 },
  { lower := 56640, upper := 113280, M := 20 },
  { lower := 113280, upper := 226560, M := 18 },
  { lower := 226560, upper := 453120, M := 16 },
  { lower := 453120, upper := 906240, M := 14 },
  { lower := 906240, upper := 1812480, M := 13 },
  { lower := 1812480, upper := 3624960, M := 11 },
  { lower := 3624960, upper := 7249920, M := 10 },
  { lower := 7249920, upper := 14499840, M := 9 },
  { lower := 14499840, upper := 28999680, M := 8 },
  { lower := 28999680, upper := 57999360, M := 7 },
  { lower := 57999360, upper := 115998720, M := 7 },
  { lower := 115998720, upper := 231997440, M := 6 },
  { lower := 231997440, upper := 463994880, M := 5 },
  { lower := 463994880, upper := 927989760, M := 5 },
  { lower := 927989760, upper := 1855979520, M := 4 },
  { lower := 1855979520, upper := 3711959040, M := 4 },
  { lower := 3711959040, upper := 7423918080, M := 4 },
  { lower := 7423918080, upper := 14847836160, M := 3 },
  { lower := 14847836160, upper := 29695672320, M := 3 },
  { lower := 29695672320, upper := 59391344640, M := 3 },
  { lower := 59391344640, upper := 118782689280, M := 2 },
  { lower := 118782689280, upper := 237565378560, M := 2 },
  { lower := 237565378560, upper := 475130757120, M := 2 },
  { lower := 475130757120, upper := 950261514240, M := 2 },
  { lower := 950261514240, upper := 1900523028480, M := 2 },
  { lower := 1900523028480, upper := 3801046056960, M := 2 },
  { lower := 3801046056960, upper := 7602092113920, M := 1 },
  { lower := 7602092113920, upper := 10000000000000, M := 1 }
]

def row060 : FiniteCoverRow := {
  height := row060_height,
  goods := row060_goods,
  layers := row060_layers
}


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row060

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row060_good000_checked :
    goodSegmentCheck 60 19 41
      { lower := 122, upper := 172, witness := RowWitness.topPrime 113 } = true := by
  exact good_top_prime_checked (i := 60) (r := 19) (s := 41) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row060_good001_checked :
    goodSegmentCheck 60 19 41
      { lower := 173, upper := 232, witness := RowWitness.topPrime 173 } = true := by
  exact good_top_prime_checked (i := 60) (r := 19) (s := 41) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row060_good002_checked :
    goodSegmentCheck 60 19 41
      { lower := 233, upper := 292, witness := RowWitness.topPrime 233 } = true := by
  exact good_top_prime_checked (i := 60) (r := 19) (s := 41) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row060_good003_checked :
    goodSegmentCheck 60 19 41
      { lower := 293, upper := 352, witness := RowWitness.topPrime 293 } = true := by
  exact good_top_prime_checked (i := 60) (r := 19) (s := 41) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row060_good004_checked :
    goodSegmentCheck 60 19 41
      { lower := 353, upper := 412, witness := RowWitness.topPrime 353 } = true := by
  exact good_top_prime_checked (i := 60) (r := 19) (s := 41) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row060_good005_checked :
    goodSegmentCheck 60 19 41
      { lower := 413, upper := 468, witness := RowWitness.topPrime 409 } = true := by
  exact good_top_prime_checked (i := 60) (r := 19) (s := 41) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row060_good006_checked :
    goodSegmentCheck 60 19 41
      { lower := 469, upper := 526, witness := RowWitness.topPrime 467 } = true := by
  exact good_top_prime_checked (i := 60) (r := 19) (s := 41) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row060_good007_checked :
    goodSegmentCheck 60 19 41
      { lower := 527, upper := 582, witness := RowWitness.topPrime 523 } = true := by
  exact good_top_prime_checked (i := 60) (r := 19) (s := 41) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row060_good008_checked :
    goodSegmentCheck 60 19 41
      { lower := 583, upper := 636, witness := RowWitness.topPrime 577 } = true := by
  exact good_top_prime_checked (i := 60) (r := 19) (s := 41) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row060_good009_checked :
    goodSegmentCheck 60 19 41
      { lower := 637, upper := 690, witness := RowWitness.topPrime 631 } = true := by
  exact good_top_prime_checked (i := 60) (r := 19) (s := 41) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row060_good010_checked :
    goodSegmentCheck 60 19 41
      { lower := 691, upper := 750, witness := RowWitness.topPrime 691 } = true := by
  exact good_top_prime_checked (i := 60) (r := 19) (s := 41) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row060_good011_checked :
    goodSegmentCheck 60 19 41
      { lower := 751, upper := 810, witness := RowWitness.topPrime 751 } = true := by
  exact good_top_prime_checked (i := 60) (r := 19) (s := 41) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row060_good012_checked :
    goodSegmentCheck 60 19 41
      { lower := 811, upper := 870, witness := RowWitness.topPrime 811 } = true := by
  exact good_top_prime_checked (i := 60) (r := 19) (s := 41) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row060_good013_checked :
    goodSegmentCheck 60 19 41
      { lower := 871, upper := 922, witness := RowWitness.topPrime 863 } = true := by
  exact good_top_prime_checked (i := 60) (r := 19) (s := 41) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row060_good014_checked :
    goodSegmentCheck 60 19 41
      { lower := 923, upper := 978, witness := RowWitness.topPrime 919 } = true := by
  exact good_top_prime_checked (i := 60) (r := 19) (s := 41) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row060_good015_checked :
    goodSegmentCheck 60 19 41
      { lower := 979, upper := 1036, witness := RowWitness.topPrime 977 } = true := by
  exact good_top_prime_checked (i := 60) (r := 19) (s := 41) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row060_good000_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row060_good001_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row060_good002_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row060_good003_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row060_good004_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row060_good005_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row060_good006_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row060_good007_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row060_good008_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row060_good009_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row060_good010_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row060_good011_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row060_good012_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row060_good013_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row060_good014_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row060_good015_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row060_good016_checked :
    goodSegmentCheck 60 19 41
      { lower := 1037, upper := 1092, witness := RowWitness.topPrime 1033 } = true := by
  exact good_top_prime_checked (i := 60) (r := 19) (s := 41) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row060_good017_checked :
    goodSegmentCheck 60 19 41
      { lower := 1093, upper := 1152, witness := RowWitness.topPrime 1093 } = true := by
  exact good_top_prime_checked (i := 60) (r := 19) (s := 41) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row060_good018_checked :
    goodSegmentCheck 60 19 41
      { lower := 1153, upper := 1212, witness := RowWitness.topPrime 1153 } = true := by
  exact good_top_prime_checked (i := 60) (r := 19) (s := 41) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row060_good019_checked :
    goodSegmentCheck 60 19 41
      { lower := 1213, upper := 1272, witness := RowWitness.topPrime 1213 } = true := by
  exact good_top_prime_checked (i := 60) (r := 19) (s := 41) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row060_good020_checked :
    goodSegmentCheck 60 19 41
      { lower := 1273, upper := 1318, witness := RowWitness.topPrime 1259 } = true := by
  exact good_top_prime_checked (i := 60) (r := 19) (s := 41) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row060_good021_checked :
    goodSegmentCheck 60 19 41
      { lower := 1319, upper := 1378, witness := RowWitness.topPrime 1319 } = true := by
  exact good_top_prime_checked (i := 60) (r := 19) (s := 41) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row060_good022_checked :
    goodSegmentCheck 60 19 41
      { lower := 1379, upper := 1432, witness := RowWitness.topPrime 1373 } = true := by
  exact good_top_prime_checked (i := 60) (r := 19) (s := 41) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row060_good023_checked :
    goodSegmentCheck 60 19 41
      { lower := 1433, upper := 1492, witness := RowWitness.topPrime 1433 } = true := by
  exact good_top_prime_checked (i := 60) (r := 19) (s := 41) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row060_good024_checked :
    goodSegmentCheck 60 19 41
      { lower := 1493, upper := 1552, witness := RowWitness.topPrime 1493 } = true := by
  exact good_top_prime_checked (i := 60) (r := 19) (s := 41) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row060_good025_checked :
    goodSegmentCheck 60 19 41
      { lower := 1553, upper := 1612, witness := RowWitness.topPrime 1553 } = true := by
  exact good_top_prime_checked (i := 60) (r := 19) (s := 41) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row060_good026_checked :
    goodSegmentCheck 60 19 41
      { lower := 1613, upper := 1672, witness := RowWitness.topPrime 1613 } = true := by
  exact good_top_prime_checked (i := 60) (r := 19) (s := 41) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row060_good027_checked :
    goodSegmentCheck 60 19 41
      { lower := 1673, upper := 1728, witness := RowWitness.topPrime 1669 } = true := by
  exact good_top_prime_checked (i := 60) (r := 19) (s := 41) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row060_good028_checked :
    goodSegmentCheck 60 19 41
      { lower := 1729, upper := 1782, witness := RowWitness.topPrime 1723 } = true := by
  exact good_top_prime_checked (i := 60) (r := 19) (s := 41) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row060_good029_checked :
    goodSegmentCheck 60 19 41
      { lower := 1783, upper := 1842, witness := RowWitness.topPrime 1783 } = true := by
  exact good_top_prime_checked (i := 60) (r := 19) (s := 41) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row060_good030_checked :
    goodSegmentCheck 60 19 41
      { lower := 1843, upper := 1890, witness := RowWitness.topPrime 1831 } = true := by
  exact good_top_prime_checked (i := 60) (r := 19) (s := 41) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row060_good031_checked :
    goodSegmentCheck 60 19 41
      { lower := 1891, upper := 1948, witness := RowWitness.topPrime 1889 } = true := by
  exact good_top_prime_checked (i := 60) (r := 19) (s := 41) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row060_good016_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row060_good017_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row060_good018_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row060_good019_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row060_good020_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row060_good021_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row060_good022_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row060_good023_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row060_good024_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row060_good025_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row060_good026_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row060_good027_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row060_good028_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row060_good029_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row060_good030_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row060_good031_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row060_good032_checked :
    goodSegmentCheck 60 19 41
      { lower := 1949, upper := 2008, witness := RowWitness.topPrime 1949 } = true := by
  exact good_top_prime_checked (i := 60) (r := 19) (s := 41) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row060_good033_checked :
    goodSegmentCheck 60 19 41
      { lower := 2009, upper := 2062, witness := RowWitness.topPrime 2003 } = true := by
  exact good_top_prime_checked (i := 60) (r := 19) (s := 41) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row060_good034_checked :
    goodSegmentCheck 60 19 41
      { lower := 2063, upper := 2122, witness := RowWitness.topPrime 2063 } = true := by
  exact good_top_prime_checked (i := 60) (r := 19) (s := 41) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row060_good035_checked :
    goodSegmentCheck 60 19 41
      { lower := 2123, upper := 2172, witness := RowWitness.topPrime 2113 } = true := by
  exact good_top_prime_checked (i := 60) (r := 19) (s := 41) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row060_good036_checked :
    goodSegmentCheck 60 19 41
      { lower := 2173, upper := 2220, witness := RowWitness.topPrime 2161 } = true := by
  exact good_top_prime_checked (i := 60) (r := 19) (s := 41) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row060_good037_checked :
    goodSegmentCheck 60 19 41
      { lower := 2221, upper := 2280, witness := RowWitness.topPrime 2221 } = true := by
  exact good_top_prime_checked (i := 60) (r := 19) (s := 41) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row060_good038_checked :
    goodSegmentCheck 60 19 41
      { lower := 2281, upper := 2340, witness := RowWitness.topPrime 2281 } = true := by
  exact good_top_prime_checked (i := 60) (r := 19) (s := 41) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row060_good039_checked :
    goodSegmentCheck 60 19 41
      { lower := 2341, upper := 2400, witness := RowWitness.topPrime 2341 } = true := by
  exact good_top_prime_checked (i := 60) (r := 19) (s := 41) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row060_good040_checked :
    goodSegmentCheck 60 19 41
      { lower := 2401, upper := 2458, witness := RowWitness.topPrime 2399 } = true := by
  exact good_top_prime_checked (i := 60) (r := 19) (s := 41) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row060_good041_checked :
    goodSegmentCheck 60 19 41
      { lower := 2459, upper := 2518, witness := RowWitness.topPrime 2459 } = true := by
  exact good_top_prime_checked (i := 60) (r := 19) (s := 41) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row060_good042_checked :
    goodSegmentCheck 60 19 41
      { lower := 2519, upper := 2562, witness := RowWitness.topPrime 2503 } = true := by
  exact good_top_prime_checked (i := 60) (r := 19) (s := 41) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row060_good043_checked :
    goodSegmentCheck 60 19 41
      { lower := 2563, upper := 2616, witness := RowWitness.topPrime 2557 } = true := by
  exact good_top_prime_checked (i := 60) (r := 19) (s := 41) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row060_good044_checked :
    goodSegmentCheck 60 19 41
      { lower := 2617, upper := 2676, witness := RowWitness.topPrime 2617 } = true := by
  exact good_top_prime_checked (i := 60) (r := 19) (s := 41) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row060_good045_checked :
    goodSegmentCheck 60 19 41
      { lower := 2677, upper := 2736, witness := RowWitness.topPrime 2677 } = true := by
  exact good_top_prime_checked (i := 60) (r := 19) (s := 41) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row060_good046_checked :
    goodSegmentCheck 60 19 41
      { lower := 2737, upper := 2790, witness := RowWitness.topPrime 2731 } = true := by
  exact good_top_prime_checked (i := 60) (r := 19) (s := 41) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row060_good047_checked :
    goodSegmentCheck 60 19 41
      { lower := 2791, upper := 2850, witness := RowWitness.topPrime 2791 } = true := by
  exact good_top_prime_checked (i := 60) (r := 19) (s := 41) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row060_good032_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row060_good033_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row060_good034_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row060_good035_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row060_good036_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row060_good037_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row060_good038_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row060_good039_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row060_good040_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row060_good041_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row060_good042_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row060_good043_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row060_good044_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row060_good045_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row060_good046_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row060_good047_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row060_good048_checked :
    goodSegmentCheck 60 19 41
      { lower := 2851, upper := 2910, witness := RowWitness.topPrime 2851 } = true := by
  exact good_top_prime_checked (i := 60) (r := 19) (s := 41) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row060_good049_checked :
    goodSegmentCheck 60 19 41
      { lower := 2911, upper := 2968, witness := RowWitness.topPrime 2909 } = true := by
  exact good_top_prime_checked (i := 60) (r := 19) (s := 41) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row060_good050_checked :
    goodSegmentCheck 60 19 41
      { lower := 2969, upper := 3028, witness := RowWitness.topPrime 2969 } = true := by
  exact good_top_prime_checked (i := 60) (r := 19) (s := 41) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row060_good051_checked :
    goodSegmentCheck 60 19 41
      { lower := 3029, upper := 3082, witness := RowWitness.topPrime 3023 } = true := by
  exact good_top_prime_checked (i := 60) (r := 19) (s := 41) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row060_good052_checked :
    goodSegmentCheck 60 19 41
      { lower := 3083, upper := 3142, witness := RowWitness.topPrime 3083 } = true := by
  exact good_top_prime_checked (i := 60) (r := 19) (s := 41) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row060_good053_checked :
    goodSegmentCheck 60 19 41
      { lower := 3143, upper := 3196, witness := RowWitness.topPrime 3137 } = true := by
  exact good_top_prime_checked (i := 60) (r := 19) (s := 41) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row060_good054_checked :
    goodSegmentCheck 60 19 41
      { lower := 3197, upper := 3250, witness := RowWitness.topPrime 3191 } = true := by
  exact good_top_prime_checked (i := 60) (r := 19) (s := 41) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row060_good055_checked :
    goodSegmentCheck 60 19 41
      { lower := 3251, upper := 3310, witness := RowWitness.topPrime 3251 } = true := by
  exact good_top_prime_checked (i := 60) (r := 19) (s := 41) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row060_good056_checked :
    goodSegmentCheck 60 19 41
      { lower := 3311, upper := 3366, witness := RowWitness.topPrime 3307 } = true := by
  exact good_top_prime_checked (i := 60) (r := 19) (s := 41) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row060_good057_checked :
    goodSegmentCheck 60 19 41
      { lower := 3367, upper := 3420, witness := RowWitness.topPrime 3361 } = true := by
  exact good_top_prime_checked (i := 60) (r := 19) (s := 41) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row060_good058_checked :
    goodSegmentCheck 60 19 41
      { lower := 3421, upper := 3472, witness := RowWitness.topPrime 3413 } = true := by
  exact good_top_prime_checked (i := 60) (r := 19) (s := 41) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row060_good059_checked :
    goodSegmentCheck 60 19 41
      { lower := 3473, upper := 3528, witness := RowWitness.topPrime 3469 } = true := by
  exact good_top_prime_checked (i := 60) (r := 19) (s := 41) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row060_good060_checked :
    goodSegmentCheck 60 19 41
      { lower := 3529, upper := 3540, witness := RowWitness.topPrime 3529 } = true := by
  exact good_top_prime_checked (i := 60) (r := 19) (s := 41) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row060_good061_checked :
    goodSegmentCheck 60 19 41
      { lower := 3549, upper := 3568, witness := RowWitness.topPrime 3547 } = true := by
  exact good_top_prime_checked (i := 60) (r := 19) (s := 41) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row060_good062_checked :
    goodSegmentCheck 60 19 41
      { lower := 3584, upper := 3608, witness := RowWitness.topPrime 3583 } = true := by
  exact good_top_prime_checked (i := 60) (r := 19) (s := 41) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row060_good063_checked :
    goodSegmentCheck 60 19 41
      { lower := 3610, upper := 3666, witness := RowWitness.topPrime 3607 } = true := by
  exact good_top_prime_checked (i := 60) (r := 19) (s := 41) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row060_good048_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row060_good049_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row060_good050_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row060_good051_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row060_good052_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row060_good053_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row060_good054_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row060_good055_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row060_good056_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row060_good057_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row060_good058_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row060_good059_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row060_good060_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row060_good061_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row060_good062_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row060_good063_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row060_good064_checked :
    goodSegmentCheck 60 19 41
      { lower := 3667, upper := 3689, witness := RowWitness.topPrime 3659 } = true := by
  exact good_top_prime_checked (i := 60) (r := 19) (s := 41) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row060_good065_checked :
    goodSegmentCheck 60 19 41
      { lower := 3698, upper := 3756, witness := RowWitness.topPrime 3697 } = true := by
  exact good_top_prime_checked (i := 60) (r := 19) (s := 41) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row060_good066_checked :
    goodSegmentCheck 60 19 41
      { lower := 3757, upper := 3798, witness := RowWitness.topPrime 3739 } = true := by
  exact good_top_prime_checked (i := 60) (r := 19) (s := 41) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row060_good067_checked :
    goodSegmentCheck 60 19 41
      { lower := 3799, upper := 3816, witness := RowWitness.topPrime 3797 } = true := by
  exact good_top_prime_checked (i := 60) (r := 19) (s := 41) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row060_good068_checked :
    goodSegmentCheck 60 19 41
      { lower := 3887, upper := 3903, witness := RowWitness.topPrime 3881 } = true := by
  exact good_top_prime_checked (i := 60) (r := 19) (s := 41) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row060_good069_checked :
    goodSegmentCheck 60 19 41
      { lower := 3993, upper := 4030, witness := RowWitness.topPrime 3989 } = true := by
  exact good_top_prime_checked (i := 60) (r := 19) (s := 41) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row060_good070_checked :
    goodSegmentCheck 60 19 41
      { lower := 4046, upper := 4052, witness := RowWitness.topPrime 4027 } = true := by
  exact good_top_prime_checked (i := 60) (r := 19) (s := 41) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row060_good071_checked :
    goodSegmentCheck 60 19 41
      { lower := 4056, upper := 4110, witness := RowWitness.topPrime 4051 } = true := by
  exact good_top_prime_checked (i := 60) (r := 19) (s := 41) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row060_good072_checked :
    goodSegmentCheck 60 19 41
      { lower := 4111, upper := 4166, witness := RowWitness.topPrime 4111 } = true := by
  exact good_top_prime_checked (i := 60) (r := 19) (s := 41) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row060_good073_checked :
    goodSegmentCheck 60 19 41
      { lower := 4225, upper := 4278, witness := RowWitness.topPrime 4219 } = true := by
  exact good_top_prime_checked (i := 60) (r := 19) (s := 41) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row060_good074_checked :
    goodSegmentCheck 60 19 41
      { lower := 4279, upper := 4284, witness := RowWitness.topPrime 4273 } = true := by
  exact good_top_prime_checked (i := 60) (r := 19) (s := 41) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row060_good075_checked :
    goodSegmentCheck 60 19 41
      { lower := 4335, upper := 4386, witness := RowWitness.topPrime 4327 } = true := by
  exact good_top_prime_checked (i := 60) (r := 19) (s := 41) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row060_good076_checked :
    goodSegmentCheck 60 19 41
      { lower := 4387, upper := 4432, witness := RowWitness.topPrime 4373 } = true := by
  exact good_top_prime_checked (i := 60) (r := 19) (s := 41) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row060_good077_checked :
    goodSegmentCheck 60 19 41
      { lower := 4433, upper := 4453, witness := RowWitness.topPrime 4423 } = true := by
  exact good_top_prime_checked (i := 60) (r := 19) (s := 41) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row060_good078_checked :
    goodSegmentCheck 60 19 41
      { lower := 4459, upper := 4477, witness := RowWitness.topPrime 4457 } = true := by
  exact good_top_prime_checked (i := 60) (r := 19) (s := 41) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row060_good079_checked :
    goodSegmentCheck 60 19 41
      { lower := 4732, upper := 4752, witness := RowWitness.topPrime 4729 } = true := by
  exact good_top_prime_checked (i := 60) (r := 19) (s := 41) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row060_good064_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row060_good065_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row060_good066_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row060_good067_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row060_good068_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row060_good069_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row060_good070_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row060_good071_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row060_good072_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row060_good073_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row060_good074_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row060_good075_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row060_good076_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row060_good077_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row060_good078_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row060_good079_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row060_good080_checked :
    goodSegmentCheck 60 19 41
      { lower := 4761, upper := 4791, witness := RowWitness.topPrime 4759 } = true := by
  exact good_top_prime_checked (i := 60) (r := 19) (s := 41) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row060_good081_checked :
    goodSegmentCheck 60 19 41
      { lower := 4802, upper := 4860, witness := RowWitness.topPrime 4801 } = true := by
  exact good_top_prime_checked (i := 60) (r := 19) (s := 41) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row060_good082_checked :
    goodSegmentCheck 60 19 41
      { lower := 4861, upper := 4861, witness := RowWitness.topPrime 4861 } = true := by
  exact good_top_prime_checked (i := 60) (r := 19) (s := 41) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row060_good083_checked :
    goodSegmentCheck 60 19 41
      { lower := 4913, upper := 4960, witness := RowWitness.topPrime 4909 } = true := by
  exact good_top_prime_checked (i := 60) (r := 19) (s := 41) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row060_good084_checked :
    goodSegmentCheck 60 19 41
      { lower := 5046, upper := 5098, witness := RowWitness.topPrime 5039 } = true := by
  exact good_top_prime_checked (i := 60) (r := 19) (s := 41) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row060_good085_checked :
    goodSegmentCheck 60 19 41
      { lower := 5099, upper := 5158, witness := RowWitness.topPrime 5099 } = true := by
  exact good_top_prime_checked (i := 60) (r := 19) (s := 41) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row060_good086_checked :
    goodSegmentCheck 60 19 41
      { lower := 5159, upper := 5179, witness := RowWitness.topPrime 5153 } = true := by
  exact good_top_prime_checked (i := 60) (r := 19) (s := 41) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row060_good087_checked :
    goodSegmentCheck 60 19 41
      { lower := 5202, upper := 5204, witness := RowWitness.topPrime 5197 } = true := by
  exact good_top_prime_checked (i := 60) (r := 19) (s := 41) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row060_good088_checked :
    goodSegmentCheck 60 19 41
      { lower := 5239, upper := 5261, witness := RowWitness.topPrime 5237 } = true := by
  exact good_top_prime_checked (i := 60) (r := 19) (s := 41) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row060_good089_checked :
    goodSegmentCheck 60 19 41
      { lower := 5290, upper := 5298, witness := RowWitness.topPrime 5281 } = true := by
  exact good_top_prime_checked (i := 60) (r := 19) (s := 41) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row060_good090_checked :
    goodSegmentCheck 60 19 41
      { lower := 5324, upper := 5349, witness := RowWitness.topPrime 5323 } = true := by
  exact good_top_prime_checked (i := 60) (r := 19) (s := 41) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row060_good091_checked :
    goodSegmentCheck 60 19 41
      { lower := 5488, upper := 5542, witness := RowWitness.topPrime 5483 } = true := by
  exact good_top_prime_checked (i := 60) (r := 19) (s := 41) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row060_good092_checked :
    goodSegmentCheck 60 19 41
      { lower := 5543, upper := 5550, witness := RowWitness.topPrime 5531 } = true := by
  exact good_top_prime_checked (i := 60) (r := 19) (s := 41) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row060_good093_checked :
    goodSegmentCheck 60 19 41
      { lower := 5776, upper := 5808, witness := RowWitness.topPrime 5749 } = true := by
  exact good_top_prime_checked (i := 60) (r := 19) (s := 41) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row060_good094_checked :
    goodSegmentCheck 60 19 41
      { lower := 5809, upper := 5866, witness := RowWitness.topPrime 5807 } = true := by
  exact good_top_prime_checked (i := 60) (r := 19) (s := 41) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row060_good095_checked :
    goodSegmentCheck 60 19 41
      { lower := 5867, upper := 5891, witness := RowWitness.topPrime 5867 } = true := by
  exact good_top_prime_checked (i := 60) (r := 19) (s := 41) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row060_good080_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row060_good081_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row060_good082_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row060_good083_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row060_good084_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row060_good085_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row060_good086_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row060_good087_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row060_good088_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row060_good089_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row060_good090_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row060_good091_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row060_good092_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row060_good093_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row060_good094_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row060_good095_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row060_good096_checked :
    goodSegmentCheck 60 19 41
      { lower := 6144, upper := 6202, witness := RowWitness.topPrime 6143 } = true := by
  exact good_top_prime_checked (i := 60) (r := 19) (s := 41) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row060_good097_checked :
    goodSegmentCheck 60 19 41
      { lower := 6203, upper := 6203, witness := RowWitness.topPrime 6203 } = true := by
  exact good_top_prime_checked (i := 60) (r := 19) (s := 41) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row060_good098_checked :
    goodSegmentCheck 60 19 41
      { lower := 6358, upper := 6407, witness := RowWitness.topPrime 6353 } = true := by
  exact good_top_prime_checked (i := 60) (r := 19) (s := 41) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row060_good099_checked :
    goodSegmentCheck 60 19 41
      { lower := 6517, upper := 6550, witness := RowWitness.topPrime 6491 } = true := by
  exact good_top_prime_checked (i := 60) (r := 19) (s := 41) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row060_good100_checked :
    goodSegmentCheck 60 19 41
      { lower := 6551, upper := 6557, witness := RowWitness.topPrime 6551 } = true := by
  exact good_top_prime_checked (i := 60) (r := 19) (s := 41) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row060_good101_checked :
    goodSegmentCheck 60 19 41
      { lower := 6561, upper := 6576, witness := RowWitness.topPrime 6553 } = true := by
  exact good_top_prime_checked (i := 60) (r := 19) (s := 41) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row060_good102_checked :
    goodSegmentCheck 60 19 41
      { lower := 6591, upper := 6620, witness := RowWitness.topPrime 6581 } = true := by
  exact good_top_prime_checked (i := 60) (r := 19) (s := 41) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row060_good103_checked :
    goodSegmentCheck 60 19 41
      { lower := 6627, upper := 6678, witness := RowWitness.topPrime 6619 } = true := by
  exact good_top_prime_checked (i := 60) (r := 19) (s := 41) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row060_good104_checked :
    goodSegmentCheck 60 19 41
      { lower := 6679, upper := 6706, witness := RowWitness.topPrime 6679 } = true := by
  exact good_top_prime_checked (i := 60) (r := 19) (s := 41) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row060_good105_checked :
    goodSegmentCheck 60 19 41
      { lower := 6727, upper := 6778, witness := RowWitness.topPrime 6719 } = true := by
  exact good_top_prime_checked (i := 60) (r := 19) (s := 41) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row060_good106_checked :
    goodSegmentCheck 60 19 41
      { lower := 6779, upper := 6786, witness := RowWitness.topPrime 6779 } = true := by
  exact good_top_prime_checked (i := 60) (r := 19) (s := 41) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row060_good107_checked :
    goodSegmentCheck 60 19 41
      { lower := 6859, upper := 6916, witness := RowWitness.topPrime 6857 } = true := by
  exact good_top_prime_checked (i := 60) (r := 19) (s := 41) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row060_good108_checked :
    goodSegmentCheck 60 19 41
      { lower := 6917, upper := 6919, witness := RowWitness.topPrime 6917 } = true := by
  exact good_top_prime_checked (i := 60) (r := 19) (s := 41) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row060_good109_checked :
    goodSegmentCheck 60 19 41
      { lower := 6936, upper := 6936, witness := RowWitness.topPrime 6917 } = true := by
  exact good_top_prime_checked (i := 60) (r := 19) (s := 41) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row060_good110_checked :
    goodSegmentCheck 60 19 41
      { lower := 6962, upper := 6995, witness := RowWitness.topPrime 6961 } = true := by
  exact good_top_prime_checked (i := 60) (r := 19) (s := 41) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row060_good111_checked :
    goodSegmentCheck 60 19 41
      { lower := 7203, upper := 7252, witness := RowWitness.topPrime 7193 } = true := by
  exact good_top_prime_checked (i := 60) (r := 19) (s := 41) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row060_good096_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row060_good097_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row060_good098_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row060_good099_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row060_good100_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row060_good101_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row060_good102_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row060_good103_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row060_good104_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row060_good105_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row060_good106_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row060_good107_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row060_good108_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row060_good109_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row060_good110_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row060_good111_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row060_good112_checked :
    goodSegmentCheck 60 19 41
      { lower := 7253, upper := 7279, witness := RowWitness.topPrime 7253 } = true := by
  exact good_top_prime_checked (i := 60) (r := 19) (s := 41) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row060_good113_checked :
    goodSegmentCheck 60 19 41
      { lower := 7406, upper := 7452, witness := RowWitness.topPrime 7393 } = true := by
  exact good_top_prime_checked (i := 60) (r := 19) (s := 41) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row060_good114_checked :
    goodSegmentCheck 60 19 41
      { lower := 7453, upper := 7455, witness := RowWitness.topPrime 7451 } = true := by
  exact good_top_prime_checked (i := 60) (r := 19) (s := 41) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row060_good115_checked :
    goodSegmentCheck 60 19 41
      { lower := 7546, upper := 7600, witness := RowWitness.topPrime 7541 } = true := by
  exact good_top_prime_checked (i := 60) (r := 19) (s := 41) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row060_good116_checked :
    goodSegmentCheck 60 19 41
      { lower := 7601, upper := 7628, witness := RowWitness.topPrime 7591 } = true := by
  exact good_top_prime_checked (i := 60) (r := 19) (s := 41) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row060_good117_checked :
    goodSegmentCheck 60 19 41
      { lower := 7935, upper := 7992, witness := RowWitness.topPrime 7933 } = true := by
  exact good_top_prime_checked (i := 60) (r := 19) (s := 41) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row060_good118_checked :
    goodSegmentCheck 60 19 41
      { lower := 7993, upper := 8001, witness := RowWitness.topPrime 7993 } = true := by
  exact good_top_prime_checked (i := 60) (r := 19) (s := 41) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row060_good119_checked :
    goodSegmentCheck 60 19 41
      { lower := 8214, upper := 8268, witness := RowWitness.topPrime 8209 } = true := by
  exact good_top_prime_checked (i := 60) (r := 19) (s := 41) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row060_good120_checked :
    goodSegmentCheck 60 19 41
      { lower := 8269, upper := 8273, witness := RowWitness.topPrime 8269 } = true := by
  exact good_top_prime_checked (i := 60) (r := 19) (s := 41) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row060_good121_checked :
    goodSegmentCheck 60 19 41
      { lower := 8410, upper := 8448, witness := RowWitness.topPrime 8389 } = true := by
  exact good_top_prime_checked (i := 60) (r := 19) (s := 41) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row060_good122_checked :
    goodSegmentCheck 60 19 41
      { lower := 8449, upper := 8486, witness := RowWitness.topPrime 8447 } = true := by
  exact good_top_prime_checked (i := 60) (r := 19) (s := 41) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row060_good123_checked :
    goodSegmentCheck 60 19 41
      { lower := 8664, upper := 8708, witness := RowWitness.topPrime 8663 } = true := by
  exact good_top_prime_checked (i := 60) (r := 19) (s := 41) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row060_good124_checked :
    goodSegmentCheck 60 19 41
      { lower := 8788, upper := 8807, witness := RowWitness.topPrime 8783 } = true := by
  exact good_top_prime_checked (i := 60) (r := 19) (s := 41) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row060_good125_checked :
    goodSegmentCheck 60 19 41
      { lower := 8836, upper := 8847, witness := RowWitness.topPrime 8831 } = true := by
  exact good_top_prime_checked (i := 60) (r := 19) (s := 41) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row060_good126_checked :
    goodSegmentCheck 60 19 41
      { lower := 9025, upper := 9052, witness := RowWitness.topPrime 9013 } = true := by
  exact good_top_prime_checked (i := 60) (r := 19) (s := 41) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row060_good127_checked :
    goodSegmentCheck 60 19 41
      { lower := 9251, upper := 9300, witness := RowWitness.topPrime 9241 } = true := by
  exact good_top_prime_checked (i := 60) (r := 19) (s := 41) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row060_good112_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row060_good113_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row060_good114_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row060_good115_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row060_good116_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row060_good117_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row060_good118_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row060_good119_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row060_good120_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row060_good121_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row060_good122_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row060_good123_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row060_good124_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row060_good125_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row060_good126_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row060_good127_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row060_good128_checked :
    goodSegmentCheck 60 19 41
      { lower := 9301, upper := 9310, witness := RowWitness.topPrime 9293 } = true := by
  exact good_top_prime_checked (i := 60) (r := 19) (s := 41) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row060_good129_checked :
    goodSegmentCheck 60 19 41
      { lower := 9317, upper := 9320, witness := RowWitness.topPrime 9311 } = true := by
  exact good_top_prime_checked (i := 60) (r := 19) (s := 41) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row060_good130_checked :
    goodSegmentCheck 60 19 41
      { lower := 9375, upper := 9376, witness := RowWitness.topPrime 9371 } = true := by
  exact good_top_prime_checked (i := 60) (r := 19) (s := 41) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row060_good131_checked :
    goodSegmentCheck 60 19 41
      { lower := 9386, upper := 9434, witness := RowWitness.topPrime 9377 } = true := by
  exact good_top_prime_checked (i := 60) (r := 19) (s := 41) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row060_good132_checked :
    goodSegmentCheck 60 19 41
      { lower := 9604, upper := 9660, witness := RowWitness.topPrime 9601 } = true := by
  exact good_top_prime_checked (i := 60) (r := 19) (s := 41) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row060_good133_checked :
    goodSegmentCheck 60 19 41
      { lower := 9661, upper := 9663, witness := RowWitness.topPrime 9661 } = true := by
  exact good_top_prime_checked (i := 60) (r := 19) (s := 41) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row060_good134_checked :
    goodSegmentCheck 60 19 41
      { lower := 10086, upper := 10138, witness := RowWitness.topPrime 10079 } = true := by
  exact good_top_prime_checked (i := 60) (r := 19) (s := 41) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row060_good135_checked :
    goodSegmentCheck 60 19 41
      { lower := 10139, upper := 10151, witness := RowWitness.topPrime 10139 } = true := by
  exact good_top_prime_checked (i := 60) (r := 19) (s := 41) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row060_good136_checked :
    goodSegmentCheck 60 19 41
      { lower := 10580, upper := 10626, witness := RowWitness.topPrime 10567 } = true := by
  exact good_top_prime_checked (i := 60) (r := 19) (s := 41) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row060_good137_checked :
    goodSegmentCheck 60 19 41
      { lower := 10627, upper := 10630, witness := RowWitness.topPrime 10627 } = true := by
  exact good_top_prime_checked (i := 60) (r := 19) (s := 41) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row060_good138_checked :
    goodSegmentCheck 60 19 41
      { lower := 10935, upper := 10968, witness := RowWitness.topPrime 10909 } = true := by
  exact good_top_prime_checked (i := 60) (r := 19) (s := 41) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row060_good139_checked :
    goodSegmentCheck 60 19 41
      { lower := 10969, upper := 11011, witness := RowWitness.topPrime 10957 } = true := by
  exact good_top_prime_checked (i := 60) (r := 19) (s := 41) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row060_good140_checked :
    goodSegmentCheck 60 19 41
      { lower := 11094, upper := 11104, witness := RowWitness.topPrime 11093 } = true := by
  exact good_top_prime_checked (i := 60) (r := 19) (s := 41) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row060_good141_checked :
    goodSegmentCheck 60 19 41
      { lower := 11109, upper := 11152, witness := RowWitness.topPrime 11093 } = true := by
  exact good_top_prime_checked (i := 60) (r := 19) (s := 41) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row060_good142_checked :
    goodSegmentCheck 60 19 41
      { lower := 11153, upper := 11153, witness := RowWitness.topPrime 11149 } = true := by
  exact good_top_prime_checked (i := 60) (r := 19) (s := 41) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row060_good143_checked :
    goodSegmentCheck 60 19 41
      { lower := 11774, upper := 11802, witness := RowWitness.topPrime 11743 } = true := by
  exact good_top_prime_checked (i := 60) (r := 19) (s := 41) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row060_good128_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row060_good129_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row060_good130_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row060_good131_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row060_good132_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row060_good133_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row060_good134_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row060_good135_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row060_good136_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row060_good137_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row060_good138_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row060_good139_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row060_good140_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row060_good141_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row060_good142_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row060_good143_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row060_good144_checked :
    goodSegmentCheck 60 19 41
      { lower := 11803, upper := 11826, witness := RowWitness.topPrime 11801 } = true := by
  exact good_top_prime_checked (i := 60) (r := 19) (s := 41) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row060_good145_checked :
    goodSegmentCheck 60 19 41
      { lower := 12005, upper := 12038, witness := RowWitness.topPrime 11987 } = true := by
  exact good_top_prime_checked (i := 60) (r := 19) (s := 41) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row060_good146_checked :
    goodSegmentCheck 60 19 41
      { lower := 12321, upper := 12347, witness := RowWitness.topPrime 12301 } = true := by
  exact good_top_prime_checked (i := 60) (r := 19) (s := 41) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row060_good147_checked :
    goodSegmentCheck 60 19 41
      { lower := 12500, upper := 12552, witness := RowWitness.topPrime 12497 } = true := by
  exact good_top_prime_checked (i := 60) (r := 19) (s := 41) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row060_good148_checked :
    goodSegmentCheck 60 19 41
      { lower := 13225, upper := 13241, witness := RowWitness.topPrime 13219 } = true := by
  exact good_top_prime_checked (i := 60) (r := 19) (s := 41) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row060_good149_checked :
    goodSegmentCheck 60 19 41
      { lower := 13254, upper := 13284, witness := RowWitness.topPrime 13249 } = true := by
  exact good_top_prime_checked (i := 60) (r := 19) (s := 41) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row060_good150_checked :
    goodSegmentCheck 60 19 41
      { lower := 13310, upper := 13313, witness := RowWitness.topPrime 13309 } = true := by
  exact good_top_prime_checked (i := 60) (r := 19) (s := 41) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row060_good151_checked :
    goodSegmentCheck 60 19 41
      { lower := 13454, upper := 13510, witness := RowWitness.topPrime 13451 } = true := by
  exact good_top_prime_checked (i := 60) (r := 19) (s := 41) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row060_good152_checked :
    goodSegmentCheck 60 19 41
      { lower := 13511, upper := 13513, witness := RowWitness.topPrime 13499 } = true := by
  exact good_top_prime_checked (i := 60) (r := 19) (s := 41) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row060_good153_checked :
    goodSegmentCheck 60 19 41
      { lower := 13718, upper := 13749, witness := RowWitness.topPrime 13711 } = true := by
  exact good_top_prime_checked (i := 60) (r := 19) (s := 41) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row060_good154_checked :
    goodSegmentCheck 60 19 41
      { lower := 13754, upper := 13777, witness := RowWitness.topPrime 13751 } = true := by
  exact good_top_prime_checked (i := 60) (r := 19) (s := 41) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row060_good155_checked :
    goodSegmentCheck 60 19 41
      { lower := 14415, upper := 14465, witness := RowWitness.topPrime 14411 } = true := by
  exact good_top_prime_checked (i := 60) (r := 19) (s := 41) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row060_good156_checked :
    goodSegmentCheck 60 19 41
      { lower := 14792, upper := 14798, witness := RowWitness.topPrime 14783 } = true := by
  exact good_top_prime_checked (i := 60) (r := 19) (s := 41) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row060_good157_checked :
    goodSegmentCheck 60 19 41
      { lower := 15138, upper := 15188, witness := RowWitness.topPrime 15137 } = true := by
  exact good_top_prime_checked (i := 60) (r := 19) (s := 41) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row060_good158_checked :
    goodSegmentCheck 60 19 41
      { lower := 15379, upper := 15435, witness := RowWitness.topPrime 15377 } = true := by
  exact good_top_prime_checked (i := 60) (r := 19) (s := 41) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row060_good159_checked :
    goodSegmentCheck 60 19 41
      { lower := 15979, upper := 16031, witness := RowWitness.topPrime 15973 } = true := by
  exact good_top_prime_checked (i := 60) (r := 19) (s := 41) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row060_good144_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row060_good145_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row060_good146_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row060_good147_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row060_good148_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row060_good149_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row060_good150_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row060_good151_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row060_good152_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row060_good153_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row060_good154_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row060_good155_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row060_good156_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row060_good157_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row060_good158_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row060_good159_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row060_good160_checked :
    goodSegmentCheck 60 19 41
      { lower := 16384, upper := 16396, witness := RowWitness.topPrime 16381 } = true := by
  exact good_top_prime_checked (i := 60) (r := 19) (s := 41) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row060_good161_checked :
    goodSegmentCheck 60 19 41
      { lower := 16428, upper := 16443, witness := RowWitness.topPrime 16427 } = true := by
  exact good_top_prime_checked (i := 60) (r := 19) (s := 41) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row060_good162_checked :
    goodSegmentCheck 60 19 41
      { lower := 16810, upper := 16846, witness := RowWitness.topPrime 16787 } = true := by
  exact good_top_prime_checked (i := 60) (r := 19) (s := 41) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row060_good163_checked :
    goodSegmentCheck 60 19 41
      { lower := 16847, upper := 16879, witness := RowWitness.topPrime 16843 } = true := by
  exact good_top_prime_checked (i := 60) (r := 19) (s := 41) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row060_good164_checked :
    goodSegmentCheck 60 19 41
      { lower := 17303, upper := 17357, witness := RowWitness.topPrime 17299 } = true := by
  exact good_top_prime_checked (i := 60) (r := 19) (s := 41) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row060_good165_checked :
    goodSegmentCheck 60 19 41
      { lower := 17672, upper := 17720, witness := RowWitness.topPrime 17669 } = true := by
  exact good_top_prime_checked (i := 60) (r := 19) (s := 41) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row060_good166_checked :
    goodSegmentCheck 60 19 41
      { lower := 18491, upper := 18540, witness := RowWitness.topPrime 18481 } = true := by
  exact good_top_prime_checked (i := 60) (r := 19) (s := 41) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row060_good167_checked :
    goodSegmentCheck 60 19 41
      { lower := 18541, upper := 18550, witness := RowWitness.topPrime 18541 } = true := by
  exact good_top_prime_checked (i := 60) (r := 19) (s := 41) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row060_good168_checked :
    goodSegmentCheck 60 19 41
      { lower := 19208, upper := 19266, witness := RowWitness.topPrime 19207 } = true := by
  exact good_top_prime_checked (i := 60) (r := 19) (s := 41) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row060_good169_checked :
    goodSegmentCheck 60 19 41
      { lower := 19267, upper := 19267, witness := RowWitness.topPrime 19267 } = true := by
  exact good_top_prime_checked (i := 60) (r := 19) (s := 41) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row060_good170_checked :
    goodSegmentCheck 60 19 41
      { lower := 19663, upper := 19720, witness := RowWitness.topPrime 19661 } = true := by
  exact good_top_prime_checked (i := 60) (r := 19) (s := 41) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row060_good171_checked :
    goodSegmentCheck 60 19 41
      { lower := 19721, upper := 19722, witness := RowWitness.topPrime 19717 } = true := by
  exact good_top_prime_checked (i := 60) (r := 19) (s := 41) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row060_good172_checked :
    goodSegmentCheck 60 19 41
      { lower := 20181, upper := 20236, witness := RowWitness.topPrime 20177 } = true := by
  exact good_top_prime_checked (i := 60) (r := 19) (s := 41) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row060_good173_checked :
    goodSegmentCheck 60 19 41
      { lower := 20237, upper := 20240, witness := RowWitness.topPrime 20233 } = true := by
  exact good_top_prime_checked (i := 60) (r := 19) (s := 41) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row060_good174_checked :
    goodSegmentCheck 60 19 41
      { lower := 20535, upper := 20539, witness := RowWitness.topPrime 20533 } = true := by
  exact good_top_prime_checked (i := 60) (r := 19) (s := 41) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row060_good175_checked :
    goodSegmentCheck 60 19 41
      { lower := 20577, upper := 20594, witness := RowWitness.topPrime 20563 } = true := by
  exact good_top_prime_checked (i := 60) (r := 19) (s := 41) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row060_good160_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row060_good161_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row060_good162_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row060_good163_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row060_good164_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row060_good165_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row060_good166_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row060_good167_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row060_good168_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row060_good169_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row060_good170_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row060_good171_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row060_good172_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row060_good173_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row060_good174_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row060_good175_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row060_good176_checked :
    goodSegmentCheck 60 19 41
      { lower := 21904, upper := 21912, witness := RowWitness.topPrime 21893 } = true := by
  exact good_top_prime_checked (i := 60) (r := 19) (s := 41) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row060_good177_checked :
    goodSegmentCheck 60 19 41
      { lower := 22103, upper := 22149, witness := RowWitness.topPrime 22093 } = true := by
  exact good_top_prime_checked (i := 60) (r := 19) (s := 41) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row060_good178_checked :
    goodSegmentCheck 60 19 41
      { lower := 24010, upper := 24017, witness := RowWitness.topPrime 24007 } = true := by
  exact good_top_prime_checked (i := 60) (r := 19) (s := 41) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row060_good179_checked :
    goodSegmentCheck 60 19 41
      { lower := 24025, upper := 24082, witness := RowWitness.topPrime 24023 } = true := by
  exact good_top_prime_checked (i := 60) (r := 19) (s := 41) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row060_good180_checked :
    goodSegmentCheck 60 19 41
      { lower := 24083, upper := 24084, witness := RowWitness.topPrime 24083 } = true := by
  exact good_top_prime_checked (i := 60) (r := 19) (s := 41) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row060_good181_checked :
    goodSegmentCheck 60 19 41
      { lower := 24334, upper := 24358, witness := RowWitness.topPrime 24329 } = true := by
  exact good_top_prime_checked (i := 60) (r := 19) (s := 41) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row060_good182_checked :
    goodSegmentCheck 60 19 41
      { lower := 24367, upper := 24418, witness := RowWitness.topPrime 24359 } = true := by
  exact good_top_prime_checked (i := 60) (r := 19) (s := 41) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row060_good183_checked :
    goodSegmentCheck 60 19 41
      { lower := 24419, upper := 24426, witness := RowWitness.topPrime 24419 } = true := by
  exact good_top_prime_checked (i := 60) (r := 19) (s := 41) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row060_good184_checked :
    goodSegmentCheck 60 19 41
      { lower := 24576, upper := 24624, witness := RowWitness.topPrime 24571 } = true := by
  exact good_top_prime_checked (i := 60) (r := 19) (s := 41) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row060_good185_checked :
    goodSegmentCheck 60 19 41
      { lower := 25289, upper := 25320, witness := RowWitness.topPrime 25261 } = true := by
  exact good_top_prime_checked (i := 60) (r := 19) (s := 41) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row060_good186_checked :
    goodSegmentCheck 60 19 41
      { lower := 25321, upper := 25340, witness := RowWitness.topPrime 25321 } = true := by
  exact good_top_prime_checked (i := 60) (r := 19) (s := 41) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row060_good187_checked :
    goodSegmentCheck 60 19 41
      { lower := 26411, upper := 26423, witness := RowWitness.topPrime 26407 } = true := by
  exact good_top_prime_checked (i := 60) (r := 19) (s := 41) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row060_good188_checked :
    goodSegmentCheck 60 19 41
      { lower := 27436, upper := 27439, witness := RowWitness.topPrime 27431 } = true := by
  exact good_top_prime_checked (i := 60) (r := 19) (s := 41) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row060_good189_checked :
    goodSegmentCheck 60 19 41
      { lower := 28577, upper := 28620, witness := RowWitness.topPrime 28573 } = true := by
  exact good_top_prime_checked (i := 60) (r := 19) (s := 41) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row060_good190_checked :
    goodSegmentCheck 60 19 41
      { lower := 28749, upper := 28776, witness := RowWitness.topPrime 28729 } = true := by
  exact good_top_prime_checked (i := 60) (r := 19) (s := 41) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row060_good191_checked :
    goodSegmentCheck 60 19 41
      { lower := 30926, upper := 30958, witness := RowWitness.topPrime 30911 } = true := by
  exact good_top_prime_checked (i := 60) (r := 19) (s := 41) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row060_good176_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row060_good177_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row060_good178_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row060_good179_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row060_good180_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row060_good181_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row060_good182_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row060_good183_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row060_good184_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row060_good185_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row060_good186_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row060_good187_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row060_good188_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row060_good189_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row060_good190_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row060_good191_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row060_good192_checked :
    goodSegmentCheck 60 19 41
      { lower := 31250, upper := 31272, witness := RowWitness.topPrime 31249 } = true := by
  exact good_top_prime_checked (i := 60) (r := 19) (s := 41) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row060_good193_checked :
    goodSegmentCheck 60 19 41
      { lower := 32805, upper := 32827, witness := RowWitness.topPrime 32803 } = true := by
  exact good_top_prime_checked (i := 60) (r := 19) (s := 41) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row060_good194_checked :
    goodSegmentCheck 60 19 41
      { lower := 33620, upper := 33673, witness := RowWitness.topPrime 33619 } = true := by
  exact good_top_prime_checked (i := 60) (r := 19) (s := 41) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row060_good195_checked :
    goodSegmentCheck 60 19 41
      { lower := 35152, upper := 35190, witness := RowWitness.topPrime 35149 } = true := by
  exact good_top_prime_checked (i := 60) (r := 19) (s := 41) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row060_good196_checked :
    goodSegmentCheck 60 19 41
      { lower := 35344, upper := 35360, witness := RowWitness.topPrime 35339 } = true := by
  exact good_top_prime_checked (i := 60) (r := 19) (s := 41) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row060_good197_checked :
    goodSegmentCheck 60 19 41
      { lower := 36517, upper := 36556, witness := RowWitness.topPrime 36497 } = true := by
  exact good_top_prime_checked (i := 60) (r := 19) (s := 41) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row060_good198_checked :
    goodSegmentCheck 60 19 41
      { lower := 36557, upper := 36560, witness := RowWitness.topPrime 36551 } = true := by
  exact good_top_prime_checked (i := 60) (r := 19) (s := 41) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row060_good199_checked :
    goodSegmentCheck 60 19 41
      { lower := 36982, upper := 37038, witness := RowWitness.topPrime 36979 } = true := by
  exact good_top_prime_checked (i := 60) (r := 19) (s := 41) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row060_good200_checked :
    goodSegmentCheck 60 19 41
      { lower := 37039, upper := 37039, witness := RowWitness.topPrime 37039 } = true := by
  exact good_top_prime_checked (i := 60) (r := 19) (s := 41) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row060_good201_checked :
    goodSegmentCheck 60 19 41
      { lower := 39326, upper := 39363, witness := RowWitness.topPrime 39323 } = true := by
  exact good_top_prime_checked (i := 60) (r := 19) (s := 41) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row060_good202_checked :
    goodSegmentCheck 60 19 41
      { lower := 39366, upper := 39385, witness := RowWitness.topPrime 39359 } = true := by
  exact good_top_prime_checked (i := 60) (r := 19) (s := 41) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row060_good203_checked :
    goodSegmentCheck 60 19 41
      { lower := 41772, upper := 41802, witness := RowWitness.topPrime 41771 } = true := by
  exact good_top_prime_checked (i := 60) (r := 19) (s := 41) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row060_good204_checked :
    goodSegmentCheck 60 19 41
      { lower := 43940, upper := 43982, witness := RowWitness.topPrime 43933 } = true := by
  exact good_top_prime_checked (i := 60) (r := 19) (s := 41) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row060_good205_checked :
    goodSegmentCheck 60 19 41
      { lower := 44217, upper := 44239, witness := RowWitness.topPrime 44207 } = true := by
  exact good_top_prime_checked (i := 60) (r := 19) (s := 41) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row060_good206_checked :
    goodSegmentCheck 60 19 41
      { lower := 48020, upper := 48072, witness := RowWitness.topPrime 48017 } = true := by
  exact good_top_prime_checked (i := 60) (r := 19) (s := 41) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row060_good207_checked :
    goodSegmentCheck 60 19 41
      { lower := 48778, upper := 48793, witness := RowWitness.topPrime 48767 } = true := by
  exact good_top_prime_checked (i := 60) (r := 19) (s := 41) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row060_good192_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row060_good193_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row060_good194_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row060_good195_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row060_good196_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row060_good197_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row060_good198_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row060_good199_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row060_good200_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row060_good201_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row060_good202_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row060_good203_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row060_good204_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row060_good205_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row060_good206_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row060_good207_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row060_good208_checked :
    goodSegmentCheck 60 19 41
      { lower := 49152, upper := 49189, witness := RowWitness.topPrime 49139 } = true := by
  exact good_top_prime_checked (i := 60) (r := 19) (s := 41) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row060_good209_checked :
    goodSegmentCheck 60 19 41
      { lower := 73205, upper := 73226, witness := RowWitness.topPrime 73189 } = true := by
  exact good_top_prime_checked (i := 60) (r := 19) (s := 41) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row060_good210_checked :
    goodSegmentCheck 60 19 41
      { lower := 98304, upper := 98319, witness := RowWitness.topPrime 98299 } = true := by
  exact good_top_prime_checked (i := 60) (r := 19) (s := 41) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row060_good208_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row060_good209_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row060_good210_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row060_goods_checked :
    row060.goods.all (goodSegmentCheck row060.height.i row060.height.r row060.height.s) = true := by
  change row060_goods.all (goodSegmentCheck 60 19 41) = true
  simp only [row060_goods, List.all_cons, List.all_nil,
    row060_good000_checked,
    row060_good001_checked,
    row060_good002_checked,
    row060_good003_checked,
    row060_good004_checked,
    row060_good005_checked,
    row060_good006_checked,
    row060_good007_checked,
    row060_good008_checked,
    row060_good009_checked,
    row060_good010_checked,
    row060_good011_checked,
    row060_good012_checked,
    row060_good013_checked,
    row060_good014_checked,
    row060_good015_checked,
    row060_good016_checked,
    row060_good017_checked,
    row060_good018_checked,
    row060_good019_checked,
    row060_good020_checked,
    row060_good021_checked,
    row060_good022_checked,
    row060_good023_checked,
    row060_good024_checked,
    row060_good025_checked,
    row060_good026_checked,
    row060_good027_checked,
    row060_good028_checked,
    row060_good029_checked,
    row060_good030_checked,
    row060_good031_checked,
    row060_good032_checked,
    row060_good033_checked,
    row060_good034_checked,
    row060_good035_checked,
    row060_good036_checked,
    row060_good037_checked,
    row060_good038_checked,
    row060_good039_checked,
    row060_good040_checked,
    row060_good041_checked,
    row060_good042_checked,
    row060_good043_checked,
    row060_good044_checked,
    row060_good045_checked,
    row060_good046_checked,
    row060_good047_checked,
    row060_good048_checked,
    row060_good049_checked,
    row060_good050_checked,
    row060_good051_checked,
    row060_good052_checked,
    row060_good053_checked,
    row060_good054_checked,
    row060_good055_checked,
    row060_good056_checked,
    row060_good057_checked,
    row060_good058_checked,
    row060_good059_checked,
    row060_good060_checked,
    row060_good061_checked,
    row060_good062_checked,
    row060_good063_checked,
    row060_good064_checked,
    row060_good065_checked,
    row060_good066_checked,
    row060_good067_checked,
    row060_good068_checked,
    row060_good069_checked,
    row060_good070_checked,
    row060_good071_checked,
    row060_good072_checked,
    row060_good073_checked,
    row060_good074_checked,
    row060_good075_checked,
    row060_good076_checked,
    row060_good077_checked,
    row060_good078_checked,
    row060_good079_checked,
    row060_good080_checked,
    row060_good081_checked,
    row060_good082_checked,
    row060_good083_checked,
    row060_good084_checked,
    row060_good085_checked,
    row060_good086_checked,
    row060_good087_checked,
    row060_good088_checked,
    row060_good089_checked,
    row060_good090_checked,
    row060_good091_checked,
    row060_good092_checked,
    row060_good093_checked,
    row060_good094_checked,
    row060_good095_checked,
    row060_good096_checked,
    row060_good097_checked,
    row060_good098_checked,
    row060_good099_checked,
    row060_good100_checked,
    row060_good101_checked,
    row060_good102_checked,
    row060_good103_checked,
    row060_good104_checked,
    row060_good105_checked,
    row060_good106_checked,
    row060_good107_checked,
    row060_good108_checked,
    row060_good109_checked,
    row060_good110_checked,
    row060_good111_checked,
    row060_good112_checked,
    row060_good113_checked,
    row060_good114_checked,
    row060_good115_checked,
    row060_good116_checked,
    row060_good117_checked,
    row060_good118_checked,
    row060_good119_checked,
    row060_good120_checked,
    row060_good121_checked,
    row060_good122_checked,
    row060_good123_checked,
    row060_good124_checked,
    row060_good125_checked,
    row060_good126_checked,
    row060_good127_checked,
    row060_good128_checked,
    row060_good129_checked,
    row060_good130_checked,
    row060_good131_checked,
    row060_good132_checked,
    row060_good133_checked,
    row060_good134_checked,
    row060_good135_checked,
    row060_good136_checked,
    row060_good137_checked,
    row060_good138_checked,
    row060_good139_checked,
    row060_good140_checked,
    row060_good141_checked,
    row060_good142_checked,
    row060_good143_checked,
    row060_good144_checked,
    row060_good145_checked,
    row060_good146_checked,
    row060_good147_checked,
    row060_good148_checked,
    row060_good149_checked,
    row060_good150_checked,
    row060_good151_checked,
    row060_good152_checked,
    row060_good153_checked,
    row060_good154_checked,
    row060_good155_checked,
    row060_good156_checked,
    row060_good157_checked,
    row060_good158_checked,
    row060_good159_checked,
    row060_good160_checked,
    row060_good161_checked,
    row060_good162_checked,
    row060_good163_checked,
    row060_good164_checked,
    row060_good165_checked,
    row060_good166_checked,
    row060_good167_checked,
    row060_good168_checked,
    row060_good169_checked,
    row060_good170_checked,
    row060_good171_checked,
    row060_good172_checked,
    row060_good173_checked,
    row060_good174_checked,
    row060_good175_checked,
    row060_good176_checked,
    row060_good177_checked,
    row060_good178_checked,
    row060_good179_checked,
    row060_good180_checked,
    row060_good181_checked,
    row060_good182_checked,
    row060_good183_checked,
    row060_good184_checked,
    row060_good185_checked,
    row060_good186_checked,
    row060_good187_checked,
    row060_good188_checked,
    row060_good189_checked,
    row060_good190_checked,
    row060_good191_checked,
    row060_good192_checked,
    row060_good193_checked,
    row060_good194_checked,
    row060_good195_checked,
    row060_good196_checked,
    row060_good197_checked,
    row060_good198_checked,
    row060_good199_checked,
    row060_good200_checked,
    row060_good201_checked,
    row060_good202_checked,
    row060_good203_checked,
    row060_good204_checked,
    row060_good205_checked,
    row060_good206_checked,
    row060_good207_checked,
    row060_good208_checked,
    row060_good209_checked,
    row060_good210_checked, Bool.true_and]

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row060_goods_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row060_registered :
    decide (row060.height ∈ heightCertificateData) = true := by
  decide +kernel

theorem row060_small_checked :
    coverCheck (2 * row060.height.i + 2) (row060.height.i * (row060.height.i - 1) - 1)
      (row060.goods.map goodSegmentBounds) = true := by
  decide +kernel

theorem row060_layerCover_checked :
    coverCheck (row060.height.i * (row060.height.i - 1)) (row060.height.n0 - 1)
      (row060.layers.map CoverLayer.bounds) = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row060_registered
#print axioms B699LowIndex.LowIndexLean513dc7cc.row060_small_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row060_layerCover_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row060_bounds : List NatInterval :=
  [(122, 172), (173, 232), (233, 292), (293, 352), (353, 412), (413, 468), (469, 526), (527, 582), (583, 636), (637, 690), (691, 750), (751, 810), (811, 870), (871, 922), (923, 978), (979, 1036), (1037, 1092), (1093, 1152), (1153, 1212), (1213, 1272), (1273, 1318), (1319, 1378), (1379, 1432), (1433, 1492), (1493, 1552), (1553, 1612), (1613, 1672), (1673, 1728), (1729, 1782), (1783, 1842), (1843, 1890), (1891, 1948), (1949, 2008), (2009, 2062), (2063, 2122), (2123, 2172), (2173, 2220), (2221, 2280), (2281, 2340), (2341, 2400), (2401, 2458), (2459, 2518), (2519, 2562), (2563, 2616), (2617, 2676), (2677, 2736), (2737, 2790), (2791, 2850), (2851, 2910), (2911, 2968), (2969, 3028), (3029, 3082), (3083, 3142), (3143, 3196), (3197, 3250), (3251, 3310), (3311, 3366), (3367, 3420), (3421, 3472), (3473, 3528), (3529, 3540), (3549, 3568), (3584, 3608), (3610, 3666), (3667, 3689), (3698, 3756), (3757, 3798), (3799, 3816), (3887, 3903), (3993, 4030), (4046, 4052), (4056, 4110), (4111, 4166), (4225, 4278), (4279, 4284), (4335, 4386), (4387, 4432), (4433, 4453), (4459, 4477), (4732, 4752), (4761, 4791), (4802, 4860), (4861, 4861), (4913, 4960), (5046, 5098), (5099, 5158), (5159, 5179), (5202, 5204), (5239, 5261), (5290, 5298), (5324, 5349), (5488, 5542), (5543, 5550), (5776, 5808), (5809, 5866), (5867, 5891), (6144, 6202), (6203, 6203), (6358, 6407), (6517, 6550), (6551, 6557), (6561, 6576), (6591, 6620), (6627, 6678), (6679, 6706), (6727, 6778), (6779, 6786), (6859, 6916), (6917, 6919), (6936, 6936), (6962, 6995), (7203, 7252), (7253, 7279), (7406, 7452), (7453, 7455), (7546, 7600), (7601, 7628), (7935, 7992), (7993, 8001), (8214, 8268), (8269, 8273), (8410, 8448), (8449, 8486), (8664, 8708), (8788, 8807), (8836, 8847), (9025, 9052), (9251, 9300), (9301, 9310), (9317, 9320), (9375, 9376), (9386, 9434), (9604, 9660), (9661, 9663), (10086, 10138), (10139, 10151), (10580, 10626), (10627, 10630), (10935, 10968), (10969, 11011), (11094, 11104), (11109, 11152), (11153, 11153), (11774, 11802), (11803, 11826), (12005, 12038), (12321, 12347), (12500, 12552), (13225, 13241), (13254, 13284), (13310, 13313), (13454, 13510), (13511, 13513), (13718, 13749), (13754, 13777), (14415, 14465), (14792, 14798), (15138, 15188), (15379, 15435), (15979, 16031), (16384, 16396), (16428, 16443), (16810, 16846), (16847, 16879), (17303, 17357), (17672, 17720), (18491, 18540), (18541, 18550), (19208, 19266), (19267, 19267), (19663, 19720), (19721, 19722), (20181, 20236), (20237, 20240), (20535, 20539), (20577, 20594), (21904, 21912), (22103, 22149), (24010, 24017), (24025, 24082), (24083, 24084), (24334, 24358), (24367, 24418), (24419, 24426), (24576, 24624), (25289, 25320), (25321, 25340), (26411, 26423), (27436, 27439), (28577, 28620), (28749, 28776), (30926, 30958), (31250, 31272), (32805, 32827), (33620, 33673), (35152, 35190), (35344, 35360), (36517, 36556), (36557, 36560), (36982, 37038), (37039, 37039), (39326, 39363), (39366, 39385), (41772, 41802), (43940, 43982), (44217, 44239), (48020, 48072), (48778, 48793), (49152, 49189), (73205, 73226), (98304, 98319)]

theorem row060_bounds_eq : row060.goods.map goodSegmentBounds = row060_bounds := by
  rfl

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row060_bounds_eq

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row060_layer000_intervals : List ColouredInterval :=
  [(2, 3584, 3643), (2, 4096, 4155), (2, 5120, 5179), (2, 6144, 6203), (2, 4096, 4155), (2, 6144, 6203), (2, 4096, 4155), (3, 3645, 3704), (3, 4374, 4433), (3, 5103, 5162), (3, 5832, 5891), (3, 6561, 6620), (3, 4374, 4433), (3, 6561, 6620), (3, 6561, 6620), (5, 3750, 3809), (5, 6250, 6309), (7, 3773, 3832), (7, 4116, 4175), (7, 4459, 4518), (7, 4802, 4861), (7, 5145, 5204), (7, 5488, 5547), (7, 5831, 5890), (7, 6174, 6233), (7, 6517, 6576), (7, 6860, 6919), (7, 4802, 4861), (11, 3540, 3568), (11, 3630, 3689), (11, 3751, 3810), (11, 3993, 4052), (11, 5324, 5383), (11, 6655, 6714), (13, 3549, 3608), (13, 3718, 3777), (13, 3887, 3946), (13, 4056, 4115), (13, 4225, 4284), (13, 4394, 4453), (13, 4563, 4622), (13, 4732, 4791), (13, 4901, 4960), (13, 5070, 5129), (13, 5239, 5298), (13, 4394, 4453), (13, 6591, 6650), (17, 3757, 3816), (17, 4046, 4105), (17, 4335, 4394), (17, 4624, 4683), (17, 4913, 4972), (17, 5202, 5261), (17, 5491, 5550), (17, 5780, 5839), (17, 6069, 6128), (17, 6358, 6417), (17, 6647, 6706), (17, 6936, 6995), (17, 4913, 4972), (19, 3610, 3669), (19, 3971, 4030), (19, 4332, 4391), (19, 4693, 4752), (19, 5054, 5113), (19, 5415, 5474), (19, 5776, 5835), (19, 6137, 6196), (19, 6498, 6557), (19, 6859, 6918), (19, 6859, 6918), (23, 3703, 3762), (23, 4232, 4291), (23, 4761, 4820), (23, 5290, 5349), (23, 5819, 5878), (23, 6348, 6407), (23, 6877, 6936), (29, 4205, 4264), (29, 5046, 5105), (29, 5887, 5946), (29, 6728, 6787), (31, 3844, 3903), (31, 4805, 4864), (31, 5766, 5825), (31, 6727, 6786), (37, 4107, 4166), (37, 5476, 5535), (37, 6845, 6904), (41, 5043, 5102), (41, 6724, 6783), (43, 3698, 3757), (43, 5547, 5606), (47, 4418, 4477), (47, 6627, 6686), (53, 5618, 5677), (59, 3540, 3540), (59, 6962, 7021)]

def row060_layer000_block000 : List ColouredInterval :=
  [(2, 3584, 3643), (2, 4096, 4155), (2, 5120, 5179), (2, 6144, 6203), (2, 4096, 4155), (2, 6144, 6203), (2, 4096, 4155), (3, 3645, 3704), (3, 4374, 4433), (3, 5103, 5162), (3, 5832, 5891), (3, 6561, 6620), (3, 4374, 4433), (3, 6561, 6620), (3, 6561, 6620), (5, 3750, 3809)]

def row060_layer000_block001 : List ColouredInterval :=
  [(5, 6250, 6309), (7, 3773, 3832), (7, 4116, 4175), (7, 4459, 4518), (7, 4802, 4861), (7, 5145, 5204), (7, 5488, 5547), (7, 5831, 5890), (7, 6174, 6233), (7, 6517, 6576), (7, 6860, 6919), (7, 4802, 4861), (11, 3540, 3568), (11, 3630, 3689), (11, 3751, 3810), (11, 3993, 4052)]

def row060_layer000_block002 : List ColouredInterval :=
  [(11, 5324, 5383), (11, 6655, 6714), (13, 3549, 3608), (13, 3718, 3777), (13, 3887, 3946), (13, 4056, 4115), (13, 4225, 4284), (13, 4394, 4453), (13, 4563, 4622), (13, 4732, 4791), (13, 4901, 4960), (13, 5070, 5129), (13, 5239, 5298), (13, 4394, 4453), (13, 6591, 6650), (17, 3757, 3816)]

def row060_layer000_block003 : List ColouredInterval :=
  [(17, 4046, 4105), (17, 4335, 4394), (17, 4624, 4683), (17, 4913, 4972), (17, 5202, 5261), (17, 5491, 5550), (17, 5780, 5839), (17, 6069, 6128), (17, 6358, 6417), (17, 6647, 6706), (17, 6936, 6995), (17, 4913, 4972), (19, 3610, 3669), (19, 3971, 4030), (19, 4332, 4391), (19, 4693, 4752)]

def row060_layer000_block004 : List ColouredInterval :=
  [(19, 5054, 5113), (19, 5415, 5474), (19, 5776, 5835), (19, 6137, 6196), (19, 6498, 6557), (19, 6859, 6918), (19, 6859, 6918), (23, 3703, 3762), (23, 4232, 4291), (23, 4761, 4820), (23, 5290, 5349), (23, 5819, 5878), (23, 6348, 6407), (23, 6877, 6936), (29, 4205, 4264), (29, 5046, 5105)]

def row060_layer000_block005 : List ColouredInterval :=
  [(29, 5887, 5946), (29, 6728, 6787), (31, 3844, 3903), (31, 4805, 4864), (31, 5766, 5825), (31, 6727, 6786), (37, 4107, 4166), (37, 5476, 5535), (37, 6845, 6904), (41, 5043, 5102), (41, 6724, 6783), (43, 3698, 3757), (43, 5547, 5606), (47, 4418, 4477), (47, 6627, 6686), (53, 5618, 5677)]

def row060_layer000_block006 : List ColouredInterval :=
  [(59, 3540, 3540), (59, 6962, 7021)]

def row060_layer000_chunks : List (List ColouredInterval) :=
  [row060_layer000_block000, row060_layer000_block001, row060_layer000_block002, row060_layer000_block003, row060_layer000_block004, row060_layer000_block005, row060_layer000_block006]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row060_layer000_intervals

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row060_layer000_arithmetic : LayerArithmeticValid row060.height { lower := 3540, upper := 7080, M := 31 } := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row060_layer000_arithmetic

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row060_layer000_enumeration :
    activePowerIntervalList 60 31 3540 7080 = row060_layer000_intervals := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row060_layer000_enumeration

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row060_layer000_pairs000 :
    row060_layer000_block000.all (fun I => row060_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row060_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row060_layer000_pairs000

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row060_layer000_pairs001 :
    row060_layer000_block001.all (fun I => row060_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row060_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row060_layer000_pairs001

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row060_layer000_pairs002 :
    row060_layer000_block002.all (fun I => row060_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row060_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row060_layer000_pairs002

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row060_layer000_pairs003 :
    row060_layer000_block003.all (fun I => row060_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row060_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row060_layer000_pairs003

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row060_layer000_pairs004 :
    row060_layer000_block004.all (fun I => row060_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row060_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row060_layer000_pairs004

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row060_layer000_pairs005 :
    row060_layer000_block005.all (fun I => row060_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row060_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row060_layer000_pairs005

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row060_layer000_pairs006 :
    row060_layer000_block006.all (fun I => row060_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row060_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row060_layer000_pairs006

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row060_layer000_chunks_eq : row060_layer000_chunks.flatten = row060_layer000_intervals := by
  rfl

theorem row060_layer000_pairs : pairCoverCheck row060_layer000_intervals row060_bounds = true := by
  apply pairCoverCheck_of_chunks row060_layer000_chunks_eq
  intro block hblock
  simp only [row060_layer000_chunks, List.mem_cons, List.mem_nil_iff, or_false] at hblock
  rcases hblock with rfl | rfl | rfl | rfl | rfl | rfl | rfl
  · exact row060_layer000_pairs000
  · exact row060_layer000_pairs001
  · exact row060_layer000_pairs002
  · exact row060_layer000_pairs003
  · exact row060_layer000_pairs004
  · exact row060_layer000_pairs005
  · exact row060_layer000_pairs006

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row060_layer000_chunks_eq
#print axioms B699LowIndex.LowIndexLean513dc7cc.row060_layer000_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row060_layer000_checked :
    coverLayerCheck row060.height row060.goods { lower := 3540, upper := 7080, M := 31 } = true := by
  exact coverLayerCheck_of_parts row060_layer000_arithmetic row060_layer000_enumeration row060_bounds_eq row060_layer000_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row060_layer000_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row060_layer001_intervals : List ColouredInterval :=
  [(2, 7168, 7227), (2, 8192, 8251), (2, 10240, 10299), (2, 12288, 12347), (2, 8192, 8251), (2, 12288, 12347), (2, 8192, 8251), (3, 8748, 8807), (3, 10935, 10994), (3, 13122, 13181), (3, 13122, 13181), (5, 9375, 9434), (5, 12500, 12559), (7, 7203, 7262), (7, 7546, 7605), (7, 7889, 7948), (7, 8232, 8291), (7, 8575, 8634), (7, 8918, 8977), (7, 9261, 9320), (7, 9604, 9663), (7, 7203, 7262), (7, 9604, 9663), (7, 12005, 12064), (11, 7986, 8045), (11, 9317, 9376), (11, 10648, 10707), (11, 11979, 12038), (11, 13310, 13369), (13, 8788, 8847), (13, 10985, 11044), (13, 13182, 13241), (17, 7225, 7284), (17, 7514, 7573), (17, 7803, 7862), (17, 8092, 8151), (17, 9826, 9885), (19, 7220, 7279), (19, 7581, 7640), (19, 7942, 8001), (19, 8303, 8362), (19, 8664, 8723), (19, 9025, 9084), (19, 9386, 9445), (19, 9747, 9806), (19, 10108, 10167), (19, 13718, 13777), (23, 7406, 7465), (23, 7935, 7994), (23, 8464, 8523), (23, 8993, 9052), (23, 9522, 9581), (23, 10051, 10110), (23, 10580, 10639), (23, 11109, 11168), (23, 11638, 11697), (23, 12167, 12226), (23, 12696, 12755), (23, 13225, 13284), (23, 13754, 13813), (23, 12167, 12226), (29, 7569, 7628), (29, 8410, 8469), (29, 9251, 9310), (29, 10092, 10151), (29, 10933, 10992), (29, 11774, 11833), (29, 12615, 12674), (29, 13456, 13515), (31, 7688, 7747), (31, 8649, 8708), (31, 9610, 9669), (31, 10571, 10630), (31, 11532, 11591), (31, 12493, 12552), (31, 13454, 13513), (37, 8214, 8273), (37, 9583, 9642), (37, 10952, 11011), (37, 12321, 12380), (37, 13690, 13749), (41, 8405, 8464), (41, 10086, 10145), (41, 11767, 11826), (41, 13448, 13507), (43, 7396, 7455), (43, 9245, 9304), (43, 11094, 11153), (43, 12943, 13002), (47, 8836, 8895), (47, 11045, 11104), (47, 13254, 13313), (53, 8427, 8486), (53, 11236, 11295), (53, 14045, 14104), (59, 10443, 10502), (59, 13924, 13983)]

def row060_layer001_block000 : List ColouredInterval :=
  [(2, 7168, 7227), (2, 8192, 8251), (2, 10240, 10299), (2, 12288, 12347), (2, 8192, 8251), (2, 12288, 12347), (2, 8192, 8251), (3, 8748, 8807), (3, 10935, 10994), (3, 13122, 13181), (3, 13122, 13181), (5, 9375, 9434), (5, 12500, 12559), (7, 7203, 7262), (7, 7546, 7605), (7, 7889, 7948)]

def row060_layer001_block001 : List ColouredInterval :=
  [(7, 8232, 8291), (7, 8575, 8634), (7, 8918, 8977), (7, 9261, 9320), (7, 9604, 9663), (7, 7203, 7262), (7, 9604, 9663), (7, 12005, 12064), (11, 7986, 8045), (11, 9317, 9376), (11, 10648, 10707), (11, 11979, 12038), (11, 13310, 13369), (13, 8788, 8847), (13, 10985, 11044), (13, 13182, 13241)]

def row060_layer001_block002 : List ColouredInterval :=
  [(17, 7225, 7284), (17, 7514, 7573), (17, 7803, 7862), (17, 8092, 8151), (17, 9826, 9885), (19, 7220, 7279), (19, 7581, 7640), (19, 7942, 8001), (19, 8303, 8362), (19, 8664, 8723), (19, 9025, 9084), (19, 9386, 9445), (19, 9747, 9806), (19, 10108, 10167), (19, 13718, 13777), (23, 7406, 7465)]

def row060_layer001_block003 : List ColouredInterval :=
  [(23, 7935, 7994), (23, 8464, 8523), (23, 8993, 9052), (23, 9522, 9581), (23, 10051, 10110), (23, 10580, 10639), (23, 11109, 11168), (23, 11638, 11697), (23, 12167, 12226), (23, 12696, 12755), (23, 13225, 13284), (23, 13754, 13813), (23, 12167, 12226), (29, 7569, 7628), (29, 8410, 8469), (29, 9251, 9310)]

def row060_layer001_block004 : List ColouredInterval :=
  [(29, 10092, 10151), (29, 10933, 10992), (29, 11774, 11833), (29, 12615, 12674), (29, 13456, 13515), (31, 7688, 7747), (31, 8649, 8708), (31, 9610, 9669), (31, 10571, 10630), (31, 11532, 11591), (31, 12493, 12552), (31, 13454, 13513), (37, 8214, 8273), (37, 9583, 9642), (37, 10952, 11011), (37, 12321, 12380)]

def row060_layer001_block005 : List ColouredInterval :=
  [(37, 13690, 13749), (41, 8405, 8464), (41, 10086, 10145), (41, 11767, 11826), (41, 13448, 13507), (43, 7396, 7455), (43, 9245, 9304), (43, 11094, 11153), (43, 12943, 13002), (47, 8836, 8895), (47, 11045, 11104), (47, 13254, 13313), (53, 8427, 8486), (53, 11236, 11295), (53, 14045, 14104), (59, 10443, 10502)]

def row060_layer001_block006 : List ColouredInterval :=
  [(59, 13924, 13983)]

def row060_layer001_chunks : List (List ColouredInterval) :=
  [row060_layer001_block000, row060_layer001_block001, row060_layer001_block002, row060_layer001_block003, row060_layer001_block004, row060_layer001_block005, row060_layer001_block006]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row060_layer001_intervals

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row060_layer001_arithmetic : LayerArithmeticValid row060.height { lower := 7080, upper := 14160, M := 28 } := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row060_layer001_arithmetic

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row060_layer001_enumeration :
    activePowerIntervalList 60 28 7080 14160 = row060_layer001_intervals := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row060_layer001_enumeration

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row060_layer001_pairs000 :
    row060_layer001_block000.all (fun I => row060_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row060_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row060_layer001_pairs000

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row060_layer001_pairs001 :
    row060_layer001_block001.all (fun I => row060_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row060_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row060_layer001_pairs001

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row060_layer001_pairs002 :
    row060_layer001_block002.all (fun I => row060_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row060_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row060_layer001_pairs002

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row060_layer001_pairs003 :
    row060_layer001_block003.all (fun I => row060_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row060_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row060_layer001_pairs003

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row060_layer001_pairs004 :
    row060_layer001_block004.all (fun I => row060_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row060_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row060_layer001_pairs004

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row060_layer001_pairs005 :
    row060_layer001_block005.all (fun I => row060_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row060_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row060_layer001_pairs005

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row060_layer001_pairs006 :
    row060_layer001_block006.all (fun I => row060_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row060_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row060_layer001_pairs006

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row060_layer001_chunks_eq : row060_layer001_chunks.flatten = row060_layer001_intervals := by
  rfl

theorem row060_layer001_pairs : pairCoverCheck row060_layer001_intervals row060_bounds = true := by
  apply pairCoverCheck_of_chunks row060_layer001_chunks_eq
  intro block hblock
  simp only [row060_layer001_chunks, List.mem_cons, List.mem_nil_iff, or_false] at hblock
  rcases hblock with rfl | rfl | rfl | rfl | rfl | rfl | rfl
  · exact row060_layer001_pairs000
  · exact row060_layer001_pairs001
  · exact row060_layer001_pairs002
  · exact row060_layer001_pairs003
  · exact row060_layer001_pairs004
  · exact row060_layer001_pairs005
  · exact row060_layer001_pairs006

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row060_layer001_chunks_eq
#print axioms B699LowIndex.LowIndexLean513dc7cc.row060_layer001_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row060_layer001_checked :
    coverLayerCheck row060.height row060.goods { lower := 7080, upper := 14160, M := 28 } = true := by
  exact coverLayerCheck_of_parts row060_layer001_arithmetic row060_layer001_enumeration row060_bounds_eq row060_layer001_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row060_layer001_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row060_layer002_intervals : List ColouredInterval :=
  [(2, 16384, 16443), (2, 20480, 20539), (2, 24576, 24635), (2, 16384, 16443), (2, 24576, 24635), (2, 16384, 16443), (3, 15309, 15368), (3, 17496, 17555), (3, 19683, 19742), (3, 26244, 26303), (3, 19683, 19742), (5, 15625, 15684), (5, 15625, 15684), (7, 14406, 14465), (7, 16807, 16866), (7, 19208, 19267), (7, 21609, 21668), (7, 24010, 24069), (7, 26411, 26470), (7, 16807, 16866), (11, 14641, 14700), (11, 15972, 16031), (11, 17303, 17362), (11, 18634, 18693), (11, 19965, 20024), (11, 21296, 21355), (11, 22627, 22686), (11, 23958, 24017), (11, 25289, 25348), (11, 26620, 26679), (11, 27951, 28010), (11, 14641, 14700), (13, 15379, 15438), (13, 17576, 17635), (13, 19773, 19832), (13, 21970, 22029), (13, 24167, 24226), (13, 26364, 26423), (17, 14739, 14798), (17, 19652, 19711), (17, 24565, 24624), (19, 20577, 20636), (19, 27436, 27495), (23, 24334, 24393), (29, 14297, 14356), (29, 15138, 15197), (29, 15979, 16038), (29, 16820, 16879), (29, 17661, 17720), (29, 18502, 18561), (29, 19343, 19402), (29, 20184, 20243), (29, 21025, 21084), (29, 24389, 24448), (31, 14415, 14474), (31, 15376, 15435), (31, 16337, 16396), (31, 17298, 17357), (31, 18259, 18318), (31, 19220, 19279), (31, 20181, 20240), (31, 21142, 21201), (31, 22103, 22162), (31, 23064, 23123), (31, 24025, 24084), (37, 15059, 15118), (37, 16428, 16487), (37, 17797, 17856), (37, 19166, 19225), (37, 20535, 20594), (37, 21904, 21963), (37, 23273, 23332), (37, 24642, 24701), (37, 26011, 26070), (37, 27380, 27439), (41, 15129, 15188), (41, 16810, 16869), (41, 18491, 18550), (41, 20172, 20231), (41, 21853, 21912), (41, 23534, 23593), (41, 25215, 25274), (41, 26896, 26955), (43, 14792, 14851), (43, 16641, 16700), (43, 18490, 18549), (43, 20339, 20398), (43, 22188, 22247), (43, 24037, 24096), (43, 25886, 25945), (43, 27735, 27794), (47, 15463, 15522), (47, 17672, 17731), (47, 19881, 19940), (47, 22090, 22149), (47, 24299, 24358), (47, 26508, 26567), (53, 16854, 16913), (53, 19663, 19722), (53, 22472, 22531), (53, 25281, 25340), (53, 28090, 28149), (59, 17405, 17464), (59, 20886, 20945), (59, 24367, 24426), (59, 27848, 27907)]

def row060_layer002_block000 : List ColouredInterval :=
  [(2, 16384, 16443), (2, 20480, 20539), (2, 24576, 24635), (2, 16384, 16443), (2, 24576, 24635), (2, 16384, 16443), (3, 15309, 15368), (3, 17496, 17555), (3, 19683, 19742), (3, 26244, 26303), (3, 19683, 19742), (5, 15625, 15684), (5, 15625, 15684), (7, 14406, 14465), (7, 16807, 16866), (7, 19208, 19267)]

def row060_layer002_block001 : List ColouredInterval :=
  [(7, 21609, 21668), (7, 24010, 24069), (7, 26411, 26470), (7, 16807, 16866), (11, 14641, 14700), (11, 15972, 16031), (11, 17303, 17362), (11, 18634, 18693), (11, 19965, 20024), (11, 21296, 21355), (11, 22627, 22686), (11, 23958, 24017), (11, 25289, 25348), (11, 26620, 26679), (11, 27951, 28010), (11, 14641, 14700)]

def row060_layer002_block002 : List ColouredInterval :=
  [(13, 15379, 15438), (13, 17576, 17635), (13, 19773, 19832), (13, 21970, 22029), (13, 24167, 24226), (13, 26364, 26423), (17, 14739, 14798), (17, 19652, 19711), (17, 24565, 24624), (19, 20577, 20636), (19, 27436, 27495), (23, 24334, 24393), (29, 14297, 14356), (29, 15138, 15197), (29, 15979, 16038), (29, 16820, 16879)]

def row060_layer002_block003 : List ColouredInterval :=
  [(29, 17661, 17720), (29, 18502, 18561), (29, 19343, 19402), (29, 20184, 20243), (29, 21025, 21084), (29, 24389, 24448), (31, 14415, 14474), (31, 15376, 15435), (31, 16337, 16396), (31, 17298, 17357), (31, 18259, 18318), (31, 19220, 19279), (31, 20181, 20240), (31, 21142, 21201), (31, 22103, 22162), (31, 23064, 23123)]

def row060_layer002_block004 : List ColouredInterval :=
  [(31, 24025, 24084), (37, 15059, 15118), (37, 16428, 16487), (37, 17797, 17856), (37, 19166, 19225), (37, 20535, 20594), (37, 21904, 21963), (37, 23273, 23332), (37, 24642, 24701), (37, 26011, 26070), (37, 27380, 27439), (41, 15129, 15188), (41, 16810, 16869), (41, 18491, 18550), (41, 20172, 20231), (41, 21853, 21912)]

def row060_layer002_block005 : List ColouredInterval :=
  [(41, 23534, 23593), (41, 25215, 25274), (41, 26896, 26955), (43, 14792, 14851), (43, 16641, 16700), (43, 18490, 18549), (43, 20339, 20398), (43, 22188, 22247), (43, 24037, 24096), (43, 25886, 25945), (43, 27735, 27794), (47, 15463, 15522), (47, 17672, 17731), (47, 19881, 19940), (47, 22090, 22149), (47, 24299, 24358)]

def row060_layer002_block006 : List ColouredInterval :=
  [(47, 26508, 26567), (53, 16854, 16913), (53, 19663, 19722), (53, 22472, 22531), (53, 25281, 25340), (53, 28090, 28149), (59, 17405, 17464), (59, 20886, 20945), (59, 24367, 24426), (59, 27848, 27907)]

def row060_layer002_chunks : List (List ColouredInterval) :=
  [row060_layer002_block000, row060_layer002_block001, row060_layer002_block002, row060_layer002_block003, row060_layer002_block004, row060_layer002_block005, row060_layer002_block006]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row060_layer002_intervals

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row060_layer002_arithmetic : LayerArithmeticValid row060.height { lower := 14160, upper := 28320, M := 25 } := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row060_layer002_arithmetic

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row060_layer002_enumeration :
    activePowerIntervalList 60 25 14160 28320 = row060_layer002_intervals := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row060_layer002_enumeration

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row060_layer002_pairs000 :
    row060_layer002_block000.all (fun I => row060_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row060_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row060_layer002_pairs000

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row060_layer002_pairs001 :
    row060_layer002_block001.all (fun I => row060_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row060_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row060_layer002_pairs001

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row060_layer002_pairs002 :
    row060_layer002_block002.all (fun I => row060_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row060_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row060_layer002_pairs002

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row060_layer002_pairs003 :
    row060_layer002_block003.all (fun I => row060_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row060_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row060_layer002_pairs003

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row060_layer002_pairs004 :
    row060_layer002_block004.all (fun I => row060_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row060_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row060_layer002_pairs004

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row060_layer002_pairs005 :
    row060_layer002_block005.all (fun I => row060_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row060_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row060_layer002_pairs005

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row060_layer002_pairs006 :
    row060_layer002_block006.all (fun I => row060_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row060_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row060_layer002_pairs006

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row060_layer002_chunks_eq : row060_layer002_chunks.flatten = row060_layer002_intervals := by
  rfl

theorem row060_layer002_pairs : pairCoverCheck row060_layer002_intervals row060_bounds = true := by
  apply pairCoverCheck_of_chunks row060_layer002_chunks_eq
  intro block hblock
  simp only [row060_layer002_chunks, List.mem_cons, List.mem_nil_iff, or_false] at hblock
  rcases hblock with rfl | rfl | rfl | rfl | rfl | rfl | rfl
  · exact row060_layer002_pairs000
  · exact row060_layer002_pairs001
  · exact row060_layer002_pairs002
  · exact row060_layer002_pairs003
  · exact row060_layer002_pairs004
  · exact row060_layer002_pairs005
  · exact row060_layer002_pairs006

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row060_layer002_chunks_eq
#print axioms B699LowIndex.LowIndexLean513dc7cc.row060_layer002_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row060_layer002_checked :
    coverLayerCheck row060.height row060.goods { lower := 14160, upper := 28320, M := 25 } = true := by
  exact coverLayerCheck_of_parts row060_layer002_arithmetic row060_layer002_enumeration row060_bounds_eq row060_layer002_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row060_layer002_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row060_layer003_intervals : List ColouredInterval :=
  [(2, 32768, 32827), (2, 40960, 41019), (2, 32768, 32827), (2, 49152, 49211), (2, 32768, 32827), (3, 32805, 32864), (3, 39366, 39425), (3, 45927, 45986), (3, 39366, 39425), (5, 31250, 31309), (5, 46875, 46934), (7, 28812, 28871), (7, 31213, 31272), (7, 33614, 33673), (7, 36015, 36074), (7, 38416, 38475), (7, 40817, 40876), (7, 43218, 43277), (7, 45619, 45678), (7, 48020, 48079), (7, 50421, 50480), (7, 52822, 52881), (7, 33614, 33673), (7, 50421, 50480), (11, 29282, 29341), (11, 29282, 29341), (11, 43923, 43982), (13, 28561, 28620), (13, 30758, 30817), (13, 32955, 33014), (13, 35152, 35211), (13, 37349, 37408), (13, 39546, 39605), (13, 41743, 41802), (13, 43940, 43999), (13, 46137, 46196), (13, 48334, 48393), (13, 28561, 28620), (17, 29478, 29537), (17, 34391, 34450), (17, 39304, 39363), (17, 44217, 44276), (17, 49130, 49189), (17, 54043, 54102), (19, 34295, 34354), (19, 41154, 41213), (19, 48013, 48072), (19, 54872, 54931), (23, 36501, 36560), (23, 48668, 48727), (29, 48778, 48837), (31, 29791, 29850), (37, 28749, 28808), (37, 30118, 30177), (37, 50653, 50712), (41, 28577, 28636), (41, 30258, 30317), (41, 31939, 31998), (41, 33620, 33679), (41, 35301, 35360), (41, 36982, 37041), (43, 29584, 29643), (43, 31433, 31492), (43, 33282, 33341), (43, 35131, 35190), (43, 36980, 37039), (43, 38829, 38888), (43, 40678, 40737), (47, 28717, 28776), (47, 30926, 30985), (47, 33135, 33194), (47, 35344, 35403), (47, 37553, 37612), (47, 39762, 39821), (47, 41971, 42030), (47, 44180, 44239), (47, 46389, 46448), (47, 48598, 48657), (53, 30899, 30958), (53, 33708, 33767), (53, 36517, 36576), (53, 39326, 39385), (53, 42135, 42194), (53, 44944, 45003), (53, 47753, 47812), (53, 50562, 50621), (53, 53371, 53430), (53, 56180, 56239), (59, 31329, 31388), (59, 34810, 34869), (59, 38291, 38350), (59, 41772, 41831), (59, 45253, 45312), (59, 48734, 48793), (59, 52215, 52274), (59, 55696, 55755)]

def row060_layer003_block000 : List ColouredInterval :=
  [(2, 32768, 32827), (2, 40960, 41019), (2, 32768, 32827), (2, 49152, 49211), (2, 32768, 32827), (3, 32805, 32864), (3, 39366, 39425), (3, 45927, 45986), (3, 39366, 39425), (5, 31250, 31309), (5, 46875, 46934), (7, 28812, 28871), (7, 31213, 31272), (7, 33614, 33673), (7, 36015, 36074), (7, 38416, 38475)]

def row060_layer003_block001 : List ColouredInterval :=
  [(7, 40817, 40876), (7, 43218, 43277), (7, 45619, 45678), (7, 48020, 48079), (7, 50421, 50480), (7, 52822, 52881), (7, 33614, 33673), (7, 50421, 50480), (11, 29282, 29341), (11, 29282, 29341), (11, 43923, 43982), (13, 28561, 28620), (13, 30758, 30817), (13, 32955, 33014), (13, 35152, 35211), (13, 37349, 37408)]

def row060_layer003_block002 : List ColouredInterval :=
  [(13, 39546, 39605), (13, 41743, 41802), (13, 43940, 43999), (13, 46137, 46196), (13, 48334, 48393), (13, 28561, 28620), (17, 29478, 29537), (17, 34391, 34450), (17, 39304, 39363), (17, 44217, 44276), (17, 49130, 49189), (17, 54043, 54102), (19, 34295, 34354), (19, 41154, 41213), (19, 48013, 48072), (19, 54872, 54931)]

def row060_layer003_block003 : List ColouredInterval :=
  [(23, 36501, 36560), (23, 48668, 48727), (29, 48778, 48837), (31, 29791, 29850), (37, 28749, 28808), (37, 30118, 30177), (37, 50653, 50712), (41, 28577, 28636), (41, 30258, 30317), (41, 31939, 31998), (41, 33620, 33679), (41, 35301, 35360), (41, 36982, 37041), (43, 29584, 29643), (43, 31433, 31492), (43, 33282, 33341)]

def row060_layer003_block004 : List ColouredInterval :=
  [(43, 35131, 35190), (43, 36980, 37039), (43, 38829, 38888), (43, 40678, 40737), (47, 28717, 28776), (47, 30926, 30985), (47, 33135, 33194), (47, 35344, 35403), (47, 37553, 37612), (47, 39762, 39821), (47, 41971, 42030), (47, 44180, 44239), (47, 46389, 46448), (47, 48598, 48657), (53, 30899, 30958), (53, 33708, 33767)]

def row060_layer003_block005 : List ColouredInterval :=
  [(53, 36517, 36576), (53, 39326, 39385), (53, 42135, 42194), (53, 44944, 45003), (53, 47753, 47812), (53, 50562, 50621), (53, 53371, 53430), (53, 56180, 56239), (59, 31329, 31388), (59, 34810, 34869), (59, 38291, 38350), (59, 41772, 41831), (59, 45253, 45312), (59, 48734, 48793), (59, 52215, 52274), (59, 55696, 55755)]

def row060_layer003_chunks : List (List ColouredInterval) :=
  [row060_layer003_block000, row060_layer003_block001, row060_layer003_block002, row060_layer003_block003, row060_layer003_block004, row060_layer003_block005]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row060_layer003_intervals

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row060_layer003_arithmetic : LayerArithmeticValid row060.height { lower := 28320, upper := 56640, M := 22 } := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row060_layer003_arithmetic

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row060_layer003_enumeration :
    activePowerIntervalList 60 22 28320 56640 = row060_layer003_intervals := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row060_layer003_enumeration

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row060_layer003_pairs000 :
    row060_layer003_block000.all (fun I => row060_layer003_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row060_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row060_layer003_pairs000

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row060_layer003_pairs001 :
    row060_layer003_block001.all (fun I => row060_layer003_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row060_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row060_layer003_pairs001

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row060_layer003_pairs002 :
    row060_layer003_block002.all (fun I => row060_layer003_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row060_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row060_layer003_pairs002

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row060_layer003_pairs003 :
    row060_layer003_block003.all (fun I => row060_layer003_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row060_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row060_layer003_pairs003

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row060_layer003_pairs004 :
    row060_layer003_block004.all (fun I => row060_layer003_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row060_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row060_layer003_pairs004

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row060_layer003_pairs005 :
    row060_layer003_block005.all (fun I => row060_layer003_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row060_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row060_layer003_pairs005

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row060_layer003_chunks_eq : row060_layer003_chunks.flatten = row060_layer003_intervals := by
  rfl

theorem row060_layer003_pairs : pairCoverCheck row060_layer003_intervals row060_bounds = true := by
  apply pairCoverCheck_of_chunks row060_layer003_chunks_eq
  intro block hblock
  simp only [row060_layer003_chunks, List.mem_cons, List.mem_nil_iff, or_false] at hblock
  rcases hblock with rfl | rfl | rfl | rfl | rfl | rfl
  · exact row060_layer003_pairs000
  · exact row060_layer003_pairs001
  · exact row060_layer003_pairs002
  · exact row060_layer003_pairs003
  · exact row060_layer003_pairs004
  · exact row060_layer003_pairs005

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row060_layer003_chunks_eq
#print axioms B699LowIndex.LowIndexLean513dc7cc.row060_layer003_pairs

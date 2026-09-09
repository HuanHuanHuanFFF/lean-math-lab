import research.tasks.«B699-Binomial».runs.«20260909-low-index-structure-b41a5a63».lean.FiniteCover

set_option maxRecDepth 65536
set_option maxHeartbeats 0
set_option exponentiation.threshold 1000000

namespace B699LowIndex

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

theorem row060_registered :
    decide (row060.height ∈ heightCertificateData) = true := by
  decide +kernel

theorem row060_goods_checked :
    row060.goods.all (goodSegmentCheck row060.height.i row060.height.r row060.height.s) = true := by
  decide +kernel

theorem row060_small_checked :
    coverCheck (2 * row060.height.i + 2) (row060.height.i * (row060.height.i - 1) - 1)
      (row060.goods.map goodSegmentBounds) = true := by
  decide +kernel

theorem row060_layerCover_checked :
    coverCheck (row060.height.i * (row060.height.i - 1)) (row060.height.n0 - 1)
      (row060.layers.map CoverLayer.bounds) = true := by
  decide +kernel

theorem row060_layer000_checked :
    coverLayerCheck row060.height row060.goods { lower := 3540, upper := 7080, M := 31 } = true := by
  decide +kernel

theorem row060_layer001_checked :
    coverLayerCheck row060.height row060.goods { lower := 7080, upper := 14160, M := 28 } = true := by
  decide +kernel

theorem row060_layer002_checked :
    coverLayerCheck row060.height row060.goods { lower := 14160, upper := 28320, M := 25 } = true := by
  decide +kernel

theorem row060_layer003_checked :
    coverLayerCheck row060.height row060.goods { lower := 28320, upper := 56640, M := 22 } = true := by
  decide +kernel

theorem row060_layer004_checked :
    coverLayerCheck row060.height row060.goods { lower := 56640, upper := 113280, M := 20 } = true := by
  decide +kernel

theorem row060_layer005_checked :
    coverLayerCheck row060.height row060.goods { lower := 113280, upper := 226560, M := 18 } = true := by
  decide +kernel

theorem row060_layer006_checked :
    coverLayerCheck row060.height row060.goods { lower := 226560, upper := 453120, M := 16 } = true := by
  decide +kernel

theorem row060_layer007_checked :
    coverLayerCheck row060.height row060.goods { lower := 453120, upper := 906240, M := 14 } = true := by
  decide +kernel

theorem row060_layer008_checked :
    coverLayerCheck row060.height row060.goods { lower := 906240, upper := 1812480, M := 13 } = true := by
  decide +kernel

theorem row060_layer009_checked :
    coverLayerCheck row060.height row060.goods { lower := 1812480, upper := 3624960, M := 11 } = true := by
  decide +kernel

theorem row060_layer010_checked :
    coverLayerCheck row060.height row060.goods { lower := 3624960, upper := 7249920, M := 10 } = true := by
  decide +kernel

theorem row060_layer011_checked :
    coverLayerCheck row060.height row060.goods { lower := 7249920, upper := 14499840, M := 9 } = true := by
  decide +kernel

theorem row060_layer012_checked :
    coverLayerCheck row060.height row060.goods { lower := 14499840, upper := 28999680, M := 8 } = true := by
  decide +kernel

theorem row060_layer013_checked :
    coverLayerCheck row060.height row060.goods { lower := 28999680, upper := 57999360, M := 7 } = true := by
  decide +kernel

theorem row060_layer014_checked :
    coverLayerCheck row060.height row060.goods { lower := 57999360, upper := 115998720, M := 7 } = true := by
  decide +kernel

theorem row060_layer015_checked :
    coverLayerCheck row060.height row060.goods { lower := 115998720, upper := 231997440, M := 6 } = true := by
  decide +kernel

theorem row060_layer016_checked :
    coverLayerCheck row060.height row060.goods { lower := 231997440, upper := 463994880, M := 5 } = true := by
  decide +kernel

theorem row060_layer017_checked :
    coverLayerCheck row060.height row060.goods { lower := 463994880, upper := 927989760, M := 5 } = true := by
  decide +kernel

theorem row060_layer018_checked :
    coverLayerCheck row060.height row060.goods { lower := 927989760, upper := 1855979520, M := 4 } = true := by
  decide +kernel

theorem row060_layer019_checked :
    coverLayerCheck row060.height row060.goods { lower := 1855979520, upper := 3711959040, M := 4 } = true := by
  decide +kernel

theorem row060_layer020_checked :
    coverLayerCheck row060.height row060.goods { lower := 3711959040, upper := 7423918080, M := 4 } = true := by
  decide +kernel

theorem row060_layer021_checked :
    coverLayerCheck row060.height row060.goods { lower := 7423918080, upper := 14847836160, M := 3 } = true := by
  decide +kernel

theorem row060_layer022_checked :
    coverLayerCheck row060.height row060.goods { lower := 14847836160, upper := 29695672320, M := 3 } = true := by
  decide +kernel

theorem row060_layer023_checked :
    coverLayerCheck row060.height row060.goods { lower := 29695672320, upper := 59391344640, M := 3 } = true := by
  decide +kernel

theorem row060_layer024_checked :
    coverLayerCheck row060.height row060.goods { lower := 59391344640, upper := 118782689280, M := 2 } = true := by
  decide +kernel

theorem row060_layer025_checked :
    coverLayerCheck row060.height row060.goods { lower := 118782689280, upper := 237565378560, M := 2 } = true := by
  decide +kernel

theorem row060_layer026_checked :
    coverLayerCheck row060.height row060.goods { lower := 237565378560, upper := 475130757120, M := 2 } = true := by
  decide +kernel

theorem row060_layer027_checked :
    coverLayerCheck row060.height row060.goods { lower := 475130757120, upper := 950261514240, M := 2 } = true := by
  decide +kernel

theorem row060_layer028_checked :
    coverLayerCheck row060.height row060.goods { lower := 950261514240, upper := 1900523028480, M := 2 } = true := by
  decide +kernel

theorem row060_layer029_checked :
    coverLayerCheck row060.height row060.goods { lower := 1900523028480, upper := 3801046056960, M := 2 } = true := by
  decide +kernel

theorem row060_layer030_checked :
    coverLayerCheck row060.height row060.goods { lower := 3801046056960, upper := 7602092113920, M := 1 } = true := by
  decide +kernel

theorem row060_layer031_checked :
    coverLayerCheck row060.height row060.goods { lower := 7602092113920, upper := 10000000000000, M := 1 } = true := by
  decide +kernel

theorem row060_layers_checked :
    row060.layers.all (coverLayerCheck row060.height row060.goods) = true := by
  change List.all [
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
  ] (coverLayerCheck row060.height row060.goods) = true
  simp only [List.all_cons, List.all_nil,
    row060_layer000_checked,
    row060_layer001_checked,
    row060_layer002_checked,
    row060_layer003_checked,
    row060_layer004_checked,
    row060_layer005_checked,
    row060_layer006_checked,
    row060_layer007_checked,
    row060_layer008_checked,
    row060_layer009_checked,
    row060_layer010_checked,
    row060_layer011_checked,
    row060_layer012_checked,
    row060_layer013_checked,
    row060_layer014_checked,
    row060_layer015_checked,
    row060_layer016_checked,
    row060_layer017_checked,
    row060_layer018_checked,
    row060_layer019_checked,
    row060_layer020_checked,
    row060_layer021_checked,
    row060_layer022_checked,
    row060_layer023_checked,
    row060_layer024_checked,
    row060_layer025_checked,
    row060_layer026_checked,
    row060_layer027_checked,
    row060_layer028_checked,
    row060_layer029_checked,
    row060_layer030_checked,
    row060_layer031_checked,
    Bool.true_and]

theorem row060_checked : finiteCoverRowCheck row060 = true := by
  simp only [finiteCoverRowCheck, row060_registered, row060_goods_checked,
    row060_small_checked, row060_layerCover_checked, row060_layers_checked,
    Bool.true_and]

#print axioms B699LowIndex.row060_checked

end B699LowIndex

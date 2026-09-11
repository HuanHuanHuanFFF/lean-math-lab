import research.tasks.«B699-Binomial».runs.«20260909-low-index-structure-b41a5a63».lean.FiniteCover
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.WitnessBridge
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.LayerParts
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.PairChunks

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row061_height : HeightCertificateDatum := { i := 61, r := 20, s := 42, n0Power10 := 12 }

def row061_goods : List GoodSegment := [
  { lower := 124, upper := 173, witness := RowWitness.topPrime 113 },
  { lower := 174, upper := 233, witness := RowWitness.topPrime 173 },
  { lower := 234, upper := 293, witness := RowWitness.topPrime 233 },
  { lower := 294, upper := 353, witness := RowWitness.topPrime 293 },
  { lower := 354, upper := 413, witness := RowWitness.topPrime 353 },
  { lower := 414, upper := 469, witness := RowWitness.topPrime 409 },
  { lower := 470, upper := 527, witness := RowWitness.topPrime 467 },
  { lower := 528, upper := 583, witness := RowWitness.topPrime 523 },
  { lower := 584, upper := 637, witness := RowWitness.topPrime 577 },
  { lower := 638, upper := 691, witness := RowWitness.topPrime 631 },
  { lower := 692, upper := 751, witness := RowWitness.topPrime 691 },
  { lower := 752, upper := 811, witness := RowWitness.topPrime 751 },
  { lower := 812, upper := 871, witness := RowWitness.topPrime 811 },
  { lower := 872, upper := 923, witness := RowWitness.topPrime 863 },
  { lower := 924, upper := 979, witness := RowWitness.topPrime 919 },
  { lower := 980, upper := 1037, witness := RowWitness.topPrime 977 },
  { lower := 1038, upper := 1093, witness := RowWitness.topPrime 1033 },
  { lower := 1094, upper := 1153, witness := RowWitness.topPrime 1093 },
  { lower := 1154, upper := 1213, witness := RowWitness.topPrime 1153 },
  { lower := 1214, upper := 1273, witness := RowWitness.topPrime 1213 },
  { lower := 1274, upper := 1319, witness := RowWitness.topPrime 1259 },
  { lower := 1320, upper := 1379, witness := RowWitness.topPrime 1319 },
  { lower := 1380, upper := 1433, witness := RowWitness.topPrime 1373 },
  { lower := 1434, upper := 1493, witness := RowWitness.topPrime 1433 },
  { lower := 1494, upper := 1553, witness := RowWitness.topPrime 1493 },
  { lower := 1554, upper := 1613, witness := RowWitness.topPrime 1553 },
  { lower := 1614, upper := 1673, witness := RowWitness.topPrime 1613 },
  { lower := 1674, upper := 1729, witness := RowWitness.topPrime 1669 },
  { lower := 1730, upper := 1783, witness := RowWitness.topPrime 1723 },
  { lower := 1784, upper := 1843, witness := RowWitness.topPrime 1783 },
  { lower := 1844, upper := 1891, witness := RowWitness.topPrime 1831 },
  { lower := 1892, upper := 1949, witness := RowWitness.topPrime 1889 },
  { lower := 1950, upper := 2009, witness := RowWitness.topPrime 1949 },
  { lower := 2010, upper := 2063, witness := RowWitness.topPrime 2003 },
  { lower := 2064, upper := 2123, witness := RowWitness.topPrime 2063 },
  { lower := 2124, upper := 2173, witness := RowWitness.topPrime 2113 },
  { lower := 2174, upper := 2221, witness := RowWitness.topPrime 2161 },
  { lower := 2222, upper := 2281, witness := RowWitness.topPrime 2221 },
  { lower := 2282, upper := 2341, witness := RowWitness.topPrime 2281 },
  { lower := 2342, upper := 2401, witness := RowWitness.topPrime 2341 },
  { lower := 2402, upper := 2459, witness := RowWitness.topPrime 2399 },
  { lower := 2460, upper := 2519, witness := RowWitness.topPrime 2459 },
  { lower := 2520, upper := 2563, witness := RowWitness.topPrime 2503 },
  { lower := 2564, upper := 2617, witness := RowWitness.topPrime 2557 },
  { lower := 2618, upper := 2677, witness := RowWitness.topPrime 2617 },
  { lower := 2678, upper := 2737, witness := RowWitness.topPrime 2677 },
  { lower := 2738, upper := 2791, witness := RowWitness.topPrime 2731 },
  { lower := 2792, upper := 2851, witness := RowWitness.topPrime 2791 },
  { lower := 2852, upper := 2911, witness := RowWitness.topPrime 2851 },
  { lower := 2912, upper := 2969, witness := RowWitness.topPrime 2909 },
  { lower := 2970, upper := 3029, witness := RowWitness.topPrime 2969 },
  { lower := 3030, upper := 3083, witness := RowWitness.topPrime 3023 },
  { lower := 3084, upper := 3143, witness := RowWitness.topPrime 3083 },
  { lower := 3144, upper := 3197, witness := RowWitness.topPrime 3137 },
  { lower := 3198, upper := 3251, witness := RowWitness.topPrime 3191 },
  { lower := 3252, upper := 3311, witness := RowWitness.topPrime 3251 },
  { lower := 3312, upper := 3367, witness := RowWitness.topPrime 3307 },
  { lower := 3368, upper := 3421, witness := RowWitness.topPrime 3361 },
  { lower := 3422, upper := 3473, witness := RowWitness.topPrime 3413 },
  { lower := 3474, upper := 3529, witness := RowWitness.topPrime 3469 },
  { lower := 3530, upper := 3589, witness := RowWitness.topPrime 3529 },
  { lower := 3590, upper := 3643, witness := RowWitness.topPrime 3583 },
  { lower := 3644, upper := 3670, witness := RowWitness.topPrime 3643 },
  { lower := 3698, upper := 3757, witness := RowWitness.topPrime 3697 },
  { lower := 3758, upper := 3799, witness := RowWitness.topPrime 3739 },
  { lower := 3800, upper := 3817, witness := RowWitness.topPrime 3797 },
  { lower := 3844, upper := 3893, witness := RowWitness.topPrime 3833 },
  { lower := 3894, upper := 3947, witness := RowWitness.topPrime 3889 },
  { lower := 3993, upper := 4031, witness := RowWitness.topPrime 3989 },
  { lower := 4046, upper := 4053, witness := RowWitness.topPrime 4027 },
  { lower := 4056, upper := 4111, witness := RowWitness.topPrime 4051 },
  { lower := 4112, upper := 4171, witness := RowWitness.topPrime 4111 },
  { lower := 4172, upper := 4176, witness := RowWitness.topPrime 4159 },
  { lower := 4225, upper := 4279, witness := RowWitness.topPrime 4219 },
  { lower := 4280, upper := 4285, witness := RowWitness.topPrime 4273 },
  { lower := 4335, upper := 4387, witness := RowWitness.topPrime 4327 },
  { lower := 4388, upper := 4433, witness := RowWitness.topPrime 4373 },
  { lower := 4434, upper := 4454, witness := RowWitness.topPrime 4423 },
  { lower := 4459, upper := 4478, witness := RowWitness.topPrime 4457 },
  { lower := 4608, upper := 4663, witness := RowWitness.topPrime 4603 },
  { lower := 4664, upper := 4677, witness := RowWitness.topPrime 4663 },
  { lower := 4732, upper := 4753, witness := RowWitness.topPrime 4729 },
  { lower := 4761, upper := 4792, witness := RowWitness.topPrime 4759 },
  { lower := 4802, upper := 4861, witness := RowWitness.topPrime 4801 },
  { lower := 4862, upper := 4921, witness := RowWitness.topPrime 4861 },
  { lower := 4922, upper := 4924, witness := RowWitness.topPrime 4919 },
  { lower := 5043, upper := 5099, witness := RowWitness.topPrime 5039 },
  { lower := 5100, upper := 5114, witness := RowWitness.topPrime 5099 },
  { lower := 5120, upper := 5179, witness := RowWitness.topPrime 5119 },
  { lower := 5180, upper := 5180, witness := RowWitness.topPrime 5179 },
  { lower := 5202, upper := 5205, witness := RowWitness.topPrime 5197 },
  { lower := 5324, upper := 5383, witness := RowWitness.topPrime 5323 },
  { lower := 5384, upper := 5406, witness := RowWitness.topPrime 5381 },
  { lower := 5415, upper := 5436, witness := RowWitness.topPrime 5413 },
  { lower := 5488, upper := 5543, witness := RowWitness.topPrime 5483 },
  { lower := 5544, upper := 5551, witness := RowWitness.topPrime 5531 },
  { lower := 5589, upper := 5607, witness := RowWitness.topPrime 5581 },
  { lower := 5618, upper := 5651, witness := RowWitness.topPrime 5591 },
  { lower := 5652, upper := 5685, witness := RowWitness.topPrime 5651 },
  { lower := 5776, upper := 5809, witness := RowWitness.topPrime 5749 },
  { lower := 5810, upper := 5867, witness := RowWitness.topPrime 5807 },
  { lower := 5868, upper := 5927, witness := RowWitness.topPrime 5867 },
  { lower := 5928, upper := 5947, witness := RowWitness.topPrime 5927 },
  { lower := 6075, upper := 6129, witness := RowWitness.topPrime 6073 },
  { lower := 6144, upper := 6203, witness := RowWitness.topPrime 6143 },
  { lower := 6204, upper := 6204, witness := RowWitness.topPrime 6203 },
  { lower := 6348, upper := 6403, witness := RowWitness.topPrime 6343 },
  { lower := 6404, upper := 6418, witness := RowWitness.topPrime 6397 },
  { lower := 6517, upper := 6551, witness := RowWitness.topPrime 6491 },
  { lower := 6552, upper := 6558, witness := RowWitness.topPrime 6551 },
  { lower := 6561, upper := 6577, witness := RowWitness.topPrime 6553 },
  { lower := 6591, upper := 6621, witness := RowWitness.topPrime 6581 },
  { lower := 6627, upper := 6679, witness := RowWitness.topPrime 6619 },
  { lower := 6680, upper := 6715, witness := RowWitness.topPrime 6679 },
  { lower := 6727, upper := 6779, witness := RowWitness.topPrime 6719 },
  { lower := 6780, upper := 6787, witness := RowWitness.topPrime 6779 },
  { lower := 6845, upper := 6901, witness := RowWitness.topPrime 6841 },
  { lower := 6902, upper := 6959, witness := RowWitness.topPrime 6899 },
  { lower := 6960, upper := 6996, witness := RowWitness.topPrime 6959 },
  { lower := 7203, upper := 7253, witness := RowWitness.topPrime 7193 },
  { lower := 7254, upper := 7280, witness := RowWitness.topPrime 7253 },
  { lower := 7406, upper := 7453, witness := RowWitness.topPrime 7393 },
  { lower := 7454, upper := 7456, witness := RowWitness.topPrime 7451 },
  { lower := 7546, upper := 7560, witness := RowWitness.topPrime 7541 },
  { lower := 7569, upper := 7621, witness := RowWitness.topPrime 7561 },
  { lower := 7622, upper := 7629, witness := RowWitness.topPrime 7621 },
  { lower := 7688, upper := 7740, witness := RowWitness.topPrime 7687 },
  { lower := 7935, upper := 7993, witness := RowWitness.topPrime 7933 },
  { lower := 7994, upper := 8002, witness := RowWitness.topPrime 7993 },
  { lower := 8019, upper := 8046, witness := RowWitness.topPrime 8017 },
  { lower := 8214, upper := 8269, witness := RowWitness.topPrime 8209 },
  { lower := 8270, upper := 8274, witness := RowWitness.topPrime 8269 },
  { lower := 8410, upper := 8449, witness := RowWitness.topPrime 8389 },
  { lower := 8450, upper := 8487, witness := RowWitness.topPrime 8447 },
  { lower := 8664, upper := 8723, witness := RowWitness.topPrime 8663 },
  { lower := 8724, upper := 8724, witness := RowWitness.topPrime 8719 },
  { lower := 8748, upper := 8807, witness := RowWitness.topPrime 8747 },
  { lower := 8808, upper := 8810, witness := RowWitness.topPrime 8807 },
  { lower := 8836, upper := 8848, witness := RowWitness.topPrime 8831 },
  { lower := 9025, upper := 9053, witness := RowWitness.topPrime 9013 },
  { lower := 9245, upper := 9301, witness := RowWitness.topPrime 9241 },
  { lower := 9302, upper := 9305, witness := RowWitness.topPrime 9293 },
  { lower := 9375, upper := 9377, witness := RowWitness.topPrime 9371 },
  { lower := 9522, upper := 9537, witness := RowWitness.topPrime 9521 },
  { lower := 9604, upper := 9661, witness := RowWitness.topPrime 9601 },
  { lower := 9662, upper := 9664, witness := RowWitness.topPrime 9661 },
  { lower := 10051, upper := 10060, witness := RowWitness.topPrime 10039 },
  { lower := 10086, upper := 10139, witness := RowWitness.topPrime 10079 },
  { lower := 10140, upper := 10146, witness := RowWitness.topPrime 10139 },
  { lower := 10240, upper := 10266, witness := RowWitness.topPrime 10223 },
  { lower := 10580, upper := 10627, witness := RowWitness.topPrime 10567 },
  { lower := 10628, upper := 10640, witness := RowWitness.topPrime 10627 },
  { lower := 10648, upper := 10685, witness := RowWitness.topPrime 10639 },
  { lower := 10935, upper := 10969, witness := RowWitness.topPrime 10909 },
  { lower := 10970, upper := 11012, witness := RowWitness.topPrime 10957 },
  { lower := 11045, upper := 11045, witness := RowWitness.topPrime 11027 },
  { lower := 11094, upper := 11105, witness := RowWitness.topPrime 11093 },
  { lower := 11109, upper := 11153, witness := RowWitness.topPrime 11093 },
  { lower := 11154, upper := 11154, witness := RowWitness.topPrime 11149 },
  { lower := 11250, upper := 11303, witness := RowWitness.topPrime 11243 },
  { lower := 11304, upper := 11310, witness := RowWitness.topPrime 11299 },
  { lower := 11664, upper := 11698, witness := RowWitness.topPrime 11657 },
  { lower := 11774, upper := 11803, witness := RowWitness.topPrime 11743 },
  { lower := 11804, upper := 11834, witness := RowWitness.topPrime 11801 },
  { lower := 12005, upper := 12039, witness := RowWitness.topPrime 11987 },
  { lower := 12321, upper := 12348, witness := RowWitness.topPrime 12301 },
  { lower := 12500, upper := 12553, witness := RowWitness.topPrime 12497 },
  { lower := 13125, upper := 13181, witness := RowWitness.topPrime 13121 },
  { lower := 13182, upper := 13185, witness := RowWitness.topPrime 13177 },
  { lower := 13225, upper := 13242, witness := RowWitness.topPrime 13219 },
  { lower := 13254, upper := 13285, witness := RowWitness.topPrime 13249 },
  { lower := 13310, upper := 13369, witness := RowWitness.topPrime 13309 },
  { lower := 13370, upper := 13370, witness := RowWitness.topPrime 13367 },
  { lower := 13454, upper := 13511, witness := RowWitness.topPrime 13451 },
  { lower := 13512, upper := 13514, witness := RowWitness.topPrime 13499 },
  { lower := 13718, upper := 13771, witness := RowWitness.topPrime 13711 },
  { lower := 13772, upper := 13778, witness := RowWitness.topPrime 13763 },
  { lower := 14336, upper := 14357, witness := RowWitness.topPrime 14327 },
  { lower := 14375, upper := 14396, witness := RowWitness.topPrime 14369 },
  { lower := 14406, upper := 14461, witness := RowWitness.topPrime 14401 },
  { lower := 14462, upper := 14466, witness := RowWitness.topPrime 14461 },
  { lower := 14792, upper := 14799, witness := RowWitness.topPrime 14783 },
  { lower := 15138, upper := 15189, witness := RowWitness.topPrime 15137 },
  { lower := 15360, upper := 15369, witness := RowWitness.topPrime 15359 },
  { lower := 15376, upper := 15433, witness := RowWitness.topPrime 15373 },
  { lower := 15434, upper := 15436, witness := RowWitness.topPrime 15427 },
  { lower := 15979, upper := 16032, witness := RowWitness.topPrime 15973 },
  { lower := 16038, upper := 16039, witness := RowWitness.topPrime 16033 },
  { lower := 16384, upper := 16397, witness := RowWitness.topPrime 16381 },
  { lower := 16428, upper := 16444, witness := RowWitness.topPrime 16427 },
  { lower := 16810, upper := 16847, witness := RowWitness.topPrime 16787 },
  { lower := 16848, upper := 16880, witness := RowWitness.topPrime 16843 },
  { lower := 17303, upper := 17358, witness := RowWitness.topPrime 17299 },
  { lower := 17408, upper := 17461, witness := RowWitness.topPrime 17401 },
  { lower := 17462, upper := 17465, witness := RowWitness.topPrime 17449 },
  { lower := 17672, upper := 17721, witness := RowWitness.topPrime 17669 },
  { lower := 18490, upper := 18541, witness := RowWitness.topPrime 18481 },
  { lower := 18542, upper := 18551, witness := RowWitness.topPrime 18541 },
  { lower := 19208, upper := 19267, witness := RowWitness.topPrime 19207 },
  { lower := 19268, upper := 19268, witness := RowWitness.topPrime 19267 },
  { lower := 19663, upper := 19721, witness := RowWitness.topPrime 19661 },
  { lower := 19722, upper := 19723, witness := RowWitness.topPrime 19717 },
  { lower := 20181, upper := 20232, witness := RowWitness.topPrime 20177 },
  { lower := 20535, upper := 20540, witness := RowWitness.topPrime 20533 },
  { lower := 20577, upper := 20595, witness := RowWitness.topPrime 20563 },
  { lower := 21870, upper := 21923, witness := RowWitness.topPrime 21863 },
  { lower := 21924, upper := 21935, witness := RowWitness.topPrime 21911 },
  { lower := 22528, upper := 22532, witness := RowWitness.topPrime 22511 },
  { lower := 24010, upper := 24018, witness := RowWitness.topPrime 24007 },
  { lower := 24037, upper := 24089, witness := RowWitness.topPrime 24029 },
  { lower := 24090, upper := 24097, witness := RowWitness.topPrime 24083 },
  { lower := 24334, upper := 24359, witness := RowWitness.topPrime 24329 },
  { lower := 24367, upper := 24419, witness := RowWitness.topPrime 24359 },
  { lower := 24420, upper := 24427, witness := RowWitness.topPrime 24419 },
  { lower := 24576, upper := 24625, witness := RowWitness.topPrime 24571 },
  { lower := 25289, upper := 25321, witness := RowWitness.topPrime 25261 },
  { lower := 25322, upper := 25341, witness := RowWitness.topPrime 25321 },
  { lower := 26411, upper := 26424, witness := RowWitness.topPrime 26407 },
  { lower := 26624, upper := 26657, witness := RowWitness.topPrime 26597 },
  { lower := 26658, upper := 26680, witness := RowWitness.topPrime 26647 },
  { lower := 27436, upper := 27440, witness := RowWitness.topPrime 27431 },
  { lower := 28125, upper := 28150, witness := RowWitness.topPrime 28123 },
  { lower := 28577, upper := 28621, witness := RowWitness.topPrime 28573 },
  { lower := 28717, upper := 28732, witness := RowWitness.topPrime 28711 },
  { lower := 28749, upper := 28777, witness := RowWitness.topPrime 28729 },
  { lower := 30758, upper := 30780, witness := RowWitness.topPrime 30757 },
  { lower := 30926, upper := 30959, witness := RowWitness.topPrime 30911 },
  { lower := 31250, upper := 31273, witness := RowWitness.topPrime 31249 },
  { lower := 32805, upper := 32828, witness := RowWitness.topPrime 32803 },
  { lower := 33620, upper := 33674, witness := RowWitness.topPrime 33619 },
  { lower := 34391, upper := 34435, witness := RowWitness.topPrime 34381 },
  { lower := 34816, upper := 34867, witness := RowWitness.topPrime 34807 },
  { lower := 34868, upper := 34870, witness := RowWitness.topPrime 34849 },
  { lower := 35152, upper := 35191, witness := RowWitness.topPrime 35149 },
  { lower := 36517, upper := 36557, witness := RowWitness.topPrime 36497 },
  { lower := 36558, upper := 36561, witness := RowWitness.topPrime 36551 },
  { lower := 37553, upper := 37560, witness := RowWitness.topPrime 37549 },
  { lower := 39326, upper := 39364, witness := RowWitness.topPrime 39323 },
  { lower := 39366, upper := 39386, witness := RowWitness.topPrime 39359 },
  { lower := 41772, upper := 41803, witness := RowWitness.topPrime 41771 },
  { lower := 43750, upper := 43781, witness := RowWitness.topPrime 43721 },
  { lower := 43782, upper := 43800, witness := RowWitness.topPrime 43781 },
  { lower := 43940, upper := 43983, witness := RowWitness.topPrime 43933 },
  { lower := 44217, upper := 44240, witness := RowWitness.topPrime 44207 },
  { lower := 48020, upper := 48073, witness := RowWitness.topPrime 48017 },
  { lower := 48778, upper := 48794, witness := RowWitness.topPrime 48767 },
  { lower := 49152, upper := 49190, witness := RowWitness.topPrime 49139 },
  { lower := 73205, upper := 73227, witness := RowWitness.topPrime 73189 },
  { lower := 73728, upper := 73755, witness := RowWitness.topPrime 73727 },
  { lower := 327701, upper := 327740, witness := RowWitness.topPrime 327689 }
]

def row061_layers : List CoverLayer := [
  { lower := 3660, upper := 7320, M := 28 },
  { lower := 7320, upper := 14640, M := 25 },
  { lower := 14640, upper := 29280, M := 22 },
  { lower := 29280, upper := 58560, M := 20 },
  { lower := 58560, upper := 117120, M := 17 },
  { lower := 117120, upper := 234240, M := 15 },
  { lower := 234240, upper := 468480, M := 13 },
  { lower := 468480, upper := 936960, M := 12 },
  { lower := 936960, upper := 1873920, M := 11 },
  { lower := 1873920, upper := 3747840, M := 9 },
  { lower := 3747840, upper := 7495680, M := 8 },
  { lower := 7495680, upper := 14991360, M := 7 },
  { lower := 14991360, upper := 29982720, M := 6 },
  { lower := 29982720, upper := 59965440, M := 6 },
  { lower := 59965440, upper := 119930880, M := 5 },
  { lower := 119930880, upper := 239861760, M := 5 },
  { lower := 239861760, upper := 479723520, M := 4 },
  { lower := 479723520, upper := 959447040, M := 4 },
  { lower := 959447040, upper := 1918894080, M := 3 },
  { lower := 1918894080, upper := 3837788160, M := 3 },
  { lower := 3837788160, upper := 7675576320, M := 3 },
  { lower := 7675576320, upper := 15351152640, M := 2 },
  { lower := 15351152640, upper := 30702305280, M := 2 },
  { lower := 30702305280, upper := 61404610560, M := 2 },
  { lower := 61404610560, upper := 122809221120, M := 2 },
  { lower := 122809221120, upper := 245618442240, M := 2 },
  { lower := 245618442240, upper := 491236884480, M := 1 },
  { lower := 491236884480, upper := 982473768960, M := 1 },
  { lower := 982473768960, upper := 1000000000000, M := 1 }
]

def row061 : FiniteCoverRow := {
  height := row061_height,
  goods := row061_goods,
  layers := row061_layers
}


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row061

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row061_good000_checked :
    goodSegmentCheck 61 20 42
      { lower := 124, upper := 173, witness := RowWitness.topPrime 113 } = true := by
  exact good_top_prime_checked (i := 61) (r := 20) (s := 42) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row061_good001_checked :
    goodSegmentCheck 61 20 42
      { lower := 174, upper := 233, witness := RowWitness.topPrime 173 } = true := by
  exact good_top_prime_checked (i := 61) (r := 20) (s := 42) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row061_good002_checked :
    goodSegmentCheck 61 20 42
      { lower := 234, upper := 293, witness := RowWitness.topPrime 233 } = true := by
  exact good_top_prime_checked (i := 61) (r := 20) (s := 42) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row061_good003_checked :
    goodSegmentCheck 61 20 42
      { lower := 294, upper := 353, witness := RowWitness.topPrime 293 } = true := by
  exact good_top_prime_checked (i := 61) (r := 20) (s := 42) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row061_good004_checked :
    goodSegmentCheck 61 20 42
      { lower := 354, upper := 413, witness := RowWitness.topPrime 353 } = true := by
  exact good_top_prime_checked (i := 61) (r := 20) (s := 42) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row061_good005_checked :
    goodSegmentCheck 61 20 42
      { lower := 414, upper := 469, witness := RowWitness.topPrime 409 } = true := by
  exact good_top_prime_checked (i := 61) (r := 20) (s := 42) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row061_good006_checked :
    goodSegmentCheck 61 20 42
      { lower := 470, upper := 527, witness := RowWitness.topPrime 467 } = true := by
  exact good_top_prime_checked (i := 61) (r := 20) (s := 42) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row061_good007_checked :
    goodSegmentCheck 61 20 42
      { lower := 528, upper := 583, witness := RowWitness.topPrime 523 } = true := by
  exact good_top_prime_checked (i := 61) (r := 20) (s := 42) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row061_good008_checked :
    goodSegmentCheck 61 20 42
      { lower := 584, upper := 637, witness := RowWitness.topPrime 577 } = true := by
  exact good_top_prime_checked (i := 61) (r := 20) (s := 42) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row061_good009_checked :
    goodSegmentCheck 61 20 42
      { lower := 638, upper := 691, witness := RowWitness.topPrime 631 } = true := by
  exact good_top_prime_checked (i := 61) (r := 20) (s := 42) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row061_good010_checked :
    goodSegmentCheck 61 20 42
      { lower := 692, upper := 751, witness := RowWitness.topPrime 691 } = true := by
  exact good_top_prime_checked (i := 61) (r := 20) (s := 42) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row061_good011_checked :
    goodSegmentCheck 61 20 42
      { lower := 752, upper := 811, witness := RowWitness.topPrime 751 } = true := by
  exact good_top_prime_checked (i := 61) (r := 20) (s := 42) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row061_good012_checked :
    goodSegmentCheck 61 20 42
      { lower := 812, upper := 871, witness := RowWitness.topPrime 811 } = true := by
  exact good_top_prime_checked (i := 61) (r := 20) (s := 42) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row061_good013_checked :
    goodSegmentCheck 61 20 42
      { lower := 872, upper := 923, witness := RowWitness.topPrime 863 } = true := by
  exact good_top_prime_checked (i := 61) (r := 20) (s := 42) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row061_good014_checked :
    goodSegmentCheck 61 20 42
      { lower := 924, upper := 979, witness := RowWitness.topPrime 919 } = true := by
  exact good_top_prime_checked (i := 61) (r := 20) (s := 42) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row061_good015_checked :
    goodSegmentCheck 61 20 42
      { lower := 980, upper := 1037, witness := RowWitness.topPrime 977 } = true := by
  exact good_top_prime_checked (i := 61) (r := 20) (s := 42) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row061_good000_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row061_good001_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row061_good002_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row061_good003_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row061_good004_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row061_good005_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row061_good006_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row061_good007_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row061_good008_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row061_good009_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row061_good010_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row061_good011_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row061_good012_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row061_good013_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row061_good014_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row061_good015_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row061_good016_checked :
    goodSegmentCheck 61 20 42
      { lower := 1038, upper := 1093, witness := RowWitness.topPrime 1033 } = true := by
  exact good_top_prime_checked (i := 61) (r := 20) (s := 42) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row061_good017_checked :
    goodSegmentCheck 61 20 42
      { lower := 1094, upper := 1153, witness := RowWitness.topPrime 1093 } = true := by
  exact good_top_prime_checked (i := 61) (r := 20) (s := 42) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row061_good018_checked :
    goodSegmentCheck 61 20 42
      { lower := 1154, upper := 1213, witness := RowWitness.topPrime 1153 } = true := by
  exact good_top_prime_checked (i := 61) (r := 20) (s := 42) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row061_good019_checked :
    goodSegmentCheck 61 20 42
      { lower := 1214, upper := 1273, witness := RowWitness.topPrime 1213 } = true := by
  exact good_top_prime_checked (i := 61) (r := 20) (s := 42) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row061_good020_checked :
    goodSegmentCheck 61 20 42
      { lower := 1274, upper := 1319, witness := RowWitness.topPrime 1259 } = true := by
  exact good_top_prime_checked (i := 61) (r := 20) (s := 42) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row061_good021_checked :
    goodSegmentCheck 61 20 42
      { lower := 1320, upper := 1379, witness := RowWitness.topPrime 1319 } = true := by
  exact good_top_prime_checked (i := 61) (r := 20) (s := 42) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row061_good022_checked :
    goodSegmentCheck 61 20 42
      { lower := 1380, upper := 1433, witness := RowWitness.topPrime 1373 } = true := by
  exact good_top_prime_checked (i := 61) (r := 20) (s := 42) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row061_good023_checked :
    goodSegmentCheck 61 20 42
      { lower := 1434, upper := 1493, witness := RowWitness.topPrime 1433 } = true := by
  exact good_top_prime_checked (i := 61) (r := 20) (s := 42) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row061_good024_checked :
    goodSegmentCheck 61 20 42
      { lower := 1494, upper := 1553, witness := RowWitness.topPrime 1493 } = true := by
  exact good_top_prime_checked (i := 61) (r := 20) (s := 42) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row061_good025_checked :
    goodSegmentCheck 61 20 42
      { lower := 1554, upper := 1613, witness := RowWitness.topPrime 1553 } = true := by
  exact good_top_prime_checked (i := 61) (r := 20) (s := 42) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row061_good026_checked :
    goodSegmentCheck 61 20 42
      { lower := 1614, upper := 1673, witness := RowWitness.topPrime 1613 } = true := by
  exact good_top_prime_checked (i := 61) (r := 20) (s := 42) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row061_good027_checked :
    goodSegmentCheck 61 20 42
      { lower := 1674, upper := 1729, witness := RowWitness.topPrime 1669 } = true := by
  exact good_top_prime_checked (i := 61) (r := 20) (s := 42) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row061_good028_checked :
    goodSegmentCheck 61 20 42
      { lower := 1730, upper := 1783, witness := RowWitness.topPrime 1723 } = true := by
  exact good_top_prime_checked (i := 61) (r := 20) (s := 42) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row061_good029_checked :
    goodSegmentCheck 61 20 42
      { lower := 1784, upper := 1843, witness := RowWitness.topPrime 1783 } = true := by
  exact good_top_prime_checked (i := 61) (r := 20) (s := 42) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row061_good030_checked :
    goodSegmentCheck 61 20 42
      { lower := 1844, upper := 1891, witness := RowWitness.topPrime 1831 } = true := by
  exact good_top_prime_checked (i := 61) (r := 20) (s := 42) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row061_good031_checked :
    goodSegmentCheck 61 20 42
      { lower := 1892, upper := 1949, witness := RowWitness.topPrime 1889 } = true := by
  exact good_top_prime_checked (i := 61) (r := 20) (s := 42) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row061_good016_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row061_good017_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row061_good018_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row061_good019_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row061_good020_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row061_good021_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row061_good022_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row061_good023_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row061_good024_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row061_good025_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row061_good026_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row061_good027_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row061_good028_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row061_good029_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row061_good030_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row061_good031_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row061_good032_checked :
    goodSegmentCheck 61 20 42
      { lower := 1950, upper := 2009, witness := RowWitness.topPrime 1949 } = true := by
  exact good_top_prime_checked (i := 61) (r := 20) (s := 42) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row061_good033_checked :
    goodSegmentCheck 61 20 42
      { lower := 2010, upper := 2063, witness := RowWitness.topPrime 2003 } = true := by
  exact good_top_prime_checked (i := 61) (r := 20) (s := 42) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row061_good034_checked :
    goodSegmentCheck 61 20 42
      { lower := 2064, upper := 2123, witness := RowWitness.topPrime 2063 } = true := by
  exact good_top_prime_checked (i := 61) (r := 20) (s := 42) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row061_good035_checked :
    goodSegmentCheck 61 20 42
      { lower := 2124, upper := 2173, witness := RowWitness.topPrime 2113 } = true := by
  exact good_top_prime_checked (i := 61) (r := 20) (s := 42) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row061_good036_checked :
    goodSegmentCheck 61 20 42
      { lower := 2174, upper := 2221, witness := RowWitness.topPrime 2161 } = true := by
  exact good_top_prime_checked (i := 61) (r := 20) (s := 42) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row061_good037_checked :
    goodSegmentCheck 61 20 42
      { lower := 2222, upper := 2281, witness := RowWitness.topPrime 2221 } = true := by
  exact good_top_prime_checked (i := 61) (r := 20) (s := 42) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row061_good038_checked :
    goodSegmentCheck 61 20 42
      { lower := 2282, upper := 2341, witness := RowWitness.topPrime 2281 } = true := by
  exact good_top_prime_checked (i := 61) (r := 20) (s := 42) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row061_good039_checked :
    goodSegmentCheck 61 20 42
      { lower := 2342, upper := 2401, witness := RowWitness.topPrime 2341 } = true := by
  exact good_top_prime_checked (i := 61) (r := 20) (s := 42) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row061_good040_checked :
    goodSegmentCheck 61 20 42
      { lower := 2402, upper := 2459, witness := RowWitness.topPrime 2399 } = true := by
  exact good_top_prime_checked (i := 61) (r := 20) (s := 42) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row061_good041_checked :
    goodSegmentCheck 61 20 42
      { lower := 2460, upper := 2519, witness := RowWitness.topPrime 2459 } = true := by
  exact good_top_prime_checked (i := 61) (r := 20) (s := 42) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row061_good042_checked :
    goodSegmentCheck 61 20 42
      { lower := 2520, upper := 2563, witness := RowWitness.topPrime 2503 } = true := by
  exact good_top_prime_checked (i := 61) (r := 20) (s := 42) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row061_good043_checked :
    goodSegmentCheck 61 20 42
      { lower := 2564, upper := 2617, witness := RowWitness.topPrime 2557 } = true := by
  exact good_top_prime_checked (i := 61) (r := 20) (s := 42) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row061_good044_checked :
    goodSegmentCheck 61 20 42
      { lower := 2618, upper := 2677, witness := RowWitness.topPrime 2617 } = true := by
  exact good_top_prime_checked (i := 61) (r := 20) (s := 42) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row061_good045_checked :
    goodSegmentCheck 61 20 42
      { lower := 2678, upper := 2737, witness := RowWitness.topPrime 2677 } = true := by
  exact good_top_prime_checked (i := 61) (r := 20) (s := 42) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row061_good046_checked :
    goodSegmentCheck 61 20 42
      { lower := 2738, upper := 2791, witness := RowWitness.topPrime 2731 } = true := by
  exact good_top_prime_checked (i := 61) (r := 20) (s := 42) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row061_good047_checked :
    goodSegmentCheck 61 20 42
      { lower := 2792, upper := 2851, witness := RowWitness.topPrime 2791 } = true := by
  exact good_top_prime_checked (i := 61) (r := 20) (s := 42) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row061_good032_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row061_good033_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row061_good034_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row061_good035_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row061_good036_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row061_good037_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row061_good038_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row061_good039_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row061_good040_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row061_good041_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row061_good042_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row061_good043_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row061_good044_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row061_good045_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row061_good046_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row061_good047_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row061_good048_checked :
    goodSegmentCheck 61 20 42
      { lower := 2852, upper := 2911, witness := RowWitness.topPrime 2851 } = true := by
  exact good_top_prime_checked (i := 61) (r := 20) (s := 42) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row061_good049_checked :
    goodSegmentCheck 61 20 42
      { lower := 2912, upper := 2969, witness := RowWitness.topPrime 2909 } = true := by
  exact good_top_prime_checked (i := 61) (r := 20) (s := 42) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row061_good050_checked :
    goodSegmentCheck 61 20 42
      { lower := 2970, upper := 3029, witness := RowWitness.topPrime 2969 } = true := by
  exact good_top_prime_checked (i := 61) (r := 20) (s := 42) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row061_good051_checked :
    goodSegmentCheck 61 20 42
      { lower := 3030, upper := 3083, witness := RowWitness.topPrime 3023 } = true := by
  exact good_top_prime_checked (i := 61) (r := 20) (s := 42) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row061_good052_checked :
    goodSegmentCheck 61 20 42
      { lower := 3084, upper := 3143, witness := RowWitness.topPrime 3083 } = true := by
  exact good_top_prime_checked (i := 61) (r := 20) (s := 42) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row061_good053_checked :
    goodSegmentCheck 61 20 42
      { lower := 3144, upper := 3197, witness := RowWitness.topPrime 3137 } = true := by
  exact good_top_prime_checked (i := 61) (r := 20) (s := 42) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row061_good054_checked :
    goodSegmentCheck 61 20 42
      { lower := 3198, upper := 3251, witness := RowWitness.topPrime 3191 } = true := by
  exact good_top_prime_checked (i := 61) (r := 20) (s := 42) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row061_good055_checked :
    goodSegmentCheck 61 20 42
      { lower := 3252, upper := 3311, witness := RowWitness.topPrime 3251 } = true := by
  exact good_top_prime_checked (i := 61) (r := 20) (s := 42) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row061_good056_checked :
    goodSegmentCheck 61 20 42
      { lower := 3312, upper := 3367, witness := RowWitness.topPrime 3307 } = true := by
  exact good_top_prime_checked (i := 61) (r := 20) (s := 42) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row061_good057_checked :
    goodSegmentCheck 61 20 42
      { lower := 3368, upper := 3421, witness := RowWitness.topPrime 3361 } = true := by
  exact good_top_prime_checked (i := 61) (r := 20) (s := 42) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row061_good058_checked :
    goodSegmentCheck 61 20 42
      { lower := 3422, upper := 3473, witness := RowWitness.topPrime 3413 } = true := by
  exact good_top_prime_checked (i := 61) (r := 20) (s := 42) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row061_good059_checked :
    goodSegmentCheck 61 20 42
      { lower := 3474, upper := 3529, witness := RowWitness.topPrime 3469 } = true := by
  exact good_top_prime_checked (i := 61) (r := 20) (s := 42) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row061_good060_checked :
    goodSegmentCheck 61 20 42
      { lower := 3530, upper := 3589, witness := RowWitness.topPrime 3529 } = true := by
  exact good_top_prime_checked (i := 61) (r := 20) (s := 42) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row061_good061_checked :
    goodSegmentCheck 61 20 42
      { lower := 3590, upper := 3643, witness := RowWitness.topPrime 3583 } = true := by
  exact good_top_prime_checked (i := 61) (r := 20) (s := 42) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row061_good062_checked :
    goodSegmentCheck 61 20 42
      { lower := 3644, upper := 3670, witness := RowWitness.topPrime 3643 } = true := by
  exact good_top_prime_checked (i := 61) (r := 20) (s := 42) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row061_good063_checked :
    goodSegmentCheck 61 20 42
      { lower := 3698, upper := 3757, witness := RowWitness.topPrime 3697 } = true := by
  exact good_top_prime_checked (i := 61) (r := 20) (s := 42) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row061_good048_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row061_good049_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row061_good050_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row061_good051_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row061_good052_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row061_good053_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row061_good054_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row061_good055_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row061_good056_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row061_good057_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row061_good058_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row061_good059_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row061_good060_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row061_good061_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row061_good062_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row061_good063_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row061_good064_checked :
    goodSegmentCheck 61 20 42
      { lower := 3758, upper := 3799, witness := RowWitness.topPrime 3739 } = true := by
  exact good_top_prime_checked (i := 61) (r := 20) (s := 42) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row061_good065_checked :
    goodSegmentCheck 61 20 42
      { lower := 3800, upper := 3817, witness := RowWitness.topPrime 3797 } = true := by
  exact good_top_prime_checked (i := 61) (r := 20) (s := 42) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row061_good066_checked :
    goodSegmentCheck 61 20 42
      { lower := 3844, upper := 3893, witness := RowWitness.topPrime 3833 } = true := by
  exact good_top_prime_checked (i := 61) (r := 20) (s := 42) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row061_good067_checked :
    goodSegmentCheck 61 20 42
      { lower := 3894, upper := 3947, witness := RowWitness.topPrime 3889 } = true := by
  exact good_top_prime_checked (i := 61) (r := 20) (s := 42) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row061_good068_checked :
    goodSegmentCheck 61 20 42
      { lower := 3993, upper := 4031, witness := RowWitness.topPrime 3989 } = true := by
  exact good_top_prime_checked (i := 61) (r := 20) (s := 42) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row061_good069_checked :
    goodSegmentCheck 61 20 42
      { lower := 4046, upper := 4053, witness := RowWitness.topPrime 4027 } = true := by
  exact good_top_prime_checked (i := 61) (r := 20) (s := 42) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row061_good070_checked :
    goodSegmentCheck 61 20 42
      { lower := 4056, upper := 4111, witness := RowWitness.topPrime 4051 } = true := by
  exact good_top_prime_checked (i := 61) (r := 20) (s := 42) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row061_good071_checked :
    goodSegmentCheck 61 20 42
      { lower := 4112, upper := 4171, witness := RowWitness.topPrime 4111 } = true := by
  exact good_top_prime_checked (i := 61) (r := 20) (s := 42) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row061_good072_checked :
    goodSegmentCheck 61 20 42
      { lower := 4172, upper := 4176, witness := RowWitness.topPrime 4159 } = true := by
  exact good_top_prime_checked (i := 61) (r := 20) (s := 42) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row061_good073_checked :
    goodSegmentCheck 61 20 42
      { lower := 4225, upper := 4279, witness := RowWitness.topPrime 4219 } = true := by
  exact good_top_prime_checked (i := 61) (r := 20) (s := 42) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row061_good074_checked :
    goodSegmentCheck 61 20 42
      { lower := 4280, upper := 4285, witness := RowWitness.topPrime 4273 } = true := by
  exact good_top_prime_checked (i := 61) (r := 20) (s := 42) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row061_good075_checked :
    goodSegmentCheck 61 20 42
      { lower := 4335, upper := 4387, witness := RowWitness.topPrime 4327 } = true := by
  exact good_top_prime_checked (i := 61) (r := 20) (s := 42) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row061_good076_checked :
    goodSegmentCheck 61 20 42
      { lower := 4388, upper := 4433, witness := RowWitness.topPrime 4373 } = true := by
  exact good_top_prime_checked (i := 61) (r := 20) (s := 42) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row061_good077_checked :
    goodSegmentCheck 61 20 42
      { lower := 4434, upper := 4454, witness := RowWitness.topPrime 4423 } = true := by
  exact good_top_prime_checked (i := 61) (r := 20) (s := 42) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row061_good078_checked :
    goodSegmentCheck 61 20 42
      { lower := 4459, upper := 4478, witness := RowWitness.topPrime 4457 } = true := by
  exact good_top_prime_checked (i := 61) (r := 20) (s := 42) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row061_good079_checked :
    goodSegmentCheck 61 20 42
      { lower := 4608, upper := 4663, witness := RowWitness.topPrime 4603 } = true := by
  exact good_top_prime_checked (i := 61) (r := 20) (s := 42) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row061_good064_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row061_good065_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row061_good066_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row061_good067_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row061_good068_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row061_good069_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row061_good070_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row061_good071_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row061_good072_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row061_good073_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row061_good074_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row061_good075_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row061_good076_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row061_good077_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row061_good078_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row061_good079_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row061_good080_checked :
    goodSegmentCheck 61 20 42
      { lower := 4664, upper := 4677, witness := RowWitness.topPrime 4663 } = true := by
  exact good_top_prime_checked (i := 61) (r := 20) (s := 42) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row061_good081_checked :
    goodSegmentCheck 61 20 42
      { lower := 4732, upper := 4753, witness := RowWitness.topPrime 4729 } = true := by
  exact good_top_prime_checked (i := 61) (r := 20) (s := 42) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row061_good082_checked :
    goodSegmentCheck 61 20 42
      { lower := 4761, upper := 4792, witness := RowWitness.topPrime 4759 } = true := by
  exact good_top_prime_checked (i := 61) (r := 20) (s := 42) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row061_good083_checked :
    goodSegmentCheck 61 20 42
      { lower := 4802, upper := 4861, witness := RowWitness.topPrime 4801 } = true := by
  exact good_top_prime_checked (i := 61) (r := 20) (s := 42) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row061_good084_checked :
    goodSegmentCheck 61 20 42
      { lower := 4862, upper := 4921, witness := RowWitness.topPrime 4861 } = true := by
  exact good_top_prime_checked (i := 61) (r := 20) (s := 42) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row061_good085_checked :
    goodSegmentCheck 61 20 42
      { lower := 4922, upper := 4924, witness := RowWitness.topPrime 4919 } = true := by
  exact good_top_prime_checked (i := 61) (r := 20) (s := 42) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row061_good086_checked :
    goodSegmentCheck 61 20 42
      { lower := 5043, upper := 5099, witness := RowWitness.topPrime 5039 } = true := by
  exact good_top_prime_checked (i := 61) (r := 20) (s := 42) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row061_good087_checked :
    goodSegmentCheck 61 20 42
      { lower := 5100, upper := 5114, witness := RowWitness.topPrime 5099 } = true := by
  exact good_top_prime_checked (i := 61) (r := 20) (s := 42) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row061_good088_checked :
    goodSegmentCheck 61 20 42
      { lower := 5120, upper := 5179, witness := RowWitness.topPrime 5119 } = true := by
  exact good_top_prime_checked (i := 61) (r := 20) (s := 42) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row061_good089_checked :
    goodSegmentCheck 61 20 42
      { lower := 5180, upper := 5180, witness := RowWitness.topPrime 5179 } = true := by
  exact good_top_prime_checked (i := 61) (r := 20) (s := 42) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row061_good090_checked :
    goodSegmentCheck 61 20 42
      { lower := 5202, upper := 5205, witness := RowWitness.topPrime 5197 } = true := by
  exact good_top_prime_checked (i := 61) (r := 20) (s := 42) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row061_good091_checked :
    goodSegmentCheck 61 20 42
      { lower := 5324, upper := 5383, witness := RowWitness.topPrime 5323 } = true := by
  exact good_top_prime_checked (i := 61) (r := 20) (s := 42) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row061_good092_checked :
    goodSegmentCheck 61 20 42
      { lower := 5384, upper := 5406, witness := RowWitness.topPrime 5381 } = true := by
  exact good_top_prime_checked (i := 61) (r := 20) (s := 42) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row061_good093_checked :
    goodSegmentCheck 61 20 42
      { lower := 5415, upper := 5436, witness := RowWitness.topPrime 5413 } = true := by
  exact good_top_prime_checked (i := 61) (r := 20) (s := 42) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row061_good094_checked :
    goodSegmentCheck 61 20 42
      { lower := 5488, upper := 5543, witness := RowWitness.topPrime 5483 } = true := by
  exact good_top_prime_checked (i := 61) (r := 20) (s := 42) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row061_good095_checked :
    goodSegmentCheck 61 20 42
      { lower := 5544, upper := 5551, witness := RowWitness.topPrime 5531 } = true := by
  exact good_top_prime_checked (i := 61) (r := 20) (s := 42) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row061_good080_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row061_good081_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row061_good082_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row061_good083_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row061_good084_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row061_good085_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row061_good086_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row061_good087_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row061_good088_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row061_good089_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row061_good090_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row061_good091_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row061_good092_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row061_good093_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row061_good094_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row061_good095_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row061_good096_checked :
    goodSegmentCheck 61 20 42
      { lower := 5589, upper := 5607, witness := RowWitness.topPrime 5581 } = true := by
  exact good_top_prime_checked (i := 61) (r := 20) (s := 42) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row061_good097_checked :
    goodSegmentCheck 61 20 42
      { lower := 5618, upper := 5651, witness := RowWitness.topPrime 5591 } = true := by
  exact good_top_prime_checked (i := 61) (r := 20) (s := 42) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row061_good098_checked :
    goodSegmentCheck 61 20 42
      { lower := 5652, upper := 5685, witness := RowWitness.topPrime 5651 } = true := by
  exact good_top_prime_checked (i := 61) (r := 20) (s := 42) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row061_good099_checked :
    goodSegmentCheck 61 20 42
      { lower := 5776, upper := 5809, witness := RowWitness.topPrime 5749 } = true := by
  exact good_top_prime_checked (i := 61) (r := 20) (s := 42) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row061_good100_checked :
    goodSegmentCheck 61 20 42
      { lower := 5810, upper := 5867, witness := RowWitness.topPrime 5807 } = true := by
  exact good_top_prime_checked (i := 61) (r := 20) (s := 42) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row061_good101_checked :
    goodSegmentCheck 61 20 42
      { lower := 5868, upper := 5927, witness := RowWitness.topPrime 5867 } = true := by
  exact good_top_prime_checked (i := 61) (r := 20) (s := 42) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row061_good102_checked :
    goodSegmentCheck 61 20 42
      { lower := 5928, upper := 5947, witness := RowWitness.topPrime 5927 } = true := by
  exact good_top_prime_checked (i := 61) (r := 20) (s := 42) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row061_good103_checked :
    goodSegmentCheck 61 20 42
      { lower := 6075, upper := 6129, witness := RowWitness.topPrime 6073 } = true := by
  exact good_top_prime_checked (i := 61) (r := 20) (s := 42) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row061_good104_checked :
    goodSegmentCheck 61 20 42
      { lower := 6144, upper := 6203, witness := RowWitness.topPrime 6143 } = true := by
  exact good_top_prime_checked (i := 61) (r := 20) (s := 42) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row061_good105_checked :
    goodSegmentCheck 61 20 42
      { lower := 6204, upper := 6204, witness := RowWitness.topPrime 6203 } = true := by
  exact good_top_prime_checked (i := 61) (r := 20) (s := 42) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row061_good106_checked :
    goodSegmentCheck 61 20 42
      { lower := 6348, upper := 6403, witness := RowWitness.topPrime 6343 } = true := by
  exact good_top_prime_checked (i := 61) (r := 20) (s := 42) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row061_good107_checked :
    goodSegmentCheck 61 20 42
      { lower := 6404, upper := 6418, witness := RowWitness.topPrime 6397 } = true := by
  exact good_top_prime_checked (i := 61) (r := 20) (s := 42) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row061_good108_checked :
    goodSegmentCheck 61 20 42
      { lower := 6517, upper := 6551, witness := RowWitness.topPrime 6491 } = true := by
  exact good_top_prime_checked (i := 61) (r := 20) (s := 42) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row061_good109_checked :
    goodSegmentCheck 61 20 42
      { lower := 6552, upper := 6558, witness := RowWitness.topPrime 6551 } = true := by
  exact good_top_prime_checked (i := 61) (r := 20) (s := 42) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row061_good110_checked :
    goodSegmentCheck 61 20 42
      { lower := 6561, upper := 6577, witness := RowWitness.topPrime 6553 } = true := by
  exact good_top_prime_checked (i := 61) (r := 20) (s := 42) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row061_good111_checked :
    goodSegmentCheck 61 20 42
      { lower := 6591, upper := 6621, witness := RowWitness.topPrime 6581 } = true := by
  exact good_top_prime_checked (i := 61) (r := 20) (s := 42) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row061_good096_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row061_good097_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row061_good098_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row061_good099_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row061_good100_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row061_good101_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row061_good102_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row061_good103_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row061_good104_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row061_good105_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row061_good106_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row061_good107_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row061_good108_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row061_good109_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row061_good110_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row061_good111_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row061_good112_checked :
    goodSegmentCheck 61 20 42
      { lower := 6627, upper := 6679, witness := RowWitness.topPrime 6619 } = true := by
  exact good_top_prime_checked (i := 61) (r := 20) (s := 42) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row061_good113_checked :
    goodSegmentCheck 61 20 42
      { lower := 6680, upper := 6715, witness := RowWitness.topPrime 6679 } = true := by
  exact good_top_prime_checked (i := 61) (r := 20) (s := 42) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row061_good114_checked :
    goodSegmentCheck 61 20 42
      { lower := 6727, upper := 6779, witness := RowWitness.topPrime 6719 } = true := by
  exact good_top_prime_checked (i := 61) (r := 20) (s := 42) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row061_good115_checked :
    goodSegmentCheck 61 20 42
      { lower := 6780, upper := 6787, witness := RowWitness.topPrime 6779 } = true := by
  exact good_top_prime_checked (i := 61) (r := 20) (s := 42) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row061_good116_checked :
    goodSegmentCheck 61 20 42
      { lower := 6845, upper := 6901, witness := RowWitness.topPrime 6841 } = true := by
  exact good_top_prime_checked (i := 61) (r := 20) (s := 42) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row061_good117_checked :
    goodSegmentCheck 61 20 42
      { lower := 6902, upper := 6959, witness := RowWitness.topPrime 6899 } = true := by
  exact good_top_prime_checked (i := 61) (r := 20) (s := 42) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row061_good118_checked :
    goodSegmentCheck 61 20 42
      { lower := 6960, upper := 6996, witness := RowWitness.topPrime 6959 } = true := by
  exact good_top_prime_checked (i := 61) (r := 20) (s := 42) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row061_good119_checked :
    goodSegmentCheck 61 20 42
      { lower := 7203, upper := 7253, witness := RowWitness.topPrime 7193 } = true := by
  exact good_top_prime_checked (i := 61) (r := 20) (s := 42) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row061_good120_checked :
    goodSegmentCheck 61 20 42
      { lower := 7254, upper := 7280, witness := RowWitness.topPrime 7253 } = true := by
  exact good_top_prime_checked (i := 61) (r := 20) (s := 42) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row061_good121_checked :
    goodSegmentCheck 61 20 42
      { lower := 7406, upper := 7453, witness := RowWitness.topPrime 7393 } = true := by
  exact good_top_prime_checked (i := 61) (r := 20) (s := 42) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row061_good122_checked :
    goodSegmentCheck 61 20 42
      { lower := 7454, upper := 7456, witness := RowWitness.topPrime 7451 } = true := by
  exact good_top_prime_checked (i := 61) (r := 20) (s := 42) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row061_good123_checked :
    goodSegmentCheck 61 20 42
      { lower := 7546, upper := 7560, witness := RowWitness.topPrime 7541 } = true := by
  exact good_top_prime_checked (i := 61) (r := 20) (s := 42) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row061_good124_checked :
    goodSegmentCheck 61 20 42
      { lower := 7569, upper := 7621, witness := RowWitness.topPrime 7561 } = true := by
  exact good_top_prime_checked (i := 61) (r := 20) (s := 42) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row061_good125_checked :
    goodSegmentCheck 61 20 42
      { lower := 7622, upper := 7629, witness := RowWitness.topPrime 7621 } = true := by
  exact good_top_prime_checked (i := 61) (r := 20) (s := 42) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row061_good126_checked :
    goodSegmentCheck 61 20 42
      { lower := 7688, upper := 7740, witness := RowWitness.topPrime 7687 } = true := by
  exact good_top_prime_checked (i := 61) (r := 20) (s := 42) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row061_good127_checked :
    goodSegmentCheck 61 20 42
      { lower := 7935, upper := 7993, witness := RowWitness.topPrime 7933 } = true := by
  exact good_top_prime_checked (i := 61) (r := 20) (s := 42) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row061_good112_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row061_good113_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row061_good114_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row061_good115_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row061_good116_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row061_good117_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row061_good118_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row061_good119_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row061_good120_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row061_good121_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row061_good122_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row061_good123_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row061_good124_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row061_good125_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row061_good126_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row061_good127_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row061_good128_checked :
    goodSegmentCheck 61 20 42
      { lower := 7994, upper := 8002, witness := RowWitness.topPrime 7993 } = true := by
  exact good_top_prime_checked (i := 61) (r := 20) (s := 42) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row061_good129_checked :
    goodSegmentCheck 61 20 42
      { lower := 8019, upper := 8046, witness := RowWitness.topPrime 8017 } = true := by
  exact good_top_prime_checked (i := 61) (r := 20) (s := 42) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row061_good130_checked :
    goodSegmentCheck 61 20 42
      { lower := 8214, upper := 8269, witness := RowWitness.topPrime 8209 } = true := by
  exact good_top_prime_checked (i := 61) (r := 20) (s := 42) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row061_good131_checked :
    goodSegmentCheck 61 20 42
      { lower := 8270, upper := 8274, witness := RowWitness.topPrime 8269 } = true := by
  exact good_top_prime_checked (i := 61) (r := 20) (s := 42) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row061_good132_checked :
    goodSegmentCheck 61 20 42
      { lower := 8410, upper := 8449, witness := RowWitness.topPrime 8389 } = true := by
  exact good_top_prime_checked (i := 61) (r := 20) (s := 42) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row061_good133_checked :
    goodSegmentCheck 61 20 42
      { lower := 8450, upper := 8487, witness := RowWitness.topPrime 8447 } = true := by
  exact good_top_prime_checked (i := 61) (r := 20) (s := 42) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row061_good134_checked :
    goodSegmentCheck 61 20 42
      { lower := 8664, upper := 8723, witness := RowWitness.topPrime 8663 } = true := by
  exact good_top_prime_checked (i := 61) (r := 20) (s := 42) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row061_good135_checked :
    goodSegmentCheck 61 20 42
      { lower := 8724, upper := 8724, witness := RowWitness.topPrime 8719 } = true := by
  exact good_top_prime_checked (i := 61) (r := 20) (s := 42) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row061_good136_checked :
    goodSegmentCheck 61 20 42
      { lower := 8748, upper := 8807, witness := RowWitness.topPrime 8747 } = true := by
  exact good_top_prime_checked (i := 61) (r := 20) (s := 42) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row061_good137_checked :
    goodSegmentCheck 61 20 42
      { lower := 8808, upper := 8810, witness := RowWitness.topPrime 8807 } = true := by
  exact good_top_prime_checked (i := 61) (r := 20) (s := 42) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row061_good138_checked :
    goodSegmentCheck 61 20 42
      { lower := 8836, upper := 8848, witness := RowWitness.topPrime 8831 } = true := by
  exact good_top_prime_checked (i := 61) (r := 20) (s := 42) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row061_good139_checked :
    goodSegmentCheck 61 20 42
      { lower := 9025, upper := 9053, witness := RowWitness.topPrime 9013 } = true := by
  exact good_top_prime_checked (i := 61) (r := 20) (s := 42) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row061_good140_checked :
    goodSegmentCheck 61 20 42
      { lower := 9245, upper := 9301, witness := RowWitness.topPrime 9241 } = true := by
  exact good_top_prime_checked (i := 61) (r := 20) (s := 42) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row061_good141_checked :
    goodSegmentCheck 61 20 42
      { lower := 9302, upper := 9305, witness := RowWitness.topPrime 9293 } = true := by
  exact good_top_prime_checked (i := 61) (r := 20) (s := 42) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row061_good142_checked :
    goodSegmentCheck 61 20 42
      { lower := 9375, upper := 9377, witness := RowWitness.topPrime 9371 } = true := by
  exact good_top_prime_checked (i := 61) (r := 20) (s := 42) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row061_good143_checked :
    goodSegmentCheck 61 20 42
      { lower := 9522, upper := 9537, witness := RowWitness.topPrime 9521 } = true := by
  exact good_top_prime_checked (i := 61) (r := 20) (s := 42) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row061_good128_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row061_good129_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row061_good130_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row061_good131_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row061_good132_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row061_good133_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row061_good134_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row061_good135_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row061_good136_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row061_good137_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row061_good138_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row061_good139_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row061_good140_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row061_good141_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row061_good142_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row061_good143_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row061_good144_checked :
    goodSegmentCheck 61 20 42
      { lower := 9604, upper := 9661, witness := RowWitness.topPrime 9601 } = true := by
  exact good_top_prime_checked (i := 61) (r := 20) (s := 42) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row061_good145_checked :
    goodSegmentCheck 61 20 42
      { lower := 9662, upper := 9664, witness := RowWitness.topPrime 9661 } = true := by
  exact good_top_prime_checked (i := 61) (r := 20) (s := 42) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row061_good146_checked :
    goodSegmentCheck 61 20 42
      { lower := 10051, upper := 10060, witness := RowWitness.topPrime 10039 } = true := by
  exact good_top_prime_checked (i := 61) (r := 20) (s := 42) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row061_good147_checked :
    goodSegmentCheck 61 20 42
      { lower := 10086, upper := 10139, witness := RowWitness.topPrime 10079 } = true := by
  exact good_top_prime_checked (i := 61) (r := 20) (s := 42) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row061_good148_checked :
    goodSegmentCheck 61 20 42
      { lower := 10140, upper := 10146, witness := RowWitness.topPrime 10139 } = true := by
  exact good_top_prime_checked (i := 61) (r := 20) (s := 42) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row061_good149_checked :
    goodSegmentCheck 61 20 42
      { lower := 10240, upper := 10266, witness := RowWitness.topPrime 10223 } = true := by
  exact good_top_prime_checked (i := 61) (r := 20) (s := 42) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row061_good150_checked :
    goodSegmentCheck 61 20 42
      { lower := 10580, upper := 10627, witness := RowWitness.topPrime 10567 } = true := by
  exact good_top_prime_checked (i := 61) (r := 20) (s := 42) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row061_good151_checked :
    goodSegmentCheck 61 20 42
      { lower := 10628, upper := 10640, witness := RowWitness.topPrime 10627 } = true := by
  exact good_top_prime_checked (i := 61) (r := 20) (s := 42) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row061_good152_checked :
    goodSegmentCheck 61 20 42
      { lower := 10648, upper := 10685, witness := RowWitness.topPrime 10639 } = true := by
  exact good_top_prime_checked (i := 61) (r := 20) (s := 42) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row061_good153_checked :
    goodSegmentCheck 61 20 42
      { lower := 10935, upper := 10969, witness := RowWitness.topPrime 10909 } = true := by
  exact good_top_prime_checked (i := 61) (r := 20) (s := 42) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row061_good154_checked :
    goodSegmentCheck 61 20 42
      { lower := 10970, upper := 11012, witness := RowWitness.topPrime 10957 } = true := by
  exact good_top_prime_checked (i := 61) (r := 20) (s := 42) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row061_good155_checked :
    goodSegmentCheck 61 20 42
      { lower := 11045, upper := 11045, witness := RowWitness.topPrime 11027 } = true := by
  exact good_top_prime_checked (i := 61) (r := 20) (s := 42) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row061_good156_checked :
    goodSegmentCheck 61 20 42
      { lower := 11094, upper := 11105, witness := RowWitness.topPrime 11093 } = true := by
  exact good_top_prime_checked (i := 61) (r := 20) (s := 42) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row061_good157_checked :
    goodSegmentCheck 61 20 42
      { lower := 11109, upper := 11153, witness := RowWitness.topPrime 11093 } = true := by
  exact good_top_prime_checked (i := 61) (r := 20) (s := 42) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row061_good158_checked :
    goodSegmentCheck 61 20 42
      { lower := 11154, upper := 11154, witness := RowWitness.topPrime 11149 } = true := by
  exact good_top_prime_checked (i := 61) (r := 20) (s := 42) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row061_good159_checked :
    goodSegmentCheck 61 20 42
      { lower := 11250, upper := 11303, witness := RowWitness.topPrime 11243 } = true := by
  exact good_top_prime_checked (i := 61) (r := 20) (s := 42) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row061_good144_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row061_good145_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row061_good146_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row061_good147_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row061_good148_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row061_good149_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row061_good150_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row061_good151_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row061_good152_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row061_good153_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row061_good154_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row061_good155_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row061_good156_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row061_good157_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row061_good158_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row061_good159_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row061_good160_checked :
    goodSegmentCheck 61 20 42
      { lower := 11304, upper := 11310, witness := RowWitness.topPrime 11299 } = true := by
  exact good_top_prime_checked (i := 61) (r := 20) (s := 42) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row061_good161_checked :
    goodSegmentCheck 61 20 42
      { lower := 11664, upper := 11698, witness := RowWitness.topPrime 11657 } = true := by
  exact good_top_prime_checked (i := 61) (r := 20) (s := 42) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row061_good162_checked :
    goodSegmentCheck 61 20 42
      { lower := 11774, upper := 11803, witness := RowWitness.topPrime 11743 } = true := by
  exact good_top_prime_checked (i := 61) (r := 20) (s := 42) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row061_good163_checked :
    goodSegmentCheck 61 20 42
      { lower := 11804, upper := 11834, witness := RowWitness.topPrime 11801 } = true := by
  exact good_top_prime_checked (i := 61) (r := 20) (s := 42) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row061_good164_checked :
    goodSegmentCheck 61 20 42
      { lower := 12005, upper := 12039, witness := RowWitness.topPrime 11987 } = true := by
  exact good_top_prime_checked (i := 61) (r := 20) (s := 42) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row061_good165_checked :
    goodSegmentCheck 61 20 42
      { lower := 12321, upper := 12348, witness := RowWitness.topPrime 12301 } = true := by
  exact good_top_prime_checked (i := 61) (r := 20) (s := 42) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row061_good166_checked :
    goodSegmentCheck 61 20 42
      { lower := 12500, upper := 12553, witness := RowWitness.topPrime 12497 } = true := by
  exact good_top_prime_checked (i := 61) (r := 20) (s := 42) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row061_good167_checked :
    goodSegmentCheck 61 20 42
      { lower := 13125, upper := 13181, witness := RowWitness.topPrime 13121 } = true := by
  exact good_top_prime_checked (i := 61) (r := 20) (s := 42) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row061_good168_checked :
    goodSegmentCheck 61 20 42
      { lower := 13182, upper := 13185, witness := RowWitness.topPrime 13177 } = true := by
  exact good_top_prime_checked (i := 61) (r := 20) (s := 42) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row061_good169_checked :
    goodSegmentCheck 61 20 42
      { lower := 13225, upper := 13242, witness := RowWitness.topPrime 13219 } = true := by
  exact good_top_prime_checked (i := 61) (r := 20) (s := 42) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row061_good170_checked :
    goodSegmentCheck 61 20 42
      { lower := 13254, upper := 13285, witness := RowWitness.topPrime 13249 } = true := by
  exact good_top_prime_checked (i := 61) (r := 20) (s := 42) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row061_good171_checked :
    goodSegmentCheck 61 20 42
      { lower := 13310, upper := 13369, witness := RowWitness.topPrime 13309 } = true := by
  exact good_top_prime_checked (i := 61) (r := 20) (s := 42) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row061_good172_checked :
    goodSegmentCheck 61 20 42
      { lower := 13370, upper := 13370, witness := RowWitness.topPrime 13367 } = true := by
  exact good_top_prime_checked (i := 61) (r := 20) (s := 42) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row061_good173_checked :
    goodSegmentCheck 61 20 42
      { lower := 13454, upper := 13511, witness := RowWitness.topPrime 13451 } = true := by
  exact good_top_prime_checked (i := 61) (r := 20) (s := 42) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row061_good174_checked :
    goodSegmentCheck 61 20 42
      { lower := 13512, upper := 13514, witness := RowWitness.topPrime 13499 } = true := by
  exact good_top_prime_checked (i := 61) (r := 20) (s := 42) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row061_good175_checked :
    goodSegmentCheck 61 20 42
      { lower := 13718, upper := 13771, witness := RowWitness.topPrime 13711 } = true := by
  exact good_top_prime_checked (i := 61) (r := 20) (s := 42) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row061_good160_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row061_good161_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row061_good162_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row061_good163_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row061_good164_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row061_good165_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row061_good166_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row061_good167_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row061_good168_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row061_good169_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row061_good170_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row061_good171_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row061_good172_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row061_good173_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row061_good174_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row061_good175_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row061_good176_checked :
    goodSegmentCheck 61 20 42
      { lower := 13772, upper := 13778, witness := RowWitness.topPrime 13763 } = true := by
  exact good_top_prime_checked (i := 61) (r := 20) (s := 42) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row061_good177_checked :
    goodSegmentCheck 61 20 42
      { lower := 14336, upper := 14357, witness := RowWitness.topPrime 14327 } = true := by
  exact good_top_prime_checked (i := 61) (r := 20) (s := 42) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row061_good178_checked :
    goodSegmentCheck 61 20 42
      { lower := 14375, upper := 14396, witness := RowWitness.topPrime 14369 } = true := by
  exact good_top_prime_checked (i := 61) (r := 20) (s := 42) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row061_good179_checked :
    goodSegmentCheck 61 20 42
      { lower := 14406, upper := 14461, witness := RowWitness.topPrime 14401 } = true := by
  exact good_top_prime_checked (i := 61) (r := 20) (s := 42) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row061_good180_checked :
    goodSegmentCheck 61 20 42
      { lower := 14462, upper := 14466, witness := RowWitness.topPrime 14461 } = true := by
  exact good_top_prime_checked (i := 61) (r := 20) (s := 42) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row061_good181_checked :
    goodSegmentCheck 61 20 42
      { lower := 14792, upper := 14799, witness := RowWitness.topPrime 14783 } = true := by
  exact good_top_prime_checked (i := 61) (r := 20) (s := 42) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row061_good182_checked :
    goodSegmentCheck 61 20 42
      { lower := 15138, upper := 15189, witness := RowWitness.topPrime 15137 } = true := by
  exact good_top_prime_checked (i := 61) (r := 20) (s := 42) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row061_good183_checked :
    goodSegmentCheck 61 20 42
      { lower := 15360, upper := 15369, witness := RowWitness.topPrime 15359 } = true := by
  exact good_top_prime_checked (i := 61) (r := 20) (s := 42) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row061_good184_checked :
    goodSegmentCheck 61 20 42
      { lower := 15376, upper := 15433, witness := RowWitness.topPrime 15373 } = true := by
  exact good_top_prime_checked (i := 61) (r := 20) (s := 42) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row061_good185_checked :
    goodSegmentCheck 61 20 42
      { lower := 15434, upper := 15436, witness := RowWitness.topPrime 15427 } = true := by
  exact good_top_prime_checked (i := 61) (r := 20) (s := 42) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row061_good186_checked :
    goodSegmentCheck 61 20 42
      { lower := 15979, upper := 16032, witness := RowWitness.topPrime 15973 } = true := by
  exact good_top_prime_checked (i := 61) (r := 20) (s := 42) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row061_good187_checked :
    goodSegmentCheck 61 20 42
      { lower := 16038, upper := 16039, witness := RowWitness.topPrime 16033 } = true := by
  exact good_top_prime_checked (i := 61) (r := 20) (s := 42) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row061_good188_checked :
    goodSegmentCheck 61 20 42
      { lower := 16384, upper := 16397, witness := RowWitness.topPrime 16381 } = true := by
  exact good_top_prime_checked (i := 61) (r := 20) (s := 42) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row061_good189_checked :
    goodSegmentCheck 61 20 42
      { lower := 16428, upper := 16444, witness := RowWitness.topPrime 16427 } = true := by
  exact good_top_prime_checked (i := 61) (r := 20) (s := 42) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row061_good190_checked :
    goodSegmentCheck 61 20 42
      { lower := 16810, upper := 16847, witness := RowWitness.topPrime 16787 } = true := by
  exact good_top_prime_checked (i := 61) (r := 20) (s := 42) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row061_good191_checked :
    goodSegmentCheck 61 20 42
      { lower := 16848, upper := 16880, witness := RowWitness.topPrime 16843 } = true := by
  exact good_top_prime_checked (i := 61) (r := 20) (s := 42) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row061_good176_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row061_good177_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row061_good178_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row061_good179_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row061_good180_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row061_good181_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row061_good182_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row061_good183_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row061_good184_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row061_good185_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row061_good186_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row061_good187_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row061_good188_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row061_good189_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row061_good190_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row061_good191_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row061_good192_checked :
    goodSegmentCheck 61 20 42
      { lower := 17303, upper := 17358, witness := RowWitness.topPrime 17299 } = true := by
  exact good_top_prime_checked (i := 61) (r := 20) (s := 42) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row061_good193_checked :
    goodSegmentCheck 61 20 42
      { lower := 17408, upper := 17461, witness := RowWitness.topPrime 17401 } = true := by
  exact good_top_prime_checked (i := 61) (r := 20) (s := 42) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row061_good194_checked :
    goodSegmentCheck 61 20 42
      { lower := 17462, upper := 17465, witness := RowWitness.topPrime 17449 } = true := by
  exact good_top_prime_checked (i := 61) (r := 20) (s := 42) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row061_good195_checked :
    goodSegmentCheck 61 20 42
      { lower := 17672, upper := 17721, witness := RowWitness.topPrime 17669 } = true := by
  exact good_top_prime_checked (i := 61) (r := 20) (s := 42) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row061_good196_checked :
    goodSegmentCheck 61 20 42
      { lower := 18490, upper := 18541, witness := RowWitness.topPrime 18481 } = true := by
  exact good_top_prime_checked (i := 61) (r := 20) (s := 42) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row061_good197_checked :
    goodSegmentCheck 61 20 42
      { lower := 18542, upper := 18551, witness := RowWitness.topPrime 18541 } = true := by
  exact good_top_prime_checked (i := 61) (r := 20) (s := 42) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row061_good198_checked :
    goodSegmentCheck 61 20 42
      { lower := 19208, upper := 19267, witness := RowWitness.topPrime 19207 } = true := by
  exact good_top_prime_checked (i := 61) (r := 20) (s := 42) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row061_good199_checked :
    goodSegmentCheck 61 20 42
      { lower := 19268, upper := 19268, witness := RowWitness.topPrime 19267 } = true := by
  exact good_top_prime_checked (i := 61) (r := 20) (s := 42) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row061_good200_checked :
    goodSegmentCheck 61 20 42
      { lower := 19663, upper := 19721, witness := RowWitness.topPrime 19661 } = true := by
  exact good_top_prime_checked (i := 61) (r := 20) (s := 42) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row061_good201_checked :
    goodSegmentCheck 61 20 42
      { lower := 19722, upper := 19723, witness := RowWitness.topPrime 19717 } = true := by
  exact good_top_prime_checked (i := 61) (r := 20) (s := 42) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row061_good202_checked :
    goodSegmentCheck 61 20 42
      { lower := 20181, upper := 20232, witness := RowWitness.topPrime 20177 } = true := by
  exact good_top_prime_checked (i := 61) (r := 20) (s := 42) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row061_good203_checked :
    goodSegmentCheck 61 20 42
      { lower := 20535, upper := 20540, witness := RowWitness.topPrime 20533 } = true := by
  exact good_top_prime_checked (i := 61) (r := 20) (s := 42) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row061_good204_checked :
    goodSegmentCheck 61 20 42
      { lower := 20577, upper := 20595, witness := RowWitness.topPrime 20563 } = true := by
  exact good_top_prime_checked (i := 61) (r := 20) (s := 42) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row061_good205_checked :
    goodSegmentCheck 61 20 42
      { lower := 21870, upper := 21923, witness := RowWitness.topPrime 21863 } = true := by
  exact good_top_prime_checked (i := 61) (r := 20) (s := 42) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row061_good206_checked :
    goodSegmentCheck 61 20 42
      { lower := 21924, upper := 21935, witness := RowWitness.topPrime 21911 } = true := by
  exact good_top_prime_checked (i := 61) (r := 20) (s := 42) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row061_good207_checked :
    goodSegmentCheck 61 20 42
      { lower := 22528, upper := 22532, witness := RowWitness.topPrime 22511 } = true := by
  exact good_top_prime_checked (i := 61) (r := 20) (s := 42) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row061_good192_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row061_good193_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row061_good194_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row061_good195_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row061_good196_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row061_good197_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row061_good198_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row061_good199_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row061_good200_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row061_good201_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row061_good202_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row061_good203_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row061_good204_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row061_good205_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row061_good206_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row061_good207_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row061_good208_checked :
    goodSegmentCheck 61 20 42
      { lower := 24010, upper := 24018, witness := RowWitness.topPrime 24007 } = true := by
  exact good_top_prime_checked (i := 61) (r := 20) (s := 42) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row061_good209_checked :
    goodSegmentCheck 61 20 42
      { lower := 24037, upper := 24089, witness := RowWitness.topPrime 24029 } = true := by
  exact good_top_prime_checked (i := 61) (r := 20) (s := 42) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row061_good210_checked :
    goodSegmentCheck 61 20 42
      { lower := 24090, upper := 24097, witness := RowWitness.topPrime 24083 } = true := by
  exact good_top_prime_checked (i := 61) (r := 20) (s := 42) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row061_good211_checked :
    goodSegmentCheck 61 20 42
      { lower := 24334, upper := 24359, witness := RowWitness.topPrime 24329 } = true := by
  exact good_top_prime_checked (i := 61) (r := 20) (s := 42) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row061_good212_checked :
    goodSegmentCheck 61 20 42
      { lower := 24367, upper := 24419, witness := RowWitness.topPrime 24359 } = true := by
  exact good_top_prime_checked (i := 61) (r := 20) (s := 42) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row061_good213_checked :
    goodSegmentCheck 61 20 42
      { lower := 24420, upper := 24427, witness := RowWitness.topPrime 24419 } = true := by
  exact good_top_prime_checked (i := 61) (r := 20) (s := 42) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row061_good214_checked :
    goodSegmentCheck 61 20 42
      { lower := 24576, upper := 24625, witness := RowWitness.topPrime 24571 } = true := by
  exact good_top_prime_checked (i := 61) (r := 20) (s := 42) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row061_good215_checked :
    goodSegmentCheck 61 20 42
      { lower := 25289, upper := 25321, witness := RowWitness.topPrime 25261 } = true := by
  exact good_top_prime_checked (i := 61) (r := 20) (s := 42) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row061_good216_checked :
    goodSegmentCheck 61 20 42
      { lower := 25322, upper := 25341, witness := RowWitness.topPrime 25321 } = true := by
  exact good_top_prime_checked (i := 61) (r := 20) (s := 42) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row061_good217_checked :
    goodSegmentCheck 61 20 42
      { lower := 26411, upper := 26424, witness := RowWitness.topPrime 26407 } = true := by
  exact good_top_prime_checked (i := 61) (r := 20) (s := 42) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row061_good218_checked :
    goodSegmentCheck 61 20 42
      { lower := 26624, upper := 26657, witness := RowWitness.topPrime 26597 } = true := by
  exact good_top_prime_checked (i := 61) (r := 20) (s := 42) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row061_good219_checked :
    goodSegmentCheck 61 20 42
      { lower := 26658, upper := 26680, witness := RowWitness.topPrime 26647 } = true := by
  exact good_top_prime_checked (i := 61) (r := 20) (s := 42) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row061_good220_checked :
    goodSegmentCheck 61 20 42
      { lower := 27436, upper := 27440, witness := RowWitness.topPrime 27431 } = true := by
  exact good_top_prime_checked (i := 61) (r := 20) (s := 42) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row061_good221_checked :
    goodSegmentCheck 61 20 42
      { lower := 28125, upper := 28150, witness := RowWitness.topPrime 28123 } = true := by
  exact good_top_prime_checked (i := 61) (r := 20) (s := 42) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row061_good222_checked :
    goodSegmentCheck 61 20 42
      { lower := 28577, upper := 28621, witness := RowWitness.topPrime 28573 } = true := by
  exact good_top_prime_checked (i := 61) (r := 20) (s := 42) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row061_good223_checked :
    goodSegmentCheck 61 20 42
      { lower := 28717, upper := 28732, witness := RowWitness.topPrime 28711 } = true := by
  exact good_top_prime_checked (i := 61) (r := 20) (s := 42) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row061_good208_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row061_good209_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row061_good210_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row061_good211_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row061_good212_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row061_good213_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row061_good214_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row061_good215_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row061_good216_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row061_good217_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row061_good218_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row061_good219_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row061_good220_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row061_good221_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row061_good222_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row061_good223_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row061_good224_checked :
    goodSegmentCheck 61 20 42
      { lower := 28749, upper := 28777, witness := RowWitness.topPrime 28729 } = true := by
  exact good_top_prime_checked (i := 61) (r := 20) (s := 42) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row061_good225_checked :
    goodSegmentCheck 61 20 42
      { lower := 30758, upper := 30780, witness := RowWitness.topPrime 30757 } = true := by
  exact good_top_prime_checked (i := 61) (r := 20) (s := 42) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row061_good226_checked :
    goodSegmentCheck 61 20 42
      { lower := 30926, upper := 30959, witness := RowWitness.topPrime 30911 } = true := by
  exact good_top_prime_checked (i := 61) (r := 20) (s := 42) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row061_good227_checked :
    goodSegmentCheck 61 20 42
      { lower := 31250, upper := 31273, witness := RowWitness.topPrime 31249 } = true := by
  exact good_top_prime_checked (i := 61) (r := 20) (s := 42) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row061_good228_checked :
    goodSegmentCheck 61 20 42
      { lower := 32805, upper := 32828, witness := RowWitness.topPrime 32803 } = true := by
  exact good_top_prime_checked (i := 61) (r := 20) (s := 42) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row061_good229_checked :
    goodSegmentCheck 61 20 42
      { lower := 33620, upper := 33674, witness := RowWitness.topPrime 33619 } = true := by
  exact good_top_prime_checked (i := 61) (r := 20) (s := 42) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row061_good230_checked :
    goodSegmentCheck 61 20 42
      { lower := 34391, upper := 34435, witness := RowWitness.topPrime 34381 } = true := by
  exact good_top_prime_checked (i := 61) (r := 20) (s := 42) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row061_good231_checked :
    goodSegmentCheck 61 20 42
      { lower := 34816, upper := 34867, witness := RowWitness.topPrime 34807 } = true := by
  exact good_top_prime_checked (i := 61) (r := 20) (s := 42) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row061_good232_checked :
    goodSegmentCheck 61 20 42
      { lower := 34868, upper := 34870, witness := RowWitness.topPrime 34849 } = true := by
  exact good_top_prime_checked (i := 61) (r := 20) (s := 42) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row061_good233_checked :
    goodSegmentCheck 61 20 42
      { lower := 35152, upper := 35191, witness := RowWitness.topPrime 35149 } = true := by
  exact good_top_prime_checked (i := 61) (r := 20) (s := 42) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row061_good234_checked :
    goodSegmentCheck 61 20 42
      { lower := 36517, upper := 36557, witness := RowWitness.topPrime 36497 } = true := by
  exact good_top_prime_checked (i := 61) (r := 20) (s := 42) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row061_good235_checked :
    goodSegmentCheck 61 20 42
      { lower := 36558, upper := 36561, witness := RowWitness.topPrime 36551 } = true := by
  exact good_top_prime_checked (i := 61) (r := 20) (s := 42) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row061_good236_checked :
    goodSegmentCheck 61 20 42
      { lower := 37553, upper := 37560, witness := RowWitness.topPrime 37549 } = true := by
  exact good_top_prime_checked (i := 61) (r := 20) (s := 42) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row061_good237_checked :
    goodSegmentCheck 61 20 42
      { lower := 39326, upper := 39364, witness := RowWitness.topPrime 39323 } = true := by
  exact good_top_prime_checked (i := 61) (r := 20) (s := 42) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row061_good238_checked :
    goodSegmentCheck 61 20 42
      { lower := 39366, upper := 39386, witness := RowWitness.topPrime 39359 } = true := by
  exact good_top_prime_checked (i := 61) (r := 20) (s := 42) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row061_good239_checked :
    goodSegmentCheck 61 20 42
      { lower := 41772, upper := 41803, witness := RowWitness.topPrime 41771 } = true := by
  exact good_top_prime_checked (i := 61) (r := 20) (s := 42) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row061_good224_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row061_good225_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row061_good226_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row061_good227_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row061_good228_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row061_good229_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row061_good230_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row061_good231_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row061_good232_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row061_good233_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row061_good234_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row061_good235_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row061_good236_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row061_good237_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row061_good238_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row061_good239_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row061_good240_checked :
    goodSegmentCheck 61 20 42
      { lower := 43750, upper := 43781, witness := RowWitness.topPrime 43721 } = true := by
  exact good_top_prime_checked (i := 61) (r := 20) (s := 42) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row061_good241_checked :
    goodSegmentCheck 61 20 42
      { lower := 43782, upper := 43800, witness := RowWitness.topPrime 43781 } = true := by
  exact good_top_prime_checked (i := 61) (r := 20) (s := 42) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row061_good242_checked :
    goodSegmentCheck 61 20 42
      { lower := 43940, upper := 43983, witness := RowWitness.topPrime 43933 } = true := by
  exact good_top_prime_checked (i := 61) (r := 20) (s := 42) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row061_good243_checked :
    goodSegmentCheck 61 20 42
      { lower := 44217, upper := 44240, witness := RowWitness.topPrime 44207 } = true := by
  exact good_top_prime_checked (i := 61) (r := 20) (s := 42) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row061_good244_checked :
    goodSegmentCheck 61 20 42
      { lower := 48020, upper := 48073, witness := RowWitness.topPrime 48017 } = true := by
  exact good_top_prime_checked (i := 61) (r := 20) (s := 42) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row061_good245_checked :
    goodSegmentCheck 61 20 42
      { lower := 48778, upper := 48794, witness := RowWitness.topPrime 48767 } = true := by
  exact good_top_prime_checked (i := 61) (r := 20) (s := 42) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row061_good246_checked :
    goodSegmentCheck 61 20 42
      { lower := 49152, upper := 49190, witness := RowWitness.topPrime 49139 } = true := by
  exact good_top_prime_checked (i := 61) (r := 20) (s := 42) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row061_good247_checked :
    goodSegmentCheck 61 20 42
      { lower := 73205, upper := 73227, witness := RowWitness.topPrime 73189 } = true := by
  exact good_top_prime_checked (i := 61) (r := 20) (s := 42) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row061_good248_checked :
    goodSegmentCheck 61 20 42
      { lower := 73728, upper := 73755, witness := RowWitness.topPrime 73727 } = true := by
  exact good_top_prime_checked (i := 61) (r := 20) (s := 42) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row061_good249_checked :
    goodSegmentCheck 61 20 42
      { lower := 327701, upper := 327740, witness := RowWitness.topPrime 327689 } = true := by
  exact good_top_prime_checked (i := 61) (r := 20) (s := 42) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row061_good240_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row061_good241_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row061_good242_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row061_good243_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row061_good244_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row061_good245_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row061_good246_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row061_good247_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row061_good248_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row061_good249_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row061_goods_checked :
    row061.goods.all (goodSegmentCheck row061.height.i row061.height.r row061.height.s) = true := by
  change row061_goods.all (goodSegmentCheck 61 20 42) = true
  simp only [row061_goods, List.all_cons, List.all_nil,
    row061_good000_checked,
    row061_good001_checked,
    row061_good002_checked,
    row061_good003_checked,
    row061_good004_checked,
    row061_good005_checked,
    row061_good006_checked,
    row061_good007_checked,
    row061_good008_checked,
    row061_good009_checked,
    row061_good010_checked,
    row061_good011_checked,
    row061_good012_checked,
    row061_good013_checked,
    row061_good014_checked,
    row061_good015_checked,
    row061_good016_checked,
    row061_good017_checked,
    row061_good018_checked,
    row061_good019_checked,
    row061_good020_checked,
    row061_good021_checked,
    row061_good022_checked,
    row061_good023_checked,
    row061_good024_checked,
    row061_good025_checked,
    row061_good026_checked,
    row061_good027_checked,
    row061_good028_checked,
    row061_good029_checked,
    row061_good030_checked,
    row061_good031_checked,
    row061_good032_checked,
    row061_good033_checked,
    row061_good034_checked,
    row061_good035_checked,
    row061_good036_checked,
    row061_good037_checked,
    row061_good038_checked,
    row061_good039_checked,
    row061_good040_checked,
    row061_good041_checked,
    row061_good042_checked,
    row061_good043_checked,
    row061_good044_checked,
    row061_good045_checked,
    row061_good046_checked,
    row061_good047_checked,
    row061_good048_checked,
    row061_good049_checked,
    row061_good050_checked,
    row061_good051_checked,
    row061_good052_checked,
    row061_good053_checked,
    row061_good054_checked,
    row061_good055_checked,
    row061_good056_checked,
    row061_good057_checked,
    row061_good058_checked,
    row061_good059_checked,
    row061_good060_checked,
    row061_good061_checked,
    row061_good062_checked,
    row061_good063_checked,
    row061_good064_checked,
    row061_good065_checked,
    row061_good066_checked,
    row061_good067_checked,
    row061_good068_checked,
    row061_good069_checked,
    row061_good070_checked,
    row061_good071_checked,
    row061_good072_checked,
    row061_good073_checked,
    row061_good074_checked,
    row061_good075_checked,
    row061_good076_checked,
    row061_good077_checked,
    row061_good078_checked,
    row061_good079_checked,
    row061_good080_checked,
    row061_good081_checked,
    row061_good082_checked,
    row061_good083_checked,
    row061_good084_checked,
    row061_good085_checked,
    row061_good086_checked,
    row061_good087_checked,
    row061_good088_checked,
    row061_good089_checked,
    row061_good090_checked,
    row061_good091_checked,
    row061_good092_checked,
    row061_good093_checked,
    row061_good094_checked,
    row061_good095_checked,
    row061_good096_checked,
    row061_good097_checked,
    row061_good098_checked,
    row061_good099_checked,
    row061_good100_checked,
    row061_good101_checked,
    row061_good102_checked,
    row061_good103_checked,
    row061_good104_checked,
    row061_good105_checked,
    row061_good106_checked,
    row061_good107_checked,
    row061_good108_checked,
    row061_good109_checked,
    row061_good110_checked,
    row061_good111_checked,
    row061_good112_checked,
    row061_good113_checked,
    row061_good114_checked,
    row061_good115_checked,
    row061_good116_checked,
    row061_good117_checked,
    row061_good118_checked,
    row061_good119_checked,
    row061_good120_checked,
    row061_good121_checked,
    row061_good122_checked,
    row061_good123_checked,
    row061_good124_checked,
    row061_good125_checked,
    row061_good126_checked,
    row061_good127_checked,
    row061_good128_checked,
    row061_good129_checked,
    row061_good130_checked,
    row061_good131_checked,
    row061_good132_checked,
    row061_good133_checked,
    row061_good134_checked,
    row061_good135_checked,
    row061_good136_checked,
    row061_good137_checked,
    row061_good138_checked,
    row061_good139_checked,
    row061_good140_checked,
    row061_good141_checked,
    row061_good142_checked,
    row061_good143_checked,
    row061_good144_checked,
    row061_good145_checked,
    row061_good146_checked,
    row061_good147_checked,
    row061_good148_checked,
    row061_good149_checked,
    row061_good150_checked,
    row061_good151_checked,
    row061_good152_checked,
    row061_good153_checked,
    row061_good154_checked,
    row061_good155_checked,
    row061_good156_checked,
    row061_good157_checked,
    row061_good158_checked,
    row061_good159_checked,
    row061_good160_checked,
    row061_good161_checked,
    row061_good162_checked,
    row061_good163_checked,
    row061_good164_checked,
    row061_good165_checked,
    row061_good166_checked,
    row061_good167_checked,
    row061_good168_checked,
    row061_good169_checked,
    row061_good170_checked,
    row061_good171_checked,
    row061_good172_checked,
    row061_good173_checked,
    row061_good174_checked,
    row061_good175_checked,
    row061_good176_checked,
    row061_good177_checked,
    row061_good178_checked,
    row061_good179_checked,
    row061_good180_checked,
    row061_good181_checked,
    row061_good182_checked,
    row061_good183_checked,
    row061_good184_checked,
    row061_good185_checked,
    row061_good186_checked,
    row061_good187_checked,
    row061_good188_checked,
    row061_good189_checked,
    row061_good190_checked,
    row061_good191_checked,
    row061_good192_checked,
    row061_good193_checked,
    row061_good194_checked,
    row061_good195_checked,
    row061_good196_checked,
    row061_good197_checked,
    row061_good198_checked,
    row061_good199_checked,
    row061_good200_checked,
    row061_good201_checked,
    row061_good202_checked,
    row061_good203_checked,
    row061_good204_checked,
    row061_good205_checked,
    row061_good206_checked,
    row061_good207_checked,
    row061_good208_checked,
    row061_good209_checked,
    row061_good210_checked,
    row061_good211_checked,
    row061_good212_checked,
    row061_good213_checked,
    row061_good214_checked,
    row061_good215_checked,
    row061_good216_checked,
    row061_good217_checked,
    row061_good218_checked,
    row061_good219_checked,
    row061_good220_checked,
    row061_good221_checked,
    row061_good222_checked,
    row061_good223_checked,
    row061_good224_checked,
    row061_good225_checked,
    row061_good226_checked,
    row061_good227_checked,
    row061_good228_checked,
    row061_good229_checked,
    row061_good230_checked,
    row061_good231_checked,
    row061_good232_checked,
    row061_good233_checked,
    row061_good234_checked,
    row061_good235_checked,
    row061_good236_checked,
    row061_good237_checked,
    row061_good238_checked,
    row061_good239_checked,
    row061_good240_checked,
    row061_good241_checked,
    row061_good242_checked,
    row061_good243_checked,
    row061_good244_checked,
    row061_good245_checked,
    row061_good246_checked,
    row061_good247_checked,
    row061_good248_checked,
    row061_good249_checked, Bool.true_and]

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row061_goods_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row061_registered :
    decide (row061.height ∈ heightCertificateData) = true := by
  decide +kernel

theorem row061_small_checked :
    coverCheck (2 * row061.height.i + 2) (row061.height.i * (row061.height.i - 1) - 1)
      (row061.goods.map goodSegmentBounds) = true := by
  decide +kernel

theorem row061_layerCover_checked :
    coverCheck (row061.height.i * (row061.height.i - 1)) (row061.height.n0 - 1)
      (row061.layers.map CoverLayer.bounds) = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row061_registered
#print axioms B699LowIndex.LowIndexLean513dc7cc.row061_small_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row061_layerCover_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row061_bounds : List NatInterval :=
  [(124, 173), (174, 233), (234, 293), (294, 353), (354, 413), (414, 469), (470, 527), (528, 583), (584, 637), (638, 691), (692, 751), (752, 811), (812, 871), (872, 923), (924, 979), (980, 1037), (1038, 1093), (1094, 1153), (1154, 1213), (1214, 1273), (1274, 1319), (1320, 1379), (1380, 1433), (1434, 1493), (1494, 1553), (1554, 1613), (1614, 1673), (1674, 1729), (1730, 1783), (1784, 1843), (1844, 1891), (1892, 1949), (1950, 2009), (2010, 2063), (2064, 2123), (2124, 2173), (2174, 2221), (2222, 2281), (2282, 2341), (2342, 2401), (2402, 2459), (2460, 2519), (2520, 2563), (2564, 2617), (2618, 2677), (2678, 2737), (2738, 2791), (2792, 2851), (2852, 2911), (2912, 2969), (2970, 3029), (3030, 3083), (3084, 3143), (3144, 3197), (3198, 3251), (3252, 3311), (3312, 3367), (3368, 3421), (3422, 3473), (3474, 3529), (3530, 3589), (3590, 3643), (3644, 3670), (3698, 3757), (3758, 3799), (3800, 3817), (3844, 3893), (3894, 3947), (3993, 4031), (4046, 4053), (4056, 4111), (4112, 4171), (4172, 4176), (4225, 4279), (4280, 4285), (4335, 4387), (4388, 4433), (4434, 4454), (4459, 4478), (4608, 4663), (4664, 4677), (4732, 4753), (4761, 4792), (4802, 4861), (4862, 4921), (4922, 4924), (5043, 5099), (5100, 5114), (5120, 5179), (5180, 5180), (5202, 5205), (5324, 5383), (5384, 5406), (5415, 5436), (5488, 5543), (5544, 5551), (5589, 5607), (5618, 5651), (5652, 5685), (5776, 5809), (5810, 5867), (5868, 5927), (5928, 5947), (6075, 6129), (6144, 6203), (6204, 6204), (6348, 6403), (6404, 6418), (6517, 6551), (6552, 6558), (6561, 6577), (6591, 6621), (6627, 6679), (6680, 6715), (6727, 6779), (6780, 6787), (6845, 6901), (6902, 6959), (6960, 6996), (7203, 7253), (7254, 7280), (7406, 7453), (7454, 7456), (7546, 7560), (7569, 7621), (7622, 7629), (7688, 7740), (7935, 7993), (7994, 8002), (8019, 8046), (8214, 8269), (8270, 8274), (8410, 8449), (8450, 8487), (8664, 8723), (8724, 8724), (8748, 8807), (8808, 8810), (8836, 8848), (9025, 9053), (9245, 9301), (9302, 9305), (9375, 9377), (9522, 9537), (9604, 9661), (9662, 9664), (10051, 10060), (10086, 10139), (10140, 10146), (10240, 10266), (10580, 10627), (10628, 10640), (10648, 10685), (10935, 10969), (10970, 11012), (11045, 11045), (11094, 11105), (11109, 11153), (11154, 11154), (11250, 11303), (11304, 11310), (11664, 11698), (11774, 11803), (11804, 11834), (12005, 12039), (12321, 12348), (12500, 12553), (13125, 13181), (13182, 13185), (13225, 13242), (13254, 13285), (13310, 13369), (13370, 13370), (13454, 13511), (13512, 13514), (13718, 13771), (13772, 13778), (14336, 14357), (14375, 14396), (14406, 14461), (14462, 14466), (14792, 14799), (15138, 15189), (15360, 15369), (15376, 15433), (15434, 15436), (15979, 16032), (16038, 16039), (16384, 16397), (16428, 16444), (16810, 16847), (16848, 16880), (17303, 17358), (17408, 17461), (17462, 17465), (17672, 17721), (18490, 18541), (18542, 18551), (19208, 19267), (19268, 19268), (19663, 19721), (19722, 19723), (20181, 20232), (20535, 20540), (20577, 20595), (21870, 21923), (21924, 21935), (22528, 22532), (24010, 24018), (24037, 24089), (24090, 24097), (24334, 24359), (24367, 24419), (24420, 24427), (24576, 24625), (25289, 25321), (25322, 25341), (26411, 26424), (26624, 26657), (26658, 26680), (27436, 27440), (28125, 28150), (28577, 28621), (28717, 28732), (28749, 28777), (30758, 30780), (30926, 30959), (31250, 31273), (32805, 32828), (33620, 33674), (34391, 34435), (34816, 34867), (34868, 34870), (35152, 35191), (36517, 36557), (36558, 36561), (37553, 37560), (39326, 39364), (39366, 39386), (41772, 41803), (43750, 43781), (43782, 43800), (43940, 43983), (44217, 44240), (48020, 48073), (48778, 48794), (49152, 49190), (73205, 73227), (73728, 73755), (327701, 327740)]

theorem row061_bounds_eq : row061.goods.map goodSegmentBounds = row061_bounds := by
  rfl

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row061_bounds_eq

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row061_layer000_intervals : List ColouredInterval :=
  [(2, 3840, 3900), (2, 4096, 4156), (2, 4352, 4412), (2, 4608, 4668), (2, 4864, 4924), (2, 5120, 5180), (2, 5376, 5436), (2, 5632, 5692), (2, 5888, 5948), (2, 6144, 6204), (2, 6400, 6460), (2, 6656, 6716), (2, 6912, 6972), (2, 7168, 7228), (2, 4096, 4156), (2, 4608, 4668), (2, 5120, 5180), (2, 5632, 5692), (2, 6144, 6204), (2, 6656, 6716), (2, 7168, 7228), (2, 4096, 4156), (2, 5120, 5180), (2, 6144, 6204), (2, 7168, 7228), (2, 4096, 4156), (2, 6144, 6204), (2, 4096, 4156), (3, 3660, 3705), (3, 3888, 3948), (3, 4131, 4191), (3, 4374, 4434), (3, 4617, 4677), (3, 4860, 4920), (3, 5103, 5163), (3, 5346, 5406), (3, 5589, 5649), (3, 5832, 5892), (3, 6075, 6135), (3, 6318, 6378), (3, 6561, 6621), (3, 6804, 6864), (3, 3660, 3705), (3, 4374, 4434), (3, 5103, 5163), (3, 5832, 5892), (3, 6561, 6621), (3, 7290, 7319), (3, 4374, 4434), (3, 6561, 6621), (3, 6561, 6621), (5, 3750, 3810), (5, 4375, 4435), (5, 5000, 5060), (5, 5625, 5685), (5, 6250, 6310), (5, 6875, 6935), (5, 6250, 6310), (7, 3773, 3833), (7, 4116, 4176), (7, 4459, 4519), (7, 4802, 4862), (7, 5145, 5205), (7, 5488, 5548), (7, 5831, 5891), (7, 6174, 6234), (7, 6517, 6577), (7, 6860, 6920), (7, 7203, 7263), (7, 4802, 4862), (7, 7203, 7263), (11, 3993, 4053), (11, 5324, 5384), (11, 6655, 6715), (13, 3718, 3778), (13, 3887, 3947), (13, 4056, 4116), (13, 4225, 4285), (13, 4394, 4454), (13, 4563, 4623), (13, 4732, 4792), (13, 4394, 4454), (13, 6591, 6651), (17, 3757, 3817), (17, 4046, 4106), (17, 4335, 4395), (17, 4624, 4684), (17, 4913, 4973), (17, 5202, 5262), (17, 5491, 5551), (17, 5780, 5840), (17, 6069, 6129), (17, 6358, 6418), (17, 6647, 6707), (17, 6936, 6996), (17, 7225, 7285), (17, 4913, 4973), (19, 3660, 3670), (19, 3971, 4031), (19, 4332, 4392), (19, 4693, 4753), (19, 5054, 5114), (19, 5415, 5475), (19, 5776, 5836), (19, 6137, 6197), (19, 6498, 6558), (19, 6859, 6919), (19, 7220, 7280), (19, 6859, 6919), (23, 3703, 3763), (23, 4232, 4292), (23, 4761, 4821), (23, 5290, 5350), (23, 5819, 5879), (23, 6348, 6408), (23, 6877, 6937), (29, 4205, 4265), (29, 5046, 5106), (29, 5887, 5947), (29, 6728, 6788), (31, 3844, 3904), (31, 4805, 4865), (31, 5766, 5826), (31, 6727, 6787), (37, 4107, 4167), (37, 5476, 5536), (37, 6845, 6905), (41, 5043, 5103), (41, 6724, 6784), (43, 3698, 3758), (43, 5547, 5607), (47, 4418, 4478), (47, 6627, 6687), (53, 5618, 5678), (59, 6962, 7022)]

def row061_layer000_block000 : List ColouredInterval :=
  [(2, 3840, 3900), (2, 4096, 4156), (2, 4352, 4412), (2, 4608, 4668), (2, 4864, 4924), (2, 5120, 5180), (2, 5376, 5436), (2, 5632, 5692), (2, 5888, 5948), (2, 6144, 6204), (2, 6400, 6460), (2, 6656, 6716), (2, 6912, 6972), (2, 7168, 7228), (2, 4096, 4156)]

def row061_layer000_block001 : List ColouredInterval :=
  [(2, 4608, 4668), (2, 5120, 5180), (2, 5632, 5692), (2, 6144, 6204), (2, 6656, 6716), (2, 7168, 7228), (2, 4096, 4156), (2, 5120, 5180), (2, 6144, 6204), (2, 7168, 7228), (2, 4096, 4156), (2, 6144, 6204), (2, 4096, 4156), (3, 3660, 3705), (3, 3888, 3948)]

def row061_layer000_block002 : List ColouredInterval :=
  [(3, 4131, 4191), (3, 4374, 4434), (3, 4617, 4677), (3, 4860, 4920), (3, 5103, 5163), (3, 5346, 5406), (3, 5589, 5649), (3, 5832, 5892), (3, 6075, 6135), (3, 6318, 6378), (3, 6561, 6621), (3, 6804, 6864), (3, 3660, 3705), (3, 4374, 4434), (3, 5103, 5163)]

def row061_layer000_block003 : List ColouredInterval :=
  [(3, 5832, 5892), (3, 6561, 6621), (3, 7290, 7319), (3, 4374, 4434), (3, 6561, 6621), (3, 6561, 6621), (5, 3750, 3810), (5, 4375, 4435), (5, 5000, 5060), (5, 5625, 5685), (5, 6250, 6310), (5, 6875, 6935), (5, 6250, 6310), (7, 3773, 3833), (7, 4116, 4176)]

def row061_layer000_block004 : List ColouredInterval :=
  [(7, 4459, 4519), (7, 4802, 4862), (7, 5145, 5205), (7, 5488, 5548), (7, 5831, 5891), (7, 6174, 6234), (7, 6517, 6577), (7, 6860, 6920), (7, 7203, 7263), (7, 4802, 4862), (7, 7203, 7263), (11, 3993, 4053), (11, 5324, 5384), (11, 6655, 6715), (13, 3718, 3778)]

def row061_layer000_block005 : List ColouredInterval :=
  [(13, 3887, 3947), (13, 4056, 4116), (13, 4225, 4285), (13, 4394, 4454), (13, 4563, 4623), (13, 4732, 4792), (13, 4394, 4454), (13, 6591, 6651), (17, 3757, 3817), (17, 4046, 4106), (17, 4335, 4395), (17, 4624, 4684), (17, 4913, 4973), (17, 5202, 5262), (17, 5491, 5551)]

def row061_layer000_block006 : List ColouredInterval :=
  [(17, 5780, 5840), (17, 6069, 6129), (17, 6358, 6418), (17, 6647, 6707), (17, 6936, 6996), (17, 7225, 7285), (17, 4913, 4973), (19, 3660, 3670), (19, 3971, 4031), (19, 4332, 4392), (19, 4693, 4753), (19, 5054, 5114), (19, 5415, 5475), (19, 5776, 5836), (19, 6137, 6197)]

def row061_layer000_block007 : List ColouredInterval :=
  [(19, 6498, 6558), (19, 6859, 6919), (19, 7220, 7280), (19, 6859, 6919), (23, 3703, 3763), (23, 4232, 4292), (23, 4761, 4821), (23, 5290, 5350), (23, 5819, 5879), (23, 6348, 6408), (23, 6877, 6937), (29, 4205, 4265), (29, 5046, 5106), (29, 5887, 5947), (29, 6728, 6788)]

def row061_layer000_block008 : List ColouredInterval :=
  [(31, 3844, 3904), (31, 4805, 4865), (31, 5766, 5826), (31, 6727, 6787), (37, 4107, 4167), (37, 5476, 5536), (37, 6845, 6905), (41, 5043, 5103), (41, 6724, 6784), (43, 3698, 3758), (43, 5547, 5607), (47, 4418, 4478), (47, 6627, 6687), (53, 5618, 5678), (59, 6962, 7022)]

def row061_layer000_chunks : List (List ColouredInterval) :=
  [row061_layer000_block000, row061_layer000_block001, row061_layer000_block002, row061_layer000_block003, row061_layer000_block004, row061_layer000_block005, row061_layer000_block006, row061_layer000_block007, row061_layer000_block008]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row061_layer000_intervals

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row061_layer000_arithmetic : LayerArithmeticValid row061.height { lower := 3660, upper := 7320, M := 28 } := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row061_layer000_arithmetic

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row061_layer000_enumeration :
    activePowerIntervalList 61 28 3660 7320 = row061_layer000_intervals := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row061_layer000_enumeration

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row061_layer000_pairs000 :
    row061_layer000_block000.all (fun I => row061_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row061_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row061_layer000_pairs000

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row061_layer000_pairs001 :
    row061_layer000_block001.all (fun I => row061_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row061_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row061_layer000_pairs001

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row061_layer000_pairs002 :
    row061_layer000_block002.all (fun I => row061_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row061_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row061_layer000_pairs002

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row061_layer000_pairs003 :
    row061_layer000_block003.all (fun I => row061_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row061_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row061_layer000_pairs003

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row061_layer000_pairs004 :
    row061_layer000_block004.all (fun I => row061_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row061_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row061_layer000_pairs004

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row061_layer000_pairs005 :
    row061_layer000_block005.all (fun I => row061_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row061_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row061_layer000_pairs005

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row061_layer000_pairs006 :
    row061_layer000_block006.all (fun I => row061_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row061_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row061_layer000_pairs006

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row061_layer000_pairs007 :
    row061_layer000_block007.all (fun I => row061_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row061_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row061_layer000_pairs007

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row061_layer000_pairs008 :
    row061_layer000_block008.all (fun I => row061_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row061_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row061_layer000_pairs008

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row061_layer000_chunks_eq : row061_layer000_chunks.flatten = row061_layer000_intervals := by
  rfl

theorem row061_layer000_pairs : pairCoverCheck row061_layer000_intervals row061_bounds = true := by
  apply pairCoverCheck_of_chunks row061_layer000_chunks_eq
  intro block hblock
  simp only [row061_layer000_chunks, List.mem_cons, List.mem_nil_iff, or_false] at hblock
  rcases hblock with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
  · exact row061_layer000_pairs000
  · exact row061_layer000_pairs001
  · exact row061_layer000_pairs002
  · exact row061_layer000_pairs003
  · exact row061_layer000_pairs004
  · exact row061_layer000_pairs005
  · exact row061_layer000_pairs006
  · exact row061_layer000_pairs007
  · exact row061_layer000_pairs008

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row061_layer000_chunks_eq
#print axioms B699LowIndex.LowIndexLean513dc7cc.row061_layer000_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row061_layer000_checked :
    coverLayerCheck row061.height row061.goods { lower := 3660, upper := 7320, M := 28 } = true := by
  exact coverLayerCheck_of_parts row061_layer000_arithmetic row061_layer000_enumeration row061_bounds_eq row061_layer000_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row061_layer000_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row061_layer001_intervals : List ColouredInterval :=
  [(2, 7680, 7740), (2, 8192, 8252), (2, 8704, 8764), (2, 9216, 9276), (2, 9728, 9788), (2, 10240, 10300), (2, 10752, 10812), (2, 11264, 11324), (2, 11776, 11836), (2, 12288, 12348), (2, 12800, 12860), (2, 8192, 8252), (2, 9216, 9276), (2, 10240, 10300), (2, 11264, 11324), (2, 12288, 12348), (2, 13312, 13372), (2, 14336, 14396), (2, 8192, 8252), (2, 10240, 10300), (2, 12288, 12348), (2, 14336, 14396), (2, 8192, 8252), (2, 12288, 12348), (2, 8192, 8252), (3, 7320, 7350), (3, 8019, 8079), (3, 8748, 8808), (3, 9477, 9537), (3, 10206, 10266), (3, 10935, 10995), (3, 11664, 11724), (3, 12393, 12453), (3, 13122, 13182), (3, 13851, 13911), (3, 14580, 14639), (3, 8748, 8808), (3, 10935, 10995), (3, 13122, 13182), (3, 13122, 13182), (5, 7500, 7560), (5, 8125, 8185), (5, 8750, 8810), (5, 9375, 9435), (5, 10000, 10060), (5, 10625, 10685), (5, 11250, 11310), (5, 11875, 11935), (5, 12500, 12560), (5, 13125, 13185), (5, 13750, 13810), (5, 14375, 14435), (5, 9375, 9435), (5, 12500, 12560), (7, 7546, 7606), (7, 7889, 7949), (7, 8232, 8292), (7, 8575, 8635), (7, 9604, 9664), (7, 12005, 12065), (7, 14406, 14466), (11, 7986, 8046), (11, 9317, 9377), (11, 10648, 10708), (11, 11979, 12039), (11, 13310, 13370), (13, 8788, 8848), (13, 10985, 11045), (13, 13182, 13242), (17, 9826, 9886), (19, 7581, 7641), (19, 7942, 8002), (19, 8303, 8363), (19, 8664, 8724), (19, 9025, 9085), (19, 13718, 13778), (23, 7406, 7466), (23, 7935, 7995), (23, 8464, 8524), (23, 8993, 9053), (23, 9522, 9582), (23, 10051, 10111), (23, 10580, 10640), (23, 11109, 11169), (23, 11638, 11698), (23, 12167, 12227), (23, 12696, 12756), (23, 13225, 13285), (23, 12167, 12227), (29, 7569, 7629), (29, 8410, 8470), (29, 9251, 9311), (29, 10092, 10152), (29, 10933, 10993), (29, 11774, 11834), (29, 12615, 12675), (29, 13456, 13516), (29, 14297, 14357), (31, 7688, 7748), (31, 8649, 8709), (31, 9610, 9670), (31, 10571, 10631), (31, 11532, 11592), (31, 12493, 12553), (31, 13454, 13514), (31, 14415, 14475), (37, 8214, 8274), (37, 9583, 9643), (37, 10952, 11012), (37, 12321, 12381), (37, 13690, 13750), (41, 8405, 8465), (41, 10086, 10146), (41, 11767, 11827), (41, 13448, 13508), (43, 7396, 7456), (43, 9245, 9305), (43, 11094, 11154), (43, 12943, 13003), (47, 8836, 8896), (47, 11045, 11105), (47, 13254, 13314), (53, 8427, 8487), (53, 11236, 11296), (53, 14045, 14105), (59, 10443, 10503), (59, 13924, 13984)]

def row061_layer001_block000 : List ColouredInterval :=
  [(2, 7680, 7740), (2, 8192, 8252), (2, 8704, 8764), (2, 9216, 9276), (2, 9728, 9788), (2, 10240, 10300), (2, 10752, 10812), (2, 11264, 11324), (2, 11776, 11836), (2, 12288, 12348), (2, 12800, 12860), (2, 8192, 8252), (2, 9216, 9276), (2, 10240, 10300), (2, 11264, 11324), (2, 12288, 12348)]

def row061_layer001_block001 : List ColouredInterval :=
  [(2, 13312, 13372), (2, 14336, 14396), (2, 8192, 8252), (2, 10240, 10300), (2, 12288, 12348), (2, 14336, 14396), (2, 8192, 8252), (2, 12288, 12348), (2, 8192, 8252), (3, 7320, 7350), (3, 8019, 8079), (3, 8748, 8808), (3, 9477, 9537), (3, 10206, 10266), (3, 10935, 10995), (3, 11664, 11724)]

def row061_layer001_block002 : List ColouredInterval :=
  [(3, 12393, 12453), (3, 13122, 13182), (3, 13851, 13911), (3, 14580, 14639), (3, 8748, 8808), (3, 10935, 10995), (3, 13122, 13182), (3, 13122, 13182), (5, 7500, 7560), (5, 8125, 8185), (5, 8750, 8810), (5, 9375, 9435), (5, 10000, 10060), (5, 10625, 10685), (5, 11250, 11310), (5, 11875, 11935)]

def row061_layer001_block003 : List ColouredInterval :=
  [(5, 12500, 12560), (5, 13125, 13185), (5, 13750, 13810), (5, 14375, 14435), (5, 9375, 9435), (5, 12500, 12560), (7, 7546, 7606), (7, 7889, 7949), (7, 8232, 8292), (7, 8575, 8635), (7, 9604, 9664), (7, 12005, 12065), (7, 14406, 14466), (11, 7986, 8046), (11, 9317, 9377), (11, 10648, 10708)]

def row061_layer001_block004 : List ColouredInterval :=
  [(11, 11979, 12039), (11, 13310, 13370), (13, 8788, 8848), (13, 10985, 11045), (13, 13182, 13242), (17, 9826, 9886), (19, 7581, 7641), (19, 7942, 8002), (19, 8303, 8363), (19, 8664, 8724), (19, 9025, 9085), (19, 13718, 13778), (23, 7406, 7466), (23, 7935, 7995), (23, 8464, 8524), (23, 8993, 9053)]

def row061_layer001_block005 : List ColouredInterval :=
  [(23, 9522, 9582), (23, 10051, 10111), (23, 10580, 10640), (23, 11109, 11169), (23, 11638, 11698), (23, 12167, 12227), (23, 12696, 12756), (23, 13225, 13285), (23, 12167, 12227), (29, 7569, 7629), (29, 8410, 8470), (29, 9251, 9311), (29, 10092, 10152), (29, 10933, 10993), (29, 11774, 11834), (29, 12615, 12675)]

def row061_layer001_block006 : List ColouredInterval :=
  [(29, 13456, 13516), (29, 14297, 14357), (31, 7688, 7748), (31, 8649, 8709), (31, 9610, 9670), (31, 10571, 10631), (31, 11532, 11592), (31, 12493, 12553), (31, 13454, 13514), (31, 14415, 14475), (37, 8214, 8274), (37, 9583, 9643), (37, 10952, 11012), (37, 12321, 12381), (37, 13690, 13750), (41, 8405, 8465)]

def row061_layer001_block007 : List ColouredInterval :=
  [(41, 10086, 10146), (41, 11767, 11827), (41, 13448, 13508), (43, 7396, 7456), (43, 9245, 9305), (43, 11094, 11154), (43, 12943, 13003), (47, 8836, 8896), (47, 11045, 11105), (47, 13254, 13314), (53, 8427, 8487), (53, 11236, 11296), (53, 14045, 14105), (59, 10443, 10503), (59, 13924, 13984)]

def row061_layer001_chunks : List (List ColouredInterval) :=
  [row061_layer001_block000, row061_layer001_block001, row061_layer001_block002, row061_layer001_block003, row061_layer001_block004, row061_layer001_block005, row061_layer001_block006, row061_layer001_block007]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row061_layer001_intervals

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row061_layer001_arithmetic : LayerArithmeticValid row061.height { lower := 7320, upper := 14640, M := 25 } := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row061_layer001_arithmetic

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row061_layer001_enumeration :
    activePowerIntervalList 61 25 7320 14640 = row061_layer001_intervals := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row061_layer001_enumeration

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row061_layer001_pairs000 :
    row061_layer001_block000.all (fun I => row061_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row061_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row061_layer001_pairs000

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row061_layer001_pairs001 :
    row061_layer001_block001.all (fun I => row061_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row061_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row061_layer001_pairs001

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row061_layer001_pairs002 :
    row061_layer001_block002.all (fun I => row061_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row061_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row061_layer001_pairs002

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row061_layer001_pairs003 :
    row061_layer001_block003.all (fun I => row061_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row061_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row061_layer001_pairs003

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row061_layer001_pairs004 :
    row061_layer001_block004.all (fun I => row061_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row061_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row061_layer001_pairs004

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row061_layer001_pairs005 :
    row061_layer001_block005.all (fun I => row061_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row061_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row061_layer001_pairs005

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row061_layer001_pairs006 :
    row061_layer001_block006.all (fun I => row061_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row061_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row061_layer001_pairs006

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row061_layer001_pairs007 :
    row061_layer001_block007.all (fun I => row061_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row061_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row061_layer001_pairs007

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row061_layer001_chunks_eq : row061_layer001_chunks.flatten = row061_layer001_intervals := by
  rfl

theorem row061_layer001_pairs : pairCoverCheck row061_layer001_intervals row061_bounds = true := by
  apply pairCoverCheck_of_chunks row061_layer001_chunks_eq
  intro block hblock
  simp only [row061_layer001_chunks, List.mem_cons, List.mem_nil_iff, or_false] at hblock
  rcases hblock with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
  · exact row061_layer001_pairs000
  · exact row061_layer001_pairs001
  · exact row061_layer001_pairs002
  · exact row061_layer001_pairs003
  · exact row061_layer001_pairs004
  · exact row061_layer001_pairs005
  · exact row061_layer001_pairs006
  · exact row061_layer001_pairs007

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row061_layer001_chunks_eq
#print axioms B699LowIndex.LowIndexLean513dc7cc.row061_layer001_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row061_layer001_checked :
    coverLayerCheck row061.height row061.goods { lower := 7320, upper := 14640, M := 25 } = true := by
  exact coverLayerCheck_of_parts row061_layer001_arithmetic row061_layer001_enumeration row061_bounds_eq row061_layer001_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row061_layer001_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row061_layer002_intervals : List ColouredInterval :=
  [(2, 15360, 15420), (2, 16384, 16444), (2, 17408, 17468), (2, 18432, 18492), (2, 19456, 19516), (2, 20480, 20540), (2, 21504, 21564), (2, 22528, 22588), (2, 16384, 16444), (2, 18432, 18492), (2, 20480, 20540), (2, 22528, 22588), (2, 24576, 24636), (2, 26624, 26684), (2, 28672, 28732), (2, 16384, 16444), (2, 20480, 20540), (2, 24576, 24636), (2, 28672, 28732), (2, 16384, 16444), (2, 24576, 24636), (2, 16384, 16444), (3, 14640, 14640), (3, 15309, 15369), (3, 16038, 16098), (3, 15309, 15369), (3, 17496, 17556), (3, 19683, 19743), (3, 21870, 21930), (3, 24057, 24117), (3, 26244, 26304), (3, 28431, 28491), (3, 19683, 19743), (3, 26244, 26304), (3, 19683, 19743), (5, 15625, 15685), (5, 18750, 18810), (5, 21875, 21935), (5, 25000, 25060), (5, 28125, 28185), (5, 15625, 15685), (7, 16807, 16867), (7, 19208, 19268), (7, 21609, 21669), (7, 24010, 24070), (7, 26411, 26471), (7, 28812, 28872), (7, 16807, 16867), (11, 14641, 14701), (11, 15972, 16032), (11, 17303, 17363), (11, 18634, 18694), (11, 19965, 20025), (11, 21296, 21356), (11, 22627, 22687), (11, 23958, 24018), (11, 25289, 25349), (11, 26620, 26680), (11, 27951, 28011), (11, 14641, 14701), (13, 15379, 15439), (13, 17576, 17636), (13, 19773, 19833), (13, 21970, 22030), (13, 24167, 24227), (13, 26364, 26424), (13, 28561, 28621), (13, 28561, 28621), (17, 14739, 14799), (17, 19652, 19712), (17, 24565, 24625), (19, 20577, 20637), (19, 27436, 27496), (23, 24334, 24394), (29, 15138, 15198), (29, 15979, 16039), (29, 16820, 16880), (29, 17661, 17721), (29, 18502, 18562), (29, 24389, 24449), (31, 15376, 15436), (31, 16337, 16397), (31, 17298, 17358), (31, 18259, 18319), (31, 19220, 19280), (31, 20181, 20241), (31, 21142, 21202), (37, 15059, 15119), (37, 16428, 16488), (37, 17797, 17857), (37, 19166, 19226), (37, 20535, 20595), (37, 21904, 21964), (37, 23273, 23333), (37, 24642, 24702), (37, 26011, 26071), (37, 27380, 27440), (37, 28749, 28809), (41, 15129, 15189), (41, 16810, 16870), (41, 18491, 18551), (41, 20172, 20232), (41, 21853, 21913), (41, 23534, 23594), (41, 25215, 25275), (41, 26896, 26956), (41, 28577, 28637), (43, 14792, 14852), (43, 16641, 16701), (43, 18490, 18550), (43, 20339, 20399), (43, 22188, 22248), (43, 24037, 24097), (43, 25886, 25946), (43, 27735, 27795), (47, 15463, 15523), (47, 17672, 17732), (47, 19881, 19941), (47, 22090, 22150), (47, 24299, 24359), (47, 26508, 26568), (47, 28717, 28777), (53, 16854, 16914), (53, 19663, 19723), (53, 22472, 22532), (53, 25281, 25341), (53, 28090, 28150), (59, 17405, 17465), (59, 20886, 20946), (59, 24367, 24427), (59, 27848, 27908)]

def row061_layer002_block000 : List ColouredInterval :=
  [(2, 15360, 15420), (2, 16384, 16444), (2, 17408, 17468), (2, 18432, 18492), (2, 19456, 19516), (2, 20480, 20540), (2, 21504, 21564), (2, 22528, 22588), (2, 16384, 16444), (2, 18432, 18492), (2, 20480, 20540), (2, 22528, 22588), (2, 24576, 24636), (2, 26624, 26684), (2, 28672, 28732)]

def row061_layer002_block001 : List ColouredInterval :=
  [(2, 16384, 16444), (2, 20480, 20540), (2, 24576, 24636), (2, 28672, 28732), (2, 16384, 16444), (2, 24576, 24636), (2, 16384, 16444), (3, 14640, 14640), (3, 15309, 15369), (3, 16038, 16098), (3, 15309, 15369), (3, 17496, 17556), (3, 19683, 19743), (3, 21870, 21930), (3, 24057, 24117)]

def row061_layer002_block002 : List ColouredInterval :=
  [(3, 26244, 26304), (3, 28431, 28491), (3, 19683, 19743), (3, 26244, 26304), (3, 19683, 19743), (5, 15625, 15685), (5, 18750, 18810), (5, 21875, 21935), (5, 25000, 25060), (5, 28125, 28185), (5, 15625, 15685), (7, 16807, 16867), (7, 19208, 19268), (7, 21609, 21669), (7, 24010, 24070)]

def row061_layer002_block003 : List ColouredInterval :=
  [(7, 26411, 26471), (7, 28812, 28872), (7, 16807, 16867), (11, 14641, 14701), (11, 15972, 16032), (11, 17303, 17363), (11, 18634, 18694), (11, 19965, 20025), (11, 21296, 21356), (11, 22627, 22687), (11, 23958, 24018), (11, 25289, 25349), (11, 26620, 26680), (11, 27951, 28011), (11, 14641, 14701)]

def row061_layer002_block004 : List ColouredInterval :=
  [(13, 15379, 15439), (13, 17576, 17636), (13, 19773, 19833), (13, 21970, 22030), (13, 24167, 24227), (13, 26364, 26424), (13, 28561, 28621), (13, 28561, 28621), (17, 14739, 14799), (17, 19652, 19712), (17, 24565, 24625), (19, 20577, 20637), (19, 27436, 27496), (23, 24334, 24394), (29, 15138, 15198)]

def row061_layer002_block005 : List ColouredInterval :=
  [(29, 15979, 16039), (29, 16820, 16880), (29, 17661, 17721), (29, 18502, 18562), (29, 24389, 24449), (31, 15376, 15436), (31, 16337, 16397), (31, 17298, 17358), (31, 18259, 18319), (31, 19220, 19280), (31, 20181, 20241), (31, 21142, 21202), (37, 15059, 15119), (37, 16428, 16488), (37, 17797, 17857)]

def row061_layer002_block006 : List ColouredInterval :=
  [(37, 19166, 19226), (37, 20535, 20595), (37, 21904, 21964), (37, 23273, 23333), (37, 24642, 24702), (37, 26011, 26071), (37, 27380, 27440), (37, 28749, 28809), (41, 15129, 15189), (41, 16810, 16870), (41, 18491, 18551), (41, 20172, 20232), (41, 21853, 21913), (41, 23534, 23594), (41, 25215, 25275)]

def row061_layer002_block007 : List ColouredInterval :=
  [(41, 26896, 26956), (41, 28577, 28637), (43, 14792, 14852), (43, 16641, 16701), (43, 18490, 18550), (43, 20339, 20399), (43, 22188, 22248), (43, 24037, 24097), (43, 25886, 25946), (43, 27735, 27795), (47, 15463, 15523), (47, 17672, 17732), (47, 19881, 19941), (47, 22090, 22150), (47, 24299, 24359)]

def row061_layer002_block008 : List ColouredInterval :=
  [(47, 26508, 26568), (47, 28717, 28777), (53, 16854, 16914), (53, 19663, 19723), (53, 22472, 22532), (53, 25281, 25341), (53, 28090, 28150), (59, 17405, 17465), (59, 20886, 20946), (59, 24367, 24427), (59, 27848, 27908)]

def row061_layer002_chunks : List (List ColouredInterval) :=
  [row061_layer002_block000, row061_layer002_block001, row061_layer002_block002, row061_layer002_block003, row061_layer002_block004, row061_layer002_block005, row061_layer002_block006, row061_layer002_block007, row061_layer002_block008]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row061_layer002_intervals

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row061_layer002_arithmetic : LayerArithmeticValid row061.height { lower := 14640, upper := 29280, M := 22 } := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row061_layer002_arithmetic

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row061_layer002_enumeration :
    activePowerIntervalList 61 22 14640 29280 = row061_layer002_intervals := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row061_layer002_enumeration

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row061_layer002_pairs000 :
    row061_layer002_block000.all (fun I => row061_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row061_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row061_layer002_pairs000

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row061_layer002_pairs001 :
    row061_layer002_block001.all (fun I => row061_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row061_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row061_layer002_pairs001

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row061_layer002_pairs002 :
    row061_layer002_block002.all (fun I => row061_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row061_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row061_layer002_pairs002

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row061_layer002_pairs003 :
    row061_layer002_block003.all (fun I => row061_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row061_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row061_layer002_pairs003

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row061_layer002_pairs004 :
    row061_layer002_block004.all (fun I => row061_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row061_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row061_layer002_pairs004

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row061_layer002_pairs005 :
    row061_layer002_block005.all (fun I => row061_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row061_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row061_layer002_pairs005

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row061_layer002_pairs006 :
    row061_layer002_block006.all (fun I => row061_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row061_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row061_layer002_pairs006

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row061_layer002_pairs007 :
    row061_layer002_block007.all (fun I => row061_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row061_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row061_layer002_pairs007

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row061_layer002_pairs008 :
    row061_layer002_block008.all (fun I => row061_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row061_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row061_layer002_pairs008

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row061_layer002_chunks_eq : row061_layer002_chunks.flatten = row061_layer002_intervals := by
  rfl

theorem row061_layer002_pairs : pairCoverCheck row061_layer002_intervals row061_bounds = true := by
  apply pairCoverCheck_of_chunks row061_layer002_chunks_eq
  intro block hblock
  simp only [row061_layer002_chunks, List.mem_cons, List.mem_nil_iff, or_false] at hblock
  rcases hblock with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
  · exact row061_layer002_pairs000
  · exact row061_layer002_pairs001
  · exact row061_layer002_pairs002
  · exact row061_layer002_pairs003
  · exact row061_layer002_pairs004
  · exact row061_layer002_pairs005
  · exact row061_layer002_pairs006
  · exact row061_layer002_pairs007
  · exact row061_layer002_pairs008

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row061_layer002_chunks_eq
#print axioms B699LowIndex.LowIndexLean513dc7cc.row061_layer002_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row061_layer002_checked :
    coverLayerCheck row061.height row061.goods { lower := 14640, upper := 29280, M := 22 } = true := by
  exact coverLayerCheck_of_parts row061_layer002_arithmetic row061_layer002_enumeration row061_bounds_eq row061_layer002_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row061_layer002_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row061_layer003_intervals : List ColouredInterval :=
  [(2, 30720, 30780), (2, 32768, 32828), (2, 34816, 34876), (2, 36864, 36924), (2, 38912, 38972), (2, 40960, 41020), (2, 32768, 32828), (2, 36864, 36924), (2, 40960, 41020), (2, 45056, 45116), (2, 49152, 49212), (2, 53248, 53308), (2, 57344, 57404), (2, 32768, 32828), (2, 40960, 41020), (2, 49152, 49212), (2, 57344, 57404), (2, 32768, 32828), (2, 49152, 49212), (2, 32768, 32828), (3, 30618, 30678), (3, 32805, 32865), (3, 34992, 35052), (3, 37179, 37239), (3, 39366, 39426), (3, 41553, 41613), (3, 43740, 43800), (3, 32805, 32865), (3, 39366, 39426), (3, 45927, 45987), (3, 52488, 52548), (3, 39366, 39426), (5, 31250, 31310), (5, 34375, 34435), (5, 37500, 37560), (5, 40625, 40685), (5, 43750, 43810), (5, 46875, 46935), (5, 50000, 50060), (5, 53125, 53185), (5, 56250, 56310), (5, 31250, 31310), (5, 46875, 46935), (7, 31213, 31273), (7, 33614, 33674), (7, 36015, 36075), (7, 38416, 38476), (7, 40817, 40877), (7, 43218, 43278), (7, 45619, 45679), (7, 48020, 48080), (7, 33614, 33674), (7, 50421, 50481), (11, 29282, 29342), (11, 43923, 43983), (13, 30758, 30818), (13, 32955, 33015), (13, 35152, 35212), (13, 37349, 37409), (13, 39546, 39606), (13, 41743, 41803), (13, 43940, 44000), (13, 57122, 57182), (17, 29478, 29538), (17, 34391, 34451), (17, 39304, 39364), (17, 44217, 44277), (17, 49130, 49190), (17, 54043, 54103), (19, 34295, 34355), (19, 41154, 41214), (19, 48013, 48073), (19, 54872, 54932), (23, 36501, 36561), (23, 48668, 48728), (29, 48778, 48838), (31, 29791, 29851), (37, 50653, 50713), (41, 30258, 30318), (41, 31939, 31999), (41, 33620, 33680), (43, 29584, 29644), (43, 31433, 31493), (43, 33282, 33342), (43, 35131, 35191), (43, 36980, 37040), (47, 30926, 30986), (47, 33135, 33195), (47, 35344, 35404), (47, 37553, 37613), (47, 39762, 39822), (47, 41971, 42031), (47, 44180, 44240), (53, 30899, 30959), (53, 33708, 33768), (53, 36517, 36577), (53, 39326, 39386), (53, 42135, 42195), (53, 44944, 45004), (53, 47753, 47813), (53, 50562, 50622), (53, 53371, 53431), (53, 56180, 56240), (59, 31329, 31389), (59, 34810, 34870), (59, 38291, 38351), (59, 41772, 41832), (59, 45253, 45313), (59, 48734, 48794), (59, 52215, 52275), (59, 55696, 55756)]

def row061_layer003_block000 : List ColouredInterval :=
  [(2, 30720, 30780), (2, 32768, 32828), (2, 34816, 34876), (2, 36864, 36924), (2, 38912, 38972), (2, 40960, 41020), (2, 32768, 32828), (2, 36864, 36924), (2, 40960, 41020), (2, 45056, 45116), (2, 49152, 49212), (2, 53248, 53308), (2, 57344, 57404), (2, 32768, 32828), (2, 40960, 41020), (2, 49152, 49212)]

def row061_layer003_block001 : List ColouredInterval :=
  [(2, 57344, 57404), (2, 32768, 32828), (2, 49152, 49212), (2, 32768, 32828), (3, 30618, 30678), (3, 32805, 32865), (3, 34992, 35052), (3, 37179, 37239), (3, 39366, 39426), (3, 41553, 41613), (3, 43740, 43800), (3, 32805, 32865), (3, 39366, 39426), (3, 45927, 45987), (3, 52488, 52548), (3, 39366, 39426)]

def row061_layer003_block002 : List ColouredInterval :=
  [(5, 31250, 31310), (5, 34375, 34435), (5, 37500, 37560), (5, 40625, 40685), (5, 43750, 43810), (5, 46875, 46935), (5, 50000, 50060), (5, 53125, 53185), (5, 56250, 56310), (5, 31250, 31310), (5, 46875, 46935), (7, 31213, 31273), (7, 33614, 33674), (7, 36015, 36075), (7, 38416, 38476), (7, 40817, 40877)]

def row061_layer003_block003 : List ColouredInterval :=
  [(7, 43218, 43278), (7, 45619, 45679), (7, 48020, 48080), (7, 33614, 33674), (7, 50421, 50481), (11, 29282, 29342), (11, 43923, 43983), (13, 30758, 30818), (13, 32955, 33015), (13, 35152, 35212), (13, 37349, 37409), (13, 39546, 39606), (13, 41743, 41803), (13, 43940, 44000), (13, 57122, 57182), (17, 29478, 29538)]

def row061_layer003_block004 : List ColouredInterval :=
  [(17, 34391, 34451), (17, 39304, 39364), (17, 44217, 44277), (17, 49130, 49190), (17, 54043, 54103), (19, 34295, 34355), (19, 41154, 41214), (19, 48013, 48073), (19, 54872, 54932), (23, 36501, 36561), (23, 48668, 48728), (29, 48778, 48838), (31, 29791, 29851), (37, 50653, 50713), (41, 30258, 30318), (41, 31939, 31999)]

def row061_layer003_block005 : List ColouredInterval :=
  [(41, 33620, 33680), (43, 29584, 29644), (43, 31433, 31493), (43, 33282, 33342), (43, 35131, 35191), (43, 36980, 37040), (47, 30926, 30986), (47, 33135, 33195), (47, 35344, 35404), (47, 37553, 37613), (47, 39762, 39822), (47, 41971, 42031), (47, 44180, 44240), (53, 30899, 30959), (53, 33708, 33768), (53, 36517, 36577)]

def row061_layer003_block006 : List ColouredInterval :=
  [(53, 39326, 39386), (53, 42135, 42195), (53, 44944, 45004), (53, 47753, 47813), (53, 50562, 50622), (53, 53371, 53431), (53, 56180, 56240), (59, 31329, 31389), (59, 34810, 34870), (59, 38291, 38351), (59, 41772, 41832), (59, 45253, 45313), (59, 48734, 48794), (59, 52215, 52275), (59, 55696, 55756)]

def row061_layer003_chunks : List (List ColouredInterval) :=
  [row061_layer003_block000, row061_layer003_block001, row061_layer003_block002, row061_layer003_block003, row061_layer003_block004, row061_layer003_block005, row061_layer003_block006]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row061_layer003_intervals

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row061_layer003_arithmetic : LayerArithmeticValid row061.height { lower := 29280, upper := 58560, M := 20 } := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row061_layer003_arithmetic

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row061_layer003_enumeration :
    activePowerIntervalList 61 20 29280 58560 = row061_layer003_intervals := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row061_layer003_enumeration
